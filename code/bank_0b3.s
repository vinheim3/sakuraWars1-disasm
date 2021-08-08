; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b3", ROMX[$4000], BANK[$b3]

	rst  $38                                         ; $4000: $ff
	rst  $38                                         ; $4001: $ff
	rst  $38                                         ; $4002: $ff
	cp   $98                                         ; $4003: $fe $98
	ld   d, c                                        ; $4005: $51
	ld   de, $1111                                   ; $4006: $11 $11 $11
	ld   de, $1311                                   ; $4009: $11 $11 $13
	call nc, $ff19                                   ; $400c: $d4 $19 $ff
	ld   a, [$ff6f]                                  ; $400f: $fa $6f $ff
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	rst  $38                                         ; $4015: $ff
	cp   $95                                         ; $4016: $fe $95
	ld   d, l                                        ; $4018: $55
	ld   de, $1111                                   ; $4019: $11 $11 $11
	ld   de, $1111                                   ; $401c: $11 $11 $11
	ld   de, $ae9b                                   ; $401f: $11 $9b $ae
	rst  $38                                         ; $4022: $ff
	ld   l, d                                        ; $4023: $6a
	rst  $38                                         ; $4024: $ff
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	rst  $38                                         ; $4027: $ff
	rst  $38                                         ; $4028: $ff
	cp   $db                                         ; $4029: $fe $db
	ld   [hl], d                                     ; $402b: $72
	ld   de, $1111                                   ; $402c: $11 $11 $11
	ld   de, $1111                                   ; $402f: $11 $11 $11
	ld   c, b                                        ; $4032: $48
	ld   de, $feff                                   ; $4033: $11 $ff $fe
	and  c                                           ; $4036: $a1
	rst  $38                                         ; $4037: $ff
	rst  $38                                         ; $4038: $ff
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	rst  $28                                         ; $403c: $ef
	cp   d                                           ; $403d: $ba
	pop  de                                          ; $403e: $d1
	ld   de, $1111                                   ; $403f: $11 $11 $11
	ld   de, $1111                                   ; $4042: $11 $11 $11
	add  h                                           ; $4045: $84
	ld   de, $f8ff                                   ; $4046: $11 $ff $f8
	inc  l                                           ; $4049: $2c
	rst  $38                                         ; $404a: $ff
	db   $fd                                         ; $404b: $fd
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	rst  $38                                         ; $404e: $ff
	db   $fd                                         ; $404f: $fd
	cp   c                                           ; $4050: $b9
	ld   a, [hl]                                     ; $4051: $7e
	ld   d, c                                        ; $4052: $51
	ld   de, $1151                                   ; $4053: $11 $51 $11
	ld   de, $1111                                   ; $4056: $11 $11 $11
	rra                                              ; $4059: $1f
	pop  af                                          ; $405a: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $405b: $cf
	cp   $17                                         ; $405c: $fe $17
	rst  $38                                         ; $405e: $ff
	rst  $38                                         ; $405f: $ff
	rst  JumpTable                                         ; $4060: $df
	rst  $38                                         ; $4061: $ff
	or   $bf                                         ; $4062: $f6 $bf
	ei                                               ; $4064: $fb
	ld   de, $4167                                   ; $4065: $11 $67 $41
	ld   de, $1111                                   ; $4068: $11 $11 $11
	rla                                              ; $406b: $17
	ld   h, $65                                      ; $406c: $26 $65
	rst  $38                                         ; $406e: $ff
	and  c                                           ; $406f: $a1
	cp   a                                           ; $4070: $bf
	rst  $38                                         ; $4071: $ff
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	rst  $38                                         ; $4074: $ff
	rst  $28                                         ; $4075: $ef
	ld   sp, hl                                      ; $4076: $f9
	or   l                                           ; $4077: $b5
	ld   b, h                                        ; $4078: $44
	ld   de, $1121                                   ; $4079: $11 $21 $11
	ld   de, $1111                                   ; $407c: $11 $11 $11
	ld   c, a                                        ; $407f: $4f
	ld   b, c                                        ; $4080: $41
	rst  $38                                         ; $4081: $ff
	ld   de, $fff8                                   ; $4082: $11 $f8 $ff
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	rst  $38                                         ; $4087: $ff
	rst  $30                                         ; $4088: $f7
	rst  JumpTable                                         ; $4089: $df
	or   a                                           ; $408a: $b7
	ld   [de], a                                     ; $408b: $12
	ld   h, c                                        ; $408c: $61
	ld   hl, $1113                                   ; $408d: $21 $13 $11
	ld   de, $1711                                   ; $4090: $11 $11 $17
	pop  af                                          ; $4093: $f1
	rst  $38                                         ; $4094: $ff
	ld   de, $9ffe                                   ; $4095: $11 $fe $9f
	rst  $28                                         ; $4098: $ef
	rst  $38                                         ; $4099: $ff
	rst  $38                                         ; $409a: $ff
	rst  $28                                         ; $409b: $ef
	ld   a, [$4b96]                                  ; $409c: $fa $96 $4b
	ld   sp, $1131                                   ; $409f: $31 $31 $11
	ld   de, $1111                                   ; $40a2: $11 $11 $11
	inc  d                                           ; $40a5: $14
	pop  af                                          ; $40a6: $f1
	rst  $38                                         ; $40a7: $ff
	ld   sp, $fff5                                   ; $40a8: $31 $f5 $ff
	ld   e, a                                        ; $40ab: $5f
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	adc  a                                           ; $40ae: $8f
	ld   e, a                                        ; $40af: $5f
	pop  af                                          ; $40b0: $f1
	dec  d                                           ; $40b1: $15
	ld   e, h                                        ; $40b2: $5c
	ld   hl, $2511                                   ; $40b3: $21 $11 $25
	ld   de, $5112                                   ; $40b6: $11 $12 $51
	rra                                              ; $40b9: $1f
	rst  $38                                         ; $40ba: $ff
	push hl                                          ; $40bb: $e5
	inc  e                                           ; $40bc: $1c
	ld   a, [$ff6f]                                  ; $40bd: $fa $6f $ff
	rst  $38                                         ; $40c0: $ff
	rst  $38                                         ; $40c1: $ff
	cp   $bc                                         ; $40c2: $fe $bc
	ld   sp, hl                                      ; $40c4: $f9
	ld   d, $62                                      ; $40c5: $16 $62
	ld   de, $1142                                   ; $40c7: $11 $42 $11
	ld   de, $1541                                   ; $40ca: $11 $41 $15
	adc  c                                           ; $40cd: $89
	cp   $15                                         ; $40ce: $fe $15
	xor  a                                           ; $40d0: $af
	db   $e3                                         ; $40d1: $e3
	rst  $38                                         ; $40d2: $ff
	rst  $38                                         ; $40d3: $ff
	ei                                               ; $40d4: $fb
	rst  $38                                         ; $40d5: $ff
	cp   l                                           ; $40d6: $bd
	adc  a                                           ; $40d7: $8f
	db   $fc                                         ; $40d8: $fc
	ld   sp, $a117                                   ; $40d9: $31 $17 $a1
	ld   de, $1133                                   ; $40dc: $11 $33 $11
	ld   de, $a41f                                   ; $40df: $11 $1f $a4
	add  c                                           ; $40e2: $81
	rst  $38                                         ; $40e3: $ff
	ld   sp, $fc9f                                   ; $40e4: $31 $9f $fc
	cp   a                                           ; $40e7: $bf
	rst  $38                                         ; $40e8: $ff
	db   $fc                                         ; $40e9: $fc
	xor  l                                           ; $40ea: $ad
	db   $fc                                         ; $40eb: $fc
	ld   h, d                                        ; $40ec: $62
	ld   d, $a4                                      ; $40ed: $16 $a4
	ld   de, $1141                                   ; $40ef: $11 $41 $11
	ld   de, $3114                                   ; $40f2: $11 $14 $31
	sbc  a                                           ; $40f5: $9f
	db   $ed                                         ; $40f6: $ed
	db   $f4                                         ; $40f7: $f4
	dec  e                                           ; $40f8: $1d
	rst  $38                                         ; $40f9: $ff
	rst  JumpTable                                         ; $40fa: $df
	rst  $38                                         ; $40fb: $ff
	rst  $38                                         ; $40fc: $ff
	xor  a                                           ; $40fd: $af
	rst  $30                                         ; $40fe: $f7
	and  a                                           ; $40ff: $a7
	jr   z, jr_0b3_4174                              ; $4100: $28 $72

	ld   de, $1112                                   ; $4102: $11 $12 $11
	ld   de, $1171                                   ; $4105: $11 $71 $11
	inc  d                                           ; $4108: $14
	db   $fd                                         ; $4109: $fd
	ld   a, [hl+]                                    ; $410a: $2a
	dec  a                                           ; $410b: $3d
	db   $fd                                         ; $410c: $fd
	rra                                              ; $410d: $1f
	rst  $38                                         ; $410e: $ff

jr_0b3_410f:
	rst  $38                                         ; $410f: $ff
	cp   $bd                                         ; $4110: $fe $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4112: $cf
	ld   a, [$6411]                                  ; $4113: $fa $11 $64
	ld   sp, $2111                                   ; $4116: $31 $11 $21
	ld   de, $1721                                   ; $4119: $11 $21 $17
	pop  hl                                          ; $411c: $e1
	ld   e, a                                        ; $411d: $5f
	jp   z, $fda7                                    ; $411e: $ca $a7 $fd

	rst  $30                                         ; $4121: $f7
	rst  $38                                         ; $4122: $ff
	db   $fc                                         ; $4123: $fc
	rst  $38                                         ; $4124: $ff
	rst  JumpTable                                         ; $4125: $df
	jp   z, $f259                                    ; $4126: $ca $59 $f2

	ld   de, $4134                                   ; $4129: $11 $34 $41
	ld   de, $1121                                   ; $412c: $11 $21 $11
	ld   [hl], d                                     ; $412f: $72
	ld   de, $f68f                                   ; $4130: $11 $8f $f6
	inc  a                                           ; $4133: $3c
	rst  $38                                         ; $4134: $ff
	ld   c, e                                        ; $4135: $4b
	rst  $38                                         ; $4136: $ff
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	adc  e                                           ; $413a: $8b
	adc  d                                           ; $413b: $8a
	adc  $41                                         ; $413c: $ce $41
	ld   d, $71                                      ; $413e: $16 $71
	ld   de, $1117                                   ; $4140: $11 $17 $11
	ld   [de], a                                     ; $4143: $12
	inc  d                                           ; $4144: $14
	add  d                                           ; $4145: $82
	sbc  a                                           ; $4146: $9f
	db   $f4                                         ; $4147: $f4
	ld   e, h                                        ; $4148: $5c
	rst  $38                                         ; $4149: $ff
	db   $eb                                         ; $414a: $eb
	rst  $28                                         ; $414b: $ef
	rst  $38                                         ; $414c: $ff
	db   $ed                                         ; $414d: $ed
	db   $fd                                         ; $414e: $fd
	db   $ec                                         ; $414f: $ec
	add  l                                           ; $4150: $85
	adc  b                                           ; $4151: $88
	ld   sp, $3414                                   ; $4152: $31 $14 $34
	ld   de, $5114                                   ; $4155: $11 $14 $51
	ld   de, $d13d                                   ; $4158: $11 $3d $d1
	ccf                                              ; $415b: $3f
	jp   hl                                          ; $415c: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415d: $cf
	xor  l                                           ; $415e: $ad
	rst  $38                                         ; $415f: $ff
	rst  $28                                         ; $4160: $ef
	rst  $38                                         ; $4161: $ff
	db   $fd                                         ; $4162: $fd
	sbc  d                                           ; $4163: $9a
	db   $fc                                         ; $4164: $fc
	ld   d, h                                        ; $4165: $54
	jr   c, jr_0b3_410f                              ; $4166: $38 $a7

	ld   de, $3121                                   ; $4168: $11 $21 $31
	ld   de, $1521                                   ; $416b: $11 $21 $15
	ld   bc, $517b                                   ; $416e: $01 $7b $51
	xor  a                                           ; $4171: $af
	ret                                              ; $4172: $c9


	sbc  e                                           ; $4173: $9b

jr_0b3_4174:
	rst  $28                                         ; $4174: $ef
	db   $db                                         ; $4175: $db

Jump_0b3_4176:
	cp   [hl]                                        ; $4176: $be
	res  3, b                                        ; $4177: $cb $98
	cp   c                                           ; $4179: $b9
	halt                                             ; $417a: $76
	ld   b, [hl]                                     ; $417b: $46
	ld   h, [hl]                                     ; $417c: $66
	ld   h, e                                        ; $417d: $63
	inc  h                                           ; $417e: $24
	halt                                             ; $417f: $76
	ld   [de], a                                     ; $4180: $12
	ld   d, d                                        ; $4181: $52
	ld   a, c                                        ; $4182: $79
	ld   d, a                                        ; $4183: $57
	adc  b                                           ; $4184: $88
	adc  d                                           ; $4185: $8a
	xor  c                                           ; $4186: $a9
	xor  d                                           ; $4187: $aa
	cp   e                                           ; $4188: $bb
	cp   e                                           ; $4189: $bb
	db   $dd                                         ; $418a: $dd
	res  7, h                                        ; $418b: $cb $bc
	cp   h                                           ; $418d: $bc
	xor  d                                           ; $418e: $aa
	xor  d                                           ; $418f: $aa
	xor  c                                           ; $4190: $a9
	adc  b                                           ; $4191: $88
	ld   [hl], a                                     ; $4192: $77
	ld   a, c                                        ; $4193: $79
	sub  a                                           ; $4194: $97

Jump_0b3_4195:
	add  a                                           ; $4195: $87
	adc  b                                           ; $4196: $88
	add  a                                           ; $4197: $87

Call_0b3_4198:
	adc  c                                           ; $4198: $89
	adc  c                                           ; $4199: $89
	xor  e                                           ; $419a: $ab
	xor  c                                           ; $419b: $a9
	xor  c                                           ; $419c: $a9
	xor  e                                           ; $419d: $ab
	xor  e                                           ; $419e: $ab
	cp   e                                           ; $419f: $bb
	xor  d                                           ; $41a0: $aa
	sbc  d                                           ; $41a1: $9a
	xor  c                                           ; $41a2: $a9
	xor  d                                           ; $41a3: $aa
	sbc  c                                           ; $41a4: $99
	sbc  c                                           ; $41a5: $99
	sub  a                                           ; $41a6: $97
	ld   h, [hl]                                     ; $41a7: $66
	ld   h, l                                        ; $41a8: $65
	ld   d, [hl]                                     ; $41a9: $56
	ld   a, b                                        ; $41aa: $78
	add  a                                           ; $41ab: $87
	adc  b                                           ; $41ac: $88
	adc  c                                           ; $41ad: $89
	adc  d                                           ; $41ae: $8a
	sbc  b                                           ; $41af: $98
	sbc  e                                           ; $41b0: $9b
	jp   z, $ba99                                    ; $41b1: $ca $99 $ba

	cp   d                                           ; $41b4: $ba
	sbc  c                                           ; $41b5: $99
	add  a                                           ; $41b6: $87
	ld   [hl], a                                     ; $41b7: $77
	halt                                             ; $41b8: $76
	ld   a, c                                        ; $41b9: $79
	add  a                                           ; $41ba: $87
	ld   [hl], a                                     ; $41bb: $77
	halt                                             ; $41bc: $76
	ld   d, l                                        ; $41bd: $55
	ld   [hl], a                                     ; $41be: $77
	ld   [hl], a                                     ; $41bf: $77
	ld   [hl], a                                     ; $41c0: $77
	ld   [hl], a                                     ; $41c1: $77
	ld   [hl], a                                     ; $41c2: $77
	ld   h, [hl]                                     ; $41c3: $66
	ld   a, b                                        ; $41c4: $78
	adc  c                                           ; $41c5: $89
	adc  b                                           ; $41c6: $88
	sbc  b                                           ; $41c7: $98
	sbc  c                                           ; $41c8: $99
	xor  b                                           ; $41c9: $a8
	adc  c                                           ; $41ca: $89
	xor  d                                           ; $41cb: $aa
	sbc  c                                           ; $41cc: $99
	sbc  c                                           ; $41cd: $99
	halt                                             ; $41ce: $76
	ld   h, [hl]                                     ; $41cf: $66
	ld   [hl], a                                     ; $41d0: $77
	ld   [hl], a                                     ; $41d1: $77
	halt                                             ; $41d2: $76
	ld   h, a                                        ; $41d3: $67
	ld   h, [hl]                                     ; $41d4: $66
	ld   d, l                                        ; $41d5: $55
	ld   [hl], a                                     ; $41d6: $77
	halt                                             ; $41d7: $76
	ld   [hl], a                                     ; $41d8: $77
	adc  b                                           ; $41d9: $88
	ld   [hl], a                                     ; $41da: $77
	ld   a, b                                        ; $41db: $78
	adc  c                                           ; $41dc: $89
	add  [hl]                                        ; $41dd: $86
	ld   a, b                                        ; $41de: $78
	adc  c                                           ; $41df: $89
	ld   a, b                                        ; $41e0: $78
	sbc  b                                           ; $41e1: $98
	adc  b                                           ; $41e2: $88
	add  a                                           ; $41e3: $87
	halt                                             ; $41e4: $76
	ld   [hl], a                                     ; $41e5: $77
	ld   [hl], a                                     ; $41e6: $77
	ld   [hl], a                                     ; $41e7: $77
	ld   [hl], a                                     ; $41e8: $77
	ld   [hl], a                                     ; $41e9: $77
	halt                                             ; $41ea: $76
	ld   [hl], a                                     ; $41eb: $77
	adc  c                                           ; $41ec: $89
	sub  a                                           ; $41ed: $97
	ld   [hl], a                                     ; $41ee: $77
	ld   a, b                                        ; $41ef: $78
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	sbc  c                                           ; $41f3: $99
	add  a                                           ; $41f4: $87
	ld   [hl], a                                     ; $41f5: $77
	adc  c                                           ; $41f6: $89
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	add  a                                           ; $41f9: $87
	ld   [hl], a                                     ; $41fa: $77
	ld   [hl], a                                     ; $41fb: $77
	ld   [hl], a                                     ; $41fc: $77
	add  a                                           ; $41fd: $87
	ld   [hl], a                                     ; $41fe: $77
	ld   [hl], a                                     ; $41ff: $77
	ld   [hl], a                                     ; $4200: $77
	ld   [hl], a                                     ; $4201: $77
	ld   a, b                                        ; $4202: $78
	sbc  b                                           ; $4203: $98
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	ld   a, b                                        ; $4208: $78
	adc  c                                           ; $4209: $89
	adc  b                                           ; $420a: $88
	add  a                                           ; $420b: $87
	add  a                                           ; $420c: $87
	ld   [hl], a                                     ; $420d: $77
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
	adc  b                                           ; $4210: $88
	ld   [hl], a                                     ; $4211: $77
	ld   [hl], a                                     ; $4212: $77
	ld   [hl], a                                     ; $4213: $77
	ld   a, b                                        ; $4214: $78
	adc  b                                           ; $4215: $88
	ld   a, b                                        ; $4216: $78
	adc  b                                           ; $4217: $88
	adc  b                                           ; $4218: $88
	adc  b                                           ; $4219: $88
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  b                                           ; $421c: $88
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	adc  b                                           ; $421f: $88
	adc  b                                           ; $4220: $88
	adc  b                                           ; $4221: $88
	adc  b                                           ; $4222: $88
	adc  b                                           ; $4223: $88
	adc  b                                           ; $4224: $88
	add  a                                           ; $4225: $87
	ld   a, b                                        ; $4226: $78
	adc  b                                           ; $4227: $88
	add  a                                           ; $4228: $87
	ld   a, b                                        ; $4229: $78
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  b                                           ; $4230: $88
	adc  b                                           ; $4231: $88
	adc  b                                           ; $4232: $88
	adc  b                                           ; $4233: $88
	adc  b                                           ; $4234: $88
	adc  b                                           ; $4235: $88
	adc  b                                           ; $4236: $88
	adc  b                                           ; $4237: $88
	adc  b                                           ; $4238: $88
	adc  b                                           ; $4239: $88
	adc  b                                           ; $423a: $88
	adc  b                                           ; $423b: $88
	adc  b                                           ; $423c: $88
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	adc  b                                           ; $423f: $88
	adc  b                                           ; $4240: $88
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  b                                           ; $4247: $88
	adc  b                                           ; $4248: $88
	adc  b                                           ; $4249: $88
	adc  b                                           ; $424a: $88
	adc  b                                           ; $424b: $88
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
	adc  b                                           ; $424f: $88
	adc  b                                           ; $4250: $88
	adc  b                                           ; $4251: $88
	adc  b                                           ; $4252: $88
	adc  b                                           ; $4253: $88
	adc  b                                           ; $4254: $88
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	adc  b                                           ; $4259: $88
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  b                                           ; $425d: $88
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  b                                           ; $4260: $88
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	adc  b                                           ; $4265: $88
	adc  b                                           ; $4266: $88
	adc  b                                           ; $4267: $88
	adc  b                                           ; $4268: $88
	adc  b                                           ; $4269: $88
	adc  b                                           ; $426a: $88
	adc  b                                           ; $426b: $88
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  b                                           ; $428c: $88
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	adc  b                                           ; $4291: $88
	adc  b                                           ; $4292: $88
	adc  b                                           ; $4293: $88
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	adc  b                                           ; $42a8: $88
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	adc  b                                           ; $42ab: $88
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	adc  b                                           ; $42b3: $88
	adc  b                                           ; $42b4: $88
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	adc  b                                           ; $42ca: $88
	adc  b                                           ; $42cb: $88
	adc  b                                           ; $42cc: $88
	adc  b                                           ; $42cd: $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	adc  b                                           ; $42d0: $88
	adc  b                                           ; $42d1: $88
	adc  b                                           ; $42d2: $88
	adc  b                                           ; $42d3: $88
	adc  b                                           ; $42d4: $88
	adc  b                                           ; $42d5: $88
	adc  b                                           ; $42d6: $88
	adc  b                                           ; $42d7: $88
	adc  b                                           ; $42d8: $88
	adc  b                                           ; $42d9: $88
	adc  b                                           ; $42da: $88
	adc  b                                           ; $42db: $88
	adc  b                                           ; $42dc: $88
	adc  b                                           ; $42dd: $88
	adc  b                                           ; $42de: $88
	adc  b                                           ; $42df: $88
	adc  b                                           ; $42e0: $88
	adc  b                                           ; $42e1: $88
	adc  b                                           ; $42e2: $88
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  b                                           ; $42e6: $88
	adc  b                                           ; $42e7: $88
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	adc  b                                           ; $42ea: $88
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	adc  b                                           ; $42f2: $88
	adc  b                                           ; $42f3: $88
	adc  b                                           ; $42f4: $88
	adc  b                                           ; $42f5: $88
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	adc  b                                           ; $42f8: $88
	adc  b                                           ; $42f9: $88
	adc  b                                           ; $42fa: $88
	adc  b                                           ; $42fb: $88
	adc  b                                           ; $42fc: $88
	adc  b                                           ; $42fd: $88
	adc  b                                           ; $42fe: $88
	adc  b                                           ; $42ff: $88
	adc  b                                           ; $4300: $88
	adc  b                                           ; $4301: $88
	adc  b                                           ; $4302: $88
	adc  b                                           ; $4303: $88
	adc  b                                           ; $4304: $88
	adc  b                                           ; $4305: $88
	adc  b                                           ; $4306: $88
	adc  b                                           ; $4307: $88
	adc  b                                           ; $4308: $88
	adc  b                                           ; $4309: $88
	adc  b                                           ; $430a: $88
	adc  b                                           ; $430b: $88
	adc  b                                           ; $430c: $88
	adc  b                                           ; $430d: $88
	adc  b                                           ; $430e: $88
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  b                                           ; $4311: $88
	adc  b                                           ; $4312: $88
	adc  b                                           ; $4313: $88
	adc  b                                           ; $4314: $88
	adc  b                                           ; $4315: $88
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	adc  b                                           ; $4318: $88
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	adc  b                                           ; $431b: $88
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	adc  b                                           ; $431e: $88
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	adc  b                                           ; $4328: $88
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	adc  b                                           ; $4332: $88
	adc  b                                           ; $4333: $88
	adc  b                                           ; $4334: $88
	adc  b                                           ; $4335: $88
	adc  b                                           ; $4336: $88
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	adc  b                                           ; $433e: $88
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	adc  b                                           ; $4341: $88
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  b                                           ; $4347: $88
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
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
	adc  b                                           ; $4356: $88
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
	adc  b                                           ; $4386: $88
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
	adc  b                                           ; $4391: $88
	adc  b                                           ; $4392: $88
	adc  b                                           ; $4393: $88
	adc  b                                           ; $4394: $88
	adc  b                                           ; $4395: $88
	adc  b                                           ; $4396: $88
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	adc  b                                           ; $439a: $88
	adc  b                                           ; $439b: $88
	adc  b                                           ; $439c: $88
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

Jump_0b3_4475:
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	sbc  b                                           ; $4477: $98
	adc  b                                           ; $4478: $88
	sbc  b                                           ; $4479: $98
	adc  c                                           ; $447a: $89
	sbc  c                                           ; $447b: $99
	sbc  b                                           ; $447c: $98
	xor  d                                           ; $447d: $aa
	ld   [hl], a                                     ; $447e: $77
	sbc  b                                           ; $447f: $98
	adc  c                                           ; $4480: $89
	ld   a, b                                        ; $4481: $78
	sbc  b                                           ; $4482: $98
	adc  d                                           ; $4483: $8a
	xor  e                                           ; $4484: $ab
	xor  b                                           ; $4485: $a8
	adc  d                                           ; $4486: $8a
	xor  d                                           ; $4487: $aa
	add  [hl]                                        ; $4488: $86
	ld   h, a                                        ; $4489: $67
	add  [hl]                                        ; $448a: $86
	ld   d, [hl]                                     ; $448b: $56
	halt                                             ; $448c: $76
	ld   d, l                                        ; $448d: $55
	ld   h, a                                        ; $448e: $67
	ld   [hl], a                                     ; $448f: $77
	ld   h, [hl]                                     ; $4490: $66
	adc  b                                           ; $4491: $88
	add  a                                           ; $4492: $87
	ld   h, a                                        ; $4493: $67
	sbc  b                                           ; $4494: $98
	ld   [hl], a                                     ; $4495: $77
	sbc  c                                           ; $4496: $99
	sbc  c                                           ; $4497: $99
	sbc  c                                           ; $4498: $99
	adc  c                                           ; $4499: $89
	sbc  b                                           ; $449a: $98
	adc  b                                           ; $449b: $88
	add  a                                           ; $449c: $87
	ld   [hl], a                                     ; $449d: $77
	ld   [hl], a                                     ; $449e: $77
	ld   [hl], a                                     ; $449f: $77
	ld   h, [hl]                                     ; $44a0: $66
	ld   h, a                                        ; $44a1: $67
	ld   h, l                                        ; $44a2: $65
	ld   d, h                                        ; $44a3: $54
	inc  sp                                          ; $44a4: $33
	ld   hl, $1111                                   ; $44a5: $21 $11 $11
	ld   de, $6734                                   ; $44a8: $11 $34 $67
	adc  d                                           ; $44ab: $8a
	cp   [hl]                                        ; $44ac: $be
	rst  $38                                         ; $44ad: $ff
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	xor  $ec                                         ; $44b1: $ee $ec
	cp   d                                           ; $44b3: $ba
	xor  e                                           ; $44b4: $ab
	xor  c                                           ; $44b5: $a9
	adc  c                                           ; $44b6: $89
	sbc  b                                           ; $44b7: $98
	add  [hl]                                        ; $44b8: $86
	ld   d, l                                        ; $44b9: $55
	ld   b, d                                        ; $44ba: $42
	ld   de, $1111                                   ; $44bb: $11 $11 $11
	ld   de, $1311                                   ; $44be: $11 $11 $13
	ld   a, d                                        ; $44c1: $7a
	db   $dd                                         ; $44c2: $dd
	rst  $38                                         ; $44c3: $ff
	rst  $38                                         ; $44c4: $ff
	rst  $38                                         ; $44c5: $ff
	rst  $38                                         ; $44c6: $ff
	rst  $38                                         ; $44c7: $ff
	reti                                             ; $44c8: $d9


	sub  a                                           ; $44c9: $97
	ld   [hl], a                                     ; $44ca: $77
	ld   h, [hl]                                     ; $44cb: $66
	adc  d                                           ; $44cc: $8a
	call z, $eddd                                    ; $44cd: $cc $dd $ed
	cp   c                                           ; $44d0: $b9
	ld   d, e                                        ; $44d1: $53
	ld   de, $1111                                   ; $44d2: $11 $11 $11
	ld   de, $1411                                   ; $44d5: $11 $11 $14
	xor  a                                           ; $44d8: $af
	rst  $38                                         ; $44d9: $ff
	rst  $38                                         ; $44da: $ff
	rst  $38                                         ; $44db: $ff
	rst  $38                                         ; $44dc: $ff
	rst  $38                                         ; $44dd: $ff
	ld   a, [$1162]                                  ; $44de: $fa $62 $11
	ld   de, $9c36                                   ; $44e1: $11 $36 $9c
	rst  $38                                         ; $44e4: $ff
	rst  $38                                         ; $44e5: $ff
	rst  $38                                         ; $44e6: $ff
	ld   a, [$1151]                                  ; $44e7: $fa $51 $11
	ld   de, $1111                                   ; $44ea: $11 $11 $11
	ld   de, $ff5f                                   ; $44ed: $11 $5f $ff
	rst  $38                                         ; $44f0: $ff
	rst  $38                                         ; $44f1: $ff
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	ld   sp, hl                                      ; $44f4: $f9
	ld   sp, $1111                                   ; $44f5: $31 $11 $11
	dec  d                                           ; $44f8: $15
	xor  l                                           ; $44f9: $ad
	rst  $38                                         ; $44fa: $ff
	rst  $38                                         ; $44fb: $ff
	rst  $38                                         ; $44fc: $ff
	rst  $38                                         ; $44fd: $ff
	ld   [hl], c                                     ; $44fe: $71
	ld   de, $1111                                   ; $44ff: $11 $11 $11
	ld   de, $1e11                                   ; $4502: $11 $11 $1e
	rst  $38                                         ; $4505: $ff
	rst  $38                                         ; $4506: $ff
	rst  $38                                         ; $4507: $ff
	rst  $38                                         ; $4508: $ff
	cp   $d6                                         ; $4509: $fe $d6
	ld   de, $1111                                   ; $450b: $11 $11 $11
	rla                                              ; $450e: $17
	rst  $28                                         ; $450f: $ef
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	cp   $71                                         ; $4513: $fe $71
	ld   de, $1111                                   ; $4515: $11 $11 $11
	ld   de, $2b11                                   ; $4518: $11 $11 $2b
	rst  $38                                         ; $451b: $ff
	rst  $38                                         ; $451c: $ff
	rst  $38                                         ; $451d: $ff
	rst  $38                                         ; $451e: $ff

jr_0b3_451f:
	or   $55                                         ; $451f: $f6 $55
	ld   de, $1211                                   ; $4521: $11 $11 $12
	rla                                              ; $4524: $17
	rst  $38                                         ; $4525: $ff
	rst  $38                                         ; $4526: $ff
	rst  $38                                         ; $4527: $ff
	rst  $38                                         ; $4528: $ff
	ret  c                                           ; $4529: $d8

	ld   b, c                                        ; $452a: $41
	ld   de, $1111                                   ; $452b: $11 $11 $11
	ld   de, $751a                                   ; $452e: $11 $1a $75
	rst  $38                                         ; $4531: $ff
	rst  $38                                         ; $4532: $ff
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	ldh  a, [c]                                      ; $4535: $f2
	inc  de                                          ; $4536: $13
	ld   sp, $3911                                   ; $4537: $31 $11 $39
	xor  b                                           ; $453a: $a8

jr_0b3_453b:
	rst  $28                                         ; $453b: $ef
	rst  $38                                         ; $453c: $ff
	rst  $38                                         ; $453d: $ff
	rst  $38                                         ; $453e: $ff
	or   $21                                         ; $453f: $f6 $21
	ld   de, $1111                                   ; $4541: $11 $11 $11
	ld   de, $c713                                   ; $4544: $11 $13 $c7
	ld   l, a                                        ; $4547: $6f
	rst  $38                                         ; $4548: $ff
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	ld   sp, hl                                      ; $454b: $f9
	ld   de, $1122                                   ; $454c: $11 $22 $11
	jr   jr_0b3_451f                                 ; $454f: $18 $ce

	rst  $38                                         ; $4551: $ff
	rst  $38                                         ; $4552: $ff
	rst  $38                                         ; $4553: $ff
	rst  $38                                         ; $4554: $ff
	ei                                               ; $4555: $fb
	ld   d, c                                        ; $4556: $51
	ld   de, $1111                                   ; $4557: $11 $11 $11
	ld   de, $a613                                   ; $455a: $11 $13 $a6
	sbc  a                                           ; $455d: $9f
	rst  $38                                         ; $455e: $ff
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	rst  $30                                         ; $4561: $f7
	ld   de, $1111                                   ; $4562: $11 $11 $11
	ld   e, e                                        ; $4565: $5b
	cp   e                                           ; $4566: $bb
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	sub  l                                           ; $456b: $95
	ld   d, [hl]                                     ; $456c: $56
	ld   de, $1111                                   ; $456d: $11 $11 $11
	ld   de, $e218                                   ; $4570: $11 $18 $e2
	ccf                                              ; $4573: $3f
	rst  $38                                         ; $4574: $ff
	rst  $38                                         ; $4575: $ff
	rst  $38                                         ; $4576: $ff
	push af                                          ; $4577: $f5
	ld   de, $1141                                   ; $4578: $11 $41 $11
	jr   z, jr_0b3_453b                              ; $457b: $28 $be

	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	db   $fd                                         ; $457f: $fd
	rst  $38                                         ; $4580: $ff
	and  l                                           ; $4581: $a5
	inc  sp                                          ; $4582: $33
	ld   h, l                                        ; $4583: $65
	ld   de, $1112                                   ; $4584: $11 $12 $11

Jump_0b3_4587:
	ld   de, $14ea                                   ; $4587: $11 $ea $14
	rst  $38                                         ; $458a: $ff
	db   $fc                                         ; $458b: $fc
	rst  JumpTable                                         ; $458c: $df
	db   $fd                                         ; $458d: $fd
	ld   sp, $1148                                   ; $458e: $31 $48 $11
	dec  d                                           ; $4591: $15
	xor  d                                           ; $4592: $aa
	ld   a, d                                        ; $4593: $7a
	rst  $38                                         ; $4594: $ff
	db   $fc                                         ; $4595: $fc
	rst  JumpTable                                         ; $4596: $df
	ld   sp, hl                                      ; $4597: $f9
	ld   b, l                                        ; $4598: $45
	ld   a, b                                        ; $4599: $78
	ld   d, c                                        ; $459a: $51
	inc  d                                           ; $459b: $14
	ld   b, c                                        ; $459c: $41
	ld   de, $911d                                   ; $459d: $11 $1d $91
	rra                                              ; $45a0: $1f
	rst  $38                                         ; $45a1: $ff
	xor  h                                           ; $45a2: $ac
	rst  $38                                         ; $45a3: $ff
	db   $f4                                         ; $45a4: $f4
	ld   d, $a2                                      ; $45a5: $16 $a2
	ld   de, $7659                                   ; $45a7: $11 $59 $76
	adc  a                                           ; $45aa: $8f
	rst  $38                                         ; $45ab: $ff
	cp   d                                           ; $45ac: $ba
	rst  $38                                         ; $45ad: $ff
	sub  e                                           ; $45ae: $93
	ld   e, d                                        ; $45af: $5a
	sub  [hl]                                        ; $45b0: $96
	ld   b, l                                        ; $45b1: $45
	adc  c                                           ; $45b2: $89
	ld   b, c                                        ; $45b3: $41
	ld   de, $7117                                   ; $45b4: $11 $17 $71
	ld   a, $fe                                      ; $45b7: $3e $fe
	cp   a                                           ; $45b9: $bf
	rst  $38                                         ; $45ba: $ff
	rst  ToBoot                                         ; $45bb: $c7
	ld   d, l                                        ; $45bc: $55
	ld   [hl], d                                     ; $45bd: $72
	ld   de, $5746                                   ; $45be: $11 $46 $57
	xor  h                                           ; $45c1: $ac
	rst  $38                                         ; $45c2: $ff
	call c, Call_0b3_74cc                            ; $45c3: $dc $cc $74
	ld   b, h                                        ; $45c6: $44
	ld   b, h                                        ; $45c7: $44
	ld   b, l                                        ; $45c8: $45
	sbc  l                                           ; $45c9: $9d
	xor  $ff                                         ; $45ca: $ee $ff
	db   $db                                         ; $45cc: $db
	ld   [hl], e                                     ; $45cd: $73
	ld   de, $1111                                   ; $45ce: $11 $11 $11
	add  hl, hl                                      ; $45d1: $29
	rst  $38                                         ; $45d2: $ff
	rst  $38                                         ; $45d3: $ff
	rst  $38                                         ; $45d4: $ff
	ei                                               ; $45d5: $fb
	ld   [hl], l                                     ; $45d6: $75
	ld   sp, $1211                                   ; $45d7: $31 $11 $12
	ld   b, [hl]                                     ; $45da: $46
	xor  [hl]                                        ; $45db: $ae
	rst  $38                                         ; $45dc: $ff
	rst  $38                                         ; $45dd: $ff
	cp   $95                                         ; $45de: $fe $95
	inc  sp                                          ; $45e0: $33
	ld   de, $5811                                   ; $45e1: $11 $11 $58
	sbc  e                                           ; $45e4: $9b
	rst  $28                                         ; $45e5: $ef
	cp   $dc                                         ; $45e6: $fe $dc
	jp   z, $3464                                    ; $45e8: $ca $64 $34

	inc  sp                                          ; $45eb: $33
	inc  [hl]                                        ; $45ec: $34
	ld   d, h                                        ; $45ed: $54
	daa                                              ; $45ee: $27
	db   $eb                                         ; $45ef: $eb
	ld   a, d                                        ; $45f0: $7a
	cp   $b8                                         ; $45f1: $fe $b8
	ld   [hl], a                                     ; $45f3: $77
	add  a                                           ; $45f4: $87
	ld   [hl-], a                                    ; $45f5: $32
	ld   e, b                                        ; $45f6: $58
	ld   h, l                                        ; $45f7: $65
	ld   a, e                                        ; $45f8: $7b
	cp   h                                           ; $45f9: $bc
	set  1, l                                        ; $45fa: $cb $cd
	and  a                                           ; $45fc: $a7
	ld   d, [hl]                                     ; $45fd: $56
	ld   h, h                                        ; $45fe: $64
	inc  [hl]                                        ; $45ff: $34
	ld   d, a                                        ; $4600: $57
	sbc  b                                           ; $4601: $98
	sbc  d                                           ; $4602: $9a
	call c, $9999                                    ; $4603: $dc $99 $99
	ld   [hl], l                                     ; $4606: $75
	ld   b, l                                        ; $4607: $45
	ld   h, [hl]                                     ; $4608: $66
	ld   d, [hl]                                     ; $4609: $56
	sbc  d                                           ; $460a: $9a
	xor  d                                           ; $460b: $aa
	xor  e                                           ; $460c: $ab
	cp   e                                           ; $460d: $bb
	sbc  b                                           ; $460e: $98
	ld   [hl], a                                     ; $460f: $77
	ld   h, l                                        ; $4610: $65
	ld   d, [hl]                                     ; $4611: $56
	ld   [hl], a                                     ; $4612: $77
	adc  c                                           ; $4613: $89
	sbc  d                                           ; $4614: $9a
	xor  c                                           ; $4615: $a9
	xor  c                                           ; $4616: $a9
	sbc  b                                           ; $4617: $98
	halt                                             ; $4618: $76
	ld   h, [hl]                                     ; $4619: $66
	ld   h, [hl]                                     ; $461a: $66
	ld   h, a                                        ; $461b: $67
	adc  c                                           ; $461c: $89
	adc  c                                           ; $461d: $89
	xor  d                                           ; $461e: $aa
	sbc  c                                           ; $461f: $99
	sbc  c                                           ; $4620: $99
	add  a                                           ; $4621: $87
	halt                                             ; $4622: $76
	ld   h, a                                        ; $4623: $67
	ld   [hl], a                                     ; $4624: $77
	adc  b                                           ; $4625: $88
	sbc  d                                           ; $4626: $9a
	xor  c                                           ; $4627: $a9
	sbc  d                                           ; $4628: $9a
	sbc  c                                           ; $4629: $99
	add  a                                           ; $462a: $87
	ld   [hl], a                                     ; $462b: $77
	ld   h, [hl]                                     ; $462c: $66
	ld   [hl], a                                     ; $462d: $77
	ld   a, b                                        ; $462e: $78
	adc  b                                           ; $462f: $88
	sbc  c                                           ; $4630: $99
	adc  b                                           ; $4631: $88
	adc  b                                           ; $4632: $88
	ld   [hl], a                                     ; $4633: $77
	ld   [hl], a                                     ; $4634: $77
	ld   [hl], a                                     ; $4635: $77
	ld   [hl], a                                     ; $4636: $77
	adc  c                                           ; $4637: $89
	adc  c                                           ; $4638: $89
	sbc  c                                           ; $4639: $99
	sbc  c                                           ; $463a: $99
	sbc  b                                           ; $463b: $98
	adc  b                                           ; $463c: $88
	ld   [hl], a                                     ; $463d: $77
	ld   a, b                                        ; $463e: $78
	adc  b                                           ; $463f: $88
	adc  c                                           ; $4640: $89
	adc  c                                           ; $4641: $89
	sbc  b                                           ; $4642: $98
	adc  b                                           ; $4643: $88
	sbc  b                                           ; $4644: $98
	ld   [hl], a                                     ; $4645: $77
	ld   [hl], a                                     ; $4646: $77
	ld   [hl], a                                     ; $4647: $77
	ld   a, b                                        ; $4648: $78
	adc  b                                           ; $4649: $88
	sbc  c                                           ; $464a: $99
	sbc  d                                           ; $464b: $9a
	sbc  c                                           ; $464c: $99
	sbc  c                                           ; $464d: $99
	sub  a                                           ; $464e: $97
	halt                                             ; $464f: $76
	ld   h, a                                        ; $4650: $67
	ld   [hl], a                                     ; $4651: $77
	ld   a, b                                        ; $4652: $78
	adc  c                                           ; $4653: $89
	xor  d                                           ; $4654: $aa
	sbc  d                                           ; $4655: $9a
	sbc  b                                           ; $4656: $98
	adc  b                                           ; $4657: $88
	ld   [hl], a                                     ; $4658: $77
	ld   [hl], a                                     ; $4659: $77
	ld   [hl], a                                     ; $465a: $77
	adc  b                                           ; $465b: $88
	adc  c                                           ; $465c: $89
	adc  b                                           ; $465d: $88
	adc  b                                           ; $465e: $88
	sbc  c                                           ; $465f: $99
	adc  b                                           ; $4660: $88
	add  a                                           ; $4661: $87
	ld   [hl], a                                     ; $4662: $77
	adc  b                                           ; $4663: $88
	adc  b                                           ; $4664: $88
	adc  c                                           ; $4665: $89
	sbc  c                                           ; $4666: $99
	sbc  c                                           ; $4667: $99
	adc  b                                           ; $4668: $88
	adc  b                                           ; $4669: $88
	adc  b                                           ; $466a: $88
	adc  b                                           ; $466b: $88
	adc  b                                           ; $466c: $88
	adc  b                                           ; $466d: $88
	adc  b                                           ; $466e: $88
	sbc  c                                           ; $466f: $99
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  b                                           ; $4672: $88

Call_0b3_4673:
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
	ld   de, $1111                                   ; $467d: $11 $11 $11
	ld   de, $1111                                   ; $4680: $11 $11 $11
	ld   de, $1111                                   ; $4683: $11 $11 $11
	ld   de, $1111                                   ; $4686: $11 $11 $11
	ld   de, $1111                                   ; $4689: $11 $11 $11
	ld   de, $1111                                   ; $468c: $11 $11 $11
	ld   de, $1111                                   ; $468f: $11 $11 $11
	ld   de, $1111                                   ; $4692: $11 $11 $11
	ld   de, $1111                                   ; $4695: $11 $11 $11
	ld   de, $1111                                   ; $4698: $11 $11 $11
	ld   de, $1111                                   ; $469b: $11 $11 $11
	ld   de, $1111                                   ; $469e: $11 $11 $11
	ld   de, $1111                                   ; $46a1: $11 $11 $11
	ld   de, $1111                                   ; $46a4: $11 $11 $11
	ld   de, $1111                                   ; $46a7: $11 $11 $11
	ld   de, $1111                                   ; $46aa: $11 $11 $11
	ld   de, $1111                                   ; $46ad: $11 $11 $11
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	ld   de, $1111                                   ; $46b3: $11 $11 $11
	nop                                              ; $46b6: $00
	ld   c, b                                        ; $46b7: $48
	ld   de, $1111                                   ; $46b8: $11 $11 $11
	ld   de, $1111                                   ; $46bb: $11 $11 $11
	ld   de, $1111                                   ; $46be: $11 $11 $11
	ld   de, $5413                                   ; $46c1: $11 $13 $54
	ld   d, h                                        ; $46c4: $54
	ld   d, h                                        ; $46c5: $54
	ld   b, c                                        ; $46c6: $41
	rra                                              ; $46c7: $1f
	rst  $38                                         ; $46c8: $ff
	pop  af                                          ; $46c9: $f1
	ld   de, $1511                                   ; $46ca: $11 $11 $15
	ld   hl, $1c11                                   ; $46cd: $21 $11 $1c
	sbc  $ac                                         ; $46d0: $de $ac
	sbc  $a1                                         ; $46d2: $de $a1
	ld   de, $1111                                   ; $46d4: $11 $11 $11
	ld   de, $1111                                   ; $46d7: $11 $11 $11
	ld   de, $1111                                   ; $46da: $11 $11 $11
	ld   de, $1111                                   ; $46dd: $11 $11 $11
	ld   de, $5411                                   ; $46e0: $11 $11 $54
	ld   b, h                                        ; $46e3: $44
	dec  h                                           ; $46e4: $25
	ld   de, $5454                                   ; $46e5: $11 $54 $54
	ld   h, a                                        ; $46e8: $67
	ld   [hl], d                                     ; $46e9: $72
	ld   de, $1111                                   ; $46ea: $11 $11 $11
	ld   de, $1112                                   ; $46ed: $11 $12 $11
	ld   [de], a                                     ; $46f0: $12
	ld   de, $1111                                   ; $46f1: $11 $11 $11
	ld   h, [hl]                                     ; $46f4: $66
	halt                                             ; $46f5: $76
	push af                                          ; $46f6: $f5
	ld   de, $8888                                   ; $46f7: $11 $88 $88
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

Jump_0b3_4764:
	adc  b                                           ; $4764: $88
	adc  b                                           ; $4765: $88
	adc  b                                           ; $4766: $88
	adc  c                                           ; $4767: $89
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
	sbc  c                                           ; $4786: $99
	adc  b                                           ; $4787: $88
	add  a                                           ; $4788: $87
	add  a                                           ; $4789: $87
	ld   a, b                                        ; $478a: $78
	ld   a, b                                        ; $478b: $78
	sbc  c                                           ; $478c: $99
	adc  c                                           ; $478d: $89
	adc  b                                           ; $478e: $88
	sbc  b                                           ; $478f: $98
	adc  b                                           ; $4790: $88
	ld   [hl], a                                     ; $4791: $77
	ld   [hl], a                                     ; $4792: $77
	adc  b                                           ; $4793: $88
	sbc  c                                           ; $4794: $99
	sbc  c                                           ; $4795: $99
	adc  c                                           ; $4796: $89
	adc  b                                           ; $4797: $88
	ld   [hl], a                                     ; $4798: $77
	ld   [hl], a                                     ; $4799: $77
	adc  b                                           ; $479a: $88
	adc  c                                           ; $479b: $89
	sbc  b                                           ; $479c: $98
	sbc  b                                           ; $479d: $98
	adc  b                                           ; $479e: $88
	add  a                                           ; $479f: $87
	ld   a, b                                        ; $47a0: $78
	adc  b                                           ; $47a1: $88
	sbc  c                                           ; $47a2: $99
	adc  b                                           ; $47a3: $88
	sbc  b                                           ; $47a4: $98
	adc  b                                           ; $47a5: $88
	add  a                                           ; $47a6: $87
	ld   a, b                                        ; $47a7: $78
	adc  b                                           ; $47a8: $88
	sbc  c                                           ; $47a9: $99
	adc  b                                           ; $47aa: $88
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	add  a                                           ; $47ad: $87
	add  a                                           ; $47ae: $87
	ld   a, b                                        ; $47af: $78
	adc  b                                           ; $47b0: $88
	adc  c                                           ; $47b1: $89
	sbc  c                                           ; $47b2: $99
	adc  b                                           ; $47b3: $88
	adc  b                                           ; $47b4: $88
	add  a                                           ; $47b5: $87
	ld   [hl], a                                     ; $47b6: $77
	ld   [hl], a                                     ; $47b7: $77
	ld   a, b                                        ; $47b8: $78
	adc  c                                           ; $47b9: $89
	sbc  c                                           ; $47ba: $99
	xor  b                                           ; $47bb: $a8
	adc  b                                           ; $47bc: $88
	ld   [hl], a                                     ; $47bd: $77
	ld   [hl], a                                     ; $47be: $77
	ld   [hl], a                                     ; $47bf: $77
	ld   a, b                                        ; $47c0: $78
	sbc  c                                           ; $47c1: $99
	xor  c                                           ; $47c2: $a9
	adc  c                                           ; $47c3: $89
	add  a                                           ; $47c4: $87
	ld   [hl], a                                     ; $47c5: $77
	ld   [hl], a                                     ; $47c6: $77
	ld   a, b                                        ; $47c7: $78
	adc  c                                           ; $47c8: $89
	sbc  b                                           ; $47c9: $98
	adc  c                                           ; $47ca: $89
	add  a                                           ; $47cb: $87
	ld   [hl], a                                     ; $47cc: $77
	ld   [hl], a                                     ; $47cd: $77
	adc  b                                           ; $47ce: $88
	sbc  b                                           ; $47cf: $98
	adc  c                                           ; $47d0: $89
	sbc  b                                           ; $47d1: $98
	ld   [hl], a                                     ; $47d2: $77
	ld   [hl], a                                     ; $47d3: $77
	ld   [hl], a                                     ; $47d4: $77
	adc  c                                           ; $47d5: $89
	sbc  c                                           ; $47d6: $99
	adc  c                                           ; $47d7: $89
	sbc  b                                           ; $47d8: $98
	adc  b                                           ; $47d9: $88
	ld   [hl], a                                     ; $47da: $77
	ld   [hl], a                                     ; $47db: $77
	ld   a, b                                        ; $47dc: $78
	sbc  c                                           ; $47dd: $99
	sbc  c                                           ; $47de: $99
	adc  c                                           ; $47df: $89
	adc  b                                           ; $47e0: $88
	ld   [hl], a                                     ; $47e1: $77
	add  a                                           ; $47e2: $87
	ld   a, b                                        ; $47e3: $78
	ld   [hl], a                                     ; $47e4: $77
	adc  b                                           ; $47e5: $88
	sbc  d                                           ; $47e6: $9a
	xor  d                                           ; $47e7: $aa
	sbc  b                                           ; $47e8: $98
	halt                                             ; $47e9: $76
	ld   h, [hl]                                     ; $47ea: $66
	ld   d, [hl]                                     ; $47eb: $56
	ld   a, b                                        ; $47ec: $78
	sbc  d                                           ; $47ed: $9a
	cp   d                                           ; $47ee: $ba
	cp   d                                           ; $47ef: $ba
	add  a                                           ; $47f0: $87
	halt                                             ; $47f1: $76
	ld   d, l                                        ; $47f2: $55
	ld   h, [hl]                                     ; $47f3: $66
	ld   a, b                                        ; $47f4: $78
	cp   e                                           ; $47f5: $bb
	cp   d                                           ; $47f6: $ba
	sbc  b                                           ; $47f7: $98
	halt                                             ; $47f8: $76
	ld   h, l                                        ; $47f9: $65
	ld   d, a                                        ; $47fa: $57
	adc  c                                           ; $47fb: $89
	cp   e                                           ; $47fc: $bb
	xor  c                                           ; $47fd: $a9
	sbc  c                                           ; $47fe: $99
	halt                                             ; $47ff: $76
	ld   h, [hl]                                     ; $4800: $66
	ld   d, a                                        ; $4801: $57
	adc  d                                           ; $4802: $8a
	xor  d                                           ; $4803: $aa
	xor  c                                           ; $4804: $a9
	adc  b                                           ; $4805: $88
	halt                                             ; $4806: $76
	ld   d, [hl]                                     ; $4807: $56
	ld   d, [hl]                                     ; $4808: $56
	xor  d                                           ; $4809: $aa
	xor  e                                           ; $480a: $ab
	cp   c                                           ; $480b: $b9
	ld   a, b                                        ; $480c: $78
	halt                                             ; $480d: $76
	ld   d, [hl]                                     ; $480e: $56
	ld   d, l                                        ; $480f: $55
	xor  h                                           ; $4810: $ac
	cp   e                                           ; $4811: $bb
	cp   c                                           ; $4812: $b9
	add  a                                           ; $4813: $87
	ld   [hl], l                                     ; $4814: $75
	ld   h, [hl]                                     ; $4815: $66
	ld   d, l                                        ; $4816: $55
	ld   a, d                                        ; $4817: $7a
	cp   d                                           ; $4818: $ba
	res  0, a                                        ; $4819: $cb $87
	halt                                             ; $481b: $76
	ld   b, l                                        ; $481c: $45
	ld   h, l                                        ; $481d: $65
	ld   l, d                                        ; $481e: $6a
	db   $db                                         ; $481f: $db
	cp   e                                           ; $4820: $bb
	sub  a                                           ; $4821: $97
	halt                                             ; $4822: $76
	ld   b, h                                        ; $4823: $44
	ld   h, l                                        ; $4824: $65
	ld   a, h                                        ; $4825: $7c
	call c, $96ba                                    ; $4826: $dc $ba $96
	halt                                             ; $4829: $76
	ld   b, l                                        ; $482a: $45
	ld   h, [hl]                                     ; $482b: $66
	ld   l, c                                        ; $482c: $69
	adc  $ab                                         ; $482d: $ce $ab
	and  a                                           ; $482f: $a7
	ld   h, [hl]                                     ; $4830: $66
	ld   d, e                                        ; $4831: $53
	ld   d, l                                        ; $4832: $55
	ld   l, d                                        ; $4833: $6a
	db   $ec                                         ; $4834: $ec
	res  2, a                                        ; $4835: $cb $97
	ld   h, [hl]                                     ; $4837: $66
	ld   d, h                                        ; $4838: $54
	ld   h, a                                        ; $4839: $67
	ld   l, b                                        ; $483a: $68
	xor  e                                           ; $483b: $ab
	cp   e                                           ; $483c: $bb
	cp   c                                           ; $483d: $b9
	halt                                             ; $483e: $76
	ld   h, l                                        ; $483f: $65
	ld   b, [hl]                                     ; $4840: $46
	ld   [hl], a                                     ; $4841: $77
	sbc  h                                           ; $4842: $9c
	jp   c, Jump_0b3_6598                            ; $4843: $da $98 $65

	ld   b, [hl]                                     ; $4846: $46
	adc  b                                           ; $4847: $88
	xor  h                                           ; $4848: $ac
	sub  a                                           ; $4849: $97
	add  a                                           ; $484a: $87
	ld   d, [hl]                                     ; $484b: $56
	ld   a, b                                        ; $484c: $78
	sbc  d                                           ; $484d: $9a
	call z, $84bb                                    ; $484e: $cc $bb $84
	ld   hl, $4a34                                   ; $4851: $21 $34 $4a
	call $e9ef                                       ; $4854: $cd $ef $e9
	ld   [hl], l                                     ; $4857: $75
	ld   b, d                                        ; $4858: $42
	inc  de                                          ; $4859: $13
	ld   d, [hl]                                     ; $485a: $56
	sbc  [hl]                                        ; $485b: $9e
	rst  $38                                         ; $485c: $ff
	call c, $3195                                    ; $485d: $dc $95 $31
	inc  de                                          ; $4860: $13
	ld   d, a                                        ; $4861: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4862: $cf
	cp   $a9                                         ; $4863: $fe $a9
	ld   h, l                                        ; $4865: $65
	inc  sp                                          ; $4866: $33
	ld   [de], a                                     ; $4867: $12
	ld   l, d                                        ; $4868: $6a
	rst  JumpTable                                         ; $4869: $df
	db   $fc                                         ; $486a: $fc
	sub  [hl]                                        ; $486b: $96
	ld   h, l                                        ; $486c: $65
	ld   b, e                                        ; $486d: $43
	ld   b, l                                        ; $486e: $45
	ld   e, b                                        ; $486f: $58
	rst  $28                                         ; $4870: $ef
	db   $fd                                         ; $4871: $fd
	xor  b                                           ; $4872: $a8
	ld   d, h                                        ; $4873: $54
	ld   b, e                                        ; $4874: $43
	dec  h                                           ; $4875: $25
	ld   [hl], a                                     ; $4876: $77
	cp   a                                           ; $4877: $bf
	db   $fd                                         ; $4878: $fd
	sub  a                                           ; $4879: $97
	ld   b, h                                        ; $487a: $44
	inc  hl                                          ; $487b: $23
	ld   d, a                                        ; $487c: $57
	sbc  d                                           ; $487d: $9a
	sbc  d                                           ; $487e: $9a
	cp   l                                           ; $487f: $bd
	jp   c, Jump_0b3_4475                            ; $4880: $da $75 $44

	dec  [hl]                                        ; $4883: $35
	ld   a, c                                        ; $4884: $79
	xor  c                                           ; $4885: $a9
	xor  h                                           ; $4886: $ac
	res  0, a                                        ; $4887: $cb $87
	ld   d, h                                        ; $4889: $54
	ld   b, l                                        ; $488a: $45
	ld   a, c                                        ; $488b: $79
	xor  e                                           ; $488c: $ab
	sbc  d                                           ; $488d: $9a
	sub  a                                           ; $488e: $97
	ld   h, l                                        ; $488f: $65
	ld   h, [hl]                                     ; $4890: $66
	ld   l, b                                        ; $4891: $68
	sbc  [hl]                                        ; $4892: $9e
	db   $fc                                         ; $4893: $fc
	sub  l                                           ; $4894: $95
	ld   sp, $5712                                   ; $4895: $31 $12 $57
	rst  JumpTable                                         ; $4898: $df
	cp   $b9                                         ; $4899: $fe $b9
	ld   a, b                                        ; $489b: $78
	ld   h, l                                        ; $489c: $65
	ld   de, $ab17                                   ; $489d: $11 $17 $ab
	rst  $28                                         ; $48a0: $ef
	db   $fd                                         ; $48a1: $fd
	or   a                                           ; $48a2: $b7
	ld   d, d                                        ; $48a3: $52
	ld   de, $bd17                                   ; $48a4: $11 $17 $bd
	rst  $38                                         ; $48a7: $ff
	db   $fc                                         ; $48a8: $fc
	ld   h, h                                        ; $48a9: $64
	ld   [hl-], a                                    ; $48aa: $32
	ld   hl, $ce17                                   ; $48ab: $21 $17 $ce
	rst  $28                                         ; $48ae: $ef
	db   $fc                                         ; $48af: $fc
	ld   h, e                                        ; $48b0: $63
	inc  [hl]                                        ; $48b1: $34
	ld   [hl-], a                                    ; $48b2: $32
	ld   e, c                                        ; $48b3: $59
	cp   e                                           ; $48b4: $bb
	adc  c                                           ; $48b5: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48b6: $cf
	reti                                             ; $48b7: $d9


	ld   d, d                                        ; $48b8: $52
	inc  hl                                          ; $48b9: $23
	ld   d, [hl]                                     ; $48ba: $56
	ld   a, e                                        ; $48bb: $7b
	cp   e                                           ; $48bc: $bb
	cp   h                                           ; $48bd: $bc
	db   $db                                         ; $48be: $db
	ld   h, e                                        ; $48bf: $63
	inc  h                                           ; $48c0: $24
	dec  [hl]                                        ; $48c1: $35
	sbc  h                                           ; $48c2: $9c
	jp   z, $7798                                    ; $48c3: $ca $98 $77

	ld   h, [hl]                                     ; $48c6: $66
	halt                                             ; $48c7: $76
	add  a                                           ; $48c8: $87
	sbc  h                                           ; $48c9: $9c
	call $31a6                                       ; $48ca: $cd $a6 $31
	ld   de, $ff49                                   ; $48cd: $11 $49 $ff
	db   $fd                                         ; $48d0: $fd
	and  a                                           ; $48d1: $a7
	ld   e, c                                        ; $48d2: $59
	add  l                                           ; $48d3: $85
	ld   de, $cf17                                   ; $48d4: $11 $17 $cf
	rst  $38                                         ; $48d7: $ff
	db   $fd                                         ; $48d8: $fd
	or   [hl]                                        ; $48d9: $b6
	ld   b, e                                        ; $48da: $43
	ld   de, $be12                                   ; $48db: $11 $12 $be
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	or   a                                           ; $48e0: $b7
	ld   hl, $2311                                   ; $48e1: $21 $11 $23
	adc  h                                           ; $48e4: $8c
	rst  $38                                         ; $48e5: $ff
	cp   $96                                         ; $48e6: $fe $96
	ld   de, $6824                                   ; $48e8: $11 $24 $68
	cp   l                                           ; $48eb: $bd
	ret  c                                           ; $48ec: $d8

	ld   l, b                                        ; $48ed: $68
	call $3494                                       ; $48ee: $cd $94 $34
	ld   h, a                                        ; $48f1: $67
	adc  c                                           ; $48f2: $89
	xor  d                                           ; $48f3: $aa
	sbc  c                                           ; $48f4: $99
	sub  a                                           ; $48f5: $97
	ld   d, h                                        ; $48f6: $54
	ld   l, c                                        ; $48f7: $69
	sbc  c                                           ; $48f8: $99
	adc  c                                           ; $48f9: $89
	cp   [hl]                                        ; $48fa: $be
	ld   [$1141], a                                  ; $48fb: $ea $41 $11
	ld   e, e                                        ; $48fe: $5b
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  ToBoot                                         ; $4901: $c7
	ld   b, [hl]                                     ; $4902: $46
	add  [hl]                                        ; $4903: $86
	ld   de, $ff15                                   ; $4904: $11 $15 $ff
	rst  $38                                         ; $4907: $ff
	cp   $c8                                         ; $4908: $fe $c8
	ld   b, d                                        ; $490a: $42
	ld   de, $9e11                                   ; $490b: $11 $11 $9e
	rst  $38                                         ; $490e: $ff
	rst  $38                                         ; $490f: $ff
	reti                                             ; $4910: $d9


Jump_0b3_4911:
	ld   hl, $1211                                   ; $4911: $21 $11 $12
	adc  a                                           ; $4914: $8f
	rst  $38                                         ; $4915: $ff
	rst  $38                                         ; $4916: $ff
	xor  b                                           ; $4917: $a8
	ld   hl, $2511                                   ; $4918: $21 $11 $25
	xor  l                                           ; $491b: $ad
	jp   c, $ffae                                    ; $491c: $da $ae $ff

	ld   [hl], c                                     ; $491f: $71
	ld   de, $9947                                   ; $4920: $11 $47 $99
	cp   e                                           ; $4923: $bb
	xor  e                                           ; $4924: $ab
	rst  $28                                         ; $4925: $ef
	add  $11                                         ; $4926: $c6 $11
	inc  h                                           ; $4928: $24
	adc  d                                           ; $4929: $8a
	sbc  $b9                                         ; $492a: $de $b9
	ld   h, a                                        ; $492c: $67
	sbc  d                                           ; $492d: $9a
	sub  [hl]                                        ; $492e: $96
	ld   b, l                                        ; $492f: $45
	ld   h, a                                        ; $4930: $67
	adc  e                                           ; $4931: $8b
	rst  $28                                         ; $4932: $ef
	and  e                                           ; $4933: $a3
	ld   de, $7e11                                   ; $4934: $11 $11 $7e
	rst  $38                                         ; $4937: $ff
	db   $fd                                         ; $4938: $fd
	ld   h, h                                        ; $4939: $64
	ld   h, a                                        ; $493a: $67
	ld   sp, $bf11                                   ; $493b: $31 $11 $bf
	rst  $38                                         ; $493e: $ff
	db   $fd                                         ; $493f: $fd
	db   $db                                         ; $4940: $db
	ld   h, l                                        ; $4941: $65
	ld   de, $5f11                                   ; $4942: $11 $11 $5f
	rst  $38                                         ; $4945: $ff
	rst  $38                                         ; $4946: $ff
	db   $fc                                         ; $4947: $fc
	sub  c                                           ; $4948: $91
	ld   de, $4e11                                   ; $4949: $11 $11 $4e
	rst  $38                                         ; $494c: $ff
	rst  $38                                         ; $494d: $ff
	rst  $20                                         ; $494e: $e7
	ld   b, c                                        ; $494f: $41
	ld   de, $9e12                                   ; $4950: $11 $12 $9e
	rst  $38                                         ; $4953: $ff
	call $92de                                       ; $4954: $cd $de $92
	ld   de, $ac15                                   ; $4957: $11 $15 $ac
	call z, $eecc                                    ; $495a: $cc $cc $ee
	or   h                                           ; $495d: $b4
	ld   de, $8b15                                   ; $495e: $11 $15 $8b
	adc  $c9                                         ; $4961: $ce $c9
	ld   a, b                                        ; $4963: $78
	xor  c                                           ; $4964: $a9
	ld   [hl], e                                     ; $4965: $73
	inc  hl                                          ; $4966: $23
	ld   a, d                                        ; $4967: $7a
	cp   h                                           ; $4968: $bc
	rst  JumpTable                                         ; $4969: $df
	sub  e                                           ; $496a: $93
	ld   de, $9f11                                   ; $496b: $11 $11 $9f
	rst  $38                                         ; $496e: $ff
	db   $fc                                         ; $496f: $fc
	ld   hl, $1123                                   ; $4970: $21 $23 $11
	ld   a, [de]                                     ; $4973: $1a
	rst  $38                                         ; $4974: $ff
	cp   $97                                         ; $4975: $fe $97
	xor  b                                           ; $4977: $a8
	and  [hl]                                        ; $4978: $a6
	ld   de, $cf11                                   ; $4979: $11 $11 $cf
	rst  $38                                         ; $497c: $ff
	rst  $28                                         ; $497d: $ef
	cp   $71                                         ; $497e: $fe $71
	ld   de, $ae11                                   ; $4980: $11 $11 $ae
	rst  $38                                         ; $4983: $ff
	rst  $38                                         ; $4984: $ff
	reti                                             ; $4985: $d9


	ld   sp, $1111                                   ; $4986: $31 $11 $11
	xor  a                                           ; $4989: $af
	rst  $38                                         ; $498a: $ff
	rst  $38                                         ; $498b: $ff
	db   $db                                         ; $498c: $db
	ld   h, c                                        ; $498d: $61
	ld   de, $9f11                                   ; $498e: $11 $11 $9f
	rst  $38                                         ; $4991: $ff
	rst  $38                                         ; $4992: $ff
	ld   hl, sp+$11                                  ; $4993: $f8 $11
	ld   de, $ce17                                   ; $4995: $11 $17 $ce
	cp   $cc                                         ; $4998: $fe $cc
	rst  JumpTable                                         ; $499a: $df
	add  c                                           ; $499b: $81
	ld   de, $cd16                                   ; $499c: $11 $16 $cd
	sbc  $de                                         ; $499f: $de $de
	jp   z, $1193                                    ; $49a1: $ca $93 $11

	inc  d                                           ; $49a4: $14
	sbc  l                                           ; $49a5: $9d
	rst  $38                                         ; $49a6: $ff
	ld   a, [$5464]                                  ; $49a7: $fa $64 $54
	ld   d, l                                        ; $49aa: $55
	ld   a, b                                        ; $49ab: $78
	sbc  d                                           ; $49ac: $9a
	xor  e                                           ; $49ad: $ab
	rst  $38                                         ; $49ae: $ff
	jp   nz, $1411                                   ; $49af: $c2 $11 $14

	rst  $38                                         ; $49b2: $ff
	rst  $38                                         ; $49b3: $ff
	rst  $38                                         ; $49b4: $ff
	and  e                                           ; $49b5: $a3
	ld   h, l                                        ; $49b6: $65
	ld   d, c                                        ; $49b7: $51
	ld   de, $ff6f                                   ; $49b8: $11 $6f $ff
	db   $fd                                         ; $49bb: $fd
	cp   $74                                         ; $49bc: $fe $74
	ld   de, $8f11                                   ; $49be: $11 $11 $8f
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	cp   $61                                         ; $49c3: $fe $61
	ld   de, $8f11                                   ; $49c5: $11 $11 $8f
	rst  $38                                         ; $49c8: $ff
	rst  $38                                         ; $49c9: $ff
	reti                                             ; $49ca: $d9


	ld   hl, $1111                                   ; $49cb: $21 $11 $11
	xor  a                                           ; $49ce: $af
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	and  a                                           ; $49d1: $a7
	ld   de, $1111                                   ; $49d2: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d5: $cf
	rst  $38                                         ; $49d6: $ff
	rst  $38                                         ; $49d7: $ff
	db   $db                                         ; $49d8: $db
	ld   sp, $1411                                   ; $49d9: $31 $11 $14
	rst  $28                                         ; $49dc: $ef
	rst  $38                                         ; $49dd: $ff
	rst  $38                                         ; $49de: $ff
	rst  $10                                         ; $49df: $d7
	ld   de, $1411                                   ; $49e0: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49e3: $cf
	rst  $38                                         ; $49e4: $ff
	rst  $38                                         ; $49e5: $ff
	call nz, $1111                                   ; $49e6: $c4 $11 $11
	dec  d                                           ; $49e9: $15
	rst  JumpTable                                         ; $49ea: $df
	rst  $38                                         ; $49eb: $ff
	cp   $d3                                         ; $49ec: $fe $d3
	ld   de, $1711                                   ; $49ee: $11 $11 $17
	rst  JumpTable                                         ; $49f1: $df
	rst  $38                                         ; $49f2: $ff
	rst  $38                                         ; $49f3: $ff
	pop  de                                          ; $49f4: $d1
	ld   de, $1811                                   ; $49f5: $11 $11 $18
	rst  JumpTable                                         ; $49f8: $df
	rst  $38                                         ; $49f9: $ff
	cp   $a1                                         ; $49fa: $fe $a1
	ld   de, $1911                                   ; $49fc: $11 $11 $19
	rst  $28                                         ; $49ff: $ef
	rst  $38                                         ; $4a00: $ff
	db   $fd                                         ; $4a01: $fd
	sub  c                                           ; $4a02: $91
	ld   hl, $1911                                   ; $4a03: $21 $11 $19
	rst  $38                                         ; $4a06: $ff
	rst  $38                                         ; $4a07: $ff
	cp   $81                                         ; $4a08: $fe $81
	ld   hl, $1811                                   ; $4a0a: $21 $11 $18
	rst  $38                                         ; $4a0d: $ff
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	ld   [hl], c                                     ; $4a10: $71
	ld   de, $1711                                   ; $4a11: $11 $11 $17
	rst  $38                                         ; $4a14: $ff
	rst  $38                                         ; $4a15: $ff
	cp   $51                                         ; $4a16: $fe $51
	ld   hl, $1611                                   ; $4a18: $21 $11 $16
	rst  $38                                         ; $4a1b: $ff
	rst  $38                                         ; $4a1c: $ff
	cp   $62                                         ; $4a1d: $fe $62
	ld   sp, $1611                                   ; $4a1f: $31 $11 $16
	rst  $38                                         ; $4a22: $ff
	rst  $38                                         ; $4a23: $ff
	rst  $38                                         ; $4a24: $ff
	ld   h, c                                        ; $4a25: $61
	ld   hl, $1411                                   ; $4a26: $21 $11 $14
	rst  $28                                         ; $4a29: $ef
	rst  $38                                         ; $4a2a: $ff
	rst  $38                                         ; $4a2b: $ff
	ld   [hl], e                                     ; $4a2c: $73
	ld   b, c                                        ; $4a2d: $41
	ld   de, $cf13                                   ; $4a2e: $11 $13 $cf
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	and  e                                           ; $4a33: $a3
	ld   b, c                                        ; $4a34: $41
	ld   de, $7f11                                   ; $4a35: $11 $11 $7f
	rst  $38                                         ; $4a38: $ff
	rst  $38                                         ; $4a39: $ff
	push de                                          ; $4a3a: $d5
	ld   h, d                                        ; $4a3b: $62
	ld   de, $4e11                                   ; $4a3c: $11 $11 $4e
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	ld   hl, sp+$52                                  ; $4a41: $f8 $52
	ld   hl, $1911                                   ; $4a43: $21 $11 $19
	rst  $28                                         ; $4a46: $ef
	rst  $38                                         ; $4a47: $ff
	ld   a, [$2274]                                  ; $4a48: $fa $74 $22
	ld   de, $cf14                                   ; $4a4b: $11 $14 $cf
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	ld   [hl], l                                     ; $4a50: $75
	inc  [hl]                                        ; $4a51: $34
	ld   de, $8e11                                   ; $4a52: $11 $11 $8e
	rst  $38                                         ; $4a55: $ff
	rst  $38                                         ; $4a56: $ff
	reti                                             ; $4a57: $d9


	ld   b, d                                        ; $4a58: $42
	ld   hl, $2811                                   ; $4a59: $21 $11 $28
	rst  JumpTable                                         ; $4a5c: $df
	rst  $38                                         ; $4a5d: $ff
	ld   sp, hl                                      ; $4a5e: $f9
	ld   b, h                                        ; $4a5f: $44
	ld   h, e                                        ; $4a60: $63
	ld   de, $af12                                   ; $4a61: $11 $12 $af
	rst  $38                                         ; $4a64: $ff
	cp   $96                                         ; $4a65: $fe $96
	ld   b, l                                        ; $4a67: $45
	ld   hl, $4911                                   ; $4a68: $21 $11 $49
	rst  $28                                         ; $4a6b: $ef
	rst  $38                                         ; $4a6c: $ff
	ret  c                                           ; $4a6d: $d8

	ld   d, h                                        ; $4a6e: $54
	ld   d, e                                        ; $4a6f: $53
	ld   de, $9d13                                   ; $4a70: $11 $13 $9d
	rst  $38                                         ; $4a73: $ff
	cp   $a6                                         ; $4a74: $fe $a6
	ld   b, l                                        ; $4a76: $45
	ld   d, e                                        ; $4a77: $53
	ld   de, $bf27                                   ; $4a78: $11 $27 $bf
	rst  $38                                         ; $4a7b: $ff
	ei                                               ; $4a7c: $fb
	ld   [hl], l                                     ; $4a7d: $75
	ld   d, l                                        ; $4a7e: $55
	ld   d, e                                        ; $4a7f: $53
	inc  hl                                          ; $4a80: $23
	ld   e, b                                        ; $4a81: $58
	cp   l                                           ; $4a82: $bd
	rst  $38                                         ; $4a83: $ff
	ret                                              ; $4a84: $c9


	ld   d, h                                        ; $4a85: $54
	ld   d, a                                        ; $4a86: $57
	halt                                             ; $4a87: $76
	ld   d, h                                        ; $4a88: $54
	ld   d, a                                        ; $4a89: $57
	xor  e                                           ; $4a8a: $ab
	adc  $b7                                         ; $4a8b: $ce $b7
	ld   b, h                                        ; $4a8d: $44
	adc  e                                           ; $4a8e: $8b
	sub  [hl]                                        ; $4a8f: $96
	ld   b, h                                        ; $4a90: $44
	ld   l, d                                        ; $4a91: $6a
	add  a                                           ; $4a92: $87
	xor  e                                           ; $4a93: $ab
	ret                                              ; $4a94: $c9


	ld   d, e                                        ; $4a95: $53
	ld   a, h                                        ; $4a96: $7c
	jp   z, Jump_0b3_5854                            ; $4a97: $ca $54 $58

	sbc  b                                           ; $4a9a: $98
	ld   h, a                                        ; $4a9b: $67
	sbc  d                                           ; $4a9c: $9a
	add  [hl]                                        ; $4a9d: $86
	adc  c                                           ; $4a9e: $89
	cp   d                                           ; $4a9f: $ba
	sub  [hl]                                        ; $4aa0: $96
	ld   d, [hl]                                     ; $4aa1: $56
	adc  c                                           ; $4aa2: $89
	halt                                             ; $4aa3: $76
	ld   a, b                                        ; $4aa4: $78
	sbc  c                                           ; $4aa5: $99
	sbc  c                                           ; $4aa6: $99
	sbc  b                                           ; $4aa7: $98
	adc  c                                           ; $4aa8: $89
	adc  b                                           ; $4aa9: $88
	add  a                                           ; $4aaa: $87
	halt                                             ; $4aab: $76
	ld   a, c                                        ; $4aac: $79
	cp   b                                           ; $4aad: $b8
	ld   h, [hl]                                     ; $4aae: $66
	adc  d                                           ; $4aaf: $8a
	sub  a                                           ; $4ab0: $97
	ld   l, b                                        ; $4ab1: $68
	sbc  c                                           ; $4ab2: $99
	add  a                                           ; $4ab3: $87
	ld   a, c                                        ; $4ab4: $79
	xor  c                                           ; $4ab5: $a9
	halt                                             ; $4ab6: $76
	ld   a, c                                        ; $4ab7: $79
	add  a                                           ; $4ab8: $87
	ld   h, a                                        ; $4ab9: $67
	adc  b                                           ; $4aba: $88
	sbc  c                                           ; $4abb: $99
	adc  c                                           ; $4abc: $89
	sbc  d                                           ; $4abd: $9a
	add  a                                           ; $4abe: $87
	ld   a, b                                        ; $4abf: $78
	ld   [hl], a                                     ; $4ac0: $77
	ld   l, b                                        ; $4ac1: $68
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	sbc  b                                           ; $4ac5: $98
	sbc  c                                           ; $4ac6: $99
	add  a                                           ; $4ac7: $87
	ld   [hl], a                                     ; $4ac8: $77
	ld   a, b                                        ; $4ac9: $78
	sbc  b                                           ; $4aca: $98
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	add  a                                           ; $4acd: $87
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	ld   [hl], a                                     ; $4ad0: $77
	adc  c                                           ; $4ad1: $89
	sbc  b                                           ; $4ad2: $98
	adc  b                                           ; $4ad3: $88
	sub  a                                           ; $4ad4: $97
	adc  c                                           ; $4ad5: $89
	sbc  b                                           ; $4ad6: $98
	ld   [hl], a                                     ; $4ad7: $77
	adc  c                                           ; $4ad8: $89
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  c                                           ; $4adb: $89
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	sbc  c                                           ; $4ae4: $99
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	add  a                                           ; $4ae8: $87
	ld   a, b                                        ; $4ae9: $78
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	sbc  c                                           ; $4aec: $99
	sbc  b                                           ; $4aed: $98
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	add  a                                           ; $4af0: $87
	ld   a, b                                        ; $4af1: $78
	adc  c                                           ; $4af2: $89
	sbc  c                                           ; $4af3: $99
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	add  a                                           ; $4af6: $87
	ld   [hl], a                                     ; $4af7: $77
	ld   a, b                                        ; $4af8: $78
	adc  c                                           ; $4af9: $89
	sbc  c                                           ; $4afa: $99
	sbc  c                                           ; $4afb: $99
	adc  b                                           ; $4afc: $88
	add  a                                           ; $4afd: $87
	ld   [hl], a                                     ; $4afe: $77
	ld   a, b                                        ; $4aff: $78
	adc  b                                           ; $4b00: $88
	sbc  b                                           ; $4b01: $98
	adc  c                                           ; $4b02: $89
	adc  b                                           ; $4b03: $88
	add  a                                           ; $4b04: $87
	ld   [hl], a                                     ; $4b05: $77
	ld   [hl], a                                     ; $4b06: $77
	adc  b                                           ; $4b07: $88
	sbc  b                                           ; $4b08: $98
	adc  b                                           ; $4b09: $88
	sbc  b                                           ; $4b0a: $98
	add  a                                           ; $4b0b: $87
	ld   [hl], a                                     ; $4b0c: $77
	ld   [hl], a                                     ; $4b0d: $77
	ld   a, b                                        ; $4b0e: $78
	adc  c                                           ; $4b0f: $89
	adc  b                                           ; $4b10: $88
	adc  c                                           ; $4b11: $89
	adc  b                                           ; $4b12: $88
	ld   [hl], a                                     ; $4b13: $77
	ld   [hl], a                                     ; $4b14: $77
	ld   a, b                                        ; $4b15: $78
	adc  c                                           ; $4b16: $89
	adc  b                                           ; $4b17: $88
	adc  c                                           ; $4b18: $89
	adc  b                                           ; $4b19: $88
	ld   [hl], a                                     ; $4b1a: $77
	ld   [hl], a                                     ; $4b1b: $77
	ld   a, b                                        ; $4b1c: $78
	adc  c                                           ; $4b1d: $89
	adc  b                                           ; $4b1e: $88
	sbc  c                                           ; $4b1f: $99
	sbc  b                                           ; $4b20: $98
	add  a                                           ; $4b21: $87
	ld   [hl], a                                     ; $4b22: $77
	ld   [hl], a                                     ; $4b23: $77
	adc  b                                           ; $4b24: $88
	sbc  c                                           ; $4b25: $99
	adc  b                                           ; $4b26: $88
	sbc  b                                           ; $4b27: $98
	adc  b                                           ; $4b28: $88
	ld   [hl], a                                     ; $4b29: $77
	ld   [hl], a                                     ; $4b2a: $77
	ld   a, b                                        ; $4b2b: $78
	adc  c                                           ; $4b2c: $89
	adc  b                                           ; $4b2d: $88
	sbc  c                                           ; $4b2e: $99
	adc  b                                           ; $4b2f: $88
	ld   [hl], a                                     ; $4b30: $77
	ld   [hl], a                                     ; $4b31: $77
	ld   a, b                                        ; $4b32: $78
	adc  b                                           ; $4b33: $88
	sbc  b                                           ; $4b34: $98
	adc  c                                           ; $4b35: $89
	adc  b                                           ; $4b36: $88
	add  a                                           ; $4b37: $87
	ld   [hl], a                                     ; $4b38: $77
	ld   a, b                                        ; $4b39: $78
	adc  b                                           ; $4b3a: $88
	adc  c                                           ; $4b3b: $89
	sbc  c                                           ; $4b3c: $99
	sbc  b                                           ; $4b3d: $98
	adc  b                                           ; $4b3e: $88
	ld   [hl], a                                     ; $4b3f: $77
	ld   a, b                                        ; $4b40: $78
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	sbc  c                                           ; $4b43: $99
	sbc  b                                           ; $4b44: $98
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
	ld   a, b                                        ; $4b56: $78
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	sbc  b                                           ; $4b5a: $98
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	add  a                                           ; $4b5d: $87
	ld   a, b                                        ; $4b5e: $78
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
	sbc  b                                           ; $4b70: $98
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	add  a                                           ; $4b73: $87
	ld   a, b                                        ; $4b74: $78
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	sbc  c                                           ; $4b77: $99
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	add  a                                           ; $4b7b: $87
	ld   a, b                                        ; $4b7c: $78
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	sbc  c                                           ; $4b7f: $99
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	sbc  c                                           ; $4b86: $99
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

Jump_0b3_4c11:
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
	adc  c                                           ; $4c70: $89
	cp   e                                           ; $4c71: $bb
	ld   b, e                                        ; $4c72: $43
	reti                                             ; $4c73: $d9


	rla                                              ; $4c74: $17
	add  sp, $38                                     ; $4c75: $e8 $38
	ret  c                                           ; $4c77: $d8

	add  hl, sp                                      ; $4c78: $39
	ret                                              ; $4c79: $c9


	sub  a                                           ; $4c7a: $97
	ld   c, d                                        ; $4c7b: $4a
	push de                                          ; $4c7c: $d5
	xor  e                                           ; $4c7d: $ab
	ld   b, [hl]                                     ; $4c7e: $46
	cp   c                                           ; $4c7f: $b9
	ld   e, c                                        ; $4c80: $59
	or   l                                           ; $4c81: $b5
	ld   l, h                                        ; $4c82: $6c
	halt                                             ; $4c83: $76
	xor  d                                           ; $4c84: $aa
	add  l                                           ; $4c85: $85
	ld   e, d                                        ; $4c86: $5a
	add  e                                           ; $4c87: $83
	adc  h                                           ; $4c88: $8c
	cp   b                                           ; $4c89: $b8
	ld   e, c                                        ; $4c8a: $59
	xor  c                                           ; $4c8b: $a9
	and  l                                           ; $4c8c: $a5
	ld   e, b                                        ; $4c8d: $58
	sub  a                                           ; $4c8e: $97
	ld   [hl], a                                     ; $4c8f: $77
	ld   [hl], l                                     ; $4c90: $75
	sbc  [hl]                                        ; $4c91: $9e
	sub  [hl]                                        ; $4c92: $96
	ld   h, a                                        ; $4c93: $67
	xor  d                                           ; $4c94: $aa
	ld   a, c                                        ; $4c95: $79
	add  [hl]                                        ; $4c96: $86
	ld   a, b                                        ; $4c97: $78
	sub  a                                           ; $4c98: $97
	adc  c                                           ; $4c99: $89
	ld   d, e                                        ; $4c9a: $53
	sbc  c                                           ; $4c9b: $99
	adc  h                                           ; $4c9c: $8c
	sub  a                                           ; $4c9d: $97
	ld   a, b                                        ; $4c9e: $78
	ld   [hl], a                                     ; $4c9f: $77
	ld   [hl], a                                     ; $4ca0: $77
	sbc  d                                           ; $4ca1: $9a
	sub  a                                           ; $4ca2: $97
	add  a                                           ; $4ca3: $87
	ld   h, [hl]                                     ; $4ca4: $66
	ld   [hl], a                                     ; $4ca5: $77
	ld   h, a                                        ; $4ca6: $67
	adc  b                                           ; $4ca7: $88
	sbc  e                                           ; $4ca8: $9b
	cp   d                                           ; $4ca9: $ba
	and  a                                           ; $4caa: $a7
	ld   a, c                                        ; $4cab: $79
	ld   [hl], e                                     ; $4cac: $73
	inc  h                                           ; $4cad: $24
	ld   d, e                                        ; $4cae: $53
	ld   e, e                                        ; $4caf: $5b
	call z, $e9ff                                    ; $4cb0: $cc $ff $e9
	halt                                             ; $4cb3: $76
	ld   sp, $3211                                   ; $4cb4: $31 $11 $32
	ld   l, d                                        ; $4cb7: $6a
	rst  $28                                         ; $4cb8: $ef
	rst  $38                                         ; $4cb9: $ff
	db   $fc                                         ; $4cba: $fc
	and  a                                           ; $4cbb: $a7
	ld   b, c                                        ; $4cbc: $41
	ld   de, $1a21                                   ; $4cbd: $11 $21 $1a
	rst  $38                                         ; $4cc0: $ff
	rst  $38                                         ; $4cc1: $ff
	rst  $38                                         ; $4cc2: $ff
	add  l                                           ; $4cc3: $85
	ld   d, c                                        ; $4cc4: $51
	ld   de, $1814                                   ; $4cc5: $11 $14 $18
	rst  $38                                         ; $4cc8: $ff
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	add  e                                           ; $4ccb: $83
	ld   d, c                                        ; $4ccc: $51
	ld   de, $2915                                   ; $4ccd: $11 $15 $29
	rst  $38                                         ; $4cd0: $ff
	rst  $38                                         ; $4cd1: $ff
	rst  $38                                         ; $4cd2: $ff
	ld   [hl], d                                     ; $4cd3: $72
	ld   sp, $3611                                   ; $4cd4: $31 $11 $36
	ld   e, [hl]                                     ; $4cd7: $5e
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	ei                                               ; $4cda: $fb
	ld   d, c                                        ; $4cdb: $51
	ld   de, $7911                                   ; $4cdc: $11 $11 $79
	rst  $28                                         ; $4cdf: $ef
	rst  $38                                         ; $4ce0: $ff
	rst  $28                                         ; $4ce1: $ef
	rst  ToBoot                                         ; $4ce2: $c7
	ld   de, $1911                                   ; $4ce3: $11 $11 $19
	cp   a                                           ; $4ce6: $bf
	rst  $38                                         ; $4ce7: $ff
	db   $fd                                         ; $4ce8: $fd
	db   $db                                         ; $4ce9: $db
	ld   h, c                                        ; $4cea: $61
	ld   de, $bd12                                   ; $4ceb: $11 $12 $bd
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	cp   h                                           ; $4cf0: $bc
	sub  d                                           ; $4cf1: $92
	ld   de, $bb11                                   ; $4cf2: $11 $11 $bb
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	res  6, l                                        ; $4cf7: $cb $b5
	ld   de, $9e11                                   ; $4cf9: $11 $11 $9e
	rst  $38                                         ; $4cfc: $ff
	rst  $38                                         ; $4cfd: $ff
	ret                                              ; $4cfe: $c9


	add  l                                           ; $4cff: $85
	ld   de, $cf11                                   ; $4d00: $11 $11 $cf
	rst  $38                                         ; $4d03: $ff
	rst  $38                                         ; $4d04: $ff
	xor  b                                           ; $4d05: $a8
	sub  [hl]                                        ; $4d06: $96
	ld   de, $ef11                                   ; $4d07: $11 $11 $ef
	rst  $38                                         ; $4d0a: $ff
	cp   $99                                         ; $4d0b: $fe $99
	add  h                                           ; $4d0d: $84
	ld   de, rAUD1LEN                                   ; $4d0e: $11 $11 $ff
	rst  $38                                         ; $4d11: $ff
	cp   $9b                                         ; $4d12: $fe $9b
	sub  d                                           ; $4d14: $92
	ld   de, rAUD1ENV                                   ; $4d15: $11 $12 $ff
	rst  $38                                         ; $4d18: $ff
	db   $fc                                         ; $4d19: $fc
	ld   a, h                                        ; $4d1a: $7c
	add  c                                           ; $4d1b: $81
	ld   de, $ff15                                   ; $4d1c: $11 $15 $ff
	rst  $38                                         ; $4d1f: $ff
	db   $fc                                         ; $4d20: $fc
	ld   a, h                                        ; $4d21: $7c
	ld   d, c                                        ; $4d22: $51
	ld   de, $ff15                                   ; $4d23: $11 $15 $ff
	rst  $38                                         ; $4d26: $ff
	sbc  d                                           ; $4d27: $9a
	xor  h                                           ; $4d28: $ac
	ld   b, c                                        ; $4d29: $41
	ld   de, $ff15                                   ; $4d2a: $11 $15 $ff
	rst  $38                                         ; $4d2d: $ff
	adc  $cb                                         ; $4d2e: $ce $cb
	ld   de, $1611                                   ; $4d30: $11 $11 $16
	rst  $38                                         ; $4d33: $ff
	rst  $38                                         ; $4d34: $ff
	call $11c9                                       ; $4d35: $cd $c9 $11
	ld   de, $ff1a                                   ; $4d38: $11 $1a $ff
	rst  $38                                         ; $4d3b: $ff
	cp   h                                           ; $4d3c: $bc
	xor  d                                           ; $4d3d: $aa
	ld   de, $1911                                   ; $4d3e: $11 $11 $19
	rst  $38                                         ; $4d41: $ff
	db   $fc                                         ; $4d42: $fc
	cp   h                                           ; $4d43: $bc
	rl   c                                           ; $4d44: $cb $11
	ld   de, $ff1b                                   ; $4d46: $11 $1b $ff
	db   $fc                                         ; $4d49: $fc
	cp   l                                           ; $4d4a: $bd
	cp   d                                           ; $4d4b: $ba
	ld   de, $2c11                                   ; $4d4c: $11 $11 $2c
	rst  $38                                         ; $4d4f: $ff
	ld   a, [$dabd]                                  ; $4d50: $fa $bd $da
	ld   de, $1a11                                   ; $4d53: $11 $11 $1a
	rst  $38                                         ; $4d56: $ff
	db   $fc                                         ; $4d57: $fc
	call $21ba                                       ; $4d58: $cd $ba $21
	ld   de, $ff19                                   ; $4d5b: $11 $19 $ff
	db   $fd                                         ; $4d5e: $fd
	cp   a                                           ; $4d5f: $bf
	db   $eb                                         ; $4d60: $eb
	ld   hl, $1511                                   ; $4d61: $21 $11 $15
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	sbc  [hl]                                        ; $4d66: $9e
	call c, $1151                                    ; $4d67: $dc $51 $11
	ld   de, $ffff                                   ; $4d6a: $11 $ff $ff
	sbc  [hl]                                        ; $4d6d: $9e
	db   $fd                                         ; $4d6e: $fd
	add  c                                           ; $4d6f: $81
	ld   de, $bf11                                   ; $4d70: $11 $11 $bf
	rst  $38                                         ; $4d73: $ff
	db   $dd                                         ; $4d74: $dd
	call c, $1192                                    ; $4d75: $dc $92 $11
	ld   de, $ff5f                                   ; $4d78: $11 $5f $ff
	xor  d                                           ; $4d7b: $aa
	rst  $38                                         ; $4d7c: $ff
	add  $11                                         ; $4d7d: $c6 $11
	ld   de, $fe1d                                   ; $4d7f: $11 $1d $fe
	db   $ed                                         ; $4d82: $ed
	rst  $28                                         ; $4d83: $ef
	cp   c                                           ; $4d84: $b9
	ld   de, $2611                                   ; $4d85: $11 $11 $26
	rst  $38                                         ; $4d88: $ff
	db   $fc                                         ; $4d89: $fc
	xor  a                                           ; $4d8a: $af
	db   $ed                                         ; $4d8b: $ed
	ld   [hl], c                                     ; $4d8c: $71
	ld   de, $cf11                                   ; $4d8d: $11 $11 $cf
	rst  $28                                         ; $4d90: $ef
	db   $dd                                         ; $4d91: $dd
	db   $fd                                         ; $4d92: $fd
	and  c                                           ; $4d93: $a1
	ld   de, $5f11                                   ; $4d94: $11 $11 $5f
	rst  $38                                         ; $4d97: $ff
	jp   c, $faff                                    ; $4d98: $da $ff $fa

	ld   de, $1711                                   ; $4d9b: $11 $11 $17
	rst  $38                                         ; $4d9e: $ff
	db   $ed                                         ; $4d9f: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4da0: $cf
	db   $eb                                         ; $4da1: $eb
	ld   sp, $1511                                   ; $4da2: $31 $11 $15
	rst  JumpTable                                         ; $4da5: $df
	db   $ec                                         ; $4da6: $ec
	cp   a                                           ; $4da7: $bf
	cp   $c2                                         ; $4da8: $fe $c2
	ld   de, $5c13                                   ; $4daa: $11 $13 $5c
	rst  $38                                         ; $4dad: $ff
	jp   c, $b5ee                                    ; $4dae: $da $ee $b5

	ld   de, $3b11                                   ; $4db1: $11 $11 $3b
	cp   $ba                                         ; $4db4: $fe $ba
	xor  a                                           ; $4db6: $af
	rst  $38                                         ; $4db7: $ff
	ld   h, c                                        ; $4db8: $61
	ld   de, $bf15                                   ; $4db9: $11 $15 $bf
	rst  $38                                         ; $4dbc: $ff
	call $81db                                       ; $4dbd: $cd $db $81
	ld   de, $7c15                                   ; $4dc0: $11 $15 $7c
	db   $eb                                         ; $4dc3: $eb
	sbc  d                                           ; $4dc4: $9a
	rst  $38                                         ; $4dc5: $ff
	ei                                               ; $4dc6: $fb
	ld   de, $4511                                   ; $4dc7: $11 $11 $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dca: $cf
	db   $fd                                         ; $4dcb: $fd
	xor  h                                           ; $4dcc: $ac
	db   $ec                                         ; $4dcd: $ec
	ld   [hl], c                                     ; $4dce: $71
	ld   de, $9f15                                   ; $4dcf: $11 $15 $9f
	jp   c, $ff8b                                    ; $4dd2: $da $8b $ff

	ld   a, [$1111]                                  ; $4dd5: $fa $11 $11
	dec  [hl]                                        ; $4dd8: $35
	rst  JumpTable                                         ; $4dd9: $df
	ld   a, [$dacf]                                  ; $4dda: $fa $cf $da
	ld   h, c                                        ; $4ddd: $61
	ld   de, $ad28                                   ; $4dde: $11 $28 $ad
	ret  z                                           ; $4de1: $c8

	ld   a, e                                        ; $4de2: $7b
	rst  $38                                         ; $4de3: $ff
	ld   sp, hl                                      ; $4de4: $f9
	ld   de, $5911                                   ; $4de5: $11 $11 $59
	rst  $38                                         ; $4de8: $ff
	ld   [$dacf], a                                  ; $4de9: $ea $cf $da
	ld   h, c                                        ; $4dec: $61
	ld   de, $ad57                                   ; $4ded: $11 $57 $ad
	ret                                              ; $4df0: $c9


	adc  h                                           ; $4df1: $8c
	rst  $38                                         ; $4df2: $ff
	rst  $30                                         ; $4df3: $f7
	ld   de, $7912                                   ; $4df4: $11 $12 $79
	rst  JumpTable                                         ; $4df7: $df
	ret                                              ; $4df8: $c9


	rst  $38                                         ; $4df9: $ff
	db   $db                                         ; $4dfa: $db
	ld   h, c                                        ; $4dfb: $61
	ld   de, $bd59                                   ; $4dfc: $11 $59 $bd
	ret                                              ; $4dff: $c9


	jr   c, @+$01                                    ; $4e00: $38 $ff

	ei                                               ; $4e02: $fb
	ld   de, $7911                                   ; $4e03: $11 $11 $79
	rst  $28                                         ; $4e06: $ef
	xor  e                                           ; $4e07: $ab
	xor  $fe                                         ; $4e08: $ee $fe
	sub  c                                           ; $4e0a: $91
	ld   de, $8f57                                   ; $4e0b: $11 $57 $8f
	jp   hl                                          ; $4e0e: $e9


	ld   b, l                                        ; $4e0f: $45
	rst  $38                                         ; $4e10: $ff
	rst  $38                                         ; $4e11: $ff
	ld   [hl], c                                     ; $4e12: $71
	ld   de, $7e7b                                   ; $4e13: $11 $7b $7e
	ld   sp, hl                                      ; $4e16: $f9
	xor  l                                           ; $4e17: $ad
	cp   $95                                         ; $4e18: $fe $95
	ld   de, $7c15                                   ; $4e1a: $11 $15 $7c
	reti                                             ; $4e1d: $d9


	and  [hl]                                        ; $4e1e: $a6
	adc  a                                           ; $4e1f: $8f
	rst  $38                                         ; $4e20: $ff
	pop  hl                                          ; $4e21: $e1
	ld   de, $7a16                                   ; $4e22: $11 $16 $7a
	rst  $38                                         ; $4e25: $ff
	ret                                              ; $4e26: $c9


	rst  $38                                         ; $4e27: $ff
	ret                                              ; $4e28: $c9


	ld   sp, $6911                                   ; $4e29: $31 $11 $69
	cp   [hl]                                        ; $4e2c: $be
	or   [hl]                                        ; $4e2d: $b6
	sbc  [hl]                                        ; $4e2e: $9e
	rst  $38                                         ; $4e2f: $ff
	rst  $30                                         ; $4e30: $f7
	ld   de, $9913                                   ; $4e31: $11 $13 $99
	rst  $28                                         ; $4e34: $ef
	jp   z, $fddf                                    ; $4e35: $ca $df $fd

	ld   h, c                                        ; $4e38: $61
	ld   de, $bc48                                   ; $4e39: $11 $48 $bc
	ret  c                                           ; $4e3c: $d8

	ld   a, d                                        ; $4e3d: $7a
	rst  $38                                         ; $4e3e: $ff
	cp   $11                                         ; $4e3f: $fe $11
	ld   de, $ef46                                   ; $4e41: $11 $46 $ef
	ei                                               ; $4e44: $fb
	cp   a                                           ; $4e45: $bf
	ld   a, [$1172]                                  ; $4e46: $fa $72 $11
	ld   b, [hl]                                     ; $4e49: $46
	sbc  l                                           ; $4e4a: $9d
	ld   [$ff5a], a                                  ; $4e4b: $ea $5a $ff
	cp   $41                                         ; $4e4e: $fe $41
	ld   de, $df56                                   ; $4e50: $11 $56 $df
	db   $fd                                         ; $4e53: $fd
	xor  [hl]                                        ; $4e54: $ae
	db   $fc                                         ; $4e55: $fc
	add  h                                           ; $4e56: $84
	ld   de, $af13                                   ; $4e57: $11 $13 $af
	reti                                             ; $4e5a: $d9


	ld   a, c                                        ; $4e5b: $79
	cp   a                                           ; $4e5c: $bf
	rst  $38                                         ; $4e5d: $ff
	add  c                                           ; $4e5e: $81
	ld   de, $bf35                                   ; $4e5f: $11 $35 $bf
	db   $fc                                         ; $4e62: $fc
	cp   e                                           ; $4e63: $bb
	db   $ec                                         ; $4e64: $ec
	or   l                                           ; $4e65: $b5
	ld   de, $6e23                                   ; $4e66: $11 $23 $6e
	db   $fc                                         ; $4e69: $fc
	ld   a, b                                        ; $4e6a: $78
	sbc  [hl]                                        ; $4e6b: $9e
	rst  $38                                         ; $4e6c: $ff
	pop  af                                          ; $4e6d: $f1
	ld   de, $9e14                                   ; $4e6e: $11 $14 $9e
	rst  $38                                         ; $4e71: $ff
	xor  h                                           ; $4e72: $ac
	db   $dd                                         ; $4e73: $dd
	rst  ToBoot                                         ; $4e74: $c7
	ld   de, $4b13                                   ; $4e75: $11 $13 $4b
	db   $fd                                         ; $4e78: $fd
	ld   c, c                                        ; $4e79: $49
	xor  h                                           ; $4e7a: $ac
	rst  $38                                         ; $4e7b: $ff
	db   $f4                                         ; $4e7c: $f4
	ld   de, $4f12                                   ; $4e7d: $11 $12 $4f
	rst  $38                                         ; $4e80: $ff
	jp   c, $9bdc                                    ; $4e81: $da $dc $9b

	ld   h, c                                        ; $4e84: $61
	ld   de, $ff37                                   ; $4e85: $11 $37 $ff
	sbc  d                                           ; $4e88: $9a
	adc  e                                           ; $4e89: $8b
	rst  $38                                         ; $4e8a: $ff
	ld   hl, sp+$11                                  ; $4e8b: $f8 $11
	ld   de, $ff2c                                   ; $4e8d: $11 $2c $ff
	call c, $8cbb                                    ; $4e90: $dc $bb $8c
	sub  c                                           ; $4e93: $91
	ld   de, $bf24                                   ; $4e94: $11 $24 $bf
	call z, $ffb7                                    ; $4e97: $cc $b7 $ff
	db   $eb                                         ; $4e9a: $eb
	ld   de, $1911                                   ; $4e9b: $11 $11 $19
	rst  $38                                         ; $4e9e: $ff
	xor  $da                                         ; $4e9f: $ee $da
	adc  e                                           ; $4ea1: $8b
	sub  c                                           ; $4ea2: $91
	ld   de, $8e45                                   ; $4ea3: $11 $45 $8e
	db   $fc                                         ; $4ea6: $fc
	cp   c                                           ; $4ea7: $b9
	rst  JumpTable                                         ; $4ea8: $df
	jp   z, $1131                                    ; $4ea9: $ca $31 $11

	jr   @+$01                                       ; $4eac: $18 $ff

	db   $ed                                         ; $4eae: $ed
	db   $db                                         ; $4eaf: $db
	xor  d                                           ; $4eb0: $aa
	sub  c                                           ; $4eb1: $91
	ld   de, $af23                                   ; $4eb2: $11 $23 $af
	call c, $dfb6                                    ; $4eb5: $dc $b6 $df
	cp   $41                                         ; $4eb8: $fe $41
	ld   de, $ff16                                   ; $4eba: $11 $16 $ff
	rst  $38                                         ; $4ebd: $ff
	db   $db                                         ; $4ebe: $db
	adc  c                                           ; $4ebf: $89
	sub  e                                           ; $4ec0: $93
	ld   de, $8f12                                   ; $4ec1: $11 $12 $8f
	call c, $cdc8                                    ; $4ec4: $dc $c8 $cd
	db   $fd                                         ; $4ec7: $fd
	ld   b, c                                        ; $4ec8: $41
	ld   de, $ff15                                   ; $4ec9: $11 $15 $ff
	rst  $38                                         ; $4ecc: $ff
	db   $eb                                         ; $4ecd: $eb
	ld   a, b                                        ; $4ece: $78
	sub  e                                           ; $4ecf: $93
	ld   de, $af14                                   ; $4ed0: $11 $14 $af
	call z, $bee7                                    ; $4ed3: $cc $e7 $be
	ei                                               ; $4ed6: $fb
	ld   hl, $1811                                   ; $4ed7: $21 $11 $18
	rst  $38                                         ; $4eda: $ff
	cp   $cc                                         ; $4edb: $fe $cc
	ld   a, b                                        ; $4edd: $78
	sub  d                                           ; $4ede: $92
	ld   de, $af11                                   ; $4edf: $11 $11 $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ee2: $cf
	rst  ToBoot                                         ; $4ee3: $c7
	cp   [hl]                                        ; $4ee4: $be
	db   $ec                                         ; $4ee5: $ec
	ld   sp, $1911                                   ; $4ee6: $31 $11 $19
	rst  $38                                         ; $4ee9: $ff
	rst  $38                                         ; $4eea: $ff
	cp   d                                           ; $4eeb: $ba
	ld   a, c                                        ; $4eec: $79
	add  e                                           ; $4eed: $83
	ld   de, $bf12                                   ; $4eee: $11 $12 $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ef1: $cf
	ret                                              ; $4ef2: $c9


	call z, $11da                                    ; $4ef3: $cc $da $11
	ld   de, $ff19                                   ; $4ef6: $11 $19 $ff
	rst  $38                                         ; $4ef9: $ff
	xor  d                                           ; $4efa: $aa
	ld   a, d                                        ; $4efb: $7a
	add  d                                           ; $4efc: $82
	ld   de, $bf01                                   ; $4efd: $11 $01 $bf
	rst  $38                                         ; $4f00: $ff
	ret                                              ; $4f01: $c9


	db   $db                                         ; $4f02: $db
	xor  c                                           ; $4f03: $a9
	ld   hl, $1d11                                   ; $4f04: $21 $11 $1d
	rst  $38                                         ; $4f07: $ff
	cp   $ba                                         ; $4f08: $fe $ba
	adc  d                                           ; $4f0a: $8a
	ld   d, c                                        ; $4f0b: $51
	ld   de, $ee15                                   ; $4f0c: $11 $15 $ee
	rst  $38                                         ; $4f0f: $ff
	cp   c                                           ; $4f10: $b9
	call c, $21b6                                    ; $4f11: $dc $b6 $21
	ld   de, $ff1d                                   ; $4f14: $11 $1d $ff
	rst  $38                                         ; $4f17: $ff
	cp   c                                           ; $4f18: $b9
	adc  b                                           ; $4f19: $88
	ld   b, c                                        ; $4f1a: $41
	ld   de, $ec16                                   ; $4f1b: $11 $16 $ec
	rst  $38                                         ; $4f1e: $ff
	xor  e                                           ; $4f1f: $ab
	call z, $11b5                                    ; $4f20: $cc $b5 $11
	ld   de, $ff3f                                   ; $4f23: $11 $3f $ff
	rst  $38                                         ; $4f26: $ff
	rst  ToBoot                                         ; $4f27: $c7
	ld   [hl], a                                     ; $4f28: $77
	ld   sp, $1a11                                   ; $4f29: $31 $11 $1a
	db   $db                                         ; $4f2c: $db
	rst  $38                                         ; $4f2d: $ff
	sbc  l                                           ; $4f2e: $9d
	cp   e                                           ; $4f2f: $bb
	ld   [hl], e                                     ; $4f30: $73
	ld   de, $8f11                                   ; $4f31: $11 $11 $8f
	rst  JumpTable                                         ; $4f34: $df
	cp   $c9                                         ; $4f35: $fe $c9
	sub  h                                           ; $4f37: $94
	ld   de, $1c11                                   ; $4f38: $11 $11 $1c
	db   $ed                                         ; $4f3b: $ed
	cp   $cd                                         ; $4f3c: $fe $cd
	xor  d                                           ; $4f3e: $aa
	ld   d, c                                        ; $4f3f: $51
	ld   de, $ed11                                   ; $4f40: $11 $11 $ed
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	sbc  c                                           ; $4f45: $99
	sub  e                                           ; $4f46: $93
	ld   de, $4f11                                   ; $4f47: $11 $11 $4f
	cp   a                                           ; $4f4a: $bf
	db   $fd                                         ; $4f4b: $fd
	call c, Call_0b3_4198                            ; $4f4c: $dc $98 $41
	ld   de, $dc13                                   ; $4f4f: $11 $13 $dc
	rst  $38                                         ; $4f52: $ff
	rst  $38                                         ; $4f53: $ff
	xor  c                                           ; $4f54: $a9
	ld   h, c                                        ; $4f55: $61
	ld   de, $7f11                                   ; $4f56: $11 $11 $7f
	cp   a                                           ; $4f59: $bf
	db   $fd                                         ; $4f5a: $fd
	db   $eb                                         ; $4f5b: $eb
	or   a                                           ; $4f5c: $b7
	ld   sp, $1511                                   ; $4f5d: $31 $11 $15
	adc  $ff                                         ; $4f60: $ce $ff
	rst  $38                                         ; $4f62: $ff
	sbc  c                                           ; $4f63: $99
	ld   h, c                                        ; $4f64: $61
	ld   de, $8a11                                   ; $4f65: $11 $11 $8a
	rst  JumpTable                                         ; $4f68: $df
	rst  $38                                         ; $4f69: $ff
	ei                                               ; $4f6a: $fb
	sub  l                                           ; $4f6b: $95
	ld   hl, $1711                                   ; $4f6c: $21 $11 $17
	sbc  h                                           ; $4f6f: $9c
	rst  $38                                         ; $4f70: $ff

Call_0b3_4f71:
	rst  $38                                         ; $4f71: $ff
	ret                                              ; $4f72: $c9


	ld   b, d                                        ; $4f73: $42
	ld   de, $7911                                   ; $4f74: $11 $11 $79
	cp   a                                           ; $4f77: $bf
	rst  $38                                         ; $4f78: $ff
	db   $fc                                         ; $4f79: $fc
	sub  [hl]                                        ; $4f7a: $96
	ld   hl, $1511                                   ; $4f7b: $21 $11 $15
	ld   a, d                                        ; $4f7e: $7a
	cp   $ff                                         ; $4f7f: $fe $ff
	cp   d                                           ; $4f81: $ba
	ld   [hl], l                                     ; $4f82: $75
	inc  sp                                          ; $4f83: $33
	inc  sp                                          ; $4f84: $33
	ld   b, [hl]                                     ; $4f85: $46
	ld   l, d                                        ; $4f86: $6a
	cp   d                                           ; $4f87: $ba
	call c, $7699                                    ; $4f88: $dc $99 $76
	ld   h, a                                        ; $4f8b: $67
	halt                                             ; $4f8c: $76
	ld   [hl], a                                     ; $4f8d: $77
	ld   l, b                                        ; $4f8e: $68
	add  a                                           ; $4f8f: $87
	sbc  b                                           ; $4f90: $98
	adc  b                                           ; $4f91: $88
	adc  b                                           ; $4f92: $88
	sbc  c                                           ; $4f93: $99
	sbc  c                                           ; $4f94: $99
	sbc  c                                           ; $4f95: $99
	sbc  b                                           ; $4f96: $98
	ld   [hl], a                                     ; $4f97: $77
	ld   h, a                                        ; $4f98: $67
	ld   [hl], a                                     ; $4f99: $77
	adc  c                                           ; $4f9a: $89
	adc  b                                           ; $4f9b: $88
	sbc  b                                           ; $4f9c: $98
	adc  c                                           ; $4f9d: $89
	adc  b                                           ; $4f9e: $88
	ld   [hl], a                                     ; $4f9f: $77
	ld   [hl], a                                     ; $4fa0: $77
	adc  b                                           ; $4fa1: $88
	sbc  c                                           ; $4fa2: $99
	adc  b                                           ; $4fa3: $88
	adc  b                                           ; $4fa4: $88
	add  a                                           ; $4fa5: $87
	ld   [hl], a                                     ; $4fa6: $77
	ld   a, b                                        ; $4fa7: $78
	adc  b                                           ; $4fa8: $88
	sbc  c                                           ; $4fa9: $99
	sbc  c                                           ; $4faa: $99
	sbc  b                                           ; $4fab: $98
	adc  b                                           ; $4fac: $88
	ld   [hl], a                                     ; $4fad: $77
	ld   [hl], a                                     ; $4fae: $77
	ld   a, b                                        ; $4faf: $78
	adc  c                                           ; $4fb0: $89
	sbc  c                                           ; $4fb1: $99
	sbc  c                                           ; $4fb2: $99
	sbc  b                                           ; $4fb3: $98
	adc  b                                           ; $4fb4: $88
	ld   [hl], a                                     ; $4fb5: $77
	ld   [hl], a                                     ; $4fb6: $77
	ld   a, b                                        ; $4fb7: $78
	adc  c                                           ; $4fb8: $89
	adc  b                                           ; $4fb9: $88
	adc  c                                           ; $4fba: $89
	adc  c                                           ; $4fbb: $89
	adc  b                                           ; $4fbc: $88
	ld   [hl], a                                     ; $4fbd: $77
	ld   [hl], a                                     ; $4fbe: $77
	ld   a, b                                        ; $4fbf: $78
	adc  b                                           ; $4fc0: $88
	adc  c                                           ; $4fc1: $89
	sbc  b                                           ; $4fc2: $98
	sbc  b                                           ; $4fc3: $98
	add  a                                           ; $4fc4: $87
	ld   [hl], a                                     ; $4fc5: $77
	ld   a, b                                        ; $4fc6: $78
	adc  c                                           ; $4fc7: $89
	adc  b                                           ; $4fc8: $88
	sbc  b                                           ; $4fc9: $98
	adc  c                                           ; $4fca: $89
	add  a                                           ; $4fcb: $87
	ld   [hl], a                                     ; $4fcc: $77
	ld   [hl], a                                     ; $4fcd: $77
	ld   a, b                                        ; $4fce: $78
	adc  c                                           ; $4fcf: $89
	adc  b                                           ; $4fd0: $88
	adc  c                                           ; $4fd1: $89
	adc  b                                           ; $4fd2: $88
	ld   [hl], a                                     ; $4fd3: $77
	ld   [hl], a                                     ; $4fd4: $77
	ld   [hl], a                                     ; $4fd5: $77
	adc  b                                           ; $4fd6: $88
	adc  c                                           ; $4fd7: $89
	adc  b                                           ; $4fd8: $88
	sbc  c                                           ; $4fd9: $99
	adc  b                                           ; $4fda: $88
	ld   [hl], a                                     ; $4fdb: $77
	ld   [hl], a                                     ; $4fdc: $77
	adc  b                                           ; $4fdd: $88
	adc  b                                           ; $4fde: $88
	sbc  c                                           ; $4fdf: $99
	sbc  c                                           ; $4fe0: $99
	adc  b                                           ; $4fe1: $88
	add  a                                           ; $4fe2: $87
	ld   [hl], a                                     ; $4fe3: $77
	ld   a, b                                        ; $4fe4: $78
	adc  b                                           ; $4fe5: $88
	adc  c                                           ; $4fe6: $89
	sbc  c                                           ; $4fe7: $99
	adc  b                                           ; $4fe8: $88
	add  a                                           ; $4fe9: $87
	ld   [hl], a                                     ; $4fea: $77
	ld   [hl], a                                     ; $4feb: $77
	adc  b                                           ; $4fec: $88
	adc  c                                           ; $4fed: $89
	sbc  c                                           ; $4fee: $99
	sbc  c                                           ; $4fef: $99
	adc  b                                           ; $4ff0: $88
	ld   [hl], a                                     ; $4ff1: $77
	ld   [hl], a                                     ; $4ff2: $77
	ld   a, b                                        ; $4ff3: $78
	adc  b                                           ; $4ff4: $88
	sbc  c                                           ; $4ff5: $99
	sbc  c                                           ; $4ff6: $99
	sbc  b                                           ; $4ff7: $98
	adc  b                                           ; $4ff8: $88
	ld   [hl], a                                     ; $4ff9: $77
	ld   [hl], a                                     ; $4ffa: $77
	ld   a, b                                        ; $4ffb: $78
	adc  b                                           ; $4ffc: $88
	sbc  c                                           ; $4ffd: $99
	sbc  b                                           ; $4ffe: $98
	adc  b                                           ; $4fff: $88
	add  a                                           ; $5000: $87
	ld   [hl], a                                     ; $5001: $77
	ld   a, b                                        ; $5002: $78
	adc  b                                           ; $5003: $88
	sbc  c                                           ; $5004: $99
	sbc  c                                           ; $5005: $99
	adc  b                                           ; $5006: $88
	adc  b                                           ; $5007: $88
	ld   [hl], a                                     ; $5008: $77
	ld   [hl], a                                     ; $5009: $77
	adc  b                                           ; $500a: $88
	adc  c                                           ; $500b: $89
	adc  c                                           ; $500c: $89
	sbc  b                                           ; $500d: $98
	adc  b                                           ; $500e: $88
	ld   [hl], a                                     ; $500f: $77
	ld   [hl], a                                     ; $5010: $77
	ld   a, b                                        ; $5011: $78
	adc  b                                           ; $5012: $88
	sbc  c                                           ; $5013: $99
	sbc  c                                           ; $5014: $99
	adc  b                                           ; $5015: $88
	add  a                                           ; $5016: $87
	ld   [hl], a                                     ; $5017: $77
	ld   [hl], a                                     ; $5018: $77
	adc  b                                           ; $5019: $88
	adc  c                                           ; $501a: $89
	sbc  c                                           ; $501b: $99
	sbc  b                                           ; $501c: $98
	adc  b                                           ; $501d: $88
	ld   [hl], a                                     ; $501e: $77
	ld   [hl], a                                     ; $501f: $77
	ld   a, b                                        ; $5020: $78
	adc  b                                           ; $5021: $88
	sbc  c                                           ; $5022: $99
	sbc  c                                           ; $5023: $99
	adc  b                                           ; $5024: $88
	add  a                                           ; $5025: $87
	ld   [hl], a                                     ; $5026: $77
	ld   [hl], a                                     ; $5027: $77
	adc  b                                           ; $5028: $88
	adc  c                                           ; $5029: $89
	sbc  c                                           ; $502a: $99
	sbc  b                                           ; $502b: $98
	adc  b                                           ; $502c: $88
	add  a                                           ; $502d: $87
	ld   [hl], a                                     ; $502e: $77
	ld   a, b                                        ; $502f: $78
	adc  b                                           ; $5030: $88
	sbc  c                                           ; $5031: $99
	sbc  c                                           ; $5032: $99
	adc  b                                           ; $5033: $88
	add  a                                           ; $5034: $87
	ld   a, b                                        ; $5035: $78
	ld   a, b                                        ; $5036: $78
	adc  b                                           ; $5037: $88
	adc  c                                           ; $5038: $89
	sbc  c                                           ; $5039: $99
	sbc  b                                           ; $503a: $98
	adc  b                                           ; $503b: $88
	adc  b                                           ; $503c: $88
	adc  b                                           ; $503d: $88
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	sbc  c                                           ; $5040: $99
	sbc  b                                           ; $5041: $98
	adc  b                                           ; $5042: $88
	adc  b                                           ; $5043: $88
	adc  b                                           ; $5044: $88
	adc  b                                           ; $5045: $88
	adc  b                                           ; $5046: $88
	adc  c                                           ; $5047: $89
	sbc  b                                           ; $5048: $98
	adc  b                                           ; $5049: $88
	adc  b                                           ; $504a: $88
	ld   a, b                                        ; $504b: $78
	adc  b                                           ; $504c: $88
	adc  b                                           ; $504d: $88
	adc  b                                           ; $504e: $88
	sbc  c                                           ; $504f: $99
	adc  b                                           ; $5050: $88
	adc  b                                           ; $5051: $88
	adc  b                                           ; $5052: $88
	adc  b                                           ; $5053: $88
	adc  b                                           ; $5054: $88
	adc  b                                           ; $5055: $88
	adc  c                                           ; $5056: $89
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

Call_0b3_51d7:
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
	adc  c                                           ; $528d: $89
	sbc  b                                           ; $528e: $98
	adc  c                                           ; $528f: $89
	sbc  c                                           ; $5290: $99
	adc  c                                           ; $5291: $89
	adc  b                                           ; $5292: $88
	sbc  b                                           ; $5293: $98
	adc  b                                           ; $5294: $88
	adc  b                                           ; $5295: $88
	sbc  b                                           ; $5296: $98
	adc  b                                           ; $5297: $88
	adc  d                                           ; $5298: $8a
	adc  b                                           ; $5299: $88
	sbc  d                                           ; $529a: $9a
	adc  c                                           ; $529b: $89
	sub  a                                           ; $529c: $97
	ld   a, b                                        ; $529d: $78
	add  a                                           ; $529e: $87
	adc  b                                           ; $529f: $88
	ld   a, b                                        ; $52a0: $78
	ld   a, b                                        ; $52a1: $78
	ld   [hl], a                                     ; $52a2: $77
	ld   a, b                                        ; $52a3: $78
	ld   [hl], a                                     ; $52a4: $77
	ld   h, l                                        ; $52a5: $65
	ld   b, h                                        ; $52a6: $44
	ld   h, a                                        ; $52a7: $67
	adc  c                                           ; $52a8: $89
	call $a7cb                                       ; $52a9: $cd $cb $a7
	ld   b, c                                        ; $52ac: $41
	inc  h                                           ; $52ad: $24
	inc  sp                                          ; $52ae: $33
	ld   h, [hl]                                     ; $52af: $66
	adc  c                                           ; $52b0: $89
	rst  $28                                         ; $52b1: $ef
	rst  $38                                         ; $52b2: $ff
	cp   $a7                                         ; $52b3: $fe $a7
	ld   hl, $1111                                   ; $52b5: $21 $11 $11
	ld   c, b                                        ; $52b8: $48
	call z, $ffff                                    ; $52b9: $cc $ff $ff
	rst  $38                                         ; $52bc: $ff
	sub  e                                           ; $52bd: $93
	ld   de, $1111                                   ; $52be: $11 $11 $11
	ld   c, l                                        ; $52c1: $4d
	rst  $38                                         ; $52c2: $ff
	rst  $38                                         ; $52c3: $ff
	rst  $38                                         ; $52c4: $ff
	sbc  e                                           ; $52c5: $9b
	ld   h, c                                        ; $52c6: $61
	ld   de, $1811                                   ; $52c7: $11 $11 $18
	rst  $38                                         ; $52ca: $ff
	rst  $38                                         ; $52cb: $ff
	rst  $38                                         ; $52cc: $ff
	sub  $53                                         ; $52cd: $d6 $53
	ld   de, $1213                                   ; $52cf: $11 $13 $12
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	rst  $38                                         ; $52d4: $ff
	rst  $10                                         ; $52d5: $d7
	inc  sp                                          ; $52d6: $33
	ld   de, $3514                                   ; $52d7: $11 $14 $35
	rst  $38                                         ; $52da: $ff
	rst  $38                                         ; $52db: $ff
	rst  $38                                         ; $52dc: $ff
	or   h                                           ; $52dd: $b4
	ld   de, $1711                                   ; $52de: $11 $11 $17
	ld   a, $ff                                      ; $52e1: $3e $ff
	rst  $38                                         ; $52e3: $ff
	ld   sp, hl                                      ; $52e4: $f9
	add  c                                           ; $52e5: $81
	ld   de, $6511                                   ; $52e6: $11 $11 $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $52e9: $cf
	rst  $38                                         ; $52ea: $ff
	rst  $38                                         ; $52eb: $ff
	add  [hl]                                        ; $52ec: $86
	ld   b, c                                        ; $52ed: $41
	ld   de, $7d18                                   ; $52ee: $11 $18 $7d
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	rst  $30                                         ; $52f3: $f7
	ld   d, h                                        ; $52f4: $54
	ld   de, $a711                                   ; $52f5: $11 $11 $a7
	rst  $38                                         ; $52f8: $ff
	cp   $fd                                         ; $52f9: $fe $fd
	ld   h, [hl]                                     ; $52fb: $66
	ld   sp, $1b11                                   ; $52fc: $31 $11 $1b
	xor  a                                           ; $52ff: $af
	rst  $38                                         ; $5300: $ff
	db   $ed                                         ; $5301: $ed
	or   a                                           ; $5302: $b7
	ld   d, d                                        ; $5303: $52
	ld   de, $dc11                                   ; $5304: $11 $11 $dc
	rst  $38                                         ; $5307: $ff
	ei                                               ; $5308: $fb
	jp   c, Jump_0b3_4176                            ; $5309: $da $76 $41

	ld   de, $ff19                                   ; $530c: $11 $19 $ff
	rst  $38                                         ; $530f: $ff
	res  5, d                                        ; $5310: $cb $aa
	ld   h, h                                        ; $5312: $64
	ld   de, $2e11                                   ; $5313: $11 $11 $2e
	rst  $38                                         ; $5316: $ff
	rst  $38                                         ; $5317: $ff
	jp   z, $62b9                                    ; $5318: $ca $b9 $62

	ld   de, $7f11                                   ; $531b: $11 $11 $7f
	rst  $38                                         ; $531e: $ff
	cp   $b8                                         ; $531f: $fe $b8
	and  a                                           ; $5321: $a7
	ld   d, c                                        ; $5322: $51
	ld   de, $cf11                                   ; $5323: $11 $11 $cf
	rst  $38                                         ; $5326: $ff
	db   $fc                                         ; $5327: $fc
	sbc  c                                           ; $5328: $99
	cp   c                                           ; $5329: $b9
	ld   sp, $1211                                   ; $532a: $31 $11 $12
	rst  JumpTable                                         ; $532d: $df
	rst  $38                                         ; $532e: $ff
	db   $fc                                         ; $532f: $fc
	cp   e                                           ; $5330: $bb
	cp   c                                           ; $5331: $b9
	ld   hl, $1311                                   ; $5332: $21 $11 $13
	rst  $38                                         ; $5335: $ff
	rst  $38                                         ; $5336: $ff
	db   $ec                                         ; $5337: $ec
	adc  e                                           ; $5338: $8b
	or   a                                           ; $5339: $b7
	ld   sp, $1211                                   ; $533a: $31 $11 $12
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	cp   $8b                                         ; $533f: $fe $8b
	rst  ToBoot                                         ; $5341: $c7
	ld   de, $1111                                   ; $5342: $11 $11 $11
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	cp   $8d                                         ; $5347: $fe $8d
	jp   hl                                          ; $5349: $e9


	ld   de, $1211                                   ; $534a: $11 $11 $12
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	cp   $9b                                         ; $534f: $fe $9b
	ret                                              ; $5351: $c9


	ld   de, $1311                                   ; $5352: $11 $11 $13
	rst  JumpTable                                         ; $5355: $df
	rst  $38                                         ; $5356: $ff
	db   $fc                                         ; $5357: $fc
	call $21fa                                       ; $5358: $cd $fa $21
	ld   de, $bf11                                   ; $535b: $11 $11 $bf
	rst  $38                                         ; $535e: $ff
	rst  $38                                         ; $535f: $ff
	xor  c                                           ; $5360: $a9
	bit  2, c                                        ; $5361: $cb $51
	ld   de, $8f11                                   ; $5363: $11 $11 $8f
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	set  5, l                                        ; $5368: $cb $ed
	ld   d, c                                        ; $536a: $51
	ld   de, $7f12                                   ; $536b: $11 $12 $7f
	rst  $38                                         ; $536e: $ff
	db   $fd                                         ; $536f: $fd
	set  1, a                                        ; $5370: $cb $cf
	sub  c                                           ; $5372: $91
	ld   de, $5b11                                   ; $5373: $11 $11 $5b
	rst  $38                                         ; $5376: $ff
	cp   $db                                         ; $5377: $fe $db
	sbc  $b3                                         ; $5379: $de $b3
	ld   de, $3711                                   ; $537b: $11 $11 $37
	rst  $38                                         ; $537e: $ff
	rst  $38                                         ; $537f: $ff
	call $c6cc                                       ; $5380: $cd $cc $c6
	ld   de, $3912                                   ; $5383: $11 $12 $39
	rst  $38                                         ; $5386: $ff
	sbc  $ca                                         ; $5387: $de $ca
	cp   a                                           ; $5389: $bf
	ei                                               ; $538a: $fb
	ld   de, $2511                                   ; $538b: $11 $11 $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $538e: $cf
	rst  $38                                         ; $538f: $ff
	db   $eb                                         ; $5390: $eb
	cp   d                                           ; $5391: $ba
	db   $db                                         ; $5392: $db
	ld   sp, $4511                                   ; $5393: $31 $11 $45
	adc  a                                           ; $5396: $8f
	db   $eb                                         ; $5397: $eb
	adc  $fd                                         ; $5398: $ce $fd
	db   $fd                                         ; $539a: $fd
	ld   sp, $4711                                   ; $539b: $31 $11 $47
	ld   a, [hl]                                     ; $539e: $7e
	db   $eb                                         ; $539f: $eb
	call $ffff                                       ; $53a0: $cd $ff $ff
	ld   d, c                                        ; $53a3: $51
	ld   de, $9d59                                   ; $53a4: $11 $59 $9d
	reti                                             ; $53a7: $d9


	adc  e                                           ; $53a8: $8b
	rst  $28                                         ; $53a9: $ef
	rst  $38                                         ; $53aa: $ff
	and  c                                           ; $53ab: $a1
	ld   de, $9918                                   ; $53ac: $11 $18 $99
	cp   $cb                                         ; $53af: $fe $cb
	cp   a                                           ; $53b1: $bf
	rst  $38                                         ; $53b2: $ff
	jp   $1711                                       ; $53b3: $c3 $11 $17


	sub  [hl]                                        ; $53b6: $96
	xor  e                                           ; $53b7: $ab
	adc  $ff                                         ; $53b8: $ce $ff
	rst  $38                                         ; $53ba: $ff
	sub  c                                           ; $53bb: $91
	ld   de, $a716                                   ; $53bc: $11 $16 $a7
	bit  7, e                                        ; $53bf: $cb $7b
	rst  $28                                         ; $53c1: $ef
	rst  $38                                         ; $53c2: $ff
	pop  de                                          ; $53c3: $d1
	ld   de, $b818                                   ; $53c4: $11 $18 $b8
	jp   z, $df6a                                    ; $53c7: $ca $6a $df

	rst  $38                                         ; $53ca: $ff
	or   $11                                         ; $53cb: $f6 $11
	inc  d                                           ; $53cd: $14
	db   $eb                                         ; $53ce: $eb
	xor  e                                           ; $53cf: $ab
	and  a                                           ; $53d0: $a7
	xor  a                                           ; $53d1: $af
	rst  $38                                         ; $53d2: $ff
	rst  $20                                         ; $53d3: $e7
	ld   de, $da12                                   ; $53d4: $11 $12 $da
	xor  l                                           ; $53d7: $ad
	sub  a                                           ; $53d8: $97
	xor  [hl]                                        ; $53d9: $ae
	rst  $38                                         ; $53da: $ff
	ei                                               ; $53db: $fb
	ld   de, $bb11                                   ; $53dc: $11 $11 $bb
	xor  h                                           ; $53df: $ac
	and  [hl]                                        ; $53e0: $a6
	cp   l                                           ; $53e1: $bd
	rst  $38                                         ; $53e2: $ff
	cp   $11                                         ; $53e3: $fe $11
	ld   de, $ad9b                                   ; $53e5: $11 $9b $ad
	push bc                                          ; $53e8: $c5
	xor  [hl]                                        ; $53e9: $ae
	rst  $38                                         ; $53ea: $ff
	rst  $38                                         ; $53eb: $ff
	ld   hl, $aa11                                   ; $53ec: $21 $11 $aa
	adc  l                                           ; $53ef: $8d
	jp   $ff8f                                       ; $53f0: $c3 $8f $ff


	rst  $38                                         ; $53f3: $ff
	ld   hl, $9b11                                   ; $53f4: $21 $11 $9b
	xor  [hl]                                        ; $53f7: $ae
	and  d                                           ; $53f8: $a2
	ld   l, [hl]                                     ; $53f9: $6e
	rst  $38                                         ; $53fa: $ff
	rst  $38                                         ; $53fb: $ff
	ld   d, c                                        ; $53fc: $51
	ld   de, $cd7c                                   ; $53fd: $11 $7c $cd
	or   e                                           ; $5400: $b3
	ld   a, h                                        ; $5401: $7c
	rst  $38                                         ; $5402: $ff
	rst  $38                                         ; $5403: $ff
	ld   d, c                                        ; $5404: $51
	ld   de, $dd6c                                   ; $5405: $11 $6c $dd
	or   e                                           ; $5408: $b3
	ld   e, h                                        ; $5409: $5c
	rst  $38                                         ; $540a: $ff
	rst  $38                                         ; $540b: $ff
	ld   sp, $6c11                                   ; $540c: $31 $11 $6c
	call z, $8cb3                                    ; $540f: $cc $b3 $8c
	rst  $38                                         ; $5412: $ff
	rst  $38                                         ; $5413: $ff
	ld   de, $8b11                                   ; $5414: $11 $11 $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5417: $cf
	add  c                                           ; $5418: $81
	ld   a, [hl]                                     ; $5419: $7e
	rst  $38                                         ; $541a: $ff
	rst  $38                                         ; $541b: $ff
	ld   de, $bc11                                   ; $541c: $11 $11 $bc
	call Call_0b3_4f71                               ; $541f: $cd $71 $4f
	rst  $38                                         ; $5422: $ff
	rst  $38                                         ; $5423: $ff
	ld   de, $bc11                                   ; $5424: $11 $11 $bc
	cp   l                                           ; $5427: $bd
	sub  c                                           ; $5428: $91
	ld   a, a                                        ; $5429: $7f
	rst  $38                                         ; $542a: $ff
	rst  $38                                         ; $542b: $ff
	ld   de, $bc12                                   ; $542c: $11 $12 $bc
	call $9f61                                       ; $542f: $cd $61 $9f
	rst  $38                                         ; $5432: $ff
	ei                                               ; $5433: $fb
	ld   de, $bb14                                   ; $5434: $11 $14 $bb
	rst  JumpTable                                         ; $5437: $df
	ld   [hl], c                                     ; $5438: $71
	sbc  a                                           ; $5439: $9f
	rst  $38                                         ; $543a: $ff
	ld   hl, sp+$11                                  ; $543b: $f8 $11
	ld   a, [de]                                     ; $543d: $1a
	cp   e                                           ; $543e: $bb
	jp   z, $df24                                    ; $543f: $ca $24 $df

	rst  $38                                         ; $5442: $ff
	db   $f4                                         ; $5443: $f4
	ld   de, $ee1b                                   ; $5444: $11 $1b $ee
	reti                                             ; $5447: $d9


	dec  d                                           ; $5448: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5449: $cf
	rst  $38                                         ; $544a: $ff
	pop  de                                          ; $544b: $d1
	ld   de, $bc2b                                   ; $544c: $11 $2b $bc
	rst  ToBoot                                         ; $544f: $c7
	jr   @+$01                                       ; $5450: $18 $ff

	rst  $38                                         ; $5452: $ff
	sub  c                                           ; $5453: $91
	ld   de, $ec9d                                   ; $5454: $11 $9d $ec
	and  d                                           ; $5457: $a2
	inc  e                                           ; $5458: $1c
	rst  $38                                         ; $5459: $ff
	rst  $38                                         ; $545a: $ff
	ld   d, c                                        ; $545b: $51
	ld   de, $debc                                   ; $545c: $11 $bc $de
	and  c                                           ; $545f: $a1
	ld   c, a                                        ; $5460: $4f
	rst  $38                                         ; $5461: $ff
	cp   $11                                         ; $5462: $fe $11
	inc  de                                          ; $5464: $13
	xor  l                                           ; $5465: $ad
	db   $ec                                         ; $5466: $ec
	ld   h, c                                        ; $5467: $61
	ld   l, a                                        ; $5468: $6f
	rst  $38                                         ; $5469: $ff
	ld   sp, hl                                      ; $546a: $f9
	ld   de, $ed18                                   ; $546b: $11 $18 $ed
	db   $db                                         ; $546e: $db
	ld   sp, $ffbf                                   ; $546f: $31 $bf $ff
	di                                               ; $5472: $f3
	ld   de, $df1c                                   ; $5473: $11 $1c $df
	ret  z                                           ; $5476: $c8

	ld   [de], a                                     ; $5477: $12
	rst  $38                                         ; $5478: $ff
	rst  $38                                         ; $5479: $ff
	pop  de                                          ; $547a: $d1
	ld   de, $df7c                                   ; $547b: $11 $7c $df
	or   h                                           ; $547e: $b4
	ld   a, [de]                                     ; $547f: $1a
	rst  $38                                         ; $5480: $ff
	rst  $38                                         ; $5481: $ff
	ld   b, c                                        ; $5482: $41
	ld   de, $bfce                                   ; $5483: $11 $ce $bf
	pop  bc                                          ; $5486: $c1
	rra                                              ; $5487: $1f
	rst  $38                                         ; $5488: $ff
	cp   $11                                         ; $5489: $fe $11
	inc  d                                           ; $548b: $14
	sbc  $ec                                         ; $548c: $de $ec
	ld   d, c                                        ; $548e: $51
	ld   l, a                                        ; $548f: $6f
	rst  $38                                         ; $5490: $ff
	push bc                                          ; $5491: $c5
	ld   de, $ff1a                                   ; $5492: $11 $1a $ff
	sub  $11                                         ; $5495: $d6 $11

Jump_0b3_5497:
	sbc  a                                           ; $5497: $9f
	rst  $38                                         ; $5498: $ff
	pop  hl                                          ; $5499: $e1
	ld   de, $ef1c                                   ; $549a: $11 $1c $ef
	reti                                             ; $549d: $d9


	inc  d                                           ; $549e: $14
	rst  $38                                         ; $549f: $ff
	rst  $38                                         ; $54a0: $ff
	pop  de                                          ; $54a1: $d1
	ld   de, $ae8c                                   ; $54a2: $11 $8c $ae
	jp   nz, $ff1b                                   ; $54a5: $c2 $1b $ff

	rst  $38                                         ; $54a8: $ff
	ld   [hl], c                                     ; $54a9: $71
	ld   de, $ceb9                                   ; $54aa: $11 $b9 $ce
	and  l                                           ; $54ad: $a5
	sbc  [hl]                                        ; $54ae: $9e
	rst  $38                                         ; $54af: $ff
	jp   hl                                          ; $54b0: $e9


	ld   de, $ab15                                   ; $54b1: $11 $15 $ab
	db   $db                                         ; $54b4: $db
	ld   e, c                                        ; $54b5: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54b6: $cf
	rst  $38                                         ; $54b7: $ff
	or   c                                           ; $54b8: $b1
	ld   de, $de4a                                   ; $54b9: $11 $4a $de
	or   l                                           ; $54bc: $b5
	add  hl, de                                      ; $54bd: $19
	rst  $38                                         ; $54be: $ff
	cp   $31                                         ; $54bf: $fe $31
	ld   de, $ddac                                   ; $54c1: $11 $ac $dd
	and  c                                           ; $54c4: $a1
	ld   e, a                                        ; $54c5: $5f
	rst  $38                                         ; $54c6: $ff
	jp   hl                                          ; $54c7: $e9


	ld   de, $bc17                                   ; $54c8: $11 $17 $bc
	reti                                             ; $54cb: $d9


	ld   b, c                                        ; $54cc: $41
	rst  $28                                         ; $54cd: $ef
	rst  $38                                         ; $54ce: $ff
	or   c                                           ; $54cf: $b1
	ld   de, $ce3c                                   ; $54d0: $11 $3c $ce
	db   $e4                                         ; $54d3: $e4
	ld   d, $ff                                      ; $54d4: $16 $ff
	rst  $38                                         ; $54d6: $ff
	ld   h, c                                        ; $54d7: $61
	ld   de, $fd8c                                   ; $54d8: $11 $8c $fd
	ld   [hl], c                                     ; $54db: $71
	ld   l, a                                        ; $54dc: $6f
	rst  $38                                         ; $54dd: $ff
	ld   a, [$1811]                                  ; $54de: $fa $11 $18
	xor  d                                           ; $54e1: $aa
	call c, $cf41                                    ; $54e2: $dc $41 $cf
	rst  $38                                         ; $54e5: $ff
	ldh  a, [c]                                      ; $54e6: $f2
	ld   de, $9d2b                                   ; $54e7: $11 $2b $9d
	sub  $3a                                         ; $54ea: $d6 $3a
	rst  $38                                         ; $54ec: $ff
	cp   $91                                         ; $54ed: $fe $91
	ld   de, $8f86                                   ; $54ef: $11 $86 $8f
	push de                                          ; $54f2: $d5
	sbc  a                                           ; $54f3: $9f
	rst  $38                                         ; $54f4: $ff
	ret  z                                           ; $54f5: $c8

	ld   de, $9a18                                   ; $54f6: $11 $18 $9a
	ret  c                                           ; $54f9: $d8

	jr   c, @+$01                                    ; $54fa: $38 $ff

	db   $fd                                         ; $54fc: $fd
	ld   h, c                                        ; $54fd: $61
	ld   de, $ac9c                                   ; $54fe: $11 $9c $ac
	and  c                                           ; $5501: $a1
	ccf                                              ; $5502: $3f
	rst  $38                                         ; $5503: $ff
	ld   a, [$1911]                                  ; $5504: $fa $11 $19
	sbc  d                                           ; $5507: $9a
	ld   sp, hl                                      ; $5508: $f9
	ld   b, l                                        ; $5509: $45
	cp   a                                           ; $550a: $bf
	cp   $a2                                         ; $550b: $fe $a2
	ld   de, $ce49                                   ; $550d: $11 $49 $ce
	or   d                                           ; $5510: $b2
	jr   z, @+$01                                    ; $5511: $28 $ff

	rst  $38                                         ; $5513: $ff
	ld   hl, $9a13                                   ; $5514: $21 $13 $9a
	rst  JumpTable                                         ; $5517: $df
	ld   d, e                                        ; $5518: $53
	xor  [hl]                                        ; $5519: $ae
	rst  $28                                         ; $551a: $ef
	ld   hl, sp+$11                                  ; $551b: $f8 $11
	dec  d                                           ; $551d: $15
	ld   a, e                                        ; $551e: $7b
	db   $fc                                         ; $551f: $fc
	add  hl, hl                                      ; $5520: $29
	adc  $ff                                         ; $5521: $ce $ff
	and  c                                           ; $5523: $a1
	ld   de, $8e65                                   ; $5524: $11 $65 $8e
	or   [hl]                                        ; $5527: $b6
	adc  a                                           ; $5528: $8f
	rst  $38                                         ; $5529: $ff
	or   a                                           ; $552a: $b7
	ld   de, $9a17                                   ; $552b: $11 $17 $9a
	ld   [$cf26], a                                  ; $552e: $ea $26 $cf
	rst  $38                                         ; $5531: $ff
	sub  c                                           ; $5532: $91
	ld   de, $cf9a                                   ; $5533: $11 $9a $cf
	or   e                                           ; $5536: $b3
	ld   e, h                                        ; $5537: $5c
	rst  $38                                         ; $5538: $ff
	reti                                             ; $5539: $d9


	ld   de, $8b16                                   ; $553a: $11 $16 $8b
	db   $ec                                         ; $553d: $ec
	dec  [hl]                                        ; $553e: $35
	rst  JumpTable                                         ; $553f: $df
	rst  $38                                         ; $5540: $ff
	and  c                                           ; $5541: $a1
	ld   de, $bf78                                   ; $5542: $11 $78 $bf
	and  d                                           ; $5545: $a2
	ld   e, a                                        ; $5546: $5f
	rst  $38                                         ; $5547: $ff
	ld   sp, hl                                      ; $5548: $f9
	ld   de, $9918                                   ; $5549: $11 $18 $99
	db   $fc                                         ; $554c: $fc
	inc  d                                           ; $554d: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $554e: $cf
	rst  $38                                         ; $554f: $ff
	pop  hl                                          ; $5550: $e1
	ld   de, $7f55                                   ; $5551: $11 $55 $7f
	rst  $20                                         ; $5554: $e7
	ld   a, h                                        ; $5555: $7c
	xor  $db                                         ; $5556: $ee $db
	ld   bc, $4915                                   ; $5558: $01 $15 $49
	db   $dd                                         ; $555b: $dd
	ld   a, c                                        ; $555c: $79
	rst  JumpTable                                         ; $555d: $df
	ld   a, [$1161]                                  ; $555e: $fa $61 $11
	sbc  h                                           ; $5561: $9c
	sbc  d                                           ; $5562: $9a
	sub  d                                           ; $5563: $92
	ld   e, a                                        ; $5564: $5f
	rst  $38                                         ; $5565: $ff
	sub  $11                                         ; $5566: $d6 $11
	ld   a, [hl-]                                    ; $5568: $3a
	xor  d                                           ; $5569: $aa
	jp   c, $ff15                                    ; $556a: $da $15 $ff

	cp   $61                                         ; $556d: $fe $61
	ld   [de], a                                     ; $556f: $12
	xor  d                                           ; $5570: $aa
	adc  $62                                         ; $5571: $ce $62
	ld   a, a                                        ; $5573: $7f
	rst  $38                                         ; $5574: $ff
	or   $11                                         ; $5575: $f6 $11
	add  hl, sp                                      ; $5577: $39
	ld   a, e                                        ; $5578: $7b
	ld   sp, hl                                      ; $5579: $f9
	add  hl, hl                                      ; $557a: $29
	rst  JumpTable                                         ; $557b: $df
	db   $fd                                         ; $557c: $fd
	ld   h, c                                        ; $557d: $61
	ld   [de], a                                     ; $557e: $12
	adc  d                                           ; $557f: $8a
	rst  $38                                         ; $5580: $ff
	ld   h, d                                        ; $5581: $62
	xor  a                                           ; $5582: $af
	rst  $38                                         ; $5583: $ff
	db   $d3                                         ; $5584: $d3
	ld   de, $7b69                                   ; $5585: $11 $69 $7b
	push hl                                          ; $5588: $e5
	dec  de                                          ; $5589: $1b
	rst  $38                                         ; $558a: $ff
	db   $fc                                         ; $558b: $fc
	ld   de, $9915                                   ; $558c: $11 $15 $99
	cp   a                                           ; $558f: $bf
	ld   h, d                                        ; $5590: $62
	cp   a                                           ; $5591: $bf
	rst  $38                                         ; $5592: $ff
	jp   nc, Jump_0b3_4911                           ; $5593: $d2 $11 $49

	adc  [hl]                                        ; $5596: $8e
	rst  $30                                         ; $5597: $f7
	ld   e, h                                        ; $5598: $5c
	rst  $28                                         ; $5599: $ef
	rst  $20                                         ; $559a: $e7
	ld   de, $aa17                                   ; $559b: $11 $17 $aa
	reti                                             ; $559e: $d9


	inc  b                                           ; $559f: $04
	rst  $38                                         ; $55a0: $ff
	rst  $38                                         ; $55a1: $ff
	ld   b, c                                        ; $55a2: $41
	ld   [de], a                                     ; $55a3: $12
	sbc  d                                           ; $55a4: $9a
	call $9f85                                       ; $55a5: $cd $85 $9f
	db   $fd                                         ; $55a8: $fd
	or   l                                           ; $55a9: $b5
	ld   de, $6948                                   ; $55aa: $11 $48 $69
	ld   [$ff2a], a                                  ; $55ad: $ea $2a $ff
	ei                                               ; $55b0: $fb
	ld   de, $ca16                                   ; $55b1: $11 $16 $ca
	adc  $61                                         ; $55b4: $ce $61
	sbc  a                                           ; $55b6: $9f
	rst  $38                                         ; $55b7: $ff
	or   e                                           ; $55b8: $b3
	ld   de, $894a                                   ; $55b9: $11 $4a $89
	db   $e4                                         ; $55bc: $e4
	ld   l, a                                        ; $55bd: $6f
	rst  $38                                         ; $55be: $ff
	jp   hl                                          ; $55bf: $e9


	ld   de, $a717                                   ; $55c0: $11 $17 $a7
	call $df97                                       ; $55c3: $cd $97 $df
	db   $fc                                         ; $55c6: $fc
	ld   b, c                                        ; $55c7: $41
	inc  de                                          ; $55c8: $13
	adc  c                                           ; $55c9: $89
	adc  e                                           ; $55ca: $8b
	sub  d                                           ; $55cb: $92
	sbc  a                                           ; $55cc: $9f
	rst  $38                                         ; $55cd: $ff
	jp   Jump_0b3_4c11                               ; $55ce: $c3 $11 $4c


	sbc  h                                           ; $55d1: $9c
	push hl                                          ; $55d2: $e5
	ld   e, d                                        ; $55d3: $5a
	rst  $38                                         ; $55d4: $ff
	db   $eb                                         ; $55d5: $eb
	ld   de, $7918                                   ; $55d6: $11 $18 $79
	call c, $cf54                                    ; $55d9: $dc $54 $cf
	db   $fd                                         ; $55dc: $fd
	ld   h, c                                        ; $55dd: $61
	ld   de, $ac8b                                   ; $55de: $11 $8b $ac
	or   e                                           ; $55e1: $b3
	ld   e, a                                        ; $55e2: $5f
	rst  $38                                         ; $55e3: $ff
	or   h                                           ; $55e4: $b4
	ld   de, $c71b                                   ; $55e5: $11 $1b $c7
	ret                                              ; $55e8: $c9


	jr   c, @+$01                                    ; $55e9: $38 $ff

	ld   [$1521], a                                  ; $55eb: $ea $21 $15
	rst  ToBoot                                         ; $55ee: $c7
	xor  h                                           ; $55ef: $ac
	sub  l                                           ; $55f0: $95
	cp   a                                           ; $55f1: $bf
	cp   $71                                         ; $55f2: $fe $71
	ld   de, $987a                                   ; $55f4: $11 $7a $98
	and  h                                           ; $55f7: $a4
	adc  a                                           ; $55f8: $8f
	rst  $38                                         ; $55f9: $ff
	call nz, $3911                                   ; $55fa: $c4 $11 $39
	ld   e, b                                        ; $55fd: $58
	jp   hl                                          ; $55fe: $e9


	ld   l, l                                        ; $55ff: $6d
	rst  $38                                         ; $5600: $ff
	jp   z, $1b11                                    ; $5601: $ca $11 $1b

	sub  l                                           ; $5604: $95
	sbc  h                                           ; $5605: $9c
	ld   [hl], h                                     ; $5606: $74
	rst  $28                                         ; $5607: $ef
	ld   a, [$1191]                                  ; $5608: $fa $91 $11
	sbc  b                                           ; $560b: $98
	adc  h                                           ; $560c: $8c
	sbc  c                                           ; $560d: $99
	adc  [hl]                                        ; $560e: $8e
	rst  $38                                         ; $560f: $ff
	or   c                                           ; $5610: $b1
	ld   de, $7a58                                   ; $5611: $11 $58 $7a
	and  a                                           ; $5614: $a7
	adc  [hl]                                        ; $5615: $8e
	rst  $38                                         ; $5616: $ff
	or   h                                           ; $5617: $b4
	ld   de, $653a                                   ; $5618: $11 $3a $65
	xor  d                                           ; $561b: $aa
	ld   a, d                                        ; $561c: $7a
	rst  $38                                         ; $561d: $ff
	rst  $20                                         ; $561e: $e7
	ld   de, $7b15                                   ; $561f: $11 $15 $7b
	add  [hl]                                        ; $5622: $86
	ld   h, [hl]                                     ; $5623: $66
	rst  JumpTable                                         ; $5624: $df
	cp   $91                                         ; $5625: $fe $91
	ld   de, $8aba                                   ; $5627: $11 $ba $8a
	sub  l                                           ; $562a: $95
	dec  sp                                          ; $562b: $3b
	rst  $38                                         ; $562c: $ff
	jp   hl                                          ; $562d: $e9


	ld   de, $5947                                   ; $562e: $11 $47 $59
	reti                                             ; $5631: $d9


	ld   [hl], $ff                                   ; $5632: $36 $ff
	jp   z, $1171                                    ; $5634: $ca $71 $11

	ld   a, b                                        ; $5637: $78
	ld   a, c                                        ; $5638: $79
	xor  e                                           ; $5639: $ab
	cp   [hl]                                        ; $563a: $be
	rst  $38                                         ; $563b: $ff
	ld   [hl], c                                     ; $563c: $71
	inc  de                                          ; $563d: $13
	ld   d, d                                        ; $563e: $52
	ld   c, c                                        ; $563f: $49
	sbc  b                                           ; $5640: $98
	rst  $28                                         ; $5641: $ef
	ld   a, [$12a4]                                  ; $5642: $fa $a4 $12
	add  [hl]                                        ; $5645: $86
	daa                                              ; $5646: $27
	push de                                          ; $5647: $d5
	ld   a, a                                        ; $5648: $7f
	rst  $38                                         ; $5649: $ff
	ld   sp, hl                                      ; $564a: $f9
	ld   de, $4527                                   ; $564b: $11 $27 $45
	res  1, c                                        ; $564e: $cb $89
	rst  $38                                         ; $5650: $ff
	ld   a, b                                        ; $5651: $78
	ld   b, c                                        ; $5652: $41
	ld   d, $95                                      ; $5653: $16 $95
	ld   [hl], h                                     ; $5655: $74
	sbc  d                                           ; $5656: $9a
	rst  $28                                         ; $5657: $ef
	db   $fd                                         ; $5658: $fd
	ld   de, $d416                                   ; $5659: $11 $16 $d4
	ld   e, h                                        ; $565c: $5c
	and  e                                           ; $565d: $a3
	sbc  a                                           ; $565e: $9f
	rst  $38                                         ; $565f: $ff
	sub  c                                           ; $5660: $91
	inc  de                                          ; $5661: $13
	sub  l                                           ; $5662: $95
	ld   e, h                                        ; $5663: $5c
	sub  l                                           ; $5664: $95
	ld   a, a                                        ; $5665: $7f
	rst  $38                                         ; $5666: $ff
	push bc                                          ; $5667: $c5
	ld   de, $4766                                   ; $5668: $11 $66 $47
	cp   e                                           ; $566b: $bb
	ld   h, [hl]                                     ; $566c: $66
	rst  $38                                         ; $566d: $ff
	jp   c, $1371                                    ; $566e: $da $71 $13

	ld   [hl], l                                     ; $5671: $75
	ld   a, h                                        ; $5672: $7c

jr_0b3_5673:
	sub  [hl]                                        ; $5673: $96
	sbc  a                                           ; $5674: $9f
	cp   $b2                                         ; $5675: $fe $b2
	ld   [de], a                                     ; $5677: $12
	ld   d, c                                        ; $5678: $51
	dec  l                                           ; $5679: $2d
	and  $8e                                         ; $567a: $e6 $8e
	cp   $c7                                         ; $567c: $fe $c7
	ld   bc, $3813                                   ; $567e: $01 $13 $38
	sub  $df                                         ; $5681: $d6 $df
	db   $fd                                         ; $5683: $fd
	push bc                                          ; $5684: $c5
	ld   de, $336d                                   ; $5685: $11 $6d $33
	or   l                                           ; $5688: $b5
	ld   a, [hl]                                     ; $5689: $7e
	rst  $38                                         ; $568a: $ff
	rst  ToBoot                                         ; $568b: $c7
	ld   de, $144a                                   ; $568c: $11 $4a $14
	or   a                                           ; $568f: $b7
	xor  l                                           ; $5690: $ad
	db   $fd                                         ; $5691: $fd
	xor  c                                           ; $5692: $a9
	ld   de, $824b                                   ; $5693: $11 $4b $82
	ld   e, c                                        ; $5696: $59
	ld   d, l                                        ; $5697: $55
	rst  $38                                         ; $5698: $ff
	ld   [$1811], a                                  ; $5699: $ea $11 $18
	and  h                                           ; $569c: $a4
	sbc  e                                           ; $569d: $9b
	dec  h                                           ; $569e: $25
	rst  $38                                         ; $569f: $ff
	sbc  $91                                         ; $56a0: $de $91
	ld   d, $f7                                      ; $56a2: $16 $f7
	ld   b, a                                        ; $56a4: $47
	ld   [hl], h                                     ; $56a5: $74
	ccf                                              ; $56a6: $3f
	rst  $38                                         ; $56a7: $ff
	and  $11                                         ; $56a8: $e6 $11
	add  hl, sp                                      ; $56aa: $39
	adc  d                                           ; $56ab: $8a
	ld   hl, sp+$13                                  ; $56ac: $f8 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56ae: $cf
	db   $fd                                         ; $56af: $fd
	and  c                                           ; $56b0: $a1
	inc  de                                          ; $56b1: $13
	or   c                                           ; $56b2: $b1
	cpl                                              ; $56b3: $2f
	jp   c, $fabf                                    ; $56b4: $da $bf $fa

	ld   h, a                                        ; $56b7: $67
	ld   sp, $1b22                                   ; $56b8: $31 $22 $1b
	ld   sp, hl                                      ; $56bb: $f9
	rst  $38                                         ; $56bc: $ff
	call z, $37b1                                    ; $56bd: $cc $b1 $37
	ld   b, c                                        ; $56c0: $41
	dec  hl                                          ; $56c1: $2b
	cp   d                                           ; $56c2: $ba
	rst  JumpTable                                         ; $56c3: $df
	ld   hl, sp-$6d                                  ; $56c4: $f8 $93
	inc  d                                           ; $56c6: $14
	sub  e                                           ; $56c7: $93
	ld   a, [hl+]                                    ; $56c8: $2a
	ld   [hl], a                                     ; $56c9: $77
	rst  JumpTable                                         ; $56ca: $df
	db   $fd                                         ; $56cb: $fd
	ld   [hl], c                                     ; $56cc: $71
	inc  de                                          ; $56cd: $13
	xor  c                                           ; $56ce: $a9
	jr   z, jr_0b3_5673                              ; $56cf: $28 $a2

	ld   a, a                                        ; $56d1: $7f
	cp   $a1                                         ; $56d2: $fe $a1
	ld   [de], a                                     ; $56d4: $12
	ld   l, d                                        ; $56d5: $6a
	daa                                              ; $56d6: $27
	adc  e                                           ; $56d7: $8b
	ld   h, a                                        ; $56d8: $67
	rst  $38                                         ; $56d9: $ff
	and  l                                           ; $56da: $a5
	ld   sp, $544a                                   ; $56db: $31 $4a $54
	ld   a, e                                        ; $56de: $7b
	scf                                              ; $56df: $37
	rst  $38                                         ; $56e0: $ff
	ld   sp, hl                                      ; $56e1: $f9
	ld   h, c                                        ; $56e2: $61
	dec  d                                           ; $56e3: $15
	add  a                                           ; $56e4: $87
	adc  e                                           ; $56e5: $8b
	ld   [hl], h                                     ; $56e6: $74
	sbc  a                                           ; $56e7: $9f
	ei                                               ; $56e8: $fb
	or   e                                           ; $56e9: $b3
	ld   [de], a                                     ; $56ea: $12
	ld   [hl-], a                                    ; $56eb: $32
	rla                                              ; $56ec: $17
	call $f7ff                                       ; $56ed: $cd $ff $f7
	ld   b, d                                        ; $56f0: $42
	ld   l, h                                        ; $56f1: $6c
	ld   hl, $7b17                                   ; $56f2: $21 $17 $7b
	rst  $38                                         ; $56f5: $ff
	jp   nz, $1c51                                   ; $56f6: $c2 $51 $1c

	add  $12                                         ; $56f9: $c6 $12
	ld   l, e                                        ; $56fb: $6b
	rst  $38                                         ; $56fc: $ff
	cp   $b1                                         ; $56fd: $fe $b1
	rla                                              ; $56ff: $17
	and  e                                           ; $5700: $a3
	inc  e                                           ; $5701: $1c
	and  [hl]                                        ; $5702: $a6
	ld   l, a                                        ; $5703: $6f
	ei                                               ; $5704: $fb
	sub  e                                           ; $5705: $93
	ld   de, $2a58                                   ; $5706: $11 $58 $2a
	sub  l                                           ; $5709: $95
	adc  a                                           ; $570a: $8f
	cp   $c1                                         ; $570b: $fe $c1
	ld   de, $1a79                                   ; $570d: $11 $79 $1a
	and  $4d                                         ; $5710: $e6 $4d
	db   $fc                                         ; $5712: $fc
	sub  [hl]                                        ; $5713: $96
	ld   b, e                                        ; $5714: $43
	scf                                              ; $5715: $37
	inc  de                                          ; $5716: $13
	xor  l                                           ; $5717: $ad
	xor  d                                           ; $5718: $aa
	rst  $38                                         ; $5719: $ff
	ld   h, l                                        ; $571a: $65
	inc  [hl]                                        ; $571b: $34
	inc  sp                                          ; $571c: $33
	dec  [hl]                                        ; $571d: $35
	sub  a                                           ; $571e: $97
	call c, $abef                                    ; $571f: $dc $ef $ab
	ld   d, d                                        ; $5722: $52
	ld   [hl+], a                                    ; $5723: $22
	ld   hl, $fd7d                                   ; $5724: $21 $7d $fd
	rst  $38                                         ; $5727: $ff
	sbc  d                                           ; $5728: $9a
	ld   hl, $1156                                   ; $5729: $21 $56 $11
	xor  e                                           ; $572c: $ab
	jp   c, $d5cf                                    ; $572d: $da $cf $d5

	ld   h, e                                        ; $5730: $63
	dec  d                                           ; $5731: $15
	ld   hl, $8fab                                   ; $5732: $21 $ab $8f
	rst  $38                                         ; $5735: $ff
	and  e                                           ; $5736: $a3
	inc  de                                          ; $5737: $13
	add  l                                           ; $5738: $85
	ld   d, c                                        ; $5739: $51
	ld   e, b                                        ; $573a: $58
	ld   a, a                                        ; $573b: $7f
	rst  $38                                         ; $573c: $ff
	or   l                                           ; $573d: $b5
	ld   de, $7198                                   ; $573e: $11 $98 $71
	sub  a                                           ; $5741: $97
	dec  hl                                          ; $5742: $2b
	rst  $38                                         ; $5743: $ff
	jp   hl                                          ; $5744: $e9


	ld   de, $5535                                   ; $5745: $11 $35 $55
	push bc                                          ; $5748: $c5
	adc  [hl]                                        ; $5749: $8e
	adc  $fc                                         ; $574a: $ce $fc
	inc  d                                           ; $574c: $14
	ld   d, c                                        ; $574d: $51
	ld   [de], a                                     ; $574e: $12
	ei                                               ; $574f: $fb
	jp   z, $9bcd                                    ; $5750: $ca $cd $9b

	ld   d, l                                        ; $5753: $55
	ld   h, a                                        ; $5754: $67
	ld   de, $ec8c                                   ; $5755: $11 $8c $ec
	rst  $38                                         ; $5758: $ff
	ld   h, $35                                      ; $5759: $26 $35
	and  a                                           ; $575b: $a7
	ld   de, $8cc7                                   ; $575c: $11 $c7 $8c
	rst  $38                                         ; $575f: $ff
	cp   b                                           ; $5760: $b8
	ld   b, l                                        ; $5761: $45
	ld   de, $9944                                   ; $5762: $11 $44 $99
	xor  a                                           ; $5765: $af
	db   $ed                                         ; $5766: $ed
	jp   c, Jump_0b3_6434                            ; $5767: $da $34 $64

	ld   de, $8fde                                   ; $576a: $11 $de $8f
	db   $fd                                         ; $576d: $fd
	ld   h, l                                        ; $576e: $65
	ld   h, $b5                                      ; $576f: $26 $b5
	ld   de, $8fb9                                   ; $5771: $11 $b9 $8f
	rst  $38                                         ; $5774: $ff
	ld   [hl], d                                     ; $5775: $72
	ld   a, [hl-]                                    ; $5776: $3a
	ld   b, c                                        ; $5777: $41

Jump_0b3_5778:
	jr   c, @-$57                                    ; $5778: $38 $a7

	xor  a                                           ; $577a: $af
	ld   sp, hl                                      ; $577b: $f9
	adc  e                                           ; $577c: $8b
	inc  [hl]                                        ; $577d: $34
	ld   d, l                                        ; $577e: $55
	inc  de                                          ; $577f: $13
	xor  b                                           ; $5780: $a8
	sbc  $fd                                         ; $5781: $de $fd
	ld   h, e                                        ; $5783: $63
	ld   b, a                                        ; $5784: $47
	inc  hl                                          ; $5785: $23
	add  hl, sp                                      ; $5786: $39
	ld   a, c                                        ; $5787: $79
	db   $fc                                         ; $5788: $fc
	jp   hl                                          ; $5789: $e9


	ret                                              ; $578a: $c9


	inc  [hl]                                        ; $578b: $34
	ld   sp, $e71c                                   ; $578c: $31 $1c $e7
	rst  $38                                         ; $578f: $ff
	sub  $94                                         ; $5790: $d6 $94
	ld   b, [hl]                                     ; $5792: $46
	ld   b, c                                        ; $5793: $41
	rra                                              ; $5794: $1f
	add  a                                           ; $5795: $87
	rst  $38                                         ; $5796: $ff
	sub  $84                                         ; $5797: $d6 $84
	add  h                                           ; $5799: $84
	ld   de, $6a6f                                   ; $579a: $11 $6f $6a
	rst  $38                                         ; $579d: $ff
	ld   b, a                                        ; $579e: $47
	ld   d, l                                        ; $579f: $55
	db   $d3                                         ; $57a0: $d3
	ld   hl, $af67                                   ; $57a1: $21 $67 $af
	db   $fc                                         ; $57a4: $fc
	ld   a, e                                        ; $57a5: $7b
	ld   b, c                                        ; $57a6: $41
	halt                                             ; $57a7: $76
	ld   d, c                                        ; $57a8: $51
	sbc  h                                           ; $57a9: $9c
	xor  d                                           ; $57aa: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57ab: $cf
	or   a                                           ; $57ac: $b7
	ld   b, e                                        ; $57ad: $43
	ld   b, d                                        ; $57ae: $42
	rla                                              ; $57af: $17
	ld   sp, hl                                      ; $57b0: $f9
	ld   c, h                                        ; $57b1: $4c
	db   $fc                                         ; $57b2: $fc
	inc  a                                           ; $57b3: $3c
	and  h                                           ; $57b4: $a4
	ld   hl, $d715                                   ; $57b5: $21 $15 $d7
	rst  $38                                         ; $57b8: $ff
	ret  z                                           ; $57b9: $c8

	sub  h                                           ; $57ba: $94
	ld   d, l                                        ; $57bb: $55
	inc  h                                           ; $57bc: $24
	add  hl, hl                                      ; $57bd: $29
	sub  h                                           ; $57be: $94
	rst  $38                                         ; $57bf: $ff
	rst  $10                                         ; $57c0: $d7
	cp   b                                           ; $57c1: $b8
	ld   [de], a                                     ; $57c2: $12
	inc  h                                           ; $57c3: $24
	ld   a, [hl+]                                    ; $57c4: $2a
	jp   hl                                          ; $57c5: $e9


	rst  JumpTable                                         ; $57c6: $df
	and  a                                           ; $57c7: $a7
	and  [hl]                                        ; $57c8: $a6
	add  d                                           ; $57c9: $82
	ld   d, $97                                      ; $57ca: $16 $97
	sbc  a                                           ; $57cc: $9f
	ld   a, [$51bb]                                  ; $57cd: $fa $bb $51
	ld   d, e                                        ; $57d0: $53
	inc  b                                           ; $57d1: $04
	cp   h                                           ; $57d2: $bc
	adc  h                                           ; $57d3: $8c
	xor  $86                                         ; $57d4: $ee $86
	xor  b                                           ; $57d6: $a8
	ld   h, c                                        ; $57d7: $61
	dec  d                                           ; $57d8: $15
	di                                               ; $57d9: $f3
	sbc  a                                           ; $57da: $9f
	db   $f4                                         ; $57db: $f4

Call_0b3_57dc:
	ld   a, [hl+]                                    ; $57dc: $2a
	ld   d, [hl]                                     ; $57dd: $56
	ld   b, d                                        ; $57de: $42
	rla                                              ; $57df: $17
	call nz, $e4ef                                   ; $57e0: $c4 $ef $e4
	ld   l, e                                        ; $57e3: $6b
	ld   [hl], d                                     ; $57e4: $72
	inc  de                                          ; $57e5: $13
	inc  e                                           ; $57e6: $1c
	push bc                                          ; $57e7: $c5
	rst  $38                                         ; $57e8: $ff
	sub  [hl]                                        ; $57e9: $96
	ei                                               ; $57ea: $fb
	ld   sp, $8f14                                   ; $57eb: $31 $14 $8f
	res  7, d                                        ; $57ee: $cb $ba
	sbc  e                                           ; $57f0: $9b
	push de                                          ; $57f1: $d5
	ld   d, c                                        ; $57f2: $51
	inc  de                                          ; $57f3: $13
	call z, $ff7a                                    ; $57f4: $cc $7a $ff
	ld   e, d                                        ; $57f7: $5a
	ld   d, e                                        ; $57f8: $53
	ld   h, d                                        ; $57f9: $62
	dec  h                                           ; $57fa: $25
	add  sp, -$61                                    ; $57fb: $e8 $9f
	db   $ec                                         ; $57fd: $ec
	add  l                                           ; $57fe: $85
	ld   l, h                                        ; $57ff: $6c
	ld   de, $c828                                   ; $5800: $11 $28 $c8
	rst  JumpTable                                         ; $5803: $df
	pop  hl                                          ; $5804: $e1
	xor  l                                           ; $5805: $ad
	ld   [hl-], a                                    ; $5806: $32
	ld   [de], a                                     ; $5807: $12
	ld   a, $cc                                      ; $5808: $3e $cc
	jp   hl                                          ; $580a: $e9


	sbc  d                                           ; $580b: $9a
	jp   hl                                          ; $580c: $e9


	inc  [hl]                                        ; $580d: $34
	ld   de, $7dbf                                   ; $580e: $11 $bf $7d
	ret  c                                           ; $5811: $d8

	cp   d                                           ; $5812: $ba
	jp   z, $1151                                    ; $5813: $ca $51 $11

	ld   a, a                                        ; $5816: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5817: $cf
	ld   sp, hl                                      ; $5818: $f9
	ld   h, [hl]                                     ; $5819: $66
	sbc  h                                           ; $581a: $9c
	ld   b, c                                        ; $581b: $41
	dec  d                                           ; $581c: $15
	jp   z, $f5bf                                    ; $581d: $ca $bf $f5

	ld   l, h                                        ; $5820: $6c
	add  h                                           ; $5821: $84
	ld   bc, $a83b                                   ; $5822: $01 $3b $a8
	db   $fd                                         ; $5825: $fd
	sbc  e                                           ; $5826: $9b
	sub  l                                           ; $5827: $95
	ld   d, e                                        ; $5828: $53
	dec  d                                           ; $5829: $15
	cp   e                                           ; $582a: $bb
	ld   c, h                                        ; $582b: $4c
	ld   a, [$63cb]                                  ; $582c: $fa $cb $63
	ld   sp, $fa1c                                   ; $582f: $31 $1c $fa
	ld   a, e                                        ; $5832: $7b
	sub  [hl]                                        ; $5833: $96
	cp   l                                           ; $5834: $bd
	add  a                                           ; $5835: $87
	ld   d, c                                        ; $5836: $51
	inc  e                                           ; $5837: $1c
	jp   hl                                          ; $5838: $e9


	rst  JumpTable                                         ; $5839: $df
	db   $d3                                         ; $583a: $d3
	ld   e, e                                        ; $583b: $5b
	or   l                                           ; $583c: $b5
	ld   de, $792f                                   ; $583d: $11 $2f $79
	ei                                               ; $5840: $fb
	ld   e, l                                        ; $5841: $5d
	rst  $30                                         ; $5842: $f7
	ld   b, c                                        ; $5843: $41
	ld   [de], a                                     ; $5844: $12
	sbc  a                                           ; $5845: $9f
	rst  $28                                         ; $5846: $ef
	call nz, $759a                                   ; $5847: $c4 $9a $75
	ld   b, c                                        ; $584a: $41
	dec  de                                          ; $584b: $1b
	and  l                                           ; $584c: $a5
	rst  $38                                         ; $584d: $ff
	ld   a, [hl-]                                    ; $584e: $3a
	reti                                             ; $584f: $d9


	ld   [hl], c                                     ; $5850: $71
	ld   [de], a                                     ; $5851: $12
	adc  [hl]                                        ; $5852: $8e
	sbc  d                                           ; $5853: $9a

Jump_0b3_5854:
	ld   [$c6ad], a                                  ; $5854: $ea $ad $c6
	ld   d, c                                        ; $5857: $51
	ld   de, $6fff                                   ; $5858: $11 $ff $6f
	rst  $30                                         ; $585b: $f7
	dec  hl                                          ; $585c: $2b
	sbc  b                                           ; $585d: $98
	ld   sp, $aa67                                   ; $585e: $31 $67 $aa
	jp   c, $87df                                    ; $5861: $da $df $87

	ld   d, h                                        ; $5864: $54
	ld   de, $65af                                   ; $5865: $11 $af $65
	db   $fc                                         ; $5868: $fc
	jp   hl                                          ; $5869: $e9


	ld   [hl], a                                     ; $586a: $77
	ld   de, $fa1c                                   ; $586b: $11 $1c $fa
	add  hl, de                                      ; $586e: $19
	db   $fd                                         ; $586f: $fd
	jp   z, $1196                                    ; $5870: $ca $96 $11

	ld   a, l                                        ; $5873: $7d
	sbc  b                                           ; $5874: $98
	db   $fd                                         ; $5875: $fd
	adc  e                                           ; $5876: $8b
	ld   h, a                                        ; $5877: $67
	and  h                                           ; $5878: $a4
	ld   de, $6dad                                   ; $5879: $11 $ad $6d
	ld   sp, hl                                      ; $587c: $f9
	ld   [hl], a                                     ; $587d: $77
	cp   e                                           ; $587e: $bb
	ld   sp, $8b14                                   ; $587f: $31 $14 $8b
	rst  $28                                         ; $5882: $ef
	cp   a                                           ; $5883: $bf
	sub  h                                           ; $5884: $94
	sub  e                                           ; $5885: $93
	ld   de, $a9bd                                   ; $5886: $11 $bd $a9
	call c, $85ac                                    ; $5889: $dc $ac $85
	ld   sp, $fa19                                   ; $588c: $31 $19 $fa
	ld   a, h                                        ; $588f: $7c
	cp   d                                           ; $5890: $ba
	sbc  l                                           ; $5891: $9d
	add  e                                           ; $5892: $83
	ld   de, $c68f                                   ; $5893: $11 $8f $c6
	db   $fd                                         ; $5896: $fd

Call_0b3_5897:
	ld   h, a                                        ; $5897: $67
	db   $dd                                         ; $5898: $dd
	ld   d, c                                        ; $5899: $51
	inc  de                                          ; $589a: $13
	sbc  e                                           ; $589b: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $589c: $cf
	or   [hl]                                        ; $589d: $b6
	xor  e                                           ; $589e: $ab
	xor  c                                           ; $589f: $a9
	ld   de, $a84d                                   ; $58a0: $11 $4d $a8
	db   $fc                                         ; $58a3: $fc
	ld   l, c                                        ; $58a4: $69
	adc  h                                           ; $58a5: $8c
	ld   [hl], c                                     ; $58a6: $71
	add  hl, de                                      ; $58a7: $19
	cp   d                                           ; $58a8: $ba
	adc  h                                           ; $58a9: $8c
	push hl                                          ; $58aa: $e5
	sbc  [hl]                                        ; $58ab: $9e
	or   h                                           ; $58ac: $b4
	ld   de, $864f                                   ; $58ad: $11 $4f $86
	jp   c, $d96c                                    ; $58b0: $da $6c $d9

	add  c                                           ; $58b3: $81
	inc  d                                           ; $58b4: $14
	sbc  l                                           ; $58b5: $9d
	cp   h                                           ; $58b6: $bc
	ret                                              ; $58b7: $c9


	push bc                                          ; $58b8: $c5
	sbc  d                                           ; $58b9: $9a
	ld   de, $9a5a                                   ; $58ba: $11 $5a $9a
	ld   [$f85f], a                                  ; $58bd: $ea $5f $f8
	ld   [hl], c                                     ; $58c0: $71
	ld   de, $bf9e                                   ; $58c1: $11 $9e $bf
	and  c                                           ; $58c4: $a1
	adc  a                                           ; $58c5: $8f
	rst  $20                                         ; $58c6: $e7
	ld   d, c                                        ; $58c7: $51
	rla                                              ; $58c8: $17
	xor  h                                           ; $58c9: $ac
	db   $fc                                         ; $58ca: $fc
	ld   c, b                                        ; $58cb: $48
	call z, $11a4                                    ; $58cc: $cc $a4 $11
	sbc  e                                           ; $58cf: $9b
	sbc  l                                           ; $58d0: $9d
	ld   a, [$cb39]                                  ; $58d1: $fa $39 $cb
	ld   hl, $ca2a                                   ; $58d4: $21 $2a $ca
	cp   l                                           ; $58d7: $bd
	and  e                                           ; $58d8: $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58d9: $cf
	add  c                                           ; $58da: $81
	ld   [de], a                                     ; $58db: $12
	adc  h                                           ; $58dc: $8c
	cp   e                                           ; $58dd: $bb
	push bc                                          ; $58de: $c5
	adc  [hl]                                        ; $58df: $8e
	push hl                                          ; $58e0: $e5
	ld   h, c                                        ; $58e1: $61
	jr   @-$26                                       ; $58e2: $18 $d8

	sbc  a                                           ; $58e4: $9f
	sub  h                                           ; $58e5: $94
	xor  [hl]                                        ; $58e6: $ae
	and  l                                           ; $58e7: $a5
	ld   de, $785b                                   ; $58e8: $11 $5b $78
	cp   $27                                         ; $58eb: $fe $27
	db   $fc                                         ; $58ed: $fc
	ld   b, c                                        ; $58ee: $41
	inc  d                                           ; $58ef: $14
	reti                                             ; $58f0: $d9


	ld   l, a                                        ; $58f1: $6f
	push de                                          ; $58f2: $d5
	ld   l, [hl]                                     ; $58f3: $6e
	or   $11                                         ; $58f4: $f6 $11
	ld   a, d                                        ; $58f6: $7a
	call Call_0b3_5897                               ; $58f7: $cd $97 $58
	rst  $38                                         ; $58fa: $ff
	ld   [hl], e                                     ; $58fb: $73
	ld   de, $8d8c                                   ; $58fc: $11 $8c $8d
	ld   a, [$f53b]                                  ; $58ff: $fa $3b $f5
	ld   de, $c52a                                   ; $5902: $11 $2a $c5
	cp   a                                           ; $5905: $bf
	sub  l                                           ; $5906: $95
	adc  a                                           ; $5907: $8f
	or   e                                           ; $5908: $b3
	ld   de, $d98c                                   ; $5909: $11 $8c $d9
	xor  d                                           ; $590c: $aa
	ld   e, b                                        ; $590d: $58
	rst  $28                                         ; $590e: $ef
	sub  c                                           ; $590f: $91
	ld   de, $b8cd                                   ; $5910: $11 $cd $b8
	ld   sp, hl                                      ; $5913: $f9
	dec  e                                           ; $5914: $1d
	ld   sp, hl                                      ; $5915: $f9
	ld   de, $893a                                   ; $5916: $11 $3a $89
	ei                                               ; $5919: $fb
	ld   d, l                                        ; $591a: $55
	rst  $38                                         ; $591b: $ff
	sub  c                                           ; $591c: $91
	ld   de, $bd69                                   ; $591d: $11 $69 $bd

jr_0b3_5920:
	reti                                             ; $5920: $d9


	jr   z, jr_0b3_5920                              ; $5921: $28 $fd

	ld   [hl], e                                     ; $5923: $73
	ld   de, wPostPrologueScriptEngineGameSubstate                                   ; $5924: $11 $9b $cc
	sub  $1c                                         ; $5927: $d6 $1c
	ei                                               ; $5929: $fb
	ld   h, c                                        ; $592a: $61
	ld   d, $b9                                      ; $592b: $16 $b9
	xor  a                                           ; $592d: $af
	push bc                                          ; $592e: $c5
	ld   e, a                                        ; $592f: $5f
	db   $e4                                         ; $5930: $e4
	ld   de, $bb5d                                   ; $5931: $11 $5d $bb
	cp   d                                           ; $5934: $ba
	ld   b, l                                        ; $5935: $45
	rst  $28                                         ; $5936: $ef
	and  d                                           ; $5937: $a2
	ld   de, $cc5b                                   ; $5938: $11 $5b $cc
	ret  z                                           ; $593b: $c8

	ld   h, a                                        ; $593c: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $593d: $cf
	add  d                                           ; $593e: $82
	ld   de, $6c98                                   ; $593f: $11 $98 $6c
	add  sp, -$67                                    ; $5942: $e8 $99
	db   $db                                         ; $5944: $db
	ld   d, d                                        ; $5945: $52
	inc  d                                           ; $5946: $14
	ret  c                                           ; $5947: $d8

	ld   a, l                                        ; $5948: $7d
	and  $5b                                         ; $5949: $e6 $5b
	ld   a, [$1631]                                  ; $594b: $fa $31 $16
	xor  d                                           ; $594e: $aa
	xor  e                                           ; $594f: $ab
	sub  [hl]                                        ; $5950: $96
	cp   a                                           ; $5951: $bf
	ld   hl, sp+$11                                  ; $5952: $f8 $11
	ld   d, $fc                                      ; $5954: $16 $fc
	sbc  d                                           ; $5956: $9a
	add  [hl]                                        ; $5957: $86
	ld   a, l                                        ; $5958: $7d
	rst  $30                                         ; $5959: $f7
	ld   sp, $9617                                   ; $595a: $31 $17 $96
	sbc  [hl]                                        ; $595d: $9e
	and  a                                           ; $595e: $a7
	xor  [hl]                                        ; $595f: $ae
	or   h                                           ; $5960: $b4
	ld   sp, $d72a                                   ; $5961: $31 $2a $d7
	ld   l, h                                        ; $5964: $6c
	or   a                                           ; $5965: $b7
	sbc  [hl]                                        ; $5966: $9e
	add  $11                                         ; $5967: $c6 $11
	ld   a, [hl-]                                    ; $5969: $3a
	rst  $10                                         ; $596a: $d7
	adc  h                                           ; $596b: $8c
	or   l                                           ; $596c: $b5
	sbc  [hl]                                        ; $596d: $9e
	or   a                                           ; $596e: $b7
	ld   [hl-], a                                    ; $596f: $32
	daa                                              ; $5970: $27
	cp   c                                           ; $5971: $b9
	adc  d                                           ; $5972: $8a
	or   a                                           ; $5973: $b7
	ld   a, e                                        ; $5974: $7b
	rst  $20                                         ; $5975: $e7
	ld   hl, $c83a                                   ; $5976: $21 $3a $c8
	ld   a, b                                        ; $5979: $78
	and  a                                           ; $597a: $a7
	adc  h                                           ; $597b: $8c
	or   a                                           ; $597c: $b7
	ld   [hl-], a                                    ; $597d: $32
	add  hl, sp                                      ; $597e: $39
	ret                                              ; $597f: $c9


	ld   a, c                                        ; $5980: $79
	sbc  c                                           ; $5981: $99
	xor  d                                           ; $5982: $aa
	cp   c                                           ; $5983: $b9
	ld   d, h                                        ; $5984: $54
	ld   [hl], $ba                                   ; $5985: $36 $ba
	ld   a, b                                        ; $5987: $78
	xor  c                                           ; $5988: $a9
	adc  b                                           ; $5989: $88
	cp   c                                           ; $598a: $b9
	ld   h, l                                        ; $598b: $65
	ld   d, [hl]                                     ; $598c: $56
	ld   a, c                                        ; $598d: $79
	xor  c                                           ; $598e: $a9
	adc  c                                           ; $598f: $89
	xor  d                                           ; $5990: $aa
	xor  b                                           ; $5991: $a8
	halt                                             ; $5992: $76
	inc  [hl]                                        ; $5993: $34
	sbc  d                                           ; $5994: $9a
	sbc  b                                           ; $5995: $98
	sbc  c                                           ; $5996: $99
	add  a                                           ; $5997: $87
	sbc  e                                           ; $5998: $9b
	sub  a                                           ; $5999: $97
	ld   h, l                                        ; $599a: $65
	ld   e, d                                        ; $599b: $5a
	sbc  b                                           ; $599c: $98
	add  a                                           ; $599d: $87
	ld   a, c                                        ; $599e: $79
	cp   d                                           ; $599f: $ba
	sub  [hl]                                        ; $59a0: $96
	ld   d, l                                        ; $59a1: $55
	ld   l, c                                        ; $59a2: $69
	cp   c                                           ; $59a3: $b9
	halt                                             ; $59a4: $76
	adc  d                                           ; $59a5: $8a
	adc  b                                           ; $59a6: $88
	xor  c                                           ; $59a7: $a9
	ld   [hl], l                                     ; $59a8: $75
	ld   l, b                                        ; $59a9: $68
	sub  a                                           ; $59aa: $97
	adc  c                                           ; $59ab: $89
	sbc  b                                           ; $59ac: $98
	adc  c                                           ; $59ad: $89
	adc  b                                           ; $59ae: $88
	ld   [hl], a                                     ; $59af: $77
	sub  a                                           ; $59b0: $97
	ld   [hl], a                                     ; $59b1: $77
	sbc  b                                           ; $59b2: $98
	sbc  d                                           ; $59b3: $9a
	and  a                                           ; $59b4: $a7
	ld   [hl], a                                     ; $59b5: $77
	adc  c                                           ; $59b6: $89
	halt                                             ; $59b7: $76
	ld   a, b                                        ; $59b8: $78
	sbc  b                                           ; $59b9: $98
	ld   a, b                                        ; $59ba: $78
	sbc  b                                           ; $59bb: $98
	adc  c                                           ; $59bc: $89
	add  a                                           ; $59bd: $87
	ld   d, a                                        ; $59be: $57
	sbc  b                                           ; $59bf: $98
	adc  b                                           ; $59c0: $88
	add  a                                           ; $59c1: $87
	ld   a, b                                        ; $59c2: $78
	sbc  c                                           ; $59c3: $99
	sbc  b                                           ; $59c4: $98
	ld   [hl], a                                     ; $59c5: $77
	ld   h, [hl]                                     ; $59c6: $66
	adc  d                                           ; $59c7: $8a
	sbc  b                                           ; $59c8: $98
	ld   a, b                                        ; $59c9: $78
	sbc  b                                           ; $59ca: $98
	adc  b                                           ; $59cb: $88
	add  a                                           ; $59cc: $87
	ld   h, a                                        ; $59cd: $67
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	sbc  b                                           ; $59d0: $98
	adc  b                                           ; $59d1: $88
	sub  a                                           ; $59d2: $97
	ld   [hl], a                                     ; $59d3: $77
	ld   a, b                                        ; $59d4: $78
	ld   a, b                                        ; $59d5: $78
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	sbc  c                                           ; $59d8: $99
	sub  a                                           ; $59d9: $97
	adc  c                                           ; $59da: $89
	sbc  b                                           ; $59db: $98
	add  a                                           ; $59dc: $87
	ld   [hl], a                                     ; $59dd: $77
	adc  c                                           ; $59de: $89
	adc  b                                           ; $59df: $88
	adc  c                                           ; $59e0: $89
	ld   [hl], a                                     ; $59e1: $77
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	sbc  c                                           ; $59e4: $99
	adc  b                                           ; $59e5: $88
	ld   a, b                                        ; $59e6: $78
	ld   [hl], a                                     ; $59e7: $77
	sbc  c                                           ; $59e8: $99
	adc  c                                           ; $59e9: $89
	add  a                                           ; $59ea: $87
	ld   [hl], a                                     ; $59eb: $77
	sbc  b                                           ; $59ec: $98
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	ld   [hl], a                                     ; $59ef: $77
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	ld   [hl], a                                     ; $59f3: $77
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	sbc  c                                           ; $59f6: $99
	add  a                                           ; $59f7: $87
	ld   a, c                                        ; $59f8: $79
	adc  b                                           ; $59f9: $88
	adc  c                                           ; $59fa: $89
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

Call_0b3_5a98:
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

Call_0b3_5c41:
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
	add  a                                           ; $5f5d: $87
	adc  b                                           ; $5f5e: $88
	adc  c                                           ; $5f5f: $89
	sbc  b                                           ; $5f60: $98
	adc  b                                           ; $5f61: $88
	adc  b                                           ; $5f62: $88
	adc  b                                           ; $5f63: $88
	add  a                                           ; $5f64: $87
	ld   [hl], a                                     ; $5f65: $77
	adc  b                                           ; $5f66: $88
	adc  c                                           ; $5f67: $89
	sbc  b                                           ; $5f68: $98
	adc  b                                           ; $5f69: $88
	adc  c                                           ; $5f6a: $89
	adc  b                                           ; $5f6b: $88
	ld   [hl], a                                     ; $5f6c: $77
	ld   [hl], a                                     ; $5f6d: $77
	adc  b                                           ; $5f6e: $88
	sbc  c                                           ; $5f6f: $99
	adc  b                                           ; $5f70: $88
	adc  c                                           ; $5f71: $89
	sbc  c                                           ; $5f72: $99
	add  a                                           ; $5f73: $87
	ld   [hl], a                                     ; $5f74: $77
	ld   a, b                                        ; $5f75: $78
	adc  c                                           ; $5f76: $89
	sbc  b                                           ; $5f77: $98
	adc  b                                           ; $5f78: $88
	sbc  b                                           ; $5f79: $98
	sbc  b                                           ; $5f7a: $98
	ld   [hl], a                                     ; $5f7b: $77
	ld   [hl], a                                     ; $5f7c: $77
	ld   a, b                                        ; $5f7d: $78
	sbc  c                                           ; $5f7e: $99
	adc  b                                           ; $5f7f: $88
	adc  c                                           ; $5f80: $89
	sbc  c                                           ; $5f81: $99
	add  a                                           ; $5f82: $87
	ld   [hl], a                                     ; $5f83: $77
	ld   [hl], a                                     ; $5f84: $77
	adc  c                                           ; $5f85: $89
	adc  b                                           ; $5f86: $88
	adc  b                                           ; $5f87: $88
	sbc  c                                           ; $5f88: $99
	sbc  b                                           ; $5f89: $98
	ld   [hl], a                                     ; $5f8a: $77
	ld   [hl], a                                     ; $5f8b: $77
	ld   a, b                                        ; $5f8c: $78
	adc  c                                           ; $5f8d: $89
	adc  b                                           ; $5f8e: $88
	adc  c                                           ; $5f8f: $89
	sbc  c                                           ; $5f90: $99
	add  a                                           ; $5f91: $87
	ld   [hl], a                                     ; $5f92: $77
	ld   a, b                                        ; $5f93: $78
	sbc  b                                           ; $5f94: $98
	sbc  b                                           ; $5f95: $98
	adc  b                                           ; $5f96: $88
	sbc  c                                           ; $5f97: $99
	sbc  b                                           ; $5f98: $98
	ld   [hl], a                                     ; $5f99: $77
	ld   [hl], a                                     ; $5f9a: $77
	ld   a, b                                        ; $5f9b: $78
	sbc  b                                           ; $5f9c: $98
	adc  b                                           ; $5f9d: $88
	adc  c                                           ; $5f9e: $89
	adc  c                                           ; $5f9f: $89
	add  a                                           ; $5fa0: $87
	ld   [hl], a                                     ; $5fa1: $77
	ld   [hl], a                                     ; $5fa2: $77
	adc  c                                           ; $5fa3: $89
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	sbc  b                                           ; $5fa6: $98
	sbc  b                                           ; $5fa7: $98
	ld   [hl], a                                     ; $5fa8: $77
	ld   [hl], a                                     ; $5fa9: $77
	ld   a, b                                        ; $5faa: $78
	adc  c                                           ; $5fab: $89
	sbc  b                                           ; $5fac: $98
	ld   a, b                                        ; $5fad: $78
	adc  b                                           ; $5fae: $88
	sub  a                                           ; $5faf: $97
	ld   [hl], a                                     ; $5fb0: $77
	ld   [hl], a                                     ; $5fb1: $77
	adc  b                                           ; $5fb2: $88
	sbc  b                                           ; $5fb3: $98
	add  a                                           ; $5fb4: $87
	adc  b                                           ; $5fb5: $88
	sbc  c                                           ; $5fb6: $99
	ld   [hl], a                                     ; $5fb7: $77
	ld   [hl], a                                     ; $5fb8: $77
	ld   [hl], a                                     ; $5fb9: $77
	sbc  c                                           ; $5fba: $99
	adc  b                                           ; $5fbb: $88
	adc  b                                           ; $5fbc: $88
	adc  c                                           ; $5fbd: $89
	adc  b                                           ; $5fbe: $88
	ld   [hl], a                                     ; $5fbf: $77
	ld   [hl], a                                     ; $5fc0: $77
	ld   a, b                                        ; $5fc1: $78
	adc  c                                           ; $5fc2: $89
	sbc  b                                           ; $5fc3: $98
	adc  c                                           ; $5fc4: $89
	sbc  c                                           ; $5fc5: $99
	add  a                                           ; $5fc6: $87
	ld   [hl], a                                     ; $5fc7: $77
	ld   [hl], a                                     ; $5fc8: $77
	ld   a, c                                        ; $5fc9: $79
	sbc  b                                           ; $5fca: $98
	add  a                                           ; $5fcb: $87
	adc  c                                           ; $5fcc: $89
	xor  c                                           ; $5fcd: $a9
	add  a                                           ; $5fce: $87
	ld   [hl], a                                     ; $5fcf: $77
	ld   [hl], a                                     ; $5fd0: $77
	adc  b                                           ; $5fd1: $88
	sbc  c                                           ; $5fd2: $99
	adc  b                                           ; $5fd3: $88
	sbc  d                                           ; $5fd4: $9a
	xor  b                                           ; $5fd5: $a8
	ld   [hl], a                                     ; $5fd6: $77
	ld   h, a                                        ; $5fd7: $67
	ld   [hl], a                                     ; $5fd8: $77
	sbc  c                                           ; $5fd9: $99
	adc  b                                           ; $5fda: $88
	ld   a, b                                        ; $5fdb: $78
	sbc  c                                           ; $5fdc: $99
	sbc  b                                           ; $5fdd: $98
	ld   [hl], a                                     ; $5fde: $77
	ld   h, a                                        ; $5fdf: $67
	ld   a, b                                        ; $5fe0: $78
	adc  c                                           ; $5fe1: $89
	sbc  b                                           ; $5fe2: $98
	adc  c                                           ; $5fe3: $89
	xor  c                                           ; $5fe4: $a9
	sbc  b                                           ; $5fe5: $98
	halt                                             ; $5fe6: $76
	ld   [hl], a                                     ; $5fe7: $77
	ld   a, b                                        ; $5fe8: $78
	adc  b                                           ; $5fe9: $88
	adc  b                                           ; $5fea: $88
	adc  c                                           ; $5feb: $89
	sbc  c                                           ; $5fec: $99
	sub  a                                           ; $5fed: $97
	ld   h, [hl]                                     ; $5fee: $66
	ld   [hl], a                                     ; $5fef: $77
	adc  c                                           ; $5ff0: $89
	sbc  b                                           ; $5ff1: $98
	adc  b                                           ; $5ff2: $88
	adc  d                                           ; $5ff3: $8a
	xor  c                                           ; $5ff4: $a9
	add  a                                           ; $5ff5: $87
	ld   h, [hl]                                     ; $5ff6: $66
	ld   [hl], a                                     ; $5ff7: $77
	adc  b                                           ; $5ff8: $88

Call_0b3_5ff9:
	sbc  b                                           ; $5ff9: $98
	adc  b                                           ; $5ffa: $88
	adc  d                                           ; $5ffb: $8a
	sbc  b                                           ; $5ffc: $98
	halt                                             ; $5ffd: $76
	ld   h, [hl]                                     ; $5ffe: $66
	ld   [hl], a                                     ; $5fff: $77
	adc  c                                           ; $6000: $89
	sbc  b                                           ; $6001: $98
	adc  b                                           ; $6002: $88
	xor  d                                           ; $6003: $aa
	xor  b                                           ; $6004: $a8
	halt                                             ; $6005: $76
	ld   h, a                                        ; $6006: $67
	ld   a, b                                        ; $6007: $78
	adc  c                                           ; $6008: $89
	adc  b                                           ; $6009: $88
	adc  c                                           ; $600a: $89
	xor  c                                           ; $600b: $a9
	add  a                                           ; $600c: $87
	ld   h, [hl]                                     ; $600d: $66
	ld   [hl], a                                     ; $600e: $77
	ld   a, b                                        ; $600f: $78
	adc  b                                           ; $6010: $88
	adc  b                                           ; $6011: $88
	adc  c                                           ; $6012: $89
	xor  d                                           ; $6013: $aa
	sub  a                                           ; $6014: $97
	ld   h, [hl]                                     ; $6015: $66
	ld   [hl], a                                     ; $6016: $77
	adc  c                                           ; $6017: $89
	adc  b                                           ; $6018: $88
	adc  b                                           ; $6019: $88
	adc  d                                           ; $601a: $8a
	xor  c                                           ; $601b: $a9
	add  [hl]                                        ; $601c: $86
	ld   h, [hl]                                     ; $601d: $66
	ld   [hl], a                                     ; $601e: $77
	adc  b                                           ; $601f: $88
	sbc  c                                           ; $6020: $99
	adc  b                                           ; $6021: $88
	sbc  d                                           ; $6022: $9a
	sbc  b                                           ; $6023: $98
	halt                                             ; $6024: $76
	ld   h, [hl]                                     ; $6025: $66
	ld   a, b                                        ; $6026: $78
	sbc  b                                           ; $6027: $98
	sbc  b                                           ; $6028: $98
	adc  c                                           ; $6029: $89
	xor  d                                           ; $602a: $aa
	sbc  b                                           ; $602b: $98
	ld   h, [hl]                                     ; $602c: $66
	ld   h, a                                        ; $602d: $67
	ld   [hl], a                                     ; $602e: $77
	sbc  b                                           ; $602f: $98
	sbc  b                                           ; $6030: $98
	adc  c                                           ; $6031: $89
	xor  d                                           ; $6032: $aa
	sub  a                                           ; $6033: $97
	ld   h, [hl]                                     ; $6034: $66
	ld   h, a                                        ; $6035: $67
	adc  b                                           ; $6036: $88
	adc  c                                           ; $6037: $89
	adc  b                                           ; $6038: $88
	adc  c                                           ; $6039: $89
	xor  d                                           ; $603a: $aa
	add  [hl]                                        ; $603b: $86
	ld   h, [hl]                                     ; $603c: $66
	ld   [hl], a                                     ; $603d: $77
	adc  c                                           ; $603e: $89
	adc  c                                           ; $603f: $89
	adc  b                                           ; $6040: $88
	sbc  d                                           ; $6041: $9a
	xor  c                                           ; $6042: $a9
	halt                                             ; $6043: $76
	ld   h, [hl]                                     ; $6044: $66
	ld   [hl], a                                     ; $6045: $77
	adc  c                                           ; $6046: $89
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	xor  d                                           ; $6049: $aa
	sbc  b                                           ; $604a: $98
	halt                                             ; $604b: $76
	ld   h, [hl]                                     ; $604c: $66
	ld   [hl], a                                     ; $604d: $77
	sbc  c                                           ; $604e: $99
	adc  b                                           ; $604f: $88
	adc  c                                           ; $6050: $89
	sbc  d                                           ; $6051: $9a
	xor  b                                           ; $6052: $a8
	ld   h, [hl]                                     ; $6053: $66
	ld   h, a                                        ; $6054: $67
	ld   a, b                                        ; $6055: $78
	adc  b                                           ; $6056: $88
	sbc  b                                           ; $6057: $98
	adc  d                                           ; $6058: $8a
	xor  d                                           ; $6059: $aa
	sub  a                                           ; $605a: $97
	ld   h, [hl]                                     ; $605b: $66
	ld   h, a                                        ; $605c: $67
	ld   a, b                                        ; $605d: $78
	sbc  b                                           ; $605e: $98
	adc  b                                           ; $605f: $88
	sbc  d                                           ; $6060: $9a
	cp   d                                           ; $6061: $ba
	add  [hl]                                        ; $6062: $86
	ld   h, [hl]                                     ; $6063: $66
	ld   h, a                                        ; $6064: $67
	adc  c                                           ; $6065: $89
	sbc  c                                           ; $6066: $99
	adc  b                                           ; $6067: $88
	sbc  d                                           ; $6068: $9a
	cp   d                                           ; $6069: $ba
	halt                                             ; $606a: $76
	ld   h, [hl]                                     ; $606b: $66
	ld   [hl], a                                     ; $606c: $77
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	xor  e                                           ; $6070: $ab
	xor  b                                           ; $6071: $a8
	halt                                             ; $6072: $76
	ld   h, [hl]                                     ; $6073: $66
	ld   [hl], a                                     ; $6074: $77
	sbc  c                                           ; $6075: $99
	sbc  b                                           ; $6076: $98
	ld   a, c                                        ; $6077: $79
	xor  e                                           ; $6078: $ab
	sbc  b                                           ; $6079: $98
	ld   h, [hl]                                     ; $607a: $66
	ld   h, a                                        ; $607b: $67
	ld   a, b                                        ; $607c: $78
	adc  b                                           ; $607d: $88
	sbc  b                                           ; $607e: $98
	adc  d                                           ; $607f: $8a
	cp   d                                           ; $6080: $ba
	sub  a                                           ; $6081: $97
	ld   h, [hl]                                     ; $6082: $66
	ld   h, a                                        ; $6083: $67
	ld   a, b                                        ; $6084: $78
	sbc  c                                           ; $6085: $99
	add  a                                           ; $6086: $87
	sbc  d                                           ; $6087: $9a
	xor  d                                           ; $6088: $aa
	add  [hl]                                        ; $6089: $86
	ld   h, [hl]                                     ; $608a: $66
	ld   [hl], a                                     ; $608b: $77
	ld   a, c                                        ; $608c: $79
	sbc  b                                           ; $608d: $98
	add  a                                           ; $608e: $87
	sbc  d                                           ; $608f: $9a
	cp   d                                           ; $6090: $ba
	halt                                             ; $6091: $76
	ld   h, [hl]                                     ; $6092: $66
	ld   [hl], a                                     ; $6093: $77
	adc  b                                           ; $6094: $88
	sbc  b                                           ; $6095: $98
	ld   a, b                                        ; $6096: $78
	sbc  d                                           ; $6097: $9a
	xor  b                                           ; $6098: $a8
	ld   h, [hl]                                     ; $6099: $66
	ld   h, [hl]                                     ; $609a: $66
	ld   [hl], a                                     ; $609b: $77
	adc  c                                           ; $609c: $89
	adc  b                                           ; $609d: $88
	ld   a, c                                        ; $609e: $79
	xor  d                                           ; $609f: $aa
	xor  b                                           ; $60a0: $a8
	ld   h, [hl]                                     ; $60a1: $66
	ld   h, a                                        ; $60a2: $67
	ld   [hl], a                                     ; $60a3: $77
	adc  c                                           ; $60a4: $89
	sub  a                                           ; $60a5: $97
	ld   a, d                                        ; $60a6: $7a
	cp   d                                           ; $60a7: $ba
	sub  a                                           ; $60a8: $97
	ld   h, [hl]                                     ; $60a9: $66
	ld   h, a                                        ; $60aa: $67
	ld   a, b                                        ; $60ab: $78
	sbc  b                                           ; $60ac: $98
	add  a                                           ; $60ad: $87
	adc  d                                           ; $60ae: $8a
	cp   e                                           ; $60af: $bb
	sub  [hl]                                        ; $60b0: $96
	ld   h, [hl]                                     ; $60b1: $66
	ld   [hl], a                                     ; $60b2: $77
	ld   a, c                                        ; $60b3: $79
	adc  c                                           ; $60b4: $89
	add  a                                           ; $60b5: $87
	sbc  d                                           ; $60b6: $9a
	cp   c                                           ; $60b7: $b9
	halt                                             ; $60b8: $76
	ld   h, [hl]                                     ; $60b9: $66
	ld   [hl], a                                     ; $60ba: $77
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	ld   a, b                                        ; $60bd: $78
	sbc  e                                           ; $60be: $9b
	xor  c                                           ; $60bf: $a9
	ld   h, [hl]                                     ; $60c0: $66
	ld   h, a                                        ; $60c1: $67
	ld   [hl], a                                     ; $60c2: $77
	adc  c                                           ; $60c3: $89
	adc  b                                           ; $60c4: $88
	ld   a, b                                        ; $60c5: $78
	xor  e                                           ; $60c6: $ab
	xor  b                                           ; $60c7: $a8
	ld   h, [hl]                                     ; $60c8: $66
	ld   h, a                                        ; $60c9: $67
	ld   a, b                                        ; $60ca: $78
	adc  b                                           ; $60cb: $88
	add  a                                           ; $60cc: $87
	ld   a, d                                        ; $60cd: $7a
	cp   e                                           ; $60ce: $bb
	sub  [hl]                                        ; $60cf: $96
	ld   h, [hl]                                     ; $60d0: $66
	ld   [hl], a                                     ; $60d1: $77
	ld   a, b                                        ; $60d2: $78
	sbc  b                                           ; $60d3: $98
	add  a                                           ; $60d4: $87
	adc  d                                           ; $60d5: $8a
	cp   e                                           ; $60d6: $bb
	sub  [hl]                                        ; $60d7: $96
	ld   h, [hl]                                     ; $60d8: $66
	ld   [hl], a                                     ; $60d9: $77
	adc  b                                           ; $60da: $88
	sbc  b                                           ; $60db: $98
	ld   [hl], a                                     ; $60dc: $77
	adc  d                                           ; $60dd: $8a
	cp   c                                           ; $60de: $b9
	halt                                             ; $60df: $76
	ld   h, [hl]                                     ; $60e0: $66
	ld   [hl], a                                     ; $60e1: $77
	adc  c                                           ; $60e2: $89
	sbc  b                                           ; $60e3: $98
	halt                                             ; $60e4: $76
	adc  d                                           ; $60e5: $8a
	xor  c                                           ; $60e6: $a9
	halt                                             ; $60e7: $76
	ld   h, a                                        ; $60e8: $67
	adc  d                                           ; $60e9: $8a
	xor  d                                           ; $60ea: $aa
	sub  [hl]                                        ; $60eb: $96
	ld   d, l                                        ; $60ec: $55
	ld   a, c                                        ; $60ed: $79
	adc  b                                           ; $60ee: $88
	ld   [hl], a                                     ; $60ef: $77
	adc  c                                           ; $60f0: $89
	xor  h                                           ; $60f1: $ac
	jp   z, $3485                                    ; $60f2: $ca $85 $34

	ld   h, a                                        ; $60f5: $67
	ld   [hl], a                                     ; $60f6: $77
	ld   a, c                                        ; $60f7: $79
	xor  e                                           ; $60f8: $ab
	db   $dd                                         ; $60f9: $dd
	jp   z, $2374                                    ; $60fa: $ca $74 $23

	ld   d, [hl]                                     ; $60fd: $56
	ld   [hl], a                                     ; $60fe: $77
	adc  e                                           ; $60ff: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6100: $cf
	db   $fc                                         ; $6101: $fc
	or   [hl]                                        ; $6102: $b6
	ld   de, $ad14                                   ; $6103: $11 $14 $ad
	call c, $bafe                                    ; $6106: $dc $fe $ba
	xor  d                                           ; $6109: $aa
	add  e                                           ; $610a: $83
	ld   de, $df2b                                   ; $610b: $11 $2b $df
	xor  h                                           ; $610e: $ac
	db   $ec                                         ; $610f: $ec
	xor  l                                           ; $6110: $ad
	jp   c, $1151                                    ; $6111: $da $51 $11

	xor  a                                           ; $6114: $af
	cp   $be                                         ; $6115: $fe $be
	jp   z, $a6cd                                    ; $6117: $ca $cd $a6

	ld   de, $ff17                                   ; $611a: $11 $17 $ff
	ret  c                                           ; $611d: $d8

	db   $dd                                         ; $611e: $dd
	xor  h                                           ; $611f: $ac
	db   $ec                                         ; $6120: $ec
	ld   [hl], h                                     ; $6121: $74
	ld   de, $ff1b                                   ; $6122: $11 $1b $ff
	cp   b                                           ; $6125: $b8
	db   $fd                                         ; $6126: $fd
	xor  e                                           ; $6127: $ab
	jp   z, $1151                                    ; $6128: $ca $51 $11

	ld   l, a                                        ; $612b: $6f
	db   $fd                                         ; $612c: $fd
	ld   a, c                                        ; $612d: $79
	ei                                               ; $612e: $fb
	xor  $c7                                         ; $612f: $ee $c7
	ld   sp, $9f11                                   ; $6131: $31 $11 $9f
	ld   sp, hl                                      ; $6134: $f9
	ld   a, h                                        ; $6135: $7c
	ei                                               ; $6136: $fb
	sbc  $c5                                         ; $6137: $de $c5
	ld   sp, $cf11                                   ; $6139: $31 $11 $cf
	ld   [$fb6e], a                                  ; $613c: $ea $6e $fb
	call c, $21a5                                    ; $613f: $dc $a5 $21
	ld   de, $c7ff                                   ; $6142: $11 $ff $c7
	ld   a, a                                        ; $6145: $7f
	db   $db                                         ; $6146: $db
	db   $ec                                         ; $6147: $ec
	add  l                                           ; $6148: $85
	ld   de, rAUD1LEN                                   ; $6149: $11 $11 $ff
	and  [hl]                                        ; $614c: $a6
	sbc  a                                           ; $614d: $9f
	set  3, h                                        ; $614e: $cb $dc
	add  h                                           ; $6150: $84
	ld   de, rAUD1LEN                                   ; $6151: $11 $11 $ff
	rst  ToBoot                                         ; $6154: $c7
	adc  a                                           ; $6155: $8f
	jp   c, $85dd                                    ; $6156: $da $dd $85

	ld   hl, rAUD1LEN                                   ; $6159: $21 $11 $ff
	ret  c                                           ; $615c: $d8

	adc  a                                           ; $615d: $8f
	jp   z, $85cc                                    ; $615e: $ca $cc $85

	ld   hl, rAUD1LEN                                   ; $6161: $21 $11 $ff
	rst  $10                                         ; $6164: $d7
	adc  a                                           ; $6165: $8f
	set  3, h                                        ; $6166: $cb $dc
	and  [hl]                                        ; $6168: $a6
	ld   b, c                                        ; $6169: $41
	ld   de, $fbbf                                   ; $616a: $11 $bf $fb
	ld   l, [hl]                                     ; $616d: $6e
	ld   sp, hl                                      ; $616e: $f9
	cp   h                                           ; $616f: $bc
	rst  ToBoot                                         ; $6170: $c7
	ld   b, c                                        ; $6171: $41
	ld   de, $fb6f                                   ; $6172: $11 $6f $fb
	ld   e, h                                        ; $6175: $5c
	ld   a, [$c8bc]                                  ; $6176: $fa $bc $c8
	ld   d, c                                        ; $6179: $51
	ld   de, $fd0f                                   ; $617a: $11 $0f $fd
	ld   l, c                                        ; $617d: $69
	ei                                               ; $617e: $fb
	xor  l                                           ; $617f: $ad
	jp   hl                                          ; $6180: $e9


	ld   h, e                                        ; $6181: $63
	ld   de, $ff1e                                   ; $6182: $11 $1e $ff
	sub  [hl]                                        ; $6185: $96
	db   $fd                                         ; $6186: $fd
	adc  l                                           ; $6187: $8d
	db   $eb                                         ; $6188: $eb
	ld   h, h                                        ; $6189: $64
	ld   de, rAUD1ENV                                   ; $618a: $11 $12 $ff
	add  $af                                         ; $618d: $c6 $af
	sbc  e                                           ; $618f: $9b
	db   $dd                                         ; $6190: $dd
	and  h                                           ; $6191: $a4
	ld   hl, $df11                                   ; $6192: $21 $11 $df
	ld   a, [$c96e]                                  ; $6195: $fa $6e $c9
	call Call_0b3_51d7                               ; $6198: $cd $d7 $51
	ld   de, $fd2f                                   ; $619b: $11 $2f $fd
	ld   e, e                                        ; $619e: $5b
	jp   hl                                          ; $619f: $e9


	cp   [hl]                                        ; $61a0: $be
	ld   hl, sp+$54                                  ; $61a1: $f8 $54
	ld   de, $ff1e                                   ; $61a3: $11 $1e $ff
	sub  [hl]                                        ; $61a6: $96
	ld   [$dc9d], a                                  ; $61a7: $ea $9d $dc
	ld   [hl], h                                     ; $61aa: $74
	ld   hl, rAUD1LEN                                   ; $61ab: $21 $11 $ff
	sub  $af                                         ; $61ae: $d6 $af
	ld   a, h                                        ; $61b0: $7c
	sbc  $b6                                         ; $61b1: $de $b6
	ld   d, c                                        ; $61b3: $51
	ld   de, $f99f                                   ; $61b4: $11 $9f $f9
	ld   l, l                                        ; $61b7: $6d
	cp   c                                           ; $61b8: $b9
	call $54e9                                       ; $61b9: $cd $e9 $54
	ld   de, $fe1f                                   ; $61bc: $11 $1f $fe
	ld   a, b                                        ; $61bf: $78
	add  sp, -$53                                    ; $61c0: $e8 $ad
	db   $fc                                         ; $61c2: $fc
	ld   h, l                                        ; $61c3: $65
	ld   sp, rAUD1LEN                                   ; $61c4: $31 $11 $ff
	add  $bd                                         ; $61c7: $c6 $bd
	ld   a, e                                        ; $61c9: $7b
	cp   $a5                                         ; $61ca: $fe $a5
	ld   d, c                                        ; $61cc: $51
	ld   de, $f97f                                   ; $61cd: $11 $7f $f9
	ld   l, l                                        ; $61d0: $6d
	and  a                                           ; $61d1: $a7
	sbc  $e6                                         ; $61d2: $de $e6
	ld   d, a                                        ; $61d4: $57
	ld   de, $ff1e                                   ; $61d5: $11 $1e $ff
	ld   [hl], a                                     ; $61d8: $77
	ld   hl, sp+$7e                                  ; $61d9: $f8 $7e
	db   $fd                                         ; $61db: $fd
	ld   d, [hl]                                     ; $61dc: $56
	ld   h, c                                        ; $61dd: $61
	ld   de, $c6ff                                   ; $61de: $11 $ff $c6
	xor  [hl]                                        ; $61e1: $ae
	ld   l, c                                        ; $61e2: $69
	rst  $28                                         ; $61e3: $ef
	or   h                                           ; $61e4: $b4
	add  [hl]                                        ; $61e5: $86
	ld   de, $fa1f                                   ; $61e6: $11 $1f $fa
	ld   e, e                                        ; $61e9: $5b
	push de                                          ; $61ea: $d5
	xor  [hl]                                        ; $61eb: $ae
	ld   sp, hl                                      ; $61ec: $f9
	ld   c, c                                        ; $61ed: $49
	ld   sp, $ff19                                   ; $61ee: $31 $19 $ff
	halt                                             ; $61f1: $76
	jp   hl                                          ; $61f2: $e9


	ld   e, [hl]                                     ; $61f3: $5e
	cp   $56                                         ; $61f4: $fe $56
	sub  c                                           ; $61f6: $91
	ld   de, $f6ef                                   ; $61f7: $11 $ef $f6
	adc  a                                           ; $61fa: $8f
	ld   [hl], h                                     ; $61fb: $74
	rst  $28                                         ; $61fc: $ef
	call nc, $1179                                   ; $61fd: $d4 $79 $11
	rra                                              ; $6200: $1f
	db   $fd                                         ; $6201: $fd
	ld   e, d                                        ; $6202: $5a
	push hl                                          ; $6203: $e5
	ld   a, a                                        ; $6204: $7f
	ei                                               ; $6205: $fb
	add  hl, sp                                      ; $6206: $39
	ld   [hl], c                                     ; $6207: $71
	ld   de, $95ff                                   ; $6208: $11 $ff $95
	sbc  $48                                         ; $620b: $de $48
	rst  $38                                         ; $620d: $ff
	ld   [hl], h                                     ; $620e: $74
	or   h                                           ; $620f: $b4
	ld   de, $f74f                                   ; $6210: $11 $4f $f7
	ld   a, a                                        ; $6213: $7f
	or   e                                           ; $6214: $b3
	cp   a                                           ; $6215: $bf
	push af                                          ; $6216: $f5
	ld   l, d                                        ; $6217: $6a
	ld   hl, $fe1a                                   ; $6218: $21 $1a $fe
	ld   a, c                                        ; $621b: $79
	rst  $30                                         ; $621c: $f7
	dec  a                                           ; $621d: $3d
	cp   $38                                         ; $621e: $fe $38
	and  c                                           ; $6220: $a1
	ld   de, $b6ff                                   ; $6221: $11 $ff $b6
	cp   a                                           ; $6224: $bf
	ld   b, h                                        ; $6225: $44
	rst  $38                                         ; $6226: $ff
	or   e                                           ; $6227: $b3
	cp   b                                           ; $6228: $b8
	ld   de, $fa1f                                   ; $6229: $11 $1f $fa
	ld   a, [hl]                                     ; $622c: $7e
	pop  de                                          ; $622d: $d1
	ld   a, a                                        ; $622e: $7f
	rst  $30                                         ; $622f: $f7
	ld   c, h                                        ; $6230: $4c
	ld   [hl], c                                     ; $6231: $71
	ld   de, $68ff                                   ; $6232: $11 $ff $68
	ld   a, [$fd1a]                                  ; $6235: $fa $1a $fd
	ld   d, a                                        ; $6238: $57
	db   $d3                                         ; $6239: $d3
	ld   de, $e76f                                   ; $623a: $11 $6f $e7
	cp   a                                           ; $623d: $bf
	ld   [hl], c                                     ; $623e: $71
	rst  JumpTable                                         ; $623f: $df
	db   $d3                                         ; $6240: $d3
	xor  [hl]                                        ; $6241: $ae
	ld   de, $fc1c                                   ; $6242: $11 $1c $fc
	adc  l                                           ; $6245: $8d
	db   $f4                                         ; $6246: $f4
	cpl                                              ; $6247: $2f
	ld   a, [$b14c]                                  ; $6248: $fa $4c $b1
	ld   de, $a9ef                                   ; $624b: $11 $ef $a9
	rst  $38                                         ; $624e: $ff
	inc  hl                                          ; $624f: $23
	rst  $38                                         ; $6250: $ff
	add  h                                           ; $6251: $84
	jp   hl                                          ; $6252: $e9


	ld   de, $f81f                                   ; $6253: $11 $1f $f8
	xor  a                                           ; $6256: $af
	pop  de                                          ; $6257: $d1
	ld   l, a                                        ; $6258: $6f
	push af                                          ; $6259: $f5
	ld   l, a                                        ; $625a: $6f
	ld   h, c                                        ; $625b: $61
	ld   de, $9dff                                   ; $625c: $11 $ff $9d
	ld   a, [$fd19]                                  ; $625f: $fa $19 $fd
	ld   l, c                                        ; $6262: $69
	ldh  a, [c]                                      ; $6263: $f2
	ld   de, $d73f                                   ; $6264: $11 $3f $d7
	rst  $28                                         ; $6267: $ef
	ld   [hl], c                                     ; $6268: $71
	rst  JumpTable                                         ; $6269: $df
	or   l                                           ; $626a: $b5
	cp   [hl]                                        ; $626b: $be
	ld   de, $fb17                                   ; $626c: $11 $17 $fb
	xor  a                                           ; $626f: $af
	db   $f4                                         ; $6270: $f4
	cpl                                              ; $6271: $2f
	ld   hl, sp+$6e                                  ; $6272: $f8 $6e
	and  c                                           ; $6274: $a1
	ld   de, $8ccf                                   ; $6275: $11 $cf $8c
	db   $fd                                         ; $6278: $fd
	dec  h                                           ; $6279: $25
	cp   $67                                         ; $627a: $fe $67
	rst  $30                                         ; $627c: $f7
	ld   de, $f91e                                   ; $627d: $11 $1e $f9
	rst  $38                                         ; $6280: $ff
	or   c                                           ; $6281: $b1
	sbc  a                                           ; $6282: $9f
	rst  ToBoot                                         ; $6283: $c7
	sbc  a                                           ; $6284: $9f
	ld   sp, $fd11                                   ; $6285: $31 $11 $fd
	xor  a                                           ; $6288: $af
	ld   hl, sp+$1b                                  ; $6289: $f8 $1b
	ld   a, [$e16d]                                  ; $628b: $fa $6d $e1
	ld   de, $ab4f                                   ; $628e: $11 $4f $ab
	rst  $38                                         ; $6291: $ff
	ld   b, e                                        ; $6292: $43
	cp   $78                                         ; $6293: $fe $78
	ld   a, [$1911]                                  ; $6295: $fa $11 $19
	jp   hl                                          ; $6298: $e9


	rst  $38                                         ; $6299: $ff
	jp   nz, $c77f                                   ; $629a: $c2 $7f $c7

	sbc  a                                           ; $629d: $9f
	ld   d, c                                        ; $629e: $51
	ld   de, $9feb                                   ; $629f: $11 $eb $9f
	ld   sp, hl                                      ; $62a2: $f9
	dec  hl                                          ; $62a3: $2b
	ld   hl, sp+$6e                                  ; $62a4: $f8 $6e
	pop  af                                          ; $62a6: $f1
	ld   de, $9b2d                                   ; $62a7: $11 $2d $9b
	rst  $38                                         ; $62aa: $ff
	ld   d, h                                        ; $62ab: $54
	db   $ed                                         ; $62ac: $ed
	ld   l, b                                        ; $62ad: $68
	ld   a, [$1511]                                  ; $62ae: $fa $11 $15
	reti                                             ; $62b1: $d9


	rst  JumpTable                                         ; $62b2: $df
	db   $e4                                         ; $62b3: $e4
	ld   a, a                                        ; $62b4: $7f
	and  a                                           ; $62b5: $a7
	xor  a                                           ; $62b6: $af
	ld   h, c                                        ; $62b7: $61
	ld   de, $7fba                                   ; $62b8: $11 $ba $7f
	ld   a, [$f73b]                                  ; $62bb: $fa $3b $f7
	ld   e, l                                        ; $62be: $5d
	pop  af                                          ; $62bf: $f1
	ld   de, $8a1b                                   ; $62c0: $11 $1b $8a
	rst  $38                                         ; $62c3: $ff
	halt                                             ; $62c4: $76
	db   $eb                                         ; $62c5: $eb
	ld   a, b                                        ; $62c6: $78
	db   $eb                                         ; $62c7: $eb
	ld   de, $b615                                   ; $62c8: $11 $15 $b6
	rst  $28                                         ; $62cb: $ef
	push hl                                          ; $62cc: $e5
	sbc  [hl]                                        ; $62cd: $9e
	sub  [hl]                                        ; $62ce: $96
	cp   a                                           ; $62cf: $bf
	ld   d, c                                        ; $62d0: $51
	ld   de, $8f97                                   ; $62d1: $11 $97 $8f
	ld   hl, sp+$7d                                  ; $62d4: $f8 $7d
	or   a                                           ; $62d6: $b7
	ld   a, [hl]                                     ; $62d7: $7e
	or   c                                           ; $62d8: $b1
	ld   de, $6b2a                                   ; $62d9: $11 $2a $6b
	rst  $38                                         ; $62dc: $ff
	ld   a, c                                        ; $62dd: $79
	reti                                             ; $62de: $d9


	ld   l, d                                        ; $62df: $6a
	rst  $20                                         ; $62e0: $e7
	ld   de, $8617                                   ; $62e1: $11 $17 $86
	rst  $38                                         ; $62e4: $ff
	rst  ToBoot                                         ; $62e5: $c7
	db   $db                                         ; $62e6: $db
	add  a                                           ; $62e7: $87
	call $1131                                       ; $62e8: $cd $31 $11
	and  l                                           ; $62eb: $a5
	sbc  a                                           ; $62ec: $9f
	ld   hl, sp-$42                                  ; $62ed: $f8 $be
	sub  [hl]                                        ; $62ef: $96
	sbc  [hl]                                        ; $62f0: $9e
	ld   [hl], d                                     ; $62f1: $72
	ld   de, $4f66                                   ; $62f2: $11 $66 $4f
	ei                                               ; $62f5: $fb
	sbc  l                                           ; $62f6: $9d
	cp   b                                           ; $62f7: $b8
	ld   a, e                                        ; $62f8: $7b
	db   $d3                                         ; $62f9: $d3
	ld   de, $2a19                                   ; $62fa: $11 $19 $2a
	rst  $38                                         ; $62fd: $ff
	sbc  h                                           ; $62fe: $9c
	jp   hl                                          ; $62ff: $e9


	ld   a, d                                        ; $6300: $7a
	and  $31                                         ; $6301: $e6 $31
	ld   d, $63                                      ; $6303: $16 $63
	rst  JumpTable                                         ; $6305: $df
	cp   d                                           ; $6306: $ba
	db   $eb                                         ; $6307: $eb
	add  a                                           ; $6308: $87
	cp   h                                           ; $6309: $bc
	ld   b, e                                        ; $630a: $43
	ld   de, $7f73                                   ; $630b: $11 $73 $7f
	jp   hl                                          ; $630e: $e9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $630f: $cf
	sub  a                                           ; $6310: $97
	sbc  h                                           ; $6311: $9c
	ld   [hl], h                                     ; $6312: $74
	ld   hl, $2c55                                   ; $6313: $21 $55 $2c
	db   $fc                                         ; $6316: $fc
	cp   a                                           ; $6317: $bf
	ret                                              ; $6318: $c9


	sbc  d                                           ; $6319: $9a
	or   h                                           ; $631a: $b4
	ld   d, c                                        ; $631b: $51
	rla                                              ; $631c: $17
	daa                                              ; $631d: $27
	xor  $ae                                         ; $631e: $ee $ae
	ld   sp, hl                                      ; $6320: $f9
	sbc  c                                           ; $6321: $99
	add  $53                                         ; $6322: $c6 $53
	dec  d                                           ; $6324: $15
	ld   b, d                                        ; $6325: $42
	cp   [hl]                                        ; $6326: $be
	xor  e                                           ; $6327: $ab
	db   $fc                                         ; $6328: $fc
	sbc  b                                           ; $6329: $98
	ret                                              ; $632a: $c9


	ld   b, [hl]                                     ; $632b: $46
	ld   de, $6c62                                   ; $632c: $11 $62 $6c
	jp   c, $a9ee                                    ; $632f: $da $ee $a9

	xor  e                                           ; $6332: $ab
	halt                                             ; $6333: $76
	ld   sp, $2a53                                   ; $6334: $31 $53 $2a
	reti                                             ; $6337: $d9


	cp   a                                           ; $6338: $bf
	ret  z                                           ; $6339: $c8

	xor  d                                           ; $633a: $aa
	add  [hl]                                        ; $633b: $86
	ld   [hl], c                                     ; $633c: $71
	ld   h, $15                                      ; $633d: $26 $15
	cp   d                                           ; $633f: $ba
	xor  h                                           ; $6340: $ac
	ld   a, [$b79a]                                  ; $6341: $fa $9a $b7
	halt                                             ; $6344: $76
	dec  d                                           ; $6345: $15
	ld   b, d                                        ; $6346: $42
	ld   a, d                                        ; $6347: $7a
	xor  d                                           ; $6348: $aa
	call c, $aaa9                                    ; $6349: $dc $a9 $aa
	ld   [hl], a                                     ; $634c: $77
	ld   d, e                                        ; $634d: $53
	ld   h, e                                        ; $634e: $63
	ld   c, b                                        ; $634f: $48
	sbc  b                                           ; $6350: $98
	cp   h                                           ; $6351: $bc
	xor  d                                           ; $6352: $aa
	xor  d                                           ; $6353: $aa
	adc  b                                           ; $6354: $88
	sub  l                                           ; $6355: $95
	ld   d, [hl]                                     ; $6356: $56
	dec  [hl]                                        ; $6357: $35
	adc  b                                           ; $6358: $88
	sbc  e                                           ; $6359: $9b
	xor  d                                           ; $635a: $aa
	xor  d                                           ; $635b: $aa
	xor  b                                           ; $635c: $a8
	sbc  b                                           ; $635d: $98
	ld   h, [hl]                                     ; $635e: $66
	ld   d, e                                        ; $635f: $53
	ld   h, a                                        ; $6360: $67
	ld   a, c                                        ; $6361: $79
	sbc  c                                           ; $6362: $99
	sbc  c                                           ; $6363: $99
	xor  d                                           ; $6364: $aa
	xor  d                                           ; $6365: $aa
	add  a                                           ; $6366: $87
	ld   [hl], l                                     ; $6367: $75
	ld   b, [hl]                                     ; $6368: $46
	ld   h, a                                        ; $6369: $67
	adc  b                                           ; $636a: $88
	xor  b                                           ; $636b: $a8
	sbc  d                                           ; $636c: $9a
	sbc  d                                           ; $636d: $9a
	cp   c                                           ; $636e: $b9
	ld   [hl], a                                     ; $636f: $77
	ld   d, h                                        ; $6370: $54
	ld   h, [hl]                                     ; $6371: $66
	ld   a, c                                        ; $6372: $79
	sbc  c                                           ; $6373: $99
	sbc  c                                           ; $6374: $99
	xor  d                                           ; $6375: $aa
	cp   e                                           ; $6376: $bb
	sbc  b                                           ; $6377: $98
	ld   [hl], l                                     ; $6378: $75
	ld   b, [hl]                                     ; $6379: $46
	ld   h, a                                        ; $637a: $67
	adc  b                                           ; $637b: $88
	sbc  c                                           ; $637c: $99
	sbc  d                                           ; $637d: $9a
	xor  d                                           ; $637e: $aa
	xor  d                                           ; $637f: $aa
	add  a                                           ; $6380: $87
	ld   b, h                                        ; $6381: $44
	ld   d, [hl]                                     ; $6382: $56
	ld   a, b                                        ; $6383: $78
	adc  b                                           ; $6384: $88
	sbc  d                                           ; $6385: $9a
	xor  e                                           ; $6386: $ab
	cp   d                                           ; $6387: $ba
	xor  b                                           ; $6388: $a8
	ld   h, h                                        ; $6389: $64
	ld   b, l                                        ; $638a: $45
	ld   h, a                                        ; $638b: $67
	adc  b                                           ; $638c: $88
	sbc  c                                           ; $638d: $99
	sbc  d                                           ; $638e: $9a
	xor  e                                           ; $638f: $ab
	cp   d                                           ; $6390: $ba
	add  [hl]                                        ; $6391: $86
	ld   b, l                                        ; $6392: $45
	ld   h, [hl]                                     ; $6393: $66
	ld   a, b                                        ; $6394: $78
	adc  c                                           ; $6395: $89
	adc  c                                           ; $6396: $89
	xor  e                                           ; $6397: $ab
	cp   e                                           ; $6398: $bb
	sub  a                                           ; $6399: $97
	ld   d, h                                        ; $639a: $54
	ld   d, [hl]                                     ; $639b: $56
	ld   h, a                                        ; $639c: $67
	adc  c                                           ; $639d: $89
	sbc  b                                           ; $639e: $98
	xor  e                                           ; $639f: $ab
	cp   e                                           ; $63a0: $bb
	cp   c                                           ; $63a1: $b9
	ld   [hl], l                                     ; $63a2: $75
	ld   b, l                                        ; $63a3: $45
	ld   h, a                                        ; $63a4: $67
	ld   a, b                                        ; $63a5: $78
	sbc  c                                           ; $63a6: $99
	sbc  d                                           ; $63a7: $9a
	cp   e                                           ; $63a8: $bb
	cp   d                                           ; $63a9: $ba
	add  a                                           ; $63aa: $87
	ld   d, h                                        ; $63ab: $54
	ld   d, [hl]                                     ; $63ac: $56
	ld   [hl], a                                     ; $63ad: $77
	adc  c                                           ; $63ae: $89
	adc  c                                           ; $63af: $89
	cp   d                                           ; $63b0: $ba
	cp   e                                           ; $63b1: $bb
	xor  b                                           ; $63b2: $a8
	ld   h, h                                        ; $63b3: $64
	ld   b, l                                        ; $63b4: $45
	ld   h, a                                        ; $63b5: $67
	ld   a, b                                        ; $63b6: $78
	sbc  c                                           ; $63b7: $99
	sbc  d                                           ; $63b8: $9a
	xor  h                                           ; $63b9: $ac
	cp   c                                           ; $63ba: $b9
	add  [hl]                                        ; $63bb: $86
	ld   b, h                                        ; $63bc: $44
	ld   h, [hl]                                     ; $63bd: $66
	ld   a, b                                        ; $63be: $78
	adc  b                                           ; $63bf: $88
	sbc  d                                           ; $63c0: $9a
	cp   e                                           ; $63c1: $bb
	cp   e                                           ; $63c2: $bb
	and  a                                           ; $63c3: $a7
	ld   h, h                                        ; $63c4: $64
	ld   b, [hl]                                     ; $63c5: $46
	ld   h, a                                        ; $63c6: $67
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	xor  d                                           ; $63c9: $aa
	cp   e                                           ; $63ca: $bb
	xor  c                                           ; $63cb: $a9
	ld   [hl], l                                     ; $63cc: $75
	ld   b, l                                        ; $63cd: $45
	ld   h, [hl]                                     ; $63ce: $66
	adc  b                                           ; $63cf: $88
	adc  b                                           ; $63d0: $88
	adc  c                                           ; $63d1: $89
	cp   h                                           ; $63d2: $bc
	jp   z, Jump_0b3_5497                            ; $63d3: $ca $97 $54

	ld   d, [hl]                                     ; $63d6: $56
	ld   l, b                                        ; $63d7: $68
	ld   [hl], a                                     ; $63d8: $77
	adc  c                                           ; $63d9: $89
	sbc  e                                           ; $63da: $9b
	call z, Call_0b3_75b9                            ; $63db: $cc $b9 $75
	ld   b, l                                        ; $63de: $45
	ld   h, a                                        ; $63df: $67
	add  a                                           ; $63e0: $87
	adc  b                                           ; $63e1: $88
	adc  c                                           ; $63e2: $89
	xor  h                                           ; $63e3: $ac
	res  2, a                                        ; $63e4: $cb $97
	ld   d, h                                        ; $63e6: $54
	ld   d, [hl]                                     ; $63e7: $56
	ld   a, b                                        ; $63e8: $78
	ld   a, b                                        ; $63e9: $78
	adc  b                                           ; $63ea: $88
	sbc  d                                           ; $63eb: $9a
	call z, Call_0b3_75b9                            ; $63ec: $cc $b9 $75
	ld   b, l                                        ; $63ef: $45
	ld   h, [hl]                                     ; $63f0: $66
	add  a                                           ; $63f1: $87
	ld   a, b                                        ; $63f2: $78
	adc  c                                           ; $63f3: $89
	xor  h                                           ; $63f4: $ac
	jp   z, Jump_0b3_5497                            ; $63f5: $ca $97 $54

	ld   d, [hl]                                     ; $63f8: $56
	ld   l, b                                        ; $63f9: $68
	ld   [hl], a                                     ; $63fa: $77
	adc  c                                           ; $63fb: $89
	xor  e                                           ; $63fc: $ab
	cp   e                                           ; $63fd: $bb
	cp   c                                           ; $63fe: $b9
	ld   [hl], l                                     ; $63ff: $75
	ld   b, l                                        ; $6400: $45
	ld   h, [hl]                                     ; $6401: $66
	add  a                                           ; $6402: $87
	ld   a, b                                        ; $6403: $78
	sbc  d                                           ; $6404: $9a
	cp   h                                           ; $6405: $bc
	cp   e                                           ; $6406: $bb
	and  a                                           ; $6407: $a7
	ld   h, h                                        ; $6408: $64
	ld   d, [hl]                                     ; $6409: $56
	ld   l, b                                        ; $640a: $68
	ld   [hl], a                                     ; $640b: $77
	adc  b                                           ; $640c: $88
	sbc  d                                           ; $640d: $9a
	call z, $86ba                                    ; $640e: $cc $ba $86
	ld   b, l                                        ; $6411: $45
	ld   h, [hl]                                     ; $6412: $66
	ld   [hl], a                                     ; $6413: $77
	ld   a, b                                        ; $6414: $78
	adc  c                                           ; $6415: $89
	xor  h                                           ; $6416: $ac
	cp   e                                           ; $6417: $bb
	xor  b                                           ; $6418: $a8
	ld   [hl], h                                     ; $6419: $74
	ld   b, [hl]                                     ; $641a: $46
	ld   h, a                                        ; $641b: $67
	ld   [hl], a                                     ; $641c: $77
	adc  b                                           ; $641d: $88
	adc  c                                           ; $641e: $89
	cp   e                                           ; $641f: $bb
	jp   z, Jump_0b3_5497                            ; $6420: $ca $97 $54

	ld   h, [hl]                                     ; $6423: $66
	ld   a, b                                        ; $6424: $78
	ld   [hl], a                                     ; $6425: $77
	adc  c                                           ; $6426: $89
	xor  e                                           ; $6427: $ab
	cp   h                                           ; $6428: $bc
	cp   c                                           ; $6429: $b9
	ld   [hl], l                                     ; $642a: $75
	ld   b, [hl]                                     ; $642b: $46
	ld   h, [hl]                                     ; $642c: $66
	add  a                                           ; $642d: $87
	ld   [hl], a                                     ; $642e: $77
	adc  c                                           ; $642f: $89
	cp   e                                           ; $6430: $bb
	res  5, b                                        ; $6431: $cb $a8
	ld   h, h                                        ; $6433: $64

Jump_0b3_6434:
	ld   h, [hl]                                     ; $6434: $66
	ld   l, b                                        ; $6435: $68
	ld   [hl], a                                     ; $6436: $77
	ld   a, b                                        ; $6437: $78
	sbc  d                                           ; $6438: $9a
	cp   h                                           ; $6439: $bc
	jp   z, Jump_0b3_4587                            ; $643a: $ca $87 $45

	ld   h, l                                        ; $643d: $65
	add  a                                           ; $643e: $87
	ld   [hl], a                                     ; $643f: $77
	adc  c                                           ; $6440: $89
	sbc  h                                           ; $6441: $9c
	call z, Call_0b3_74b9                            ; $6442: $cc $b9 $74
	ld   d, [hl]                                     ; $6445: $56
	ld   d, a                                        ; $6446: $57
	halt                                             ; $6447: $76
	ld   [hl], a                                     ; $6448: $77
	adc  d                                           ; $6449: $8a
	cp   e                                           ; $644a: $bb
	res  0, a                                        ; $644b: $cb $87
	ld   d, h                                        ; $644d: $54
	ld   h, l                                        ; $644e: $65
	ld   a, b                                        ; $644f: $78
	ld   h, a                                        ; $6450: $67
	ld   a, c                                        ; $6451: $79
	sbc  d                                           ; $6452: $9a
	call z, $85c9                                    ; $6453: $cc $c9 $85
	ld   [hl], $56                                   ; $6456: $36 $56
	add  [hl]                                        ; $6458: $86
	ld   [hl], a                                     ; $6459: $77
	adc  c                                           ; $645a: $89
	xor  e                                           ; $645b: $ab
	res  5, b                                        ; $645c: $cb $a8
	ld   h, e                                        ; $645e: $63
	ld   h, [hl]                                     ; $645f: $66
	ld   e, b                                        ; $6460: $58
	ld   [hl], a                                     ; $6461: $77
	add  a                                           ; $6462: $87
	sbc  d                                           ; $6463: $9a
	call z, $97ca                                    ; $6464: $cc $ca $97
	dec  [hl]                                        ; $6467: $35
	ld   h, l                                        ; $6468: $65
	add  a                                           ; $6469: $87
	ld   l, c                                        ; $646a: $69
	adc  b                                           ; $646b: $88
	xor  e                                           ; $646c: $ab
	cp   h                                           ; $646d: $bc
	xor  c                                           ; $646e: $a9
	add  e                                           ; $646f: $83
	ld   d, a                                        ; $6470: $57
	ld   c, c                                        ; $6471: $49
	add  [hl]                                        ; $6472: $86
	adc  b                                           ; $6473: $88
	adc  d                                           ; $6474: $8a
	jp   z, Jump_0b3_79c9                            ; $6475: $ca $c9 $79

	inc  [hl]                                        ; $6478: $34
	add  h                                           ; $6479: $84
	adc  c                                           ; $647a: $89
	ld   l, b                                        ; $647b: $68
	sbc  b                                           ; $647c: $98
	xor  h                                           ; $647d: $ac
	xor  h                                           ; $647e: $ac
	sub  a                                           ; $647f: $97
	add  d                                           ; $6480: $82
	jr   c, @+$49                                    ; $6481: $38 $47

	and  [hl]                                        ; $6483: $a6
	adc  e                                           ; $6484: $8b
	adc  d                                           ; $6485: $8a
	ret                                              ; $6486: $c9


	ret                                              ; $6487: $c9


	ld   l, c                                        ; $6488: $69
	ld   [hl+], a                                    ; $6489: $22
	sub  e                                           ; $648a: $93
	ld   a, d                                        ; $648b: $7a
	ld   a, b                                        ; $648c: $78
	cp   b                                           ; $648d: $b8
	sbc  l                                           ; $648e: $9d
	xor  e                                           ; $648f: $ab
	sub  [hl]                                        ; $6490: $96
	sub  d                                           ; $6491: $92
	jr   z, jr_0b3_64cb                              ; $6492: $28 $37

	or   a                                           ; $6494: $b7
	sbc  h                                           ; $6495: $9c
	adc  d                                           ; $6496: $8a
	ret  c                                           ; $6497: $d8

	ret  z                                           ; $6498: $c8

	ld   e, d                                        ; $6499: $5a
	inc  de                                          ; $649a: $13
	add  e                                           ; $649b: $83
	adc  e                                           ; $649c: $8b
	ld   a, c                                        ; $649d: $79
	ret  z                                           ; $649e: $c8

	cp   l                                           ; $649f: $bd
	adc  h                                           ; $64a0: $8c
	halt                                             ; $64a1: $76
	sub  c                                           ; $64a2: $91
	ld   b, a                                        ; $64a3: $47
	add  hl, sp                                      ; $64a4: $39
	or   a                                           ; $64a5: $b7
	sbc  h                                           ; $64a6: $9c
	ld   a, h                                        ; $64a7: $7c
	ret  c                                           ; $64a8: $d8

	push hl                                          ; $64a9: $e5
	ld   a, c                                        ; $64aa: $79
	ld   d, $63                                      ; $64ab: $16 $63
	sbc  d                                           ; $64ad: $9a
	ld   a, e                                        ; $64ae: $7b
	sub  $eb                                         ; $64af: $d6 $eb
	adc  [hl]                                        ; $64b1: $8e
	jr   c, jr_0b3_6515                              ; $64b2: $38 $61

	ld   [hl], l                                     ; $64b4: $75
	ld   a, [hl-]                                    ; $64b5: $3a
	and  a                                           ; $64b6: $a7
	call z, $a96f                                    ; $64b7: $cc $6f $a9
	jp   nz, $1994                                   ; $64ba: $c2 $94 $19

	ld   b, h                                        ; $64bd: $44
	cp   c                                           ; $64be: $b9
	ld   a, l                                        ; $64bf: $7d
	rst  ToBoot                                         ; $64c0: $c7
	ld   sp, hl                                      ; $64c1: $f9
	xor  e                                           ; $64c2: $ab
	dec  de                                          ; $64c3: $1b
	ld   de, $6a83                                   ; $64c4: $11 $83 $6a
	xor  b                                           ; $64c7: $a8
	ld   [$6d9f], a                                  ; $64c8: $ea $9f $6d

jr_0b3_64cb:
	add  d                                           ; $64cb: $82
	pop  bc                                          ; $64cc: $c1
	jr   z, jr_0b3_64f6                              ; $64cd: $28 $27

	cp   c                                           ; $64cf: $b9
	sbc  a                                           ; $64d0: $9f
	adc  e                                           ; $64d1: $8b
	push af                                          ; $64d2: $f5
	push hl                                          ; $64d3: $e5
	ld   c, e                                        ; $64d4: $4b
	ld   d, $72                                      ; $64d5: $16 $72
	xor  e                                           ; $64d7: $ab
	adc  d                                           ; $64d8: $8a
	or   $ee                                         ; $64d9: $f6 $ee
	ld   l, a                                        ; $64db: $6f
	rla                                              ; $64dc: $17
	ld   [hl], c                                     ; $64dd: $71
	add  h                                           ; $64de: $84
	ld   a, [hl-]                                    ; $64df: $3a
	xor  b                                           ; $64e0: $a8
	sbc  $6f                                         ; $64e1: $de $6f
	sbc  b                                           ; $64e3: $98
	pop  de                                          ; $64e4: $d1
	or   e                                           ; $64e5: $b3
	ld   a, [de]                                     ; $64e6: $1a
	dec  h                                           ; $64e7: $25
	jp   z, $b78f                                    ; $64e8: $ca $8f $b7

	or   $b9                                         ; $64eb: $f6 $b9
	dec  e                                           ; $64ed: $1d
	ld   de, $8ba1                                   ; $64ee: $11 $a1 $8b
	adc  c                                           ; $64f1: $89
	ld   hl, sp-$41                                  ; $64f2: $f8 $bf
	ld   c, [hl]                                     ; $64f4: $4e
	ld   b, e                                        ; $64f5: $43

jr_0b3_64f6:
	or   c                                           ; $64f6: $b1
	ld   h, a                                        ; $64f7: $67
	ld   a, [de]                                     ; $64f8: $1a
	cp   b                                           ; $64f9: $b8
	cp   a                                           ; $64fa: $bf
	ld   l, a                                        ; $64fb: $6f
	push de                                          ; $64fc: $d5
	pop  hl                                          ; $64fd: $e1
	sub  [hl]                                        ; $64fe: $96
	dec  de                                          ; $64ff: $1b
	inc  [hl]                                        ; $6500: $34
	cp   c                                           ; $6501: $b9
	sbc  [hl]                                        ; $6502: $9e
	and  $f8                                         ; $6503: $e6 $f8
	adc  e                                           ; $6505: $8b
	dec  e                                           ; $6506: $1d
	ld   de, $9bc1                                   ; $6507: $11 $c1 $9b
	sbc  d                                           ; $650a: $9a
	ld   sp, hl                                      ; $650b: $f9
	xor  a                                           ; $650c: $af
	ld   c, [hl]                                     ; $650d: $4e
	ld   d, d                                        ; $650e: $52
	pop  bc                                          ; $650f: $c1
	ld   l, b                                        ; $6510: $68
	dec  de                                          ; $6511: $1b
	xor  b                                           ; $6512: $a8
	cp   a                                           ; $6513: $bf
	ld   l, a                                        ; $6514: $6f

jr_0b3_6515:
	call nc, $96f1                                   ; $6515: $d4 $f1 $96
	inc  e                                           ; $6518: $1c
	inc  h                                           ; $6519: $24
	ret                                              ; $651a: $c9


	sbc  l                                           ; $651b: $9d
	rst  $10                                         ; $651c: $d7
	rst  $30                                         ; $651d: $f7
	sbc  d                                           ; $651e: $9a
	dec  e                                           ; $651f: $1d
	ld   de, $9bc1                                   ; $6520: $11 $c1 $9b
	sbc  e                                           ; $6523: $9b
	ld   sp, hl                                      ; $6524: $f9
	cp   a                                           ; $6525: $bf
	ld   a, $42                                      ; $6526: $3e $42
	or   c                                           ; $6528: $b1
	add  a                                           ; $6529: $87
	dec  e                                           ; $652a: $1d
	xor  c                                           ; $652b: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $652c: $cf
	ld   l, a                                        ; $652d: $6f
	push bc                                          ; $652e: $c5
	pop  hl                                          ; $652f: $e1
	and  e                                           ; $6530: $a3
	dec  e                                           ; $6531: $1d
	ld   d, $d8                                      ; $6532: $16 $d8
	sbc  [hl]                                        ; $6534: $9e
	cp   c                                           ; $6535: $b9
	push af                                          ; $6536: $f5
	xor  b                                           ; $6537: $a8
	dec  e                                           ; $6538: $1d
	inc  de                                          ; $6539: $13
	and  c                                           ; $653a: $a1
	jp   z, $f79b                                    ; $653b: $ca $9b $f7

	rst  $28                                         ; $653e: $ef
	ld   a, $16                                      ; $653f: $3e $16
	add  c                                           ; $6541: $81
	jp   $893d                                       ; $6542: $c3 $3d $89


	db   $ed                                         ; $6545: $ed
	ld   a, a                                        ; $6546: $7f
	ld   a, b                                        ; $6547: $78
	pop  bc                                          ; $6548: $c1
	pop  de                                          ; $6549: $d1
	dec  e                                           ; $654a: $1d
	ld   a, [de]                                     ; $654b: $1a
	cp   b                                           ; $654c: $b8
	xor  a                                           ; $654d: $af
	sbc  h                                           ; $654e: $9c
	di                                               ; $654f: $f3
	ldh  [c], a                                      ; $6550: $e2
	ld   a, [hl-]                                    ; $6551: $3a
	add  hl, de                                      ; $6552: $19
	ld   h, c                                        ; $6553: $61
	reti                                             ; $6554: $d9


	sbc  l                                           ; $6555: $9d
	and  $fb                                         ; $6556: $e6 $fb
	ld   l, l                                        ; $6558: $6d
	dec  de                                          ; $6559: $1b
	ld   de, $7cd1                                   ; $655a: $11 $d1 $7c
	ld   a, e                                        ; $655d: $7b
	ld   sp, hl                                      ; $655e: $f9
	xor  a                                           ; $655f: $af
	inc  a                                           ; $6560: $3c
	ld   d, c                                        ; $6561: $51
	pop  de                                          ; $6562: $d1
	ld   a, b                                        ; $6563: $78
	dec  e                                           ; $6564: $1d
	xor  b                                           ; $6565: $a8
	rst  JumpTable                                         ; $6566: $df
	ld   l, a                                        ; $6567: $6f
	call nz, $a4e1                                   ; $6568: $c4 $e1 $a4
	ld   e, $15                                      ; $656b: $1e $15
	rst  $10                                         ; $656d: $d7
	sbc  a                                           ; $656e: $9f
	cp   b                                           ; $656f: $b8
	push af                                          ; $6570: $f5
	cp   c                                           ; $6571: $b9
	ld   e, $14                                      ; $6572: $1e $14
	or   c                                           ; $6574: $b1
	reti                                             ; $6575: $d9


	adc  h                                           ; $6576: $8c
	rst  $30                                         ; $6577: $f7
	rst  $28                                         ; $6578: $ef
	cpl                                              ; $6579: $2f
	rla                                              ; $657a: $17
	ld   [hl], c                                     ; $657b: $71
	pop  de                                          ; $657c: $d1
	ld   a, $7a                                      ; $657d: $3e $7a
	db   $ed                                         ; $657f: $ed
	ld   a, a                                        ; $6580: $7f
	ld   a, c                                        ; $6581: $79
	or   c                                           ; $6582: $b1
	pop  hl                                          ; $6583: $e1
	dec  e                                           ; $6584: $1d
	dec  de                                          ; $6585: $1b
	add  $cf                                         ; $6586: $c6 $cf
	sbc  h                                           ; $6588: $9c
	ldh  a, [c]                                      ; $6589: $f2
	ldh  a, [c]                                      ; $658a: $f2
	dec  l                                           ; $658b: $2d
	dec  de                                          ; $658c: $1b
	ld   h, c                                        ; $658d: $61
	add  sp, -$63                                    ; $658e: $e8 $9d
	or   $fb                                         ; $6590: $f6 $fb
	ld   c, a                                        ; $6592: $4f
	inc  e                                           ; $6593: $1c
	ld   hl, $7df1                                   ; $6594: $21 $f1 $7d
	ld   l, e                                        ; $6597: $6b

Jump_0b3_6598:
	ei                                               ; $6598: $fb
	sbc  a                                           ; $6599: $9f
	inc  a                                           ; $659a: $3c
	ld   [hl], c                                     ; $659b: $71
	pop  af                                          ; $659c: $f1
	ld   e, e                                        ; $659d: $5b
	dec  e                                           ; $659e: $1d
	sub  a                                           ; $659f: $97
	rst  JumpTable                                         ; $65a0: $df
	ld   a, a                                        ; $65a1: $7f
	ldh  a, [c]                                      ; $65a2: $f2
	pop  af                                          ; $65a3: $f1
	ld   l, c                                        ; $65a4: $69
	ld   e, $31                                      ; $65a5: $1e $31
	rst  $30                                         ; $65a7: $f7
	sbc  a                                           ; $65a8: $9f
	sub  $f7                                         ; $65a9: $d6 $f7
	ld   a, l                                        ; $65ab: $7d
	ld   e, $11                                      ; $65ac: $1e $11
	pop  af                                          ; $65ae: $f1
	xor  l                                           ; $65af: $ad
	ld   l, h                                        ; $65b0: $6c
	ld   sp, hl                                      ; $65b1: $f9
	cp   a                                           ; $65b2: $bf
	ld   l, $31                                      ; $65b3: $2e $31
	pop  hl                                          ; $65b5: $e1
	and  a                                           ; $65b6: $a7
	rra                                              ; $65b7: $1f
	adc  b                                           ; $65b8: $88
	rst  $28                                         ; $65b9: $ef
	ld   l, a                                        ; $65ba: $6f
	or   e                                           ; $65bb: $b3
	pop  af                                          ; $65bc: $f1
	or   e                                           ; $65bd: $b3
	rra                                              ; $65be: $1f
	rla                                              ; $65bf: $17
	or   $af                                         ; $65c0: $f6 $af
	xor  c                                           ; $65c2: $a9
	di                                               ; $65c3: $f3
	rst  ToBoot                                         ; $65c4: $c7
	rra                                              ; $65c5: $1f
	ld   d, $b1                                      ; $65c6: $16 $b1
	ld   sp, hl                                      ; $65c8: $f9
	ld   a, [hl]                                     ; $65c9: $7e
	rst  $30                                         ; $65ca: $f7
	db   $fd                                         ; $65cb: $fd
	cpl                                              ; $65cc: $2f
	add  hl, de                                      ; $65cd: $19
	ld   [hl], c                                     ; $65ce: $71
	pop  af                                          ; $65cf: $f1
	ccf                                              ; $65d0: $3f
	ld   e, d                                        ; $65d1: $5a
	ei                                               ; $65d2: $fb
	adc  a                                           ; $65d3: $8f
	ld   e, c                                        ; $65d4: $59
	sub  c                                           ; $65d5: $91
	pop  af                                          ; $65d6: $f1
	ld   l, $1d                                      ; $65d7: $2e $1d
	or   l                                           ; $65d9: $b5
	rst  $28                                         ; $65da: $ef
	ld   a, [hl]                                     ; $65db: $7e
	pop  af                                          ; $65dc: $f1
	pop  af                                          ; $65dd: $f1
	ld   c, e                                        ; $65de: $4b
	rra                                              ; $65df: $1f
	ld   b, c                                        ; $65e0: $41
	or   $8f                                         ; $65e1: $f6 $8f
	rst  ToBoot                                         ; $65e3: $c7
	rst  $30                                         ; $65e4: $f7
	ld   l, e                                        ; $65e5: $6b
	dec  e                                           ; $65e6: $1d
	ld   de, $bdf1                                   ; $65e7: $11 $f1 $bd
	ld   e, [hl]                                     ; $65ea: $5e
	rst  $30                                         ; $65eb: $f7
	rst  JumpTable                                         ; $65ec: $df
	dec  e                                           ; $65ed: $1d
	ld   [de], a                                     ; $65ee: $12
	pop  bc                                          ; $65ef: $c1
	sub  $1f                                         ; $65f0: $d6 $1f
	ld   a, b                                        ; $65f2: $78
	db   $fd                                         ; $65f3: $fd
	ld   l, a                                        ; $65f4: $6f
	sub  h                                           ; $65f5: $94
	pop  de                                          ; $65f6: $d1
	pop  de                                          ; $65f7: $d1
	rra                                              ; $65f8: $1f
	dec  de                                          ; $65f9: $1b
	push af                                          ; $65fa: $f5
	rst  JumpTable                                         ; $65fb: $df
	adc  h                                           ; $65fc: $8c
	ldh  a, [c]                                      ; $65fd: $f2
	or   d                                           ; $65fe: $b2
	inc  l                                           ; $65ff: $2c
	inc  e                                           ; $6600: $1c
	ld   h, c                                        ; $6601: $61
	rst  $30                                         ; $6602: $f7
	adc  a                                           ; $6603: $8f
	rst  ToBoot                                         ; $6604: $c7
	ld   sp, hl                                      ; $6605: $f9
	ld   e, d                                        ; $6606: $5a
	inc  e                                           ; $6607: $1c
	ld   de, $cef1                                   ; $6608: $11 $f1 $ce
	ld   e, a                                        ; $660b: $5f
	rst  $30                                         ; $660c: $f7
	rst  JumpTable                                         ; $660d: $df
	inc  l                                           ; $660e: $2c
	inc  de                                          ; $660f: $13
	sub  c                                           ; $6610: $91
	push af                                          ; $6611: $f5
	rra                                              ; $6612: $1f
	ld   l, c                                        ; $6613: $69
	ei                                               ; $6614: $fb
	adc  a                                           ; $6615: $8f
	ld   h, [hl]                                     ; $6616: $66
	add  c                                           ; $6617: $81
	pop  de                                          ; $6618: $d1
	cpl                                              ; $6619: $2f
	ld   e, $e5                                      ; $661a: $1e $e5
	rst  $38                                         ; $661c: $ff
	ld   l, a                                        ; $661d: $6f
	pop  hl                                          ; $661e: $e1
	or   c                                           ; $661f: $b1
	ld   h, [hl]                                     ; $6620: $66
	rra                                              ; $6621: $1f
	inc  hl                                          ; $6622: $23
	push af                                          ; $6623: $f5
	cp   a                                           ; $6624: $bf
	xor  c                                           ; $6625: $a9
	db   $f4                                         ; $6626: $f4
	halt                                             ; $6627: $76
	inc  e                                           ; $6628: $1c
	rla                                              ; $6629: $17
	pop  hl                                          ; $662a: $e1
	db   $fc                                         ; $662b: $fc
	ld   e, a                                        ; $662c: $5f
	and  $fc                                         ; $662d: $e6 $fc
	dec  de                                          ; $662f: $1b
	add  hl, de                                      ; $6630: $19
	ld   sp, $7ff1                                   ; $6631: $31 $f1 $7f
	ld   c, l                                        ; $6634: $4d
	ld   hl, sp-$51                                  ; $6635: $f8 $af
	jr   jr_0b3_666a                                 ; $6637: $18 $31

	or   c                                           ; $6639: $b1
	cp   d                                           ; $663a: $ba
	rra                                              ; $663b: $1f
	sub  a                                           ; $663c: $97
	db   $fc                                         ; $663d: $fc
	ld   l, a                                        ; $663e: $6f
	sub  d                                           ; $663f: $92
	and  c                                           ; $6640: $a1
	or   c                                           ; $6641: $b1
	rra                                              ; $6642: $1f
	inc  e                                           ; $6643: $1c
	db   $f4                                         ; $6644: $f4
	rst  $28                                         ; $6645: $ef
	ld   l, h                                        ; $6646: $6c
	pop  af                                          ; $6647: $f1
	add  c                                           ; $6648: $81
	ld   a, [hl+]                                    ; $6649: $2a
	rra                                              ; $664a: $1f
	ld   [hl], c                                     ; $664b: $71
	rst  $30                                         ; $664c: $f7
	adc  a                                           ; $664d: $8f
	and  [hl]                                        ; $664e: $a6
	or   $27                                         ; $664f: $f6 $27
	inc  e                                           ; $6651: $1c
	inc  de                                          ; $6652: $13
	pop  af                                          ; $6653: $f1
	rst  $38                                         ; $6654: $ff
	ccf                                              ; $6655: $3f
	db   $f4                                         ; $6656: $f4
	rst  JumpTable                                         ; $6657: $df
	add  hl, de                                      ; $6658: $19
	dec  d                                           ; $6659: $15
	ld   [hl], c                                     ; $665a: $71
	db   $f4                                         ; $665b: $f4
	cpl                                              ; $665c: $2f
	ld   l, c                                        ; $665d: $69
	ld   sp, hl                                      ; $665e: $f9
	ld   e, a                                        ; $665f: $5f
	ld   b, d                                        ; $6660: $42
	ld   h, c                                        ; $6661: $61
	pop  de                                          ; $6662: $d1
	ld   l, a                                        ; $6663: $6f
	rra                                              ; $6664: $1f
	di                                               ; $6665: $f3
	rst  $38                                         ; $6666: $ff
	ld   a, $f1                                      ; $6667: $3e $f1
	add  c                                           ; $6669: $81

jr_0b3_666a:
	ld   h, a                                        ; $666a: $67
	rra                                              ; $666b: $1f
	ld   d, c                                        ; $666c: $51
	or   $8f                                         ; $666d: $f6 $8f
	sub  e                                           ; $666f: $93
	push af                                          ; $6670: $f5
	rla                                              ; $6671: $17
	dec  e                                           ; $6672: $1d
	dec  d                                           ; $6673: $15
	pop  af                                          ; $6674: $f1
	rst  $38                                         ; $6675: $ff
	ld   l, $f3                                      ; $6676: $2e $f3
	cp   a                                           ; $6678: $bf
	rla                                              ; $6679: $17
	inc  de                                          ; $667a: $13
	pop  bc                                          ; $667b: $c1
	db   $fc                                         ; $667c: $fc
	rra                                              ; $667d: $1f
	and  h                                           ; $667e: $a4
	db   $fc                                         ; $667f: $fc
	rra                                              ; $6680: $1f
	or   c                                           ; $6681: $b1
	sub  c                                           ; $6682: $91
	or   e                                           ; $6683: $b3
	rra                                              ; $6684: $1f
	dec  d                                           ; $6685: $15
	db   $f4                                         ; $6686: $f4
	adc  a                                           ; $6687: $8f
	ld   [hl], d                                     ; $6688: $72
	di                                               ; $6689: $f3
	ld   d, $1e                                      ; $668a: $16 $1e
	ld   d, $f1                                      ; $668c: $16 $f1
	rst  $38                                         ; $668e: $ff
	inc  e                                           ; $668f: $1c
	ldh  a, [c]                                      ; $6690: $f2
	ld   a, a                                        ; $6691: $7f
	inc  de                                          ; $6692: $13
	ld   [de], a                                     ; $6693: $12
	pop  de                                          ; $6694: $d1
	rst  $38                                         ; $6695: $ff
	rra                                              ; $6696: $1f
	pop  de                                          ; $6697: $d1
	rst  $38                                         ; $6698: $ff
	dec  e                                           ; $6699: $1d
	pop  af                                          ; $669a: $f1

Jump_0b3_669b:
	ld   h, c                                        ; $669b: $61
	sbc  b                                           ; $669c: $98
	rra                                              ; $669d: $1f
	add  c                                           ; $669e: $81
	ld   sp, hl                                      ; $669f: $f9
	ccf                                              ; $66a0: $3f
	pop  de                                          ; $66a1: $d1
	ei                                               ; $66a2: $fb
	rla                                              ; $66a3: $17
	inc  e                                           ; $66a4: $1c
	ld   sp, $3ff2                                   ; $66a5: $31 $f2 $3f
	ld   d, h                                        ; $66a8: $54

jr_0b3_66a9:
	ld   a, [$911f]                                  ; $66a9: $fa $1f $91
	ld   b, c                                        ; $66ac: $41
	pop  af                                          ; $66ad: $f1
	cpl                                              ; $66ae: $2f
	add  hl, de                                      ; $66af: $19
	ldh  a, [c]                                      ; $66b0: $f2
	ld   l, a                                        ; $66b1: $6f
	ld   h, c                                        ; $66b2: $61
	di                                               ; $66b3: $f3
	inc  de                                          ; $66b4: $13
	rra                                              ; $66b5: $1f
	jr   jr_0b3_66a9                                 ; $66b6: $18 $f1

	rst  JumpTable                                         ; $66b8: $df
	rla                                              ; $66b9: $17
	db   $f4                                         ; $66ba: $f4
	rra                                              ; $66bb: $1f
	ld   hl, $f112                                   ; $66bc: $21 $12 $f1
	rst  $28                                         ; $66bf: $ef
	rra                                              ; $66c0: $1f
	pop  af                                          ; $66c1: $f1
	ld   a, a                                        ; $66c2: $7f
	ld   [hl-], a                                    ; $66c3: $32
	ldh  a, [c]                                      ; $66c4: $f2
	ld   de, $1f5f                                   ; $66c5: $11 $5f $1f
	pop  af                                          ; $66c8: $f1
	rst  $38                                         ; $66c9: $ff
	rla                                              ; $66ca: $17
	ldh  a, [c]                                      ; $66cb: $f2
	ccf                                              ; $66cc: $3f
	ld   de, $f115                                   ; $66cd: $11 $15 $f1
	rst  $38                                         ; $66d0: $ff
	rra                                              ; $66d1: $1f
	pop  af                                          ; $66d2: $f1
	ld   l, a                                        ; $66d3: $6f
	ld   b, d                                        ; $66d4: $42
	di                                               ; $66d5: $f3
	ld   de, $1f6f                                   ; $66d6: $11 $6f $1f
	pop  af                                          ; $66d9: $f1
	rst  $38                                         ; $66da: $ff
	inc  d                                           ; $66db: $14
	push af                                          ; $66dc: $f5
	rra                                              ; $66dd: $1f
	ld   d, c                                        ; $66de: $51
	dec  d                                           ; $66df: $15
	pop  af                                          ; $66e0: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e1: $cf
	inc  e                                           ; $66e2: $1c
	di                                               ; $66e3: $f3
	cpl                                              ; $66e4: $2f
	add  c                                           ; $66e5: $81
	ld   hl, sp+$11                                  ; $66e6: $f8 $11
	cpl                                              ; $66e8: $2f
	rla                                              ; $66e9: $17
	pop  af                                          ; $66ea: $f1
	ld   a, a                                        ; $66eb: $7f
	ld   d, c                                        ; $66ec: $51
	ei                                               ; $66ed: $fb
	rra                                              ; $66ee: $1f
	pop  bc                                          ; $66ef: $c1
	ld   de, $2ff1                                   ; $66f0: $11 $f1 $2f
	inc  sp                                          ; $66f3: $33
	ld   sp, hl                                      ; $66f4: $f9
	dec  de                                          ; $66f5: $1b
	pop  af                                          ; $66f6: $f1
	rst  $28                                         ; $66f7: $ef
	ld   de, $311f                                   ; $66f8: $11 $1f $31
	ei                                               ; $66fb: $fb
	rra                                              ; $66fc: $1f
	pop  bc                                          ; $66fd: $c1
	ld   l, a                                        ; $66fe: $6f
	add  hl, hl                                      ; $66ff: $29
	ldh  a, [c]                                      ; $6700: $f2
	ld   de, $1ff9                                   ; $6701: $11 $f9 $1f
	pop  af                                          ; $6704: $f1
	rst  JumpTable                                         ; $6705: $df
	ld   [hl-], a                                    ; $6706: $32
	rst  $30                                         ; $6707: $f7
	ld   c, a                                        ; $6708: $4f
	ld   d, c                                        ; $6709: $51
	ld   e, $e1                                      ; $670a: $1e $e1
	rst  $38                                         ; $670c: $ff
	add  hl, de                                      ; $670d: $19
	push af                                          ; $670e: $f5
	rra                                              ; $670f: $1f
	jp   $11f9                                       ; $6710: $c3 $f9 $11


	ld   a, a                                        ; $6713: $7f
	dec  de                                          ; $6714: $1b
	ldh  a, [c]                                      ; $6715: $f2
	ld   c, a                                        ; $6716: $4f
	sub  c                                           ; $6717: $91
	cp   a                                           ; $6718: $bf
	ccf                                              ; $6719: $3f
	pop  bc                                          ; $671a: $c1
	ld   [de], a                                     ; $671b: $12
	pop  af                                          ; $671c: $f1
	ld   c, a                                        ; $671d: $4f
	ld   [hl], c                                     ; $671e: $71
	db   $db                                         ; $671f: $db
	ld   d, $f6                                      ; $6720: $16 $f6
	cp   l                                           ; $6722: $bd
	ld   de, $411f                                   ; $6723: $11 $1f $41
	cp   $1a                                         ; $6726: $fe $1a
	jp   $9a2f                                       ; $6728: $c3 $2f $9a


	db   $e3                                         ; $672b: $e3
	ld   de, $1ffb                                   ; $672c: $11 $fb $1f
	pop  af                                          ; $672f: $f1
	ld   a, l                                        ; $6730: $7d
	ld   h, c                                        ; $6731: $61
	db   $fd                                         ; $6732: $fd
	adc  [hl]                                        ; $6733: $8e
	ld   b, c                                        ; $6734: $41
	dec  de                                          ; $6735: $1b
	pop  af                                          ; $6736: $f1
	rst  $38                                         ; $6737: $ff
	ld   [hl+], a                                    ; $6738: $22
	xor  d                                           ; $6739: $aa
	dec  de                                          ; $673a: $1b
	ld   sp, hl                                      ; $673b: $f9
	and  $11                                         ; $673c: $e6 $11
	ccf                                              ; $673e: $3f
	ld   a, [de]                                     ; $673f: $1a
	ld   sp, hl                                      ; $6740: $f9
	rla                                              ; $6741: $17
	jp   nz, $bc6f                                   ; $6742: $c2 $6f $bc

	ld   [hl], c                                     ; $6745: $71
	ld   de, $3ffa                                   ; $6746: $11 $fa $3f
	pop  af                                          ; $6749: $f1
	dec  sp                                          ; $674a: $3b
	ld   d, h                                        ; $674b: $54

jr_0b3_674c:
	cp   $da                                         ; $674c: $fe $da
	ld   de, $f11f                                   ; $674e: $11 $1f $f1
	rst  $38                                         ; $6751: $ff
	ld   de, $2f89                                   ; $6752: $11 $89 $2f
	db   $fd                                         ; $6755: $fd
	and  c                                           ; $6756: $a1
	ld   de, $5e6f                                   ; $6757: $11 $6f $5e
	rst  $30                                         ; $675a: $f7
	inc  de                                          ; $675b: $13
	and  h                                           ; $675c: $a4
	xor  a                                           ; $675d: $af
	db   $eb                                         ; $675e: $eb
	ld   hl, $fc11                                   ; $675f: $21 $11 $fc
	adc  a                                           ; $6762: $8f
	pop  hl                                          ; $6763: $e1
	add  hl, de                                      ; $6764: $19
	ld   a, b                                        ; $6765: $78
	rst  $38                                         ; $6766: $ff
	call nc, $1f11                                   ; $6767: $d4 $11 $1f
	or   $ff                                         ; $676a: $f6 $ff
	ld   de, $7f6a                                   ; $676c: $11 $6a $7f
	db   $fd                                         ; $676f: $fd
	ld   h, c                                        ; $6770: $61
	ld   de, $af9f                                   ; $6771: $11 $9f $af
	push af                                          ; $6774: $f5
	ld   de, $efaa                                   ; $6775: $11 $aa $ef
	ld   [$1111], a                                  ; $6778: $ea $11 $11
	rst  $38                                         ; $677b: $ff
	xor  a                                           ; $677c: $af
	or   c                                           ; $677d: $b1
	jr   jr_0b3_674c                                 ; $677e: $18 $cc

	rst  $38                                         ; $6780: $ff
	and  c                                           ; $6781: $a1
	ld   de, $f81f                                   ; $6782: $11 $1f $f8
	rst  $38                                         ; $6785: $ff
	ld   de, $df4d                                   ; $6786: $11 $4d $df
	ei                                               ; $6789: $fb
	ld   hl, $ef11                                   ; $678a: $21 $11 $ef
	db   $dd                                         ; $678d: $dd
	pop  af                                          ; $678e: $f1
	ld   de, $ffdf                                   ; $678f: $11 $df $ff
	or   h                                           ; $6792: $b4
	ld   de, $ff15                                   ; $6793: $11 $15 $ff
	sbc  a                                           ; $6796: $9f
	ld   h, c                                        ; $6797: $61
	dec  de                                          ; $6798: $1b
	rst  $38                                         ; $6799: $ff
	db   $fc                                         ; $679a: $fc
	ld   h, c                                        ; $679b: $61
	ld   de, $f91f                                   ; $679c: $11 $1f $f9
	jp   c, Jump_0b3_6f11                            ; $679f: $da $11 $6f

	rst  $38                                         ; $67a2: $ff
	sub  $11                                         ; $67a3: $d6 $11
	ld   de, $aaff                                   ; $67a5: $11 $ff $aa
	pop  de                                          ; $67a8: $d1
	inc  d                                           ; $67a9: $14
	rst  $38                                         ; $67aa: $ff
	db   $fd                                         ; $67ab: $fd
	ld   [hl], c                                     ; $67ac: $71
	ld   de, $ff1b                                   ; $67ad: $11 $1b $ff
	ld   l, h                                        ; $67b0: $6c
	ld   hl, $ff1e                                   ; $67b1: $21 $1e $ff
	sub  $21                                         ; $67b4: $d6 $21
	ld   de, $f58f                                   ; $67b6: $11 $8f $f5
	push bc                                          ; $67b9: $c5
	ld   de, $fedf                                   ; $67ba: $11 $df $fe
	ld   [hl], d                                     ; $67bd: $72
	ld   de, $ff15                                   ; $67be: $11 $15 $ff
	ld   e, c                                        ; $67c1: $59
	ld   [hl], c                                     ; $67c2: $71
	dec  de                                          ; $67c3: $1b
	rst  $38                                         ; $67c4: $ff
	rst  $10                                         ; $67c5: $d7
	ld   sp, $4f11                                   ; $67c6: $31 $11 $4f
	or   $89                                         ; $67c9: $f6 $89
	ld   de, $fd9f                                   ; $67cb: $11 $9f $fd
	add  e                                           ; $67ce: $83
	ld   de, rAUD1LOW                                   ; $67cf: $11 $13 $ff
	halt                                             ; $67d2: $76
	sub  c                                           ; $67d3: $91
	jr   @+$01                                       ; $67d4: $18 $ff

	rst  $10                                         ; $67d6: $d7
	ld   hl, $4f11                                   ; $67d7: $21 $11 $4f
	ld   hl, sp+$58                                  ; $67da: $f8 $58
	ld   de, $fd8f                                   ; $67dc: $11 $8f $fd
	ld   [hl], c                                     ; $67df: $71
	ld   de, rAUD1HIGH                                   ; $67e0: $11 $14 $ff
	add  h                                           ; $67e3: $84
	ld   [hl], c                                     ; $67e4: $71
	add  hl, de                                      ; $67e5: $19
	rst  $38                                         ; $67e6: $ff
	add  $11                                         ; $67e7: $c6 $11
	ld   de, $f66f                                   ; $67e9: $11 $6f $f6
	ld   b, a                                        ; $67ec: $47
	ld   de, $fbaf                                   ; $67ed: $11 $af $fb
	ld   h, c                                        ; $67f0: $61
	ld   de, $ff18                                   ; $67f1: $11 $18 $ff
	ld   d, l                                        ; $67f4: $55
	ld   h, c                                        ; $67f5: $61
	dec  e                                           ; $67f6: $1d
	rst  $38                                         ; $67f7: $ff
	or   h                                           ; $67f8: $b4
	ld   de, $9f11                                   ; $67f9: $11 $11 $9f
	db   $f4                                         ; $67fc: $f4
	ld   d, h                                        ; $67fd: $54
	ld   de, $fbff                                   ; $67fe: $11 $ff $fb
	ld   sp, $1d11                                   ; $6801: $31 $11 $1d
	rst  $38                                         ; $6804: $ff
	ld   [hl], $21                                   ; $6805: $36 $21
	ccf                                              ; $6807: $3f
	rst  $38                                         ; $6808: $ff
	sub  c                                           ; $6809: $91
	ld   de, rAUD1LEN                                   ; $680a: $11 $11 $ff
	di                                               ; $680d: $f3
	ld   h, c                                        ; $680e: $61
	ld   d, $ff                                      ; $680f: $16 $ff
	rst  $30                                         ; $6811: $f7
	ld   de, $4f11                                   ; $6812: $11 $11 $4f
	ei                                               ; $6815: $fb
	dec  h                                           ; $6816: $25
	ld   de, $fcaf                                   ; $6817: $11 $af $fc
	ld   b, c                                        ; $681a: $41
	ld   de, $ff1a                                   ; $681b: $11 $1a $ff
	ld   d, h                                        ; $681e: $54
	ld   sp, $ff1f                                   ; $681f: $31 $1f $ff
	or   d                                           ; $6822: $b2
	ld   de, rAUD1LEN                                   ; $6823: $11 $11 $ff
	di                                               ; $6826: $f3
	ld   b, c                                        ; $6827: $41
	ld   d, $ff                                      ; $6828: $16 $ff
	rst  $30                                         ; $682a: $f7
	ld   de, $6f11                                   ; $682b: $11 $11 $6f
	ld   a, [$1133]                                  ; $682e: $fa $33 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6831: $cf
	db   $fc                                         ; $6832: $fc
	ld   d, c                                        ; $6833: $51
	ld   de, $ff1d                                   ; $6834: $11 $1d $ff
	ld   d, h                                        ; $6837: $54
	ld   de, $ff3f                                   ; $6838: $11 $3f $ff
	sub  c                                           ; $683b: $91
	ld   de, rAUD1ENV                                   ; $683c: $11 $12 $ff
	di                                               ; $683f: $f3
	ld   b, c                                        ; $6840: $41
	jr   @+$01                                       ; $6841: $18 $ff

	and  $11                                         ; $6843: $e6 $11
	ld   de, $f89f                                   ; $6845: $11 $9f $f8
	ld   [hl-], a                                    ; $6848: $32
	ld   de, $fbff                                   ; $6849: $11 $ff $fb
	ld   hl, $1f11                                   ; $684c: $21 $11 $1f
	rst  $38                                         ; $684f: $ff
	ld   d, h                                        ; $6850: $54
	ld   de, $ff7f                                   ; $6851: $11 $7f $ff
	ld   [hl], c                                     ; $6854: $71
	ld   de, $ff19                                   ; $6855: $11 $19 $ff
	sub  l                                           ; $6858: $95
	ld   de, $ff1f                                   ; $6859: $11 $1f $ff
	jp   $1211                                       ; $685c: $c3 $11 $12


	rst  $38                                         ; $685f: $ff
	push af                                          ; $6860: $f5
	ld   b, c                                        ; $6861: $41
	rla                                              ; $6862: $17
	rst  $38                                         ; $6863: $ff
	ld   sp, hl                                      ; $6864: $f9
	ld   de, $cf11                                   ; $6865: $11 $11 $cf
	ld   a, [$1161]                                  ; $6868: $fa $61 $11
	rst  $38                                         ; $686b: $ff
	db   $fc                                         ; $686c: $fc
	ld   sp, $2f11                                   ; $686d: $31 $11 $2f
	rst  $38                                         ; $6870: $ff
	ld   [hl], h                                     ; $6871: $74
	ld   de, $ff8f                                   ; $6872: $11 $8f $ff
	sub  c                                           ; $6875: $91
	ld   de, $ff1d                                   ; $6876: $11 $1d $ff
	and  [hl]                                        ; $6879: $a6
	ld   de, $ff2f                                   ; $687a: $11 $2f $ff
	jp   nc, $1711                                   ; $687d: $d2 $11 $17

	rst  $38                                         ; $6880: $ff
	jp   hl                                          ; $6881: $e9


	ld   sp, $ff1c                                   ; $6882: $31 $1c $ff
	rst  $30                                         ; $6885: $f7
	ld   de, rAUD1LOW                                   ; $6886: $11 $13 $ff
	ei                                               ; $6889: $fb
	ld   h, c                                        ; $688a: $61
	jr   @+$01                                       ; $688b: $18 $ff

	db   $fc                                         ; $688d: $fc
	ld   de, rAUD1LEN                                   ; $688e: $11 $11 $ff
	db   $fd                                         ; $6891: $fd
	and  c                                           ; $6892: $a1
	dec  d                                           ; $6893: $15
	rst  $38                                         ; $6894: $ff
	db   $fd                                         ; $6895: $fd
	ld   hl, rAUD1LEN                                   ; $6896: $21 $11 $ff
	db   $fd                                         ; $6899: $fd
	and  c                                           ; $689a: $a1
	ld   d, $ff                                      ; $689b: $16 $ff
	cp   $31                                         ; $689d: $fe $31
	ld   de, $ffff                                   ; $689f: $11 $ff $ff
	or   c                                           ; $68a2: $b1
	ld   d, $ff                                      ; $68a3: $16 $ff
	db   $ed                                         ; $68a5: $ed
	ld   b, c                                        ; $68a6: $41
	ld   de, $dfff                                   ; $68a7: $11 $ff $df
	or   c                                           ; $68aa: $b1
	ld   a, [de]                                     ; $68ab: $1a
	rst  $38                                         ; $68ac: $ff
	db   $db                                         ; $68ad: $db
	ld   hl, $ff17                                   ; $68ae: $21 $17 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68b1: $cf
	add  c                                           ; $68b2: $81
	ld   e, $fc                                      ; $68b3: $1e $fc
	ret                                              ; $68b5: $c9


	ld   de, $fc1e                                   ; $68b6: $11 $1e $fc
	rst  JumpTable                                         ; $68b9: $df
	ld   b, c                                        ; $68ba: $41
	ld   e, a                                        ; $68bb: $5f
	ei                                               ; $68bc: $fb
	ret  z                                           ; $68bd: $c8

	ld   de, $fb2f                                   ; $68be: $11 $2f $fb
	db   $fc                                         ; $68c1: $fc
	ld   de, $dbbf                                   ; $68c2: $11 $bf $db
	and  h                                           ; $68c5: $a4
	ld   de, $eb9f                                   ; $68c6: $11 $9f $eb
	rst  $30                                         ; $68c9: $f7
	ld   [de], a                                     ; $68ca: $12
	rst  $28                                         ; $68cb: $ef
	cp   h                                           ; $68cc: $bc
	sub  c                                           ; $68cd: $91
	ld   de, $aeff                                   ; $68ce: $11 $ff $ae

jr_0b3_68d1:
	ldh  [c], a                                      ; $68d1: $e2
	jr   jr_0b3_68d1                                 ; $68d2: $18 $fd

	cp   e                                           ; $68d4: $bb
	ld   h, c                                        ; $68d5: $61
	rla                                              ; $68d6: $17
	db   $fd                                         ; $68d7: $fd
	sbc  a                                           ; $68d8: $9f
	and  c                                           ; $68d9: $a1
	dec  e                                           ; $68da: $1d
	ei                                               ; $68db: $fb
	cp   d                                           ; $68dc: $ba
	ld   de, $f91f                                   ; $68dd: $11 $1f $f9
	rst  $38                                         ; $68e0: $ff
	ld   sp, $db7f                                   ; $68e1: $31 $7f $db
	ret  z                                           ; $68e4: $c8

jr_0b3_68e5:
	ld   de, $f94f                                   ; $68e5: $11 $4f $f9
	db   $fd                                         ; $68e8: $fd
	ld   de, $bccf                                   ; $68e9: $11 $cf $bc
	call nz, $bf11                                   ; $68ec: $c4 $11 $bf
	sbc  l                                           ; $68ef: $9d
	rst  $30                                         ; $68f0: $f7
	inc  de                                          ; $68f1: $13
	db   $ec                                         ; $68f2: $ec
	xor  l                                           ; $68f3: $ad
	pop  bc                                          ; $68f4: $c1
	ld   de, $8ffe                                   ; $68f5: $11 $fe $8f
	ldh  a, [c]                                      ; $68f8: $f2
	jr   jr_0b3_68e5                                 ; $68f9: $18 $ea

	xor  l                                           ; $68fb: $ad
	sub  c                                           ; $68fc: $91
	ld   d, $fa                                      ; $68fd: $16 $fa
	xor  a                                           ; $68ff: $af
	pop  de                                          ; $6900: $d1
	inc  l                                           ; $6901: $2c
	rst  $10                                         ; $6902: $d7

jr_0b3_6903:
	cp   l                                           ; $6903: $bd
	ld   d, c                                        ; $6904: $51
	ld   a, [de]                                     ; $6905: $1a
	rst  $30                                         ; $6906: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6907: $cf
	sub  c                                           ; $6908: $91
	ld   l, a                                        ; $6909: $6f
	sub  a                                           ; $690a: $97
	rlc  c                                           ; $690b: $cb $01
	rra                                              ; $690d: $1f
	or   [hl]                                        ; $690e: $b6
	rst  $38                                         ; $690f: $ff
	ld   b, c                                        ; $6910: $41
	cp   [hl]                                        ; $6911: $be
	ld   a, b                                        ; $6912: $78
	ret  c                                           ; $6913: $d8

	ld   de, $876f                                   ; $6914: $11 $6f $87
	db   $fd                                         ; $6917: $fd
	inc  d                                           ; $6918: $14
	call c, $c56b                                    ; $6919: $dc $6b $c5
	ld   de, $7a8f                                   ; $691c: $11 $8f $7a
	ld   sp, hl                                      ; $691f: $f9
	ld   h, $e9                                      ; $6920: $26 $e9
	ld   a, l                                        ; $6922: $7d
	or   d                                           ; $6923: $b2
	ld   de, $5ecd                                   ; $6924: $11 $cd $5e
	push af                                          ; $6927: $f5
	add  hl, hl                                      ; $6928: $29
	rst  $20                                         ; $6929: $e7
	ld   a, l                                        ; $692a: $7d
	or   c                                           ; $692b: $b1
	inc  de                                          ; $692c: $13
	ld   [$f45f], a                                  ; $692d: $ea $5f $f4
	ld   c, e                                        ; $6930: $4b
	push de                                          ; $6931: $d5
	sbc  l                                           ; $6932: $9d
	add  c                                           ; $6933: $81
	ld   d, $d7                                      ; $6934: $16 $d7
	ld   a, a                                        ; $6936: $7f
	call nc, $a56c                                   ; $6937: $d4 $6c $a5
	xor  h                                           ; $693a: $ac
	ld   h, c                                        ; $693b: $61
	jr   jr_0b3_6903                                 ; $693c: $18 $c5

	xor  a                                           ; $693e: $af
	and  h                                           ; $693f: $a4
	sbc  [hl]                                        ; $6940: $9e
	ld   [hl], l                                     ; $6941: $75
	cp   d                                           ; $6942: $ba
	ld   b, c                                        ; $6943: $41
	ld   a, [de]                                     ; $6944: $1a
	or   h                                           ; $6945: $b4
	rst  JumpTable                                         ; $6946: $df
	add  [hl]                                        ; $6947: $86
	xor  l                                           ; $6948: $ad
	ld   h, a                                        ; $6949: $67
	cp   c                                           ; $694a: $b9
	ld   hl, $954a                                   ; $694b: $21 $4a $95
	rst  $38                                         ; $694e: $ff
	ld   h, a                                        ; $694f: $67
	call z, $b758                                    ; $6950: $cc $58 $b7
	ld   de, $566c                                   ; $6953: $11 $6c $56
	db   $fc                                         ; $6956: $fc
	ld   l, c                                        ; $6957: $69
	jp   c, $b558                                    ; $6958: $da $58 $b5

	ld   de, $487b                                   ; $695b: $11 $7b $48
	ld   a, [$ea7a]                                  ; $695e: $fa $7a $ea
	ld   l, c                                        ; $6961: $69
	and  h                                           ; $6962: $a4
	ld   [de], a                                     ; $6963: $12
	adc  c                                           ; $6964: $89
	ld   c, e                                        ; $6965: $4b
	ld   a, [$e88b]                                  ; $6966: $fa $8b $e8
	ld   a, d                                        ; $6969: $7a
	add  e                                           ; $696a: $83
	inc  d                                           ; $696b: $14
	sub  a                                           ; $696c: $97
	ld   e, h                                        ; $696d: $5c
	ret                                              ; $696e: $c9


	sbc  h                                           ; $696f: $9c
	ret  c                                           ; $6970: $d8

	adc  d                                           ; $6971: $8a
	ld   [hl], e                                     ; $6972: $73
	ld   [hl], $87                                   ; $6973: $36 $87
	ld   e, c                                        ; $6975: $59
	sbc  b                                           ; $6976: $98
	adc  e                                           ; $6977: $8b
	xor  c                                           ; $6978: $a9
	adc  c                                           ; $6979: $89
	add  [hl]                                        ; $697a: $86
	ld   h, a                                        ; $697b: $67
	adc  b                                           ; $697c: $88
	ld   a, b                                        ; $697d: $78
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	adc  b                                           ; $6980: $88
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	ld   [hl], a                                     ; $6983: $77
	adc  b                                           ; $6984: $88
	adc  c                                           ; $6985: $89
	adc  b                                           ; $6986: $88
	add  a                                           ; $6987: $87
	adc  b                                           ; $6988: $88
	add  a                                           ; $6989: $87
	adc  b                                           ; $698a: $88
	ld   a, b                                        ; $698b: $78
	adc  c                                           ; $698c: $89
	adc  c                                           ; $698d: $89
	adc  b                                           ; $698e: $88
	add  a                                           ; $698f: $87
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	adc  b                                           ; $6993: $88
	adc  b                                           ; $6994: $88
	adc  b                                           ; $6995: $88
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	adc  b                                           ; $6998: $88
	adc  c                                           ; $6999: $89
	sbc  b                                           ; $699a: $98
	adc  b                                           ; $699b: $88
	adc  b                                           ; $699c: $88
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	sbc  b                                           ; $69a0: $98
	adc  c                                           ; $69a1: $89
	sbc  b                                           ; $69a2: $98
	adc  b                                           ; $69a3: $88
	adc  b                                           ; $69a4: $88
	ld   a, b                                        ; $69a5: $78
	adc  b                                           ; $69a6: $88
	adc  c                                           ; $69a7: $89
	sbc  b                                           ; $69a8: $98
	adc  c                                           ; $69a9: $89
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	sbc  b                                           ; $69af: $98
	sbc  b                                           ; $69b0: $98
	adc  b                                           ; $69b1: $88
	adc  b                                           ; $69b2: $88
	adc  b                                           ; $69b3: $88
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	sbc  c                                           ; $69b7: $99
	adc  b                                           ; $69b8: $88
	adc  b                                           ; $69b9: $88
	ld   a, b                                        ; $69ba: $78
	adc  b                                           ; $69bb: $88
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	sbc  c                                           ; $69bf: $99
	adc  b                                           ; $69c0: $88
	adc  b                                           ; $69c1: $88
	ld   a, b                                        ; $69c2: $78
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	add  a                                           ; $69c5: $87
	adc  b                                           ; $69c6: $88
	sbc  b                                           ; $69c7: $98
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	adc  b                                           ; $69cc: $88
	add  a                                           ; $69cd: $87
	adc  b                                           ; $69ce: $88
	sbc  b                                           ; $69cf: $98
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
	adc  c                                           ; $69de: $89
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	adc  b                                           ; $69e4: $88
	adc  b                                           ; $69e5: $88
	adc  c                                           ; $69e6: $89
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

Jump_0b3_6afd:
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
	sbc  c                                           ; $6cd1: $99
	adc  b                                           ; $6cd2: $88
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	sbc  c                                           ; $6cd5: $99
	adc  b                                           ; $6cd6: $88
	adc  b                                           ; $6cd7: $88
	adc  b                                           ; $6cd8: $88
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	ld   a, b                                        ; $6cdb: $78
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	add  a                                           ; $6cde: $87
	add  a                                           ; $6cdf: $87
	ld   [hl], a                                     ; $6ce0: $77
	add  a                                           ; $6ce1: $87
	adc  c                                           ; $6ce2: $89
	sbc  c                                           ; $6ce3: $99
	sbc  c                                           ; $6ce4: $99
	ld   h, [hl]                                     ; $6ce5: $66
	sub  a                                           ; $6ce6: $97
	ld   e, d                                        ; $6ce7: $5a
	sub  [hl]                                        ; $6ce8: $96
	adc  c                                           ; $6ce9: $89
	add  a                                           ; $6cea: $87
	cp   d                                           ; $6ceb: $ba
	sbc  e                                           ; $6cec: $9b
	cp   b                                           ; $6ced: $b8
	ld   h, [hl]                                     ; $6cee: $66
	halt                                             ; $6cef: $76
	ld   c, b                                        ; $6cf0: $48
	ld   [hl], l                                     ; $6cf1: $75
	adc  c                                           ; $6cf2: $89
	adc  c                                           ; $6cf3: $89
	db   $db                                         ; $6cf4: $db
	cp   l                                           ; $6cf5: $bd
	sub  a                                           ; $6cf6: $97
	ld   b, l                                        ; $6cf7: $45
	ld   h, c                                        ; $6cf8: $61
	ld   c, b                                        ; $6cf9: $48
	ld   b, [hl]                                     ; $6cfa: $46
	sbc  e                                           ; $6cfb: $9b
	xor  l                                           ; $6cfc: $ad
	ei                                               ; $6cfd: $fb
	call c, Call_0b3_4673                            ; $6cfe: $dc $73 $46
	ld   de, $5b84                                   ; $6d01: $11 $84 $5b
	db   $db                                         ; $6d04: $db
	rst  $38                                         ; $6d05: $ff
	call z, $13d6                                    ; $6d06: $cc $d6 $13
	ld   b, c                                        ; $6d09: $41
	jr   jr_0b3_6d52                                 ; $6d0a: $18 $46

	rst  JumpTable                                         ; $6d0c: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d0d: $cf
	ei                                               ; $6d0e: $fb
	sla  c                                           ; $6d0f: $cb $21
	ld   b, c                                        ; $6d11: $41
	dec  d                                           ; $6d12: $15
	add  l                                           ; $6d13: $85
	sbc  a                                           ; $6d14: $9f
	cp   $fe                                         ; $6d15: $fe $fe
	xor  d                                           ; $6d17: $aa
	ld   b, c                                        ; $6d18: $41
	ld   [de], a                                     ; $6d19: $12
	ld   [de], a                                     ; $6d1a: $12
	adc  b                                           ; $6d1b: $88
	sbc  a                                           ; $6d1c: $9f
	cp   $ff                                         ; $6d1d: $fe $ff
	and  a                                           ; $6d1f: $a7
	ld   b, c                                        ; $6d20: $41
	ld   de, $9a13                                   ; $6d21: $11 $13 $9a
	cp   a                                           ; $6d24: $bf
	rst  $38                                         ; $6d25: $ff
	db   $fd                                         ; $6d26: $fd
	sub  l                                           ; $6d27: $95
	ld   de, $1511                                   ; $6d28: $11 $11 $15
	xor  h                                           ; $6d2b: $ac
	rst  $38                                         ; $6d2c: $ff
	rst  $38                                         ; $6d2d: $ff
	ei                                               ; $6d2e: $fb
	ld   [hl], d                                     ; $6d2f: $72
	ld   de, $1911                                   ; $6d30: $11 $11 $19
	cp   [hl]                                        ; $6d33: $be
	rst  $38                                         ; $6d34: $ff
	rst  $38                                         ; $6d35: $ff
	cp   b                                           ; $6d36: $b8
	ld   sp, $1111                                   ; $6d37: $31 $11 $11
	ld   a, e                                        ; $6d3a: $7b
	rst  $38                                         ; $6d3b: $ff
	rst  $38                                         ; $6d3c: $ff
	ei                                               ; $6d3d: $fb
	ld   [hl], l                                     ; $6d3e: $75
	ld   de, $1711                                   ; $6d3f: $11 $11 $17
	rst  $28                                         ; $6d42: $ef
	rst  $38                                         ; $6d43: $ff
	rst  $38                                         ; $6d44: $ff
	rst  ToBoot                                         ; $6d45: $c7
	ld   hl, $1111                                   ; $6d46: $21 $11 $11
	sbc  a                                           ; $6d49: $9f
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	ld   a, [$1151]                                  ; $6d4c: $fa $51 $11
	ld   de, $ff2b                                   ; $6d4f: $11 $2b $ff

jr_0b3_6d52:
	rst  $38                                         ; $6d52: $ff
	db   $fd                                         ; $6d53: $fd
	ld   [hl], d                                     ; $6d54: $72
	ld   de, $1711                                   ; $6d55: $11 $11 $17
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	db   $fc                                         ; $6d5a: $fc
	and  e                                           ; $6d5b: $a3
	ld   de, $1711                                   ; $6d5c: $11 $11 $17
	rst  $38                                         ; $6d5f: $ff
	rst  $38                                         ; $6d60: $ff
	db   $fd                                         ; $6d61: $fd
	or   e                                           ; $6d62: $b3
	ld   de, $1511                                   ; $6d63: $11 $11 $15
	rst  JumpTable                                         ; $6d66: $df
	rst  $38                                         ; $6d67: $ff
	cp   $a5                                         ; $6d68: $fe $a5
	ld   de, $1211                                   ; $6d6a: $11 $11 $12
	rst  $28                                         ; $6d6d: $ef
	rst  $38                                         ; $6d6e: $ff
	rst  $38                                         ; $6d6f: $ff
	add  a                                           ; $6d70: $87
	ld   de, $1111                                   ; $6d71: $11 $11 $11
	rst  $38                                         ; $6d74: $ff
	rst  $38                                         ; $6d75: $ff
	rst  $38                                         ; $6d76: $ff
	adc  b                                           ; $6d77: $88
	ld   de, $1111                                   ; $6d78: $11 $11 $11
	rst  $38                                         ; $6d7b: $ff
	rst  $38                                         ; $6d7c: $ff
	rst  $38                                         ; $6d7d: $ff
	add  a                                           ; $6d7e: $87
	ld   de, $2111                                   ; $6d7f: $11 $11 $21
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	rst  $38                                         ; $6d84: $ff
	ld   [hl], a                                     ; $6d85: $77
	ld   de, $3111                                   ; $6d86: $11 $11 $31
	rst  $38                                         ; $6d89: $ff
	rst  $38                                         ; $6d8a: $ff
	rst  $38                                         ; $6d8b: $ff
	ld   d, a                                        ; $6d8c: $57
	ld   de, $4111                                   ; $6d8d: $11 $11 $41
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	ld   e, b                                        ; $6d93: $58
	ld   de, $5111                                   ; $6d94: $11 $11 $51
	rst  $38                                         ; $6d97: $ff
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	jr   c, jr_0b3_6dad                              ; $6d9a: $38 $11

	ld   de, $ff54                                   ; $6d9c: $11 $54 $ff
	rst  $38                                         ; $6d9f: $ff
	cp   $45                                         ; $6da0: $fe $45
	ld   de, $6511                                   ; $6da2: $11 $11 $65
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	ei                                               ; $6da7: $fb
	dec  h                                           ; $6da8: $25
	ld   de, $6711                                   ; $6da9: $11 $11 $67
	rst  $38                                         ; $6dac: $ff

jr_0b3_6dad:
	rst  $38                                         ; $6dad: $ff
	db   $db                                         ; $6dae: $db
	dec  h                                           ; $6daf: $25
	ld   de, $7711                                   ; $6db0: $11 $11 $77
	rst  $38                                         ; $6db3: $ff
	rst  $38                                         ; $6db4: $ff
	jp   c, $1135                                    ; $6db5: $da $35 $11

	ld   [de], a                                     ; $6db8: $12
	ld   l, d                                        ; $6db9: $6a
	rst  $38                                         ; $6dba: $ff
	rst  $38                                         ; $6dbb: $ff
	call c, $1143                                    ; $6dbc: $dc $43 $11
	ld   [de], a                                     ; $6dbf: $12
	ld   l, d                                        ; $6dc0: $6a
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	db   $ec                                         ; $6dc3: $ec
	ld   [hl-], a                                    ; $6dc4: $32
	ld   de, $6912                                   ; $6dc5: $11 $12 $69
	rst  $38                                         ; $6dc8: $ff
	rst  $38                                         ; $6dc9: $ff
	cp   h                                           ; $6dca: $bc
	ld   b, h                                        ; $6dcb: $44
	ld   de, $7911                                   ; $6dcc: $11 $11 $79
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	db   $ed                                         ; $6dd1: $ed
	ld   d, e                                        ; $6dd2: $53
	ld   de, $6711                                   ; $6dd3: $11 $11 $67
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	sbc  $84                                         ; $6dd8: $de $84
	ld   hl, $3611                                   ; $6dda: $21 $11 $36
	cp   a                                           ; $6ddd: $bf
	rst  $38                                         ; $6dde: $ff
	db   $fd                                         ; $6ddf: $fd
	or   l                                           ; $6de0: $b5
	ld   sp, $1511                                   ; $6de1: $31 $11 $15
	adc  [hl]                                        ; $6de4: $8e
	rst  $38                                         ; $6de5: $ff
	db   $fd                                         ; $6de6: $fd
	jp   c, $1141                                    ; $6de7: $da $41 $11

	ld   [de], a                                     ; $6dea: $12
	ld   e, d                                        ; $6deb: $5a
	rst  $28                                         ; $6dec: $ef
	rst  $38                                         ; $6ded: $ff
	db   $ec                                         ; $6dee: $ec
	ld   [hl], c                                     ; $6def: $71
	ld   de, $5711                                   ; $6df0: $11 $11 $57
	xor  a                                           ; $6df3: $af
	rst  $38                                         ; $6df4: $ff
	db   $fd                                         ; $6df5: $fd
	or   [hl]                                        ; $6df6: $b6
	ld   b, c                                        ; $6df7: $41
	ld   de, $7c13                                   ; $6df8: $11 $13 $7c
	rst  JumpTable                                         ; $6dfb: $df
	rst  $38                                         ; $6dfc: $ff
	db   $db                                         ; $6dfd: $db
	ld   b, d                                        ; $6dfe: $42
	ld   de, $5a11                                   ; $6dff: $11 $11 $5a
	rst  JumpTable                                         ; $6e02: $df
	rst  $38                                         ; $6e03: $ff
	ei                                               ; $6e04: $fb
	and  l                                           ; $6e05: $a5
	ld   hl, $1611                                   ; $6e06: $21 $11 $16
	xor  h                                           ; $6e09: $ac
	rst  $38                                         ; $6e0a: $ff
	rst  $38                                         ; $6e0b: $ff
	cp   c                                           ; $6e0c: $b9
	ld   b, d                                        ; $6e0d: $42
	ld   de, $7824                                   ; $6e0e: $11 $24 $78
	xor  a                                           ; $6e11: $af
	rst  $28                                         ; $6e12: $ef
	ei                                               ; $6e13: $fb
	or   l                                           ; $6e14: $b5
	ld   hl, $1612                                   ; $6e15: $21 $12 $16
	sbc  h                                           ; $6e18: $9c
	rst  $38                                         ; $6e19: $ff
	rst  $38                                         ; $6e1a: $ff
	cp   b                                           ; $6e1b: $b8
	inc  sp                                          ; $6e1c: $33
	ld   hl, $6723                                   ; $6e1d: $21 $23 $67
	xor  [hl]                                        ; $6e20: $ae
	rst  $28                                         ; $6e21: $ef
	db   $ed                                         ; $6e22: $ed
	sub  a                                           ; $6e23: $97
	ld   sp, $3511                                   ; $6e24: $31 $11 $35
	adc  e                                           ; $6e27: $8b
	db   $ed                                         ; $6e28: $ed
	rst  $38                                         ; $6e29: $ff
	jp   z, $1174                                    ; $6e2a: $ca $74 $11

	ld   [hl+], a                                    ; $6e2d: $22
	ld   e, b                                        ; $6e2e: $58
	ld   l, l                                        ; $6e2f: $6d
	db   $ed                                         ; $6e30: $ed
	ei                                               ; $6e31: $fb
	ret  z                                           ; $6e32: $c8

	ld   b, c                                        ; $6e33: $41
	inc  de                                          ; $6e34: $13
	rla                                              ; $6e35: $17
	ld   [hl], a                                     ; $6e36: $77
	db   $ed                                         ; $6e37: $ed
	rst  JumpTable                                         ; $6e38: $df
	jp   c, Jump_0b3_4195                            ; $6e39: $da $95 $41

	inc  de                                          ; $6e3c: $13
	ld   [hl], $9c                                   ; $6e3d: $36 $9c
	db   $dd                                         ; $6e3f: $dd
	db   $ed                                         ; $6e40: $ed
	and  a                                           ; $6e41: $a7
	ld   h, e                                        ; $6e42: $63
	ld   [hl-], a                                    ; $6e43: $32
	ld   b, [hl]                                     ; $6e44: $46
	ld   l, d                                        ; $6e45: $6a
	sbc  e                                           ; $6e46: $9b
	call $a8cd                                       ; $6e47: $cd $cd $a8
	ld   d, h                                        ; $6e4a: $54
	ld   d, c                                        ; $6e4b: $51
	ld   b, l                                        ; $6e4c: $45
	adc  e                                           ; $6e4d: $8b
	sbc  l                                           ; $6e4e: $9d
	db   $ed                                         ; $6e4f: $ed
	cp   d                                           ; $6e50: $ba
	add  [hl]                                        ; $6e51: $86
	ld   h, [hl]                                     ; $6e52: $66
	inc  sp                                          ; $6e53: $33
	ld   b, h                                        ; $6e54: $44
	add  [hl]                                        ; $6e55: $86
	adc  $cf                                         ; $6e56: $ce $cf
	cp   c                                           ; $6e58: $b9
	ld   [hl], h                                     ; $6e59: $74
	ld   b, d                                        ; $6e5a: $42
	inc  [hl]                                        ; $6e5b: $34
	ld   b, a                                        ; $6e5c: $47
	xor  b                                           ; $6e5d: $a8
	xor  [hl]                                        ; $6e5e: $ae
	call $76e8                                       ; $6e5f: $cd $e8 $76
	ld   b, e                                        ; $6e62: $43
	inc  d                                           ; $6e63: $14
	ld   [hl], $9b                                   ; $6e64: $36 $9b
	xor  $fc                                         ; $6e66: $ee $fc
	rst  ToBoot                                         ; $6e68: $c7
	ld   b, l                                        ; $6e69: $45
	inc  sp                                          ; $6e6a: $33
	inc  hl                                          ; $6e6b: $23
	ld   h, e                                        ; $6e6c: $63
	xor  a                                           ; $6e6d: $af
	rst  JumpTable                                         ; $6e6e: $df
	call Call_0b3_7395                               ; $6e6f: $cd $95 $73
	ld   b, d                                        ; $6e72: $42
	inc  [hl]                                        ; $6e73: $34
	ld   e, e                                        ; $6e74: $5b
	cp   l                                           ; $6e75: $bd
	db   $ec                                         ; $6e76: $ec
	res  3, b                                        ; $6e77: $cb $98
	ld   h, [hl]                                     ; $6e79: $66
	ld   sp, $5946                                   ; $6e7a: $31 $46 $59
	call z, $fade                                    ; $6e7d: $cc $de $fa
	sub  a                                           ; $6e80: $97
	ld   b, e                                        ; $6e81: $43
	ld   [de], a                                     ; $6e82: $12
	ld   b, l                                        ; $6e83: $45
	adc  e                                           ; $6e84: $8b
	db   $dd                                         ; $6e85: $dd
	db   $db                                         ; $6e86: $db
	cp   d                                           ; $6e87: $ba
	halt                                             ; $6e88: $76
	inc  [hl]                                        ; $6e89: $34
	ld   [de], a                                     ; $6e8a: $12
	ld   b, a                                        ; $6e8b: $47
	adc  e                                           ; $6e8c: $8b
	ei                                               ; $6e8d: $fb
	call c, $67b7                                    ; $6e8e: $dc $b7 $67
	ld   [hl-], a                                    ; $6e91: $32
	inc  sp                                          ; $6e92: $33
	ld   l, d                                        ; $6e93: $6a
	adc  e                                           ; $6e94: $8b
	db   $eb                                         ; $6e95: $eb
	set  0, a                                        ; $6e96: $cb $c7
	halt                                             ; $6e98: $76
	ld   h, e                                        ; $6e99: $63
	dec  d                                           ; $6e9a: $15
	ld   b, a                                        ; $6e9b: $47
	sbc  l                                           ; $6e9c: $9d
	call z, $9adb                                    ; $6e9d: $cc $db $9a
	ld   [hl], h                                     ; $6ea0: $74
	ld   [hl], e                                     ; $6ea1: $73
	inc  h                                           ; $6ea2: $24
	ld   l, c                                        ; $6ea3: $69
	ld   e, l                                        ; $6ea4: $5d
	jp   c, $abed                                    ; $6ea5: $da $ed $ab

	sub  [hl]                                        ; $6ea8: $96
	ld   b, c                                        ; $6ea9: $41
	ld   de, $9d47                                   ; $6eaa: $11 $47 $9d
	sbc  $fc                                         ; $6ead: $de $fc
	cp   d                                           ; $6eaf: $ba
	ld   [hl], l                                     ; $6eb0: $75
	ld   sp, $6912                                   ; $6eb1: $31 $12 $69
	xor  [hl]                                        ; $6eb4: $ae
	db   $eb                                         ; $6eb5: $eb
	db   $fd                                         ; $6eb6: $fd
	sbc  b                                           ; $6eb7: $98
	ld   h, h                                        ; $6eb8: $64
	ld   de, $7813                                   ; $6eb9: $11 $13 $78
	adc  $de                                         ; $6ebc: $ce $de
	res  6, [hl]                                     ; $6ebe: $cb $b6
	ld   d, l                                        ; $6ec0: $55
	inc  sp                                          ; $6ec1: $33
	inc  h                                           ; $6ec2: $24
	ld   [hl], a                                     ; $6ec3: $77
	call $ceee                                       ; $6ec4: $cd $ee $ce
	ld   h, [hl]                                     ; $6ec7: $66
	add  e                                           ; $6ec8: $83
	ld   [hl-], a                                    ; $6ec9: $32
	ld   [hl-], a                                    ; $6eca: $32
	ld   a, c                                        ; $6ecb: $79
	adc  l                                           ; $6ecc: $8d
	sbc  $de                                         ; $6ecd: $de $de
	and  l                                           ; $6ecf: $a5
	ld   h, h                                        ; $6ed0: $64
	ld   de, $7a33                                   ; $6ed1: $11 $33 $7a
	sbc  [hl]                                        ; $6ed4: $9e
	jp   c, $89dd                                    ; $6ed5: $da $dd $89

	sub  l                                           ; $6ed8: $95
	ld   sp, $6612                                   ; $6ed9: $31 $12 $66
	cp   a                                           ; $6edc: $bf
	db   $fd                                         ; $6edd: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ede: $cf
	sbc  b                                           ; $6edf: $98
	ld   h, e                                        ; $6ee0: $63
	ld   sp, $6a44                                   ; $6ee1: $31 $44 $6a
	sbc  [hl]                                        ; $6ee4: $9e
	adc  $cb                                         ; $6ee5: $ce $cb
	sub  [hl]                                        ; $6ee7: $96
	ld   [hl], l                                     ; $6ee8: $75
	ld   d, c                                        ; $6ee9: $51
	ld   bc, $8f69                                   ; $6eea: $01 $69 $8f
	ei                                               ; $6eed: $fb
	db   $ec                                         ; $6eee: $ec
	halt                                             ; $6eef: $76
	ld   h, h                                        ; $6ef0: $64
	ld   b, c                                        ; $6ef1: $41
	ld   b, e                                        ; $6ef2: $43
	ld   l, c                                        ; $6ef3: $69
	ld   a, l                                        ; $6ef4: $7d
	db   $ec                                         ; $6ef5: $ec
	sbc  $a6                                         ; $6ef6: $de $a6
	add  h                                           ; $6ef8: $84
	ld   b, d                                        ; $6ef9: $42
	ld   [de], a                                     ; $6efa: $12
	ld   l, c                                        ; $6efb: $69
	sbc  l                                           ; $6efc: $9d
	ld   [$98bf], a                                  ; $6efd: $ea $bf $98
	sub  a                                           ; $6f00: $97
	inc  hl                                          ; $6f01: $23
	ld   de, $9e67                                   ; $6f02: $11 $67 $9e
	ei                                               ; $6f05: $fb
	db   $dd                                         ; $6f06: $dd
	ld   l, c                                        ; $6f07: $69
	and  [hl]                                        ; $6f08: $a6
	ld   b, d                                        ; $6f09: $42
	ld   de, $8d48                                   ; $6f0a: $11 $48 $8d
	ld   a, [$88fe]                                  ; $6f0d: $fa $fe $88
	ld   d, [hl]                                     ; $6f10: $56

Jump_0b3_6f11:
	ld   d, h                                        ; $6f11: $54
	ld   de, $ac55                                   ; $6f12: $11 $55 $ac
	adc  $cd                                         ; $6f15: $ce $cd
	cp   e                                           ; $6f17: $bb
	add  l                                           ; $6f18: $85
	ld   b, c                                        ; $6f19: $41
	ld   [de], a                                     ; $6f1a: $12
	ld   b, a                                        ; $6f1b: $47
	xor  e                                           ; $6f1c: $ab
	rst  $28                                         ; $6f1d: $ef
	call z, Call_0b3_77c6                            ; $6f1e: $cc $c6 $77
	ld   d, l                                        ; $6f21: $55
	inc  hl                                          ; $6f22: $23
	dec  d                                           ; $6f23: $15
	add  a                                           ; $6f24: $87
	rst  $38                                         ; $6f25: $ff
	rst  JumpTable                                         ; $6f26: $df
	and  a                                           ; $6f27: $a7
	ld   h, [hl]                                     ; $6f28: $66
	ld   h, l                                        ; $6f29: $65
	inc  [hl]                                        ; $6f2a: $34
	ld   [hl], $78                                   ; $6f2b: $36 $78
	cp   [hl]                                        ; $6f2d: $be
	set  7, l                                        ; $6f2e: $cb $fd
	adc  c                                           ; $6f30: $89
	ld   d, h                                        ; $6f31: $54
	ld   de, $9834                                   ; $6f32: $11 $34 $98
	rst  JumpTable                                         ; $6f35: $df
	adc  $bb                                         ; $6f36: $ce $bb
	add  [hl]                                        ; $6f38: $86
	add  l                                           ; $6f39: $85
	ld   b, d                                        ; $6f3a: $42
	inc  [hl]                                        ; $6f3b: $34
	ld   l, c                                        ; $6f3c: $69
	sbc  [hl]                                        ; $6f3d: $9e
	db   $ec                                         ; $6f3e: $ec
	call c, Call_0b3_7695                            ; $6f3f: $dc $95 $76
	ld   b, d                                        ; $6f42: $42
	inc  sp                                          ; $6f43: $33
	ld   c, c                                        ; $6f44: $49
	sbc  e                                           ; $6f45: $9b
	cp   $da                                         ; $6f46: $fe $da
	cp   c                                           ; $6f48: $b9
	ld   d, h                                        ; $6f49: $54
	ld   b, e                                        ; $6f4a: $43
	inc  d                                           ; $6f4b: $14
	adc  c                                           ; $6f4c: $89
	adc  e                                           ; $6f4d: $8b
	reti                                             ; $6f4e: $d9


	cp   a                                           ; $6f4f: $bf
	xor  c                                           ; $6f50: $a9
	and  [hl]                                        ; $6f51: $a6
	ld   b, d                                        ; $6f52: $42
	inc  de                                          ; $6f53: $13
	scf                                              ; $6f54: $37
	cp   c                                           ; $6f55: $b9
	call c, $cb9b                                    ; $6f56: $dc $9b $cb
	sbc  c                                           ; $6f59: $99
	ld   h, e                                        ; $6f5a: $63
	ld   hl, $9926                                   ; $6f5b: $21 $26 $99
	rst  $28                                         ; $6f5e: $ef
	xor  l                                           ; $6f5f: $ad
	rst  $10                                         ; $6f60: $d7
	adc  d                                           ; $6f61: $8a
	ld   h, [hl]                                     ; $6f62: $66
	ld   sp, $8813                                   ; $6f63: $31 $13 $88
	rst  $28                                         ; $6f66: $ef
	xor  h                                           ; $6f67: $ac
	cp   d                                           ; $6f68: $ba
	add  a                                           ; $6f69: $87
	halt                                             ; $6f6a: $76
	ld   b, d                                        ; $6f6b: $42
	ld   [hl-], a                                    ; $6f6c: $32
	ld   a, b                                        ; $6f6d: $78
	sbc  [hl]                                        ; $6f6e: $9e
	db   $fd                                         ; $6f6f: $fd
	sbc  $86                                         ; $6f70: $de $86
	ld   d, [hl]                                     ; $6f72: $56
	ld   sp, $6a44                                   ; $6f73: $31 $44 $6a
	cp   e                                           ; $6f76: $bb
	db   $eb                                         ; $6f77: $eb
	sbc  l                                           ; $6f78: $9d
	ld   a, d                                        ; $6f79: $7a
	sub  l                                           ; $6f7a: $95
	ld   h, h                                        ; $6f7b: $64
	ld   de, $7948                                   ; $6f7c: $11 $48 $79
	db   $fd                                         ; $6f7f: $fd
	cp   h                                           ; $6f80: $bc
	cp   c                                           ; $6f81: $b9
	ld   e, c                                        ; $6f82: $59
	ld   h, e                                        ; $6f83: $63
	inc  [hl]                                        ; $6f84: $34
	inc  [hl]                                        ; $6f85: $34
	xor  b                                           ; $6f86: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f87: $cf
	xor  [hl]                                        ; $6f88: $ae
	rst  ToBoot                                         ; $6f89: $c7
	add  a                                           ; $6f8a: $87
	ld   d, h                                        ; $6f8b: $54
	ld   d, d                                        ; $6f8c: $52
	ld   [hl], $89                                   ; $6f8d: $36 $89
	xor  a                                           ; $6f8f: $af
	jp   c, Jump_0b3_75eb                            ; $6f90: $da $eb $75

	ld   [hl], l                                     ; $6f93: $75
	inc  h                                           ; $6f94: $24
	ld   b, h                                        ; $6f95: $44
	ld   a, c                                        ; $6f96: $79
	sbc  [hl]                                        ; $6f97: $9e
	ret  c                                           ; $6f98: $d8

	jp   z, $7798                                    ; $6f99: $ca $98 $77

	ld   b, l                                        ; $6f9c: $45
	ld   [hl+], a                                    ; $6f9d: $22
	add  [hl]                                        ; $6f9e: $86
	adc  e                                           ; $6f9f: $8b
	db   $fd                                         ; $6fa0: $fd
	sbc  h                                           ; $6fa1: $9c
	and  [hl]                                        ; $6fa2: $a6
	ld   l, c                                        ; $6fa3: $69
	ld   [hl], l                                     ; $6fa4: $75
	ld   d, e                                        ; $6fa5: $53
	dec  [hl]                                        ; $6fa6: $35
	ld   a, b                                        ; $6fa7: $78
	sbc  $bb                                         ; $6fa8: $de $bb
	ret  z                                           ; $6faa: $c8

	ld   a, c                                        ; $6fab: $79
	ld   h, a                                        ; $6fac: $67
	ld   [hl-], a                                    ; $6fad: $32
	ld   [hl], $87                                   ; $6fae: $36 $87
	cp   [hl]                                        ; $6fb0: $be
	ei                                               ; $6fb1: $fb
	cp   h                                           ; $6fb2: $bc
	ld   e, c                                        ; $6fb3: $59
	halt                                             ; $6fb4: $76
	ld   b, d                                        ; $6fb5: $42
	ld   b, d                                        ; $6fb6: $42
	ld   a, d                                        ; $6fb7: $7a
	xor  l                                           ; $6fb8: $ad
	db   $dd                                         ; $6fb9: $dd
	sbc  h                                           ; $6fba: $9c
	rst  ToBoot                                         ; $6fbb: $c7
	ld   h, a                                        ; $6fbc: $67
	ld   b, c                                        ; $6fbd: $41
	dec  h                                           ; $6fbe: $25
	ld   e, d                                        ; $6fbf: $5a
	jp   z, Jump_0b3_6afd                            ; $6fc0: $ca $fd $6a

	or   l                                           ; $6fc3: $b5
	ld   a, d                                        ; $6fc4: $7a
	ld   h, l                                        ; $6fc5: $65
	ld   b, c                                        ; $6fc6: $41
	ld   h, $9b                                      ; $6fc7: $26 $9b
	rst  $38                                         ; $6fc9: $ff
	xor  e                                           ; $6fca: $ab
	push bc                                          ; $6fcb: $c5
	ld   c, c                                        ; $6fcc: $49
	ld   [hl], h                                     ; $6fcd: $74
	ld   h, l                                        ; $6fce: $65
	inc  d                                           ; $6fcf: $14
	add  [hl]                                        ; $6fd0: $86
	cp   a                                           ; $6fd1: $bf
	call c, Call_0b3_57dc                            ; $6fd2: $dc $dc $57
	ld   d, e                                        ; $6fd5: $53
	ld   h, d                                        ; $6fd6: $62
	jr   c, @+$79                                    ; $6fd7: $38 $77

	xor  l                                           ; $6fd9: $ad
	set  5, e                                        ; $6fda: $cb $eb
	sbc  c                                           ; $6fdc: $99
	ld   h, l                                        ; $6fdd: $65
	ld   d, h                                        ; $6fde: $54
	inc  d                                           ; $6fdf: $14
	ld   a, b                                        ; $6fe0: $78
	xor  l                                           ; $6fe1: $ad
	ld   [$aaa9], a                                  ; $6fe2: $ea $a9 $aa
	add  [hl]                                        ; $6fe5: $86
	ld   h, l                                        ; $6fe6: $65
	ld   [bc], a                                     ; $6fe7: $02
	scf                                              ; $6fe8: $37
	xor  c                                           ; $6fe9: $a9
	db   $ed                                         ; $6fea: $ed
	cp   e                                           ; $6feb: $bb
	sbc  b                                           ; $6fec: $98
	ld   [hl], l                                     ; $6fed: $75
	halt                                             ; $6fee: $76
	dec  h                                           ; $6fef: $25
	ld   b, d                                        ; $6ff0: $42
	xor  e                                           ; $6ff1: $ab
	cp   l                                           ; $6ff2: $bd
	db   $eb                                         ; $6ff3: $eb
	sbc  d                                           ; $6ff4: $9a
	ld   [hl], l                                     ; $6ff5: $75
	ld   [hl], l                                     ; $6ff6: $75
	ld   h, d                                        ; $6ff7: $62
	jr   c, jr_0b3_7044                              ; $6ff8: $38 $4a

	adc  h                                           ; $6ffa: $8c
	ld   sp, hl                                      ; $6ffb: $f9
	cp   h                                           ; $6ffc: $bc
	ld   [hl], l                                     ; $6ffd: $75
	sub  l                                           ; $6ffe: $95
	jr   c, jr_0b3_7025                              ; $6fff: $38 $24

	ld   a, c                                        ; $7001: $79
	ld   a, e                                        ; $7002: $7b
	ld   [$86ca], a                                  ; $7003: $ea $ca $86
	ld   h, [hl]                                     ; $7006: $66
	ld   [hl], $53                                   ; $7007: $36 $53
	ld   a, d                                        ; $7009: $7a
	adc  c                                           ; $700a: $89
	ld   [$a9bc], a                                  ; $700b: $ea $bc $a9
	sbc  b                                           ; $700e: $98
	ld   b, l                                        ; $700f: $45
	ld   d, c                                        ; $7010: $51
	ld   c, b                                        ; $7011: $48
	ld   a, c                                        ; $7012: $79
	db   $db                                         ; $7013: $db
	call z, $949b                                    ; $7014: $cc $9b $94
	sbc  b                                           ; $7017: $98
	inc  h                                           ; $7018: $24
	ld   h, d                                        ; $7019: $62
	ld   l, l                                        ; $701a: $6d
	sbc  d                                           ; $701b: $9a
	db   $eb                                         ; $701c: $eb
	sbc  h                                           ; $701d: $9c
	sub  l                                           ; $701e: $95
	halt                                             ; $701f: $76
	ld   d, [hl]                                     ; $7020: $56
	dec  h                                           ; $7021: $25
	ld   b, [hl]                                     ; $7022: $46
	and  a                                           ; $7023: $a7
	db   $ed                                         ; $7024: $ed

jr_0b3_7025:
	call z, Call_0b3_7589                            ; $7025: $cc $89 $75
	ld   h, l                                        ; $7028: $65
	inc  hl                                          ; $7029: $23
	ld   h, [hl]                                     ; $702a: $66
	xor  e                                           ; $702b: $ab
	adc  l                                           ; $702c: $8d
	cp   d                                           ; $702d: $ba
	ld   [$5369], a                                  ; $702e: $ea $69 $53
	ld   b, h                                        ; $7031: $44
	ld   b, a                                        ; $7032: $47
	xor  e                                           ; $7033: $ab
	cp   e                                           ; $7034: $bb
	jp   z, $9899                                    ; $7035: $ca $99 $98

	ld   h, a                                        ; $7038: $67
	ld   [hl], h                                     ; $7039: $74
	ld   b, h                                        ; $703a: $44
	ld   c, c                                        ; $703b: $49
	xor  c                                           ; $703c: $a9
	call c, $868b                                    ; $703d: $dc $8b $86
	and  [hl]                                        ; $7040: $a6
	ld   b, a                                        ; $7041: $47
	inc  [hl]                                        ; $7042: $34
	ld   h, [hl]                                     ; $7043: $66

jr_0b3_7044:
	xor  d                                           ; $7044: $aa
	cp   e                                           ; $7045: $bb
	sbc  d                                           ; $7046: $9a
	ld   [hl], a                                     ; $7047: $77
	sbc  c                                           ; $7048: $99
	ld   a, d                                        ; $7049: $7a
	sub  d                                           ; $704a: $92
	ld   d, d                                        ; $704b: $52
	ld   e, d                                        ; $704c: $5a
	ld   a, h                                        ; $704d: $7c
	ld   [$77a9], a                                  ; $704e: $ea $a9 $77
	ld   e, b                                        ; $7051: $58
	ld   h, h                                        ; $7052: $64
	ld   h, h                                        ; $7053: $64
	ld   c, d                                        ; $7054: $4a
	sbc  b                                           ; $7055: $98
	db   $db                                         ; $7056: $db
	sbc  e                                           ; $7057: $9b
	sbc  c                                           ; $7058: $99
	and  [hl]                                        ; $7059: $a6
	ld   d, [hl]                                     ; $705a: $56
	ld   b, h                                        ; $705b: $44
	ld   c, b                                        ; $705c: $48
	xor  c                                           ; $705d: $a9
	xor  l                                           ; $705e: $ad
	rst  $10                                         ; $705f: $d7
	xor  d                                           ; $7060: $aa
	ld   h, a                                        ; $7061: $67
	add  l                                           ; $7062: $85
	ld   h, [hl]                                     ; $7063: $66
	add  hl, hl                                      ; $7064: $29
	ld   l, b                                        ; $7065: $68
	cp   c                                           ; $7066: $b9
	jp   z, Jump_0b3_77ab                            ; $7067: $ca $ab $77

	ld   [hl], l                                     ; $706a: $75
	ld   l, b                                        ; $706b: $68
	ld   d, d                                        ; $706c: $52
	ld   a, d                                        ; $706d: $7a
	ld   l, d                                        ; $706e: $6a
	call z, $967c                                    ; $706f: $cc $7c $96
	and  a                                           ; $7072: $a7
	ld   h, a                                        ; $7073: $67
	ld   d, h                                        ; $7074: $54
	ld   d, l                                        ; $7075: $55
	adc  c                                           ; $7076: $89
	xor  h                                           ; $7077: $ac
	xor  e                                           ; $7078: $ab
	xor  c                                           ; $7079: $a9
	ld   a, d                                        ; $707a: $7a
	add  l                                           ; $707b: $85
	ld   [hl], e                                     ; $707c: $73
	daa                                              ; $707d: $27
	adc  c                                           ; $707e: $89
	sbc  e                                           ; $707f: $9b
	ret                                              ; $7080: $c9


	xor  b                                           ; $7081: $a8
	ld   l, c                                        ; $7082: $69
	add  [hl]                                        ; $7083: $86
	halt                                             ; $7084: $76
	dec  [hl]                                        ; $7085: $35
	ld   [hl], a                                     ; $7086: $77
	cp   d                                           ; $7087: $ba
	call z, Call_0b3_767b                            ; $7088: $cc $7b $76
	halt                                             ; $708b: $76
	ld   [hl], a                                     ; $708c: $77
	ld   h, h                                        ; $708d: $64
	ld   d, a                                        ; $708e: $57
	sbc  b                                           ; $708f: $98
	sbc  e                                           ; $7090: $9b
	jp   z, Jump_0b3_669b                            ; $7091: $ca $9b $66

	sub  h                                           ; $7094: $94
	ld   h, [hl]                                     ; $7095: $66
	ld   c, b                                        ; $7096: $48
	ld   a, d                                        ; $7097: $7a
	adc  b                                           ; $7098: $88
	res  3, d                                        ; $7099: $cb $9a
	sub  [hl]                                        ; $709b: $96
	xor  d                                           ; $709c: $aa
	ld   b, a                                        ; $709d: $47
	ld   d, d                                        ; $709e: $52
	ld   c, d                                        ; $709f: $4a
	xor  b                                           ; $70a0: $a8
	db   $ec                                         ; $70a1: $ec
	sbc  d                                           ; $70a2: $9a
	add  [hl]                                        ; $70a3: $86
	ld   [hl], a                                     ; $70a4: $77
	ld   [hl], a                                     ; $70a5: $77
	ld   h, a                                        ; $70a6: $67
	inc  [hl]                                        ; $70a7: $34
	cp   c                                           ; $70a8: $b9
	ld   a, l                                        ; $70a9: $7d
	xor  b                                           ; $70aa: $a8
	ret  z                                           ; $70ab: $c8

	sbc  b                                           ; $70ac: $98
	halt                                             ; $70ad: $76
	ld   d, l                                        ; $70ae: $55
	dec  [hl]                                        ; $70af: $35
	sbc  e                                           ; $70b0: $9b
	adc  e                                           ; $70b1: $8b
	cp   b                                           ; $70b2: $b8
	sbc  b                                           ; $70b3: $98
	sub  [hl]                                        ; $70b4: $96
	xor  b                                           ; $70b5: $a8
	ld   l, b                                        ; $70b6: $68
	dec  h                                           ; $70b7: $25
	ld   [hl], e                                     ; $70b8: $73
	cp   d                                           ; $70b9: $ba
	sbc  l                                           ; $70ba: $9d
	xor  c                                           ; $70bb: $a9
	add  a                                           ; $70bc: $87
	ld   h, [hl]                                     ; $70bd: $66
	sub  a                                           ; $70be: $97
	ld   d, a                                        ; $70bf: $57
	ld   b, h                                        ; $70c0: $44
	and  [hl]                                        ; $70c1: $a6
	adc  h                                           ; $70c2: $8c
	xor  d                                           ; $70c3: $aa
	cp   e                                           ; $70c4: $bb
	ld   d, a                                        ; $70c5: $57
	sub  d                                           ; $70c6: $92
	ld   a, c                                        ; $70c7: $79
	scf                                              ; $70c8: $37
	sub  l                                           ; $70c9: $95
	xor  d                                           ; $70ca: $aa
	adc  l                                           ; $70cb: $8d
	adc  c                                           ; $70cc: $89
	add  $58                                         ; $70cd: $c6 $58
	ld   d, [hl]                                     ; $70cf: $56
	ld   h, l                                        ; $70d0: $65
	sbc  b                                           ; $70d1: $98
	xor  e                                           ; $70d2: $ab
	sbc  e                                           ; $70d3: $9b
	or   l                                           ; $70d4: $b5
	adc  d                                           ; $70d5: $8a
	ld   a, b                                        ; $70d6: $78
	sub  a                                           ; $70d7: $97
	ld   h, [hl]                                     ; $70d8: $66
	ld   b, l                                        ; $70d9: $45
	sbc  e                                           ; $70da: $9b
	xor  e                                           ; $70db: $ab
	jp   z, $9578                                    ; $70dc: $ca $78 $95

	sbc  d                                           ; $70df: $9a
	ld   l, d                                        ; $70e0: $6a
	ld   [hl], e                                     ; $70e1: $73
	halt                                             ; $70e2: $76
	ld   a, d                                        ; $70e3: $7a
	sbc  h                                           ; $70e4: $9c
	cp   c                                           ; $70e5: $b9
	sbc  b                                           ; $70e6: $98
	ld   h, l                                        ; $70e7: $65
	sub  a                                           ; $70e8: $97
	daa                                              ; $70e9: $27
	ld   h, e                                        ; $70ea: $63
	xor  c                                           ; $70eb: $a9
	ld   l, d                                        ; $70ec: $6a
	rst  ToBoot                                         ; $70ed: $c7
	xor  h                                           ; $70ee: $ac
	ld   c, c                                        ; $70ef: $49
	add  d                                           ; $70f0: $82
	halt                                             ; $70f1: $76
	ld   [hl], $99                                   ; $70f2: $36 $99
	xor  e                                           ; $70f4: $ab
	db   $db                                         ; $70f5: $db
	xor  c                                           ; $70f6: $a9
	add  [hl]                                        ; $70f7: $86
	ld   d, l                                        ; $70f8: $55
	ld   h, [hl]                                     ; $70f9: $66
	ld   b, a                                        ; $70fa: $47
	sub  a                                           ; $70fb: $97
	xor  e                                           ; $70fc: $ab
	sbc  e                                           ; $70fd: $9b
	cp   b                                           ; $70fe: $b8
	ld   a, c                                        ; $70ff: $79
	ld   h, [hl]                                     ; $7100: $66
	and  [hl]                                        ; $7101: $a6
	ld   b, [hl]                                     ; $7102: $46
	ld   d, [hl]                                     ; $7103: $56
	xor  d                                           ; $7104: $aa
	xor  h                                           ; $7105: $ac
	adc  c                                           ; $7106: $89
	and  h                                           ; $7107: $a4
	add  [hl]                                        ; $7108: $86
	ld   l, e                                        ; $7109: $6b
	add  a                                           ; $710a: $87
	ld   h, [hl]                                     ; $710b: $66
	halt                                             ; $710c: $76
	sbc  c                                           ; $710d: $99
	xor  d                                           ; $710e: $aa
	xor  e                                           ; $710f: $ab
	sbc  e                                           ; $7110: $9b
	add  l                                           ; $7111: $85
	ld   d, l                                        ; $7112: $55
	inc  [hl]                                        ; $7113: $34
	xor  c                                           ; $7114: $a9
	sbc  d                                           ; $7115: $9a
	xor  d                                           ; $7116: $aa
	adc  d                                           ; $7117: $8a
	ld   [hl], a                                     ; $7118: $77
	add  a                                           ; $7119: $87
	ld   a, b                                        ; $711a: $78
	ld   h, h                                        ; $711b: $64
	ld   h, l                                        ; $711c: $65
	xor  c                                           ; $711d: $a9
	adc  l                                           ; $711e: $8d
	xor  e                                           ; $711f: $ab
	adc  b                                           ; $7120: $88
	add  h                                           ; $7121: $84
	ld   [hl], a                                     ; $7122: $77
	add  h                                           ; $7123: $84
	adc  d                                           ; $7124: $8a
	ld   l, b                                        ; $7125: $68
	ld   a, b                                        ; $7126: $78
	sbc  d                                           ; $7127: $9a
	cp   c                                           ; $7128: $b9
	sbc  c                                           ; $7129: $99
	ld   d, [hl]                                     ; $712a: $56
	ld   h, a                                        ; $712b: $67
	ld   [hl], l                                     ; $712c: $75
	sbc  c                                           ; $712d: $99
	xor  b                                           ; $712e: $a8
	ld   a, c                                        ; $712f: $79
	adc  b                                           ; $7130: $88
	adc  h                                           ; $7131: $8c
	adc  b                                           ; $7132: $88
	and  l                                           ; $7133: $a5
	inc  [hl]                                        ; $7134: $34
	ld   b, l                                        ; $7135: $45
	xor  c                                           ; $7136: $a9
	sbc  a                                           ; $7137: $9f
	ld   a, e                                        ; $7138: $7b
	jp   Jump_0b3_5778                               ; $7139: $c3 $78 $57


	and  [hl]                                        ; $713c: $a6
	ld   l, c                                        ; $713d: $69
	ld   d, a                                        ; $713e: $57
	or   a                                           ; $713f: $b7
	sbc  h                                           ; $7140: $9c
	sbc  e                                           ; $7141: $9b
	or   a                                           ; $7142: $b7
	ld   [hl], a                                     ; $7143: $77
	ld   d, [hl]                                     ; $7144: $56
	ld   b, l                                        ; $7145: $45
	cp   b                                           ; $7146: $b8
	ld   a, d                                        ; $7147: $7a
	xor  c                                           ; $7148: $a9
	adc  c                                           ; $7149: $89
	adc  b                                           ; $714a: $88
	ld   [hl], a                                     ; $714b: $77
	sbc  b                                           ; $714c: $98
	ld   d, [hl]                                     ; $714d: $56
	ld   h, l                                        ; $714e: $65
	adc  b                                           ; $714f: $88
	xor  l                                           ; $7150: $ad
	sbc  h                                           ; $7151: $9c
	adc  b                                           ; $7152: $88
	add  e                                           ; $7153: $83
	add  [hl]                                        ; $7154: $86
	ld   l, b                                        ; $7155: $68
	ld   d, [hl]                                     ; $7156: $56
	xor  b                                           ; $7157: $a8
	ld   a, e                                        ; $7158: $7b
	adc  d                                           ; $7159: $8a
	cp   c                                           ; $715a: $b9
	xor  b                                           ; $715b: $a8
	ld   h, [hl]                                     ; $715c: $66
	ld   d, [hl]                                     ; $715d: $56
	ld   h, [hl]                                     ; $715e: $66
	cp   b                                           ; $715f: $b8
	ld   a, e                                        ; $7160: $7b
	adc  c                                           ; $7161: $89
	cp   c                                           ; $7162: $b9
	ld   a, d                                        ; $7163: $7a
	add  [hl]                                        ; $7164: $86
	sub  [hl]                                        ; $7165: $96
	ld   b, [hl]                                     ; $7166: $46
	halt                                             ; $7167: $76
	xor  h                                           ; $7168: $ac
	adc  d                                           ; $7169: $8a
	cp   b                                           ; $716a: $b8
	adc  c                                           ; $716b: $89
	sub  h                                           ; $716c: $94
	sbc  b                                           ; $716d: $98
	ld   b, [hl]                                     ; $716e: $46
	ld   h, a                                        ; $716f: $67
	adc  d                                           ; $7170: $8a
	adc  c                                           ; $7171: $89
	ret                                              ; $7172: $c9


	adc  b                                           ; $7173: $88
	sub  a                                           ; $7174: $97
	sbc  c                                           ; $7175: $99
	ld   h, l                                        ; $7176: $65
	ld   b, [hl]                                     ; $7177: $46
	ld   l, c                                        ; $7178: $69
	xor  c                                           ; $7179: $a9
	and  a                                           ; $717a: $a7
	sbc  e                                           ; $717b: $9b
	sbc  d                                           ; $717c: $9a
	add  a                                           ; $717d: $87
	ld   h, [hl]                                     ; $717e: $66
	ld   b, e                                        ; $717f: $43
	sbc  c                                           ; $7180: $99
	ld   e, h                                        ; $7181: $5c
	ld   [$77da], a                                  ; $7182: $ea $da $77
	ld   h, a                                        ; $7185: $67
	ld   a, c                                        ; $7186: $79
	ld   [hl], l                                     ; $7187: $75
	ld   a, c                                        ; $7188: $79
	sub  a                                           ; $7189: $97
	sbc  h                                           ; $718a: $9c
	xor  d                                           ; $718b: $aa
	and  a                                           ; $718c: $a7
	and  [hl]                                        ; $718d: $a6
	ld   d, a                                        ; $718e: $57
	ld   h, [hl]                                     ; $718f: $66
	ld   l, b                                        ; $7190: $68
	ld   a, d                                        ; $7191: $7a
	adc  c                                           ; $7192: $89
	cp   b                                           ; $7193: $b8
	xor  d                                           ; $7194: $aa
	sbc  b                                           ; $7195: $98
	halt                                             ; $7196: $76
	ld   [hl], l                                     ; $7197: $75
	ld   d, [hl]                                     ; $7198: $56
	xor  c                                           ; $7199: $a9
	ld   a, c                                        ; $719a: $79
	or   [hl]                                        ; $719b: $b6
	sbc  d                                           ; $719c: $9a
	ld   l, c                                        ; $719d: $69
	sub  [hl]                                        ; $719e: $96
	and  a                                           ; $719f: $a7
	ld   d, l                                        ; $71a0: $55
	ld   l, b                                        ; $71a1: $68
	ld   a, d                                        ; $71a2: $7a
	cp   e                                           ; $71a3: $bb
	ret                                              ; $71a4: $c9


	ld   a, c                                        ; $71a5: $79
	ld   h, [hl]                                     ; $71a6: $66
	sub  a                                           ; $71a7: $97
	ld   a, b                                        ; $71a8: $78
	ld   h, a                                        ; $71a9: $67
	sub  a                                           ; $71aa: $97
	sbc  c                                           ; $71ab: $99
	adc  d                                           ; $71ac: $8a
	xor  c                                           ; $71ad: $a9
	ld   a, c                                        ; $71ae: $79
	ld   [hl], l                                     ; $71af: $75
	add  a                                           ; $71b0: $87
	ld   b, a                                        ; $71b1: $47
	and  l                                           ; $71b2: $a5
	adc  d                                           ; $71b3: $8a
	adc  h                                           ; $71b4: $8c
	sbc  c                                           ; $71b5: $99
	xor  d                                           ; $71b6: $aa
	ld   h, [hl]                                     ; $71b7: $66
	ld   [hl], l                                     ; $71b8: $75
	ld   d, [hl]                                     ; $71b9: $56
	add  a                                           ; $71ba: $87
	xor  d                                           ; $71bb: $aa
	ld   l, e                                        ; $71bc: $6b
	sub  [hl]                                        ; $71bd: $96
	xor  h                                           ; $71be: $ac
	ld   a, b                                        ; $71bf: $78
	and  h                                           ; $71c0: $a4
	ld   b, a                                        ; $71c1: $47
	ld   d, l                                        ; $71c2: $55
	cp   b                                           ; $71c3: $b8
	ld   a, l                                        ; $71c4: $7d
	and  a                                           ; $71c5: $a7
	cp   c                                           ; $71c6: $b9
	ld   e, c                                        ; $71c7: $59
	ld   [hl], a                                     ; $71c8: $77
	sbc  c                                           ; $71c9: $99
	ld   h, l                                        ; $71ca: $65
	sub  [hl]                                        ; $71cb: $96
	ld   a, d                                        ; $71cc: $7a
	adc  b                                           ; $71cd: $88
	ret                                              ; $71ce: $c9


	adc  h                                           ; $71cf: $8c
	ld   h, [hl]                                     ; $71d0: $66
	and  [hl]                                        ; $71d1: $a6
	ld   c, b                                        ; $71d2: $48
	ld   h, [hl]                                     ; $71d3: $66
	xor  b                                           ; $71d4: $a8
	adc  d                                           ; $71d5: $8a
	sub  a                                           ; $71d6: $97
	sbc  d                                           ; $71d7: $9a
	adc  c                                           ; $71d8: $89
	add  a                                           ; $71d9: $87
	ld   h, h                                        ; $71da: $64
	ld   d, [hl]                                     ; $71db: $56
	adc  d                                           ; $71dc: $8a
	sbc  c                                           ; $71dd: $99
	cp   d                                           ; $71de: $ba
	ld   a, d                                        ; $71df: $7a
	ld   h, [hl]                                     ; $71e0: $66
	sub  [hl]                                        ; $71e1: $96
	adc  c                                           ; $71e2: $89
	ld   [hl], l                                     ; $71e3: $75
	add  a                                           ; $71e4: $87
	ld   a, b                                        ; $71e5: $78
	xor  e                                           ; $71e6: $ab
	sbc  h                                           ; $71e7: $9c
	sbc  b                                           ; $71e8: $98
	add  [hl]                                        ; $71e9: $86
	ld   d, [hl]                                     ; $71ea: $56
	add  e                                           ; $71eb: $83
	ld   a, d                                        ; $71ec: $7a
	adc  c                                           ; $71ed: $89
	sbc  d                                           ; $71ee: $9a
	adc  d                                           ; $71ef: $8a
	xor  c                                           ; $71f0: $a9
	xor  b                                           ; $71f1: $a8
	ld   h, a                                        ; $71f2: $67
	ld   [hl], l                                     ; $71f3: $75
	add  [hl]                                        ; $71f4: $86
	ld   e, d                                        ; $71f5: $5a
	ld   a, b                                        ; $71f6: $78
	ret                                              ; $71f7: $c9


	sbc  c                                           ; $71f8: $99
	adc  c                                           ; $71f9: $89
	ld   l, c                                        ; $71fa: $69
	ld   h, l                                        ; $71fb: $65
	sub  l                                           ; $71fc: $95
	xor  c                                           ; $71fd: $a9
	ld   l, c                                        ; $71fe: $69
	adc  b                                           ; $71ff: $88
	xor  d                                           ; $7200: $aa
	sbc  d                                           ; $7201: $9a
	sbc  b                                           ; $7202: $98
	ld   h, a                                        ; $7203: $67
	ld   [hl], l                                     ; $7204: $75
	halt                                             ; $7205: $76
	adc  d                                           ; $7206: $8a
	adc  c                                           ; $7207: $89
	xor  d                                           ; $7208: $aa
	ld   a, b                                        ; $7209: $78
	xor  b                                           ; $720a: $a8
	ld   a, c                                        ; $720b: $79
	halt                                             ; $720c: $76
	ld   [hl], h                                     ; $720d: $74
	ld   l, c                                        ; $720e: $69
	sbc  c                                           ; $720f: $99
	xor  e                                           ; $7210: $ab
	sbc  b                                           ; $7211: $98
	sub  a                                           ; $7212: $97
	ld   h, [hl]                                     ; $7213: $66
	ld   a, b                                        ; $7214: $78
	adc  b                                           ; $7215: $88
	adc  c                                           ; $7216: $89
	ld   a, b                                        ; $7217: $78
	ld   [hl], a                                     ; $7218: $77
	xor  c                                           ; $7219: $a9
	adc  e                                           ; $721a: $8b
	cp   d                                           ; $721b: $ba
	sbc  b                                           ; $721c: $98
	ld   d, l                                        ; $721d: $55
	ld   h, h                                        ; $721e: $64
	ld   a, b                                        ; $721f: $78
	adc  d                                           ; $7220: $8a
	sbc  c                                           ; $7221: $99
	xor  b                                           ; $7222: $a8
	sbc  c                                           ; $7223: $99
	adc  b                                           ; $7224: $88
	ld   a, c                                        ; $7225: $79
	sub  l                                           ; $7226: $95
	ld   h, a                                        ; $7227: $67
	ld   [hl], a                                     ; $7228: $77
	cp   d                                           ; $7229: $ba
	adc  [hl]                                        ; $722a: $8e
	sub  [hl]                                        ; $722b: $96
	cp   c                                           ; $722c: $b9
	ld   e, c                                        ; $722d: $59
	ld   [hl], l                                     ; $722e: $75
	ld   [hl], h                                     ; $722f: $74
	add  a                                           ; $7230: $87
	ld   a, d                                        ; $7231: $7a
	adc  d                                           ; $7232: $8a
	adc  d                                           ; $7233: $8a
	add  a                                           ; $7234: $87
	sbc  b                                           ; $7235: $98
	ld   a, c                                        ; $7236: $79
	add  l                                           ; $7237: $85
	ld   [hl], a                                     ; $7238: $77
	ld   a, b                                        ; $7239: $78
	sbc  c                                           ; $723a: $99
	sbc  c                                           ; $723b: $99
	sub  a                                           ; $723c: $97
	sbc  c                                           ; $723d: $99
	ld   l, c                                        ; $723e: $69
	add  a                                           ; $723f: $87
	halt                                             ; $7240: $76
	sbc  b                                           ; $7241: $98
	ld   a, d                                        ; $7242: $7a
	sbc  b                                           ; $7243: $98
	sub  a                                           ; $7244: $97
	adc  c                                           ; $7245: $89
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	ld   h, l                                        ; $7248: $65
	ld   d, [hl]                                     ; $7249: $56
	ld   [hl], a                                     ; $724a: $77
	sbc  c                                           ; $724b: $99
	xor  d                                           ; $724c: $aa
	and  [hl]                                        ; $724d: $a6
	xor  b                                           ; $724e: $a8
	ld   e, d                                        ; $724f: $5a
	ld   [hl], a                                     ; $7250: $77
	ld   [hl], l                                     ; $7251: $75
	ld   [hl], a                                     ; $7252: $77
	add  a                                           ; $7253: $87
	sbc  d                                           ; $7254: $9a
	ld   a, d                                        ; $7255: $7a
	sbc  b                                           ; $7256: $98
	sbc  c                                           ; $7257: $99
	ld   h, a                                        ; $7258: $67
	add  a                                           ; $7259: $87
	ld   a, b                                        ; $725a: $78
	sbc  b                                           ; $725b: $98
	xor  b                                           ; $725c: $a8
	adc  c                                           ; $725d: $89
	adc  b                                           ; $725e: $88
	ld   a, c                                        ; $725f: $79
	ld   l, b                                        ; $7260: $68
	sub  a                                           ; $7261: $97
	adc  c                                           ; $7262: $89
	ld   [hl], l                                     ; $7263: $75
	sub  l                                           ; $7264: $95
	ld   a, c                                        ; $7265: $79
	ld   a, c                                        ; $7266: $79
	adc  c                                           ; $7267: $89
	adc  d                                           ; $7268: $8a
	add  [hl]                                        ; $7269: $86
	sub  [hl]                                        ; $726a: $96
	halt                                             ; $726b: $76
	ld   a, c                                        ; $726c: $79
	ld   a, b                                        ; $726d: $78
	adc  c                                           ; $726e: $89
	ld   l, c                                        ; $726f: $69
	or   a                                           ; $7270: $b7
	sbc  d                                           ; $7271: $9a
	halt                                             ; $7272: $76
	add  a                                           ; $7273: $87
	ld   l, c                                        ; $7274: $69
	ld   [hl], a                                     ; $7275: $77
	sbc  b                                           ; $7276: $98
	sbc  c                                           ; $7277: $99
	ld   [hl], a                                     ; $7278: $77
	add  a                                           ; $7279: $87
	sbc  b                                           ; $727a: $98
	sub  a                                           ; $727b: $97
	sub  a                                           ; $727c: $97
	ld   d, a                                        ; $727d: $57
	adc  b                                           ; $727e: $88
	ld   a, b                                        ; $727f: $78
	add  a                                           ; $7280: $87
	sbc  c                                           ; $7281: $99
	adc  c                                           ; $7282: $89
	sub  a                                           ; $7283: $97
	ld   a, b                                        ; $7284: $78
	halt                                             ; $7285: $76
	ld   [hl], a                                     ; $7286: $77
	sub  a                                           ; $7287: $97
	adc  e                                           ; $7288: $8b
	ld   l, c                                        ; $7289: $69
	and  a                                           ; $728a: $a7
	adc  d                                           ; $728b: $8a
	ld   [hl], a                                     ; $728c: $77
	add  l                                           ; $728d: $85
	ld   a, b                                        ; $728e: $78
	ld   l, c                                        ; $728f: $69
	xor  b                                           ; $7290: $a8
	ld   a, c                                        ; $7291: $79
	sbc  c                                           ; $7292: $99
	sbc  c                                           ; $7293: $99
	add  [hl]                                        ; $7294: $86
	ld   h, a                                        ; $7295: $67
	add  a                                           ; $7296: $87
	ld   a, d                                        ; $7297: $7a
	ld   a, b                                        ; $7298: $78
	and  a                                           ; $7299: $a7
	add  a                                           ; $729a: $87
	adc  b                                           ; $729b: $88
	adc  c                                           ; $729c: $89
	adc  b                                           ; $729d: $88
	add  a                                           ; $729e: $87
	ld   h, a                                        ; $729f: $67
	ld   [hl], a                                     ; $72a0: $77
	sbc  b                                           ; $72a1: $98
	sbc  d                                           ; $72a2: $9a
	ld   a, b                                        ; $72a3: $78
	halt                                             ; $72a4: $76
	ld   a, c                                        ; $72a5: $79
	sub  a                                           ; $72a6: $97
	sbc  b                                           ; $72a7: $98
	ld   [hl], a                                     ; $72a8: $77
	sbc  b                                           ; $72a9: $98
	adc  c                                           ; $72aa: $89
	ld   a, c                                        ; $72ab: $79
	sub  a                                           ; $72ac: $97
	adc  b                                           ; $72ad: $88
	add  a                                           ; $72ae: $87
	adc  b                                           ; $72af: $88
	ld   l, c                                        ; $72b0: $69
	halt                                             ; $72b1: $76
	and  a                                           ; $72b2: $a7
	ld   a, c                                        ; $72b3: $79
	sub  [hl]                                        ; $72b4: $96
	ld   a, b                                        ; $72b5: $78
	ld   l, b                                        ; $72b6: $68
	xor  c                                           ; $72b7: $a9
	sbc  d                                           ; $72b8: $9a
	ld   [hl], a                                     ; $72b9: $77
	add  [hl]                                        ; $72ba: $86
	ld   a, d                                        ; $72bb: $7a
	adc  b                                           ; $72bc: $88
	sub  a                                           ; $72bd: $97
	add  [hl]                                        ; $72be: $86
	ld   [hl], a                                     ; $72bf: $77
	adc  b                                           ; $72c0: $88
	ld   a, d                                        ; $72c1: $7a
	adc  c                                           ; $72c2: $89
	ld   a, c                                        ; $72c3: $79
	add  a                                           ; $72c4: $87
	xor  b                                           ; $72c5: $a8
	add  a                                           ; $72c6: $87
	sbc  b                                           ; $72c7: $98
	adc  c                                           ; $72c8: $89
	ld   a, b                                        ; $72c9: $78
	adc  b                                           ; $72ca: $88
	sbc  c                                           ; $72cb: $99
	sbc  b                                           ; $72cc: $98
	ld   a, b                                        ; $72cd: $78
	ld   [hl], a                                     ; $72ce: $77
	halt                                             ; $72cf: $76
	adc  b                                           ; $72d0: $88
	adc  c                                           ; $72d1: $89
	sbc  c                                           ; $72d2: $99
	xor  b                                           ; $72d3: $a8
	ld   l, b                                        ; $72d4: $68
	halt                                             ; $72d5: $76
	adc  c                                           ; $72d6: $89
	sub  a                                           ; $72d7: $97
	sbc  b                                           ; $72d8: $98
	ld   l, c                                        ; $72d9: $69
	ld   l, b                                        ; $72da: $68
	adc  b                                           ; $72db: $88
	sbc  c                                           ; $72dc: $99
	sbc  b                                           ; $72dd: $98
	sub  [hl]                                        ; $72de: $96
	halt                                             ; $72df: $76
	ld   l, b                                        ; $72e0: $68
	ld   a, c                                        ; $72e1: $79
	sbc  d                                           ; $72e2: $9a
	sbc  b                                           ; $72e3: $98
	sbc  c                                           ; $72e4: $99
	adc  b                                           ; $72e5: $88
	add  a                                           ; $72e6: $87
	sub  a                                           ; $72e7: $97
	ld   h, a                                        ; $72e8: $67
	ld   h, a                                        ; $72e9: $67
	sbc  d                                           ; $72ea: $9a
	sbc  d                                           ; $72eb: $9a
	and  a                                           ; $72ec: $a7
	sub  a                                           ; $72ed: $97
	ld   h, a                                        ; $72ee: $67
	ld   a, b                                        ; $72ef: $78
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	ld   a, b                                        ; $72f2: $78
	ld   a, c                                        ; $72f3: $79
	adc  c                                           ; $72f4: $89
	sbc  d                                           ; $72f5: $9a
	add  a                                           ; $72f6: $87
	halt                                             ; $72f7: $76
	add  [hl]                                        ; $72f8: $86
	ld   a, c                                        ; $72f9: $79
	ld   a, b                                        ; $72fa: $78
	adc  c                                           ; $72fb: $89
	sbc  b                                           ; $72fc: $98
	sbc  b                                           ; $72fd: $98
	adc  b                                           ; $72fe: $88
	add  a                                           ; $72ff: $87
	adc  b                                           ; $7300: $88
	ld   a, b                                        ; $7301: $78
	add  a                                           ; $7302: $87
	add  a                                           ; $7303: $87
	adc  d                                           ; $7304: $8a
	adc  b                                           ; $7305: $88
	xor  c                                           ; $7306: $a9
	adc  c                                           ; $7307: $89
	ld   [hl], a                                     ; $7308: $77
	ld   [hl], a                                     ; $7309: $77
	adc  b                                           ; $730a: $88
	adc  b                                           ; $730b: $88
	add  a                                           ; $730c: $87
	ld   a, b                                        ; $730d: $78
	adc  b                                           ; $730e: $88
	sbc  b                                           ; $730f: $98
	sbc  c                                           ; $7310: $99
	adc  b                                           ; $7311: $88
	add  a                                           ; $7312: $87
	adc  c                                           ; $7313: $89
	ld   a, b                                        ; $7314: $78
	sbc  b                                           ; $7315: $98
	ld   a, c                                        ; $7316: $79
	add  a                                           ; $7317: $87
	adc  c                                           ; $7318: $89
	ld   a, b                                        ; $7319: $78
	sub  a                                           ; $731a: $97
	adc  c                                           ; $731b: $89
	adc  b                                           ; $731c: $88
	add  a                                           ; $731d: $87
	ld   a, b                                        ; $731e: $78
	ld   [hl], a                                     ; $731f: $77
	adc  c                                           ; $7320: $89
	sbc  c                                           ; $7321: $99
	sub  a                                           ; $7322: $97
	adc  b                                           ; $7323: $88
	ld   a, b                                        ; $7324: $78
	adc  b                                           ; $7325: $88
	ld   a, b                                        ; $7326: $78
	add  [hl]                                        ; $7327: $86
	adc  b                                           ; $7328: $88
	ld   a, b                                        ; $7329: $78
	sbc  c                                           ; $732a: $99
	adc  b                                           ; $732b: $88
	sub  a                                           ; $732c: $97
	adc  c                                           ; $732d: $89
	ld   [hl], a                                     ; $732e: $77
	add  a                                           ; $732f: $87
	adc  b                                           ; $7330: $88
	add  a                                           ; $7331: $87
	sbc  b                                           ; $7332: $98
	adc  d                                           ; $7333: $8a
	adc  b                                           ; $7334: $88
	sbc  b                                           ; $7335: $98
	ld   a, c                                        ; $7336: $79
	add  a                                           ; $7337: $87
	add  a                                           ; $7338: $87
	ld   a, b                                        ; $7339: $78
	sbc  b                                           ; $733a: $98
	sbc  c                                           ; $733b: $99
	adc  c                                           ; $733c: $89
	add  a                                           ; $733d: $87
	adc  c                                           ; $733e: $89
	ld   a, b                                        ; $733f: $78
	sub  a                                           ; $7340: $97
	ld   a, b                                        ; $7341: $78
	add  a                                           ; $7342: $87
	sbc  c                                           ; $7343: $99
	adc  b                                           ; $7344: $88
	sbc  b                                           ; $7345: $98
	adc  c                                           ; $7346: $89
	ld   [hl], a                                     ; $7347: $77
	sbc  b                                           ; $7348: $98
	ld   a, c                                        ; $7349: $79
	add  [hl]                                        ; $734a: $86
	sbc  b                                           ; $734b: $98
	ld   a, b                                        ; $734c: $78
	sbc  c                                           ; $734d: $99
	sbc  c                                           ; $734e: $99
	adc  c                                           ; $734f: $89
	sbc  b                                           ; $7350: $98
	adc  c                                           ; $7351: $89
	ld   [hl], a                                     ; $7352: $77
	add  [hl]                                        ; $7353: $86
	adc  c                                           ; $7354: $89
	add  a                                           ; $7355: $87
	sbc  b                                           ; $7356: $98
	ld   a, c                                        ; $7357: $79
	sbc  c                                           ; $7358: $99
	xor  b                                           ; $7359: $a8
	adc  c                                           ; $735a: $89
	ld   h, a                                        ; $735b: $67
	add  [hl]                                        ; $735c: $86
	adc  b                                           ; $735d: $88
	ld   a, b                                        ; $735e: $78
	sbc  b                                           ; $735f: $98
	adc  b                                           ; $7360: $88
	ld   a, b                                        ; $7361: $78
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	ld   [hl], a                                     ; $7364: $77
	halt                                             ; $7365: $76
	adc  b                                           ; $7366: $88
	adc  c                                           ; $7367: $89
	sbc  c                                           ; $7368: $99
	adc  c                                           ; $7369: $89
	ld   [hl], a                                     ; $736a: $77
	add  a                                           ; $736b: $87
	adc  c                                           ; $736c: $89
	adc  b                                           ; $736d: $88
	adc  c                                           ; $736e: $89
	ld   [hl], a                                     ; $736f: $77
	adc  c                                           ; $7370: $89
	adc  b                                           ; $7371: $88
	xor  b                                           ; $7372: $a8
	sbc  c                                           ; $7373: $99
	ld   [hl], a                                     ; $7374: $77
	adc  b                                           ; $7375: $88
	ld   a, c                                        ; $7376: $79
	adc  b                                           ; $7377: $88
	ld   a, b                                        ; $7378: $78
	sbc  b                                           ; $7379: $98
	adc  b                                           ; $737a: $88
	ld   [hl], a                                     ; $737b: $77
	sbc  b                                           ; $737c: $98
	adc  b                                           ; $737d: $88
	ld   a, b                                        ; $737e: $78
	ld   [hl], a                                     ; $737f: $77
	sbc  b                                           ; $7380: $98
	ld   l, c                                        ; $7381: $69
	adc  b                                           ; $7382: $88
	sbc  b                                           ; $7383: $98
	sub  a                                           ; $7384: $97
	ld   [hl], a                                     ; $7385: $77
	ld   a, b                                        ; $7386: $78
	sbc  b                                           ; $7387: $98
	add  a                                           ; $7388: $87
	add  a                                           ; $7389: $87
	adc  c                                           ; $738a: $89
	ld   a, b                                        ; $738b: $78
	add  a                                           ; $738c: $87
	sbc  b                                           ; $738d: $98
	ld   a, c                                        ; $738e: $79
	add  a                                           ; $738f: $87
	ld   a, b                                        ; $7390: $78
	adc  c                                           ; $7391: $89
	adc  c                                           ; $7392: $89
	ld   [hl], a                                     ; $7393: $77
	add  a                                           ; $7394: $87

Call_0b3_7395:
	adc  c                                           ; $7395: $89
	ld   a, b                                        ; $7396: $78
	sbc  b                                           ; $7397: $98
	adc  c                                           ; $7398: $89
	add  a                                           ; $7399: $87
	add  a                                           ; $739a: $87
	ld   a, b                                        ; $739b: $78
	adc  c                                           ; $739c: $89
	adc  b                                           ; $739d: $88
	ld   a, b                                        ; $739e: $78
	adc  b                                           ; $739f: $88
	sbc  b                                           ; $73a0: $98
	sbc  b                                           ; $73a1: $98
	adc  b                                           ; $73a2: $88
	ld   [hl], a                                     ; $73a3: $77
	ld   [hl], a                                     ; $73a4: $77
	add  a                                           ; $73a5: $87
	sbc  c                                           ; $73a6: $99
	adc  b                                           ; $73a7: $88
	adc  b                                           ; $73a8: $88
	ld   a, b                                        ; $73a9: $78
	sbc  b                                           ; $73aa: $98
	adc  c                                           ; $73ab: $89
	ld   [hl], a                                     ; $73ac: $77
	sub  a                                           ; $73ad: $97
	ld   a, b                                        ; $73ae: $78
	adc  b                                           ; $73af: $88
	sbc  c                                           ; $73b0: $99
	adc  c                                           ; $73b1: $89
	sub  a                                           ; $73b2: $97
	adc  b                                           ; $73b3: $88
	ld   l, b                                        ; $73b4: $68
	sub  a                                           ; $73b5: $97
	adc  b                                           ; $73b6: $88
	sub  a                                           ; $73b7: $97
	adc  c                                           ; $73b8: $89
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	sbc  c                                           ; $73bb: $99
	sbc  b                                           ; $73bc: $98
	ld   [hl], a                                     ; $73bd: $77
	add  a                                           ; $73be: $87
	adc  c                                           ; $73bf: $89
	adc  c                                           ; $73c0: $89
	adc  b                                           ; $73c1: $88
	adc  c                                           ; $73c2: $89
	add  a                                           ; $73c3: $87
	ld   a, b                                        ; $73c4: $78
	ld   [hl], a                                     ; $73c5: $77
	adc  b                                           ; $73c6: $88
	adc  b                                           ; $73c7: $88
	sbc  b                                           ; $73c8: $98
	ld   a, b                                        ; $73c9: $78
	add  a                                           ; $73ca: $87
	adc  c                                           ; $73cb: $89
	adc  c                                           ; $73cc: $89
	sbc  b                                           ; $73cd: $98
	add  a                                           ; $73ce: $87
	add  a                                           ; $73cf: $87
	ld   a, b                                        ; $73d0: $78
	sbc  c                                           ; $73d1: $99
	sbc  c                                           ; $73d2: $99
	sbc  b                                           ; $73d3: $98
	add  a                                           ; $73d4: $87
	ld   a, b                                        ; $73d5: $78
	sbc  b                                           ; $73d6: $98
	sbc  b                                           ; $73d7: $98
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	sbc  c                                           ; $73dc: $99
	add  a                                           ; $73dd: $87
	add  a                                           ; $73de: $87
	ld   a, c                                        ; $73df: $79
	adc  b                                           ; $73e0: $88
	sbc  b                                           ; $73e1: $98
	ld   a, b                                        ; $73e2: $78
	sub  a                                           ; $73e3: $97
	adc  b                                           ; $73e4: $88
	add  a                                           ; $73e5: $87
	adc  c                                           ; $73e6: $89
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	ld   [hl], a                                     ; $73e9: $77
	adc  c                                           ; $73ea: $89
	adc  c                                           ; $73eb: $89
	adc  b                                           ; $73ec: $88
	add  a                                           ; $73ed: $87
	adc  b                                           ; $73ee: $88
	adc  b                                           ; $73ef: $88
	sbc  c                                           ; $73f0: $99
	adc  c                                           ; $73f1: $89
	adc  b                                           ; $73f2: $88
	ld   [hl], a                                     ; $73f3: $77
	add  a                                           ; $73f4: $87
	adc  b                                           ; $73f5: $88
	sbc  b                                           ; $73f6: $98
	adc  c                                           ; $73f7: $89
	adc  b                                           ; $73f8: $88
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	sbc  b                                           ; $73fb: $98
	adc  b                                           ; $73fc: $88
	ld   [hl], a                                     ; $73fd: $77
	adc  b                                           ; $73fe: $88
	adc  c                                           ; $73ff: $89
	adc  b                                           ; $7400: $88
	adc  b                                           ; $7401: $88
	adc  b                                           ; $7402: $88
	add  a                                           ; $7403: $87
	adc  c                                           ; $7404: $89
	adc  b                                           ; $7405: $88
	sbc  b                                           ; $7406: $98
	ld   a, b                                        ; $7407: $78
	adc  b                                           ; $7408: $88
	adc  b                                           ; $7409: $88
	adc  b                                           ; $740a: $88
	add  a                                           ; $740b: $87
	adc  b                                           ; $740c: $88
	ld   a, b                                        ; $740d: $78
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
	sbc  b                                           ; $741b: $98
	adc  b                                           ; $741c: $88
	ld   [hl], a                                     ; $741d: $77
	adc  b                                           ; $741e: $88
	adc  c                                           ; $741f: $89
	adc  b                                           ; $7420: $88
	sbc  b                                           ; $7421: $98
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	add  a                                           ; $7426: $87
	adc  b                                           ; $7427: $88
	adc  c                                           ; $7428: $89
	sbc  b                                           ; $7429: $98
	sbc  b                                           ; $742a: $98
	adc  b                                           ; $742b: $88
	adc  b                                           ; $742c: $88
	adc  b                                           ; $742d: $88
	adc  b                                           ; $742e: $88
	adc  b                                           ; $742f: $88
	adc  c                                           ; $7430: $89
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
	ld   a, b                                        ; $7440: $78
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	adc  b                                           ; $7443: $88
	sbc  b                                           ; $7444: $98
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
	add  c                                           ; $7476: $81
	ld   de, $1111                                   ; $7477: $11 $11 $11
	ld   de, $1111                                   ; $747a: $11 $11 $11
	ld   de, $1111                                   ; $747d: $11 $11 $11
	ld   de, $1111                                   ; $7480: $11 $11 $11
	ld   de, $1111                                   ; $7483: $11 $11 $11
	ld   de, $1111                                   ; $7486: $11 $11 $11
	ld   de, $1111                                   ; $7489: $11 $11 $11
	ld   de, $1111                                   ; $748c: $11 $11 $11
	ld   de, $1111                                   ; $748f: $11 $11 $11
	ld   de, $1111                                   ; $7492: $11 $11 $11
	ld   de, $1111                                   ; $7495: $11 $11 $11
	ld   de, $1111                                   ; $7498: $11 $11 $11
	ld   de, $1111                                   ; $749b: $11 $11 $11
	ld   de, $1111                                   ; $749e: $11 $11 $11
	ld   de, $4800                                   ; $74a1: $11 $00 $48
	ld   de, $1111                                   ; $74a4: $11 $11 $11
	ld   de, $1111                                   ; $74a7: $11 $11 $11
	ld   de, $1111                                   ; $74aa: $11 $11 $11
	ld   de, $5413                                   ; $74ad: $11 $13 $54
	ld   d, h                                        ; $74b0: $54
	ld   d, h                                        ; $74b1: $54
	ld   b, c                                        ; $74b2: $41
	rra                                              ; $74b3: $1f
	rst  $38                                         ; $74b4: $ff
	pop  af                                          ; $74b5: $f1
	ld   de, $1511                                   ; $74b6: $11 $11 $15

Call_0b3_74b9:
	pop  af                                          ; $74b9: $f1
	ld   de, $dd1c                                   ; $74ba: $11 $1c $dd
	call z, $c1dd                                    ; $74bd: $cc $dd $c1
	ld   de, $1111                                   ; $74c0: $11 $11 $11
	ld   de, $1111                                   ; $74c3: $11 $11 $11
	ld   de, $1111                                   ; $74c6: $11 $11 $11
	ld   de, $1111                                   ; $74c9: $11 $11 $11

Call_0b3_74cc:
	ld   de, $5411                                   ; $74cc: $11 $11 $54
	ld   b, h                                        ; $74cf: $44
	push af                                          ; $74d0: $f5
	ld   de, $5454                                   ; $74d1: $11 $54 $54
	ld   h, a                                        ; $74d4: $67
	ld   [hl], d                                     ; $74d5: $72
	ld   de, $1111                                   ; $74d6: $11 $11 $11
	ld   de, $1112                                   ; $74d9: $11 $12 $11
	ld   [de], a                                     ; $74dc: $12
	ld   de, $1111                                   ; $74dd: $11 $11 $11
	ld   h, [hl]                                     ; $74e0: $66
	halt                                             ; $74e1: $76
	push de                                          ; $74e2: $d5
	ld   de, $8888                                   ; $74e3: $11 $88 $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
	adc  c                                           ; $74e8: $89
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	adc  b                                           ; $74eb: $88
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  c                                           ; $74ee: $89
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  c                                           ; $74f7: $89
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	sbc  b                                           ; $74fd: $98
	adc  c                                           ; $74fe: $89
	adc  b                                           ; $74ff: $88
	add  a                                           ; $7500: $87
	sbc  b                                           ; $7501: $98
	ld   a, b                                        ; $7502: $78
	sub  a                                           ; $7503: $97
	sbc  b                                           ; $7504: $98
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	sub  a                                           ; $7508: $97
	sub  a                                           ; $7509: $97
	adc  c                                           ; $750a: $89
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  c                                           ; $750d: $89
	adc  c                                           ; $750e: $89
	adc  b                                           ; $750f: $88
	add  a                                           ; $7510: $87
	add  a                                           ; $7511: $87
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	ld   a, b                                        ; $7515: $78
	adc  b                                           ; $7516: $88
	ld   a, c                                        ; $7517: $79
	adc  b                                           ; $7518: $88
	adc  c                                           ; $7519: $89
	add  a                                           ; $751a: $87
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	ld   a, b                                        ; $751d: $78
	sub  a                                           ; $751e: $97
	adc  b                                           ; $751f: $88
	sbc  b                                           ; $7520: $98
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	add  a                                           ; $7523: $87
	sbc  c                                           ; $7524: $99
	ld   a, c                                        ; $7525: $79
	adc  b                                           ; $7526: $88
	add  a                                           ; $7527: $87
	sbc  b                                           ; $7528: $98
	adc  b                                           ; $7529: $88
	sbc  b                                           ; $752a: $98
	sbc  b                                           ; $752b: $98
	adc  b                                           ; $752c: $88
	ld   a, b                                        ; $752d: $78
	sub  a                                           ; $752e: $97
	adc  c                                           ; $752f: $89
	adc  b                                           ; $7530: $88
	adc  c                                           ; $7531: $89
	ld   a, b                                        ; $7532: $78
	adc  b                                           ; $7533: $88
	sbc  b                                           ; $7534: $98
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	adc  b                                           ; $7537: $88
	ld   a, b                                        ; $7538: $78
	sbc  b                                           ; $7539: $98
	sub  a                                           ; $753a: $97
	adc  b                                           ; $753b: $88
	ld   a, c                                        ; $753c: $79
	adc  c                                           ; $753d: $89
	sbc  b                                           ; $753e: $98
	sbc  b                                           ; $753f: $98
	sbc  b                                           ; $7540: $98
	sbc  b                                           ; $7541: $98
	ld   a, b                                        ; $7542: $78
	adc  b                                           ; $7543: $88
	adc  c                                           ; $7544: $89
	sbc  b                                           ; $7545: $98
	ld   a, c                                        ; $7546: $79
	sbc  b                                           ; $7547: $98
	adc  b                                           ; $7548: $88
	sbc  b                                           ; $7549: $98
	adc  b                                           ; $754a: $88
	xor  b                                           ; $754b: $a8
	ld   a, b                                        ; $754c: $78
	sub  a                                           ; $754d: $97
	adc  b                                           ; $754e: $88
	sbc  b                                           ; $754f: $98
	ld   a, c                                        ; $7550: $79
	sub  a                                           ; $7551: $97
	adc  c                                           ; $7552: $89
	adc  b                                           ; $7553: $88
	adc  c                                           ; $7554: $89
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	sbc  b                                           ; $7557: $98
	adc  c                                           ; $7558: $89
	adc  b                                           ; $7559: $88
	adc  c                                           ; $755a: $89
	adc  c                                           ; $755b: $89
	add  a                                           ; $755c: $87
	sbc  b                                           ; $755d: $98
	add  a                                           ; $755e: $87
	adc  b                                           ; $755f: $88
	ld   a, b                                        ; $7560: $78
	adc  c                                           ; $7561: $89
	add  a                                           ; $7562: $87
	sbc  d                                           ; $7563: $9a
	adc  c                                           ; $7564: $89
	sbc  c                                           ; $7565: $99
	sbc  c                                           ; $7566: $99
	adc  d                                           ; $7567: $8a
	sub  a                                           ; $7568: $97
	adc  c                                           ; $7569: $89
	ld   h, l                                        ; $756a: $65
	ld   [hl], a                                     ; $756b: $77
	ld   d, [hl]                                     ; $756c: $56
	ld   [hl], a                                     ; $756d: $77
	ld   a, c                                        ; $756e: $79
	adc  c                                           ; $756f: $89
	xor  d                                           ; $7570: $aa
	xor  l                                           ; $7571: $ad
	db   $db                                         ; $7572: $db
	res  5, b                                        ; $7573: $cb $a8
	ld   [hl], $51                                   ; $7575: $36 $51
	inc  de                                          ; $7577: $13
	ld   de, $5733                                   ; $7578: $11 $33 $57
	xor  h                                           ; $757b: $ac
	rst  $38                                         ; $757c: $ff
	rst  $38                                         ; $757d: $ff
	rst  $38                                         ; $757e: $ff
	cp   $8a                                         ; $757f: $fe $8a
	ld   b, c                                        ; $7581: $41
	ld   de, $1111                                   ; $7582: $11 $11 $11
	ld   de, $ef9b                                   ; $7585: $11 $9b $ef
	rst  $38                                         ; $7588: $ff

Call_0b3_7589:
	rst  $38                                         ; $7589: $ff
	rst  $38                                         ; $758a: $ff
	db   $fd                                         ; $758b: $fd
	db   $e4                                         ; $758c: $e4
	ld   de, $1111                                   ; $758d: $11 $11 $11
	ld   de, $cf12                                   ; $7590: $11 $12 $cf
	rst  $38                                         ; $7593: $ff
	rst  $38                                         ; $7594: $ff
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	ei                                               ; $7597: $fb
	ld   h, c                                        ; $7598: $61
	ld   de, $1111                                   ; $7599: $11 $11 $11
	ld   de, $ff29                                   ; $759c: $11 $29 $ff
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	rst  $38                                         ; $75a1: $ff
	rst  $38                                         ; $75a2: $ff
	rst  $30                                         ; $75a3: $f7
	ld   hl, $1111                                   ; $75a4: $21 $11 $11
	ld   de, $1b11                                   ; $75a7: $11 $11 $1b
	rst  $38                                         ; $75aa: $ff
	rst  $38                                         ; $75ab: $ff
	rst  $38                                         ; $75ac: $ff
	rst  $38                                         ; $75ad: $ff
	rst  $38                                         ; $75ae: $ff
	and  $21                                         ; $75af: $e6 $21
	ld   de, $1111                                   ; $75b1: $11 $11 $11
	ld   de, $ff2f                                   ; $75b4: $11 $2f $ff
	rst  $38                                         ; $75b7: $ff
	rst  $38                                         ; $75b8: $ff

Call_0b3_75b9:
	rst  $38                                         ; $75b9: $ff
	rst  $38                                         ; $75ba: $ff
	or   h                                           ; $75bb: $b4
	ld   d, c                                        ; $75bc: $51
	ld   de, $1111                                   ; $75bd: $11 $11 $11
	ld   de, $ff9f                                   ; $75c0: $11 $9f $ff
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	rst  $38                                         ; $75c5: $ff
	rst  $38                                         ; $75c6: $ff
	sub  [hl]                                        ; $75c7: $96
	ld   de, $1111                                   ; $75c8: $11 $11 $11
	ld   de, $df11                                   ; $75cb: $11 $11 $df
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	db   $fd                                         ; $75d2: $fd
	ld   d, c                                        ; $75d3: $51
	ld   de, $1111                                   ; $75d4: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $75d7: $11 $12 $ff
	rst  $38                                         ; $75da: $ff
	rst  $38                                         ; $75db: $ff
	rst  $38                                         ; $75dc: $ff
	rst  $38                                         ; $75dd: $ff
	ei                                               ; $75de: $fb
	ld   de, $1111                                   ; $75df: $11 $11 $11
	ld   de, $1d11                                   ; $75e2: $11 $11 $1d
	rst  $38                                         ; $75e5: $ff
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	rst  $38                                         ; $75e8: $ff
	rst  $28                                         ; $75e9: $ef
	jp   hl                                          ; $75ea: $e9


Jump_0b3_75eb:
	ld   bc, $1111                                   ; $75eb: $01 $11 $11
	ld   de, $5f11                                   ; $75ee: $11 $11 $5f
	rst  $38                                         ; $75f1: $ff
	rst  $38                                         ; $75f2: $ff
	rst  $38                                         ; $75f3: $ff
	db   $fd                                         ; $75f4: $fd
	rst  $28                                         ; $75f5: $ef
	push bc                                          ; $75f6: $c5
	ld   de, $1111                                   ; $75f7: $11 $11 $11
	ld   [de], a                                     ; $75fa: $12
	dec  de                                          ; $75fb: $1b
	rst  $38                                         ; $75fc: $ff
	rst  $38                                         ; $75fd: $ff
	rst  $38                                         ; $75fe: $ff
	rst  $38                                         ; $75ff: $ff
	db   $fd                                         ; $7600: $fd
	db   $eb                                         ; $7601: $eb
	ld   [hl], e                                     ; $7602: $73
	ld   de, $1111                                   ; $7603: $11 $11 $11
	ld   de, $ff3f                                   ; $7606: $11 $3f $ff
	rst  $38                                         ; $7609: $ff
	rst  $38                                         ; $760a: $ff
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	push bc                                          ; $760d: $c5
	ld   de, $1111                                   ; $760e: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7611: $11 $11 $ff
	rst  $38                                         ; $7614: $ff
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	ei                                               ; $7617: $fb
	rst  $28                                         ; $7618: $ef
	halt                                             ; $7619: $76
	ld   de, $1111                                   ; $761a: $11 $11 $11
	ld   [de], a                                     ; $761d: $12
	xor  a                                           ; $761e: $af
	rst  $38                                         ; $761f: $ff
	rst  $38                                         ; $7620: $ff
	rst  $38                                         ; $7621: $ff
	rst  $38                                         ; $7622: $ff
	cp   $b9                                         ; $7623: $fe $b9
	ld   d, c                                        ; $7625: $51
	ld   de, $1111                                   ; $7626: $11 $11 $11
	dec  d                                           ; $7629: $15
	rst  $38                                         ; $762a: $ff
	rst  $38                                         ; $762b: $ff
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	db   $fc                                         ; $762e: $fc
	rst  $38                                         ; $762f: $ff
	ld   h, e                                        ; $7630: $63
	ld   de, $1111                                   ; $7631: $11 $11 $11
	ld   de, $ffaf                                   ; $7634: $11 $af $ff
	rst  $38                                         ; $7637: $ff
	xor  $ff                                         ; $7638: $ee $ff
	rst  $38                                         ; $763a: $ff
	cp   b                                           ; $763b: $b8
	ld   de, $1111                                   ; $763c: $11 $11 $11
	ld   de, $ff1a                                   ; $763f: $11 $1a $ff
	rst  $38                                         ; $7642: $ff
	rst  $38                                         ; $7643: $ff
	rst  $28                                         ; $7644: $ef
	rst  $38                                         ; $7645: $ff
	cp   $66                                         ; $7646: $fe $66
	ld   de, $1111                                   ; $7648: $11 $11 $11
	dec  d                                           ; $764b: $15
	rst  $38                                         ; $764c: $ff
	rst  $38                                         ; $764d: $ff
	rst  $38                                         ; $764e: $ff
	rst  ToBoot                                         ; $764f: $c7
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	or   h                                           ; $7652: $b4
	ld   b, c                                        ; $7653: $41
	ld   de, $1111                                   ; $7654: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7657: $cf
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	ei                                               ; $765a: $fb
	cp   a                                           ; $765b: $bf
	rst  $38                                         ; $765c: $ff
	ld   a, [$1131]                                  ; $765d: $fa $31 $11
	ld   de, $1a11                                   ; $7660: $11 $11 $1a
	rst  $38                                         ; $7663: $ff
	rst  $38                                         ; $7664: $ff
	rst  $38                                         ; $7665: $ff
	rst  $38                                         ; $7666: $ff
	rst  $38                                         ; $7667: $ff
	cp   $e1                                         ; $7668: $fe $e1
	ld   de, $1111                                   ; $766a: $11 $11 $11
	ld   d, $cf                                      ; $766d: $16 $cf
	rst  $38                                         ; $766f: $ff
	rst  $38                                         ; $7670: $ff
	push bc                                          ; $7671: $c5
	rst  $38                                         ; $7672: $ff
	rst  $38                                         ; $7673: $ff
	jp   $1111                                       ; $7674: $c3 $11 $11


	ld   de, $9f11                                   ; $7677: $11 $11 $9f
	rst  JumpTable                                         ; $767a: $df

Call_0b3_767b:
	rst  $38                                         ; $767b: $ff
	rst  $38                                         ; $767c: $ff
	rra                                              ; $767d: $1f
	cp   $ff                                         ; $767e: $fe $ff
	ld   de, $1111                                   ; $7680: $11 $11 $11
	ld   de, $ff22                                   ; $7683: $11 $22 $ff
	rst  $38                                         ; $7686: $ff
	db   $fd                                         ; $7687: $fd
	rst  $28                                         ; $7688: $ef
	rst  $38                                         ; $7689: $ff
	rst  $38                                         ; $768a: $ff
	ld   [hl], c                                     ; $768b: $71
	ld   de, $1111                                   ; $768c: $11 $11 $11
	ld   [de], a                                     ; $768f: $12
	rst  $28                                         ; $7690: $ef
	rst  $38                                         ; $7691: $ff
	rst  $38                                         ; $7692: $ff
	db   $fd                                         ; $7693: $fd
	ld   a, a                                        ; $7694: $7f

Call_0b3_7695:
	rst  $38                                         ; $7695: $ff
	rst  $30                                         ; $7696: $f7
	ld   de, $1111                                   ; $7697: $11 $11 $11
	ld   de, $ff2d                                   ; $769a: $11 $2d $ff
	rst  $38                                         ; $769d: $ff
	rst  $38                                         ; $769e: $ff
	add  [hl]                                        ; $769f: $86
	rst  $38                                         ; $76a0: $ff
	rst  $38                                         ; $76a1: $ff
	ld   d, c                                        ; $76a2: $51
	ld   de, $1111                                   ; $76a3: $11 $11 $11
	ld   de, $ffbf                                   ; $76a6: $11 $bf $ff
	rst  $38                                         ; $76a9: $ff
	ld   sp, hl                                      ; $76aa: $f9
	ld   a, a                                        ; $76ab: $7f
	rst  $38                                         ; $76ac: $ff
	pop  af                                          ; $76ad: $f1
	ld   de, $1111                                   ; $76ae: $11 $11 $11
	ld   de, $ff1c                                   ; $76b1: $11 $1c $ff
	rst  $38                                         ; $76b4: $ff
	rst  $38                                         ; $76b5: $ff
	cp   h                                           ; $76b6: $bc
	rst  $38                                         ; $76b7: $ff
	rst  $38                                         ; $76b8: $ff
	add  c                                           ; $76b9: $81

Call_0b3_76ba:
	ld   de, $1111                                   ; $76ba: $11 $11 $11
	ld   [de], a                                     ; $76bd: $12
	cp   a                                           ; $76be: $bf
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	rst  $38                                         ; $76c2: $ff
	rst  $38                                         ; $76c3: $ff
	ei                                               ; $76c4: $fb
	ld   d, c                                        ; $76c5: $51
	ld   de, $1111                                   ; $76c6: $11 $11 $11
	dec  d                                           ; $76c9: $15
	xor  a                                           ; $76ca: $af
	rst  $38                                         ; $76cb: $ff
	rst  $38                                         ; $76cc: $ff
	reti                                             ; $76cd: $d9


	rst  $38                                         ; $76ce: $ff
	rst  $38                                         ; $76cf: $ff
	jp   nz, $1111                                   ; $76d0: $c2 $11 $11

	ld   de, $4c11                                   ; $76d3: $11 $11 $4c
	rst  $28                                         ; $76d6: $ef
	rst  $38                                         ; $76d7: $ff
	rst  $38                                         ; $76d8: $ff
	cp   l                                           ; $76d9: $bd
	db   $fd                                         ; $76da: $fd
	rst  $38                                         ; $76db: $ff
	sub  h                                           ; $76dc: $94
	ld   de, $1111                                   ; $76dd: $11 $11 $11
	ld   de, $dc5c                                   ; $76e0: $11 $5c $dc
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	ei                                               ; $76e5: $fb
	jp   z, $f7bf                                    ; $76e6: $ca $bf $f7

	ld   hl, $1111                                   ; $76e9: $21 $11 $11
	ld   b, c                                        ; $76ec: $41
	rla                                              ; $76ed: $17
	ld   a, c                                        ; $76ee: $79
	rst  $38                                         ; $76ef: $ff
	rst  $38                                         ; $76f0: $ff
	ei                                               ; $76f1: $fb
	call c, $fbff                                    ; $76f2: $dc $ff $fb
	ld   hl, $4514                                   ; $76f5: $21 $14 $45
	ld   de, $9d13                                   ; $76f8: $11 $13 $9d
	and  [hl]                                        ; $76fb: $a6
	ld   a, l                                        ; $76fc: $7d
	rst  $38                                         ; $76fd: $ff
	ld   sp, hl                                      ; $76fe: $f9
	xor  c                                           ; $76ff: $a9
	rst  $38                                         ; $7700: $ff
	jp   hl                                          ; $7701: $e9


	ld   de, $8918                                   ; $7702: $11 $18 $89
	ld   de, $be15                                   ; $7705: $11 $15 $be
	add  h                                           ; $7708: $84
	sbc  c                                           ; $7709: $99
	rst  $38                                         ; $770a: $ff
	db   $eb                                         ; $770b: $eb
	ld   a, b                                        ; $770c: $78
	xor  [hl]                                        ; $770d: $ae
	jp   z, $1431                                    ; $770e: $ca $31 $14

	cp   c                                           ; $7711: $b9
	ld   [hl], d                                     ; $7712: $72
	inc  de                                          ; $7713: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7714: $cf
	ld   [$8e13], a                                  ; $7715: $ea $13 $8e
	rst  $38                                         ; $7718: $ff
	add  h                                           ; $7719: $84
	ld   h, a                                        ; $771a: $67
	res  2, [hl]                                     ; $771b: $cb $96
	ld   d, l                                        ; $771d: $55
	sbc  h                                           ; $771e: $9c
	sub  a                                           ; $771f: $97
	inc  hl                                          ; $7720: $23
	ld   b, a                                        ; $7721: $47
	xor  b                                           ; $7722: $a8
	ld   [hl], h                                     ; $7723: $74
	ld   l, b                                        ; $7724: $68
	call z, Call_0b3_5a98                            ; $7725: $cc $98 $5a
	rst  $38                                         ; $7728: $ff
	or   $11                                         ; $7729: $f6 $11
	ld   a, [hl]                                     ; $772b: $7e
	db   $fc                                         ; $772c: $fc
	ld   hl, $bd14                                   ; $772d: $21 $14 $bd
	or   [hl]                                        ; $7730: $b6
	inc  sp                                          ; $7731: $33
	adc  e                                           ; $7732: $8b
	ret  z                                           ; $7733: $c8

	adc  c                                           ; $7734: $89
	cp   a                                           ; $7735: $bf
	reti                                             ; $7736: $d9


	ld   sp, $df18                                   ; $7737: $31 $18 $df
	and  e                                           ; $773a: $a3
	inc  de                                          ; $773b: $13
	xor  l                                           ; $773c: $ad
	add  $34                                         ; $773d: $c6 $34
	xor  l                                           ; $773f: $ad
	rst  ToBoot                                         ; $7740: $c7
	ld   de, $ff4f                                   ; $7741: $11 $4f $ff
	sub  c                                           ; $7744: $91
	ld   de, $f4ff                                   ; $7745: $11 $ff $f4
	ld   de, $fb5e                                   ; $7748: $11 $5e $fb
	ld   b, c                                        ; $774b: $41
	ld   e, h                                        ; $774c: $5c
	cp   $72                                         ; $774d: $fe $72
	daa                                              ; $774f: $27
	call $67b8                                       ; $7750: $cd $b8 $67
	adc  c                                           ; $7753: $89
	ld   [hl], l                                     ; $7754: $75
	ld   a, e                                        ; $7755: $7b
	xor  $95                                         ; $7756: $ee $95
	dec  [hl]                                        ; $7758: $35
	ld   a, c                                        ; $7759: $79
	xor  d                                           ; $775a: $aa
	sub  a                                           ; $775b: $97
	ld   [hl], a                                     ; $775c: $77
	adc  c                                           ; $775d: $89
	adc  b                                           ; $775e: $88
	adc  c                                           ; $775f: $89
	adc  c                                           ; $7760: $89
	sub  a                                           ; $7761: $97
	ld   h, [hl]                                     ; $7762: $66
	ld   a, c                                        ; $7763: $79
	sub  a                                           ; $7764: $97
	ld   h, a                                        ; $7765: $67
	adc  e                                           ; $7766: $8b
	sub  a                                           ; $7767: $97
	ld   a, c                                        ; $7768: $79
	bit  6, l                                        ; $7769: $cb $75
	ld   e, b                                        ; $776b: $58
	xor  c                                           ; $776c: $a9
	ld   d, h                                        ; $776d: $54
	adc  l                                           ; $776e: $8d
	reti                                             ; $776f: $d9


	inc  sp                                          ; $7770: $33
	ld   l, d                                        ; $7771: $6a
	or   a                                           ; $7772: $b7
	adc  d                                           ; $7773: $8a
	cp   d                                           ; $7774: $ba
	ld   h, h                                        ; $7775: $64

Jump_0b3_7776:
	ld   h, a                                        ; $7776: $67
	sbc  e                                           ; $7777: $9b
	adc  b                                           ; $7778: $88
	halt                                             ; $7779: $76
	ld   h, a                                        ; $777a: $67
	cp   d                                           ; $777b: $ba
	ld   [hl], h                                     ; $777c: $74
	ld   l, c                                        ; $777d: $69
	bit  6, h                                        ; $777e: $cb $74
	ld   b, [hl]                                     ; $7780: $46
	sbc  d                                           ; $7781: $9a
	xor  d                                           ; $7782: $aa
	sbc  c                                           ; $7783: $99
	cp   d                                           ; $7784: $ba
	ld   [hl], h                                     ; $7785: $74
	ld   [hl], $cb                                   ; $7786: $36 $cb
	add  l                                           ; $7788: $85
	inc  h                                           ; $7789: $24
	sbc  h                                           ; $778a: $9c
	db   $eb                                         ; $778b: $eb
	ld   h, l                                        ; $778c: $65
	adc  d                                           ; $778d: $8a
	cp   c                                           ; $778e: $b9
	ld   h, [hl]                                     ; $778f: $66
	ld   a, c                                        ; $7790: $79
	add  l                                           ; $7791: $85
	ld   d, [hl]                                     ; $7792: $56
	ld   a, c                                        ; $7793: $79
	sub  a                                           ; $7794: $97
	ld   l, b                                        ; $7795: $68
	cp   d                                           ; $7796: $ba
	sbc  $73                                         ; $7797: $de $73
	ld   c, b                                        ; $7799: $48
	jp   z, Jump_0b3_4764                            ; $779a: $ca $64 $47

	sbc  c                                           ; $779d: $99
	halt                                             ; $779e: $76
	ld   l, c                                        ; $779f: $69
	call z, Call_0b3_76ba                            ; $77a0: $cc $ba $76
	ld   a, b                                        ; $77a3: $78
	sub  a                                           ; $77a4: $97
	ld   h, a                                        ; $77a5: $67
	ld   [hl], a                                     ; $77a6: $77
	ld   [hl], a                                     ; $77a7: $77
	xor  c                                           ; $77a8: $a9
	adc  b                                           ; $77a9: $88
	ld   a, b                                        ; $77aa: $78

Jump_0b3_77ab:
	sbc  c                                           ; $77ab: $99
	add  a                                           ; $77ac: $87
	adc  c                                           ; $77ad: $89
	sbc  b                                           ; $77ae: $98
	halt                                             ; $77af: $76
	ld   a, c                                        ; $77b0: $79
	sbc  b                                           ; $77b1: $98
	add  a                                           ; $77b2: $87
	adc  c                                           ; $77b3: $89
	sbc  c                                           ; $77b4: $99
	adc  b                                           ; $77b5: $88
	sbc  b                                           ; $77b6: $98
	ld   [hl], a                                     ; $77b7: $77
	ld   a, b                                        ; $77b8: $78
	sbc  b                                           ; $77b9: $98
	add  a                                           ; $77ba: $87
	adc  d                                           ; $77bb: $8a
	xor  c                                           ; $77bc: $a9
	ld   h, [hl]                                     ; $77bd: $66
	adc  d                                           ; $77be: $8a
	xor  b                                           ; $77bf: $a8
	ld   h, l                                        ; $77c0: $65
	ld   a, b                                        ; $77c1: $78
	sbc  b                                           ; $77c2: $98
	halt                                             ; $77c3: $76
	ld   a, b                                        ; $77c4: $78
	xor  c                                           ; $77c5: $a9

Call_0b3_77c6:
	ld   [hl], a                                     ; $77c6: $77
	adc  c                                           ; $77c7: $89
	sbc  b                                           ; $77c8: $98
	ld   [hl], a                                     ; $77c9: $77
	adc  c                                           ; $77ca: $89
	adc  b                                           ; $77cb: $88
	ld   [hl], a                                     ; $77cc: $77
	ld   a, b                                        ; $77cd: $78
	adc  b                                           ; $77ce: $88
	ld   [hl], a                                     ; $77cf: $77
	adc  c                                           ; $77d0: $89
	adc  c                                           ; $77d1: $89
	add  a                                           ; $77d2: $87
	ld   a, b                                        ; $77d3: $78
	sbc  c                                           ; $77d4: $99
	adc  b                                           ; $77d5: $88
	adc  b                                           ; $77d6: $88
	adc  b                                           ; $77d7: $88
	adc  b                                           ; $77d8: $88
	ld   [hl], a                                     ; $77d9: $77
	ld   a, b                                        ; $77da: $78
	sbc  c                                           ; $77db: $99
	adc  b                                           ; $77dc: $88
	adc  b                                           ; $77dd: $88
	adc  b                                           ; $77de: $88
	adc  b                                           ; $77df: $88
	adc  b                                           ; $77e0: $88
	adc  c                                           ; $77e1: $89
	adc  b                                           ; $77e2: $88
	adc  b                                           ; $77e3: $88
	adc  b                                           ; $77e4: $88
	adc  b                                           ; $77e5: $88
	adc  b                                           ; $77e6: $88
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	ld   [hl], a                                     ; $77ea: $77
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
	adc  c                                           ; $77f8: $89
	sbc  c                                           ; $77f9: $99
	adc  b                                           ; $77fa: $88
	adc  b                                           ; $77fb: $88
	adc  b                                           ; $77fc: $88
	adc  b                                           ; $77fd: $88
	adc  b                                           ; $77fe: $88
	adc  b                                           ; $77ff: $88
	adc  b                                           ; $7800: $88
	adc  b                                           ; $7801: $88
	adc  b                                           ; $7802: $88
	adc  c                                           ; $7803: $89
	sbc  c                                           ; $7804: $99
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
	adc  c                                           ; $780f: $89
	sbc  c                                           ; $7810: $99
	adc  b                                           ; $7811: $88
	adc  b                                           ; $7812: $88
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	adc  b                                           ; $7818: $88
	adc  b                                           ; $7819: $88
	sbc  c                                           ; $781a: $99
	adc  c                                           ; $781b: $89
	sbc  c                                           ; $781c: $99
	sbc  b                                           ; $781d: $98
	adc  b                                           ; $781e: $88
	adc  b                                           ; $781f: $88
	sbc  b                                           ; $7820: $98
	adc  b                                           ; $7821: $88
	adc  b                                           ; $7822: $88
	adc  b                                           ; $7823: $88
	adc  b                                           ; $7824: $88
	adc  b                                           ; $7825: $88
	adc  c                                           ; $7826: $89
	sbc  c                                           ; $7827: $99
	sbc  b                                           ; $7828: $98
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  b                                           ; $782b: $88
	adc  b                                           ; $782c: $88
	adc  b                                           ; $782d: $88
	adc  b                                           ; $782e: $88
	adc  b                                           ; $782f: $88
	adc  b                                           ; $7830: $88
	adc  b                                           ; $7831: $88
	adc  c                                           ; $7832: $89
	sbc  c                                           ; $7833: $99
	adc  b                                           ; $7834: $88
	adc  b                                           ; $7835: $88
	adc  c                                           ; $7836: $89
	sbc  b                                           ; $7837: $98
	adc  b                                           ; $7838: $88
	adc  b                                           ; $7839: $88
	adc  b                                           ; $783a: $88
	adc  b                                           ; $783b: $88
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  c                                           ; $783e: $89
	adc  b                                           ; $783f: $88
	adc  b                                           ; $7840: $88
	adc  b                                           ; $7841: $88
	adc  b                                           ; $7842: $88
	adc  b                                           ; $7843: $88
	adc  b                                           ; $7844: $88
	adc  b                                           ; $7845: $88
	adc  b                                           ; $7846: $88
	adc  b                                           ; $7847: $88
	adc  c                                           ; $7848: $89
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
	sbc  b                                           ; $7899: $98
	rst  JumpTable                                         ; $789a: $df
	ld   b, c                                        ; $789b: $41
	ld   a, c                                        ; $789c: $79
	db   $eb                                         ; $789d: $eb
	ld   a, e                                        ; $789e: $7b
	adc  c                                           ; $789f: $89
	add  e                                           ; $78a0: $83
	ld   c, b                                        ; $78a1: $48
	cp   l                                           ; $78a2: $bd
	or   e                                           ; $78a3: $b3
	ld   a, [hl-]                                    ; $78a4: $3a
	ld   [hl], h                                     ; $78a5: $74
	inc  d                                           ; $78a6: $14
	rst  $38                                         ; $78a7: $ff
	db   $f4                                         ; $78a8: $f4
	dec  d                                           ; $78a9: $15
	rst  $28                                         ; $78aa: $ef
	and  c                                           ; $78ab: $a1
	ld   a, h                                        ; $78ac: $7c
	jp   hl                                          ; $78ad: $e9


	ld   de, $e47d                                   ; $78ae: $11 $7d $e4
	inc  d                                           ; $78b1: $14
	call z, Call_0b3_5c41                            ; $78b2: $cc $41 $5c
	ld   hl, sp+$13                                  ; $78b5: $f8 $13
	xor  l                                           ; $78b7: $ad
	add  d                                           ; $78b8: $82
	ld   c, d                                        ; $78b9: $4a
	ret                                              ; $78ba: $c9


	inc  [hl]                                        ; $78bb: $34
	cp   h                                           ; $78bc: $bc
	sub  h                                           ; $78bd: $94
	add  hl, sp                                      ; $78be: $39
	xor  c                                           ; $78bf: $a9
	sbc  b                                           ; $78c0: $98
	xor  d                                           ; $78c1: $aa
	add  e                                           ; $78c2: $83
	ld   a, [hl+]                                    ; $78c3: $2a
	bit  4, e                                        ; $78c4: $cb $63
	ld   a, c                                        ; $78c6: $79
	add  [hl]                                        ; $78c7: $86
	ld   d, [hl]                                     ; $78c8: $56
	ld   a, d                                        ; $78c9: $7a
	db   $fd                                         ; $78ca: $fd
	ld   b, c                                        ; $78cb: $41
	ld   a, l                                        ; $78cc: $7d
	sub  [hl]                                        ; $78cd: $96
	xor  [hl]                                        ; $78ce: $ae
	db   $f4                                         ; $78cf: $f4
	ld   de, $d1bf                                   ; $78d0: $11 $bf $d1
	rra                                              ; $78d3: $1f
	ld   sp, hl                                      ; $78d4: $f9
	ld   de, $b5cf                                   ; $78d5: $11 $cf $b5
	sbc  l                                           ; $78d8: $9d
	add  c                                           ; $78d9: $81
	ld   e, $fa                                      ; $78da: $1e $fa
	ld   hl, $82ad                                   ; $78dc: $21 $ad $82
	add  hl, de                                      ; $78df: $19
	rst  $38                                         ; $78e0: $ff
	ld   h, d                                        ; $78e1: $62
	ld   a, d                                        ; $78e2: $7a
	ld   [hl], l                                     ; $78e3: $75
	sbc  h                                           ; $78e4: $9c
	and  e                                           ; $78e5: $a3
	ld   d, $ef                                      ; $78e6: $16 $ef
	or   $12                                         ; $78e8: $f6 $12
	rst  $38                                         ; $78ea: $ff
	pop  af                                          ; $78eb: $f1
	ld   e, a                                        ; $78ec: $5f
	ldh  a, [c]                                      ; $78ed: $f2
	ld   de, $315a                                   ; $78ee: $11 $5a $31
	add  hl, de                                      ; $78f1: $19
	ret                                              ; $78f2: $c9


	ld   d, a                                        ; $78f3: $57
	xor  [hl]                                        ; $78f4: $ae
	jp   nz, $fd7f                                   ; $78f5: $c2 $7f $fd

	ld   b, c                                        ; $78f8: $41
	ld   l, a                                        ; $78f9: $6f
	call nz, $da16                                   ; $78fa: $c4 $16 $da
	ld   de, $916b                                   ; $78fd: $11 $6b $91
	inc  d                                           ; $7900: $14
	halt                                             ; $7901: $76
	ld   de, $ff3d                                   ; $7902: $11 $3d $ff
	res  5, e                                        ; $7905: $cb $ab
	rst  JumpTable                                         ; $7907: $df
	jp   c, Jump_0b3_7776                            ; $7908: $da $76 $77

	ld   d, a                                        ; $790b: $57
	sub  l                                           ; $790c: $95
	ld   c, b                                        ; $790d: $48
	xor  d                                           ; $790e: $aa
	ld   d, [hl]                                     ; $790f: $56
	sbc  b                                           ; $7910: $98
	add  a                                           ; $7911: $87
	ld   d, d                                        ; $7912: $52
	ld   b, a                                        ; $7913: $47
	ld   b, h                                        ; $7914: $44
	ld   b, c                                        ; $7915: $41
	adc  a                                           ; $7916: $8f
	ld   a, [$bf21]                                  ; $7917: $fa $21 $bf
	rst  $20                                         ; $791a: $e7
	ld   c, b                                        ; $791b: $48
	cp   b                                           ; $791c: $b8
	ld   [hl], l                                     ; $791d: $75
	adc  c                                           ; $791e: $89
	xor  h                                           ; $791f: $ac
	and  a                                           ; $7920: $a7
	ld   a, e                                        ; $7921: $7b
	ret  c                                           ; $7922: $d8

	ld   e, d                                        ; $7923: $5a
	add  l                                           ; $7924: $85
	ld   [hl], l                                     ; $7925: $75
	sbc  [hl]                                        ; $7926: $9e
	ld   [hl], c                                     ; $7927: $71
	dec  d                                           ; $7928: $15
	rst  $28                                         ; $7929: $ef
	ld   de, $86ce                                   ; $792a: $11 $ce $86
	ld   a, e                                        ; $792d: $7b
	push de                                          ; $792e: $d5
	ld   a, d                                        ; $792f: $7a
	ld   a, a                                        ; $7930: $7f
	or   h                                           ; $7931: $b4
	sbc  c                                           ; $7932: $99
	adc  d                                           ; $7933: $8a
	ld   de, $76ba                                   ; $7934: $11 $ba $76
	ld   e, c                                        ; $7937: $59
	ld   sp, $d95a                                   ; $7938: $31 $5a $d9
	cp   l                                           ; $793b: $bd
	sub  [hl]                                        ; $793c: $96
	xor  l                                           ; $793d: $ad
	xor  h                                           ; $793e: $ac
	xor  $71                                         ; $793f: $ee $71
	ld   d, e                                        ; $7941: $53
	ld   c, d                                        ; $7942: $4a
	ld   d, h                                        ; $7943: $54
	inc  hl                                          ; $7944: $23
	ld   h, [hl]                                     ; $7945: $66
	ld   d, h                                        ; $7946: $54
	scf                                              ; $7947: $37
	db   $fc                                         ; $7948: $fc
	cp   d                                           ; $7949: $ba
	ld   l, b                                        ; $794a: $68
	xor  h                                           ; $794b: $ac
	rst  $38                                         ; $794c: $ff
	or   c                                           ; $794d: $b1
	inc  de                                          ; $794e: $13
	rst  $28                                         ; $794f: $ef
	sub  c                                           ; $7950: $91
	ld   a, [de]                                     ; $7951: $1a
	and  [hl]                                        ; $7952: $a6
	ld   de, $6add                                   ; $7953: $11 $dd $6a
	call c, Call_0b3_5ff9                            ; $7956: $dc $f9 $5f
	cp   $f8                                         ; $7959: $fe $f8
	ld   [hl], $a8                                   ; $795b: $36 $a8
	inc  [hl]                                        ; $795d: $34
	ld   h, h                                        ; $795e: $64
	ld   d, d                                        ; $795f: $52
	rla                                              ; $7960: $17
	ld   [hl+], a                                    ; $7961: $22
	and  [hl]                                        ; $7962: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7963: $cf
	sub  h                                           ; $7964: $94
	ld   sp, hl                                      ; $7965: $f9
	sbc  a                                           ; $7966: $9f
	cp   l                                           ; $7967: $bd
	ld   hl, sp+$14                                  ; $7968: $f8 $14
	ld   l, h                                        ; $796a: $6c
	or   c                                           ; $796b: $b1
	rla                                              ; $796c: $17
	ld   h, c                                        ; $796d: $61
	ld   hl, $fe19                                   ; $796e: $21 $19 $fe
	rla                                              ; $7971: $17
	rst  $28                                         ; $7972: $ef
	pop  af                                          ; $7973: $f1
	rst  $38                                         ; $7974: $ff
	rst  $38                                         ; $7975: $ff
	ld   sp, $825c                                   ; $7976: $31 $5c $82
	inc  hl                                          ; $7979: $23
	ld   de, $1b21                                   ; $797a: $11 $21 $1b
	db   $f4                                         ; $797d: $f4
	sbc  e                                           ; $797e: $9b
	rst  JumpTable                                         ; $797f: $df
	di                                               ; $7980: $f3
	ld   l, a                                        ; $7981: $6f
	rst  $38                                         ; $7982: $ff
	ldh  a, [c]                                      ; $7983: $f2
	ld   e, c                                        ; $7984: $59
	ld   d, l                                        ; $7985: $55
	and  a                                           ; $7986: $a7
	ld   d, e                                        ; $7987: $53
	ld   de, $1147                                   ; $7988: $11 $47 $11
	ld   c, a                                        ; $798b: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $798c: $cf
	push af                                          ; $798d: $f5
	xor  a                                           ; $798e: $af
	ld   e, a                                        ; $798f: $5f
	rst  $38                                         ; $7990: $ff
	db   $ed                                         ; $7991: $ed
	add  c                                           ; $7992: $81
	ld   h, [hl]                                     ; $7993: $66
	ld   a, c                                        ; $7994: $79
	ld   de, $3116                                   ; $7995: $11 $16 $31
	ld   de, $f2bf                                   ; $7998: $11 $bf $f2
	dec  l                                           ; $799b: $2d
	rst  $38                                         ; $799c: $ff
	rst  $38                                         ; $799d: $ff
	rst  $38                                         ; $799e: $ff
	db   $fd                                         ; $799f: $fd
	ld   de, $48b5                                   ; $79a0: $11 $b5 $48
	ld   h, h                                        ; $79a3: $64
	ld   de, $1d11                                   ; $79a4: $11 $11 $1d
	sub  a                                           ; $79a7: $97
	db   $fd                                         ; $79a8: $fd
	xor  a                                           ; $79a9: $af
	db   $fc                                         ; $79aa: $fc
	rst  $28                                         ; $79ab: $ef
	rst  $38                                         ; $79ac: $ff
	pop  af                                          ; $79ad: $f1
	ld   d, $27                                      ; $79ae: $16 $27
	call nc, $1151                                   ; $79b0: $d4 $51 $11
	ld   de, $92c7                                   ; $79b3: $11 $c7 $92
	ld   l, a                                        ; $79b6: $6f
	pop  af                                          ; $79b7: $f1
	ld   [$fb1f], a                                  ; $79b8: $ea $1f $fb
	or   $1f                                         ; $79bb: $f6 $1f
	ld   [hl], c                                     ; $79bd: $71
	ld   a, [$1117]                                  ; $79be: $fa $17 $11
	rla                                              ; $79c1: $17
	add  c                                           ; $79c2: $81
	ld   d, $ff                                      ; $79c3: $16 $ff
	ld   d, $fb                                      ; $79c5: $16 $fb
	rst  $38                                         ; $79c7: $ff
	push af                                          ; $79c8: $f5

Jump_0b3_79c9:
	pop  af                                          ; $79c9: $f1
	rra                                              ; $79ca: $1f
	ld   hl, $19f5                                   ; $79cb: $21 $f5 $19
	ld   de, $1921                                   ; $79ce: $11 $21 $19
	ld   d, d                                        ; $79d1: $52
	db   $f4                                         ; $79d2: $f4
	ld   e, a                                        ; $79d3: $5f
	rst  $38                                         ; $79d4: $ff
	rst  $38                                         ; $79d5: $ff
	rst  $38                                         ; $79d6: $ff
	push af                                          ; $79d7: $f5
	ld   a, [de]                                     ; $79d8: $1a
	or   c                                           ; $79d9: $b1
	ld   d, [hl]                                     ; $79da: $56
	inc  e                                           ; $79db: $1c
	ld   de, $1111                                   ; $79dc: $11 $11 $11
	rst  $38                                         ; $79df: $ff
	daa                                              ; $79e0: $27
	db   $fc                                         ; $79e1: $fc
	ld   l, a                                        ; $79e2: $6f
	xor  a                                           ; $79e3: $af
	rst  $38                                         ; $79e4: $ff
	rra                                              ; $79e5: $1f
	ld   d, c                                        ; $79e6: $51
	ld   hl, sp+$1f                                  ; $79e7: $f8 $1f
	pop  hl                                          ; $79e9: $e1
	ld   de, $1114                                   ; $79ea: $11 $14 $11
	ld   e, $ff                                      ; $79ed: $1e $ff
	or   $4f                                         ; $79ef: $f6 $4f
	rst  $38                                         ; $79f1: $ff
	rst  $38                                         ; $79f2: $ff
	db   $fc                                         ; $79f3: $fc
	sub  c                                           ; $79f4: $91
	rra                                              ; $79f5: $1f
	cp   c                                           ; $79f6: $b9
	pop  bc                                          ; $79f7: $c1
	ld   de, $3111                                   ; $79f8: $11 $11 $31
	ld   de, $11ff                                   ; $79fb: $11 $ff $11
	adc  a                                           ; $79fe: $8f
	rst  $38                                         ; $79ff: $ff
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	inc  de                                          ; $7a02: $13
	ret                                              ; $7a03: $c9


	push af                                          ; $7a04: $f5
	ld   e, $81                                      ; $7a05: $1e $81
	ld   de, $c117                                   ; $7a07: $11 $17 $c1
	add  hl, de                                      ; $7a0a: $19
	rst  $38                                         ; $7a0b: $ff
	xor  h                                           ; $7a0c: $ac
	ld   a, a                                        ; $7a0d: $7f
	rst  $38                                         ; $7a0e: $ff
	rst  $38                                         ; $7a0f: $ff
	rst  $28                                         ; $7a10: $ef
	ld   de, $cffc                                   ; $7a11: $11 $fc $cf
	ld   de, $1111                                   ; $7a14: $11 $11 $11
	ld   de, $ffb3                                   ; $7a17: $11 $b3 $ff
	rla                                              ; $7a1a: $17
	rst  $30                                         ; $7a1b: $f7
	rst  $38                                         ; $7a1c: $ff

jr_0b3_7a1d:
	rst  $38                                         ; $7a1d: $ff
	ld   sp, hl                                      ; $7a1e: $f9
	add  l                                           ; $7a1f: $85
	inc  d                                           ; $7a20: $14
	rst  $38                                         ; $7a21: $ff
	ld   de, $1111                                   ; $7a22: $11 $11 $11

jr_0b3_7a25:
	ld   a, $11                                      ; $7a25: $3e $11
	jr   z, jr_0b3_7a25                              ; $7a27: $28 $fc

	ld   a, [$ff1f]                                  ; $7a29: $fa $1f $ff
	ld   hl, sp+$1f                                  ; $7a2c: $f8 $1f
	pop  af                                          ; $7a2e: $f1
	jp   nc, $111e                                   ; $7a2f: $d2 $1e $11

	ld   de, $1119                                   ; $7a32: $11 $19 $11
	rra                                              ; $7a35: $1f
	pop  af                                          ; $7a36: $f1
	rst  $38                                         ; $7a37: $ff
	rra                                              ; $7a38: $1f
	rst  $38                                         ; $7a39: $ff
	db   $fd                                         ; $7a3a: $fd
	ld   c, a                                        ; $7a3b: $4f
	ld   d, e                                        ; $7a3c: $53
	sub  c                                           ; $7a3d: $91
	cp   d                                           ; $7a3e: $ba
	ld   sp, $1611                                   ; $7a3f: $31 $11 $16
	ld   de, $2f26                                   ; $7a42: $11 $26 $2f
	pop  af                                          ; $7a45: $f1
	rst  $38                                         ; $7a46: $ff
	rra                                              ; $7a47: $1f
	or   $fd                                         ; $7a48: $f6 $fd
	jr   @+$80                                       ; $7a4a: $18 $7e

	rst  $30                                         ; $7a4c: $f7
	ld   de, $1101                                   ; $7a4d: $11 $01 $11
	inc  e                                           ; $7a50: $1c
	ld   de, $bfef                                   ; $7a51: $11 $ef $bf
	ld   h, [hl]                                     ; $7a54: $66
	rst  $38                                         ; $7a55: $ff
	rst  $38                                         ; $7a56: $ff
	xor  a                                           ; $7a57: $af
	sub  l                                           ; $7a58: $95
	pop  bc                                          ; $7a59: $c1
	cp   a                                           ; $7a5a: $bf
	ld   [hl], c                                     ; $7a5b: $71
	ld   de, $1111                                   ; $7a5c: $11 $11 $11
	ld   [de], a                                     ; $7a5f: $12
	db   $f4                                         ; $7a60: $f4
	rra                                              ; $7a61: $1f
	rst  $38                                         ; $7a62: $ff
	rst  $38                                         ; $7a63: $ff
	rst  $38                                         ; $7a64: $ff
	ldh  a, [c]                                      ; $7a65: $f2
	ld   c, a                                        ; $7a66: $4f
	ld   l, a                                        ; $7a67: $6f
	ld   h, c                                        ; $7a68: $61
	and  [hl]                                        ; $7a69: $a6
	ld   de, $5111                                   ; $7a6a: $11 $11 $51
	ld   de, $fdaf                                   ; $7a6d: $11 $af $fd
	db   $e4                                         ; $7a70: $e4
	rst  $38                                         ; $7a71: $ff
	rst  JumpTable                                         ; $7a72: $df
	rst  $38                                         ; $7a73: $ff
	xor  $13                                         ; $7a74: $ee $13
	rst  $30                                         ; $7a76: $f7
	ld   b, [hl]                                     ; $7a77: $46
	ld   [de], a                                     ; $7a78: $12
	ld   de, $1111                                   ; $7a79: $11 $11 $11
	jr   c, jr_0b3_7a1d                              ; $7a7c: $38 $9f

	sub  c                                           ; $7a7e: $91
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	ld   a, a                                        ; $7a82: $7f
	ld   [de], a                                     ; $7a83: $12
	pop  af                                          ; $7a84: $f1
	ld   [$1111], a                                  ; $7a85: $ea $11 $11
	ld   de, $1f11                                   ; $7a88: $11 $11 $1f
	push af                                          ; $7a8b: $f5
	rst  $38                                         ; $7a8c: $ff
	inc  sp                                          ; $7a8d: $33
	rst  $38                                         ; $7a8e: $ff
	rst  $38                                         ; $7a8f: $ff
	or   $fc                                         ; $7a90: $f6 $fc

jr_0b3_7a92:
	dec  de                                          ; $7a92: $1b
	sub  c                                           ; $7a93: $91
	adc  a                                           ; $7a94: $8f
	inc  de                                          ; $7a95: $13
	ld   de, $121b                                   ; $7a96: $11 $1b $12
	db   $fd                                         ; $7a99: $fd
	xor  a                                           ; $7a9a: $af
	di                                               ; $7a9b: $f3
	ei                                               ; $7a9c: $fb
	adc  a                                           ; $7a9d: $8f
	rst  $38                                         ; $7a9e: $ff
	pop  af                                          ; $7a9f: $f1
	ld   e, $11                                      ; $7aa0: $1e $11
	ld   b, c                                        ; $7aa2: $41
	ld   de, $1111                                   ; $7aa3: $11 $11 $11
	ld   e, $ff                                      ; $7aa6: $1e $ff
	db   $fd                                         ; $7aa8: $fd
	rra                                              ; $7aa9: $1f
	pop  af                                          ; $7aaa: $f1
	rst  $38                                         ; $7aab: $ff
	adc  a                                           ; $7aac: $8f
	pop  bc                                          ; $7aad: $c1
	pop  af                                          ; $7aae: $f1
	rra                                              ; $7aaf: $1f
	ld   de, $1171                                   ; $7ab0: $11 $71 $11
	ld   de, $f11f                                   ; $7ab3: $11 $1f $f1
	rst  $38                                         ; $7ab6: $ff
	rst  $28                                         ; $7ab7: $ef
	dec  d                                           ; $7ab8: $15
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	rra                                              ; $7abb: $1f
	pop  af                                          ; $7abc: $f1
	ld   de, $114e                                   ; $7abd: $11 $4e $11
	ld   de, $1111                                   ; $7ac0: $11 $11 $11
	ld   a, a                                        ; $7ac3: $7f
	ld   sp, hl                                      ; $7ac4: $f9
	rst  $38                                         ; $7ac5: $ff
	cp   h                                           ; $7ac6: $bc
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	call z, $33d1                                    ; $7ac9: $cc $d1 $33
	inc  de                                          ; $7acc: $13
	add  c                                           ; $7acd: $81
	ld   de, $4111                                   ; $7ace: $11 $11 $41
	jr   jr_0b3_7a92                                 ; $7ad1: $18 $bf

	db   $fd                                         ; $7ad3: $fd
	push af                                          ; $7ad4: $f5
	ld   a, a                                        ; $7ad5: $7f
	db   $fd                                         ; $7ad6: $fd
	cp   $ae                                         ; $7ad7: $fe $ae
	ld   de, $4a91                                   ; $7ad9: $11 $91 $4a
	ld   de, $1151                                   ; $7adc: $11 $51 $11
	inc  de                                          ; $7adf: $13
	xor  b                                           ; $7ae0: $a8
	ld   c, d                                        ; $7ae1: $4a
	or   [hl]                                        ; $7ae2: $b6
	ld   l, d                                        ; $7ae3: $6a
	cp   h                                           ; $7ae4: $bc
	cp   $9a                                         ; $7ae5: $fe $9a
	db   $db                                         ; $7ae7: $db
	sbc  l                                           ; $7ae8: $9d
	db   $eb                                         ; $7ae9: $eb
	sbc  $d9                                         ; $7aea: $de $d9
	cp   d                                           ; $7aec: $ba
	cp   c                                           ; $7aed: $b9
	ld   a, c                                        ; $7aee: $79
	sbc  c                                           ; $7aef: $99
	ld   a, c                                        ; $7af0: $79
	adc  c                                           ; $7af1: $89
	xor  b                                           ; $7af2: $a8
	sbc  d                                           ; $7af3: $9a
	xor  e                                           ; $7af4: $ab
	cp   e                                           ; $7af5: $bb
	sbc  e                                           ; $7af6: $9b
	ret                                              ; $7af7: $c9


	xor  d                                           ; $7af8: $aa
	adc  c                                           ; $7af9: $89
	xor  c                                           ; $7afa: $a9
	xor  b                                           ; $7afb: $a8
	adc  c                                           ; $7afc: $89
	adc  c                                           ; $7afd: $89
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	xor  b                                           ; $7b00: $a8
	adc  b                                           ; $7b01: $88
	sbc  c                                           ; $7b02: $99
	adc  b                                           ; $7b03: $88
	sbc  c                                           ; $7b04: $99
	sbc  d                                           ; $7b05: $9a
	add  a                                           ; $7b06: $87
	sbc  b                                           ; $7b07: $98
	ld   a, c                                        ; $7b08: $79
	add  a                                           ; $7b09: $87
	ld   l, b                                        ; $7b0a: $68
	ld   [hl], a                                     ; $7b0b: $77
	sbc  b                                           ; $7b0c: $98
	ld   a, b                                        ; $7b0d: $78
	adc  b                                           ; $7b0e: $88
	sbc  b                                           ; $7b0f: $98
	sbc  d                                           ; $7b10: $9a
	ld   l, d                                        ; $7b11: $6a
	cp   b                                           ; $7b12: $b8
	adc  e                                           ; $7b13: $8b
	sub  a                                           ; $7b14: $97
	xor  c                                           ; $7b15: $a9
	ld   a, b                                        ; $7b16: $78
	and  a                                           ; $7b17: $a7
	ld   l, c                                        ; $7b18: $69
	ld   [hl], l                                     ; $7b19: $75
	ld   a, c                                        ; $7b1a: $79
	add  [hl]                                        ; $7b1b: $86
	ld   a, c                                        ; $7b1c: $79
	sbc  b                                           ; $7b1d: $98
	xor  d                                           ; $7b1e: $aa
	ld   a, b                                        ; $7b1f: $78
	xor  c                                           ; $7b20: $a9
	sbc  c                                           ; $7b21: $99
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	ld   a, c                                        ; $7b24: $79
	add  a                                           ; $7b25: $87
	add  a                                           ; $7b26: $87
	ld   [hl], a                                     ; $7b27: $77
	ld   [hl], a                                     ; $7b28: $77
	ld   [hl], a                                     ; $7b29: $77
	adc  c                                           ; $7b2a: $89
	adc  b                                           ; $7b2b: $88
	adc  c                                           ; $7b2c: $89
	adc  b                                           ; $7b2d: $88
	adc  c                                           ; $7b2e: $89
	sbc  b                                           ; $7b2f: $98
	sbc  b                                           ; $7b30: $98
	ld   [hl], a                                     ; $7b31: $77
	add  a                                           ; $7b32: $87
	ld   [hl], a                                     ; $7b33: $77
	ld   [hl], a                                     ; $7b34: $77
	ld   [hl], a                                     ; $7b35: $77
	ld   [hl], a                                     ; $7b36: $77
	ld   [hl], a                                     ; $7b37: $77
	ld   a, b                                        ; $7b38: $78
	adc  c                                           ; $7b39: $89
	sbc  c                                           ; $7b3a: $99
	sbc  c                                           ; $7b3b: $99
	adc  c                                           ; $7b3c: $89
	sbc  c                                           ; $7b3d: $99
	adc  b                                           ; $7b3e: $88
	adc  b                                           ; $7b3f: $88
	add  a                                           ; $7b40: $87
	ld   a, b                                        ; $7b41: $78
	ld   [hl], a                                     ; $7b42: $77
	ld   [hl], a                                     ; $7b43: $77
	ld   [hl], a                                     ; $7b44: $77
	ld   [hl], a                                     ; $7b45: $77
	adc  b                                           ; $7b46: $88
	ld   a, b                                        ; $7b47: $78
	adc  b                                           ; $7b48: $88
	sbc  b                                           ; $7b49: $98
	adc  b                                           ; $7b4a: $88
	adc  c                                           ; $7b4b: $89
	sbc  b                                           ; $7b4c: $98
	adc  b                                           ; $7b4d: $88
	ld   [hl], a                                     ; $7b4e: $77
	add  a                                           ; $7b4f: $87
	ld   [hl], a                                     ; $7b50: $77
	ld   [hl], a                                     ; $7b51: $77
	ld   [hl], a                                     ; $7b52: $77
	ld   [hl], a                                     ; $7b53: $77
	adc  b                                           ; $7b54: $88
	adc  b                                           ; $7b55: $88
	adc  b                                           ; $7b56: $88
	adc  b                                           ; $7b57: $88
	adc  b                                           ; $7b58: $88
	adc  b                                           ; $7b59: $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	ld   [hl], a                                     ; $7b5c: $77
	ld   [hl], a                                     ; $7b5d: $77
	ld   [hl], a                                     ; $7b5e: $77
	ld   [hl], a                                     ; $7b5f: $77
	ld   [hl], a                                     ; $7b60: $77
	ld   [hl], a                                     ; $7b61: $77
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	sbc  b                                           ; $7b65: $98
	adc  b                                           ; $7b66: $88
	adc  c                                           ; $7b67: $89
	sbc  b                                           ; $7b68: $98
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	add  a                                           ; $7b6b: $87
	adc  b                                           ; $7b6c: $88
	ld   [hl], a                                     ; $7b6d: $77
	ld   [hl], a                                     ; $7b6e: $77
	ld   a, b                                        ; $7b6f: $78
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	adc  b                                           ; $7b73: $88
	adc  b                                           ; $7b74: $88
	adc  b                                           ; $7b75: $88
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	adc  b                                           ; $7b78: $88
	adc  b                                           ; $7b79: $88
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	ld   a, b                                        ; $7b7d: $78
	adc  b                                           ; $7b7e: $88
	adc  b                                           ; $7b7f: $88
	adc  b                                           ; $7b80: $88
	adc  b                                           ; $7b81: $88
	adc  b                                           ; $7b82: $88
	adc  b                                           ; $7b83: $88
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	adc  b                                           ; $7b87: $88
	adc  b                                           ; $7b88: $88
	adc  b                                           ; $7b89: $88
	adc  b                                           ; $7b8a: $88
	adc  b                                           ; $7b8b: $88
	adc  b                                           ; $7b8c: $88
	adc  b                                           ; $7b8d: $88
	adc  b                                           ; $7b8e: $88
	adc  b                                           ; $7b8f: $88
	adc  b                                           ; $7b90: $88
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	adc  b                                           ; $7b98: $88
	adc  b                                           ; $7b99: $88
	adc  b                                           ; $7b9a: $88
	adc  b                                           ; $7b9b: $88
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	adc  b                                           ; $7b9e: $88
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  b                                           ; $7ba1: $88
	adc  b                                           ; $7ba2: $88
	adc  b                                           ; $7ba3: $88
	adc  b                                           ; $7ba4: $88
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  b                                           ; $7ba9: $88
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	adc  b                                           ; $7bb6: $88
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  b                                           ; $7bbc: $88
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
	adc  b                                           ; $7bc0: $88
	adc  b                                           ; $7bc1: $88
	adc  b                                           ; $7bc2: $88
	adc  b                                           ; $7bc3: $88
	adc  b                                           ; $7bc4: $88
	adc  b                                           ; $7bc5: $88
	adc  b                                           ; $7bc6: $88
	adc  b                                           ; $7bc7: $88
	adc  b                                           ; $7bc8: $88
	adc  b                                           ; $7bc9: $88
	adc  b                                           ; $7bca: $88
	adc  b                                           ; $7bcb: $88
	adc  b                                           ; $7bcc: $88
	adc  b                                           ; $7bcd: $88
	adc  b                                           ; $7bce: $88
	adc  b                                           ; $7bcf: $88
	adc  b                                           ; $7bd0: $88
	adc  b                                           ; $7bd1: $88
	adc  b                                           ; $7bd2: $88
	adc  b                                           ; $7bd3: $88
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	adc  b                                           ; $7bd7: $88
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	adc  b                                           ; $7bdb: $88
	adc  b                                           ; $7bdc: $88
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  b                                           ; $7bdf: $88
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  b                                           ; $7be2: $88
	adc  b                                           ; $7be3: $88
	adc  b                                           ; $7be4: $88
	adc  b                                           ; $7be5: $88
	adc  b                                           ; $7be6: $88
	adc  b                                           ; $7be7: $88
	adc  b                                           ; $7be8: $88
	adc  b                                           ; $7be9: $88
	adc  b                                           ; $7bea: $88
	adc  b                                           ; $7beb: $88
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	adc  b                                           ; $7bf9: $88
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
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
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	adc  b                                           ; $7c10: $88
	adc  b                                           ; $7c11: $88
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	adc  b                                           ; $7c14: $88
	adc  b                                           ; $7c15: $88
	adc  b                                           ; $7c16: $88
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	adc  b                                           ; $7c19: $88
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	adc  b                                           ; $7c1c: $88
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	adc  b                                           ; $7c21: $88
	adc  b                                           ; $7c22: $88
	adc  b                                           ; $7c23: $88
	adc  b                                           ; $7c24: $88
	adc  b                                           ; $7c25: $88
	adc  b                                           ; $7c26: $88
	adc  b                                           ; $7c27: $88
	adc  b                                           ; $7c28: $88
	adc  b                                           ; $7c29: $88
	adc  b                                           ; $7c2a: $88
	adc  b                                           ; $7c2b: $88
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  b                                           ; $7c2e: $88
	adc  b                                           ; $7c2f: $88
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	adc  b                                           ; $7c32: $88
	adc  b                                           ; $7c33: $88
	adc  b                                           ; $7c34: $88
	adc  b                                           ; $7c35: $88
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	adc  b                                           ; $7c47: $88
	adc  b                                           ; $7c48: $88
	adc  b                                           ; $7c49: $88
	adc  b                                           ; $7c4a: $88
	adc  b                                           ; $7c4b: $88
	adc  b                                           ; $7c4c: $88
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	adc  b                                           ; $7c52: $88
	adc  b                                           ; $7c53: $88
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
	adc  b                                           ; $7c64: $88
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	adc  b                                           ; $7c68: $88
	adc  b                                           ; $7c69: $88
	adc  b                                           ; $7c6a: $88
	adc  b                                           ; $7c6b: $88
	adc  b                                           ; $7c6c: $88
	adc  b                                           ; $7c6d: $88
	adc  b                                           ; $7c6e: $88
	adc  b                                           ; $7c6f: $88
	adc  b                                           ; $7c70: $88
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
	adc  b                                           ; $7c7f: $88
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
	sbc  c                                           ; $7d37: $99
	adc  b                                           ; $7d38: $88
	adc  b                                           ; $7d39: $88
	adc  h                                           ; $7d3a: $8c
	and  $48                                         ; $7d3b: $e6 $48
	add  [hl]                                        ; $7d3d: $86
	ld   l, c                                        ; $7d3e: $69
	ld   a, b                                        ; $7d3f: $78
	xor  b                                           ; $7d40: $a8
	adc  b                                           ; $7d41: $88
	sub  [hl]                                        ; $7d42: $96
	cp   a                                           ; $7d43: $bf
	sbc  c                                           ; $7d44: $99
	cp   c                                           ; $7d45: $b9
	sub  l                                           ; $7d46: $95
	adc  e                                           ; $7d47: $8b
	halt                                             ; $7d48: $76
	adc  b                                           ; $7d49: $88
	ld   a, d                                        ; $7d4a: $7a
	add  $6b                                         ; $7d4b: $c6 $6b
	sub  [hl]                                        ; $7d4d: $96
	add  a                                           ; $7d4e: $87
	or   [hl]                                        ; $7d4f: $b6
	ld   [hl], $53                                   ; $7d50: $36 $53
	ld   e, b                                        ; $7d52: $58
	ld   c, b                                        ; $7d53: $48
	sbc  b                                           ; $7d54: $98
	res  5, b                                        ; $7d55: $cb $a8
	sbc  d                                           ; $7d57: $9a
	add  [hl]                                        ; $7d58: $86
	ld   a, d                                        ; $7d59: $7a
	dec  [hl]                                        ; $7d5a: $35
	ld   h, c                                        ; $7d5b: $61
	ld   de, $1311                                   ; $7d5c: $11 $11 $13
	ld   c, c                                        ; $7d5f: $49
	sbc  $ff                                         ; $7d60: $de $ff
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	rst  $38                                         ; $7d64: $ff
	add  sp, $22                                     ; $7d65: $e8 $22
	ld   de, $1111                                   ; $7d67: $11 $11 $11
	ld   de, $cf16                                   ; $7d6a: $11 $16 $cf
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	rst  ToBoot                                         ; $7d72: $c7
	ld   hl, $1111                                   ; $7d73: $21 $11 $11
	ld   de, $4e11                                   ; $7d76: $11 $11 $4e
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	rst  $38                                         ; $7d7b: $ff
	rst  $38                                         ; $7d7c: $ff
	cp   $ff                                         ; $7d7d: $fe $ff
	ld   hl, sp+$11                                  ; $7d7f: $f8 $11
	ld   de, $1111                                   ; $7d81: $11 $11 $11
	ld   e, [hl]                                     ; $7d84: $5e
	rst  $28                                         ; $7d85: $ef
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	db   $dd                                         ; $7d88: $dd
	sub  l                                           ; $7d89: $95
	ld   l, e                                        ; $7d8a: $6b
	rst  $38                                         ; $7d8b: $ff
	ld   [hl], c                                     ; $7d8c: $71
	ld   de, $1111                                   ; $7d8d: $11 $11 $11
	rra                                              ; $7d90: $1f
	rst  $38                                         ; $7d91: $ff
	rst  $38                                         ; $7d92: $ff
	rst  $38                                         ; $7d93: $ff
	add  c                                           ; $7d94: $81
	ld   [de], a                                     ; $7d95: $12
	sbc  a                                           ; $7d96: $9f
	rst  $38                                         ; $7d97: $ff
	ld   [hl], c                                     ; $7d98: $71
	ld   de, $1c11                                   ; $7d99: $11 $11 $1c
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	xor  c                                           ; $7da0: $a9
	ld   l, d                                        ; $7da1: $6a
	db   $ed                                         ; $7da2: $ed
	ld   b, c                                        ; $7da3: $41
	ld   de, $1111                                   ; $7da4: $11 $11 $11
	rst  $38                                         ; $7da7: $ff
	rst  $38                                         ; $7da8: $ff
	rst  $38                                         ; $7da9: $ff
	pop  af                                          ; $7daa: $f1
	ld   de, $ff4e                                   ; $7dab: $11 $4e $ff
	and  d                                           ; $7dae: $a2
	ld   de, $1111                                   ; $7daf: $11 $11 $11
	ld   c, a                                        ; $7db2: $4f
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	db   $f4                                         ; $7db6: $f4
	add  hl, de                                      ; $7db7: $19
	cp   l                                           ; $7db8: $bd
	rst  $38                                         ; $7db9: $ff
	pop  bc                                          ; $7dba: $c1
	ld   de, $1111                                   ; $7dbb: $11 $11 $11
	rst  $38                                         ; $7dbe: $ff
	rst  $38                                         ; $7dbf: $ff
	rst  $38                                         ; $7dc0: $ff
	db   $f4                                         ; $7dc1: $f4
	ld   de, $f99f                                   ; $7dc2: $11 $9f $f9
	ld   de, $1111                                   ; $7dc5: $11 $11 $11
	rst  $38                                         ; $7dc8: $ff
	ld   b, [hl]                                     ; $7dc9: $46
	rst  $38                                         ; $7dca: $ff
	rst  $38                                         ; $7dcb: $ff
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	cp   b                                           ; $7dce: $b8
	sub  c                                           ; $7dcf: $91
	ld   de, $1111                                   ; $7dd0: $11 $11 $11
	ld   de, $ffff                                   ; $7dd3: $11 $ff $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	inc  de                                          ; $7dd8: $13
	cp   d                                           ; $7dd9: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dda: $cf
	and  c                                           ; $7ddb: $a1
	ld   de, $1411                                   ; $7ddc: $11 $11 $14
	xor  c                                           ; $7ddf: $a9
	ld   c, a                                        ; $7de0: $4f
	rst  $38                                         ; $7de1: $ff
	rst  $38                                         ; $7de2: $ff
	rst  $38                                         ; $7de3: $ff
	cp   $ff                                         ; $7de4: $fe $ff
	rst  $30                                         ; $7de6: $f7
	ld   de, $1111                                   ; $7de7: $11 $11 $11
	ld   de, $ffaf                                   ; $7dea: $11 $af $ff
	rst  $38                                         ; $7ded: $ff
	pop  af                                          ; $7dee: $f1
	inc  e                                           ; $7def: $1c
	rst  $38                                         ; $7df0: $ff
	ld   e, a                                        ; $7df1: $5f
	pop  hl                                          ; $7df2: $e1
	ld   de, $1f11                                   ; $7df3: $11 $11 $1f
	ld   sp, hl                                      ; $7df6: $f9
	adc  a                                           ; $7df7: $8f
	rst  $38                                         ; $7df8: $ff
	dec  d                                           ; $7df9: $15
	rst  $38                                         ; $7dfa: $ff
	cp   $ef                                         ; $7dfb: $fe $ef
	jp   nc, $1411                                   ; $7dfd: $d2 $11 $14

	ld   de, $df11                                   ; $7e00: $11 $11 $df
	rst  $38                                         ; $7e03: $ff
	push af                                          ; $7e04: $f5
	ld   a, d                                        ; $7e05: $7a
	di                                               ; $7e06: $f3
	add  l                                           ; $7e07: $85
	rst  $38                                         ; $7e08: $ff
	pop  de                                          ; $7e09: $d1
	ld   de, $1211                                   ; $7e0a: $11 $11 $12
	rst  $38                                         ; $7e0d: $ff
	push af                                          ; $7e0e: $f5
	rst  $38                                         ; $7e0f: $ff
	ld   sp, $ff37                                   ; $7e10: $31 $37 $ff
	db   $fc                                         ; $7e13: $fc
	ld   de, $1171                                   ; $7e14: $11 $71 $11
	inc  a                                           ; $7e17: $3c
	ld   de, $fa4f                                   ; $7e18: $11 $4f $fa
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	ld   de, $ff9f                                   ; $7e1d: $11 $9f $ff
	ld   de, $1111                                   ; $7e20: $11 $11 $11
	rra                                              ; $7e23: $1f
	db   $fd                                         ; $7e24: $fd
	rst  $38                                         ; $7e25: $ff
	sbc  d                                           ; $7e26: $9a
	ld   sp, $ffff                                   ; $7e27: $31 $ff $ff
	inc  d                                           ; $7e2a: $14
	pop  af                                          ; $7e2b: $f1
	ld   de, $f111                                   ; $7e2c: $11 $11 $f1
	adc  a                                           ; $7e2f: $8f
	pop  bc                                          ; $7e30: $c1
	ld   sp, hl                                      ; $7e31: $f9
	rst  $38                                         ; $7e32: $ff
	xor  a                                           ; $7e33: $af
	dec  de                                          ; $7e34: $1b
	rst  $38                                         ; $7e35: $ff
	and  c                                           ; $7e36: $a1
	ld   b, c                                        ; $7e37: $41
	ld   hl, $3f11                                   ; $7e38: $21 $11 $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e3b: $cf
	rst  $38                                         ; $7e3c: $ff
	cp   $11                                         ; $7e3d: $fe $11
	rst  $38                                         ; $7e3f: $ff
	ld   [$61ff], a                                  ; $7e40: $ea $ff $61
	ld   de, $19f4                                   ; $7e43: $11 $f4 $19
	ldh  a, [c]                                      ; $7e46: $f2
	rra                                              ; $7e47: $1f
	rst  $38                                         ; $7e48: $ff
	ld   e, a                                        ; $7e49: $5f
	rst  $20                                         ; $7e4a: $e7
	ld   de, $fbca                                   ; $7e4b: $11 $ca $fb
	ld   de, $1111                                   ; $7e4e: $11 $11 $11
	rra                                              ; $7e51: $1f
	rst  $38                                         ; $7e52: $ff
	rst  $38                                         ; $7e53: $ff
	or   d                                           ; $7e54: $b2
	ld   de, $ffff                                   ; $7e55: $11 $ff $ff
	rst  $30                                         ; $7e58: $f7
	ld   de, $1611                                   ; $7e59: $11 $11 $16
	ld   [hl], $f1                                   ; $7e5c: $36 $f1
	rra                                              ; $7e5e: $1f
	pop  af                                          ; $7e5f: $f1
	rst  $38                                         ; $7e60: $ff
	rst  $38                                         ; $7e61: $ff
	ld   de, $f46f                                   ; $7e62: $11 $6f $f4
	ld   de, $61df                                   ; $7e65: $11 $df $61
	ld   a, [de]                                     ; $7e68: $1a
	ld   a, b                                        ; $7e69: $78
	rst  $38                                         ; $7e6a: $ff
	ld   a, [$f617]                                  ; $7e6b: $fa $17 $f6
	ld   hl, sp-$31                                  ; $7e6e: $f8 $cf
	pop  af                                          ; $7e70: $f1
	ld   de, $1123                                   ; $7e71: $11 $23 $11
	rst  $38                                         ; $7e74: $ff
	ld   sp, hl                                      ; $7e75: $f9
	rst  $10                                         ; $7e76: $d7
	rst  $38                                         ; $7e77: $ff
	ld   [de], a                                     ; $7e78: $12
	rst  $38                                         ; $7e79: $ff
	and  c                                           ; $7e7a: $a1
	rst  $28                                         ; $7e7b: $ef
	inc  d                                           ; $7e7c: $14
	ld   de, $d1fc                                   ; $7e7d: $11 $fc $d1
	rra                                              ; $7e80: $1f
	rst  $38                                         ; $7e81: $ff
	ld   [hl], c                                     ; $7e82: $71
	rst  $38                                         ; $7e83: $ff
	pop  hl                                          ; $7e84: $e1
	rst  $38                                         ; $7e85: $ff
	rst  $38                                         ; $7e86: $ff
	ld   de, $31f1                                   ; $7e87: $11 $f1 $31
	ld   de, $11ff                                   ; $7e8a: $11 $ff $11
	rst  $38                                         ; $7e8d: $ff
	db   $fc                                         ; $7e8e: $fc
	inc  d                                           ; $7e8f: $14
	ei                                               ; $7e90: $fb
	ld   d, $ff                                      ; $7e91: $16 $ff
	ld   de, $f11e                                   ; $7e93: $11 $1e $f1
	cpl                                              ; $7e96: $2f
	ld   h, [hl]                                     ; $7e97: $66
	ld   de, $3fff                                   ; $7e98: $11 $ff $3f
	rst  $38                                         ; $7e9b: $ff
	inc  de                                          ; $7e9c: $13
	rra                                              ; $7e9d: $1f
	xor  c                                           ; $7e9e: $a9
	pop  af                                          ; $7e9f: $f1
	ld   d, $11                                      ; $7ea0: $16 $11
	ld   de, $ff1e                                   ; $7ea2: $11 $1e $ff
	rst  $38                                         ; $7ea5: $ff
	ld   [hl], c                                     ; $7ea6: $71
	ld   de, $ff5f                                   ; $7ea7: $11 $5f $ff
	adc  h                                           ; $7eaa: $8c
	pop  bc                                          ; $7eab: $c1
	ld   c, b                                        ; $7eac: $48
	cp   $15                                         ; $7ead: $fe $15
	db   $fc                                         ; $7eaf: $fc
	ld   de, $f11f                                   ; $7eb0: $11 $1f $f1
	db   $fd                                         ; $7eb3: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eb4: $cf
	sub  c                                           ; $7eb5: $91
	rst  $38                                         ; $7eb6: $ff
	ld   h, c                                        ; $7eb7: $61
	ld   de, $1191                                   ; $7eb8: $11 $91 $11
	rra                                              ; $7ebb: $1f
	rst  $38                                         ; $7ebc: $ff
	ei                                               ; $7ebd: $fb
	pop  af                                          ; $7ebe: $f1
	rst  $38                                         ; $7ebf: $ff
	db   $ec                                         ; $7ec0: $ec
	rra                                              ; $7ec1: $1f
	rst  JumpTable                                         ; $7ec2: $df
	ld   sp, hl                                      ; $7ec3: $f9
	rra                                              ; $7ec4: $1f
	ld   de, $119c                                   ; $7ec5: $11 $9c $11
	rst  $38                                         ; $7ec8: $ff
	ld   de, $9aff                                   ; $7ec9: $11 $ff $9a
	or   d                                           ; $7ecc: $b2
	rra                                              ; $7ecd: $1f
	ld   l, a                                        ; $7ece: $6f
	pop  af                                          ; $7ecf: $f1
	ld   de, $11cf                                   ; $7ed0: $11 $cf $11
	add  c                                           ; $7ed3: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed4: $cf
	rra                                              ; $7ed5: $1f
	rst  $38                                         ; $7ed6: $ff
	pop  af                                          ; $7ed7: $f1
	ld   e, a                                        ; $7ed8: $5f
	rst  $30                                         ; $7ed9: $f7
	cp   d                                           ; $7eda: $ba
	rst  $38                                         ; $7edb: $ff
	ld   de, $1165                                   ; $7edc: $11 $65 $11
	ld   de, $ff85                                   ; $7edf: $11 $85 $ff
	rst  $38                                         ; $7ee2: $ff
	xor  c                                           ; $7ee3: $a9
	cp   a                                           ; $7ee4: $bf
	jr   z, @+$01                                    ; $7ee5: $28 $ff

	pop  af                                          ; $7ee7: $f1
	inc  h                                           ; $7ee8: $24
	ld   a, [hl-]                                    ; $7ee9: $3a
	pop  de                                          ; $7eea: $d1
	and  d                                           ; $7eeb: $a2
	rra                                              ; $7eec: $1f
	ld   de, $f1ff                                   ; $7eed: $11 $ff $f1
	dec  sp                                          ; $7ef0: $3b
	cp   a                                           ; $7ef1: $bf
	pop  af                                          ; $7ef2: $f1
	rst  JumpTable                                         ; $7ef3: $df
	ld   b, c                                        ; $7ef4: $41

jr_0b3_7ef5:
	inc  e                                           ; $7ef5: $1c
	ld   d, c                                        ; $7ef6: $51
	ld   de, $fd11                                   ; $7ef7: $11 $11 $fd
	rst  $38                                         ; $7efa: $ff
	rra                                              ; $7efb: $1f
	pop  af                                          ; $7efc: $f1
	ld   [hl], d                                     ; $7efd: $72
	rra                                              ; $7efe: $1f
	rst  $38                                         ; $7eff: $ff
	ld   [$1281], a                                  ; $7f00: $ea $81 $12
	rst  $38                                         ; $7f03: $ff
	pop  de                                          ; $7f04: $d1
	add  hl, de                                      ; $7f05: $19
	ld   [de], a                                     ; $7f06: $12
	xor  $fd                                         ; $7f07: $ee $fd
	rst  $38                                         ; $7f09: $ff
	ld   h, l                                        ; $7f0a: $65
	ld   a, $ff                                      ; $7f0b: $3e $ff
	ld   hl, $1411                                   ; $7f0d: $21 $11 $14
	ld   de, $1ffd                                   ; $7f10: $11 $fd $1f
	rst  $38                                         ; $7f13: $ff
	dec  a                                           ; $7f14: $3d
	rst  $38                                         ; $7f15: $ff
	ld   sp, $fdff                                   ; $7f16: $31 $ff $fd
	inc  d                                           ; $7f19: $14
	pop  af                                          ; $7f1a: $f1
	jp   hl                                          ; $7f1b: $e9


	ld   de, $1ff1                                   ; $7f1c: $11 $f1 $1f
	pop  hl                                          ; $7f1f: $e1
	rra                                              ; $7f20: $1f
	rst  $38                                         ; $7f21: $ff
	db   $f4                                         ; $7f22: $f4
	ld   a, [de]                                     ; $7f23: $1a
	rst  $38                                         ; $7f24: $ff
	pop  af                                          ; $7f25: $f1
	ld   de, $4115                                   ; $7f26: $11 $15 $41
	dec  d                                           ; $7f29: $15
	rra                                              ; $7f2a: $1f
	and  c                                           ; $7f2b: $a1
	rst  $38                                         ; $7f2c: $ff
	ld   sp, $f51f                                   ; $7f2d: $31 $1f $f5
	rst  JumpTable                                         ; $7f30: $df
	rst  $38                                         ; $7f31: $ff
	ld   de, $1599                                   ; $7f32: $11 $99 $15
	ld   de, $f11c                                   ; $7f35: $11 $1c $f1
	rra                                              ; $7f38: $1f
	rst  $38                                         ; $7f39: $ff
	pop  af                                          ; $7f3a: $f1
	rra                                              ; $7f3b: $1f
	xor  a                                           ; $7f3c: $af
	jp   hl                                          ; $7f3d: $e9


	pop  af                                          ; $7f3e: $f1
	rla                                              ; $7f3f: $17
	ld   de, $b1fa                                   ; $7f40: $11 $fa $b1
	dec  d                                           ; $7f43: $15
	jr   jr_0b3_7ef5                                 ; $7f44: $18 $af

	rst  $38                                         ; $7f46: $ff
	ld   b, c                                        ; $7f47: $41
	inc  e                                           ; $7f48: $1c
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	ld   h, c                                        ; $7f4b: $61
	ld   de, $1175                                   ; $7f4c: $11 $75 $11
	ld   de, $1fff                                   ; $7f4f: $11 $ff $1f
	push af                                          ; $7f52: $f5
	cp   $f5                                         ; $7f53: $fe $f5
	sbc  a                                           ; $7f55: $9f
	ld   sp, $6fff                                   ; $7f56: $31 $ff $6f
	ld   h, c                                        ; $7f59: $61
	ld   de, $5431                                   ; $7f5a: $11 $31 $54
	ld   a, a                                        ; $7f5d: $7f
	rst  $38                                         ; $7f5e: $ff
	ld   a, [$df41]                                  ; $7f5f: $fa $41 $df
	rst  $38                                         ; $7f62: $ff
	and  h                                           ; $7f63: $a4
	ld   de, $1f31                                   ; $7f64: $11 $31 $1f
	ld   de, rAUD1HIGH                                   ; $7f67: $11 $14 $ff
	pop  af                                          ; $7f6a: $f1
	rst  $38                                         ; $7f6b: $ff
	adc  a                                           ; $7f6c: $8f
	ld   de, $fcff                                   ; $7f6d: $11 $ff $fc
	ei                                               ; $7f70: $fb
	ld   de, $8a59                                   ; $7f71: $11 $59 $8a
	call nz, $1111                                   ; $7f74: $c4 $11 $11
	rst  $38                                         ; $7f77: $ff
	or   h                                           ; $7f78: $b4
	pop  af                                          ; $7f79: $f1
	rst  $38                                         ; $7f7a: $ff
	rra                                              ; $7f7b: $1f
	rst  $38                                         ; $7f7c: $ff
	pop  af                                          ; $7f7d: $f1
	ld   de, $1178                                   ; $7f7e: $11 $78 $11
	ld   a, a                                        ; $7f81: $7f
	rst  $38                                         ; $7f82: $ff
	dec  d                                           ; $7f83: $15
	ld   hl, sp-$0f                                  ; $7f84: $f8 $f1
	rra                                              ; $7f86: $1f
	ld   hl, $fff3                                   ; $7f87: $21 $f3 $ff
	ld   de, $f1ff                                   ; $7f8a: $11 $ff $f1
	rra                                              ; $7f8d: $1f
	ld   e, h                                        ; $7f8e: $5c
	ld   de, $d1ff                                   ; $7f8f: $11 $ff $d1
	rst  $38                                         ; $7f92: $ff
	and  $15                                         ; $7f93: $e6 $15
	rst  $38                                         ; $7f95: $ff
	pop  af                                          ; $7f96: $f1
	ld   de, $116f                                   ; $7f97: $11 $6f $11
	ld   c, a                                        ; $7f9a: $4f
	db   $f4                                         ; $7f9b: $f4
	dec  de                                          ; $7f9c: $1b
	rst  $38                                         ; $7f9d: $ff
	ld   h, l                                        ; $7f9e: $65
	rst  $38                                         ; $7f9f: $ff
	pop  hl                                          ; $7fa0: $e1
	cpl                                              ; $7fa1: $2f
	ld   sp, hl                                      ; $7fa2: $f9
	ld   de, $a1bf                                   ; $7fa3: $11 $bf $a1
	ld   d, $8f                                      ; $7fa6: $16 $8f
	ld   de, $ffff                                   ; $7fa8: $11 $ff $ff
	ld   a, [de]                                     ; $7fab: $1a
	cp   $c6                                         ; $7fac: $fe $c6
	rst  $28                                         ; $7fae: $ef
	xor  b                                           ; $7faf: $a8
	inc  d                                           ; $7fb0: $14
	rst  $38                                         ; $7fb1: $ff
	ld   de, $df1a                                   ; $7fb2: $11 $1a $df
	pop  af                                          ; $7fb5: $f1
	rra                                              ; $7fb6: $1f
	ld   sp, hl                                      ; $7fb7: $f9
	rra                                              ; $7fb8: $1f
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	inc  e                                           ; $7fbb: $1c
	pop  de                                          ; $7fbc: $d1
	ld   de, $11f7                                   ; $7fbd: $11 $f7 $11
	rra                                              ; $7fc0: $1f
	pop  af                                          ; $7fc1: $f1
	rra                                              ; $7fc2: $1f
	rst  $38                                         ; $7fc3: $ff
	pop  af                                          ; $7fc4: $f1
	inc  d                                           ; $7fc5: $14
	xor  a                                           ; $7fc6: $af
	rst  $38                                         ; $7fc7: $ff
	push hl                                          ; $7fc8: $e5
	inc  de                                          ; $7fc9: $13
	ld   sp, $1ff1                                   ; $7fca: $31 $f1 $1f
	rst  $30                                         ; $7fcd: $f7
	ld   de, $ff2f                                   ; $7fce: $11 $2f $ff
	db   $eb                                         ; $7fd1: $eb
	add  c                                           ; $7fd2: $81
	cpl                                              ; $7fd3: $2f
	rst  $38                                         ; $7fd4: $ff
	ld   sp, $c111                                   ; $7fd5: $31 $11 $c1
	ld   de, $ff2f                                   ; $7fd8: $11 $2f $ff
	ld   de, $ffbf                                   ; $7fdb: $11 $bf $ff
	rst  $38                                         ; $7fde: $ff
	ld   [hl], c                                     ; $7fdf: $71
	ld   [de], a                                     ; $7fe0: $12
	rst  $38                                         ; $7fe1: $ff
	ld   a, [$1181]                                  ; $7fe2: $fa $81 $11
	ld   [de], a                                     ; $7fe5: $12
	add  l                                           ; $7fe6: $85
	rra                                              ; $7fe7: $1f
	rst  $38                                         ; $7fe8: $ff
	and  c                                           ; $7fe9: $a1
	rst  JumpTable                                         ; $7fea: $df
	rst  $38                                         ; $7feb: $ff
	ld   de, $118f                                   ; $7fec: $11 $8f $11
	ld   a, [de]                                     ; $7fef: $1a
	rst  $38                                         ; $7ff0: $ff
	ld   de, $f19f                                   ; $7ff1: $11 $9f $f1
	rra                                              ; $7ff4: $1f
	rst  $38                                         ; $7ff5: $ff
	and  c                                           ; $7ff6: $a1
	ld   a, a                                        ; $7ff7: $7f
	db   $fc                                         ; $7ff8: $fc
	reti                                             ; $7ff9: $d9


	db   $fc                                         ; $7ffa: $fc
	dec  d                                           ; $7ffb: $15
	inc  d                                           ; $7ffc: $14
	call nc, $d711                                   ; $7ffd: $d4 $11 $d7
