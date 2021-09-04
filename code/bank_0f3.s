; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f3", ROMX[$4000], BANK[$f3]

	ld   de, rAUD1LEN                                   ; $4000: $11 $11 $ff
	cp   a                                           ; $4003: $bf
	rst  $38                                         ; $4004: $ff
	pop  af                                          ; $4005: $f1
	ld   de, $1628                                   ; $4006: $11 $28 $16
	rst  $38                                         ; $4009: $ff
	add  sp, $4a                                     ; $400a: $e8 $4a
	ld   d, c                                        ; $400c: $51
	ld   d, $ff                                      ; $400d: $16 $ff
	rst  $38                                         ; $400f: $ff
	db   $fd                                         ; $4010: $fd
	ld   [hl], c                                     ; $4011: $71
	add  hl, de                                      ; $4012: $19
	cp   h                                           ; $4013: $bc
	ret  z                                           ; $4014: $c8

	ld   sp, $1f11                                   ; $4015: $31 $11 $1f
	ei                                               ; $4018: $fb
	db   $fd                                         ; $4019: $fd
	rst  $30                                         ; $401a: $f7
	ld   de, $1114                                   ; $401b: $11 $14 $11
	rst  $38                                         ; $401e: $ff
	db   $fd                                         ; $401f: $fd
	ld   a, c                                        ; $4020: $79
	pop  bc                                          ; $4021: $c1
	ld   [de], a                                     ; $4022: $12
	xor  l                                           ; $4023: $ad
	xor  a                                           ; $4024: $af
	rst  $38                                         ; $4025: $ff
	ld   [$7948], a                                  ; $4026: $ea $48 $79
	db   $ed                                         ; $4029: $ed
	add  $11                                         ; $402a: $c6 $11
	ld   de, $fd1f                                   ; $402c: $11 $1f $fd
	ld   a, [$11f7]                                  ; $402f: $fa $f7 $11
	inc  d                                           ; $4032: $14
	ld   hl, $ffff                                   ; $4033: $21 $ff $ff
	adc  d                                           ; $4036: $8a
	or   c                                           ; $4037: $b1
	ld   de, $cd9c                                   ; $4038: $11 $9c $cd
	rst  $38                                         ; $403b: $ff
	or   $48                                         ; $403c: $f6 $48
	cp   b                                           ; $403e: $b8
	ld   a, [hl]                                     ; $403f: $7e
	db   $fc                                         ; $4040: $fc
	ld   sp, $1111                                   ; $4041: $31 $11 $11
	rst  $38                                         ; $4044: $ff
	rst  $38                                         ; $4045: $ff
	rst  JumpTable                                         ; $4046: $df
	ld   d, c                                        ; $4047: $51
	ld   de, $1f41                                   ; $4048: $11 $41 $1f
	rst  $38                                         ; $404b: $ff
	ld   a, [$11ec]                                  ; $404c: $fa $ec $11
	dec  d                                           ; $404f: $15
	add  a                                           ; $4050: $87
	xor  a                                           ; $4051: $af
	rst  $38                                         ; $4052: $ff
	or   a                                           ; $4053: $b7
	sub  [hl]                                        ; $4054: $96
	adc  c                                           ; $4055: $89
	xor  a                                           ; $4056: $af
	jp   c, $1161                                    ; $4057: $da $61 $11

	ld   de, sRandomSeed                                   ; $405a: $11 $ff $bf
	rst  $38                                         ; $405d: $ff
	pop  af                                          ; $405e: $f1
	ld   de, $1713                                   ; $405f: $11 $13 $17
	rst  $38                                         ; $4062: $ff
	db   $fd                                         ; $4063: $fd
	cp   [hl]                                        ; $4064: $be
	ld   sp, $8811                                   ; $4065: $31 $11 $88
	cp   a                                           ; $4068: $bf
	rst  $38                                         ; $4069: $ff
	or   l                                           ; $406a: $b5
	ld   h, l                                        ; $406b: $65
	inc  sp                                          ; $406c: $33
	xor  a                                           ; $406d: $af
	rst  $38                                         ; $406e: $ff
	cp   c                                           ; $406f: $b9
	ld   b, c                                        ; $4070: $41
	ld   de, rAUD1LEN                                   ; $4071: $11 $11 $ff
	rst  $38                                         ; $4074: $ff
	rst  $38                                         ; $4075: $ff
	pop  hl                                          ; $4076: $e1
	ld   de, $1c12                                   ; $4077: $11 $12 $1c
	rst  $38                                         ; $407a: $ff
	db   $fd                                         ; $407b: $fd
	jp   z, $1111                                    ; $407c: $ca $11 $11

	ld   a, c                                        ; $407f: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4080: $cf
	rst  $38                                         ; $4081: $ff
	and  h                                           ; $4082: $a4
	ld   hl, $af34                                   ; $4083: $21 $34 $af
	rst  $38                                         ; $4086: $ff
	ei                                               ; $4087: $fb
	ld   d, c                                        ; $4088: $51
	ld   de, $1611                                   ; $4089: $11 $11 $16
	rst  $38                                         ; $408c: $ff
	rst  $38                                         ; $408d: $ff
	rst  $38                                         ; $408e: $ff
	ld   de, $7211                                   ; $408f: $11 $11 $72
	ld   e, a                                        ; $4092: $5f
	rst  $38                                         ; $4093: $ff
	rst  $20                                         ; $4094: $e7
	sub  e                                           ; $4095: $93
	ld   de, wTitleScreenCounterForResettingData                                   ; $4096: $11 $17 $cc
	rst  $38                                         ; $4099: $ff
	db   $fc                                         ; $409a: $fc
	ld   b, c                                        ; $409b: $41
	ld   de, $df36                                   ; $409c: $11 $36 $df
	rst  $38                                         ; $409f: $ff
	ld   hl, sp+$51                                  ; $40a0: $f8 $51
	ld   de, $1111                                   ; $40a2: $11 $11 $11
	ld   a, a                                        ; $40a5: $7f
	rst  $38                                         ; $40a6: $ff
	jp   c, $11f1                                    ; $40a7: $da $f1 $11

	dec  de                                          ; $40aa: $1b
	ld   h, [hl]                                     ; $40ab: $66
	rst  $38                                         ; $40ac: $ff
	ld   sp, hl                                      ; $40ad: $f9
	ld   b, a                                        ; $40ae: $47
	ld   b, c                                        ; $40af: $41
	ld   de, $bdbe                                   ; $40b0: $11 $be $bd
	rst  $38                                         ; $40b3: $ff
	and  e                                           ; $40b4: $a3
	inc  hl                                          ; $40b5: $23
	inc  sp                                          ; $40b6: $33
	ld   c, l                                        ; $40b7: $4d
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	reti                                             ; $40ba: $d9


	ld   de, $3123                                   ; $40bb: $11 $23 $31
	ld   de, $fe1f                                   ; $40be: $11 $1f $fe
	db   $eb                                         ; $40c1: $eb
	ld   a, [$1511]                                  ; $40c2: $fa $11 $15
	sub  h                                           ; $40c5: $94
	cp   a                                           ; $40c6: $bf
	db   $fd                                         ; $40c7: $fd
	ld   [hl], a                                     ; $40c8: $77
	ld   [hl], h                                     ; $40c9: $74
	ld   hl, $bb6c                                   ; $40ca: $21 $6c $bb
	rst  JumpTable                                         ; $40cd: $df
	ret  z                                           ; $40ce: $c8

	ld   b, h                                        ; $40cf: $44
	ld   b, h                                        ; $40d0: $44
	ld   b, [hl]                                     ; $40d1: $46
	cp   a                                           ; $40d2: $bf
	cp   $ff                                         ; $40d3: $fe $ff
	cp   b                                           ; $40d5: $b8
	ld   b, e                                        ; $40d6: $43
	ld   d, d                                        ; $40d7: $52
	ld   de, $1a11                                   ; $40d8: $11 $11 $1a
	rst  $38                                         ; $40db: $ff
	call z, $11bd                                    ; $40dc: $cc $bd $11
	inc  hl                                          ; $40df: $23
	sub  [hl]                                        ; $40e0: $96
	ld   l, a                                        ; $40e1: $6f
	cp   $87                                         ; $40e2: $fe $87
	add  a                                           ; $40e4: $87
	ld   b, e                                        ; $40e5: $43
	ld   e, e                                        ; $40e6: $5b
	xor  c                                           ; $40e7: $a9
	xor  h                                           ; $40e8: $ac
	reti                                             ; $40e9: $d9


	ld   h, l                                        ; $40ea: $65
	ld   h, [hl]                                     ; $40eb: $66
	ld   d, l                                        ; $40ec: $55
	xor  e                                           ; $40ed: $ab
	cp   h                                           ; $40ee: $bc
	cp   $cc                                         ; $40ef: $fe $cc
	sub  a                                           ; $40f1: $97
	ld   h, l                                        ; $40f2: $65
	ld   h, h                                        ; $40f3: $64
	ld   b, e                                        ; $40f4: $43
	ld   de, rAUD1HIGH                                   ; $40f5: $11 $14 $ff
	cp   l                                           ; $40f8: $bd
	rst  JumpTable                                         ; $40f9: $df
	ld   h, c                                        ; $40fa: $61
	ld   b, e                                        ; $40fb: $43
	ld   [hl], l                                     ; $40fc: $75
	inc  a                                           ; $40fd: $3c
	db   $fd                                         ; $40fe: $fd
	cp   c                                           ; $40ff: $b9
	xor  c                                           ; $4100: $a9
	ld   h, e                                        ; $4101: $63
	scf                                              ; $4102: $37
	add  a                                           ; $4103: $87
	sbc  e                                           ; $4104: $9b
	res  2, a                                        ; $4105: $cb $97
	halt                                             ; $4107: $76
	ld   d, h                                        ; $4108: $54
	ld   a, d                                        ; $4109: $7a
	xor  d                                           ; $410a: $aa
	cp   h                                           ; $410b: $bc
	db   $db                                         ; $410c: $db
	xor  d                                           ; $410d: $aa
	xor  b                                           ; $410e: $a8
	ld   a, b                                        ; $410f: $78
	add  [hl]                                        ; $4110: $86
	ld   sp, $1111                                   ; $4111: $31 $11 $11
	rst  $38                                         ; $4114: $ff
	xor  $df                                         ; $4115: $ee $df
	and  c                                           ; $4117: $a1
	ld   de, $2946                                   ; $4118: $11 $46 $29
	rst  $38                                         ; $411b: $ff
	ld   [$63a9], a                                  ; $411c: $ea $a9 $63
	dec  d                                           ; $411f: $15
	adc  c                                           ; $4120: $89
	sbc  h                                           ; $4121: $9c
	db   $dd                                         ; $4122: $dd
	and  [hl]                                        ; $4123: $a6
	ld   d, l                                        ; $4124: $55
	ld   d, h                                        ; $4125: $54
	ld   l, c                                        ; $4126: $69
	cp   e                                           ; $4127: $bb
	res  7, d                                        ; $4128: $cb $ba
	add  [hl]                                        ; $412a: $86
	ld   a, d                                        ; $412b: $7a
	cp   e                                           ; $412c: $bb
	cp   l                                           ; $412d: $bd
	cp   c                                           ; $412e: $b9
	ld   d, d                                        ; $412f: $52
	ld   de, $1f11                                   ; $4130: $11 $11 $1f
	rst  $38                                         ; $4133: $ff
	rst  $38                                         ; $4134: $ff
	ei                                               ; $4135: $fb
	ld   de, $6212                                   ; $4136: $11 $12 $62
	sbc  a                                           ; $4139: $9f
	rst  $38                                         ; $413a: $ff
	cp   c                                           ; $413b: $b9
	sub  l                                           ; $413c: $95
	ld   hl, $9a39                                   ; $413d: $21 $39 $9a
	sbc  $eb                                         ; $4140: $de $eb
	ld   h, l                                        ; $4142: $65
	ld   b, h                                        ; $4143: $44
	inc  h                                           ; $4144: $24
	adc  e                                           ; $4145: $8b
	call z, $b7dd                                    ; $4146: $cc $dd $b7
	ld   d, l                                        ; $4149: $55
	ld   d, a                                        ; $414a: $57
	sbc  h                                           ; $414b: $9c
	db   $ed                                         ; $414c: $ed
	jp   c, $3296                                    ; $414d: $da $96 $32

	ld   de, $1201                                   ; $4150: $11 $01 $12
	rst  $38                                         ; $4153: $ff
	call z, Call_0f3_71df                            ; $4154: $cc $df $71
	ld   de, $4b67                                   ; $4157: $11 $67 $4b
	rst  $38                                         ; $415a: $ff
	cp   b                                           ; $415b: $b8
	adc  b                                           ; $415c: $88
	ld   d, d                                        ; $415d: $52
	daa                                              ; $415e: $27
	sbc  c                                           ; $415f: $99
	xor  e                                           ; $4160: $ab
	res  0, l                                        ; $4161: $cb $85
	ld   d, [hl]                                     ; $4163: $56
	ld   d, l                                        ; $4164: $55
	ld   l, c                                        ; $4165: $69
	cp   h                                           ; $4166: $bc
	cp   d                                           ; $4167: $ba
	xor  b                                           ; $4168: $a8
	ld   d, e                                        ; $4169: $53
	ld   b, l                                        ; $416a: $45
	ld   h, a                                        ; $416b: $67
	sbc  h                                           ; $416c: $9c
	rst  $28                                         ; $416d: $ef
	db   $db                                         ; $416e: $db
	add  a                                           ; $416f: $87
	ld   h, l                                        ; $4170: $65
	ld   d, [hl]                                     ; $4171: $56
	halt                                             ; $4172: $76
	ld   b, d                                        ; $4173: $42
	ld   de, $fe19                                   ; $4174: $11 $19 $fe
	xor  e                                           ; $4177: $ab
	bit  6, e                                        ; $4178: $cb $73
	ld   b, l                                        ; $417a: $45
	ld   h, l                                        ; $417b: $65
	ld   l, d                                        ; $417c: $6a
	call z, $a9ba                                    ; $417d: $cc $ba $a9
	ld   h, l                                        ; $4180: $65
	ld   d, a                                        ; $4181: $57
	ld   a, b                                        ; $4182: $78
	sbc  d                                           ; $4183: $9a
	cp   e                                           ; $4184: $bb
	sub  a                                           ; $4185: $97
	ld   [hl], a                                     ; $4186: $77

Jump_0f3_4187:
	ld   h, l                                        ; $4187: $65
	ld   l, b                                        ; $4188: $68
	sbc  d                                           ; $4189: $9a
	sbc  d                                           ; $418a: $9a
	xor  c                                           ; $418b: $a9
	halt                                             ; $418c: $76
	ld   h, [hl]                                     ; $418d: $66
	ld   h, a                                        ; $418e: $67
	adc  d                                           ; $418f: $8a
	cp   e                                           ; $4190: $bb
	xor  e                                           ; $4191: $ab
	jp   z, $8887                                    ; $4192: $ca $87 $88

	adc  b                                           ; $4195: $88
	sbc  b                                           ; $4196: $98
	add  [hl]                                        ; $4197: $86
	ld   b, e                                        ; $4198: $43
	ld   de, rAUD1LOW                                   ; $4199: $11 $13 $ff
	call z, $91ed                                    ; $419c: $cc $ed $91
	ld   [hl+], a                                    ; $419f: $22
	ld   d, l                                        ; $41a0: $55
	ld   c, d                                        ; $41a1: $4a
	sbc  $da                                         ; $41a2: $de $da
	xor  c                                           ; $41a4: $a9
	ld   h, e                                        ; $41a5: $63
	dec  h                                           ; $41a6: $25
	ld   [hl], a                                     ; $41a7: $77
	sbc  e                                           ; $41a8: $9b
	call Call_0f3_76a7                               ; $41a9: $cd $a7 $76
	ld   d, h                                        ; $41ac: $54
	ld   l, b                                        ; $41ad: $68
	xor  d                                           ; $41ae: $aa
	xor  d                                           ; $41af: $aa
	cp   c                                           ; $41b0: $b9
	ld   [hl], l                                     ; $41b1: $75
	ld   d, l                                        ; $41b2: $55
	ld   h, [hl]                                     ; $41b3: $66
	adc  d                                           ; $41b4: $8a
	cp   e                                           ; $41b5: $bb
	cp   c                                           ; $41b6: $b9
	xor  b                                           ; $41b7: $a8
	halt                                             ; $41b8: $76
	ld   a, c                                        ; $41b9: $79
	sbc  c                                           ; $41ba: $99
	xor  h                                           ; $41bb: $ac
	cp   d                                           ; $41bc: $ba
	sbc  b                                           ; $41bd: $98
	halt                                             ; $41be: $76
	ld   h, [hl]                                     ; $41bf: $66
	ld   h, l                                        ; $41c0: $65
	ld   sp, $9f11                                   ; $41c1: $31 $11 $9f
	ld   [$c5cd], a                                  ; $41c4: $ea $cd $c5
	inc  h                                           ; $41c7: $24
	ld   d, a                                        ; $41c8: $57
	ld   d, [hl]                                     ; $41c9: $56
	call $99b9                                       ; $41ca: $cd $b9 $99
	add  [hl]                                        ; $41cd: $86
	ld   b, l                                        ; $41ce: $45
	adc  c                                           ; $41cf: $89
	adc  c                                           ; $41d0: $89
	cp   h                                           ; $41d1: $bc
	xor  b                                           ; $41d2: $a8
	ld   [hl], a                                     ; $41d3: $77
	halt                                             ; $41d4: $76
	ld   h, a                                        ; $41d5: $67
	xor  d                                           ; $41d6: $aa
	xor  c                                           ; $41d7: $a9
	xor  c                                           ; $41d8: $a9
	add  [hl]                                        ; $41d9: $86
	ld   d, [hl]                                     ; $41da: $56
	ld   h, a                                        ; $41db: $67
	ld   a, c                                        ; $41dc: $79
	xor  d                                           ; $41dd: $aa
	xor  c                                           ; $41de: $a9
	sub  a                                           ; $41df: $97
	halt                                             ; $41e0: $76
	ld   h, a                                        ; $41e1: $67
	ld   a, c                                        ; $41e2: $79
	sbc  c                                           ; $41e3: $99
	xor  c                                           ; $41e4: $a9
	sbc  b                                           ; $41e5: $98
	adc  b                                           ; $41e6: $88
	ld   [hl], a                                     ; $41e7: $77
	adc  c                                           ; $41e8: $89
	sbc  c                                           ; $41e9: $99
	xor  d                                           ; $41ea: $aa
	xor  b                                           ; $41eb: $a8
	adc  b                                           ; $41ec: $88
	ld   [hl], a                                     ; $41ed: $77
	ld   [hl], a                                     ; $41ee: $77
	halt                                             ; $41ef: $76
	ld   b, c                                        ; $41f0: $41
	ld   de, $e96f                                   ; $41f1: $11 $6f $e9
	call z, $34d7                                    ; $41f4: $cc $d7 $34
	ld   b, a                                        ; $41f7: $47
	ld   d, l                                        ; $41f8: $55
	xor  l                                           ; $41f9: $ad
	res  3, d                                        ; $41fa: $cb $9a
	sub  a                                           ; $41fc: $97
	ld   b, h                                        ; $41fd: $44
	ld   a, b                                        ; $41fe: $78
	adc  b                                           ; $41ff: $88
	xor  h                                           ; $4200: $ac
	cp   c                                           ; $4201: $b9
	ld   [hl], a                                     ; $4202: $77
	halt                                             ; $4203: $76
	ld   d, [hl]                                     ; $4204: $56
	adc  d                                           ; $4205: $8a
	sbc  d                                           ; $4206: $9a
	xor  d                                           ; $4207: $aa
	sub  a                                           ; $4208: $97
	ld   h, [hl]                                     ; $4209: $66
	ld   h, a                                        ; $420a: $67
	ld   a, b                                        ; $420b: $78
	xor  d                                           ; $420c: $aa
	xor  d                                           ; $420d: $aa
	sbc  c                                           ; $420e: $99
	halt                                             ; $420f: $76
	ld   h, [hl]                                     ; $4210: $66
	ld   a, b                                        ; $4211: $78
	adc  c                                           ; $4212: $89
	sbc  c                                           ; $4213: $99
	sbc  c                                           ; $4214: $99
	add  a                                           ; $4215: $87
	ld   h, [hl]                                     ; $4216: $66
	ld   h, a                                        ; $4217: $67
	adc  b                                           ; $4218: $88
	sbc  c                                           ; $4219: $99
	sbc  b                                           ; $421a: $98
	add  a                                           ; $421b: $87
	ld   [hl], a                                     ; $421c: $77
	ld   [hl], a                                     ; $421d: $77
	adc  c                                           ; $421e: $89
	sbc  c                                           ; $421f: $99
	sbc  b                                           ; $4220: $98
	adc  b                                           ; $4221: $88
	ld   [hl], a                                     ; $4222: $77
	ld   [hl], a                                     ; $4223: $77
	adc  c                                           ; $4224: $89
	sbc  c                                           ; $4225: $99
	sbc  d                                           ; $4226: $9a
	sbc  c                                           ; $4227: $99
	adc  b                                           ; $4228: $88
	ld   [hl], a                                     ; $4229: $77
	adc  b                                           ; $422a: $88
	sbc  c                                           ; $422b: $99
	sbc  c                                           ; $422c: $99
	sbc  b                                           ; $422d: $98
	add  a                                           ; $422e: $87
	ld   a, b                                        ; $422f: $78
	add  a                                           ; $4230: $87
	ld   [hl], a                                     ; $4231: $77
	ld   h, h                                        ; $4232: $64
	ld   de, $e95f                                   ; $4233: $11 $5f $e9
	xor  e                                           ; $4236: $ab
	ret                                              ; $4237: $c9


	ld   b, h                                        ; $4238: $44
	ld   e, b                                        ; $4239: $58
	ld   h, l                                        ; $423a: $65
	sbc  e                                           ; $423b: $9b
	cp   e                                           ; $423c: $bb
	adc  c                                           ; $423d: $89
	and  a                                           ; $423e: $a7
	ld   d, h                                        ; $423f: $54
	ld   a, b                                        ; $4240: $78
	adc  c                                           ; $4241: $89
	xor  d                                           ; $4242: $aa
	cp   c                                           ; $4243: $b9
	ld   [hl], a                                     ; $4244: $77
	halt                                             ; $4245: $76
	ld   h, [hl]                                     ; $4246: $66
	adc  d                                           ; $4247: $8a
	xor  d                                           ; $4248: $aa
	xor  c                                           ; $4249: $a9
	sbc  b                                           ; $424a: $98
	ld   h, [hl]                                     ; $424b: $66
	ld   h, a                                        ; $424c: $67
	ld   a, b                                        ; $424d: $78
	sbc  d                                           ; $424e: $9a
	xor  d                                           ; $424f: $aa
	sbc  c                                           ; $4250: $99
	add  a                                           ; $4251: $87
	ld   h, [hl]                                     ; $4252: $66
	ld   a, b                                        ; $4253: $78
	adc  b                                           ; $4254: $88
	xor  d                                           ; $4255: $aa
	sbc  b                                           ; $4256: $98
	add  a                                           ; $4257: $87
	ld   [hl], a                                     ; $4258: $77
	ld   [hl], a                                     ; $4259: $77
	adc  b                                           ; $425a: $88
	sbc  c                                           ; $425b: $99
	adc  c                                           ; $425c: $89
	adc  b                                           ; $425d: $88
	ld   [hl], a                                     ; $425e: $77
	ld   [hl], a                                     ; $425f: $77
	adc  b                                           ; $4260: $88
	sbc  b                                           ; $4261: $98
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	add  a                                           ; $4264: $87
	ld   [hl], a                                     ; $4265: $77
	adc  b                                           ; $4266: $88
	sbc  c                                           ; $4267: $99
	adc  b                                           ; $4268: $88
	sbc  c                                           ; $4269: $99
	adc  b                                           ; $426a: $88
	ld   [hl], a                                     ; $426b: $77
	ld   a, b                                        ; $426c: $78
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	adc  b                                           ; $426f: $88
	adc  b                                           ; $4270: $88
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	sbc  c                                           ; $4275: $99
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	adc  b                                           ; $4278: $88
	adc  b                                           ; $4279: $88
	adc  b                                           ; $427a: $88
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	add  a                                           ; $427f: $87
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	adc  b                                           ; $4283: $88
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  c                                           ; $4288: $89
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	ld   a, b                                        ; $428c: $78
	adc  b                                           ; $428d: $88
	adc  c                                           ; $428e: $89
	sbc  b                                           ; $428f: $98
	adc  b                                           ; $4290: $88
	add  a                                           ; $4291: $87
	ld   a, b                                        ; $4292: $78
	adc  b                                           ; $4293: $88
	adc  c                                           ; $4294: $89
	sbc  c                                           ; $4295: $99
	adc  b                                           ; $4296: $88
	add  a                                           ; $4297: $87
	ld   [hl], a                                     ; $4298: $77
	ld   a, b                                        ; $4299: $78
	adc  b                                           ; $429a: $88
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	ld   [hl], a                                     ; $429e: $77
	adc  b                                           ; $429f: $88
	adc  b                                           ; $42a0: $88
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	adc  b                                           ; $42a4: $88
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88

Call_0f3_42a7:
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
	add  c                                           ; $42d5: $81
	ld   de, $1111                                   ; $42d6: $11 $11 $11
	ld   de, $1111                                   ; $42d9: $11 $11 $11
	ld   de, $1111                                   ; $42dc: $11 $11 $11
	ld   de, $1111                                   ; $42df: $11 $11 $11
	ld   de, $1111                                   ; $42e2: $11 $11 $11
	ld   de, $1111                                   ; $42e5: $11 $11 $11
	ld   de, $1111                                   ; $42e8: $11 $11 $11
	ld   de, $1111                                   ; $42eb: $11 $11 $11
	ld   de, $1111                                   ; $42ee: $11 $11 $11
	ld   de, $1111                                   ; $42f1: $11 $11 $11
	ld   de, $1111                                   ; $42f4: $11 $11 $11
	ld   de, $1111                                   ; $42f7: $11 $11 $11
	nop                                              ; $42fa: $00
	ld   c, b                                        ; $42fb: $48
	ld   de, $1111                                   ; $42fc: $11 $11 $11
	ld   de, $1111                                   ; $42ff: $11 $11 $11
	ld   de, $1111                                   ; $4302: $11 $11 $11
	ld   de, $5413                                   ; $4305: $11 $13 $54
	ld   d, h                                        ; $4308: $54
	ld   d, h                                        ; $4309: $54
	ld   b, c                                        ; $430a: $41
	rra                                              ; $430b: $1f
	rst  $38                                         ; $430c: $ff
	pop  af                                          ; $430d: $f1
	ld   de, $1411                                   ; $430e: $11 $11 $14
	ld   de, $1c11                                   ; $4311: $11 $11 $1c
	db   $dd                                         ; $4314: $dd
	call c, $d1dd                                    ; $4315: $dc $dd $d1
	ld   de, $1111                                   ; $4318: $11 $11 $11
	ld   de, $1111                                   ; $431b: $11 $11 $11
	ld   de, $1111                                   ; $431e: $11 $11 $11
	ld   de, $1111                                   ; $4321: $11 $11 $11
	ld   de, $5411                                   ; $4324: $11 $11 $54
	ld   b, h                                        ; $4327: $44
	inc  d                                           ; $4328: $14
	ld   de, $5454                                   ; $4329: $11 $54 $54
	ld   h, a                                        ; $432c: $67
	ld   [hl], d                                     ; $432d: $72
	ld   de, $1111                                   ; $432e: $11 $11 $11
	ld   de, $1112                                   ; $4331: $11 $12 $11
	ld   [de], a                                     ; $4334: $12
	ld   de, $1111                                   ; $4335: $11 $11 $11
	ld   h, [hl]                                     ; $4338: $66
	halt                                             ; $4339: $76
	db   $f4                                         ; $433a: $f4
	ld   de, $8888                                   ; $433b: $11 $88 $88
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
	adc  c                                           ; $436d: $89
	ld   a, b                                        ; $436e: $78
	add  a                                           ; $436f: $87
	adc  b                                           ; $4370: $88
	sbc  b                                           ; $4371: $98
	adc  c                                           ; $4372: $89
	ld   a, b                                        ; $4373: $78
	sbc  b                                           ; $4374: $98
	ld   a, c                                        ; $4375: $79
	add  a                                           ; $4376: $87
	adc  b                                           ; $4377: $88
	adc  b                                           ; $4378: $88
	sbc  b                                           ; $4379: $98
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	adc  b                                           ; $437c: $88
	adc  c                                           ; $437d: $89
	adc  b                                           ; $437e: $88
	adc  b                                           ; $437f: $88
	adc  b                                           ; $4380: $88
	adc  c                                           ; $4381: $89
	xor  b                                           ; $4382: $a8
	ld   a, b                                        ; $4383: $78
	adc  b                                           ; $4384: $88
	adc  b                                           ; $4385: $88
	adc  b                                           ; $4386: $88
	ld   a, b                                        ; $4387: $78
	adc  b                                           ; $4388: $88
	adc  b                                           ; $4389: $88
	adc  b                                           ; $438a: $88
	adc  c                                           ; $438b: $89
	adc  c                                           ; $438c: $89
	adc  b                                           ; $438d: $88
	sbc  b                                           ; $438e: $98
	adc  b                                           ; $438f: $88
	adc  b                                           ; $4390: $88
	add  a                                           ; $4391: $87
	sbc  c                                           ; $4392: $99
	ld   a, c                                        ; $4393: $79
	sbc  b                                           ; $4394: $98
	adc  b                                           ; $4395: $88
	adc  b                                           ; $4396: $88
	adc  b                                           ; $4397: $88
	adc  b                                           ; $4398: $88
	adc  b                                           ; $4399: $88
	add  a                                           ; $439a: $87
	ld   a, b                                        ; $439b: $78
	sbc  c                                           ; $439c: $99
	adc  b                                           ; $439d: $88
	ld   [hl], a                                     ; $439e: $77
	adc  b                                           ; $439f: $88
	ld   a, b                                        ; $43a0: $78
	sbc  b                                           ; $43a1: $98
	adc  b                                           ; $43a2: $88
	add  a                                           ; $43a3: $87
	ld   a, b                                        ; $43a4: $78
	add  a                                           ; $43a5: $87
	adc  c                                           ; $43a6: $89
	adc  c                                           ; $43a7: $89
	add  a                                           ; $43a8: $87
	ld   a, b                                        ; $43a9: $78
	sub  a                                           ; $43aa: $97
	ld   a, c                                        ; $43ab: $79
	add  a                                           ; $43ac: $87
	adc  c                                           ; $43ad: $89
	ld   [hl], a                                     ; $43ae: $77
	ld   a, d                                        ; $43af: $7a
	sbc  c                                           ; $43b0: $99
	push hl                                          ; $43b1: $e5
	ld   d, [hl]                                     ; $43b2: $56
	xor  e                                           ; $43b3: $ab
	ld   c, c                                        ; $43b4: $49
	ld   a, b                                        ; $43b5: $78
	halt                                             ; $43b6: $76
	sub  a                                           ; $43b7: $97
	sub  a                                           ; $43b8: $97
	cp   b                                           ; $43b9: $b8
	ld   c, e                                        ; $43ba: $4b
	call nz, Call_0f3_697a                           ; $43bb: $c4 $7a $69
	adc  b                                           ; $43be: $88
	ld   l, b                                        ; $43bf: $68
	adc  b                                           ; $43c0: $88
	sub  l                                           ; $43c1: $95
	adc  c                                           ; $43c2: $89
	sbc  b                                           ; $43c3: $98
	halt                                             ; $43c4: $76
	sbc  d                                           ; $43c5: $9a
	ld   [hl], a                                     ; $43c6: $77
	adc  c                                           ; $43c7: $89
	sub  [hl]                                        ; $43c8: $96
	ld   a, c                                        ; $43c9: $79
	adc  d                                           ; $43ca: $8a
	sub  a                                           ; $43cb: $97
	ld   h, [hl]                                     ; $43cc: $66
	cp   d                                           ; $43cd: $ba
	and  a                                           ; $43ce: $a7
	ld   e, b                                        ; $43cf: $58
	ld   a, d                                        ; $43d0: $7a
	ld   h, a                                        ; $43d1: $67
	sub  a                                           ; $43d2: $97
	ld   a, b                                        ; $43d3: $78
	sub  [hl]                                        ; $43d4: $96
	adc  b                                           ; $43d5: $88
	add  a                                           ; $43d6: $87
	sbc  b                                           ; $43d7: $98
	adc  c                                           ; $43d8: $89
	ld   a, b                                        ; $43d9: $78
	sub  a                                           ; $43da: $97
	ld   a, d                                        ; $43db: $7a
	adc  b                                           ; $43dc: $88
	adc  b                                           ; $43dd: $88
	ld   a, b                                        ; $43de: $78
	adc  b                                           ; $43df: $88
	add  a                                           ; $43e0: $87
	ld   a, b                                        ; $43e1: $78
	xor  b                                           ; $43e2: $a8
	ld   e, b                                        ; $43e3: $58
	ld   [$a948], a                                  ; $43e4: $ea $48 $a9
	ld   d, [hl]                                     ; $43e7: $56
	ld   a, c                                        ; $43e8: $79
	ld   h, [hl]                                     ; $43e9: $66
	add  a                                           ; $43ea: $87
	sbc  b                                           ; $43eb: $98
	sub  a                                           ; $43ec: $97
	add  a                                           ; $43ed: $87
	sbc  c                                           ; $43ee: $99
	ld   a, b                                        ; $43ef: $78
	ld   a, b                                        ; $43f0: $78
	add  a                                           ; $43f1: $87
	adc  b                                           ; $43f2: $88
	ld   a, c                                        ; $43f3: $79
	and  a                                           ; $43f4: $a7
	ld   a, c                                        ; $43f5: $79
	add  a                                           ; $43f6: $87
	adc  b                                           ; $43f7: $88
	ld   a, c                                        ; $43f8: $79
	add  a                                           ; $43f9: $87
	ld   a, c                                        ; $43fa: $79
	adc  b                                           ; $43fb: $88
	ld   [hl], a                                     ; $43fc: $77
	adc  b                                           ; $43fd: $88
	sbc  b                                           ; $43fe: $98
	sbc  b                                           ; $43ff: $98
	ld   l, b                                        ; $4400: $68
	add  a                                           ; $4401: $87
	ld   a, b                                        ; $4402: $78
	sbc  b                                           ; $4403: $98
	add  [hl]                                        ; $4404: $86
	adc  b                                           ; $4405: $88
	adc  c                                           ; $4406: $89
	sbc  b                                           ; $4407: $98
	sub  a                                           ; $4408: $97
	ld   h, a                                        ; $4409: $67
	adc  c                                           ; $440a: $89
	sbc  d                                           ; $440b: $9a
	ld   h, a                                        ; $440c: $67
	add  a                                           ; $440d: $87
	ld   a, b                                        ; $440e: $78
	ld   [hl], a                                     ; $440f: $77
	sub  a                                           ; $4410: $97
	ld   a, b                                        ; $4411: $78
	cp   c                                           ; $4412: $b9
	ld   a, d                                        ; $4413: $7a
	adc  c                                           ; $4414: $89
	ld   a, b                                        ; $4415: $78
	adc  c                                           ; $4416: $89
	add  a                                           ; $4417: $87
	add  a                                           ; $4418: $87
	add  a                                           ; $4419: $87
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	ld   a, c                                        ; $441d: $79
	and  a                                           ; $441e: $a7
	ld   a, c                                        ; $441f: $79
	sbc  b                                           ; $4420: $98
	add  a                                           ; $4421: $87
	adc  b                                           ; $4422: $88
	halt                                             ; $4423: $76
	add  a                                           ; $4424: $87
	ld   a, d                                        ; $4425: $7a
	and  a                                           ; $4426: $a7
	sbc  c                                           ; $4427: $99
	ld   a, c                                        ; $4428: $79
	ld   [hl], a                                     ; $4429: $77
	add  [hl]                                        ; $442a: $86
	ld   a, c                                        ; $442b: $79
	adc  c                                           ; $442c: $89
	adc  b                                           ; $442d: $88
	ld   d, [hl]                                     ; $442e: $56
	adc  b                                           ; $442f: $88
	and  [hl]                                        ; $4430: $a6
	sub  a                                           ; $4431: $97
	ld   a, b                                        ; $4432: $78
	ld   l, d                                        ; $4433: $6a
	add  a                                           ; $4434: $87
	sbc  e                                           ; $4435: $9b
	xor  d                                           ; $4436: $aa
	sub  a                                           ; $4437: $97
	ld   d, a                                        ; $4438: $57
	sub  [hl]                                        ; $4439: $96
	adc  c                                           ; $443a: $89
	add  [hl]                                        ; $443b: $86
	add  a                                           ; $443c: $87
	ld   a, c                                        ; $443d: $79
	ld   a, b                                        ; $443e: $78
	xor  b                                           ; $443f: $a8
	ld   [hl], a                                     ; $4440: $77
	add  a                                           ; $4441: $87
	ld   a, d                                        ; $4442: $7a
	ld   a, d                                        ; $4443: $7a
	ld   [hl], a                                     ; $4444: $77
	add  a                                           ; $4445: $87
	sub  [hl]                                        ; $4446: $96
	sbc  d                                           ; $4447: $9a
	sub  [hl]                                        ; $4448: $96
	adc  c                                           ; $4449: $89
	ld   a, c                                        ; $444a: $79
	ld   h, [hl]                                     ; $444b: $66
	ld   e, c                                        ; $444c: $59
	sbc  c                                           ; $444d: $99
	sbc  b                                           ; $444e: $98
	adc  b                                           ; $444f: $88
	sub  l                                           ; $4450: $95
	xor  d                                           ; $4451: $aa
	sbc  d                                           ; $4452: $9a
	ld   [hl], h                                     ; $4453: $74
	ld   e, d                                        ; $4454: $5a
	ld   [hl], a                                     ; $4455: $77
	adc  c                                           ; $4456: $89
	ld   a, c                                        ; $4457: $79
	sub  a                                           ; $4458: $97
	adc  c                                           ; $4459: $89
	add  a                                           ; $445a: $87
	xor  b                                           ; $445b: $a8
	ld   e, b                                        ; $445c: $58
	sub  [hl]                                        ; $445d: $96
	sbc  b                                           ; $445e: $98
	ld   l, d                                        ; $445f: $6a
	sub  a                                           ; $4460: $97
	ld   a, b                                        ; $4461: $78
	ld   a, b                                        ; $4462: $78
	sub  [hl]                                        ; $4463: $96
	sbc  c                                           ; $4464: $99
	adc  b                                           ; $4465: $88
	add  a                                           ; $4466: $87
	ld   h, a                                        ; $4467: $67
	sub  a                                           ; $4468: $97
	ld   a, d                                        ; $4469: $7a
	ld   l, b                                        ; $446a: $68
	ld   [hl], a                                     ; $446b: $77
	halt                                             ; $446c: $76
	sub  a                                           ; $446d: $97
	adc  b                                           ; $446e: $88
	sbc  e                                           ; $446f: $9b
	xor  b                                           ; $4470: $a8
	cp   d                                           ; $4471: $ba
	sbc  c                                           ; $4472: $99
	sbc  d                                           ; $4473: $9a
	adc  b                                           ; $4474: $88
	ld   [hl], l                                     ; $4475: $75
	ld   h, h                                        ; $4476: $64
	ld   [hl], l                                     ; $4477: $75
	ld   b, [hl]                                     ; $4478: $46
	ld   a, c                                        ; $4479: $79
	ld   l, b                                        ; $447a: $68
	ld   a, e                                        ; $447b: $7b
	db   $db                                         ; $447c: $db
	adc  e                                           ; $447d: $8b
	res  6, a                                        ; $447e: $cb $b7
	ld   [hl], a                                     ; $4480: $77
	ld   [hl], a                                     ; $4481: $77
	ld   h, e                                        ; $4482: $63
	ld   d, l                                        ; $4483: $55
	ld   d, [hl]                                     ; $4484: $56

Jump_0f3_4485:
	ld   [hl], $69                                   ; $4485: $36 $69
	sbc  d                                           ; $4487: $9a
	call $cbdc                                       ; $4488: $cd $dc $cb
	call c, Call_0f3_75a8                            ; $448b: $dc $a8 $75
	ld   h, l                                        ; $448e: $65
	inc  sp                                          ; $448f: $33
	ld   sp, $3733                                   ; $4490: $31 $33 $37
	ld   a, c                                        ; $4493: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4494: $cf
	db   $fd                                         ; $4495: $fd
	xor  $de                                         ; $4496: $ee $de
	cp   e                                           ; $4498: $bb
	rst  ToBoot                                         ; $4499: $c7
	ld   h, e                                        ; $449a: $63
	inc  [hl]                                        ; $449b: $34
	ld   [de], a                                     ; $449c: $12
	ld   de, $4532                                   ; $449d: $11 $32 $45
	adc  h                                           ; $44a0: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44a1: $cf
	rst  $38                                         ; $44a2: $ff
	rst  $38                                         ; $44a3: $ff
	cp   $ac                                         ; $44a4: $fe $ac
	sub  [hl]                                        ; $44a6: $96
	ld   d, c                                        ; $44a7: $51
	ld   [hl-], a                                    ; $44a8: $32
	ld   de, $1411                                   ; $44a9: $11 $11 $14
	ld   b, [hl]                                     ; $44ac: $46
	sbc  l                                           ; $44ad: $9d
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	xor  $cb                                         ; $44b1: $ee $cb
	halt                                             ; $44b3: $76
	ld   sp, $1121                                   ; $44b4: $31 $21 $11
	ld   de, $4713                                   ; $44b7: $11 $13 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ba: $cf
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	rst  $38                                         ; $44bd: $ff
	xor  $b9                                         ; $44be: $ee $b9
	ld   b, e                                        ; $44c0: $43
	ld   hl, $1121                                   ; $44c1: $21 $21 $11
	ld   de, $5d17                                   ; $44c4: $11 $17 $5d
	rst  $38                                         ; $44c7: $ff
	rst  $38                                         ; $44c8: $ff
	rst  $38                                         ; $44c9: $ff
	rst  $38                                         ; $44ca: $ff
	ret  c                                           ; $44cb: $d8

	ld   h, e                                        ; $44cc: $63
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	ld   de, $6712                                   ; $44d0: $11 $12 $67
	rst  JumpTable                                         ; $44d3: $df
	rst  $38                                         ; $44d4: $ff
	rst  $38                                         ; $44d5: $ff
	rst  $38                                         ; $44d6: $ff
	db   $fc                                         ; $44d7: $fc
	ld   [hl], h                                     ; $44d8: $74
	ld   de, $1111                                   ; $44d9: $11 $11 $11
	ld   de, $4611                                   ; $44dc: $11 $11 $46
	sbc  a                                           ; $44df: $9f
	rst  $38                                         ; $44e0: $ff
	rst  $38                                         ; $44e1: $ff
	rst  $38                                         ; $44e2: $ff
	rst  $38                                         ; $44e3: $ff
	add  l                                           ; $44e4: $85
	ld   de, $1111                                   ; $44e5: $11 $11 $11
	ld   de, $1511                                   ; $44e8: $11 $11 $15
	xor  h                                           ; $44eb: $ac
	rst  $38                                         ; $44ec: $ff
	rst  $38                                         ; $44ed: $ff
	rst  $38                                         ; $44ee: $ff
	rst  $38                                         ; $44ef: $ff
	add  $11                                         ; $44f0: $c6 $11
	ld   de, $1111                                   ; $44f2: $11 $11 $11
	ld   de, $9c15                                   ; $44f5: $11 $15 $9c
	rst  $38                                         ; $44f8: $ff
	rst  $38                                         ; $44f9: $ff
	rst  $38                                         ; $44fa: $ff
	rst  $38                                         ; $44fb: $ff
	ld   sp, hl                                      ; $44fc: $f9
	ld   de, $1111                                   ; $44fd: $11 $11 $11
	ld   de, $1511                                   ; $4500: $11 $11 $15
	adc  h                                           ; $4503: $8c
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	rst  $38                                         ; $4506: $ff
	rst  $38                                         ; $4507: $ff
	ld   a, [$1111]                                  ; $4508: $fa $11 $11
	ld   de, $1111                                   ; $450b: $11 $11 $11
	inc  d                                           ; $450e: $14
	sbc  e                                           ; $450f: $9b
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	cp   $31                                         ; $4514: $fe $31
	ld   de, $1111                                   ; $4516: $11 $11 $11
	ld   de, $9b14                                   ; $4519: $11 $14 $9b
	rst  $38                                         ; $451c: $ff
	rst  $38                                         ; $451d: $ff
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	rst  $38                                         ; $4520: $ff
	ld   h, c                                        ; $4521: $61
	ld   de, $1111                                   ; $4522: $11 $11 $11
	ld   de, $9c12                                   ; $4525: $11 $12 $9c
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	rst  $38                                         ; $452a: $ff
	rst  $38                                         ; $452b: $ff
	rst  $38                                         ; $452c: $ff
	sub  c                                           ; $452d: $91
	ld   de, $1111                                   ; $452e: $11 $11 $11
	ld   de, $9c11                                   ; $4531: $11 $11 $9c
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	rst  $38                                         ; $4537: $ff
	rst  $38                                         ; $4538: $ff
	or   c                                           ; $4539: $b1
	ld   de, $1111                                   ; $453a: $11 $11 $11
	ld   de, $7e11                                   ; $453d: $11 $11 $7e
	rst  $38                                         ; $4540: $ff
	rst  $38                                         ; $4541: $ff
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	rst  $38                                         ; $4544: $ff
	call nc, $1111                                   ; $4545: $d4 $11 $11
	ld   de, $1111                                   ; $4548: $11 $11 $11
	ld   l, l                                        ; $454b: $6d
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	rst  $38                                         ; $4550: $ff
	or   $11                                         ; $4551: $f6 $11
	ld   de, $1111                                   ; $4553: $11 $11 $11
	ld   de, $ff4d                                   ; $4556: $11 $4d $ff
	rst  $38                                         ; $4559: $ff
	rst  $38                                         ; $455a: $ff
	rst  $38                                         ; $455b: $ff
	rst  $38                                         ; $455c: $ff
	ld   hl, sp+$11                                  ; $455d: $f8 $11
	ld   de, $1111                                   ; $455f: $11 $11 $11
	ld   de, $ff2d                                   ; $4562: $11 $2d $ff
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	ld   sp, hl                                      ; $4569: $f9
	ld   de, $1111                                   ; $456a: $11 $11 $11
	ld   de, $1c11                                   ; $456d: $11 $11 $1c
	rst  $38                                         ; $4570: $ff
	rst  $38                                         ; $4571: $ff
	rst  $38                                         ; $4572: $ff
	rst  $38                                         ; $4573: $ff
	rst  $38                                         ; $4574: $ff
	ei                                               ; $4575: $fb
	ld   de, $1111                                   ; $4576: $11 $11 $11
	ld   de, $1c11                                   ; $4579: $11 $11 $1c
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	rst  $38                                         ; $457e: $ff
	rst  $38                                         ; $457f: $ff
	rst  $38                                         ; $4580: $ff
	db   $fc                                         ; $4581: $fc
	ld   hl, $1111                                   ; $4582: $21 $11 $11
	ld   de, $1b11                                   ; $4585: $11 $11 $1b
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	rst  $38                                         ; $458c: $ff
	db   $fc                                         ; $458d: $fc
	ld   sp, $1111                                   ; $458e: $31 $11 $11
	ld   de, $1a11                                   ; $4591: $11 $11 $1a
	rst  $38                                         ; $4594: $ff
	rst  $38                                         ; $4595: $ff
	rst  $38                                         ; $4596: $ff
	rst  $38                                         ; $4597: $ff
	rst  $38                                         ; $4598: $ff
	ei                                               ; $4599: $fb
	ld   b, c                                        ; $459a: $41
	ld   de, $1111                                   ; $459b: $11 $11 $11
	ld   de, $ff1a                                   ; $459e: $11 $1a $ff
	rst  $38                                         ; $45a1: $ff
	rst  $38                                         ; $45a2: $ff
	rst  $38                                         ; $45a3: $ff
	rst  $38                                         ; $45a4: $ff
	ei                                               ; $45a5: $fb
	ld   d, c                                        ; $45a6: $51
	ld   de, $1111                                   ; $45a7: $11 $11 $11
	ld   de, $ff19                                   ; $45aa: $11 $19 $ff
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	rst  $38                                         ; $45af: $ff
	rst  $38                                         ; $45b0: $ff
	ei                                               ; $45b1: $fb
	ld   d, c                                        ; $45b2: $51
	ld   de, $1111                                   ; $45b3: $11 $11 $11
	ld   de, $ff19                                   ; $45b6: $11 $19 $ff
	rst  $38                                         ; $45b9: $ff
	rst  $38                                         ; $45ba: $ff
	rst  $38                                         ; $45bb: $ff
	rst  $38                                         ; $45bc: $ff
	db   $fc                                         ; $45bd: $fc
	ld   d, c                                        ; $45be: $51
	ld   de, $1111                                   ; $45bf: $11 $11 $11
	ld   de, $ff1a                                   ; $45c2: $11 $1a $ff
	rst  $38                                         ; $45c5: $ff
	rst  $38                                         ; $45c6: $ff
	rst  $38                                         ; $45c7: $ff
	rst  $38                                         ; $45c8: $ff
	db   $fc                                         ; $45c9: $fc
	ld   d, c                                        ; $45ca: $51
	ld   de, $1111                                   ; $45cb: $11 $11 $11
	ld   de, $ff1b                                   ; $45ce: $11 $1b $ff
	rst  $38                                         ; $45d1: $ff
	rst  $38                                         ; $45d2: $ff
	rst  $38                                         ; $45d3: $ff
	rst  $38                                         ; $45d4: $ff
	ei                                               ; $45d5: $fb
	ld   b, c                                        ; $45d6: $41
	ld   de, $1111                                   ; $45d7: $11 $11 $11
	ld   de, $ff1d                                   ; $45da: $11 $1d $ff
	rst  $38                                         ; $45dd: $ff
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	rst  $38                                         ; $45e0: $ff
	ei                                               ; $45e1: $fb
	ld   hl, $1111                                   ; $45e2: $21 $11 $11
	ld   de, $1e11                                   ; $45e5: $11 $11 $1e
	rst  $38                                         ; $45e8: $ff
	rst  $38                                         ; $45e9: $ff
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	ei                                               ; $45ed: $fb
	ld   hl, $1111                                   ; $45ee: $21 $11 $11
	ld   de, $1f11                                   ; $45f1: $11 $11 $1f
	rst  $38                                         ; $45f4: $ff
	rst  $38                                         ; $45f5: $ff
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	ld   a, [$1101]                                  ; $45f9: $fa $01 $11
	ld   de, $1111                                   ; $45fc: $11 $11 $11
	ccf                                              ; $45ff: $3f
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	rst  $38                                         ; $4602: $ff
	rst  $38                                         ; $4603: $ff
	rst  $38                                         ; $4604: $ff
	ld   sp, hl                                      ; $4605: $f9
	ld   de, $1111                                   ; $4606: $11 $11 $11
	ld   de, $5f11                                   ; $4609: $11 $11 $5f
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	or   $11                                         ; $4611: $f6 $11
	ld   de, $1111                                   ; $4613: $11 $11 $11
	ld   de, $ff6f                                   ; $4616: $11 $6f $ff
	rst  $38                                         ; $4619: $ff
	rst  $38                                         ; $461a: $ff
	rst  $38                                         ; $461b: $ff
	rst  $38                                         ; $461c: $ff
	or   $11                                         ; $461d: $f6 $11
	ld   de, $1111                                   ; $461f: $11 $11 $11
	ld   de, $ff9f                                   ; $4622: $11 $9f $ff
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	rst  $38                                         ; $4627: $ff
	rst  $38                                         ; $4628: $ff
	push hl                                          ; $4629: $e5
	ld   de, $1111                                   ; $462a: $11 $11 $11
	ld   de, $cf11                                   ; $462d: $11 $11 $cf
	rst  $38                                         ; $4630: $ff
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	db   $e3                                         ; $4635: $e3
	ld   de, $1111                                   ; $4636: $11 $11 $11
	ld   de, $ef11                                   ; $4639: $11 $11 $ef
	rst  $38                                         ; $463c: $ff
	rst  $38                                         ; $463d: $ff
	rst  $38                                         ; $463e: $ff
	rst  $38                                         ; $463f: $ff
	rst  $28                                         ; $4640: $ef
	jp   $1111                                       ; $4641: $c3 $11 $11


	ld   de, $1111                                   ; $4644: $11 $11 $11
	rst  $38                                         ; $4647: $ff
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	rst  $38                                         ; $464b: $ff
	rst  $38                                         ; $464c: $ff
	or   c                                           ; $464d: $b1
	ld   de, $1111                                   ; $464e: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4651: $11 $12 $ff
	rst  $38                                         ; $4654: $ff
	rst  $38                                         ; $4655: $ff
	rst  $38                                         ; $4656: $ff
	rst  $38                                         ; $4657: $ff
	rst  $38                                         ; $4658: $ff
	sub  c                                           ; $4659: $91
	ld   de, $1111                                   ; $465a: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $465d: $11 $14 $ff
	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	rst  $38                                         ; $4662: $ff
	rst  $38                                         ; $4663: $ff
	rst  $28                                         ; $4664: $ef
	sub  c                                           ; $4665: $91
	ld   de, $1111                                   ; $4666: $11 $11 $11
	ld   de, $ff15                                   ; $4669: $11 $15 $ff
	rst  $38                                         ; $466c: $ff
	rst  $38                                         ; $466d: $ff
	rst  $38                                         ; $466e: $ff
	rst  $38                                         ; $466f: $ff
	db   $ed                                         ; $4670: $ed
	sub  c                                           ; $4671: $91
	ld   de, $1111                                   ; $4672: $11 $11 $11
	ld   de, $ff16                                   ; $4675: $11 $16 $ff
	rst  $38                                         ; $4678: $ff
	rst  $38                                         ; $4679: $ff
	rst  $38                                         ; $467a: $ff
	db   $fd                                         ; $467b: $fd
	sbc  $71                                         ; $467c: $de $71
	ld   de, $1111                                   ; $467e: $11 $11 $11
	ld   de, $ff17                                   ; $4681: $11 $17 $ff
	rst  $38                                         ; $4684: $ff
	rst  $38                                         ; $4685: $ff
	rst  $38                                         ; $4686: $ff
	db   $fd                                         ; $4687: $fd
	db   $dd                                         ; $4688: $dd
	ld   h, c                                        ; $4689: $61
	ld   de, $1111                                   ; $468a: $11 $11 $11
	ld   de, $ff1a                                   ; $468d: $11 $1a $ff
	rst  $38                                         ; $4690: $ff
	rst  $38                                         ; $4691: $ff
	rst  $38                                         ; $4692: $ff
	ei                                               ; $4693: $fb
	db   $dd                                         ; $4694: $dd
	ld   d, c                                        ; $4695: $51
	ld   de, $1111                                   ; $4696: $11 $11 $11
	ld   de, $ff1b                                   ; $4699: $11 $1b $ff
	rst  $38                                         ; $469c: $ff
	rst  $38                                         ; $469d: $ff
	rst  $38                                         ; $469e: $ff
	ei                                               ; $469f: $fb
	bit  0, c                                        ; $46a0: $cb $41
	ld   de, $1111                                   ; $46a2: $11 $11 $11
	ld   de, $ff2d                                   ; $46a5: $11 $2d $ff
	rst  $38                                         ; $46a8: $ff
	rst  $38                                         ; $46a9: $ff
	rst  $38                                         ; $46aa: $ff
	ld   a, [$21cb]                                  ; $46ab: $fa $cb $21
	ld   de, $1111                                   ; $46ae: $11 $11 $11
	ld   de, $ff3f                                   ; $46b1: $11 $3f $ff
	rst  $38                                         ; $46b4: $ff
	rst  $38                                         ; $46b5: $ff
	rst  $38                                         ; $46b6: $ff
	ld   sp, hl                                      ; $46b7: $f9
	rl   c                                           ; $46b8: $cb $11
	ld   de, $1111                                   ; $46ba: $11 $11 $11
	ld   de, $ff4f                                   ; $46bd: $11 $4f $ff
	rst  $38                                         ; $46c0: $ff
	rst  $38                                         ; $46c1: $ff
	rst  $38                                         ; $46c2: $ff
	reti                                             ; $46c3: $d9


	jp   c, $1111                                    ; $46c4: $da $11 $11

	ld   de, $1111                                   ; $46c7: $11 $11 $11
	ld   e, a                                        ; $46ca: $5f
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	rst  $38                                         ; $46cd: $ff
	rst  $38                                         ; $46ce: $ff
	jp   z, $11d8                                    ; $46cf: $ca $d8 $11

	ld   de, $1111                                   ; $46d2: $11 $11 $11
	ld   de, $ff7f                                   ; $46d5: $11 $7f $ff
	rst  $38                                         ; $46d8: $ff
	rst  $38                                         ; $46d9: $ff
	rst  $38                                         ; $46da: $ff
	cp   c                                           ; $46db: $b9
	rst  ToBoot                                         ; $46dc: $c7
	ld   de, $1111                                   ; $46dd: $11 $11 $11
	ld   de, $8f11                                   ; $46e0: $11 $11 $8f
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	rst  $38                                         ; $46e6: $ff
	sbc  d                                           ; $46e7: $9a
	add  $11                                         ; $46e8: $c6 $11
	ld   de, $1111                                   ; $46ea: $11 $11 $11
	ld   [de], a                                     ; $46ed: $12
	xor  a                                           ; $46ee: $af
	rst  $38                                         ; $46ef: $ff
	rst  $38                                         ; $46f0: $ff
	rst  $38                                         ; $46f1: $ff
	rst  $38                                         ; $46f2: $ff
	adc  d                                           ; $46f3: $8a
	push bc                                          ; $46f4: $c5
	ld   de, $1111                                   ; $46f5: $11 $11 $11
	ld   de, $df12                                   ; $46f8: $11 $12 $df
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	rst  $38                                         ; $46fe: $ff
	ld   a, d                                        ; $46ff: $7a
	jp   $1111                                       ; $4700: $c3 $11 $11


	ld   de, $1311                                   ; $4703: $11 $11 $13
	rst  $38                                         ; $4706: $ff
	rst  $38                                         ; $4707: $ff
	rst  $38                                         ; $4708: $ff
	rst  $38                                         ; $4709: $ff
	db   $fd                                         ; $470a: $fd
	ld   l, d                                        ; $470b: $6a
	or   d                                           ; $470c: $b2
	ld   de, $1211                                   ; $470d: $11 $11 $12
	ld   de, rAUD1HIGH                                   ; $4710: $11 $14 $ff
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	rst  $38                                         ; $4715: $ff
	ld   a, [$b16c]                                  ; $4716: $fa $6c $b1
	ld   de, $1211                                   ; $4719: $11 $11 $12
	ld   de, $ff16                                   ; $471c: $11 $16 $ff
	rst  $38                                         ; $471f: $ff
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	ld   hl, sp+$7d                                  ; $4722: $f8 $7d
	add  c                                           ; $4724: $81
	ld   de, $1111                                   ; $4725: $11 $11 $11
	ld   de, $ff1a                                   ; $4728: $11 $1a $ff
	rst  $38                                         ; $472b: $ff
	rst  $38                                         ; $472c: $ff
	rst  $38                                         ; $472d: $ff
	or   $9d                                         ; $472e: $f6 $9d
	ld   d, c                                        ; $4730: $51
	ld   de, $1111                                   ; $4731: $11 $11 $11
	ld   de, $ff2e                                   ; $4734: $11 $2e $ff
	rst  $38                                         ; $4737: $ff
	rst  $38                                         ; $4738: $ff
	rst  $38                                         ; $4739: $ff
	push de                                          ; $473a: $d5
	xor  h                                           ; $473b: $ac
	ld   sp, $1111                                   ; $473c: $31 $11 $11
	ld   sp, $4f11                                   ; $473f: $31 $11 $4f
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	and  l                                           ; $4746: $a5
	jp   z, $1111                                    ; $4747: $ca $11 $11

	ld   de, $1131                                   ; $474a: $11 $31 $11
	ld   a, a                                        ; $474d: $7f
	rst  $38                                         ; $474e: $ff
	rst  $38                                         ; $474f: $ff
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	ld   h, a                                        ; $4752: $67
	rst  $10                                         ; $4753: $d7
	ld   de, $1111                                   ; $4754: $11 $11 $11
	ld   hl, $cf11                                   ; $4757: $21 $11 $cf
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	rst  $38                                         ; $475d: $ff
	ld   e, b                                        ; $475e: $58
	push de                                          ; $475f: $d5
	ld   de, $1411                                   ; $4760: $11 $11 $14
	ld   de, rAUD1LOW                                   ; $4763: $11 $13 $ff
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	ld   sp, hl                                      ; $4769: $f9
	ld   c, h                                        ; $476a: $4c
	and  d                                           ; $476b: $a2
	ld   de, $1411                                   ; $476c: $11 $11 $14
	ld   de, $ff17                                   ; $476f: $11 $17 $ff
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	or   $6e                                         ; $4775: $f6 $6e
	ld   [hl], c                                     ; $4777: $71
	ld   de, $1111                                   ; $4778: $11 $11 $11
	ld   de, $ff1f                                   ; $477b: $11 $1f $ff
	rst  $38                                         ; $477e: $ff
	rst  $38                                         ; $477f: $ff
	rst  $38                                         ; $4780: $ff
	push bc                                          ; $4781: $c5
	xor  h                                           ; $4782: $ac
	ld   b, c                                        ; $4783: $41
	ld   de, $4111                                   ; $4784: $11 $11 $41
	ld   de, $ff4f                                   ; $4787: $11 $4f $ff
	rst  $38                                         ; $478a: $ff
	rst  $38                                         ; $478b: $ff
	rst  $38                                         ; $478c: $ff
	add  [hl]                                        ; $478d: $86
	reti                                             ; $478e: $d9


	ld   hl, $1111                                   ; $478f: $21 $11 $11
	ld   sp, $cf11                                   ; $4792: $31 $11 $cf
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	ld   e, b                                        ; $4799: $58
	push de                                          ; $479a: $d5
	ld   de, $1511                                   ; $479b: $11 $11 $15
	ld   de, rAUD1LOW                                   ; $479e: $11 $13 $ff
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	ld   a, [$a24d]                                  ; $47a4: $fa $4d $a2
	ld   de, $1311                                   ; $47a7: $11 $11 $13
	ld   de, $ff1b                                   ; $47aa: $11 $1b $ff
	rst  $38                                         ; $47ad: $ff
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	push af                                          ; $47b0: $f5
	sbc  [hl]                                        ; $47b1: $9e
	ld   b, c                                        ; $47b2: $41
	ld   de, $4111                                   ; $47b3: $11 $11 $41
	ld   de, $ff3f                                   ; $47b6: $11 $3f $ff
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	add  [hl]                                        ; $47bc: $86
	add  sp, $21                                     ; $47bd: $e8 $21
	ld   de, $1111                                   ; $47bf: $11 $11 $11
	ld   de, $ffef                                   ; $47c2: $11 $ef $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	db   $fd                                         ; $47c7: $fd
	ld   e, h                                        ; $47c8: $5c
	call nc, $1111                                   ; $47c9: $d4 $11 $11
	inc  de                                          ; $47cc: $13
	ld   de, $ff17                                   ; $47cd: $11 $17 $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	rst  $38                                         ; $47d2: $ff
	rst  $30                                         ; $47d3: $f7
	adc  a                                           ; $47d4: $8f
	ld   h, c                                        ; $47d5: $61
	ld   de, $4111                                   ; $47d6: $11 $11 $41
	ld   de, $ff1f                                   ; $47d9: $11 $1f $ff
	rst  $38                                         ; $47dc: $ff
	rst  $38                                         ; $47dd: $ff
	rst  $38                                         ; $47de: $ff
	and  a                                           ; $47df: $a7
	ld   sp, hl                                      ; $47e0: $f9
	ld   hl, $1111                                   ; $47e1: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $47e4: $11 $11 $ff
	rst  $38                                         ; $47e7: $ff
	rst  $38                                         ; $47e8: $ff
	rst  $38                                         ; $47e9: $ff
	db   $fd                                         ; $47ea: $fd
	ld   a, l                                        ; $47eb: $7d
	call nc, $1111                                   ; $47ec: $d4 $11 $11
	ld   de, $1a11                                   ; $47ef: $11 $11 $1a
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	rst  $38                                         ; $47f5: $ff
	ld   hl, sp-$41                                  ; $47f6: $f8 $bf
	ld   d, c                                        ; $47f8: $51
	ld   de, $2111                                   ; $47f9: $11 $11 $21
	ld   de, $ff5f                                   ; $47fc: $11 $5f $ff
	rst  $38                                         ; $47ff: $ff
	rst  $38                                         ; $4800: $ff
	rst  $38                                         ; $4801: $ff
	cp   d                                           ; $4802: $ba
	rst  $30                                         ; $4803: $f7
	ld   de, $1311                                   ; $4804: $11 $11 $13
	ld   de, rAUD1LEN                                   ; $4807: $11 $11 $ff
	rst  $38                                         ; $480a: $ff
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	db   $fc                                         ; $480d: $fc
	sbc  a                                           ; $480e: $9f
	sub  e                                           ; $480f: $93
	ld   de, $2111                                   ; $4810: $11 $11 $21
	ld   de, $ff1f                                   ; $4813: $11 $1f $ff
	rst  $38                                         ; $4816: $ff
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	ld   sp, hl                                      ; $4819: $f9
	db   $fc                                         ; $481a: $fc
	ld   b, c                                        ; $481b: $41
	ld   de, $1111                                   ; $481c: $11 $11 $11
	ld   de, $ffcf                                   ; $481f: $11 $cf $ff
	rst  $38                                         ; $4822: $ff
	rst  $38                                         ; $4823: $ff
	rst  $38                                         ; $4824: $ff
	sbc  a                                           ; $4825: $9f
	push hl                                          ; $4826: $e5
	ld   de, $1111                                   ; $4827: $11 $11 $11
	ld   de, $ff19                                   ; $482a: $11 $19 $ff
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	ei                                               ; $4830: $fb
	rst  $38                                         ; $4831: $ff
	ld   h, c                                        ; $4832: $61
	ld   de, $1111                                   ; $4833: $11 $11 $11
	ld   de, $ff6f                                   ; $4836: $11 $6f $ff
	rst  $38                                         ; $4839: $ff
	rst  $38                                         ; $483a: $ff
	rst  $38                                         ; $483b: $ff
	sbc  $f7                                         ; $483c: $de $f7
	ld   hl, $1111                                   ; $483e: $21 $11 $11
	ld   de, rAUD1ENV                                   ; $4841: $11 $12 $ff
	rst  $38                                         ; $4844: $ff
	rst  $38                                         ; $4845: $ff
	rst  $38                                         ; $4846: $ff
	rst  $38                                         ; $4847: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4848: $cf
	add  h                                           ; $4849: $84
	ld   de, $1111                                   ; $484a: $11 $11 $11
	ld   de, $ff1d                                   ; $484d: $11 $1d $ff
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	db   $fd                                         ; $4853: $fd
	ld   a, [$1151]                                  ; $4854: $fa $51 $11
	ld   de, $1111                                   ; $4857: $11 $11 $11
	sbc  a                                           ; $485a: $9f
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	rst  $38                                         ; $485d: $ff
	rst  $38                                         ; $485e: $ff
	rst  JumpTable                                         ; $485f: $df
	rst  $10                                         ; $4860: $d7
	ld   de, $1111                                   ; $4861: $11 $11 $11
	ld   de, $ff16                                   ; $4864: $11 $16 $ff
	rst  $38                                         ; $4867: $ff
	rst  $38                                         ; $4868: $ff
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	cp   $81                                         ; $486b: $fe $81
	ld   de, $1111                                   ; $486d: $11 $11 $11
	ld   de, $ff3d                                   ; $4870: $11 $3d $ff
	rst  $38                                         ; $4873: $ff
	rst  $38                                         ; $4874: $ff
	rst  $38                                         ; $4875: $ff
	rst  $38                                         ; $4876: $ff
	ld   sp, hl                                      ; $4877: $f9
	ld   de, $1111                                   ; $4878: $11 $11 $11
	ld   de, $9f11                                   ; $487b: $11 $11 $9f
	rst  $38                                         ; $487e: $ff
	rst  $38                                         ; $487f: $ff
	rst  $38                                         ; $4880: $ff
	rst  $38                                         ; $4881: $ff
	rst  $38                                         ; $4882: $ff
	and  h                                           ; $4883: $a4
	ld   de, $1111                                   ; $4884: $11 $11 $11
	ld   de, $ff15                                   ; $4887: $11 $15 $ff
	rst  $38                                         ; $488a: $ff
	rst  $38                                         ; $488b: $ff
	rst  $38                                         ; $488c: $ff
	rst  $38                                         ; $488d: $ff
	db   $fd                                         ; $488e: $fd
	ld   d, c                                        ; $488f: $51
	ld   de, $1111                                   ; $4890: $11 $11 $11
	ld   de, $ff2c                                   ; $4893: $11 $2c $ff
	rst  $38                                         ; $4896: $ff
	rst  $38                                         ; $4897: $ff
	rst  $38                                         ; $4898: $ff
	rst  $38                                         ; $4899: $ff
	rst  $30                                         ; $489a: $f7
	ld   de, $1111                                   ; $489b: $11 $11 $11
	ld   de, $7f11                                   ; $489e: $11 $11 $7f
	rst  $38                                         ; $48a1: $ff
	rst  $38                                         ; $48a2: $ff
	rst  $38                                         ; $48a3: $ff
	rst  $38                                         ; $48a4: $ff
	rst  $38                                         ; $48a5: $ff
	sub  e                                           ; $48a6: $93
	ld   de, $1111                                   ; $48a7: $11 $11 $11
	ld   de, $bf13                                   ; $48aa: $11 $13 $bf
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	rst  $38                                         ; $48b0: $ff
	db   $fc                                         ; $48b1: $fc
	ld   d, c                                        ; $48b2: $51
	ld   de, $1111                                   ; $48b3: $11 $11 $11
	ld   de, $ee17                                   ; $48b6: $11 $17 $ee
	rst  $38                                         ; $48b9: $ff
	rst  $38                                         ; $48ba: $ff
	rst  $38                                         ; $48bb: $ff
	rst  $38                                         ; $48bc: $ff
	jp   hl                                          ; $48bd: $e9


	ld   hl, $1111                                   ; $48be: $21 $11 $11
	ld   de, $1a11                                   ; $48c1: $11 $11 $1a
	cp   a                                           ; $48c4: $bf
	rst  $38                                         ; $48c5: $ff
	rst  $38                                         ; $48c6: $ff
	rst  $38                                         ; $48c7: $ff
	rst  $38                                         ; $48c8: $ff
	sub  $21                                         ; $48c9: $d6 $21
	ld   de, $1111                                   ; $48cb: $11 $11 $11
	ld   de, $bd2b                                   ; $48ce: $11 $2b $bd
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	rst  $38                                         ; $48d3: $ff
	db   $fd                                         ; $48d4: $fd
	call nz, $1131                                   ; $48d5: $c4 $31 $11
	ld   de, $1111                                   ; $48d8: $11 $11 $11
	add  hl, sp                                      ; $48db: $39
	call z, $ffff                                    ; $48dc: $cc $ff $ff
	rst  $38                                         ; $48df: $ff
	db   $ec                                         ; $48e0: $ec
	and  a                                           ; $48e1: $a7
	ld   h, c                                        ; $48e2: $61
	ld   de, $1111                                   ; $48e3: $11 $11 $11
	ld   de, $9a39                                   ; $48e6: $11 $39 $9a
	rst  $38                                         ; $48e9: $ff
	rst  $38                                         ; $48ea: $ff
	rst  $38                                         ; $48eb: $ff
	db   $eb                                         ; $48ec: $eb
	xor  e                                           ; $48ed: $ab
	ld   h, e                                        ; $48ee: $63
	ld   hl, $1111                                   ; $48ef: $21 $11 $11
	ld   de, $7b25                                   ; $48f2: $11 $25 $7b
	rst  JumpTable                                         ; $48f5: $df
	rst  $38                                         ; $48f6: $ff
	rst  $38                                         ; $48f7: $ff
	db   $eb                                         ; $48f8: $eb
	jp   z, Jump_0f3_5377                            ; $48f9: $ca $77 $53

	ld   de, $1113                                   ; $48fc: $11 $13 $11
	ld   [de], a                                     ; $48ff: $12
	ld   a, [hl-]                                    ; $4900: $3a
	cp   d                                           ; $4901: $ba
	rst  $38                                         ; $4902: $ff
	rst  $38                                         ; $4903: $ff
	ld   [$9adc], a                                  ; $4904: $ea $dc $9a
	ld   h, [hl]                                     ; $4907: $66
	dec  [hl]                                        ; $4908: $35
	ld   hl, $4121                                   ; $4909: $21 $21 $41
	inc  [hl]                                        ; $490c: $34
	sbc  e                                           ; $490d: $9b
	cp   a                                           ; $490e: $bf
	adc  $dd                                         ; $490f: $ce $dd
	xor  [hl]                                        ; $4911: $ae
	or   a                                           ; $4912: $b7
	rst  $20                                         ; $4913: $e7
	add  h                                           ; $4914: $84
	ld   b, h                                        ; $4915: $44
	inc  de                                          ; $4916: $13
	ld   [hl+], a                                    ; $4917: $22
	inc  sp                                          ; $4918: $33
	ld   h, [hl]                                     ; $4919: $66
	adc  e                                           ; $491a: $8b
	call $cdcc                                       ; $491b: $cd $cc $cd
	call z, $a9c9                                    ; $491e: $cc $c9 $a9
	ld   d, [hl]                                     ; $4921: $56
	ld   b, e                                        ; $4922: $43
	ld   h, d                                        ; $4923: $62
	ld   b, e                                        ; $4924: $43
	ld   b, [hl]                                     ; $4925: $46
	ld   e, d                                        ; $4926: $5a
	adc  h                                           ; $4927: $8c
	cp   d                                           ; $4928: $ba
	cp   e                                           ; $4929: $bb
	jp   c, $bad9                                    ; $492a: $da $d9 $ba

	sbc  d                                           ; $492d: $9a
	ld   c, b                                        ; $492e: $48
	daa                                              ; $492f: $27
	ld   h, c                                        ; $4930: $61
	ld   [hl], e                                     ; $4931: $73
	ld   h, [hl]                                     ; $4932: $66
	ld   a, b                                        ; $4933: $78
	adc  d                                           ; $4934: $8a
	sbc  b                                           ; $4935: $98
	cp   h                                           ; $4936: $bc
	xor  e                                           ; $4937: $ab
	cp   d                                           ; $4938: $ba
	res  0, l                                        ; $4939: $cb $85
	add  a                                           ; $493b: $87
	ld   c, b                                        ; $493c: $48
	ld   d, [hl]                                     ; $493d: $56
	ld   d, [hl]                                     ; $493e: $56
	ld   h, [hl]                                     ; $493f: $66
	sub  a                                           ; $4940: $97
	adc  b                                           ; $4941: $88
	adc  d                                           ; $4942: $8a
	adc  e                                           ; $4943: $8b
	adc  d                                           ; $4944: $8a
	rst  ToBoot                                         ; $4945: $c7
	cp   e                                           ; $4946: $bb
	adc  c                                           ; $4947: $89
	add  a                                           ; $4948: $87
	ld   l, b                                        ; $4949: $68
	ld   l, b                                        ; $494a: $68
	ld   d, a                                        ; $494b: $57
	ld   h, [hl]                                     ; $494c: $66
	add  h                                           ; $494d: $84
	sbc  b                                           ; $494e: $98
	ld   l, c                                        ; $494f: $69
	xor  c                                           ; $4950: $a9
	cp   d                                           ; $4951: $ba
	xor  b                                           ; $4952: $a8
	xor  d                                           ; $4953: $aa
	ld   a, d                                        ; $4954: $7a
	sub  [hl]                                        ; $4955: $96
	adc  b                                           ; $4956: $88
	ld   [hl], a                                     ; $4957: $77
	halt                                             ; $4958: $76
	ld   h, a                                        ; $4959: $67
	ld   [hl], l                                     ; $495a: $75
	adc  c                                           ; $495b: $89
	adc  d                                           ; $495c: $8a
	ld   a, c                                        ; $495d: $79
	sbc  b                                           ; $495e: $98
	xor  c                                           ; $495f: $a9
	sbc  c                                           ; $4960: $99
	sbc  d                                           ; $4961: $9a
	ld   l, c                                        ; $4962: $69
	add  a                                           ; $4963: $87
	sub  a                                           ; $4964: $97
	halt                                             ; $4965: $76
	halt                                             ; $4966: $76
	ld   e, b                                        ; $4967: $58
	adc  b                                           ; $4968: $88
	sbc  b                                           ; $4969: $98
	ld   a, d                                        ; $496a: $7a
	ld   a, c                                        ; $496b: $79
	sbc  c                                           ; $496c: $99
	add  $99                                         ; $496d: $c6 $99
	ld   a, c                                        ; $496f: $79
	ld   a, c                                        ; $4970: $79
	ld   a, c                                        ; $4971: $79
	halt                                             ; $4972: $76
	add  a                                           ; $4973: $87
	ld   h, a                                        ; $4974: $67
	adc  b                                           ; $4975: $88
	adc  c                                           ; $4976: $89
	adc  c                                           ; $4977: $89
	adc  b                                           ; $4978: $88
	adc  b                                           ; $4979: $88
	or   a                                           ; $497a: $b7
	xor  b                                           ; $497b: $a8
	adc  b                                           ; $497c: $88
	ld   a, c                                        ; $497d: $79
	ld   l, b                                        ; $497e: $68
	halt                                             ; $497f: $76
	sub  [hl]                                        ; $4980: $96
	ld   a, d                                        ; $4981: $7a
	ld   l, c                                        ; $4982: $69
	ld   a, b                                        ; $4983: $78
	add  a                                           ; $4984: $87
	adc  b                                           ; $4985: $88
	sbc  b                                           ; $4986: $98
	sub  a                                           ; $4987: $97
	sbc  b                                           ; $4988: $98
	add  a                                           ; $4989: $87
	adc  c                                           ; $498a: $89
	ld   l, c                                        ; $498b: $69
	ld   l, b                                        ; $498c: $68
	adc  b                                           ; $498d: $88
	sub  [hl]                                        ; $498e: $96
	add  a                                           ; $498f: $87
	sbc  c                                           ; $4990: $99
	ld   l, c                                        ; $4991: $69
	sbc  c                                           ; $4992: $99
	ld   [hl], a                                     ; $4993: $77
	sub  a                                           ; $4994: $97
	add  a                                           ; $4995: $87
	adc  c                                           ; $4996: $89
	ld   a, b                                        ; $4997: $78
	ld   a, c                                        ; $4998: $79
	ld   h, [hl]                                     ; $4999: $66
	xor  b                                           ; $499a: $a8
	ld   [hl], a                                     ; $499b: $77
	adc  c                                           ; $499c: $89
	adc  c                                           ; $499d: $89
	ld   l, d                                        ; $499e: $6a
	add  a                                           ; $499f: $87
	and  [hl]                                        ; $49a0: $a6
	sbc  c                                           ; $49a1: $99
	adc  b                                           ; $49a2: $88
	add  [hl]                                        ; $49a3: $86
	sub  a                                           ; $49a4: $97
	adc  d                                           ; $49a5: $8a
	ld   e, d                                        ; $49a6: $5a
	ld   a, c                                        ; $49a7: $79
	add  a                                           ; $49a8: $87
	sbc  b                                           ; $49a9: $98
	sbc  c                                           ; $49aa: $99
	adc  b                                           ; $49ab: $88
	ld   [hl], a                                     ; $49ac: $77
	sub  [hl]                                        ; $49ad: $96
	sbc  c                                           ; $49ae: $99
	adc  b                                           ; $49af: $88
	add  a                                           ; $49b0: $87
	sbc  d                                           ; $49b1: $9a
	ld   l, c                                        ; $49b2: $69
	ld   [hl], a                                     ; $49b3: $77
	adc  b                                           ; $49b4: $88
	sbc  b                                           ; $49b5: $98
	ld   a, b                                        ; $49b6: $78
	adc  b                                           ; $49b7: $88
	ld   a, c                                        ; $49b8: $79
	sbc  b                                           ; $49b9: $98
	halt                                             ; $49ba: $76
	sub  a                                           ; $49bb: $97
	sbc  b                                           ; $49bc: $98
	add  a                                           ; $49bd: $87
	ld   a, d                                        ; $49be: $7a
	sub  a                                           ; $49bf: $97
	ld   a, d                                        ; $49c0: $7a
	adc  c                                           ; $49c1: $89
	add  a                                           ; $49c2: $87
	sbc  b                                           ; $49c3: $98
	ld   l, b                                        ; $49c4: $68
	sub  a                                           ; $49c5: $97
	ld   [hl], a                                     ; $49c6: $77
	add  [hl]                                        ; $49c7: $86
	sbc  b                                           ; $49c8: $98
	sbc  b                                           ; $49c9: $98
	adc  b                                           ; $49ca: $88
	adc  d                                           ; $49cb: $8a
	ld   [hl], a                                     ; $49cc: $77
	xor  b                                           ; $49cd: $a8
	ld   a, b                                        ; $49ce: $78
	ld   [hl], a                                     ; $49cf: $77
	halt                                             ; $49d0: $76
	sbc  c                                           ; $49d1: $99
	halt                                             ; $49d2: $76
	adc  b                                           ; $49d3: $88
	ld   [hl], a                                     ; $49d4: $77
	xor  b                                           ; $49d5: $a8
	adc  c                                           ; $49d6: $89
	ld   a, c                                        ; $49d7: $79
	sbc  b                                           ; $49d8: $98
	adc  c                                           ; $49d9: $89
	add  a                                           ; $49da: $87
	adc  c                                           ; $49db: $89
	ld   a, c                                        ; $49dc: $79
	ld   l, b                                        ; $49dd: $68
	ld   [hl], a                                     ; $49de: $77
	and  h                                           ; $49df: $a4
	sub  a                                           ; $49e0: $97
	ld   a, d                                        ; $49e1: $7a
	ld   l, d                                        ; $49e2: $6a
	ld   a, b                                        ; $49e3: $78
	add  a                                           ; $49e4: $87
	sbc  c                                           ; $49e5: $99
	add  a                                           ; $49e6: $87
	sub  a                                           ; $49e7: $97
	ld   a, b                                        ; $49e8: $78
	add  [hl]                                        ; $49e9: $86
	sub  a                                           ; $49ea: $97
	ld   l, c                                        ; $49eb: $69
	ld   [hl], a                                     ; $49ec: $77
	adc  c                                           ; $49ed: $89
	add  a                                           ; $49ee: $87
	sbc  b                                           ; $49ef: $98
	sbc  c                                           ; $49f0: $99
	adc  b                                           ; $49f1: $88
	adc  c                                           ; $49f2: $89
	add  a                                           ; $49f3: $87
	add  a                                           ; $49f4: $87
	add  a                                           ; $49f5: $87
	add  a                                           ; $49f6: $87
	ld   a, c                                        ; $49f7: $79
	ld   a, b                                        ; $49f8: $78
	adc  b                                           ; $49f9: $88
	adc  b                                           ; $49fa: $88
	ld   a, c                                        ; $49fb: $79
	adc  d                                           ; $49fc: $8a
	adc  b                                           ; $49fd: $88
	and  [hl]                                        ; $49fe: $a6
	sbc  b                                           ; $49ff: $98
	ld   a, c                                        ; $4a00: $79
	adc  b                                           ; $4a01: $88
	ld   l, c                                        ; $4a02: $69
	ld   h, a                                        ; $4a03: $67
	sub  a                                           ; $4a04: $97
	adc  b                                           ; $4a05: $88
	add  a                                           ; $4a06: $87
	ld   a, d                                        ; $4a07: $7a
	sbc  b                                           ; $4a08: $98
	sub  [hl]                                        ; $4a09: $96
	sbc  b                                           ; $4a0a: $98
	sbc  b                                           ; $4a0b: $98
	ld   a, c                                        ; $4a0c: $79
	ld   e, c                                        ; $4a0d: $59
	xor  b                                           ; $4a0e: $a8
	ld   [hl], a                                     ; $4a0f: $77
	ld   [hl], a                                     ; $4a10: $77
	sbc  b                                           ; $4a11: $98
	ld   l, d                                        ; $4a12: $6a
	add  a                                           ; $4a13: $87
	and  [hl]                                        ; $4a14: $a6
	xor  b                                           ; $4a15: $a8
	adc  c                                           ; $4a16: $89
	ld   l, c                                        ; $4a17: $69
	ld   l, c                                        ; $4a18: $69
	ld   [hl], a                                     ; $4a19: $77
	sub  a                                           ; $4a1a: $97
	and  [hl]                                        ; $4a1b: $a6
	add  a                                           ; $4a1c: $87
	xor  b                                           ; $4a1d: $a8
	ld   l, b                                        ; $4a1e: $68
	ld   a, d                                        ; $4a1f: $7a
	xor  b                                           ; $4a20: $a8
	ld   a, b                                        ; $4a21: $78
	ld   a, d                                        ; $4a22: $7a
	adc  c                                           ; $4a23: $89
	ld   a, b                                        ; $4a24: $78
	sub  [hl]                                        ; $4a25: $96
	add  a                                           ; $4a26: $87
	sub  a                                           ; $4a27: $97
	add  a                                           ; $4a28: $87
	ld   a, c                                        ; $4a29: $79
	adc  b                                           ; $4a2a: $88
	adc  d                                           ; $4a2b: $8a
	ld   a, c                                        ; $4a2c: $79
	ld   a, b                                        ; $4a2d: $78
	adc  b                                           ; $4a2e: $88
	sub  a                                           ; $4a2f: $97
	and  l                                           ; $4a30: $a5
	add  a                                           ; $4a31: $87
	ld   a, c                                        ; $4a32: $79
	sbc  b                                           ; $4a33: $98
	ld   l, c                                        ; $4a34: $69
	ld   a, b                                        ; $4a35: $78
	ld   a, c                                        ; $4a36: $79
	add  a                                           ; $4a37: $87
	ld   a, e                                        ; $4a38: $7b
	add  a                                           ; $4a39: $87
	sub  [hl]                                        ; $4a3a: $96
	sub  a                                           ; $4a3b: $97
	and  a                                           ; $4a3c: $a7
	add  a                                           ; $4a3d: $87
	ld   l, c                                        ; $4a3e: $69
	ld   a, d                                        ; $4a3f: $7a
	ld   a, b                                        ; $4a40: $78
	ld   [hl], l                                     ; $4a41: $75
	adc  c                                           ; $4a42: $89
	cp   c                                           ; $4a43: $b9
	add  [hl]                                        ; $4a44: $86
	ld   a, c                                        ; $4a45: $79
	ld   l, b                                        ; $4a46: $68
	ld   a, d                                        ; $4a47: $7a
	sbc  c                                           ; $4a48: $99
	ld   [hl], a                                     ; $4a49: $77
	or   [hl]                                        ; $4a4a: $b6
	ld   l, b                                        ; $4a4b: $68
	sub  l                                           ; $4a4c: $95
	adc  e                                           ; $4a4d: $8b
	halt                                             ; $4a4e: $76
	and  a                                           ; $4a4f: $a7
	ld   a, b                                        ; $4a50: $78
	adc  c                                           ; $4a51: $89
	ld   a, b                                        ; $4a52: $78
	adc  d                                           ; $4a53: $8a
	adc  c                                           ; $4a54: $89
	ld   l, b                                        ; $4a55: $68
	and  l                                           ; $4a56: $a5
	xor  c                                           ; $4a57: $a9
	ld   l, c                                        ; $4a58: $69
	ld   [hl], a                                     ; $4a59: $77
	and  a                                           ; $4a5a: $a7
	add  a                                           ; $4a5b: $87
	sbc  b                                           ; $4a5c: $98
	ld   a, b                                        ; $4a5d: $78
	ld   l, e                                        ; $4a5e: $6b
	ld   e, e                                        ; $4a5f: $5b
	and  h                                           ; $4a60: $a4
	xor  b                                           ; $4a61: $a8
	ld   l, d                                        ; $4a62: $6a
	adc  b                                           ; $4a63: $88
	halt                                             ; $4a64: $76
	sub  [hl]                                        ; $4a65: $96
	xor  c                                           ; $4a66: $a9
	ld   l, c                                        ; $4a67: $69
	adc  b                                           ; $4a68: $88
	sub  a                                           ; $4a69: $97
	add  a                                           ; $4a6a: $87
	ld   [hl], a                                     ; $4a6b: $77
	sbc  c                                           ; $4a6c: $99
	ld   l, c                                        ; $4a6d: $69
	ld   e, d                                        ; $4a6e: $5a
	ld   a, b                                        ; $4a6f: $78
	and  l                                           ; $4a70: $a5
	halt                                             ; $4a71: $76
	sub  a                                           ; $4a72: $97
	sbc  b                                           ; $4a73: $98
	adc  c                                           ; $4a74: $89
	ld   a, b                                        ; $4a75: $78
	ld   l, d                                        ; $4a76: $6a
	ld   e, c                                        ; $4a77: $59
	sub  a                                           ; $4a78: $97
	call nz, $48a8                                   ; $4a79: $c4 $a8 $48
	ld   a, d                                        ; $4a7c: $7a
	sbc  c                                           ; $4a7d: $99
	ld   [hl], a                                     ; $4a7e: $77
	sbc  c                                           ; $4a7f: $99
	ld   a, c                                        ; $4a80: $79
	halt                                             ; $4a81: $76
	xor  b                                           ; $4a82: $a8
	sbc  b                                           ; $4a83: $98
	halt                                             ; $4a84: $76
	and  [hl]                                        ; $4a85: $a6
	and  a                                           ; $4a86: $a7
	sbc  b                                           ; $4a87: $98
	ld   l, e                                        ; $4a88: $6b
	ld   e, b                                        ; $4a89: $58
	ld   a, b                                        ; $4a8a: $78
	adc  d                                           ; $4a8b: $8a
	add  [hl]                                        ; $4a8c: $86
	cp   b                                           ; $4a8d: $b8
	ld   a, c                                        ; $4a8e: $79
	ld   [hl], a                                     ; $4a8f: $77
	or   h                                           ; $4a90: $b4
	or   a                                           ; $4a91: $b7
	ld   l, d                                        ; $4a92: $6a
	ld   e, h                                        ; $4a93: $5c
	ld   c, b                                        ; $4a94: $48
	and  a                                           ; $4a95: $a7
	sbc  b                                           ; $4a96: $98
	ld   a, c                                        ; $4a97: $79
	add  [hl]                                        ; $4a98: $86
	sbc  b                                           ; $4a99: $98
	add  a                                           ; $4a9a: $87
	adc  b                                           ; $4a9b: $88
	ld   [hl], a                                     ; $4a9c: $77
	sub  a                                           ; $4a9d: $97
	ld   a, c                                        ; $4a9e: $79
	ld   l, b                                        ; $4a9f: $68
	adc  b                                           ; $4aa0: $88
	adc  d                                           ; $4aa1: $8a
	sbc  b                                           ; $4aa2: $98
	ld   e, c                                        ; $4aa3: $59
	ld   [hl], a                                     ; $4aa4: $77
	cp   c                                           ; $4aa5: $b9
	and  h                                           ; $4aa6: $a4
	and  [hl]                                        ; $4aa7: $a6
	adc  c                                           ; $4aa8: $89
	adc  d                                           ; $4aa9: $8a
	ld   e, d                                        ; $4aaa: $5a
	ld   l, h                                        ; $4aab: $6c
	ld   [hl], a                                     ; $4aac: $77
	ld   a, b                                        ; $4aad: $78
	sub  h                                           ; $4aae: $94
	push bc                                          ; $4aaf: $c5
	sub  a                                           ; $4ab0: $97
	ld   l, c                                        ; $4ab1: $69
	ld   l, d                                        ; $4ab2: $6a
	ld   l, c                                        ; $4ab3: $69
	adc  c                                           ; $4ab4: $89
	ld   [hl], a                                     ; $4ab5: $77
	sub  a                                           ; $4ab6: $97
	sbc  b                                           ; $4ab7: $98
	and  h                                           ; $4ab8: $a4
	and  [hl]                                        ; $4ab9: $a6
	ld   a, b                                        ; $4aba: $78
	ld   e, l                                        ; $4abb: $5d
	ld   c, b                                        ; $4abc: $48
	ld   a, b                                        ; $4abd: $78
	adc  c                                           ; $4abe: $89
	ld   a, b                                        ; $4abf: $78
	sub  [hl]                                        ; $4ac0: $96
	and  a                                           ; $4ac1: $a7
	jp   Jump_0f3_6cc9                               ; $4ac2: $c3 $c9 $6c


	ld   c, h                                        ; $4ac5: $4c
	dec  sp                                          ; $4ac6: $3b
	ld   d, [hl]                                     ; $4ac7: $56
	call nz, $97b6                                   ; $4ac8: $c4 $b6 $97
	adc  b                                           ; $4acb: $88
	ld   a, c                                        ; $4acc: $79
	adc  c                                           ; $4acd: $89
	sbc  d                                           ; $4ace: $9a
	ld   l, c                                        ; $4acf: $69
	adc  b                                           ; $4ad0: $88
	ld   d, a                                        ; $4ad1: $57
	sub  a                                           ; $4ad2: $97
	ld   [hl], a                                     ; $4ad3: $77
	ld   [hl], h                                     ; $4ad4: $74
	and  [hl]                                        ; $4ad5: $a6
	add  a                                           ; $4ad6: $87
	xor  d                                           ; $4ad7: $aa
	sbc  l                                           ; $4ad8: $9d
	adc  d                                           ; $4ad9: $8a
	xor  b                                           ; $4ada: $a8
	adc  d                                           ; $4adb: $8a
	ld   c, b                                        ; $4adc: $48
	halt                                             ; $4add: $76
	ld   [hl], h                                     ; $4ade: $74
	ld   h, l                                        ; $4adf: $65
	ld   h, h                                        ; $4ae0: $64
	and  a                                           ; $4ae1: $a7
	ret                                              ; $4ae2: $c9


	call z, $7cad                                    ; $4ae3: $cc $ad $7c
	sbc  d                                           ; $4ae6: $9a
	adc  b                                           ; $4ae7: $88
	ld   h, a                                        ; $4ae8: $67
	ld   h, l                                        ; $4ae9: $65
	dec  [hl]                                        ; $4aea: $35
	ld   d, d                                        ; $4aeb: $52
	add  [hl]                                        ; $4aec: $86
	xor  c                                           ; $4aed: $a9
	ld   a, [$bbcc]                                  ; $4aee: $fa $cc $bb
	adc  l                                           ; $4af1: $8d
	ld   e, l                                        ; $4af2: $5d
	ld   c, c                                        ; $4af3: $49
	inc  sp                                          ; $4af4: $33
	ld   [hl], c                                     ; $4af5: $71
	ld   h, c                                        ; $4af6: $61
	ld   [hl], e                                     ; $4af7: $73
	sub  a                                           ; $4af8: $97
	cp   [hl]                                        ; $4af9: $be
	cp   [hl]                                        ; $4afa: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4afb: $cf
	adc  [hl]                                        ; $4afc: $8e
	ld   a, e                                        ; $4afd: $7b
	sub  l                                           ; $4afe: $95
	ld   d, e                                        ; $4aff: $53
	ld   [hl], e                                     ; $4b00: $73
	ld   sp, $5524                                   ; $4b01: $31 $24 $55
	ld   l, e                                        ; $4b04: $6b
	cp   $df                                         ; $4b05: $fe $df
	rst  JumpTable                                         ; $4b07: $df
	or   a                                           ; $4b08: $b7
	xor  b                                           ; $4b09: $a8
	sub  h                                           ; $4b0a: $94
	dec  [hl]                                        ; $4b0b: $35
	dec  [hl]                                        ; $4b0c: $35
	ld   de, $5633                                   ; $4b0d: $11 $33 $56
	xor  c                                           ; $4b10: $a9
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	cp   $da                                         ; $4b13: $fe $da
	ld   l, d                                        ; $4b15: $6a
	ld   [hl], l                                     ; $4b16: $75
	inc  de                                          ; $4b17: $13
	ld   b, c                                        ; $4b18: $41
	ld   de, $5504                                   ; $4b19: $11 $04 $55
	adc  a                                           ; $4b1c: $8f
	rst  $28                                         ; $4b1d: $ef
	rst  $38                                         ; $4b1e: $ff
	rst  $38                                         ; $4b1f: $ff
	cp   c                                           ; $4b20: $b9
	and  a                                           ; $4b21: $a7
	ld   d, d                                        ; $4b22: $52
	ld   [de], a                                     ; $4b23: $12
	ld   [hl-], a                                    ; $4b24: $32
	ld   de, $5532                                   ; $4b25: $11 $32 $55
	cp   a                                           ; $4b28: $bf
	rst  $38                                         ; $4b29: $ff
	rst  $38                                         ; $4b2a: $ff
	rst  $38                                         ; $4b2b: $ff
	jp   c, Jump_0f3_4187                            ; $4b2c: $da $87 $41

	inc  de                                          ; $4b2f: $13
	ld   de, $2311                                   ; $4b30: $11 $11 $23
	ld   b, h                                        ; $4b33: $44
	xor  a                                           ; $4b34: $af
	rst  $38                                         ; $4b35: $ff
	rst  $38                                         ; $4b36: $ff
	rst  $38                                         ; $4b37: $ff
	ret                                              ; $4b38: $c9


	or   c                                           ; $4b39: $b1
	ld   d, c                                        ; $4b3a: $51
	ld   [de], a                                     ; $4b3b: $12
	ld   de, $1111                                   ; $4b3c: $11 $11 $11
	ld   d, l                                        ; $4b3f: $55
	cp   a                                           ; $4b40: $bf
	rst  $38                                         ; $4b41: $ff
	rst  $38                                         ; $4b42: $ff
	rst  $38                                         ; $4b43: $ff
	ld   sp, hl                                      ; $4b44: $f9
	ld   [hl], l                                     ; $4b45: $75
	ld   de, $1112                                   ; $4b46: $11 $12 $11
	ld   de, $4711                                   ; $4b49: $11 $11 $47
	rst  $28                                         ; $4b4c: $ef
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	rst  $38                                         ; $4b4f: $ff
	db   $ec                                         ; $4b50: $ec
	ld   [hl], c                                     ; $4b51: $71
	ld   de, $1111                                   ; $4b52: $11 $11 $11
	ld   de, $6911                                   ; $4b55: $11 $11 $69
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	rst  $38                                         ; $4b5a: $ff
	rst  $38                                         ; $4b5b: $ff
	ei                                               ; $4b5c: $fb
	ld   d, c                                        ; $4b5d: $51
	ld   de, $1111                                   ; $4b5e: $11 $11 $11
	ld   de, $a931                                   ; $4b61: $11 $31 $a9
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	rst  $38                                         ; $4b67: $ff
	db   $fc                                         ; $4b68: $fc
	ld   b, c                                        ; $4b69: $41
	ld   de, $1111                                   ; $4b6a: $11 $11 $11
	ld   de, $ac13                                   ; $4b6d: $11 $13 $ac
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	ei                                               ; $4b74: $fb
	ld   b, c                                        ; $4b75: $41
	ld   de, $1111                                   ; $4b76: $11 $11 $11
	ld   de, $cd12                                   ; $4b79: $11 $12 $cd
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	db   $fc                                         ; $4b80: $fc
	ld   b, c                                        ; $4b81: $41
	ld   de, $1111                                   ; $4b82: $11 $11 $11
	ld   de, $bf15                                   ; $4b85: $11 $15 $bf
	rst  $38                                         ; $4b88: $ff
	rst  $38                                         ; $4b89: $ff
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	ei                                               ; $4b8c: $fb
	ld   hl, $1111                                   ; $4b8d: $21 $11 $11
	ld   de, $1411                                   ; $4b90: $11 $11 $14
	cp   a                                           ; $4b93: $bf
	rst  $38                                         ; $4b94: $ff
	rst  $38                                         ; $4b95: $ff
	rst  $38                                         ; $4b96: $ff
	rst  $38                                         ; $4b97: $ff
	ei                                               ; $4b98: $fb
	ld   b, c                                        ; $4b99: $41
	ld   de, $1111                                   ; $4b9a: $11 $11 $11
	ld   de, $bf14                                   ; $4b9d: $11 $14 $bf
	rst  $38                                         ; $4ba0: $ff
	rst  $38                                         ; $4ba1: $ff
	rst  $38                                         ; $4ba2: $ff
	rst  $38                                         ; $4ba3: $ff
	db   $fc                                         ; $4ba4: $fc
	ld   b, c                                        ; $4ba5: $41
	ld   de, $1111                                   ; $4ba6: $11 $11 $11
	ld   de, $af13                                   ; $4ba9: $11 $13 $af
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	cp   $61                                         ; $4bb0: $fe $61
	ld   de, $1111                                   ; $4bb2: $11 $11 $11
	ld   de, $8e12                                   ; $4bb5: $11 $12 $8e
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	rst  $38                                         ; $4bbc: $ff
	add  c                                           ; $4bbd: $81
	ld   de, $1111                                   ; $4bbe: $11 $11 $11
	ld   de, $5d11                                   ; $4bc1: $11 $11 $5d
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	and  c                                           ; $4bc9: $a1
	ld   de, $1111                                   ; $4bca: $11 $11 $11
	ld   de, $3b12                                   ; $4bcd: $11 $12 $3b
	rst  $38                                         ; $4bd0: $ff
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	rst  $38                                         ; $4bd4: $ff
	db   $e4                                         ; $4bd5: $e4
	ld   de, $1111                                   ; $4bd6: $11 $11 $11
	ld   de, $0712                                   ; $4bd9: $11 $12 $07
	rst  $38                                         ; $4bdc: $ff
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	ld   sp, hl                                      ; $4be1: $f9
	ld   hl, $1111                                   ; $4be2: $21 $11 $11
	ld   de, $2211                                   ; $4be5: $11 $11 $22
	cp   a                                           ; $4be8: $bf
	rst  $38                                         ; $4be9: $ff
	rst  $38                                         ; $4bea: $ff
	rst  $38                                         ; $4beb: $ff
	rst  $38                                         ; $4bec: $ff
	cp   $43                                         ; $4bed: $fe $43
	ld   de, $1111                                   ; $4bef: $11 $11 $11
	ld   de, $5c31                                   ; $4bf2: $11 $31 $5c
	rst  $38                                         ; $4bf5: $ff
	rst  $38                                         ; $4bf6: $ff
	rst  $38                                         ; $4bf7: $ff
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	and  h                                           ; $4bfa: $a4
	ld   b, c                                        ; $4bfb: $41
	ld   de, $1111                                   ; $4bfc: $11 $11 $11
	inc  d                                           ; $4bff: $14
	rla                                              ; $4c00: $17
	rst  $28                                         ; $4c01: $ef
	rst  $38                                         ; $4c02: $ff
	rst  $38                                         ; $4c03: $ff
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	rst  $30                                         ; $4c06: $f7
	ld   d, h                                        ; $4c07: $54
	ld   de, $1111                                   ; $4c08: $11 $11 $11
	inc  de                                          ; $4c0b: $13
	ld   hl, $ff8f                                   ; $4c0c: $21 $8f $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	ld   [hl], a                                     ; $4c13: $77
	ld   b, c                                        ; $4c14: $41
	ld   de, $1111                                   ; $4c15: $11 $11 $11
	ld   b, c                                        ; $4c18: $41
	add  hl, de                                      ; $4c19: $19
	rst  $38                                         ; $4c1a: $ff
	rst  $38                                         ; $4c1b: $ff
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	rst  $38                                         ; $4c1e: $ff
	ret  c                                           ; $4c1f: $d8

	and  [hl]                                        ; $4c20: $a6
	ld   de, $1112                                   ; $4c21: $11 $12 $11
	inc  d                                           ; $4c24: $14
	ld   de, $ff8f                                   ; $4c25: $11 $8f $ff
	rst  $38                                         ; $4c28: $ff
	rst  $38                                         ; $4c29: $ff
	rst  $38                                         ; $4c2a: $ff
	db   $fd                                         ; $4c2b: $fd
	sbc  h                                           ; $4c2c: $9c
	sub  c                                           ; $4c2d: $91
	ld   de, $1101                                   ; $4c2e: $11 $01 $11
	ld   b, c                                        ; $4c31: $41
	inc  d                                           ; $4c32: $14
	rst  $38                                         ; $4c33: $ff
	db   $fd                                         ; $4c34: $fd
	rst  $38                                         ; $4c35: $ff
	rst  $38                                         ; $4c36: $ff
	rst  $38                                         ; $4c37: $ff
	jp   c, $11ed                                    ; $4c38: $da $ed $11

	ld   de, $1111                                   ; $4c3b: $11 $11 $11
	ld   hl, $ff1f                                   ; $4c3e: $21 $1f $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c41: $cf
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	cp   a                                           ; $4c45: $bf
	ldh  a, [c]                                      ; $4c46: $f2
	ld   de, $1111                                   ; $4c47: $11 $11 $11
	ld   [de], a                                     ; $4c4a: $12
	ld   de, $fe9f                                   ; $4c4b: $11 $9f $fe
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	rst  $38                                         ; $4c50: $ff
	db   $fd                                         ; $4c51: $fd
	rst  $38                                         ; $4c52: $ff
	or   c                                           ; $4c53: $b1
	ld   de, $1111                                   ; $4c54: $11 $11 $11
	ld   de, $cd11                                   ; $4c57: $11 $11 $cd
	rst  $38                                         ; $4c5a: $ff
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff

jr_0f3_4c5d:
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	rst  $38                                         ; $4c5f: $ff
	ld   h, c                                        ; $4c60: $61
	ld   de, $1111                                   ; $4c61: $11 $11 $11
	ld   de, $ab11                                   ; $4c64: $11 $11 $ab
	rst  $38                                         ; $4c67: $ff
	rst  $38                                         ; $4c68: $ff
	rst  $38                                         ; $4c69: $ff
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	rst  $38                                         ; $4c6c: $ff
	ld   h, c                                        ; $4c6d: $61
	ld   de, $1111                                   ; $4c6e: $11 $11 $11
	ld   de, $8a11                                   ; $4c71: $11 $11 $8a
	rst  $38                                         ; $4c74: $ff
	rst  $38                                         ; $4c75: $ff
	rst  $38                                         ; $4c76: $ff
	rst  $38                                         ; $4c77: $ff
	rst  $38                                         ; $4c78: $ff
	rst  $38                                         ; $4c79: $ff
	add  c                                           ; $4c7a: $81
	ld   de, $1111                                   ; $4c7b: $11 $11 $11
	ld   de, $5911                                   ; $4c7e: $11 $11 $59
	xor  $ff                                         ; $4c81: $ee $ff
	rst  $38                                         ; $4c83: $ff
	rst  $38                                         ; $4c84: $ff
	rst  $38                                         ; $4c85: $ff
	rst  $38                                         ; $4c86: $ff
	jp   $1111                                       ; $4c87: $c3 $11 $11


	ld   de, $1111                                   ; $4c8a: $11 $11 $11
	jr   jr_0f3_4c5d                                 ; $4c8d: $18 $ce

	rst  $28                                         ; $4c8f: $ef
	rst  $38                                         ; $4c90: $ff
	rst  $38                                         ; $4c91: $ff
	rst  $38                                         ; $4c92: $ff
	rst  $38                                         ; $4c93: $ff
	rst  $30                                         ; $4c94: $f7
	ld   sp, $1111                                   ; $4c95: $31 $11 $11
	ld   de, $1211                                   ; $4c98: $11 $11 $12
	xor  l                                           ; $4c9b: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c9c: $cf
	rst  $38                                         ; $4c9d: $ff
	rst  $38                                         ; $4c9e: $ff
	rst  $38                                         ; $4c9f: $ff
	rst  $38                                         ; $4ca0: $ff
	db   $fd                                         ; $4ca1: $fd
	ld   d, e                                        ; $4ca2: $53
	ld   de, $1111                                   ; $4ca3: $11 $11 $11
	ld   de, $4a11                                   ; $4ca6: $11 $11 $4a
	call z, $ffff                                    ; $4ca9: $cc $ff $ff
	rst  $38                                         ; $4cac: $ff
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	or   [hl]                                        ; $4caf: $b6
	ld   b, c                                        ; $4cb0: $41
	ld   de, $1111                                   ; $4cb1: $11 $11 $11
	ld   de, $ad12                                   ; $4cb4: $11 $12 $ad
	xor  a                                           ; $4cb7: $af
	rst  $38                                         ; $4cb8: $ff
	rst  $38                                         ; $4cb9: $ff
	rst  $38                                         ; $4cba: $ff
	rst  $38                                         ; $4cbb: $ff
	db   $fd                                         ; $4cbc: $fd
	ld   h, l                                        ; $4cbd: $65
	ld   bc, $1111                                   ; $4cbe: $01 $11 $11
	ld   de, $1911                                   ; $4cc1: $11 $11 $19
	cp   d                                           ; $4cc4: $ba
	rst  $38                                         ; $4cc5: $ff
	rst  $38                                         ; $4cc6: $ff
	rst  $38                                         ; $4cc7: $ff
	rst  $38                                         ; $4cc8: $ff
	rst  $38                                         ; $4cc9: $ff
	or   $63                                         ; $4cca: $f6 $63
	ld   de, $1111                                   ; $4ccc: $11 $11 $11
	ld   de, $9b11                                   ; $4ccf: $11 $11 $9b
	xor  [hl]                                        ; $4cd2: $ae
	rst  $38                                         ; $4cd3: $ff
	rst  $38                                         ; $4cd4: $ff
	rst  $38                                         ; $4cd5: $ff
	rst  $38                                         ; $4cd6: $ff
	rst  $38                                         ; $4cd7: $ff
	ld   [hl], a                                     ; $4cd8: $77
	ld   h, c                                        ; $4cd9: $61
	ld   de, $1111                                   ; $4cda: $11 $11 $11
	ld   de, $d914                                   ; $4cdd: $11 $14 $d9
	sbc  a                                           ; $4ce0: $9f
	rst  $38                                         ; $4ce1: $ff
	rst  $38                                         ; $4ce2: $ff
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	ei                                               ; $4ce5: $fb
	ld   l, c                                        ; $4ce6: $69
	ld   sp, $1111                                   ; $4ce7: $31 $11 $11
	ld   de, $1a11                                   ; $4cea: $11 $11 $1a
	rst  ToBoot                                         ; $4ced: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cee: $cf
	rst  $38                                         ; $4cef: $ff
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	or   $79                                         ; $4cf3: $f6 $79
	ld   de, $1111                                   ; $4cf5: $11 $11 $11
	ld   de, $1e11                                   ; $4cf8: $11 $11 $1e
	and  l                                           ; $4cfb: $a5
	rst  $38                                         ; $4cfc: $ff
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	push af                                          ; $4d01: $f5
	xor  b                                           ; $4d02: $a8
	ld   de, $1111                                   ; $4d03: $11 $11 $11
	inc  de                                          ; $4d06: $13
	ld   de, $755d                                   ; $4d07: $11 $5d $75
	rst  $38                                         ; $4d0a: $ff
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	add  $c9                                         ; $4d0f: $c6 $c9
	ld   de, $1112                                   ; $4d11: $11 $12 $11
	inc  de                                          ; $4d14: $13
	ld   de, $545d                                   ; $4d15: $11 $5d $54
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	add  $ea                                         ; $4d1d: $c6 $ea
	ld   de, $1111                                   ; $4d1f: $11 $11 $11
	ld   [de], a                                     ; $4d22: $12
	ld   de, $434d                                   ; $4d23: $11 $4d $43
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	rst  $38                                         ; $4d29: $ff
	rst  $38                                         ; $4d2a: $ff
	rst  $10                                         ; $4d2b: $d7
	db   $eb                                         ; $4d2c: $eb
	ld   de, $1111                                   ; $4d2d: $11 $11 $11
	ld   de, $3b11                                   ; $4d30: $11 $11 $3b
	ld   b, d                                        ; $4d33: $42
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	ld   sp, hl                                      ; $4d39: $f9
	db   $ec                                         ; $4d3a: $ec
	ld   de, $1111                                   ; $4d3b: $11 $11 $11
	ld   de, $1a11                                   ; $4d3e: $11 $11 $1a
	ld   b, c                                        ; $4d41: $41
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	rst  $38                                         ; $4d45: $ff
	rst  $38                                         ; $4d46: $ff
	ld   hl, sp-$11                                  ; $4d47: $f8 $ef
	ld   de, $1111                                   ; $4d49: $11 $11 $11
	ld   de, $1a11                                   ; $4d4c: $11 $11 $1a
	ld   d, c                                        ; $4d4f: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d50: $cf
	rst  $38                                         ; $4d51: $ff
	rst  $38                                         ; $4d52: $ff
	rst  $38                                         ; $4d53: $ff
	rst  $38                                         ; $4d54: $ff
	ld   hl, sp-$11                                  ; $4d55: $f8 $ef
	ld   hl, $1111                                   ; $4d57: $21 $11 $11
	ld   de, $1811                                   ; $4d5a: $11 $11 $18
	ld   d, c                                        ; $4d5d: $51
	sbc  a                                           ; $4d5e: $9f
	rst  $38                                         ; $4d5f: $ff
	rst  $38                                         ; $4d60: $ff
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	ld   a, [$61df]                                  ; $4d63: $fa $df $61
	ld   de, $1111                                   ; $4d66: $11 $11 $11
	ld   de, $7116                                   ; $4d69: $11 $16 $71
	ld   c, a                                        ; $4d6c: $4f
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	rst  $38                                         ; $4d70: $ff
	db   $fd                                         ; $4d71: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d72: $cf
	and  c                                           ; $4d73: $a1
	ld   de, $1111                                   ; $4d74: $11 $11 $11
	ld   de, $7113                                   ; $4d77: $11 $13 $71
	cpl                                              ; $4d7a: $2f
	rst  $38                                         ; $4d7b: $ff
	rst  $38                                         ; $4d7c: $ff
	rst  $38                                         ; $4d7d: $ff
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d80: $cf
	pop  bc                                          ; $4d81: $c1
	ld   de, $1111                                   ; $4d82: $11 $11 $11
	ld   de, $7211                                   ; $4d85: $11 $11 $72
	rra                                              ; $4d88: $1f
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	rst  $38                                         ; $4d8b: $ff
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	xor  a                                           ; $4d8e: $af
	pop  af                                          ; $4d8f: $f1
	ld   de, $1111                                   ; $4d90: $11 $11 $11
	ld   de, $7411                                   ; $4d93: $11 $11 $74
	dec  de                                          ; $4d96: $1b
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff
	rst  $38                                         ; $4d99: $ff
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	adc  $f5                                         ; $4d9c: $ce $f5
	ld   de, $1111                                   ; $4d9e: $11 $11 $11
	ld   de, $5411                                   ; $4da1: $11 $11 $54
	jr   @+$01                                       ; $4da4: $18 $ff

	rst  $38                                         ; $4da6: $ff
	rst  $38                                         ; $4da7: $ff
	rst  $38                                         ; $4da8: $ff
	rst  $38                                         ; $4da9: $ff
	db   $ed                                         ; $4daa: $ed
	ld   hl, sp+$11                                  ; $4dab: $f8 $11
	ld   de, $1111                                   ; $4dad: $11 $11 $11
	ld   de, $1645                                   ; $4db0: $11 $45 $16
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	db   $fc                                         ; $4db8: $fc
	ei                                               ; $4db9: $fb
	ld   de, $1111                                   ; $4dba: $11 $11 $11
	ld   de, $1611                                   ; $4dbd: $11 $11 $16
	inc  h                                           ; $4dc0: $24
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	ei                                               ; $4dc6: $fb
	db   $fc                                         ; $4dc7: $fc
	ld   de, $1111                                   ; $4dc8: $11 $11 $11
	ld   de, $1611                                   ; $4dcb: $11 $11 $16
	ld   b, h                                        ; $4dce: $44
	rst  $38                                         ; $4dcf: $ff
	rst  $38                                         ; $4dd0: $ff
	rst  $38                                         ; $4dd1: $ff
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	ei                                               ; $4dd4: $fb
	call $1121                                       ; $4dd5: $cd $21 $11
	ld   de, $1111                                   ; $4dd8: $11 $11 $11
	dec  d                                           ; $4ddb: $15
	ld   d, h                                        ; $4ddc: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddd: $cf
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	db   $fd                                         ; $4de2: $fd
	swap c                                           ; $4de3: $cb $31
	ld   de, $1111                                   ; $4de5: $11 $11 $11
	ld   de, $5615                                   ; $4de8: $11 $15 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4deb: $cf
	rst  $38                                         ; $4dec: $ff
	rst  $38                                         ; $4ded: $ff
	rst  $38                                         ; $4dee: $ff
	rst  $38                                         ; $4def: $ff
	db   $fc                                         ; $4df0: $fc
	jp   z, $1121                                    ; $4df1: $ca $21 $11

	ld   de, $1111                                   ; $4df4: $11 $11 $11
	dec  d                                           ; $4df7: $15
	ld   h, [hl]                                     ; $4df8: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4df9: $cf
	rst  $38                                         ; $4dfa: $ff
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	db   $fc                                         ; $4dfe: $fc
	cp   c                                           ; $4dff: $b9
	ld   de, $1111                                   ; $4e00: $11 $11 $11
	ld   de, $1511                                   ; $4e03: $11 $11 $15
	ld   a, b                                        ; $4e06: $78
	rst  $28                                         ; $4e07: $ef
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	rst  $38                                         ; $4e0b: $ff
	ei                                               ; $4e0c: $fb
	and  [hl]                                        ; $4e0d: $a6
	ld   de, $1111                                   ; $4e0e: $11 $11 $11
	ld   de, $3711                                   ; $4e11: $11 $11 $37
	ld   a, d                                        ; $4e14: $7a
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	ld   a, [$1172]                                  ; $4e1a: $fa $72 $11
	ld   de, $1111                                   ; $4e1d: $11 $11 $11
	ld   de, $ac68                                   ; $4e20: $11 $68 $ac
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	rst  $38                                         ; $4e25: $ff
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	or   a                                           ; $4e28: $b7
	ld   sp, $1111                                   ; $4e29: $31 $11 $11
	ld   de, $1411                                   ; $4e2c: $11 $11 $14
	adc  d                                           ; $4e2f: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e30: $cf
	rst  $38                                         ; $4e31: $ff
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	db   $fd                                         ; $4e35: $fd
	add  h                                           ; $4e36: $84
	ld   de, $1111                                   ; $4e37: $11 $11 $11
	ld   de, $4911                                   ; $4e3a: $11 $11 $49
	xor  h                                           ; $4e3d: $ac
	rst  $28                                         ; $4e3e: $ef
	rst  $38                                         ; $4e3f: $ff
	rst  $38                                         ; $4e40: $ff
	rst  $38                                         ; $4e41: $ff
	rst  $38                                         ; $4e42: $ff
	jp   hl                                          ; $4e43: $e9


	ld   b, c                                        ; $4e44: $41
	ld   de, $1111                                   ; $4e45: $11 $11 $11
	ld   de, $9a14                                   ; $4e48: $11 $14 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e4b: $cf
	rst  $38                                         ; $4e4c: $ff
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	db   $fd                                         ; $4e50: $fd
	add  e                                           ; $4e51: $83
	ld   de, $1111                                   ; $4e52: $11 $11 $11
	ld   de, $6a11                                   ; $4e55: $11 $11 $6a
	cp   l                                           ; $4e58: $bd
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	rst  $38                                         ; $4e5b: $ff
	rst  $38                                         ; $4e5c: $ff
	rst  $38                                         ; $4e5d: $ff
	or   [hl]                                        ; $4e5e: $b6
	ld   hl, $1111                                   ; $4e5f: $21 $11 $11
	ld   de, $4811                                   ; $4e62: $11 $11 $48
	adc  $ff                                         ; $4e65: $ce $ff
	rst  $38                                         ; $4e67: $ff
	rst  $38                                         ; $4e68: $ff
	rst  $38                                         ; $4e69: $ff
	cp   $96                                         ; $4e6a: $fe $96
	ld   hl, $1111                                   ; $4e6c: $21 $11 $11
	ld   de, $4711                                   ; $4e6f: $11 $11 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e72: $cf
	rst  $38                                         ; $4e73: $ff
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	db   $fd                                         ; $4e77: $fd
	add  l                                           ; $4e78: $85
	ld   de, $1111                                   ; $4e79: $11 $11 $11
	ld   de, $5712                                   ; $4e7c: $11 $12 $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e7f: $cf
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	db   $fc                                         ; $4e84: $fc
	ld   [hl], e                                     ; $4e85: $73
	ld   de, $1111                                   ; $4e86: $11 $11 $11
	ld   de, $6913                                   ; $4e89: $11 $13 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e8c: $cf
	rst  $38                                         ; $4e8d: $ff
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	rst  $38                                         ; $4e90: $ff
	ld   [$1151], a                                  ; $4e91: $ea $51 $11
	ld   de, $1111                                   ; $4e94: $11 $11 $11
	inc  d                                           ; $4e97: $14
	ld   a, d                                        ; $4e98: $7a
	rst  JumpTable                                         ; $4e99: $df
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	ret  z                                           ; $4e9e: $c8

	ld   sp, $1111                                   ; $4e9f: $31 $11 $11
	ld   de, $3611                                   ; $4ea2: $11 $11 $36
	adc  e                                           ; $4ea5: $8b
	rst  $38                                         ; $4ea6: $ff
	rst  $38                                         ; $4ea7: $ff
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	db   $fd                                         ; $4eaa: $fd
	and  l                                           ; $4eab: $a5
	ld   hl, $1111                                   ; $4eac: $21 $11 $11
	ld   de, $4712                                   ; $4eaf: $11 $12 $47
	sbc  [hl]                                        ; $4eb2: $9e
	rst  $38                                         ; $4eb3: $ff
	rst  $38                                         ; $4eb4: $ff
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	db   $eb                                         ; $4eb7: $eb
	ld   [hl], h                                     ; $4eb8: $74
	ld   hl, $1111                                   ; $4eb9: $21 $11 $11
	ld   de, $6825                                   ; $4ebc: $11 $25 $68
	cp   [hl]                                        ; $4ebf: $be
	rst  $28                                         ; $4ec0: $ef
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	db   $dd                                         ; $4ec3: $dd
	cp   b                                           ; $4ec4: $b8
	ld   h, l                                        ; $4ec5: $65
	ld   sp, $1111                                   ; $4ec6: $31 $11 $11
	ld   de, $6935                                   ; $4ec9: $11 $35 $69
	cp   h                                           ; $4ecc: $bc
	rst  $28                                         ; $4ecd: $ef
	rst  $38                                         ; $4ece: $ff
	rst  $38                                         ; $4ecf: $ff
	call c, Call_0f3_75a8                            ; $4ed0: $dc $a8 $75
	ld   [hl-], a                                    ; $4ed3: $32
	ld   [de], a                                     ; $4ed4: $12
	ld   hl, $4612                                   ; $4ed5: $21 $12 $46
	ld   a, b                                        ; $4ed8: $78
	xor  l                                           ; $4ed9: $ad
	rst  $28                                         ; $4eda: $ef
	rst  $38                                         ; $4edb: $ff
	db   $ed                                         ; $4edc: $ed
	jp   z, Jump_0f3_75a8                            ; $4edd: $ca $a8 $75

	ld   b, d                                        ; $4ee0: $42
	ld   [hl+], a                                    ; $4ee1: $22
	ld   [hl+], a                                    ; $4ee2: $22
	inc  hl                                          ; $4ee3: $23
	ld   b, [hl]                                     ; $4ee4: $46
	ld   a, b                                        ; $4ee5: $78
	xor  h                                           ; $4ee6: $ac
	sbc  $de                                         ; $4ee7: $de $de
	db   $dd                                         ; $4ee9: $dd
	cp   d                                           ; $4eea: $ba
	xor  c                                           ; $4eeb: $a9
	add  [hl]                                        ; $4eec: $86
	ld   d, h                                        ; $4eed: $54
	ld   b, h                                        ; $4eee: $44
	inc  sp                                          ; $4eef: $33
	inc  [hl]                                        ; $4ef0: $34
	ld   d, [hl]                                     ; $4ef1: $56
	ld   h, a                                        ; $4ef2: $67
	sbc  d                                           ; $4ef3: $9a
	cp   h                                           ; $4ef4: $bc
	call z, $aacc                                    ; $4ef5: $cc $cc $aa
	sbc  d                                           ; $4ef8: $9a
	add  a                                           ; $4ef9: $87
	ld   h, [hl]                                     ; $4efa: $66
	ld   d, l                                        ; $4efb: $55
	ld   d, l                                        ; $4efc: $55
	ld   d, l                                        ; $4efd: $55
	ld   d, l                                        ; $4efe: $55
	ld   h, a                                        ; $4eff: $67
	ld   a, c                                        ; $4f00: $79
	xor  d                                           ; $4f01: $aa
	cp   d                                           ; $4f02: $ba
	xor  e                                           ; $4f03: $ab
	xor  d                                           ; $4f04: $aa
	xor  d                                           ; $4f05: $aa
	sbc  c                                           ; $4f06: $99
	add  a                                           ; $4f07: $87
	ld   [hl], a                                     ; $4f08: $77
	halt                                             ; $4f09: $76
	ld   h, [hl]                                     ; $4f0a: $66
	ld   h, [hl]                                     ; $4f0b: $66
	ld   h, [hl]                                     ; $4f0c: $66
	ld   h, a                                        ; $4f0d: $67
	ld   a, b                                        ; $4f0e: $78
	sbc  c                                           ; $4f0f: $99
	sbc  c                                           ; $4f10: $99
	sbc  d                                           ; $4f11: $9a
	xor  d                                           ; $4f12: $aa
	sbc  d                                           ; $4f13: $9a
	sbc  b                                           ; $4f14: $98
	adc  b                                           ; $4f15: $88
	ld   [hl], a                                     ; $4f16: $77
	ld   [hl], a                                     ; $4f17: $77
	ld   h, [hl]                                     ; $4f18: $66
	ld   h, [hl]                                     ; $4f19: $66
	halt                                             ; $4f1a: $76
	ld   [hl], a                                     ; $4f1b: $77
	adc  b                                           ; $4f1c: $88
	sbc  c                                           ; $4f1d: $99
	sbc  c                                           ; $4f1e: $99
	sbc  c                                           ; $4f1f: $99
	sbc  c                                           ; $4f20: $99
	sbc  b                                           ; $4f21: $98
	adc  b                                           ; $4f22: $88
	adc  b                                           ; $4f23: $88
	add  a                                           ; $4f24: $87
	ld   [hl], a                                     ; $4f25: $77
	ld   [hl], a                                     ; $4f26: $77
	ld   [hl], a                                     ; $4f27: $77
	ld   [hl], a                                     ; $4f28: $77
	ld   [hl], a                                     ; $4f29: $77
	adc  b                                           ; $4f2a: $88
	adc  c                                           ; $4f2b: $89
	sbc  b                                           ; $4f2c: $98
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  c                                           ; $4f2f: $89
	adc  c                                           ; $4f30: $89
	adc  b                                           ; $4f31: $88
	adc  b                                           ; $4f32: $88
	add  a                                           ; $4f33: $87
	adc  b                                           ; $4f34: $88
	ld   a, b                                        ; $4f35: $78
	add  a                                           ; $4f36: $87
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	sbc  c                                           ; $4f3b: $99
	sbc  b                                           ; $4f3c: $98
	adc  b                                           ; $4f3d: $88
	sbc  b                                           ; $4f3e: $98
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
	sbc  b                                           ; $4fd3: $98
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
	ld   a, b                                        ; $4fe3: $78
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	adc  b                                           ; $4fe7: $88
	adc  b                                           ; $4fe8: $88
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	adc  b                                           ; $4feb: $88
	adc  b                                           ; $4fec: $88
	adc  c                                           ; $4fed: $89
	adc  b                                           ; $4fee: $88
	adc  b                                           ; $4fef: $88
	adc  b                                           ; $4ff0: $88
	adc  b                                           ; $4ff1: $88
	add  a                                           ; $4ff2: $87
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
	ld   a, b                                        ; $500a: $78
	sbc  b                                           ; $500b: $98
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
	sbc  b                                           ; $5020: $98
	ld   a, b                                        ; $5021: $78
	sbc  b                                           ; $5022: $98
	adc  b                                           ; $5023: $88
	adc  b                                           ; $5024: $88
	adc  b                                           ; $5025: $88
	sbc  b                                           ; $5026: $98
	ld   [hl], a                                     ; $5027: $77
	adc  b                                           ; $5028: $88
	adc  b                                           ; $5029: $88
	adc  b                                           ; $502a: $88
	ld   a, b                                        ; $502b: $78
	adc  c                                           ; $502c: $89
	sbc  b                                           ; $502d: $98
	adc  c                                           ; $502e: $89
	adc  b                                           ; $502f: $88
	ld   a, b                                        ; $5030: $78
	adc  b                                           ; $5031: $88
	sbc  b                                           ; $5032: $98
	add  a                                           ; $5033: $87
	adc  b                                           ; $5034: $88
	adc  b                                           ; $5035: $88
	ld   a, b                                        ; $5036: $78
	adc  b                                           ; $5037: $88
	adc  c                                           ; $5038: $89
	adc  b                                           ; $5039: $88
	ld   a, b                                        ; $503a: $78
	adc  b                                           ; $503b: $88
	sbc  b                                           ; $503c: $98
	add  a                                           ; $503d: $87
	adc  b                                           ; $503e: $88
	adc  b                                           ; $503f: $88
	adc  b                                           ; $5040: $88
	add  a                                           ; $5041: $87
	adc  b                                           ; $5042: $88
	sbc  c                                           ; $5043: $99
	add  a                                           ; $5044: $87
	adc  c                                           ; $5045: $89
	adc  b                                           ; $5046: $88
	ld   a, b                                        ; $5047: $78
	adc  b                                           ; $5048: $88
	sbc  b                                           ; $5049: $98
	adc  b                                           ; $504a: $88
	add  a                                           ; $504b: $87
	sbc  c                                           ; $504c: $99
	adc  b                                           ; $504d: $88
	sbc  c                                           ; $504e: $99
	ld   [hl], a                                     ; $504f: $77
	adc  c                                           ; $5050: $89
	add  [hl]                                        ; $5051: $86
	ld   a, b                                        ; $5052: $78
	ld   [hl], a                                     ; $5053: $77
	adc  c                                           ; $5054: $89
	sub  a                                           ; $5055: $97
	adc  b                                           ; $5056: $88
	adc  b                                           ; $5057: $88
	adc  c                                           ; $5058: $89
	add  a                                           ; $5059: $87
	adc  b                                           ; $505a: $88
	sbc  b                                           ; $505b: $98
	adc  b                                           ; $505c: $88
	adc  b                                           ; $505d: $88
	adc  b                                           ; $505e: $88
	adc  b                                           ; $505f: $88
	adc  b                                           ; $5060: $88
	ld   a, b                                        ; $5061: $78
	adc  b                                           ; $5062: $88
	adc  b                                           ; $5063: $88
	sbc  b                                           ; $5064: $98
	adc  b                                           ; $5065: $88
	adc  b                                           ; $5066: $88
	adc  b                                           ; $5067: $88
	adc  c                                           ; $5068: $89
	add  a                                           ; $5069: $87
	adc  b                                           ; $506a: $88
	adc  b                                           ; $506b: $88
	adc  c                                           ; $506c: $89
	adc  b                                           ; $506d: $88
	sbc  c                                           ; $506e: $99
	adc  b                                           ; $506f: $88
	ld   a, c                                        ; $5070: $79
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  b                                           ; $5073: $88
	adc  b                                           ; $5074: $88
	adc  b                                           ; $5075: $88
	adc  b                                           ; $5076: $88
	ld   a, c                                        ; $5077: $79
	xor  c                                           ; $5078: $a9
	adc  b                                           ; $5079: $88
	sbc  c                                           ; $507a: $99
	adc  b                                           ; $507b: $88
	add  a                                           ; $507c: $87
	ld   a, b                                        ; $507d: $78
	adc  c                                           ; $507e: $89
	ld   [hl], a                                     ; $507f: $77
	sbc  b                                           ; $5080: $98
	ld   [hl], a                                     ; $5081: $77
	adc  b                                           ; $5082: $88
	sbc  c                                           ; $5083: $99
	ld   a, b                                        ; $5084: $78
	adc  b                                           ; $5085: $88
	ld   [hl], a                                     ; $5086: $77
	adc  b                                           ; $5087: $88
	add  a                                           ; $5088: $87
	ld   a, c                                        ; $5089: $79
	add  a                                           ; $508a: $87
	ld   a, b                                        ; $508b: $78
	adc  b                                           ; $508c: $88
	adc  b                                           ; $508d: $88
	sbc  b                                           ; $508e: $98
	ld   a, b                                        ; $508f: $78
	adc  b                                           ; $5090: $88
	adc  b                                           ; $5091: $88
	sbc  b                                           ; $5092: $98
	adc  c                                           ; $5093: $89
	ld   a, b                                        ; $5094: $78
	sbc  b                                           ; $5095: $98
	adc  b                                           ; $5096: $88
	adc  b                                           ; $5097: $88
	adc  c                                           ; $5098: $89
	sbc  c                                           ; $5099: $99
	adc  c                                           ; $509a: $89
	adc  b                                           ; $509b: $88
	add  a                                           ; $509c: $87
	adc  b                                           ; $509d: $88
	adc  c                                           ; $509e: $89
	adc  c                                           ; $509f: $89
	ld   [hl], a                                     ; $50a0: $77
	adc  b                                           ; $50a1: $88
	sbc  c                                           ; $50a2: $99
	xor  b                                           ; $50a3: $a8
	adc  b                                           ; $50a4: $88
	ld   [hl], a                                     ; $50a5: $77
	ld   a, c                                        ; $50a6: $79
	sbc  c                                           ; $50a7: $99
	adc  b                                           ; $50a8: $88
	ld   a, b                                        ; $50a9: $78
	adc  b                                           ; $50aa: $88
	adc  c                                           ; $50ab: $89
	adc  c                                           ; $50ac: $89
	xor  b                                           ; $50ad: $a8
	sbc  b                                           ; $50ae: $98
	adc  b                                           ; $50af: $88
	halt                                             ; $50b0: $76
	ld   a, b                                        ; $50b1: $78
	ld   [hl], a                                     ; $50b2: $77
	ld   [hl], a                                     ; $50b3: $77
	ld   a, b                                        ; $50b4: $78
	sbc  b                                           ; $50b5: $98
	sbc  c                                           ; $50b6: $99
	xor  e                                           ; $50b7: $ab
	sbc  b                                           ; $50b8: $98
	add  a                                           ; $50b9: $87
	ld   [hl], a                                     ; $50ba: $77
	ld   [hl], a                                     ; $50bb: $77
	ld   h, [hl]                                     ; $50bc: $66
	ld   h, a                                        ; $50bd: $67
	ld   [hl], a                                     ; $50be: $77
	ld   a, b                                        ; $50bf: $78
	adc  d                                           ; $50c0: $8a
	res  7, h                                        ; $50c1: $cb $bc
	cp   c                                           ; $50c3: $b9
	adc  b                                           ; $50c4: $88
	add  a                                           ; $50c5: $87
	ld   h, l                                        ; $50c6: $65
	ld   d, l                                        ; $50c7: $55
	ld   d, l                                        ; $50c8: $55
	ld   d, [hl]                                     ; $50c9: $56
	ld   a, c                                        ; $50ca: $79
	sbc  d                                           ; $50cb: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50cc: $cf
	db   $ed                                         ; $50cd: $ed
	jp   z, $7599                                    ; $50ce: $ca $99 $75

	ld   b, e                                        ; $50d1: $43
	ld   b, h                                        ; $50d2: $44
	ld   [hl+], a                                    ; $50d3: $22
	ld   [hl], $89                                   ; $50d4: $36 $89
	xor  h                                           ; $50d6: $ac
	rst  $38                                         ; $50d7: $ff
	db   $fd                                         ; $50d8: $fd
	res  3, c                                        ; $50d9: $cb $99
	ld   h, e                                        ; $50db: $63
	inc  hl                                          ; $50dc: $23
	ld   [hl-], a                                    ; $50dd: $32
	ld   de, $8925                                   ; $50de: $11 $25 $89
	cp   l                                           ; $50e1: $bd
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	call c, Call_0f3_42a7                            ; $50e4: $dc $a7 $42
	ld   de, $1111                                   ; $50e7: $11 $11 $11
	inc  d                                           ; $50ea: $14
	sbc  e                                           ; $50eb: $9b
	rst  JumpTable                                         ; $50ec: $df
	rst  $38                                         ; $50ed: $ff
	rst  $38                                         ; $50ee: $ff
	cp   $a7                                         ; $50ef: $fe $a7
	ld   hl, $1111                                   ; $50f1: $21 $11 $11
	ld   de, $8c14                                   ; $50f4: $11 $14 $8c
	rst  $38                                         ; $50f7: $ff
	rst  $38                                         ; $50f8: $ff
	rst  $38                                         ; $50f9: $ff
	rst  $38                                         ; $50fa: $ff
	or   h                                           ; $50fb: $b4
	ld   de, $1111                                   ; $50fc: $11 $11 $11
	ld   de, $bf14                                   ; $50ff: $11 $14 $bf
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	rst  $38                                         ; $5104: $ff
	rst  $38                                         ; $5105: $ff
	jp   nc, $1111                                   ; $5106: $d2 $11 $11

	ld   de, $1711                                   ; $5109: $11 $11 $17
	rst  $28                                         ; $510c: $ef
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	rst  $38                                         ; $510f: $ff
	rst  $38                                         ; $5110: $ff
	and  c                                           ; $5111: $a1
	ld   de, $1111                                   ; $5112: $11 $11 $11
	ld   de, $ff4c                                   ; $5115: $11 $4c $ff
	rst  $38                                         ; $5118: $ff
	rst  $38                                         ; $5119: $ff
	rst  $38                                         ; $511a: $ff
	rst  $38                                         ; $511b: $ff
	ld   d, c                                        ; $511c: $51
	ld   de, $1111                                   ; $511d: $11 $11 $11
	ld   [de], a                                     ; $5120: $12
	cp   a                                           ; $5121: $bf
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	rst  $38                                         ; $5124: $ff
	rst  $38                                         ; $5125: $ff
	ld   [$1111], a                                  ; $5126: $ea $11 $11
	ld   de, $1c11                                   ; $5129: $11 $11 $1c
	rst  $38                                         ; $512c: $ff
	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff
	ld   a, [$1191]                                  ; $5130: $fa $91 $11
	ld   de, $1111                                   ; $5133: $11 $11 $11
	rst  $28                                         ; $5136: $ef
	rst  $38                                         ; $5137: $ff
	rst  $38                                         ; $5138: $ff
	rst  $38                                         ; $5139: $ff
	ld   a, [$1176]                                  ; $513a: $fa $76 $11
	ld   de, $1111                                   ; $513d: $11 $11 $11
	rra                                              ; $5140: $1f
	rst  $38                                         ; $5141: $ff
	rst  $38                                         ; $5142: $ff
	rst  $38                                         ; $5143: $ff
	db   $fc                                         ; $5144: $fc
	inc  sp                                          ; $5145: $33
	ld   b, c                                        ; $5146: $41
	ld   de, $4111                                   ; $5147: $11 $11 $41
	ld   a, [de]                                     ; $514a: $1a
	rst  $38                                         ; $514b: $ff
	rst  $38                                         ; $514c: $ff
	rst  $38                                         ; $514d: $ff
	rst  $38                                         ; $514e: $ff
	ld   sp, $1111                                   ; $514f: $31 $11 $11
	ld   de, $1487                                   ; $5152: $11 $87 $14
	rst  $38                                         ; $5155: $ff
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	ld   b, c                                        ; $5159: $41
	ld   de, $1111                                   ; $515a: $11 $11 $11
	cp   h                                           ; $515d: $bc
	inc  h                                           ; $515e: $24
	rst  $38                                         ; $515f: $ff
	rst  $38                                         ; $5160: $ff
	rst  $38                                         ; $5161: $ff
	rst  $38                                         ; $5162: $ff
	ld   hl, $1111                                   ; $5163: $21 $11 $11
	ld   de, $49ee                                   ; $5166: $11 $ee $49
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $516b: $cf
	cp   $11                                         ; $516c: $fe $11
	ld   de, $1811                                   ; $516e: $11 $11 $18
	cp   $5f                                         ; $5171: $fe $5f
	rst  $38                                         ; $5173: $ff
	db   $fc                                         ; $5174: $fc
	cp   a                                           ; $5175: $bf
	or   $11                                         ; $5176: $f6 $11
	ld   de, $1f11                                   ; $5178: $11 $11 $1f
	ei                                               ; $517b: $fb
	ld   e, a                                        ; $517c: $5f
	rst  $38                                         ; $517d: $ff
	ld   hl, sp-$31                                  ; $517e: $f8 $cf
	pop  de                                          ; $5180: $d1
	ld   de, $1111                                   ; $5181: $11 $11 $11
	xor  a                                           ; $5184: $af
	push hl                                          ; $5185: $e5
	xor  a                                           ; $5186: $af
	rst  $38                                         ; $5187: $ff
	ld   l, b                                        ; $5188: $68
	rst  $38                                         ; $5189: $ff
	ld   h, c                                        ; $518a: $61
	inc  d                                           ; $518b: $14
	ld   de, rAUD1LEN                                   ; $518c: $11 $11 $ff
	ld   [hl], c                                     ; $518f: $71
	rst  $38                                         ; $5190: $ff
	cp   $2d                                         ; $5191: $fe $2d
	cp   $11                                         ; $5193: $fe $11
	add  hl, hl                                      ; $5195: $29
	ld   de, $ff18                                   ; $5196: $11 $18 $ff
	ld   [de], a                                     ; $5199: $12
	rst  $38                                         ; $519a: $ff
	di                                               ; $519b: $f3
	cpl                                              ; $519c: $2f
	ld   hl, sp+$11                                  ; $519d: $f8 $11
	adc  e                                           ; $519f: $8b
	ld   de, $fa1f                                   ; $51a0: $11 $1f $fa
	rla                                              ; $51a3: $17
	rst  $38                                         ; $51a4: $ff
	pop  af                                          ; $51a5: $f1
	ld   l, a                                        ; $51a6: $6f
	pop  af                                          ; $51a7: $f1
	ld   de, $11f8                                   ; $51a8: $11 $f8 $11
	rra                                              ; $51ab: $1f
	di                                               ; $51ac: $f3
	rra                                              ; $51ad: $1f
	rst  $38                                         ; $51ae: $ff
	sub  c                                           ; $51af: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b0: $cf
	pop  af                                          ; $51b1: $f1
	ld   d, $f3                                      ; $51b2: $16 $f3
	ld   de, $f14f                                   ; $51b4: $11 $4f $f1
	rra                                              ; $51b7: $1f
	rst  $38                                         ; $51b8: $ff
	ld   hl, $c1ff                                   ; $51b9: $21 $ff $c1
	dec  e                                           ; $51bc: $1d
	pop  af                                          ; $51bd: $f1
	ld   de, $f19f                                   ; $51be: $11 $9f $f1
	rra                                              ; $51c1: $1f
	rst  $38                                         ; $51c2: $ff
	ld   de, $71ff                                   ; $51c3: $11 $ff $71
	rra                                              ; $51c6: $1f
	pop  af                                          ; $51c7: $f1
	ld   de, $c1ef                                   ; $51c8: $11 $ef $c1
	rra                                              ; $51cb: $1f
	rst  $38                                         ; $51cc: $ff
	ld   de, $31ff                                   ; $51cd: $11 $ff $31
	rra                                              ; $51d0: $1f
	pop  af                                          ; $51d1: $f1
	ld   de, $81ff                                   ; $51d2: $11 $ff $81
	ld   c, a                                        ; $51d5: $4f
	cp   $13                                         ; $51d6: $fe $13
	rst  $38                                         ; $51d8: $ff
	ld   de, $f17f                                   ; $51d9: $11 $7f $f1
	ld   de, $31ff                                   ; $51dc: $11 $ff $31
	sbc  a                                           ; $51df: $9f
	ld   hl, sp+$17                                  ; $51e0: $f8 $17
	rst  $38                                         ; $51e2: $ff
	ld   de, $a1bf                                   ; $51e3: $11 $bf $a1
	ld   de, $11ff                                   ; $51e6: $11 $ff $11
	rst  $38                                         ; $51e9: $ff
	ldh  a, [c]                                      ; $51ea: $f2
	dec  de                                          ; $51eb: $1b
	rst  $38                                         ; $51ec: $ff
	ld   de, $51ff                                   ; $51ed: $11 $ff $51
	rla                                              ; $51f0: $17
	rst  $38                                         ; $51f1: $ff
	ld   de, $f1ff                                   ; $51f2: $11 $ff $f1
	rra                                              ; $51f5: $1f
	ld   sp, hl                                      ; $51f6: $f9
	ld   de, $11ff                                   ; $51f7: $11 $ff $11
	rra                                              ; $51fa: $1f
	ld   a, [rAUD1LEN]                                  ; $51fb: $fa $11 $ff
	pop  af                                          ; $51fe: $f1
	cpl                                              ; $51ff: $2f
	pop  af                                          ; $5200: $f1
	rla                                              ; $5201: $17
	rst  $38                                         ; $5202: $ff
	ld   de, $f21f                                   ; $5203: $11 $1f $f2
	add  hl, de                                      ; $5206: $19
	rst  $38                                         ; $5207: $ff
	ld   hl, $f19f                                   ; $5208: $21 $9f $f1
	rra                                              ; $520b: $1f
	db   $f4                                         ; $520c: $f4
	ld   de, $f1bf                                   ; $520d: $11 $bf $f1
	rra                                              ; $5210: $1f
	rst  $38                                         ; $5211: $ff
	ld   de, $61ff                                   ; $5212: $11 $ff $61
	ccf                                              ; $5215: $3f
	pop  af                                          ; $5216: $f1
	ld   de, $21ff                                   ; $5217: $11 $ff $21
	adc  a                                           ; $521a: $8f
	ldh  a, [c]                                      ; $521b: $f2
	add  hl, de                                      ; $521c: $19
	rst  $38                                         ; $521d: $ff
	ld   de, $31ff                                   ; $521e: $11 $ff $31
	rra                                              ; $5221: $1f
	db   $fd                                         ; $5222: $fd
	ld   de, $f1ff                                   ; $5223: $11 $ff $f1
	rrca                                             ; $5226: $0f
	db   $f4                                         ; $5227: $f4
	ld   d, $ff                                      ; $5228: $16 $ff
	ld   de, $f11f                                   ; $522a: $11 $1f $f1
	dec  e                                           ; $522d: $1d
	rst  $38                                         ; $522e: $ff
	ld   de, $d1df                                   ; $522f: $11 $df $d1
	rra                                              ; $5232: $1f
	pop  af                                          ; $5233: $f1
	ld   de, $51ff                                   ; $5234: $11 $ff $51
	ccf                                              ; $5237: $3f
	or   $16                                         ; $5238: $f6 $16
	rst  $38                                         ; $523a: $ff
	ld   de, $41ff                                   ; $523b: $11 $ff $41
	ld   e, $fd                                      ; $523e: $1e $fd
	ld   de, $f1ff                                   ; $5240: $11 $ff $f1
	rra                                              ; $5243: $1f
	db   $f4                                         ; $5244: $f4
	rla                                              ; $5245: $17
	db   $fc                                         ; $5246: $fc
	ld   de, $f12f                                   ; $5247: $11 $2f $f1
	rra                                              ; $524a: $1f
	rst  $38                                         ; $524b: $ff
	ld   de, $91ff                                   ; $524c: $11 $ff $91
	ccf                                              ; $524f: $3f
	pop  af                                          ; $5250: $f1
	ld   de, $11ff                                   ; $5251: $11 $ff $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5254: $cf
	pop  af                                          ; $5255: $f1
	dec  e                                           ; $5256: $1d
	db   $fd                                         ; $5257: $fd
	ld   de, $11ff                                   ; $5258: $11 $ff $11
	rra                                              ; $525b: $1f
	ldh  a, [c]                                      ; $525c: $f2
	ld   a, [de]                                     ; $525d: $1a
	rst  $38                                         ; $525e: $ff
	ld   de, $e1af                                   ; $525f: $11 $af $e1
	rra                                              ; $5262: $1f
	pop  af                                          ; $5263: $f1
	ld   de, $41ff                                   ; $5264: $11 $ff $41
	ld   a, a                                        ; $5267: $7f
	pop  af                                          ; $5268: $f1
	jr   @+$01                                       ; $5269: $18 $ff

	ld   de, $11ff                                   ; $526b: $11 $ff $11
	rra                                              ; $526e: $1f
	push af                                          ; $526f: $f5
	rla                                              ; $5270: $17
	rst  $38                                         ; $5271: $ff
	ld   de, $f18f                                   ; $5272: $11 $8f $f1
	rra                                              ; $5275: $1f
	pop  af                                          ; $5276: $f1
	ld   de, $61ff                                   ; $5277: $11 $ff $61
	ld   a, a                                        ; $527a: $7f
	pop  af                                          ; $527b: $f1
	add  hl, de                                      ; $527c: $19
	cp   $11                                         ; $527d: $fe $11
	rst  $38                                         ; $527f: $ff
	ld   de, $f31f                                   ; $5280: $11 $1f $f3
	dec  de                                          ; $5283: $1b
	rst  $38                                         ; $5284: $ff
	ld   de, $c1af                                   ; $5285: $11 $af $c1
	rra                                              ; $5288: $1f
	pop  af                                          ; $5289: $f1
	ld   de, $21ff                                   ; $528a: $11 $ff $21
	rst  $38                                         ; $528d: $ff
	pop  af                                          ; $528e: $f1
	inc  e                                           ; $528f: $1c
	ld   sp, hl                                      ; $5290: $f9
	dec  d                                           ; $5291: $15
	db   $fc                                         ; $5292: $fc
	ld   de, $f17f                                   ; $5293: $11 $7f $f1
	rra                                              ; $5296: $1f
	rst  $38                                         ; $5297: $ff
	ld   de, $51ff                                   ; $5298: $11 $ff $51
	xor  a                                           ; $529b: $af
	ld   hl, $ff1f                                   ; $529c: $21 $1f $ff
	ld   de, $91ff                                   ; $529f: $11 $ff $91
	cpl                                              ; $52a2: $2f
	pop  af                                          ; $52a3: $f1
	rra                                              ; $52a4: $1f
	pop  af                                          ; $52a5: $f1
	ld   de, $81ff                                   ; $52a6: $11 $ff $81
	ld   a, a                                        ; $52a9: $7f
	pop  af                                          ; $52aa: $f1
	jr   @-$03                                       ; $52ab: $18 $fb

	inc  de                                          ; $52ad: $13
	rst  $38                                         ; $52ae: $ff
	ld   de, $f12f                                   ; $52af: $11 $2f $f1
	rra                                              ; $52b2: $1f
	rst  $38                                         ; $52b3: $ff
	ld   de, $51ef                                   ; $52b4: $11 $ef $51
	sbc  a                                           ; $52b7: $9f
	ld   d, c                                        ; $52b8: $51
	rra                                              ; $52b9: $1f
	rst  $38                                         ; $52ba: $ff
	ld   de, $b1ff                                   ; $52bb: $11 $ff $b1
	rra                                              ; $52be: $1f
	pop  af                                          ; $52bf: $f1
	ld   e, $f1                                      ; $52c0: $1e $f1
	ld   de, $91ff                                   ; $52c2: $11 $ff $91
	xor  a                                           ; $52c5: $af
	pop  af                                          ; $52c6: $f1
	jr   @-$04                                       ; $52c7: $18 $fa

	ld   d, $fa                                      ; $52c9: $16 $fa
	ld   de, $f1bf                                   ; $52cb: $11 $bf $f1
	rra                                              ; $52ce: $1f
	rst  $38                                         ; $52cf: $ff
	ld   de, $31ff                                   ; $52d0: $11 $ff $31
	rst  $28                                         ; $52d3: $ef
	ld   de, $fa1f                                   ; $52d4: $11 $1f $fa
	add  hl, de                                      ; $52d7: $19
	rst  $38                                         ; $52d8: $ff
	ld   de, $a18f                                   ; $52d9: $11 $8f $a1
	ld   e, a                                        ; $52dc: $5f
	sub  c                                           ; $52dd: $91
	dec  de                                          ; $52de: $1b
	rst  $38                                         ; $52df: $ff
	ld   de, $f1ff                                   ; $52e0: $11 $ff $f1
	rra                                              ; $52e3: $1f
	ldh  a, [c]                                      ; $52e4: $f2
	ld   e, $f1                                      ; $52e5: $1e $f1
	ld   de, $b1ff                                   ; $52e7: $11 $ff $b1
	xor  a                                           ; $52ea: $af
	pop  af                                          ; $52eb: $f1
	jr   @-$04                                       ; $52ec: $18 $fa

	rla                                              ; $52ee: $17
	or   $11                                         ; $52ef: $f6 $11
	rst  $28                                         ; $52f1: $ef
	pop  af                                          ; $52f2: $f1
	rra                                              ; $52f3: $1f
	db   $fc                                         ; $52f4: $fc
	ld   de, $12ff                                   ; $52f5: $11 $ff $12
	rst  $38                                         ; $52f8: $ff
	ld   de, $f71f                                   ; $52f9: $11 $1f $f7
	rra                                              ; $52fc: $1f
	rst  $38                                         ; $52fd: $ff
	ld   de, $61cf                                   ; $52fe: $11 $cf $61
	xor  a                                           ; $5301: $af
	ld   de, $fe1f                                   ; $5302: $11 $1f $fe
	jr   @+$01                                       ; $5305: $18 $ff

	ld   hl, $b15f                                   ; $5307: $21 $5f $b1
	ld   l, a                                        ; $530a: $6f
	ld   h, c                                        ; $530b: $61
	inc  e                                           ; $530c: $1c
	rst  $38                                         ; $530d: $ff
	ld   de, $c1ff                                   ; $530e: $11 $ff $c1
	rra                                              ; $5311: $1f
	jp   nc, $a15f                                   ; $5312: $d2 $5f $a1

	inc  d                                           ; $5315: $14
	rst  $38                                         ; $5316: $ff
	ld   h, c                                        ; $5317: $61
	rst  $38                                         ; $5318: $ff
	pop  af                                          ; $5319: $f1
	inc  e                                           ; $531a: $1c
	di                                               ; $531b: $f3
	dec  l                                           ; $531c: $2d
	pop  af                                          ; $531d: $f1
	ld   de, $a1ff                                   ; $531e: $11 $ff $a1

jr_0f3_5321:
	rst  $28                                         ; $5321: $ef
	pop  af                                          ; $5322: $f1
	ld   a, [de]                                     ; $5323: $1a
	push af                                          ; $5324: $f5
	inc  e                                           ; $5325: $1c

jr_0f3_5326:
	pop  af                                          ; $5326: $f1
	ld   de, $c1ff                                   ; $5327: $11 $ff $c1
	xor  a                                           ; $532a: $af
	ldh  a, [c]                                      ; $532b: $f2
	jr   jr_0f3_5326                                 ; $532c: $18 $f8

	jr   jr_0f3_5321                                 ; $532e: $18 $f1

	ld   de, $f1ff                                   ; $5330: $11 $ff $f1
	ld   a, a                                        ; $5333: $7f
	or   $14                                         ; $5334: $f6 $14
	ei                                               ; $5336: $fb
	ld   d, $f2                                      ; $5337: $16 $f2
	ld   de, $f1ff                                   ; $5339: $11 $ff $f1
	cpl                                              ; $533c: $2f
	ei                                               ; $533d: $fb
	ld   de, $14fd                                   ; $533e: $11 $fd $14
	ldh  [c], a                                      ; $5341: $e2
	ld   de, $f4ef                                   ; $5342: $11 $ef $f4
	ccf                                              ; $5345: $3f
	db   $fd                                         ; $5346: $fd
	ld   de, $24ee                                   ; $5347: $11 $ee $24
	jp   nc, $ef11                                   ; $534a: $d2 $11 $ef

	db   $f4                                         ; $534d: $f4
	ccf                                              ; $534e: $3f
	db   $fd                                         ; $534f: $fd
	ld   de, $36ed                                   ; $5350: $11 $ed $36
	pop  hl                                          ; $5353: $e1
	ld   de, $f4ff                                   ; $5354: $11 $ff $f4
	ld   c, a                                        ; $5357: $4f
	db   $fc                                         ; $5358: $fc
	ld   [de], a                                     ; $5359: $12
	db   $fd                                         ; $535a: $fd
	ld   b, [hl]                                     ; $535b: $46
	pop  de                                          ; $535c: $d1
	ld   de, $f4ff                                   ; $535d: $11 $ff $f4
	ld   l, a                                        ; $5360: $6f
	ld   a, [$ec13]                                  ; $5361: $fa $13 $ec
	ld   c, b                                        ; $5364: $48
	or   c                                           ; $5365: $b1
	ld   de, $f3ff                                   ; $5366: $11 $ff $f3
	xor  a                                           ; $5369: $af
	rst  $30                                         ; $536a: $f7
	dec  d                                           ; $536b: $15
	ei                                               ; $536c: $fb
	ld   b, a                                        ; $536d: $47
	or   c                                           ; $536e: $b1
	ld   de, $e3ff                                   ; $536f: $11 $ff $e3
	rst  JumpTable                                         ; $5372: $df
	db   $f4                                         ; $5373: $f4
	jr   @-$16                                       ; $5374: $18 $e8

	ld   c, d                                        ; $5376: $4a

Jump_0f3_5377:
	add  c                                           ; $5377: $81
	inc  de                                          ; $5378: $13
	rst  $38                                         ; $5379: $ff
	or   e                                           ; $537a: $b3
	rst  $38                                         ; $537b: $ff
	pop  af                                          ; $537c: $f1
	ld   a, [de]                                     ; $537d: $1a
	rst  $20                                         ; $537e: $e7
	ld   c, e                                        ; $537f: $4b
	ld   sp, $ff1b                                   ; $5380: $31 $1b $ff
	add  h                                           ; $5383: $84
	rst  $38                                         ; $5384: $ff
	pop  af                                          ; $5385: $f1
	inc  e                                           ; $5386: $1c
	push bc                                          ; $5387: $c5
	ld   a, h                                        ; $5388: $7c
	ld   de, $ff1f                                   ; $5389: $11 $1f $ff
	ld   l, b                                        ; $538c: $68
	rst  $38                                         ; $538d: $ff
	sub  c                                           ; $538e: $91
	ld   e, [hl]                                     ; $538f: $5e
	and  l                                           ; $5390: $a5
	ld   a, c                                        ; $5391: $79
	ld   de, $fc1f                                   ; $5392: $11 $1f $fc
	ld   e, a                                        ; $5395: $5f
	rst  $38                                         ; $5396: $ff
	ld   hl, $759e                                   ; $5397: $21 $9e $75
	and  e                                           ; $539a: $a3
	ld   de, $f8af                                   ; $539b: $11 $af $f8
	ld   e, a                                        ; $539e: $5f

jr_0f3_539f:
	rst  $38                                         ; $539f: $ff
	ld   [de], a                                     ; $53a0: $12
	db   $dd                                         ; $53a1: $dd
	ld   d, [hl]                                     ; $53a2: $56
	sub  c                                           ; $53a3: $91
	ld   de, $d6ff                                   ; $53a4: $11 $ff $d6

Call_0f3_53a7:
	xor  a                                           ; $53a7: $af
	ld   hl, sp+$15                                  ; $53a8: $f8 $15
	ld   [$9149], a                                  ; $53aa: $ea $49 $91
	ld   de, $a2ff                                   ; $53ad: $11 $ff $a2
	rst  $38                                         ; $53b0: $ff
	pop  af                                          ; $53b1: $f1
	add  hl, de                                      ; $53b2: $19
	add  sp, $59                                     ; $53b3: $e8 $59
	ld   de, $ff1f                                   ; $53b5: $11 $1f $ff
	halt                                             ; $53b8: $76
	rst  $38                                         ; $53b9: $ff
	pop  bc                                          ; $53ba: $c1
	dec  a                                           ; $53bb: $3d
	add  $79                                         ; $53bc: $c6 $79
	ld   de, $fb1f                                   ; $53be: $11 $1f $fb
	dec  a                                           ; $53c1: $3d
	rst  $38                                         ; $53c2: $ff
	ld   b, c                                        ; $53c3: $41
	adc  l                                           ; $53c4: $8d
	and  a                                           ; $53c5: $a7
	add  c                                           ; $53c6: $81
	ld   de, $f7ff                                   ; $53c7: $11 $ff $f7
	ld   l, a                                        ; $53ca: $6f
	db   $fd                                         ; $53cb: $fd
	inc  h                                           ; $53cc: $24
	xor  h                                           ; $53cd: $ac
	adc  c                                           ; $53ce: $89
	ld   d, c                                        ; $53cf: $51
	ld   de, $a5ff                                   ; $53d0: $11 $ff $a5
	rst  $38                                         ; $53d3: $ff
	db   $f4                                         ; $53d4: $f4
	jr   c, jr_0f3_539f                              ; $53d5: $38 $c8

	ld   l, c                                        ; $53d7: $69
	ld   de, $fe1f                                   ; $53d8: $11 $1f $fe
	ld   l, b                                        ; $53db: $68
	rst  $38                                         ; $53dc: $ff
	or   e                                           ; $53dd: $b3
	ld   e, h                                        ; $53de: $5c
	or   [hl]                                        ; $53df: $b6
	ld   [hl], e                                     ; $53e0: $73
	ld   de, $f98f                                   ; $53e1: $11 $8f $f9
	ld   e, a                                        ; $53e4: $5f
	rst  $38                                         ; $53e5: $ff
	ld   b, l                                        ; $53e6: $45
	adc  h                                           ; $53e7: $8c
	sbc  b                                           ; $53e8: $98
	ld   b, c                                        ; $53e9: $41
	ld   de, $97ff                                   ; $53ea: $11 $ff $97
	rst  $38                                         ; $53ed: $ff
	push af                                          ; $53ee: $f5
	ld   l, c                                        ; $53ef: $69
	cp   c                                           ; $53f0: $b9
	ld   [hl], a                                     ; $53f1: $77
	ld   de, $fc1f                                   ; $53f2: $11 $1f $fc
	ld   a, l                                        ; $53f5: $7d
	rst  $38                                         ; $53f6: $ff
	sub  [hl]                                        ; $53f7: $96
	ld   a, c                                        ; $53f8: $79
	xor  b                                           ; $53f9: $a8
	ld   [hl], c                                     ; $53fa: $71
	ld   de, $b7ff                                   ; $53fb: $11 $ff $b7
	cp   a                                           ; $53fe: $bf
	ei                                               ; $53ff: $fb
	ld   l, b                                        ; $5400: $68
	cp   e                                           ; $5401: $bb
	ld   d, [hl]                                     ; $5402: $56
	ld   de, $fc1d                                   ; $5403: $11 $1d $fc
	xor  c                                           ; $5406: $a9
	rst  $38                                         ; $5407: $ff
	rst  $30                                         ; $5408: $f7
	ld   a, c                                        ; $5409: $79
	cp   b                                           ; $540a: $b8
	ld   h, c                                        ; $540b: $61
	ld   de, $b9df                                   ; $540c: $11 $df $b9
	sbc  a                                           ; $540f: $9f
	rst  $38                                         ; $5410: $ff
	sbc  b                                           ; $5411: $98
	adc  e                                           ; $5412: $8b
	ld   [hl], h                                     ; $5413: $74
	ld   de, $fb1c                                   ; $5414: $11 $1c $fb
	adc  c                                           ; $5417: $89
	rst  $38                                         ; $5418: $ff
	ld   sp, hl                                      ; $5419: $f9
	xor  b                                           ; $541a: $a8
	or   a                                           ; $541b: $b7
	ld   d, c                                        ; $541c: $51
	ld   de, $b8df                                   ; $541d: $11 $df $b8
	sbc  a                                           ; $5420: $9f
	rst  $38                                         ; $5421: $ff
	xor  b                                           ; $5422: $a8
	sbc  e                                           ; $5423: $9b
	ld   h, e                                        ; $5424: $63
	ld   de, $eb1f                                   ; $5425: $11 $1f $eb
	xor  l                                           ; $5428: $ad
	rst  $38                                         ; $5429: $ff
	db   $fc                                         ; $542a: $fc
	adc  e                                           ; $542b: $8b
	or   e                                           ; $542c: $b3
	ld   de, $fa11                                   ; $542d: $11 $11 $fa
	cp   d                                           ; $5430: $ba
	rst  $38                                         ; $5431: $ff
	rst  $38                                         ; $5432: $ff
	ret  c                                           ; $5433: $d8

	ret  z                                           ; $5434: $c8

	ld   hl, $aa11                                   ; $5435: $21 $11 $aa
	ld   a, e                                        ; $5438: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5439: $cf
	rst  $38                                         ; $543a: $ff
	db   $fd                                         ; $543b: $fd
	cp   h                                           ; $543c: $bc
	ld   d, c                                        ; $543d: $51
	ld   de, $3a1c                                   ; $543e: $11 $1c $3a
	cp   a                                           ; $5441: $bf
	rst  $38                                         ; $5442: $ff
	rst  $38                                         ; $5443: $ff
	adc  $81                                         ; $5444: $ce $81
	ld   de, $1517                                   ; $5446: $11 $17 $15
	cp   [hl]                                        ; $5449: $be
	rst  $38                                         ; $544a: $ff
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	jp   $1311                                       ; $544d: $c3 $11 $13


	ld   de, $ff9c                                   ; $5450: $11 $9c $ff
	rst  $38                                         ; $5453: $ff
	rst  $38                                         ; $5454: $ff
	push hl                                          ; $5455: $e5
	ld   de, $1111                                   ; $5456: $11 $11 $11
	ld   e, d                                        ; $5459: $5a
	rst  $38                                         ; $545a: $ff
	rst  $38                                         ; $545b: $ff
	rst  $38                                         ; $545c: $ff
	rst  $30                                         ; $545d: $f7
	ld   de, $1111                                   ; $545e: $11 $11 $11
	ld   d, $ff                                      ; $5461: $16 $ff
	rst  $38                                         ; $5463: $ff
	rst  $38                                         ; $5464: $ff
	ei                                               ; $5465: $fb
	ld   de, $1111                                   ; $5466: $11 $11 $11
	ld   [de], a                                     ; $5469: $12
	rst  $28                                         ; $546a: $ef
	rst  $38                                         ; $546b: $ff
	rst  $38                                         ; $546c: $ff
	rst  $38                                         ; $546d: $ff
	ld   h, c                                        ; $546e: $61
	ld   de, $1111                                   ; $546f: $11 $11 $11
	ld   e, a                                        ; $5472: $5f
	rst  $38                                         ; $5473: $ff
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	call nz, $1111                                   ; $5476: $c4 $11 $11
	ld   de, $ef16                                   ; $5479: $11 $16 $ef
	rst  $38                                         ; $547c: $ff
	rst  $38                                         ; $547d: $ff
	db   $fc                                         ; $547e: $fc
	ld   d, c                                        ; $547f: $51
	ld   de, $1111                                   ; $5480: $11 $11 $11
	ld   c, e                                        ; $5483: $4b
	rst  $38                                         ; $5484: $ff
	rst  $38                                         ; $5485: $ff
	rst  $38                                         ; $5486: $ff
	ret  c                                           ; $5487: $d8

	ld   de, $1111                                   ; $5488: $11 $11 $11
	ld   [de], a                                     ; $548b: $12
	adc  h                                           ; $548c: $8c
	rst  $38                                         ; $548d: $ff
	rst  $38                                         ; $548e: $ff
	cp   $95                                         ; $548f: $fe $95
	ld   de, $1111                                   ; $5491: $11 $11 $11
	dec  d                                           ; $5494: $15
	sbc  d                                           ; $5495: $9a
	rst  $28                                         ; $5496: $ef
	rst  $38                                         ; $5497: $ff
	jp   hl                                          ; $5498: $e9


	ld   b, [hl]                                     ; $5499: $46
	reti                                             ; $549a: $d9


	ld   de, $7316                                   ; $549b: $11 $16 $73
	daa                                              ; $549e: $27
	rst  JumpTable                                         ; $549f: $df
	xor  $c9                                         ; $54a0: $ee $c9
	ld   l, c                                        ; $54a2: $69
	ld   sp, hl                                      ; $54a3: $f9
	ld   hl, $5137                                   ; $54a4: $21 $37 $51
	scf                                              ; $54a7: $37
	res  7, h                                        ; $54a8: $cb $bc
	cp   e                                           ; $54aa: $bb
	sbc  b                                           ; $54ab: $98
	call z, $3573                                    ; $54ac: $cc $73 $35
	ld   h, h                                        ; $54af: $64
	dec  [hl]                                        ; $54b0: $35
	adc  d                                           ; $54b1: $8a
	xor  c                                           ; $54b2: $a9
	cp   d                                           ; $54b3: $ba
	xor  d                                           ; $54b4: $aa
	cp   h                                           ; $54b5: $bc
	and  [hl]                                        ; $54b6: $a6
	ld   b, l                                        ; $54b7: $45
	ld   h, [hl]                                     ; $54b8: $66
	ld   d, h                                        ; $54b9: $54
	ld   d, a                                        ; $54ba: $57
	sbc  c                                           ; $54bb: $99
	adc  c                                           ; $54bc: $89
	call $99ba                                       ; $54bd: $cd $ba $99
	sbc  b                                           ; $54c0: $98
	ld   h, [hl]                                     ; $54c1: $66
	ld   d, l                                        ; $54c2: $55
	ld   d, l                                        ; $54c3: $55
	ld   h, [hl]                                     ; $54c4: $66
	ld   h, a                                        ; $54c5: $67
	adc  h                                           ; $54c6: $8c
	cp   d                                           ; $54c7: $ba
	xor  d                                           ; $54c8: $aa
	jp   z, Jump_0f3_7698                            ; $54c9: $ca $98 $76

	ld   d, l                                        ; $54cc: $55
	ld   d, l                                        ; $54cd: $55
	ld   d, l                                        ; $54ce: $55
	ld   l, b                                        ; $54cf: $68
	xor  d                                           ; $54d0: $aa
	xor  e                                           ; $54d1: $ab
	cp   e                                           ; $54d2: $bb
	jp   c, $8788                                    ; $54d3: $da $88 $87

	ld   d, h                                        ; $54d6: $54
	ld   b, l                                        ; $54d7: $45
	ld   d, l                                        ; $54d8: $55
	ld   h, a                                        ; $54d9: $67
	xor  d                                           ; $54da: $aa
	sbc  d                                           ; $54db: $9a
	res  7, c                                        ; $54dc: $cb $b9
	sbc  b                                           ; $54de: $98
	halt                                             ; $54df: $76
	ld   d, l                                        ; $54e0: $55
	ld   d, l                                        ; $54e1: $55
	ld   d, [hl]                                     ; $54e2: $56
	ld   [hl], a                                     ; $54e3: $77
	sbc  c                                           ; $54e4: $99
	xor  e                                           ; $54e5: $ab
	cp   e                                           ; $54e6: $bb
	cp   c                                           ; $54e7: $b9
	add  a                                           ; $54e8: $87
	ld   [hl], a                                     ; $54e9: $77
	ld   h, [hl]                                     ; $54ea: $66
	ld   h, [hl]                                     ; $54eb: $66
	ld   h, a                                        ; $54ec: $67
	adc  c                                           ; $54ed: $89
	sbc  c                                           ; $54ee: $99
	xor  c                                           ; $54ef: $a9
	sbc  c                                           ; $54f0: $99
	sbc  c                                           ; $54f1: $99
	sbc  b                                           ; $54f2: $98
	ld   [hl], a                                     ; $54f3: $77
	ld   [hl], a                                     ; $54f4: $77
	ld   a, b                                        ; $54f5: $78
	ld   a, c                                        ; $54f6: $79
	adc  c                                           ; $54f7: $89
	sbc  c                                           ; $54f8: $99
	adc  b                                           ; $54f9: $88
	adc  b                                           ; $54fa: $88
	ld   [hl], a                                     ; $54fb: $77
	ld   [hl], a                                     ; $54fc: $77
	ld   a, b                                        ; $54fd: $78
	adc  b                                           ; $54fe: $88
	sbc  b                                           ; $54ff: $98
	sbc  c                                           ; $5500: $99
	sbc  c                                           ; $5501: $99
	sbc  b                                           ; $5502: $98
	add  a                                           ; $5503: $87
	ld   [hl], a                                     ; $5504: $77
	ld   [hl], a                                     ; $5505: $77
	ld   [hl], a                                     ; $5506: $77
	adc  b                                           ; $5507: $88
	adc  c                                           ; $5508: $89
	adc  b                                           ; $5509: $88
	sbc  c                                           ; $550a: $99
	sbc  b                                           ; $550b: $98
	ld   [hl], a                                     ; $550c: $77
	ld   [hl], a                                     ; $550d: $77
	ld   [hl], a                                     ; $550e: $77
	ld   [hl], a                                     ; $550f: $77
	adc  b                                           ; $5510: $88
	adc  b                                           ; $5511: $88
	sbc  c                                           ; $5512: $99
	adc  b                                           ; $5513: $88
	adc  b                                           ; $5514: $88
	adc  b                                           ; $5515: $88
	add  a                                           ; $5516: $87
	add  a                                           ; $5517: $87
	adc  c                                           ; $5518: $89
	adc  b                                           ; $5519: $88
	adc  b                                           ; $551a: $88
	adc  b                                           ; $551b: $88
	add  a                                           ; $551c: $87
	ld   a, b                                        ; $551d: $78
	add  a                                           ; $551e: $87
	adc  b                                           ; $551f: $88
	sbc  b                                           ; $5520: $98
	adc  c                                           ; $5521: $89
	sbc  c                                           ; $5522: $99
	adc  c                                           ; $5523: $89
	add  a                                           ; $5524: $87
	ld   [hl], a                                     ; $5525: $77
	ld   [hl], a                                     ; $5526: $77
	ld   [hl], a                                     ; $5527: $77
	adc  b                                           ; $5528: $88
	sbc  b                                           ; $5529: $98
	sbc  c                                           ; $552a: $99
	sbc  c                                           ; $552b: $99
	sbc  b                                           ; $552c: $98
	ld   [hl], a                                     ; $552d: $77
	add  a                                           ; $552e: $87
	ld   [hl], a                                     ; $552f: $77
	ld   a, b                                        ; $5530: $78
	sbc  b                                           ; $5531: $98
	sbc  b                                           ; $5532: $98
	sbc  c                                           ; $5533: $99
	adc  c                                           ; $5534: $89
	adc  b                                           ; $5535: $88
	add  a                                           ; $5536: $87
	ld   [hl], a                                     ; $5537: $77
	ld   a, b                                        ; $5538: $78
	adc  b                                           ; $5539: $88
	sbc  c                                           ; $553a: $99
	sbc  b                                           ; $553b: $98
	sbc  c                                           ; $553c: $99
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	ld   [hl], a                                     ; $553f: $77
	ld   [hl], a                                     ; $5540: $77
	adc  b                                           ; $5541: $88
	adc  c                                           ; $5542: $89
	sbc  b                                           ; $5543: $98
	adc  c                                           ; $5544: $89
	sbc  b                                           ; $5545: $98
	adc  b                                           ; $5546: $88
	add  a                                           ; $5547: $87
	ld   [hl], a                                     ; $5548: $77
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	sbc  b                                           ; $554b: $98
	adc  c                                           ; $554c: $89
	sbc  c                                           ; $554d: $99
	adc  b                                           ; $554e: $88
	add  a                                           ; $554f: $87
	ld   [hl], a                                     ; $5550: $77
	ld   [hl], a                                     ; $5551: $77
	ld   a, b                                        ; $5552: $78
	sbc  c                                           ; $5553: $99
	sbc  b                                           ; $5554: $98
	sbc  b                                           ; $5555: $98
	sbc  b                                           ; $5556: $98
	adc  b                                           ; $5557: $88
	add  a                                           ; $5558: $87
	ld   [hl], a                                     ; $5559: $77
	ld   [hl], a                                     ; $555a: $77
	adc  b                                           ; $555b: $88
	adc  c                                           ; $555c: $89
	sbc  c                                           ; $555d: $99
	adc  c                                           ; $555e: $89
	sbc  b                                           ; $555f: $98
	adc  b                                           ; $5560: $88
	ld   [hl], a                                     ; $5561: $77
	ld   [hl], a                                     ; $5562: $77
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	sbc  c                                           ; $5565: $99
	sbc  c                                           ; $5566: $99
	sbc  c                                           ; $5567: $99
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	ld   [hl], a                                     ; $556a: $77
	ld   [hl], a                                     ; $556b: $77
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	sbc  c                                           ; $556e: $99
	sbc  c                                           ; $556f: $99
	sbc  c                                           ; $5570: $99
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	ld   a, b                                        ; $5573: $78
	ld   [hl], a                                     ; $5574: $77
	adc  b                                           ; $5575: $88
	adc  c                                           ; $5576: $89
	adc  b                                           ; $5577: $88
	sbc  c                                           ; $5578: $99
	sbc  b                                           ; $5579: $98
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	add  a                                           ; $557c: $87
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	adc  c                                           ; $5580: $89
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
	sbc  b                                           ; $5590: $98
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	ld   a, b                                        ; $5596: $78
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
	sbc  [hl]                                        ; $5676: $9e
	reti                                             ; $5677: $d9


	ld   h, l                                        ; $5678: $65
	ld   d, a                                        ; $5679: $57
	sub  a                                           ; $567a: $97
	ld   h, a                                        ; $567b: $67
	ld   [hl], a                                     ; $567c: $77
	ld   [hl], a                                     ; $567d: $77
	ld   h, a                                        ; $567e: $67
	sbc  d                                           ; $567f: $9a
	xor  c                                           ; $5680: $a9
	halt                                             ; $5681: $76
	ld   a, b                                        ; $5682: $78
	sbc  d                                           ; $5683: $9a
	sbc  b                                           ; $5684: $98
	ld   h, l                                        ; $5685: $65
	ld   d, [hl]                                     ; $5686: $56
	ld   a, c                                        ; $5687: $79
	sbc  c                                           ; $5688: $99
	sub  a                                           ; $5689: $97
	ld   h, [hl]                                     ; $568a: $66
	ld   l, c                                        ; $568b: $69
	db   $dd                                         ; $568c: $dd
	xor  b                                           ; $568d: $a8
	ld   d, [hl]                                     ; $568e: $56
	cp   [hl]                                        ; $568f: $be
	rst  ToBoot                                         ; $5690: $c7
	ld   hl, $ac37                                   ; $5691: $21 $37 $ac
	cp   e                                           ; $5694: $bb
	add  l                                           ; $5695: $85
	inc  de                                          ; $5696: $13
	ld   l, d                                        ; $5697: $6a
	rst  $38                                         ; $5698: $ff
	and  h                                           ; $5699: $a4
	ld   de, $ce18                                   ; $569a: $11 $18 $ce
	rst  $10                                         ; $569d: $d7
	inc  [hl]                                        ; $569e: $34
	ld   a, h                                        ; $569f: $7c
	rst  $38                                         ; $56a0: $ff
	cp   b                                           ; $56a1: $b8
	ld   b, h                                        ; $56a2: $44
	ld   l, b                                        ; $56a3: $68
	xor  d                                           ; $56a4: $aa
	ld   [hl], l                                     ; $56a5: $75
	ld   b, h                                        ; $56a6: $44
	ld   e, b                                        ; $56a7: $58
	xor  d                                           ; $56a8: $aa
	sbc  c                                           ; $56a9: $99
	ld   a, b                                        ; $56aa: $78
	xor  d                                           ; $56ab: $aa
	xor  d                                           ; $56ac: $aa
	ld   [hl], l                                     ; $56ad: $75
	ld   b, l                                        ; $56ae: $45
	ld   l, b                                        ; $56af: $68
	sbc  b                                           ; $56b0: $98
	ld   h, [hl]                                     ; $56b1: $66
	ld   h, a                                        ; $56b2: $67
	sbc  e                                           ; $56b3: $9b
	call z, $97ba                                    ; $56b4: $cc $ba $97
	ld   h, [hl]                                     ; $56b7: $66
	ld   [hl], a                                     ; $56b8: $77
	ld   h, l                                        ; $56b9: $65
	ld   b, h                                        ; $56ba: $44
	ld   l, d                                        ; $56bb: $6a
	cp   e                                           ; $56bc: $bb
	cp   d                                           ; $56bd: $ba
	halt                                             ; $56be: $76
	ld   [hl], a                                     ; $56bf: $77
	adc  b                                           ; $56c0: $88
	ld   h, l                                        ; $56c1: $65
	ld   b, l                                        ; $56c2: $45
	ld   a, c                                        ; $56c3: $79
	cp   l                                           ; $56c4: $bd
	call c, $87a9                                    ; $56c5: $dc $a9 $87
	ld   a, b                                        ; $56c8: $78
	adc  c                                           ; $56c9: $89
	adc  b                                           ; $56ca: $88
	sub  a                                           ; $56cb: $97
	ld   d, l                                        ; $56cc: $55
	ld   d, a                                        ; $56cd: $57
	xor  e                                           ; $56ce: $ab
	call z, Call_0f3_53a7                            ; $56cf: $cc $a7 $53
	ld   b, l                                        ; $56d2: $45
	ld   a, b                                        ; $56d3: $78
	ld   [hl], a                                     ; $56d4: $77
	ld   d, l                                        ; $56d5: $55
	ld   l, b                                        ; $56d6: $68
	xor  l                                           ; $56d7: $ad
	db   $dd                                         ; $56d8: $dd
	jp   c, Jump_0f3_4485                            ; $56d9: $da $85 $44

	ld   b, l                                        ; $56dc: $45
	ld   h, l                                        ; $56dd: $65
	ld   d, l                                        ; $56de: $55
	ld   h, a                                        ; $56df: $67
	xor  e                                           ; $56e0: $ab
	xor  $ed                                         ; $56e1: $ee $ed
	cp   c                                           ; $56e3: $b9
	adc  c                                           ; $56e4: $89
	halt                                             ; $56e5: $76
	ld   d, h                                        ; $56e6: $54
	ld   b, l                                        ; $56e7: $45
	ld   h, a                                        ; $56e8: $67
	ld   [hl], a                                     ; $56e9: $77
	adc  c                                           ; $56ea: $89
	xor  h                                           ; $56eb: $ac
	rst  $28                                         ; $56ec: $ef
	cp   $a5                                         ; $56ed: $fe $a5
	ld   de, $3611                                   ; $56ef: $11 $11 $36
	halt                                             ; $56f2: $76
	ld   h, l                                        ; $56f3: $65
	ld   a, d                                        ; $56f4: $7a
	rst  $28                                         ; $56f5: $ef
	rst  $38                                         ; $56f6: $ff
	ld   a, [$1151]                                  ; $56f7: $fa $51 $11
	ld   h, $99                                      ; $56fa: $26 $99
	ld   h, h                                        ; $56fc: $64
	ld   b, [hl]                                     ; $56fd: $46
	xor  [hl]                                        ; $56fe: $ae
	rst  $38                                         ; $56ff: $ff
	cp   $cb                                         ; $5700: $fe $cb
	and  a                                           ; $5702: $a7
	ld   b, c                                        ; $5703: $41
	ld   de, $6624                                   ; $5704: $11 $24 $66
	ld   h, a                                        ; $5707: $67
	sbc  e                                           ; $5708: $9b
	rst  JumpTable                                         ; $5709: $df
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	rst  $10                                         ; $570c: $d7
	ld   de, $1411                                   ; $570d: $11 $11 $14
	ld   a, c                                        ; $5710: $79
	add  a                                           ; $5711: $87
	adc  e                                           ; $5712: $8b
	rst  $28                                         ; $5713: $ef
	rst  $38                                         ; $5714: $ff
	rst  $38                                         ; $5715: $ff
	sub  d                                           ; $5716: $92
	ld   de, $2711                                   ; $5717: $11 $11 $27
	adc  b                                           ; $571a: $88
	ld   [hl], a                                     ; $571b: $77
	sbc  [hl]                                        ; $571c: $9e
	rst  $38                                         ; $571d: $ff
	rst  $38                                         ; $571e: $ff
	db   $fc                                         ; $571f: $fc
	ld   [hl], c                                     ; $5720: $71
	ld   de, $1511                                   ; $5721: $11 $11 $15
	adc  d                                           ; $5724: $8a
	xor  h                                           ; $5725: $ac
	rst  $28                                         ; $5726: $ef
	rst  $38                                         ; $5727: $ff
	rst  $38                                         ; $5728: $ff
	ei                                               ; $5729: $fb
	ld   sp, $1111                                   ; $572a: $31 $11 $11
	ld   c, e                                        ; $572d: $4b
	adc  $ff                                         ; $572e: $ce $ff
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	rst  $38                                         ; $5732: $ff
	or   c                                           ; $5733: $b1
	ld   de, $1611                                   ; $5734: $11 $11 $16
	rst  $28                                         ; $5737: $ef
	rst  $38                                         ; $5738: $ff
	rst  $38                                         ; $5739: $ff
	rst  $38                                         ; $573a: $ff
	rst  $38                                         ; $573b: $ff
	or   $11                                         ; $573c: $f6 $11
	ld   de, $df12                                   ; $573e: $11 $12 $df
	rst  $38                                         ; $5741: $ff
	rst  $38                                         ; $5742: $ff
	rst  $38                                         ; $5743: $ff
	rst  $38                                         ; $5744: $ff
	ld   sp, hl                                      ; $5745: $f9
	ld   de, $1111                                   ; $5746: $11 $11 $11
	rst  JumpTable                                         ; $5749: $df
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	rst  $38                                         ; $574d: $ff
	db   $f4                                         ; $574e: $f4
	ld   de, $1611                                   ; $574f: $11 $11 $16
	rst  $38                                         ; $5752: $ff
	rst  $38                                         ; $5753: $ff
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	cp   $51                                         ; $5756: $fe $51
	ld   de, $4f11                                   ; $5758: $11 $11 $4f
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	rst  $38                                         ; $575d: $ff
	db   $db                                         ; $575e: $db
	ld   [hl], c                                     ; $575f: $71
	ld   de, $1a11                                   ; $5760: $11 $11 $1a
	rst  $38                                         ; $5763: $ff
	rst  $38                                         ; $5764: $ff
	rst  $38                                         ; $5765: $ff
	ld   hl, sp+$21                                  ; $5766: $f8 $21
	ld   de, $1a11                                   ; $5768: $11 $11 $1a
	rst  $38                                         ; $576b: $ff
	rst  $38                                         ; $576c: $ff
	rst  $38                                         ; $576d: $ff
	rst  $20                                         ; $576e: $e7
	ld   de, $1111                                   ; $576f: $11 $11 $11
	inc  e                                           ; $5772: $1c
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	rst  $38                                         ; $5775: $ff
	push bc                                          ; $5776: $c5
	ld   de, $1111                                   ; $5777: $11 $11 $11
	ld   c, a                                        ; $577a: $4f
	rst  $38                                         ; $577b: $ff
	rst  $38                                         ; $577c: $ff
	rst  $38                                         ; $577d: $ff
	sub  d                                           ; $577e: $92
	ld   de, $1111                                   ; $577f: $11 $11 $11
	cp   a                                           ; $5782: $bf
	rst  $38                                         ; $5783: $ff
	rst  $38                                         ; $5784: $ff
	ei                                               ; $5785: $fb
	ld   b, c                                        ; $5786: $41
	ld   de, $1511                                   ; $5787: $11 $11 $15
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	rst  $38                                         ; $578c: $ff
	add  $11                                         ; $578d: $c6 $11
	ld   de, $1d11                                   ; $578f: $11 $11 $1d
	rst  $38                                         ; $5792: $ff
	rst  $38                                         ; $5793: $ff
	cp   $82                                         ; $5794: $fe $82
	ld   de, $1111                                   ; $5796: $11 $11 $11
	adc  a                                           ; $5799: $8f
	rst  $38                                         ; $579a: $ff
	rst  $38                                         ; $579b: $ff
	ld   sp, hl                                      ; $579c: $f9
	ld   b, c                                        ; $579d: $41
	ld   de, $1511                                   ; $579e: $11 $11 $15
	rst  $38                                         ; $57a1: $ff
	rst  $38                                         ; $57a2: $ff
	rst  $38                                         ; $57a3: $ff
	sub  h                                           ; $57a4: $94
	ld   de, $1111                                   ; $57a5: $11 $11 $11
	dec  e                                           ; $57a8: $1d
	rst  $38                                         ; $57a9: $ff
	rst  $38                                         ; $57aa: $ff
	ld   a, [$1131]                                  ; $57ab: $fa $31 $11
	ld   de, $9f11                                   ; $57ae: $11 $11 $9f
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	db   $d3                                         ; $57b3: $d3
	ld   de, $1111                                   ; $57b4: $11 $11 $11
	inc  d                                           ; $57b7: $14
	rst  $38                                         ; $57b8: $ff
	rst  $38                                         ; $57b9: $ff
	rst  $38                                         ; $57ba: $ff
	ld   sp, $1111                                   ; $57bb: $31 $11 $11
	ld   de, $ff19                                   ; $57be: $11 $19 $ff
	rst  $38                                         ; $57c1: $ff
	ld   hl, sp+$11                                  ; $57c2: $f8 $11
	ld   [de], a                                     ; $57c4: $12
	ld   de, $2f11                                   ; $57c5: $11 $11 $2f
	rst  $38                                         ; $57c8: $ff
	rst  $38                                         ; $57c9: $ff
	pop  af                                          ; $57ca: $f1
	ld   de, $1152                                   ; $57cb: $11 $52 $11
	ld   de, $ff5f                                   ; $57ce: $11 $5f $ff
	rst  $38                                         ; $57d1: $ff
	sub  c                                           ; $57d2: $91
	ld   de, $1193                                   ; $57d3: $11 $93 $11
	ld   de, $ff6f                                   ; $57d6: $11 $6f $ff
	rst  $38                                         ; $57d9: $ff
	ld   sp, $e614                                   ; $57da: $31 $14 $e6
	ld   de, $6f11                                   ; $57dd: $11 $11 $6f
	rst  $38                                         ; $57e0: $ff
	rst  $38                                         ; $57e1: $ff
	ld   de, $fb16                                   ; $57e2: $11 $16 $fb
	ld   de, $4f11                                   ; $57e5: $11 $11 $4f
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	ld   de, $ff16                                   ; $57ea: $11 $16 $ff
	ld   de, $1f11                                   ; $57ed: $11 $11 $1f
	rst  $38                                         ; $57f0: $ff
	rst  $38                                         ; $57f1: $ff
	ld   de, $ff15                                   ; $57f2: $11 $15 $ff
	ld   hl, $1f11                                   ; $57f5: $21 $11 $1f
	rst  $38                                         ; $57f8: $ff
	rst  $38                                         ; $57f9: $ff
	ld   de, $ff15                                   ; $57fa: $11 $15 $ff
	ld   h, c                                        ; $57fd: $61
	ld   de, $ff1f                                   ; $57fe: $11 $1f $ff
	rst  $38                                         ; $5801: $ff
	ld   de, rAUD1HIGH                                   ; $5802: $11 $14 $ff
	pop  bc                                          ; $5805: $c1
	ld   de, $ff1f                                   ; $5806: $11 $1f $ff
	rst  $38                                         ; $5809: $ff
	ld   de, rAUD1ENV                                   ; $580a: $11 $12 $ff
	pop  af                                          ; $580d: $f1
	ld   de, $ff1b                                   ; $580e: $11 $1b $ff
	rst  $38                                         ; $5811: $ff
	ld   de, rAUD1LEN                                   ; $5812: $11 $11 $ff
	pop  af                                          ; $5815: $f1
	ld   de, rAUD1ENV                                   ; $5816: $11 $12 $ff
	rst  $38                                         ; $5819: $ff
	ld   hl, rAUD1LEN                                   ; $581a: $21 $11 $ff
	ld   sp, hl                                      ; $581d: $f9
	ld   de, rAUD1LEN                                   ; $581e: $11 $11 $ff
	rst  $38                                         ; $5821: $ff
	ld   [hl], c                                     ; $5822: $71
	ld   de, $ffdf                                   ; $5823: $11 $df $ff
	ld   de, rAUD1LEN                                   ; $5826: $11 $11 $ff
	rst  $38                                         ; $5829: $ff
	pop  af                                          ; $582a: $f1
	ld   de, $ff8f                                   ; $582b: $11 $8f $ff
	ld   hl, $1f11                                   ; $582e: $21 $11 $1f
	rst  $38                                         ; $5831: $ff
	pop  af                                          ; $5832: $f1
	ld   de, $ff1f                                   ; $5833: $11 $1f $ff
	pop  hl                                          ; $5836: $e1
	ld   de, $ff1f                                   ; $5837: $11 $1f $ff
	ld   a, [$1d11]                                  ; $583a: $fa $11 $1d
	rst  $38                                         ; $583d: $ff
	pop  af                                          ; $583e: $f1
	ld   de, $ff15                                   ; $583f: $11 $15 $ff
	rst  $38                                         ; $5842: $ff
	ld   de, $ff16                                   ; $5843: $11 $16 $ff
	ld   sp, hl                                      ; $5846: $f9
	ld   de, rAUD1LEN                                   ; $5847: $11 $11 $ff
	rst  $38                                         ; $584a: $ff
	ld   [hl], c                                     ; $584b: $71
	ld   de, $ffff                                   ; $584c: $11 $ff $ff
	ld   de, $9f11                                   ; $584f: $11 $11 $9f
	rst  $38                                         ; $5852: $ff
	pop  af                                          ; $5853: $f1
	ld   de, $ff8f                                   ; $5854: $11 $8f $ff
	ld   h, c                                        ; $5857: $61
	ld   de, $ff1f                                   ; $5858: $11 $1f $ff
	db   $f4                                         ; $585b: $f4
	ld   de, $ff2f                                   ; $585c: $11 $2f $ff
	pop  af                                          ; $585f: $f1
	ld   de, $ff1e                                   ; $5860: $11 $1e $ff
	db   $fc                                         ; $5863: $fc
	ld   de, $ff1b                                   ; $5864: $11 $1b $ff
	ldh  a, [c]                                      ; $5867: $f2
	ld   de, rAUD1ENV                                   ; $5868: $11 $12 $ff
	rst  $38                                         ; $586b: $ff
	ld   de, $ff16                                   ; $586c: $11 $16 $ff
	ei                                               ; $586f: $fb
	ld   de, rAUD1LEN                                   ; $5870: $11 $11 $ff
	rst  $38                                         ; $5873: $ff
	add  c                                           ; $5874: $81
	ld   de, $ffef                                   ; $5875: $11 $ef $ff
	ld   de, $5f11                                   ; $5878: $11 $11 $5f
	rst  $38                                         ; $587b: $ff
	pop  af                                          ; $587c: $f1
	ld   de, $ff9f                                   ; $587d: $11 $9f $ff
	add  c                                           ; $5880: $81
	ld   de, $ff1f                                   ; $5881: $11 $1f $ff
	push af                                          ; $5884: $f5
	ld   de, $ff4f                                   ; $5885: $11 $4f $ff
	pop  hl                                          ; $5888: $e1
	ld   de, $ff1b                                   ; $5889: $11 $1b $ff
	db   $fc                                         ; $588c: $fc
	ld   de, $ff1c                                   ; $588d: $11 $1c $ff
	push af                                          ; $5890: $f5
	ld   de, rAUD1LEN                                   ; $5891: $11 $11 $ff
	rst  $38                                         ; $5894: $ff
	ld   hl, $ff17                                   ; $5895: $21 $17 $ff
	ld   a, [$1111]                                  ; $5898: $fa $11 $11
	rst  $38                                         ; $589b: $ff
	rst  $38                                         ; $589c: $ff
	ld   [hl], c                                     ; $589d: $71
	inc  de                                          ; $589e: $13
	rst  $38                                         ; $589f: $ff
	rst  $38                                         ; $58a0: $ff
	ld   de, $7f11                                   ; $58a1: $11 $11 $7f
	rst  $38                                         ; $58a4: $ff
	pop  hl                                          ; $58a5: $e1
	ld   de, $ffbf                                   ; $58a6: $11 $bf $ff
	ld   h, c                                        ; $58a9: $61
	ld   de, $ff1f                                   ; $58aa: $11 $1f $ff
	di                                               ; $58ad: $f3
	ld   de, $ff7f                                   ; $58ae: $11 $7f $ff
	or   c                                           ; $58b1: $b1
	ld   de, $ff1f                                   ; $58b2: $11 $1f $ff
	ld   hl, sp+$11                                  ; $58b5: $f8 $11
	ld   c, [hl]                                     ; $58b7: $4e
	rst  $38                                         ; $58b8: $ff
	pop  af                                          ; $58b9: $f1
	ld   de, $ff16                                   ; $58ba: $11 $16 $ff
	rst  $38                                         ; $58bd: $ff
	ld   de, $ff1b                                   ; $58be: $11 $1b $ff
	or   $11                                         ; $58c1: $f6 $11
	ld   de, $ffff                                   ; $58c3: $11 $ff $ff
	ld   hl, $ff19                                   ; $58c6: $21 $19 $ff
	ei                                               ; $58c9: $fb
	ld   de, rAUD1LEN                                   ; $58ca: $11 $11 $ff
	rst  $38                                         ; $58cd: $ff
	ld   h, c                                        ; $58ce: $61
	ld   d, $ff                                      ; $58cf: $16 $ff
	cp   $11                                         ; $58d1: $fe $11
	ld   de, $ffcf                                   ; $58d3: $11 $cf $ff
	sub  c                                           ; $58d6: $91
	inc  d                                           ; $58d7: $14
	rst  $38                                         ; $58d8: $ff
	cp   $11                                         ; $58d9: $fe $11
	ld   de, $ff5f                                   ; $58db: $11 $5f $ff
	pop  hl                                          ; $58de: $e1
	ld   [de], a                                     ; $58df: $12
	rst  $28                                         ; $58e0: $ef
	rst  $38                                         ; $58e1: $ff
	ld   d, c                                        ; $58e2: $51
	ld   de, $ff1f                                   ; $58e3: $11 $1f $ff
	pop  af                                          ; $58e6: $f1
	ld   de, $ffbf                                   ; $58e7: $11 $bf $ff
	add  c                                           ; $58ea: $81
	ld   de, $ff1f                                   ; $58eb: $11 $1f $ff
	di                                               ; $58ee: $f3
	ld   de, $ff9f                                   ; $58ef: $11 $9f $ff
	and  c                                           ; $58f2: $a1
	ld   de, $ff1f                                   ; $58f3: $11 $1f $ff
	push af                                          ; $58f6: $f5
	ld   de, $ff8f                                   ; $58f7: $11 $8f $ff
	or   c                                           ; $58fa: $b1
	ld   de, $ff1d                                   ; $58fb: $11 $1d $ff
	rst  $30                                         ; $58fe: $f7
	ld   de, $ff7f                                   ; $58ff: $11 $7f $ff
	pop  de                                          ; $5902: $d1
	ld   de, $ff19                                   ; $5903: $11 $19 $ff
	ld   a, [$6f11]                                  ; $5906: $fa $11 $6f
	rst  $38                                         ; $5909: $ff
	pop  de                                          ; $590a: $d1
	ld   de, $ff15                                   ; $590b: $11 $15 $ff
	db   $fd                                         ; $590e: $fd
	ld   de, $ff5f                                   ; $590f: $11 $5f $ff
	jp   nc, $1411                                   ; $5912: $d2 $11 $14

	rst  $38                                         ; $5915: $ff
	db   $fd                                         ; $5916: $fd
	ld   de, $ff4f                                   ; $5917: $11 $4f $ff
	db   $e3                                         ; $591a: $e3
	ld   de, rAUD1LEN                                   ; $591b: $11 $11 $ff
	rst  $38                                         ; $591e: $ff
	ld   de, $ff4f                                   ; $591f: $11 $4f $ff
	db   $e4                                         ; $5922: $e4
	ld   de, rAUD1LEN                                   ; $5923: $11 $11 $ff
	rst  $38                                         ; $5926: $ff
	ld   de, $ff3e                                   ; $5927: $11 $3e $ff
	push af                                          ; $592a: $f5
	ld   de, rAUD1LEN                                   ; $592b: $11 $11 $ff
	rst  $38                                         ; $592e: $ff
	ld   de, $ff3f                                   ; $592f: $11 $3f $ff
	call nc, $1111                                   ; $5932: $d4 $11 $11
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	ld   de, $ff4f                                   ; $5937: $11 $4f $ff
	push hl                                          ; $593a: $e5
	ld   de, rAUD1LEN                                   ; $593b: $11 $11 $ff
	rst  $38                                         ; $593e: $ff
	ld   de, $ff3f                                   ; $593f: $11 $3f $ff
	db   $e4                                         ; $5942: $e4
	ld   de, rAUD1LEN                                   ; $5943: $11 $11 $ff
	rst  $38                                         ; $5946: $ff
	ld   de, $ff4f                                   ; $5947: $11 $4f $ff
	db   $e3                                         ; $594a: $e3
	ld   de, rAUD1LEN                                   ; $594b: $11 $11 $ff
	cp   $11                                         ; $594e: $fe $11
	ld   e, a                                        ; $5950: $5f
	rst  $38                                         ; $5951: $ff
	pop  bc                                          ; $5952: $c1
	ld   de, rAUD1HIGH                                   ; $5953: $11 $14 $ff
	db   $fc                                         ; $5956: $fc
	ld   de, $ff6f                                   ; $5957: $11 $6f $ff
	pop  bc                                          ; $595a: $c1
	ld   de, $ff16                                   ; $595b: $11 $16 $ff
	ld   a, [$8f11]                                  ; $595e: $fa $11 $8f
	rst  $38                                         ; $5961: $ff
	or   c                                           ; $5962: $b1
	ld   de, $ff1b                                   ; $5963: $11 $1b $ff
	rst  $30                                         ; $5966: $f7
	ld   de, $feaf                                   ; $5967: $11 $af $fe
	or   c                                           ; $596a: $b1
	ld   de, $ff1f                                   ; $596b: $11 $1f $ff
	ldh  a, [c]                                      ; $596e: $f2
	inc  de                                          ; $596f: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5970: $cf
	db   $fd                                         ; $5971: $fd
	sub  c                                           ; $5972: $91
	ld   de, $ff1f                                   ; $5973: $11 $1f $ff
	pop  af                                          ; $5976: $f1
	dec  d                                           ; $5977: $15
	rst  $28                                         ; $5978: $ef
	ei                                               ; $5979: $fb
	ld   h, c                                        ; $597a: $61
	ld   de, $ff1f                                   ; $597b: $11 $1f $ff
	pop  af                                          ; $597e: $f1
	jr   @+$01                                       ; $597f: $18 $ff

	ld   a, [$1151]                                  ; $5981: $fa $51 $11
	rra                                              ; $5984: $1f
	rst  $38                                         ; $5985: $ff
	pop  hl                                          ; $5986: $e1
	ld   a, [bc]                                     ; $5987: $0a
	rst  $38                                         ; $5988: $ff
	ret  c                                           ; $5989: $d8

	ld   hl, $4f11                                   ; $598a: $21 $11 $4f
	rst  $38                                         ; $598d: $ff
	and  c                                           ; $598e: $a1
	inc  l                                           ; $598f: $2c
	rst  $38                                         ; $5990: $ff
	ret  z                                           ; $5991: $c8

	ld   de, $9f11                                   ; $5992: $11 $11 $9f
	rst  $38                                         ; $5995: $ff
	ld   [hl], c                                     ; $5996: $71
	ld   c, [hl]                                     ; $5997: $4e
	rst  $38                                         ; $5998: $ff
	and  [hl]                                        ; $5999: $a6
	ld   de, $ef11                                   ; $599a: $11 $11 $ef
	rst  $38                                         ; $599d: $ff
	ld   sp, $ff8f                                   ; $599e: $31 $8f $ff
	add  l                                           ; $59a1: $85
	ld   de, rAUD1LEN                                   ; $59a2: $11 $11 $ff
	rst  $38                                         ; $59a5: $ff
	ld   bc, $ff9f                                   ; $59a6: $01 $9f $ff
	ld   h, e                                        ; $59a9: $63
	ld   de, rAUD1LEN                                   ; $59aa: $11 $11 $ff
	db   $fd                                         ; $59ad: $fd
	ld   de, $fccf                                   ; $59ae: $11 $cf $fc
	ld   h, c                                        ; $59b1: $61
	ld   de, rAUD1LOW                                   ; $59b2: $11 $13 $ff
	ld   a, [rAUD1HIGH]                                  ; $59b5: $fa $14 $ff
	ld   sp, hl                                      ; $59b8: $f9
	ld   b, c                                        ; $59b9: $41
	ld   de, $ff1a                                   ; $59ba: $11 $1a $ff
	push af                                          ; $59bd: $f5
	rla                                              ; $59be: $17
	rst  $38                                         ; $59bf: $ff
	rst  $30                                         ; $59c0: $f7
	ld   d, c                                        ; $59c1: $51
	ld   de, $ff1f                                   ; $59c2: $11 $1f $ff
	pop  af                                          ; $59c5: $f1
	ld   a, [de]                                     ; $59c6: $1a
	rst  $38                                         ; $59c7: $ff
	db   $f4                                         ; $59c8: $f4
	ld   hl, $1f11                                   ; $59c9: $21 $11 $1f
	rst  $38                                         ; $59cc: $ff
	pop  bc                                          ; $59cd: $c1
	rra                                              ; $59ce: $1f
	rst  $38                                         ; $59cf: $ff
	and  h                                           ; $59d0: $a4
	ld   hl, $1f11                                   ; $59d1: $21 $11 $1f
	rst  $38                                         ; $59d4: $ff
	and  c                                           ; $59d5: $a1
	ld   c, a                                        ; $59d6: $4f
	rst  $38                                         ; $59d7: $ff
	add  d                                           ; $59d8: $82
	ld   de, $8f11                                   ; $59d9: $11 $11 $8f
	rst  $38                                         ; $59dc: $ff
	ld   d, c                                        ; $59dd: $51
	sbc  a                                           ; $59de: $9f
	rst  $38                                         ; $59df: $ff
	ld   d, e                                        ; $59e0: $53
	ld   de, $ef11                                   ; $59e1: $11 $11 $ef
	rst  $38                                         ; $59e4: $ff
	ld   hl, $fecf                                   ; $59e5: $21 $cf $fe
	ld   b, e                                        ; $59e8: $43
	ld   de, rAUD1LEN                                   ; $59e9: $11 $11 $ff
	db   $fc                                         ; $59ec: $fc
	ld   de, $fbff                                   ; $59ed: $11 $ff $fb
	inc  sp                                          ; $59f0: $33
	ld   de, rAUD1LEN                                   ; $59f1: $11 $11 $ff
	ld   hl, sp+$13                                  ; $59f4: $f8 $13
	rst  $38                                         ; $59f6: $ff
	rst  $30                                         ; $59f7: $f7
	ld   sp, $1611                                   ; $59f8: $31 $11 $16
	rst  $38                                         ; $59fb: $ff
	or   $17                                         ; $59fc: $f6 $17
	rst  $38                                         ; $59fe: $ff
	push af                                          ; $59ff: $f5
	ld   de, $1c11                                   ; $5a00: $11 $11 $1c
	rst  $38                                         ; $5a03: $ff
	db   $e3                                         ; $5a04: $e3
	inc  e                                           ; $5a05: $1c
	rst  $38                                         ; $5a06: $ff
	or   e                                           ; $5a07: $b3
	ld   sp, $1f11                                   ; $5a08: $31 $11 $1f
	rst  $38                                         ; $5a0b: $ff
	and  c                                           ; $5a0c: $a1
	rra                                              ; $5a0d: $1f
	rst  $38                                         ; $5a0e: $ff
	add  c                                           ; $5a0f: $81
	ld   b, c                                        ; $5a10: $41
	ld   de, $ff1f                                   ; $5a11: $11 $1f $ff
	add  c                                           ; $5a14: $81
	ld   c, a                                        ; $5a15: $4f
	db   $fd                                         ; $5a16: $fd
	ld   d, c                                        ; $5a17: $51
	ld   b, c                                        ; $5a18: $41
	ld   de, $ff5f                                   ; $5a19: $11 $5f $ff
	ld   d, c                                        ; $5a1c: $51
	sbc  a                                           ; $5a1d: $9f
	ld   a, [$4122]                                  ; $5a1e: $fa $22 $41
	ld   de, $fd9f                                   ; $5a21: $11 $9f $fd
	ld   sp, $f8ef                                   ; $5a24: $31 $ef $f8
	inc  de                                          ; $5a27: $13
	ld   hl, $ef11                                   ; $5a28: $21 $11 $ef
	ld   sp, hl                                      ; $5a2b: $f9
	ld   hl, $e5ff                                   ; $5a2c: $21 $ff $e5
	dec  d                                           ; $5a2f: $15
	ld   de, rAUD1LEN                                   ; $5a30: $11 $11 $ff
	or   $13                                         ; $5a33: $f6 $13
	rst  $38                                         ; $5a35: $ff
	and  d                                           ; $5a36: $a2
	add  hl, de                                      ; $5a37: $19
	ld   de, rAUD1LEN                                   ; $5a38: $11 $11 $ff
	db   $f4                                         ; $5a3b: $f4
	rla                                              ; $5a3c: $17
	rst  $38                                         ; $5a3d: $ff
	ld   [hl], c                                     ; $5a3e: $71
	dec  de                                          ; $5a3f: $1b
	ld   de, rAUD1LEN                                   ; $5a40: $11 $11 $ff
	ldh  a, [c]                                      ; $5a43: $f2
	dec  de                                          ; $5a44: $1b
	rst  $38                                         ; $5a45: $ff
	ld   sp, $112c                                   ; $5a46: $31 $2c $11
	inc  d                                           ; $5a49: $14
	rst  $38                                         ; $5a4a: $ff
	pop  bc                                          ; $5a4b: $c1
	rra                                              ; $5a4c: $1f
	rst  $38                                         ; $5a4d: $ff
	ld   de, $115f                                   ; $5a4e: $11 $5f $11
	ld   d, $ff                                      ; $5a51: $16 $ff
	add  c                                           ; $5a53: $81
	rra                                              ; $5a54: $1f
	rst  $38                                         ; $5a55: $ff
	ld   de, $117f                                   ; $5a56: $11 $7f $11
	add  hl, de                                      ; $5a59: $19
	rst  $38                                         ; $5a5a: $ff
	ld   d, c                                        ; $5a5b: $51
	ccf                                              ; $5a5c: $3f
	db   $fc                                         ; $5a5d: $fc
	ld   de, $11bf                                   ; $5a5e: $11 $bf $11
	dec  e                                           ; $5a61: $1d
	rst  $38                                         ; $5a62: $ff
	ld   hl, $f96f                                   ; $5a63: $21 $6f $f9
	ld   de, $11ef                                   ; $5a66: $11 $ef $11
	rra                                              ; $5a69: $1f
	rst  $38                                         ; $5a6a: $ff
	ld   de, $f5af                                   ; $5a6b: $11 $af $f5
	ld   de, $11ff                                   ; $5a6e: $11 $ff $11
	rra                                              ; $5a71: $1f
	rst  $38                                         ; $5a72: $ff
	ld   de, $f2df                                   ; $5a73: $11 $df $f2
	ld   de, $11ff                                   ; $5a76: $11 $ff $11
	rra                                              ; $5a79: $1f
	rst  $38                                         ; $5a7a: $ff
	ld   de, $f1ff                                   ; $5a7b: $11 $ff $f1
	ld   [de], a                                     ; $5a7e: $12
	rst  $38                                         ; $5a7f: $ff
	ld   de, $ff1f                                   ; $5a80: $11 $1f $ff
	ld   de, $f1ff                                   ; $5a83: $11 $ff $f1
	inc  d                                           ; $5a86: $14
	rst  $38                                         ; $5a87: $ff
	ld   de, $ff1f                                   ; $5a88: $11 $1f $ff
	ld   de, $f1ff                                   ; $5a8b: $11 $ff $f1
	dec  d                                           ; $5a8e: $15
	rst  $38                                         ; $5a8f: $ff
	ld   de, $ff1f                                   ; $5a90: $11 $1f $ff
	ld   de, $f1ff                                   ; $5a93: $11 $ff $f1
	ld   d, $ff                                      ; $5a96: $16 $ff
	ld   de, $ff1f                                   ; $5a98: $11 $1f $ff
	ld   de, $f2ff                                   ; $5a9b: $11 $ff $f2
	dec  d                                           ; $5a9e: $15
	rst  $38                                         ; $5a9f: $ff
	ld   de, $ff1f                                   ; $5aa0: $11 $1f $ff
	ld   b, c                                        ; $5aa3: $41
	rst  $38                                         ; $5aa4: $ff
	or   $12                                         ; $5aa5: $f6 $12
	rst  $38                                         ; $5aa7: $ff
	ld   sp, $ff17                                   ; $5aa8: $31 $17 $ff
	or   c                                           ; $5aab: $b1
	rst  $38                                         ; $5aac: $ff
	ld   a, [rAUD1LEN]                                  ; $5aad: $fa $11 $ff
	add  c                                           ; $5ab0: $81
	ld   de, $f1ff                                   ; $5ab1: $11 $ff $f1
	adc  a                                           ; $5ab4: $8f
	db   $fc                                         ; $5ab5: $fc
	ld   hl, $b1ef                                   ; $5ab6: $21 $ef $b1
	ld   de, $f9ff                                   ; $5ab9: $11 $ff $f9
	ccf                                              ; $5abc: $3f
	cp   $71                                         ; $5abd: $fe $71
	ld   l, a                                        ; $5abf: $6f
	jp   nz, $3f11                                   ; $5ac0: $c2 $11 $3f

	cp   $4f                                         ; $5ac3: $fe $4f
	rst  $38                                         ; $5ac5: $ff
	and  h                                           ; $5ac6: $a4
	cpl                                              ; $5ac7: $2f
	or   $11                                         ; $5ac8: $f6 $11
	rra                                              ; $5aca: $1f
	rst  $38                                         ; $5acb: $ff
	adc  b                                           ; $5acc: $88
	rst  $38                                         ; $5acd: $ff
	ret  c                                           ; $5ace: $d8

	add  hl, hl                                      ; $5acf: $29
	ld   sp, hl                                      ; $5ad0: $f9
	ld   de, $ff17                                   ; $5ad1: $11 $17 $ff
	db   $e4                                         ; $5ad4: $e4
	rst  $38                                         ; $5ad5: $ff
	ei                                               ; $5ad6: $fb
	ld   d, e                                        ; $5ad7: $53
	db   $eb                                         ; $5ad8: $eb
	ld   h, c                                        ; $5ad9: $61
	ld   de, $f6ff                                   ; $5ada: $11 $ff $f6
	adc  a                                           ; $5add: $8f
	db   $fd                                         ; $5ade: $fd
	and  d                                           ; $5adf: $a2
	sbc  [hl]                                        ; $5ae0: $9e
	add  d                                           ; $5ae1: $82
	ld   de, $fc8f                                   ; $5ae2: $11 $8f $fc
	ccf                                              ; $5ae5: $3f
	rst  $38                                         ; $5ae6: $ff
	add  $3d                                         ; $5ae7: $c6 $3d
	and  l                                           ; $5ae9: $a5
	ld   de, $fe1f                                   ; $5aea: $11 $1f $fe
	ld   a, d                                        ; $5aed: $7a
	rst  $38                                         ; $5aee: $ff
	jp   c, $d639                                    ; $5aef: $da $39 $d6

	ld   sp, $fe15                                   ; $5af2: $31 $15 $fe
	or   l                                           ; $5af5: $b5
	rst  $38                                         ; $5af6: $ff
	db   $fd                                         ; $5af7: $fd
	add  h                                           ; $5af8: $84
	ret  z                                           ; $5af9: $c8

	ld   h, c                                        ; $5afa: $61
	ld   de, $d8fe                                   ; $5afb: $11 $fe $d8
	sbc  a                                           ; $5afe: $9f
	db   $fc                                         ; $5aff: $fc
	push hl                                          ; $5b00: $e5
	ld   a, e                                        ; $5b01: $7b
	ld   d, [hl]                                     ; $5b02: $56
	ld   de, $cc2f                                   ; $5b03: $11 $2f $cc
	ld   l, a                                        ; $5b06: $6f
	rst  $38                                         ; $5b07: $ff
	call z, $864b                                    ; $5b08: $cc $4b $86
	ld   hl, $ea1c                                   ; $5b0b: $21 $1c $ea
	xor  d                                           ; $5b0e: $aa
	rst  $38                                         ; $5b0f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b10: $cf
	sub  l                                           ; $5b11: $95
	or   [hl]                                        ; $5b12: $b6
	add  c                                           ; $5b13: $81
	ld   de, $a9fa                                   ; $5b14: $11 $fa $a9
	rst  $38                                         ; $5b17: $ff
	db   $fc                                         ; $5b18: $fc
	rst  $30                                         ; $5b19: $f7
	ld   a, c                                        ; $5b1a: $79
	ld   d, a                                        ; $5b1b: $57
	ld   de, $7c4f                                   ; $5b1c: $11 $4f $7c
	xor  a                                           ; $5b1f: $af
	cp   $ff                                         ; $5b20: $fe $ff
	ld   c, b                                        ; $5b22: $48
	adc  c                                           ; $5b23: $89
	ld   hl, $c71c                                   ; $5b24: $21 $1c $c7
	xor  [hl]                                        ; $5b27: $ae
	rst  $38                                         ; $5b28: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b29: $cf
	call nz, $8197                                   ; $5b2a: $c4 $97 $81
	ld   de, $8ce8                                   ; $5b2d: $11 $e8 $8c
	rst  $38                                         ; $5b30: $ff
	rst  $38                                         ; $5b31: $ff
	ld   hl, sp+$5b                                  ; $5b32: $f8 $5b
	ld   [hl], a                                     ; $5b34: $77
	ld   de, $491e                                   ; $5b35: $11 $1e $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b38: $cf
	rst  $38                                         ; $5b39: $ff
	rst  $38                                         ; $5b3a: $ff
	ld   e, b                                        ; $5b3b: $58
	sub  a                                           ; $5b3c: $97
	ld   sp, $a414                                   ; $5b3d: $31 $14 $a4
	adc  $ff                                         ; $5b40: $ce $ff
	rst  $38                                         ; $5b42: $ff
	push af                                          ; $5b43: $f5
	cp   b                                           ; $5b44: $b8
	ld   h, c                                        ; $5b45: $61
	ld   de, $4f86                                   ; $5b46: $11 $86 $4f
	rst  $38                                         ; $5b49: $ff
	rst  $38                                         ; $5b4a: $ff
	db   $fd                                         ; $5b4b: $fd
	ld   c, e                                        ; $5b4c: $4b
	add  l                                           ; $5b4d: $85
	ld   de, $4718                                   ; $5b4e: $11 $18 $47
	rst  $38                                         ; $5b51: $ff
	rst  $38                                         ; $5b52: $ff
	rst  $38                                         ; $5b53: $ff
	sub  a                                           ; $5b54: $97
	add  $41                                         ; $5b55: $c6 $41
	ld   de, $bf83                                   ; $5b57: $11 $83 $bf
	rst  $38                                         ; $5b5a: $ff
	rst  $38                                         ; $5b5b: $ff
	ld   hl, sp-$54                                  ; $5b5c: $f8 $ac
	ld   b, d                                        ; $5b5e: $42
	ld   de, $3c17                                   ; $5b5f: $11 $17 $3c
	rst  $28                                         ; $5b62: $ef
	rst  $38                                         ; $5b63: $ff
	rst  $38                                         ; $5b64: $ff
	adc  l                                           ; $5b65: $8d
	or   d                                           ; $5b66: $b2
	ld   de, $5311                                   ; $5b67: $11 $11 $53
	sbc  $ff                                         ; $5b6a: $de $ff
	rst  $38                                         ; $5b6c: $ff
	ld   sp, hl                                      ; $5b6d: $f9
	rst  $20                                         ; $5b6e: $e7
	ld   bc, $1411                                   ; $5b6f: $01 $11 $14
	ld   c, a                                        ; $5b72: $4f
	rst  JumpTable                                         ; $5b73: $df
	rst  $38                                         ; $5b74: $ff
	rst  $38                                         ; $5b75: $ff
	xor  [hl]                                        ; $5b76: $ae
	ld   d, c                                        ; $5b77: $51
	ld   de, $3711                                   ; $5b78: $11 $11 $37
	db   $fd                                         ; $5b7b: $fd
	rst  $38                                         ; $5b7c: $ff
	rst  $38                                         ; $5b7d: $ff
	ld   a, [$11d2]                                  ; $5b7e: $fa $d2 $11
	ld   de, $9f22                                   ; $5b81: $11 $22 $9f
	rst  JumpTable                                         ; $5b84: $df
	rst  $38                                         ; $5b85: $ff
	db   $fd                                         ; $5b86: $fd
	cp   e                                           ; $5b87: $bb
	ld   de, $1411                                   ; $5b88: $11 $11 $14
	ld   a, [hl+]                                    ; $5b8b: $2a
	rst  JumpTable                                         ; $5b8c: $df
	rst  $38                                         ; $5b8d: $ff
	rst  $38                                         ; $5b8e: $ff
	call $11a1                                       ; $5b8f: $cd $a1 $11
	ld   de, $cd42                                   ; $5b92: $11 $42 $cd
	rst  $38                                         ; $5b95: $ff
	rst  $38                                         ; $5b96: $ff
	ei                                               ; $5b97: $fb
	add  sp, $11                                     ; $5b98: $e8 $11
	ld   de, $3d14                                   ; $5b9a: $11 $14 $3d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b9d: $cf
	rst  $38                                         ; $5b9e: $ff
	rst  $38                                         ; $5b9f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ba0: $cf
	ld   h, c                                        ; $5ba1: $61
	ld   de, $3411                                   ; $5ba2: $11 $11 $34
	call c, $ffff                                    ; $5ba5: $dc $ff $ff
	db   $fd                                         ; $5ba8: $fd
	db   $e3                                         ; $5ba9: $e3
	ld   de, $1211                                   ; $5baa: $11 $11 $12
	ld   e, l                                        ; $5bad: $5d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bae: $cf
	rst  $38                                         ; $5baf: $ff
	rst  $38                                         ; $5bb0: $ff
	xor  $11                                         ; $5bb1: $ee $11
	ld   de, $1711                                   ; $5bb3: $11 $11 $17
	db   $ec                                         ; $5bb6: $ec
	rst  $38                                         ; $5bb7: $ff
	rst  $38                                         ; $5bb8: $ff
	cp   $d1                                         ; $5bb9: $fe $d1
	ld   de, $1211                                   ; $5bbb: $11 $11 $12
	ld   a, l                                        ; $5bbe: $7d
	rst  $28                                         ; $5bbf: $ef
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	db   $ec                                         ; $5bc2: $ec
	ld   de, $1111                                   ; $5bc3: $11 $11 $11
	jr   z, @-$1f                                    ; $5bc6: $28 $df

	rst  $38                                         ; $5bc8: $ff
	rst  $38                                         ; $5bc9: $ff
	cp   $a1                                         ; $5bca: $fe $a1
	ld   de, $1211                                   ; $5bcc: $11 $11 $12
	xor  l                                           ; $5bcf: $ad
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	add  sp, $11                                     ; $5bd3: $e8 $11
	ld   de, $5911                                   ; $5bd5: $11 $11 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bd8: $cf
	rst  $38                                         ; $5bd9: $ff
	rst  $38                                         ; $5bda: $ff
	cp   $91                                         ; $5bdb: $fe $91
	ld   de, $1711                                   ; $5bdd: $11 $11 $17
	sbc  e                                           ; $5be0: $9b
	rst  JumpTable                                         ; $5be1: $df
	rst  $38                                         ; $5be2: $ff
	rst  $38                                         ; $5be3: $ff
	ld   [$1111], a                                  ; $5be4: $ea $11 $11
	ld   de, $ab87                                   ; $5be7: $11 $87 $ab
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	cp   $c1                                         ; $5bec: $fe $c1
	inc  d                                           ; $5bee: $14
	ld   de, $9919                                   ; $5bef: $11 $19 $99
	sbc  a                                           ; $5bf2: $9f
	rst  $38                                         ; $5bf3: $ff
	rst  $38                                         ; $5bf4: $ff
	db   $fd                                         ; $5bf5: $fd
	ld   hl, $1161                                   ; $5bf6: $21 $61 $11
	adc  b                                           ; $5bf9: $88
	adc  b                                           ; $5bfa: $88
	rst  $38                                         ; $5bfb: $ff
	rst  $38                                         ; $5bfc: $ff
	rst  $38                                         ; $5bfd: $ff
	sub  $16                                         ; $5bfe: $d6 $16
	ld   de, $b911                                   ; $5c00: $11 $11 $b9
	ld   l, h                                        ; $5c03: $6c
	rst  $38                                         ; $5c04: $ff
	rst  $38                                         ; $5c05: $ff
	cp   $a1                                         ; $5c06: $fe $a1
	daa                                              ; $5c08: $27
	ld   de, $951c                                   ; $5c09: $11 $1c $95
	sbc  a                                           ; $5c0c: $9f
	rst  $38                                         ; $5c0d: $ff
	rst  $38                                         ; $5c0e: $ff
	ei                                               ; $5c0f: $fb
	ld   sp, $1191                                   ; $5c10: $31 $91 $11
	dec  e                                           ; $5c13: $1d
	ld   [hl], h                                     ; $5c14: $74
	rst  $28                                         ; $5c15: $ef
	rst  $38                                         ; $5c16: $ff
	rst  $38                                         ; $5c17: $ff
	ret  c                                           ; $5c18: $d8

	inc  de                                          ; $5c19: $13
	and  c                                           ; $5c1a: $a1
	ld   de, $489b                                   ; $5c1b: $11 $9b $48
	rst  $38                                         ; $5c1e: $ff
	cp   $ff                                         ; $5c1f: $fe $ff
	and  [hl]                                        ; $5c21: $a6
	rla                                              ; $5c22: $17
	ld   [hl], c                                     ; $5c23: $71
	ld   de, $5aba                                   ; $5c24: $11 $ba $5a
	rst  $38                                         ; $5c27: $ff
	rst  $38                                         ; $5c28: $ff
	rst  $38                                         ; $5c29: $ff
	sub  e                                           ; $5c2a: $93
	add  hl, de                                      ; $5c2b: $19
	ld   sp, $e611                                   ; $5c2c: $31 $11 $e6
	ld   l, l                                        ; $5c2f: $6d
	rst  $38                                         ; $5c30: $ff
	rst  $38                                         ; $5c31: $ff
	db   $fd                                         ; $5c32: $fd
	add  e                                           ; $5c33: $83
	ld   a, [de]                                     ; $5c34: $1a
	ld   hl, $d911                                   ; $5c35: $21 $11 $d9
	ld   l, [hl]                                     ; $5c38: $6e
	rst  $38                                         ; $5c39: $ff
	rst  $38                                         ; $5c3a: $ff
	db   $fc                                         ; $5c3b: $fc
	add  d                                           ; $5c3c: $82
	ld   a, [hl-]                                    ; $5c3d: $3a
	ld   sp, $f711                                   ; $5c3e: $31 $11 $f7
	ld   l, l                                        ; $5c41: $6d
	rst  $38                                         ; $5c42: $ff
	cp   $fd                                         ; $5c43: $fe $fd
	add  d                                           ; $5c45: $82
	dec  hl                                          ; $5c46: $2b
	ld   b, c                                        ; $5c47: $41
	ld   de, $6df9                                   ; $5c48: $11 $f9 $6d
	rst  $38                                         ; $5c4b: $ff
	cp   $fd                                         ; $5c4c: $fe $fd
	ld   [hl], d                                     ; $5c4e: $72
	dec  hl                                          ; $5c4f: $2b
	ld   h, c                                        ; $5c50: $61
	ld   de, $5bfa                                   ; $5c51: $11 $fa $5b
	rst  $38                                         ; $5c54: $ff
	db   $fc                                         ; $5c55: $fc
	cp   $83                                         ; $5c56: $fe $83
	ld   a, [de]                                     ; $5c58: $1a
	sub  c                                           ; $5c59: $91
	ld   de, $59fd                                   ; $5c5a: $11 $fd $59
	rst  $38                                         ; $5c5d: $ff
	ld   hl, sp-$01                                  ; $5c5e: $f8 $ff
	add  l                                           ; $5c60: $85
	add  hl, de                                      ; $5c61: $19
	pop  de                                          ; $5c62: $d1
	ld   de, $678f                                   ; $5c63: $11 $8f $67
	rst  $38                                         ; $5c66: $ff
	ld   a, [$a6ff]                                  ; $5c67: $fa $ff $a6
	dec  d                                           ; $5c6a: $15
	push hl                                          ; $5c6b: $e5
	ld   de, $961f                                   ; $5c6c: $11 $1f $96
	cp   a                                           ; $5c6f: $bf
	cp   $af                                         ; $5c70: $fe $af
	ret  z                                           ; $5c72: $c8

	ld   hl, $11dd                                   ; $5c73: $21 $dd $11
	ld   e, $f6                                      ; $5c76: $1e $f6
	sbc  a                                           ; $5c78: $9f
	rst  $38                                         ; $5c79: $ff
	ld   a, a                                        ; $5c7a: $7f
	ei                                               ; $5c7b: $fb
	ld   [hl], c                                     ; $5c7c: $71
	ld   a, a                                        ; $5c7d: $7f
	ld   h, c                                        ; $5c7e: $61
	ld   de, $6af9                                   ; $5c7f: $11 $f9 $6a
	rst  $38                                         ; $5c82: $ff
	ei                                               ; $5c83: $fb
	db   $fd                                         ; $5c84: $fd
	sub  d                                           ; $5c85: $92
	ld   e, $f1                                      ; $5c86: $1e $f1
	ld   de, $79bf                                   ; $5c88: $11 $bf $79
	rst  $28                                         ; $5c8b: $ef
	ld   sp, hl                                      ; $5c8c: $f9
	rst  $28                                         ; $5c8d: $ef
	xor  b                                           ; $5c8e: $a8
	dec  d                                           ; $5c8f: $15
	ld   a, [$1f11]                                  ; $5c90: $fa $11 $1f
	rst  $10                                         ; $5c93: $d7
	sbc  a                                           ; $5c94: $9f
	rst  $38                                         ; $5c95: $ff
	sbc  a                                           ; $5c96: $9f
	db   $eb                                         ; $5c97: $eb
	ld   h, c                                        ; $5c98: $61
	xor  a                                           ; $5c99: $af
	ld   d, c                                        ; $5c9a: $51
	ld   de, $9afb                                   ; $5c9b: $11 $fb $9a
	rst  $38                                         ; $5c9e: $ff
	ld   sp, hl                                      ; $5c9f: $f9
	ei                                               ; $5ca0: $fb
	or   e                                           ; $5ca1: $b3
	ld   e, $f2                                      ; $5ca2: $1e $f2
	ld   de, $ab5f                                   ; $5ca4: $11 $5f $ab
	cp   a                                           ; $5ca7: $bf
	cp   $ad                                         ; $5ca8: $fe $ad
	sbc  e                                           ; $5caa: $9b
	ld   de, $11ff                                   ; $5cab: $11 $ff $11
	dec  de                                          ; $5cae: $1b
	db   $fc                                         ; $5caf: $fc
	xor  h                                           ; $5cb0: $ac
	rst  $38                                         ; $5cb1: $ff
	xor  c                                           ; $5cb2: $a9
	jp   z, $3fa1                                    ; $5cb3: $ca $a1 $3f

	pop  de                                          ; $5cb6: $d1
	ld   de, $e9df                                   ; $5cb7: $11 $df $e9
	rst  $28                                         ; $5cba: $ef
	ld   sp, hl                                      ; $5cbb: $f9
	sbc  d                                           ; $5cbc: $9a
	xor  c                                           ; $5cbd: $a9
	dec  d                                           ; $5cbe: $15
	cp   $11                                         ; $5cbf: $fe $11
	rra                                              ; $5cc1: $1f
	rst  $38                                         ; $5cc2: $ff
	adc  [hl]                                        ; $5cc3: $8e
	rst  $38                                         ; $5cc4: $ff
	adc  c                                           ; $5cc5: $89
	ld   l, e                                        ; $5cc6: $6b
	add  c                                           ; $5cc7: $81
	adc  a                                           ; $5cc8: $8f
	pop  de                                          ; $5cc9: $d1
	ld   de, $f7ff                                   ; $5cca: $11 $ff $f7
	rst  $28                                         ; $5ccd: $ef
	ld   sp, hl                                      ; $5cce: $f9
	ld   [hl], h                                     ; $5ccf: $74
	xor  b                                           ; $5cd0: $a8
	dec  de                                          ; $5cd1: $1b
	db   $fd                                         ; $5cd2: $fd
	ld   de, $ff1f                                   ; $5cd3: $11 $1f $ff
	ld   l, a                                        ; $5cd6: $6f
	rst  $38                                         ; $5cd7: $ff
	sub  [hl]                                        ; $5cd8: $96
	inc  l                                           ; $5cd9: $2c
	and  c                                           ; $5cda: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cdb: $cf
	pop  de                                          ; $5cdc: $d1
	ld   de, $f5ff                                   ; $5cdd: $11 $ff $f5
	rst  $38                                         ; $5ce0: $ff
	ld   sp, hl                                      ; $5ce1: $f9
	ld   d, d                                        ; $5ce2: $52
	ret                                              ; $5ce3: $c9


	dec  a                                           ; $5ce4: $3d
	ei                                               ; $5ce5: $fb
	ld   de, $ff1f                                   ; $5ce6: $11 $1f $ff
	ld   e, a                                        ; $5ce9: $5f
	rst  $38                                         ; $5cea: $ff
	sub  h                                           ; $5ceb: $94
	dec  e                                           ; $5cec: $1d
	sub  l                                           ; $5ced: $95
	rst  $38                                         ; $5cee: $ff
	add  c                                           ; $5cef: $81
	ld   de, $f5ff                                   ; $5cf0: $11 $ff $f5
	rst  $38                                         ; $5cf3: $ff
	ld   sp, hl                                      ; $5cf4: $f9
	ld   hl, $8fda                                   ; $5cf5: $21 $da $8f
	di                                               ; $5cf8: $f3
	ld   de, $ff1f                                   ; $5cf9: $11 $1f $ff
	ld   l, a                                        ; $5cfc: $6f
	rst  $38                                         ; $5cfd: $ff
	or   c                                           ; $5cfe: $b1
	dec  e                                           ; $5cff: $1d
	xor  e                                           ; $5d00: $ab
	cp   $11                                         ; $5d01: $fe $11
	ld   [de], a                                     ; $5d03: $12
	rst  $38                                         ; $5d04: $ff
	rst  $30                                         ; $5d05: $f7
	rst  $38                                         ; $5d06: $ff
	db   $fc                                         ; $5d07: $fc
	ld   de, $efca                                   ; $5d08: $11 $ca $ef
	pop  bc                                          ; $5d0b: $c1
	ld   de, $ff5f                                   ; $5d0c: $11 $5f $ff
	cp   a                                           ; $5d0f: $bf
	rst  $38                                         ; $5d10: $ff
	and  c                                           ; $5d11: $a1
	inc  e                                           ; $5d12: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d13: $cf
	rst  $30                                         ; $5d14: $f7
	ld   de, $ff19                                   ; $5d15: $11 $19 $ff
	sbc  $ff                                         ; $5d18: $de $ff
	rst  $20                                         ; $5d1a: $e7
	inc  de                                          ; $5d1b: $13
	adc  $ff                                         ; $5d1c: $ce $ff
	ld   sp, $df11                                   ; $5d1e: $31 $11 $df
	cp   $ff                                         ; $5d21: $fe $ff
	cp   $21                                         ; $5d23: $fe $21
	ld   l, h                                        ; $5d25: $6c
	rst  $38                                         ; $5d26: $ff
	pop  hl                                          ; $5d27: $e1
	ld   de, $ff1f                                   ; $5d28: $11 $1f $ff
	cp   a                                           ; $5d2b: $bf
	rst  $38                                         ; $5d2c: $ff
	pop  bc                                          ; $5d2d: $c1
	rla                                              ; $5d2e: $17
	rst  $38                                         ; $5d2f: $ff
	ld   a, [$1311]                                  ; $5d30: $fa $11 $13
	rst  $38                                         ; $5d33: $ff
	rst  $38                                         ; $5d34: $ff
	rst  $38                                         ; $5d35: $ff
	rst  $20                                         ; $5d36: $e7
	ld   de, $ffcf                                   ; $5d37: $11 $cf $ff
	ld   d, c                                        ; $5d3a: $51
	ld   de, $ffbf                                   ; $5d3b: $11 $bf $ff
	rst  $28                                         ; $5d3e: $ef
	db   $fd                                         ; $5d3f: $fd
	ld   sp, $ff1f                                   ; $5d40: $31 $1f $ff
	pop  af                                          ; $5d43: $f1
	ld   de, $ff1f                                   ; $5d44: $11 $1f $ff
	rst  $38                                         ; $5d47: $ff
	db   $fd                                         ; $5d48: $fd
	add  c                                           ; $5d49: $81
	ld   d, $ff                                      ; $5d4a: $16 $ff
	ld   a, [$1211]                                  ; $5d4c: $fa $11 $12
	rst  $38                                         ; $5d4f: $ff
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	add  $11                                         ; $5d52: $c6 $11
	xor  a                                           ; $5d54: $af
	rst  $38                                         ; $5d55: $ff
	ld   b, c                                        ; $5d56: $41
	ld   de, $ff8f                                   ; $5d57: $11 $8f $ff
	rst  $38                                         ; $5d5a: $ff
	ld   sp, hl                                      ; $5d5b: $f9
	ld   hl, $ff1f                                   ; $5d5c: $21 $1f $ff
	pop  af                                          ; $5d5f: $f1
	ld   de, $ff1d                                   ; $5d60: $11 $1d $ff
	rst  $38                                         ; $5d63: $ff
	ei                                               ; $5d64: $fb
	ld   h, c                                        ; $5d65: $61
	dec  d                                           ; $5d66: $15
	rst  $38                                         ; $5d67: $ff
	ld   a, [$1211]                                  ; $5d68: $fa $11 $12
	rst  $38                                         ; $5d6b: $ff
	rst  $38                                         ; $5d6c: $ff
	rst  $38                                         ; $5d6d: $ff
	ld   [hl], d                                     ; $5d6e: $72
	ld   de, $ffdf                                   ; $5d6f: $11 $df $ff
	ld   de, $9f11                                   ; $5d72: $11 $11 $9f
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	jp   nz, $2f11                                   ; $5d77: $c2 $11 $2f

	rst  $38                                         ; $5d7a: $ff
	pop  af                                          ; $5d7b: $f1
	ld   de, $ff1d                                   ; $5d7c: $11 $1d $ff
	rst  $38                                         ; $5d7f: $ff
	or   $11                                         ; $5d80: $f6 $11
	jr   @+$01                                       ; $5d82: $18 $ff

	ld   sp, hl                                      ; $5d84: $f9
	ld   de, rAUD1LEN                                   ; $5d85: $11 $11 $ff
	rst  $38                                         ; $5d88: $ff
	rst  $38                                         ; $5d89: $ff
	ld   hl, rAUD1LEN                                   ; $5d8a: $21 $11 $ff
	rst  $38                                         ; $5d8d: $ff
	ld   de, $6f11                                   ; $5d8e: $11 $11 $6f
	rst  $38                                         ; $5d91: $ff
	rst  $38                                         ; $5d92: $ff
	and  c                                           ; $5d93: $a1
	ld   de, $ff2f                                   ; $5d94: $11 $2f $ff
	pop  af                                          ; $5d97: $f1
	ld   de, $ff1b                                   ; $5d98: $11 $1b $ff
	rst  $38                                         ; $5d9b: $ff
	push af                                          ; $5d9c: $f5
	ld   de, $ff17                                   ; $5d9d: $11 $17 $ff
	db   $fc                                         ; $5da0: $fc
	ld   de, $ef11                                   ; $5da1: $11 $11 $ef
	rst  $38                                         ; $5da4: $ff
	rst  $38                                         ; $5da5: $ff
	ld   sp, $cf11                                   ; $5da6: $31 $11 $cf
	rst  $38                                         ; $5da9: $ff
	add  c                                           ; $5daa: $81
	ld   de, $ff1f                                   ; $5dab: $11 $1f $ff
	rst  $38                                         ; $5dae: $ff
	pop  de                                          ; $5daf: $d1
	ld   de, $ff1f                                   ; $5db0: $11 $1f $ff
	db   $f4                                         ; $5db3: $f4
	ld   de, rAUD1LEN                                   ; $5db4: $11 $11 $ff
	rst  $38                                         ; $5db7: $ff
	ld   sp, hl                                      ; $5db8: $f9
	ld   de, rAUD1ENV                                   ; $5db9: $11 $12 $ff
	rst  $38                                         ; $5dbc: $ff
	ld   de, $1f11                                   ; $5dbd: $11 $11 $1f
	rst  $38                                         ; $5dc0: $ff
	rst  $38                                         ; $5dc1: $ff
	ld   h, c                                        ; $5dc2: $61
	ld   de, $ff4f                                   ; $5dc3: $11 $4f $ff
	pop  af                                          ; $5dc6: $f1
	ld   de, $ff15                                   ; $5dc7: $11 $15 $ff
	rst  $38                                         ; $5dca: $ff
	db   $f4                                         ; $5dcb: $f4
	ld   de, $ff17                                   ; $5dcc: $11 $17 $ff
	rst  $38                                         ; $5dcf: $ff
	ld   de, $3f11                                   ; $5dd0: $11 $11 $3f
	rst  $38                                         ; $5dd3: $ff
	rst  $38                                         ; $5dd4: $ff
	ld   hl, $9f11                                   ; $5dd5: $21 $11 $9f
	rst  $38                                         ; $5dd8: $ff
	pop  af                                          ; $5dd9: $f1
	ld   de, rAUD1LOW                                   ; $5dda: $11 $13 $ff
	rst  $38                                         ; $5ddd: $ff
	pop  af                                          ; $5dde: $f1
	ld   de, $ff19                                   ; $5ddf: $11 $19 $ff
	rst  $38                                         ; $5de2: $ff
	ld   de, $2f11                                   ; $5de3: $11 $11 $2f
	rst  $38                                         ; $5de6: $ff
	rst  $38                                         ; $5de7: $ff
	ld   de, $bf12                                   ; $5de8: $11 $12 $bf
	rst  $38                                         ; $5deb: $ff
	pop  hl                                          ; $5dec: $e1
	ld   de, rAUD1ENV                                   ; $5ded: $11 $12 $ff
	rst  $38                                         ; $5df0: $ff
	pop  hl                                          ; $5df1: $e1
	ld   de, $ff1a                                   ; $5df2: $11 $1a $ff
	cp   $11                                         ; $5df5: $fe $11
	ld   de, $ff1f                                   ; $5df7: $11 $1f $ff
	rst  $38                                         ; $5dfa: $ff
	ld   bc, $cf11                                   ; $5dfb: $01 $11 $cf
	rst  $38                                         ; $5dfe: $ff
	pop  de                                          ; $5dff: $d1
	ld   de, rAUD1LEN                                   ; $5e00: $11 $11 $ff
	rst  $38                                         ; $5e03: $ff
	pop  af                                          ; $5e04: $f1
	ld   de, $ff2d                                   ; $5e05: $11 $2d $ff
	db   $fd                                         ; $5e08: $fd
	ld   de, $1c11                                   ; $5e09: $11 $11 $1c
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	ld   hl, $df11                                   ; $5e0e: $21 $11 $df
	rst  $38                                         ; $5e11: $ff
	pop  af                                          ; $5e12: $f1
	ld   de, $6f11                                   ; $5e13: $11 $11 $6f
	rst  $38                                         ; $5e16: $ff
	or   $11                                         ; $5e17: $f6 $11
	inc  e                                           ; $5e19: $1c
	rst  $38                                         ; $5e1a: $ff
	rst  $38                                         ; $5e1b: $ff
	ld   h, c                                        ; $5e1c: $61
	ld   de, rAUD1LEN                                   ; $5e1d: $11 $11 $ff
	rst  $38                                         ; $5e20: $ff
	or   c                                           ; $5e21: $b1
	ld   de, $ffaf                                   ; $5e22: $11 $af $ff
	ei                                               ; $5e25: $fb
	ld   de, $1611                                   ; $5e26: $11 $11 $16
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	ld   hl, rAUD1LEN                                   ; $5e2b: $21 $11 $ff
	rst  $38                                         ; $5e2e: $ff
	pop  hl                                          ; $5e2f: $e1
	ld   de, $2d11                                   ; $5e30: $11 $11 $2d
	rst  $38                                         ; $5e33: $ff
	ld   sp, hl                                      ; $5e34: $f9
	ld   de, $ff1e                                   ; $5e35: $11 $1e $ff
	rst  $38                                         ; $5e38: $ff
	ld   h, c                                        ; $5e39: $61
	ld   de, $5f11                                   ; $5e3a: $11 $11 $5f
	rst  $38                                         ; $5e3d: $ff
	pop  af                                          ; $5e3e: $f1
	ld   de, $ff6f                                   ; $5e3f: $11 $6f $ff
	db   $fc                                         ; $5e42: $fc
	ld   de, $1111                                   ; $5e43: $11 $11 $11
	rst  JumpTable                                         ; $5e46: $df
	rst  $38                                         ; $5e47: $ff
	ld   b, c                                        ; $5e48: $41
	ld   de, $ffff                                   ; $5e49: $11 $ff $ff
	db   $f4                                         ; $5e4c: $f4
	ld   de, $1511                                   ; $5e4d: $11 $11 $15
	rst  $38                                         ; $5e50: $ff
	rst  $38                                         ; $5e51: $ff
	ld   de, $ff1a                                   ; $5e52: $11 $1a $ff
	rst  $38                                         ; $5e55: $ff
	and  c                                           ; $5e56: $a1
	ld   de, $1d11                                   ; $5e57: $11 $11 $1d
	rst  $38                                         ; $5e5a: $ff
	ldh  a, [c]                                      ; $5e5b: $f2
	ld   de, $ff1f                                   ; $5e5c: $11 $1f $ff
	rst  $38                                         ; $5e5f: $ff
	ld   b, c                                        ; $5e60: $41
	ld   de, $3f11                                   ; $5e61: $11 $11 $3f
	rst  $38                                         ; $5e64: $ff
	pop  af                                          ; $5e65: $f1
	ld   de, $ffaf                                   ; $5e66: $11 $af $ff
	ld   a, [$1111]                                  ; $5e69: $fa $11 $11
	ld   de, $ffaf                                   ; $5e6c: $11 $af $ff
	ld   b, c                                        ; $5e6f: $41
	ld   de, $ffff                                   ; $5e70: $11 $ff $ff
	db   $f4                                         ; $5e73: $f4
	ld   de, $1311                                   ; $5e74: $11 $11 $13
	rst  $38                                         ; $5e77: $ff
	rst  $38                                         ; $5e78: $ff
	ld   de, $ff1a                                   ; $5e79: $11 $1a $ff
	rst  $38                                         ; $5e7c: $ff
	or   c                                           ; $5e7d: $b1
	ld   de, $1a11                                   ; $5e7e: $11 $11 $1a
	rst  $38                                         ; $5e81: $ff
	push af                                          ; $5e82: $f5
	ld   de, $ff1f                                   ; $5e83: $11 $1f $ff
	rst  $38                                         ; $5e86: $ff
	ld   b, c                                        ; $5e87: $41
	ld   de, $3f11                                   ; $5e88: $11 $11 $3f
	rst  $38                                         ; $5e8b: $ff
	pop  af                                          ; $5e8c: $f1
	ld   de, $ffbf                                   ; $5e8d: $11 $bf $ff
	db   $fc                                         ; $5e90: $fc
	ld   de, $1111                                   ; $5e91: $11 $11 $11
	ld   a, a                                        ; $5e94: $7f
	rst  $38                                         ; $5e95: $ff
	sub  c                                           ; $5e96: $91
	ld   de, $ffff                                   ; $5e97: $11 $ff $ff
	rst  $30                                         ; $5e9a: $f7
	ld   de, $1111                                   ; $5e9b: $11 $11 $11
	cp   a                                           ; $5e9e: $bf
	rst  $38                                         ; $5e9f: $ff
	ld   de, $ff15                                   ; $5ea0: $11 $15 $ff
	rst  $38                                         ; $5ea3: $ff
	di                                               ; $5ea4: $f3
	ld   de, $1311                                   ; $5ea5: $11 $11 $13
	rst  $38                                         ; $5ea8: $ff
	rst  $38                                         ; $5ea9: $ff
	ld   de, $ff1e                                   ; $5eaa: $11 $1e $ff
	rst  $38                                         ; $5ead: $ff
	or   c                                           ; $5eae: $b1
	ld   de, $1511                                   ; $5eaf: $11 $11 $15
	rst  $38                                         ; $5eb2: $ff
	ld   sp, hl                                      ; $5eb3: $f9
	ld   de, $ff1f                                   ; $5eb4: $11 $1f $ff
	rst  $38                                         ; $5eb7: $ff
	ld   h, c                                        ; $5eb8: $61
	ld   de, $1b11                                   ; $5eb9: $11 $11 $1b
	rst  $38                                         ; $5ebc: $ff
	pop  af                                          ; $5ebd: $f1
	ld   de, $ff8f                                   ; $5ebe: $11 $8f $ff
	db   $fd                                         ; $5ec1: $fd
	ld   sp, $1111                                   ; $5ec2: $31 $11 $11
	cpl                                              ; $5ec5: $2f
	rst  $38                                         ; $5ec6: $ff
	pop  af                                          ; $5ec7: $f1
	ld   de, $ffff                                   ; $5ec8: $11 $ff $ff
	ld   sp, hl                                      ; $5ecb: $f9
	ld   de, $1111                                   ; $5ecc: $11 $11 $11
	ld   e, a                                        ; $5ecf: $5f
	rst  $38                                         ; $5ed0: $ff
	ld   [hl], c                                     ; $5ed1: $71
	ld   de, $ffff                                   ; $5ed2: $11 $ff $ff
	ld   sp, hl                                      ; $5ed5: $f9
	ld   de, $1111                                   ; $5ed6: $11 $11 $11
	ld   a, a                                        ; $5ed9: $7f
	rst  $38                                         ; $5eda: $ff
	ld   de, $ff15                                   ; $5edb: $11 $15 $ff
	rst  $38                                         ; $5ede: $ff
	and  $11                                         ; $5edf: $e6 $11
	ld   de, $7f11                                   ; $5ee1: $11 $11 $7f
	rst  $38                                         ; $5ee4: $ff
	ld   de, $ff18                                   ; $5ee5: $11 $18 $ff
	rst  $38                                         ; $5ee8: $ff
	rst  $20                                         ; $5ee9: $e7
	ld   de, $1111                                   ; $5eea: $11 $11 $11
	ld   l, a                                        ; $5eed: $6f
	rst  $38                                         ; $5eee: $ff
	ld   de, $ff16                                   ; $5eef: $11 $16 $ff
	rst  $38                                         ; $5ef2: $ff
	and  l                                           ; $5ef3: $a5
	ld   de, $1111                                   ; $5ef4: $11 $11 $11
	sbc  a                                           ; $5ef7: $9f
	rst  $38                                         ; $5ef8: $ff
	ld   de, $ff16                                   ; $5ef9: $11 $16 $ff
	rst  $38                                         ; $5efc: $ff
	ret  c                                           ; $5efd: $d8

	ld   de, $1111                                   ; $5efe: $11 $11 $11
	ld   a, a                                        ; $5f01: $7f
	rst  $38                                         ; $5f02: $ff
	ld   de, rAUD1LOW                                   ; $5f03: $11 $13 $ff
	rst  $38                                         ; $5f06: $ff
	add  $11                                         ; $5f07: $c6 $11
	ld   de, $5f11                                   ; $5f09: $11 $11 $5f
	rst  $38                                         ; $5f0c: $ff
	ld   sp, rAUD1LEN                                   ; $5f0d: $31 $11 $ff
	rst  $38                                         ; $5f10: $ff
	ret  c                                           ; $5f11: $d8

	ld   de, $1111                                   ; $5f12: $11 $11 $11
	ld   l, a                                        ; $5f15: $6f
	rst  $38                                         ; $5f16: $ff
	ld   d, c                                        ; $5f17: $51
	ld   de, $ffff                                   ; $5f18: $11 $ff $ff
	ret                                              ; $5f1b: $c9


	ld   de, $1111                                   ; $5f1c: $11 $11 $11
	rra                                              ; $5f1f: $1f
	rst  $38                                         ; $5f20: $ff
	pop  de                                          ; $5f21: $d1
	ld   de, $ffff                                   ; $5f22: $11 $ff $ff
	ld   a, [$1141]                                  ; $5f25: $fa $41 $11
	ld   de, $ff1f                                   ; $5f28: $11 $1f $ff
	pop  af                                          ; $5f2b: $f1
	ld   de, $ffff                                   ; $5f2c: $11 $ff $ff
	ei                                               ; $5f2f: $fb
	ld   d, c                                        ; $5f30: $51
	ld   de, $1f11                                   ; $5f31: $11 $11 $1f
	rst  $38                                         ; $5f34: $ff
	pop  af                                          ; $5f35: $f1
	ld   de, $ffff                                   ; $5f36: $11 $ff $ff
	ld   a, [$1151]                                  ; $5f39: $fa $51 $11
	ld   de, $ff1f                                   ; $5f3c: $11 $1f $ff
	pop  af                                          ; $5f3f: $f1
	ld   de, $ffff                                   ; $5f40: $11 $ff $ff
	jp   c, $1141                                    ; $5f43: $da $41 $11

	ld   de, $ff1f                                   ; $5f46: $11 $1f $ff
	pop  af                                          ; $5f49: $f1
	ld   de, $ffff                                   ; $5f4a: $11 $ff $ff
	xor  c                                           ; $5f4d: $a9
	ld   d, c                                        ; $5f4e: $51
	ld   de, $1f11                                   ; $5f4f: $11 $11 $1f
	rst  $38                                         ; $5f52: $ff
	pop  af                                          ; $5f53: $f1
	ld   de, $ffff                                   ; $5f54: $11 $ff $ff
	xor  d                                           ; $5f57: $aa
	ld   [hl], c                                     ; $5f58: $71
	ld   de, $1b11                                   ; $5f59: $11 $11 $1b
	rst  $38                                         ; $5f5c: $ff
	pop  af                                          ; $5f5d: $f1
	ld   de, $ffff                                   ; $5f5e: $11 $ff $ff
	cp   c                                           ; $5f61: $b9
	ld   [hl], c                                     ; $5f62: $71
	ld   de, $1b11                                   ; $5f63: $11 $11 $1b
	rst  $38                                         ; $5f66: $ff
	pop  af                                          ; $5f67: $f1
	ld   de, $ffff                                   ; $5f68: $11 $ff $ff
	xor  c                                           ; $5f6b: $a9
	ld   h, c                                        ; $5f6c: $61
	ld   de, $1f11                                   ; $5f6d: $11 $11 $1f
	rst  $38                                         ; $5f70: $ff
	pop  af                                          ; $5f71: $f1
	ld   de, $ffff                                   ; $5f72: $11 $ff $ff
	cp   b                                           ; $5f75: $b8
	ld   sp, $1111                                   ; $5f76: $31 $11 $11
	cpl                                              ; $5f79: $2f
	rst  $38                                         ; $5f7a: $ff
	pop  af                                          ; $5f7b: $f1
	inc  de                                          ; $5f7c: $13
	rst  $38                                         ; $5f7d: $ff
	db   $fd                                         ; $5f7e: $fd
	sbc  b                                           ; $5f7f: $98
	ld   de, $1111                                   ; $5f80: $11 $11 $11
	cp   a                                           ; $5f83: $bf
	rst  $38                                         ; $5f84: $ff
	ld   [hl], c                                     ; $5f85: $71
	add  hl, de                                      ; $5f86: $19
	rst  $38                                         ; $5f87: $ff
	db   $fc                                         ; $5f88: $fc
	add  $11                                         ; $5f89: $c6 $11
	ld   de, rAUD1LEN                                   ; $5f8b: $11 $11 $ff
	rst  $38                                         ; $5f8e: $ff
	ld   de, $ff1c                                   ; $5f8f: $11 $1c $ff
	db   $fc                                         ; $5f92: $fc
	jp   $1111                                       ; $5f93: $c3 $11 $11


	inc  de                                          ; $5f96: $13
	rst  $38                                         ; $5f97: $ff
	rst  $38                                         ; $5f98: $ff
	ld   de, $ff3e                                   ; $5f99: $11 $3e $ff
	rst  $28                                         ; $5f9c: $ef
	sub  c                                           ; $5f9d: $91
	ld   de, $1f11                                   ; $5f9e: $11 $11 $1f
	rst  $38                                         ; $5fa1: $ff
	ld   hl, sp+$11                                  ; $5fa2: $f8 $11
	ld   a, a                                        ; $5fa4: $7f
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	ld   sp, $1111                                   ; $5fa7: $31 $11 $11
	ld   c, a                                        ; $5faa: $4f
	rst  $38                                         ; $5fab: $ff
	pop  af                                          ; $5fac: $f1
	ld   de, $ffbf                                   ; $5fad: $11 $bf $ff
	ld   hl, sp+$11                                  ; $5fb0: $f8 $11
	ld   de, $bf11                                   ; $5fb2: $11 $11 $bf
	rst  $38                                         ; $5fb5: $ff
	pop  af                                          ; $5fb6: $f1
	inc  d                                           ; $5fb7: $14
	rst  JumpTable                                         ; $5fb8: $df
	rst  $38                                         ; $5fb9: $ff
	db   $e3                                         ; $5fba: $e3
	ld   de, $1211                                   ; $5fbb: $11 $11 $12
	rst  $38                                         ; $5fbe: $ff
	rst  $38                                         ; $5fbf: $ff
	ld   b, c                                        ; $5fc0: $41
	add  hl, de                                      ; $5fc1: $19
	rst  $38                                         ; $5fc2: $ff
	cp   $91                                         ; $5fc3: $fe $91
	ld   de, $1b11                                   ; $5fc5: $11 $11 $1b
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	ld   de, $ff4d                                   ; $5fca: $11 $4d $ff
	db   $fd                                         ; $5fcd: $fd
	ld   sp, $1111                                   ; $5fce: $31 $11 $11
	rra                                              ; $5fd1: $1f
	rst  $38                                         ; $5fd2: $ff
	push af                                          ; $5fd3: $f5
	ld   de, $ff6f                                   ; $5fd4: $11 $6f $ff
	ld   a, [$1111]                                  ; $5fd7: $fa $11 $11
	ld   de, $ff9f                                   ; $5fda: $11 $9f $ff
	pop  af                                          ; $5fdd: $f1
	ld   de, $ff8f                                   ; $5fde: $11 $8f $ff
	db   $f4                                         ; $5fe1: $f4
	ld   de, $1311                                   ; $5fe2: $11 $11 $13
	rst  $38                                         ; $5fe5: $ff
	rst  $38                                         ; $5fe6: $ff
	or   c                                           ; $5fe7: $b1
	inc  de                                          ; $5fe8: $13
	rst  JumpTable                                         ; $5fe9: $df
	rst  $38                                         ; $5fea: $ff
	or   c                                           ; $5feb: $b1
	ld   de, $1711                                   ; $5fec: $11 $11 $17
	rst  $38                                         ; $5fef: $ff
	rst  $38                                         ; $5ff0: $ff
	ld   de, $ff17                                   ; $5ff1: $11 $17 $ff
	rst  $38                                         ; $5ff4: $ff
	ld   de, $1111                                   ; $5ff5: $11 $11 $11
	cpl                                              ; $5ff8: $2f
	rst  $38                                         ; $5ff9: $ff
	ld   sp, hl                                      ; $5ffa: $f9
	ld   de, $ff2e                                   ; $5ffb: $11 $2e $ff
	ld   sp, hl                                      ; $5ffe: $f9
	ld   de, $1111                                   ; $5fff: $11 $11 $11
	ld   l, a                                        ; $6002: $6f
	rst  $38                                         ; $6003: $ff
	db   $f4                                         ; $6004: $f4
	ld   de, $ff5f                                   ; $6005: $11 $5f $ff
	pop  af                                          ; $6008: $f1
	ld   de, $1111                                   ; $6009: $11 $11 $11
	rst  JumpTable                                         ; $600c: $df
	rst  $38                                         ; $600d: $ff
	pop  af                                          ; $600e: $f1
	ld   de, $ffbf                                   ; $600f: $11 $bf $ff
	ld   d, c                                        ; $6012: $51
	ld   de, $3811                                   ; $6013: $11 $11 $38
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	pop  de                                          ; $6018: $d1
	ld   [de], a                                     ; $6019: $12
	rst  $38                                         ; $601a: $ff
	db   $fc                                         ; $601b: $fc
	ld   de, $1211                                   ; $601c: $11 $11 $12
	ld   h, a                                        ; $601f: $67
	rst  $38                                         ; $6020: $ff
	rst  $38                                         ; $6021: $ff
	ld   h, c                                        ; $6022: $61
	jr   @+$01                                       ; $6023: $18 $ff

	ldh  a, [c]                                      ; $6025: $f2
	ld   de, $1111                                   ; $6026: $11 $11 $11
	ccf                                              ; $6029: $3f
	rst  $38                                         ; $602a: $ff
	db   $f4                                         ; $602b: $f4
	ld   de, $ff1f                                   ; $602c: $11 $1f $ff
	and  c                                           ; $602f: $a1
	ld   de, $1113                                   ; $6030: $11 $13 $11
	ld   l, [hl]                                     ; $6033: $6e
	rst  $38                                         ; $6034: $ff
	ld   a, [$7f11]                                  ; $6035: $fa $11 $7f
	rst  $38                                         ; $6038: $ff
	add  c                                           ; $6039: $81
	ld   de, $1111                                   ; $603a: $11 $11 $11
	ccf                                              ; $603d: $3f
	rst  $38                                         ; $603e: $ff
	ld   sp, hl                                      ; $603f: $f9
	ld   de, $ff5f                                   ; $6040: $11 $5f $ff
	or   e                                           ; $6043: $b3
	ld   de, $1111                                   ; $6044: $11 $11 $11
	ld   e, l                                        ; $6047: $5d
	rst  $38                                         ; $6048: $ff
	rst  $38                                         ; $6049: $ff
	ld   de, $ff3e                                   ; $604a: $11 $3e $ff
	or   d                                           ; $604d: $b2
	ld   de, $1411                                   ; $604e: $11 $11 $14
	ld   e, e                                        ; $6051: $5b
	rst  $38                                         ; $6052: $ff
	rst  $38                                         ; $6053: $ff
	ld   hl, $ff08                                   ; $6054: $21 $08 $ff
	db   $e4                                         ; $6057: $e4
	ld   de, $1111                                   ; $6058: $11 $11 $11
	inc  l                                           ; $605b: $2c
	rst  $38                                         ; $605c: $ff
	rst  $38                                         ; $605d: $ff
	ld   d, c                                        ; $605e: $51
	add  hl, de                                      ; $605f: $19
	rst  $38                                         ; $6060: $ff
	ld   sp, hl                                      ; $6061: $f9
	ld   de, $1111                                   ; $6062: $11 $11 $11
	jr   @+$01                                       ; $6065: $18 $ff

	rst  $38                                         ; $6067: $ff
	add  c                                           ; $6068: $81
	jr   z, @-$0f                                    ; $6069: $28 $ef

	cp   $71                                         ; $606b: $fe $71
	ld   de, $1511                                   ; $606d: $11 $11 $15
	cp   a                                           ; $6070: $bf
	rst  $38                                         ; $6071: $ff
	or   $13                                         ; $6072: $f6 $13
	xor  a                                           ; $6074: $af
	rst  $38                                         ; $6075: $ff
	sub  e                                           ; $6076: $93
	ld   de, $1111                                   ; $6077: $11 $11 $11
	adc  a                                           ; $607a: $8f
	rst  $38                                         ; $607b: $ff
	db   $fd                                         ; $607c: $fd
	ld   h, c                                        ; $607d: $61
	ld   a, h                                        ; $607e: $7c
	rst  $28                                         ; $607f: $ef
	ld   sp, hl                                      ; $6080: $f9
	ld   hl, $1111                                   ; $6081: $21 $11 $11
	dec  d                                           ; $6084: $15
	rst  $28                                         ; $6085: $ef
	rst  $38                                         ; $6086: $ff
	push hl                                          ; $6087: $e5
	ld   a, [hl-]                                    ; $6088: $3a
	xor  a                                           ; $6089: $af
	db   $fc                                         ; $608a: $fc
	ld   [hl], c                                     ; $608b: $71
	ld   de, $1511                                   ; $608c: $11 $11 $15
	xor  [hl]                                        ; $608f: $ae
	rst  $38                                         ; $6090: $ff
	rst  $38                                         ; $6091: $ff
	and  l                                           ; $6092: $a5
	ld   [hl], $ff                                   ; $6093: $36 $ff
	rst  $30                                         ; $6095: $f7
	ld   de, $1112                                   ; $6096: $11 $12 $11
	inc  de                                          ; $6099: $13
	rst  JumpTable                                         ; $609a: $df
	rst  $38                                         ; $609b: $ff
	ret  c                                           ; $609c: $d8

	ld   h, a                                        ; $609d: $67
	adc  l                                           ; $609e: $8d
	rst  $38                                         ; $609f: $ff
	call nz, $1111                                   ; $60a0: $c4 $11 $11
	ld   de, $ff3e                                   ; $60a3: $11 $3e $ff
	db   $fc                                         ; $60a6: $fc
	cp   e                                           ; $60a7: $bb
	ld   a, b                                        ; $60a8: $78
	cp   h                                           ; $60a9: $bc
	rst  $38                                         ; $60aa: $ff
	add  c                                           ; $60ab: $81
	ld   de, $1311                                   ; $60ac: $11 $11 $13
	sbc  a                                           ; $60af: $9f
	rst  $38                                         ; $60b0: $ff
	rst  $28                                         ; $60b1: $ef
	add  sp, $43                                     ; $60b2: $e8 $43
	rst  JumpTable                                         ; $60b4: $df
	cp   $31                                         ; $60b5: $fe $31
	ld   de, $1111                                   ; $60b7: $11 $11 $11
	rst  $28                                         ; $60ba: $ef
	rst  $38                                         ; $60bb: $ff
	cp   d                                           ; $60bc: $ba
	add  [hl]                                        ; $60bd: $86
	cp   l                                           ; $60be: $bd
	rst  $38                                         ; $60bf: $ff
	or   l                                           ; $60c0: $b5
	ld   de, $1112                                   ; $60c1: $11 $12 $11
	inc  de                                          ; $60c4: $13
	rst  $28                                         ; $60c5: $ef
	reti                                             ; $60c6: $d9


	cp   $bb                                         ; $60c7: $fe $bb
	adc  d                                           ; $60c9: $8a
	rst  $38                                         ; $60ca: $ff
	add  sp, $11                                     ; $60cb: $e8 $11
	ld   hl, $1511                                   ; $60cd: $21 $11 $15
	rst  JumpTable                                         ; $60d0: $df
	rst  $38                                         ; $60d1: $ff
	or   a                                           ; $60d2: $b7
	adc  h                                           ; $60d3: $8c
	rst  $28                                         ; $60d4: $ef
	db   $ed                                         ; $60d5: $ed
	rst  ToBoot                                         ; $60d6: $c7
	ld   hl, $1111                                   ; $60d7: $21 $11 $11
	ld   de, $ff7f                                   ; $60da: $11 $7f $ff
	ei                                               ; $60dd: $fb
	adc  c                                           ; $60de: $89
	adc  a                                           ; $60df: $8f
	db   $fc                                         ; $60e0: $fc
	cp   d                                           ; $60e1: $ba
	ld   de, $2111                                   ; $60e2: $11 $11 $21
	ld   de, $ff2b                                   ; $60e5: $11 $2b $ff
	db   $fd                                         ; $60e8: $fd
	sbc  c                                           ; $60e9: $99
	ld   l, l                                        ; $60ea: $6d
	rst  $38                                         ; $60eb: $ff
	or   [hl]                                        ; $60ec: $b6
	ld   d, [hl]                                     ; $60ed: $56
	ld   [hl-], a                                    ; $60ee: $32
	ld   sp, $1c11                                   ; $60ef: $31 $11 $1c
	rst  $38                                         ; $60f2: $ff
	ei                                               ; $60f3: $fb
	sbc  [hl]                                        ; $60f4: $9e
	db   $dd                                         ; $60f5: $dd
	and  [hl]                                        ; $60f6: $a6
	rst  JumpTable                                         ; $60f7: $df
	rst  $10                                         ; $60f8: $d7
	ld   de, $1145                                   ; $60f9: $11 $45 $11
	ld   de, $ffbf                                   ; $60fc: $11 $bf $ff
	sbc  b                                           ; $60ff: $98
	adc  $a9                                         ; $6100: $ce $a9
	cp   h                                           ; $6102: $bc
	cp   $71                                         ; $6103: $fe $71
	inc  d                                           ; $6105: $14
	ld   sp, $1911                                   ; $6106: $31 $11 $19
	rst  $38                                         ; $6109: $ff
	ld   sp, hl                                      ; $610a: $f9
	ld   a, c                                        ; $610b: $79
	rst  $38                                         ; $610c: $ff
	sbc  h                                           ; $610d: $9c
	call z, $25d5                                    ; $610e: $cc $d5 $25
	ld   e, c                                        ; $6111: $59
	ld   sp, $6f11                                   ; $6112: $31 $11 $6f
	db   $eb                                         ; $6115: $eb
	xor  l                                           ; $6116: $ad
	rst  $38                                         ; $6117: $ff
	and  l                                           ; $6118: $a5
	ld   l, e                                        ; $6119: $6b
	rst  $38                                         ; $611a: $ff
	push bc                                          ; $611b: $c5
	inc  sp                                          ; $611c: $33
	ld   d, h                                        ; $611d: $54
	ld   de, $4f11                                   ; $611e: $11 $11 $4f
	rst  $38                                         ; $6121: $ff
	and  [hl]                                        ; $6122: $a6
	adc  [hl]                                        ; $6123: $8e
	ld   a, [$cf8b]                                  ; $6124: $fa $8b $cf
	db   $f4                                         ; $6127: $f4
	inc  de                                          ; $6128: $13
	ld   d, h                                        ; $6129: $54
	ld   de, $7f11                                   ; $612a: $11 $11 $7f
	jp   hl                                          ; $612d: $e9


	sbc  h                                           ; $612e: $9c
	rst  $38                                         ; $612f: $ff
	ld   a, [$ff79]                                  ; $6130: $fa $79 $ff
	sub  [hl]                                        ; $6133: $96
	ld   d, c                                        ; $6134: $51
	ld   b, [hl]                                     ; $6135: $46
	ld   de, $8f11                                   ; $6136: $11 $11 $8f
	cp   $ba                                         ; $6139: $fe $ba
	db   $fd                                         ; $613b: $fd
	jp   z, $fc6f                                    ; $613c: $ca $6f $fc

	ret  z                                           ; $613f: $c8

	ld   a, [hl-]                                    ; $6140: $3a
	add  e                                           ; $6141: $83
	ld   hl, $1411                                   ; $6142: $21 $11 $14
	xor  l                                           ; $6145: $ad
	cp   $cb                                         ; $6146: $fe $cb
	db   $ec                                         ; $6148: $ec
	xor  h                                           ; $6149: $ac
	xor  [hl]                                        ; $614a: $ae
	ei                                               ; $614b: $fb
	ld   h, [hl]                                     ; $614c: $66
	ld   [hl], l                                     ; $614d: $75
	ld   sp, $1111                                   ; $614e: $31 $11 $11
	add  hl, sp                                      ; $6151: $39
	rst  $38                                         ; $6152: $ff
	cp   e                                           ; $6153: $bb
	sbc  h                                           ; $6154: $9c
	ld   a, [$ff4c]                                  ; $6155: $fa $4c $ff
	or   $13                                         ; $6158: $f6 $13
	ld   c, e                                        ; $615a: $4b
	ld   h, c                                        ; $615b: $61
	ld   de, $ba19                                   ; $615c: $11 $19 $ba
	cp   b                                           ; $615f: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6160: $cf
	cp   $c6                                         ; $6161: $fe $c6
	xor  [hl]                                        ; $6163: $ae
	adc  $a5                                         ; $6164: $ce $a5
	ld   d, l                                        ; $6166: $55
	ld   a, b                                        ; $6167: $78
	ld   de, $3411                                   ; $6168: $11 $11 $34
	adc  a                                           ; $616b: $8f
	db   $eb                                         ; $616c: $eb
	db   $ed                                         ; $616d: $ed
	db   $dd                                         ; $616e: $dd
	xor  d                                           ; $616f: $aa
	call c, $87ab                                    ; $6170: $dc $ab $87
	sub  a                                           ; $6173: $97
	ld   h, a                                        ; $6174: $67
	ld   de, $3611                                   ; $6175: $11 $11 $36
	halt                                             ; $6178: $76
	call $baef                                       ; $6179: $cd $ef $ba
	sub  [hl]                                        ; $617c: $96
	rst  $28                                         ; $617d: $ef
	xor  e                                           ; $617e: $ab
	sub  e                                           ; $617f: $93
	cp   h                                           ; $6180: $bc
	add  [hl]                                        ; $6181: $86
	ld   de, $1811                                   ; $6182: $11 $11 $18
	sbc  d                                           ; $6185: $9a
	ret                                              ; $6186: $c9


	ld   e, l                                        ; $6187: $5d
	db   $fd                                         ; $6188: $fd
	ld   a, [$fc3d]                                  ; $6189: $fa $3d $fc
	add  sp, $7d                                     ; $618c: $e8 $7d
	ld   h, a                                        ; $618e: $67
	ld   [hl], c                                     ; $618f: $71
	ld   de, $3711                                   ; $6190: $11 $11 $37
	xor  e                                           ; $6193: $ab
	cp   c                                           ; $6194: $b9
	xor  a                                           ; $6195: $af
	jp   z, $efc8                                    ; $6196: $ca $c8 $ef

	xor  e                                           ; $6199: $ab
	cp   h                                           ; $619a: $bc
	and  h                                           ; $619b: $a4
	ld   c, c                                        ; $619c: $49
	sub  a                                           ; $619d: $97
	ld   de, $8d11                                   ; $619e: $11 $11 $8d
	halt                                             ; $61a1: $76
	xor  d                                           ; $61a2: $aa
	rst  $38                                         ; $61a3: $ff
	xor  e                                           ; $61a4: $ab
	xor  b                                           ; $61a5: $a8
	db   $fd                                         ; $61a6: $fd
	adc  $a7                                         ; $61a7: $ce $a7
	add  l                                           ; $61a9: $85
	adc  e                                           ; $61aa: $8b
	ld   d, d                                        ; $61ab: $52
	ld   de, $5a14                                   ; $61ac: $11 $14 $5a
	ld   [hl], h                                     ; $61af: $74
	sbc  d                                           ; $61b0: $9a
	rst  $38                                         ; $61b1: $ff
	sbc  l                                           ; $61b2: $9d
	and  [hl]                                        ; $61b3: $a6
	rst  $38                                         ; $61b4: $ff
	ld   c, h                                        ; $61b5: $4c
	ret  z                                           ; $61b6: $c8

	ret                                              ; $61b7: $c9


	sub  l                                           ; $61b8: $95
	rla                                              ; $61b9: $17
	ld   b, c                                        ; $61ba: $41
	ld   de, $5936                                   ; $61bb: $11 $36 $59
	xor  b                                           ; $61be: $a8
	cp   [hl]                                        ; $61bf: $be
	jp   c, $caaf                                    ; $61c0: $da $af $ca

	ld   hl, sp+$4b                                  ; $61c3: $f8 $4b
	jp   z, Jump_0f3_66c6                            ; $61c5: $ca $c6 $66

	inc  [hl]                                        ; $61c8: $34
	ld   hl, $3805                                   ; $61c9: $21 $05 $38
	halt                                             ; $61cc: $76
	set  1, [hl]                                     ; $61cd: $cb $ce
	adc  l                                           ; $61cf: $8d
	push hl                                          ; $61d0: $e5
	cp   h                                           ; $61d1: $bc
	adc  [hl]                                        ; $61d2: $8e
	cp   c                                           ; $61d3: $b9
	ret                                              ; $61d4: $c9


	add  a                                           ; $61d5: $87
	inc  d                                           ; $61d6: $14
	add  l                                           ; $61d7: $85
	ld   hl, $6a13                                   ; $61d8: $21 $13 $6a
	ld   [hl], e                                     ; $61db: $73
	sbc  e                                           ; $61dc: $9b
	ld   a, a                                        ; $61dd: $7f
	ei                                               ; $61de: $fb
	and  a                                           ; $61df: $a7
	xor  a                                           ; $61e0: $af
	cp   b                                           ; $61e1: $b8
	adc  d                                           ; $61e2: $8a
	xor  h                                           ; $61e3: $ac
	rst  $10                                         ; $61e4: $d7
	inc  sp                                          ; $61e5: $33
	ld   a, d                                        ; $61e6: $7a
	ld   h, c                                        ; $61e7: $61
	ld   de, $a71a                                   ; $61e8: $11 $1a $a7
	ld   l, b                                        ; $61eb: $68
	rst  $38                                         ; $61ec: $ff
	adc  d                                           ; $61ed: $8a
	jp   z, $afb7                                    ; $61ee: $ca $b7 $af

	cp   [hl]                                        ; $61f1: $be
	add  $98                                         ; $61f2: $c6 $98
	adc  c                                           ; $61f4: $89
	ld   d, l                                        ; $61f5: $55
	ld   [hl], d                                     ; $61f6: $72
	inc  de                                          ; $61f7: $13
	ld   de, $9a67                                   ; $61f8: $11 $67 $9a
	ld   h, a                                        ; $61fb: $67
	cp   l                                           ; $61fc: $bd
	ret  z                                           ; $61fd: $c8

	adc  d                                           ; $61fe: $8a
	xor  a                                           ; $61ff: $af
	or   $8b                                         ; $6200: $f6 $8b
	xor  h                                           ; $6202: $ac
	push de                                          ; $6203: $d5
	ld   b, a                                        ; $6204: $47
	xor  d                                           ; $6205: $aa
	ld   b, c                                        ; $6206: $41
	ld   de, $2513                                   ; $6207: $11 $13 $25
	call Call_0f3_6996                               ; $620a: $cd $96 $69
	rst  JumpTable                                         ; $620d: $df
	ret  c                                           ; $620e: $d8

	adc  c                                           ; $620f: $89
	sbc  $78                                         ; $6210: $de $78
	cp   d                                           ; $6212: $ba
	jp   c, $6635                                    ; $6213: $da $35 $66

	add  e                                           ; $6216: $83
	ld   [de], a                                     ; $6217: $12
	inc  d                                           ; $6218: $14
	ld   [hl], l                                     ; $6219: $75
	ld   l, d                                        ; $621a: $6a
	adc  e                                           ; $621b: $8b
	cp   c                                           ; $621c: $b9
	or   a                                           ; $621d: $b7
	adc  [hl]                                        ; $621e: $8e
	xor  h                                           ; $621f: $ac
	rst  $10                                         ; $6220: $d7
	ld   a, e                                        ; $6221: $7b
	ret                                              ; $6222: $c9


	sbc  c                                           ; $6223: $99
	cp   b                                           ; $6224: $b8
	ld   h, [hl]                                     ; $6225: $66
	ld   b, l                                        ; $6226: $45
	add  l                                           ; $6227: $85
	ld   de, $7a35                                   ; $6228: $11 $35 $7a
	xor  b                                           ; $622b: $a8
	ld   h, [hl]                                     ; $622c: $66
	ld   a, e                                        ; $622d: $7b
	ret                                              ; $622e: $c9


	ld   l, c                                        ; $622f: $69
	db   $ec                                         ; $6230: $ec
	ld   [hl], a                                     ; $6231: $77
	jp   z, $95be                                    ; $6232: $ca $be $95

	add  [hl]                                        ; $6235: $86
	ld   d, a                                        ; $6236: $57
	adc  c                                           ; $6237: $89
	ld   h, e                                        ; $6238: $63
	ld   b, d                                        ; $6239: $42
	add  hl, sp                                      ; $623a: $39
	and  a                                           ; $623b: $a7
	ld   h, [hl]                                     ; $623c: $66
	ld   e, b                                        ; $623d: $58
	and  a                                           ; $623e: $a7
	ld   l, b                                        ; $623f: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6240: $cf
	add  $5b                                         ; $6241: $c6 $5b
	rst  JumpTable                                         ; $6243: $df
	reti                                             ; $6244: $d9


	sbc  d                                           ; $6245: $9a
	add  [hl]                                        ; $6246: $86
	ld   b, l                                        ; $6247: $45
	sbc  c                                           ; $6248: $99
	and  a                                           ; $6249: $a7
	ld   [hl-], a                                    ; $624a: $32
	ld   b, l                                        ; $624b: $45
	ld   [hl], a                                     ; $624c: $77
	ld   [hl], a                                     ; $624d: $77
	ld   h, l                                        ; $624e: $65
	add  a                                           ; $624f: $87
	sbc  d                                           ; $6250: $9a
	sbc  d                                           ; $6251: $9a
	db   $ec                                         ; $6252: $ec
	sub  [hl]                                        ; $6253: $96
	ld   l, c                                        ; $6254: $69
	db   $ed                                         ; $6255: $ed
	and  a                                           ; $6256: $a7
	ld   l, d                                        ; $6257: $6a
	and  a                                           ; $6258: $a7
	ld   d, [hl]                                     ; $6259: $56
	ld   a, d                                        ; $625a: $7a
	sub  l                                           ; $625b: $95
	ld   [hl+], a                                    ; $625c: $22
	dec  [hl]                                        ; $625d: $35
	ld   a, c                                        ; $625e: $79
	sbc  b                                           ; $625f: $98
	add  a                                           ; $6260: $87
	ld   d, a                                        ; $6261: $57
	sub  a                                           ; $6262: $97
	cp   l                                           ; $6263: $bd
	xor  d                                           ; $6264: $aa
	adc  b                                           ; $6265: $88
	xor  c                                           ; $6266: $a9
	xor  d                                           ; $6267: $aa
	cp   e                                           ; $6268: $bb
	or   [hl]                                        ; $6269: $b6
	ld   d, [hl]                                     ; $626a: $56
	ld   a, b                                        ; $626b: $78
	sbc  c                                           ; $626c: $99
	ld   [hl], a                                     ; $626d: $77
	halt                                             ; $626e: $76
	ld   d, h                                        ; $626f: $54
	ld   h, a                                        ; $6270: $67
	adc  b                                           ; $6271: $88
	add  [hl]                                        ; $6272: $86
	ld   h, a                                        ; $6273: $67
	ld   a, b                                        ; $6274: $78
	sbc  d                                           ; $6275: $9a
	adc  c                                           ; $6276: $89
	sbc  b                                           ; $6277: $98
	xor  c                                           ; $6278: $a9
	ld   a, b                                        ; $6279: $78
	sbc  d                                           ; $627a: $9a
	cp   d                                           ; $627b: $ba
	halt                                             ; $627c: $76
	ld   a, d                                        ; $627d: $7a
	xor  c                                           ; $627e: $a9
	ld   [hl], a                                     ; $627f: $77
	ld   a, c                                        ; $6280: $79
	sub  a                                           ; $6281: $97
	ld   d, l                                        ; $6282: $55
	ld   h, a                                        ; $6283: $67
	ld   [hl], a                                     ; $6284: $77
	ld   [hl], l                                     ; $6285: $75
	ld   a, b                                        ; $6286: $78
	ld   [hl], a                                     ; $6287: $77
	adc  b                                           ; $6288: $88
	xor  d                                           ; $6289: $aa
	xor  c                                           ; $628a: $a9
	adc  d                                           ; $628b: $8a
	sbc  b                                           ; $628c: $98
	sbc  c                                           ; $628d: $99
	sbc  d                                           ; $628e: $9a
	xor  b                                           ; $628f: $a8
	ld   [hl], a                                     ; $6290: $77
	ld   a, c                                        ; $6291: $79
	adc  c                                           ; $6292: $89
	ld   [hl], a                                     ; $6293: $77
	ld   a, b                                        ; $6294: $78
	ld   [hl], a                                     ; $6295: $77
	ld   h, [hl]                                     ; $6296: $66
	ld   a, b                                        ; $6297: $78
	adc  b                                           ; $6298: $88
	halt                                             ; $6299: $76
	ld   a, b                                        ; $629a: $78
	adc  c                                           ; $629b: $89
	add  a                                           ; $629c: $87
	sbc  d                                           ; $629d: $9a
	sbc  c                                           ; $629e: $99
	sub  a                                           ; $629f: $97
	adc  d                                           ; $62a0: $8a
	sbc  e                                           ; $62a1: $9b
	xor  b                                           ; $62a2: $a8
	ld   [hl], a                                     ; $62a3: $77
	sbc  b                                           ; $62a4: $98
	add  a                                           ; $62a5: $87
	ld   a, b                                        ; $62a6: $78
	sbc  c                                           ; $62a7: $99
	ld   [hl], a                                     ; $62a8: $77
	ld   a, b                                        ; $62a9: $78
	add  a                                           ; $62aa: $87
	ld   [hl], a                                     ; $62ab: $77
	ld   a, b                                        ; $62ac: $78
	adc  b                                           ; $62ad: $88
	ld   a, b                                        ; $62ae: $78
	adc  c                                           ; $62af: $89
	add  a                                           ; $62b0: $87
	ld   [hl], a                                     ; $62b1: $77
	adc  c                                           ; $62b2: $89
	sbc  c                                           ; $62b3: $99
	add  a                                           ; $62b4: $87
	adc  c                                           ; $62b5: $89
	sbc  c                                           ; $62b6: $99
	add  a                                           ; $62b7: $87
	adc  c                                           ; $62b8: $89
	sbc  b                                           ; $62b9: $98
	ld   [hl], a                                     ; $62ba: $77
	adc  b                                           ; $62bb: $88
	xor  b                                           ; $62bc: $a8
	ld   [hl], a                                     ; $62bd: $77
	ld   [hl], a                                     ; $62be: $77
	adc  b                                           ; $62bf: $88
	ld   a, b                                        ; $62c0: $78
	adc  b                                           ; $62c1: $88
	add  a                                           ; $62c2: $87
	ld   [hl], a                                     ; $62c3: $77
	ld   a, b                                        ; $62c4: $78
	sbc  b                                           ; $62c5: $98
	sbc  b                                           ; $62c6: $98
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	sbc  b                                           ; $62ca: $98
	sbc  b                                           ; $62cb: $98
	ld   [hl], a                                     ; $62cc: $77
	adc  b                                           ; $62cd: $88
	adc  c                                           ; $62ce: $89
	adc  b                                           ; $62cf: $88
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	add  a                                           ; $62d6: $87
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	adc  b                                           ; $62da: $88
	ld   a, b                                        ; $62db: $78
	adc  b                                           ; $62dc: $88
	sbc  b                                           ; $62dd: $98
	sbc  b                                           ; $62de: $98
	adc  c                                           ; $62df: $89
	sbc  b                                           ; $62e0: $98
	adc  b                                           ; $62e1: $88
	adc  c                                           ; $62e2: $89
	sbc  b                                           ; $62e3: $98
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	adc  b                                           ; $62e9: $88
	adc  b                                           ; $62ea: $88
	adc  b                                           ; $62eb: $88
	adc  b                                           ; $62ec: $88
	ld   [hl], a                                     ; $62ed: $77
	adc  b                                           ; $62ee: $88
	adc  b                                           ; $62ef: $88
	adc  b                                           ; $62f0: $88
	adc  b                                           ; $62f1: $88
	adc  b                                           ; $62f2: $88
	adc  b                                           ; $62f3: $88
	adc  b                                           ; $62f4: $88
	adc  b                                           ; $62f5: $88
	adc  b                                           ; $62f6: $88
	adc  b                                           ; $62f7: $88
	adc  b                                           ; $62f8: $88
	sbc  b                                           ; $62f9: $98
	adc  b                                           ; $62fa: $88
	adc  b                                           ; $62fb: $88
	adc  b                                           ; $62fc: $88
	adc  b                                           ; $62fd: $88
	adc  b                                           ; $62fe: $88
	adc  b                                           ; $62ff: $88
	adc  b                                           ; $6300: $88
	adc  b                                           ; $6301: $88
	adc  b                                           ; $6302: $88
	adc  b                                           ; $6303: $88
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	adc  b                                           ; $6307: $88
	adc  b                                           ; $6308: $88
	adc  b                                           ; $6309: $88
	adc  b                                           ; $630a: $88
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
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
	ld   de, $1111                                   ; $632e: $11 $11 $11
	ld   de, $1111                                   ; $6331: $11 $11 $11
	ld   de, $1111                                   ; $6334: $11 $11 $11
	ld   de, $1111                                   ; $6337: $11 $11 $11
	ld   de, $1111                                   ; $633a: $11 $11 $11
	ld   de, $1111                                   ; $633d: $11 $11 $11
	ld   de, $1111                                   ; $6340: $11 $11 $11
	ld   de, $1111                                   ; $6343: $11 $11 $11
	ld   de, $1111                                   ; $6346: $11 $11 $11
	ld   de, $1111                                   ; $6349: $11 $11 $11
	ld   de, $1111                                   ; $634c: $11 $11 $11
	ld   de, $1111                                   ; $634f: $11 $11 $11
	ld   de, $1111                                   ; $6352: $11 $11 $11
	ld   de, $1111                                   ; $6355: $11 $11 $11
	ld   de, $1111                                   ; $6358: $11 $11 $11
	ld   de, $1111                                   ; $635b: $11 $11 $11
	ld   de, $1111                                   ; $635e: $11 $11 $11
	ld   de, $1111                                   ; $6361: $11 $11 $11
	ld   de, $0011                                   ; $6364: $11 $11 $00
	ld   c, b                                        ; $6367: $48
	ld   de, $1111                                   ; $6368: $11 $11 $11
	ld   de, $1111                                   ; $636b: $11 $11 $11
	ld   de, $1111                                   ; $636e: $11 $11 $11
	ld   de, $5413                                   ; $6371: $11 $13 $54
	ld   d, h                                        ; $6374: $54
	ld   d, h                                        ; $6375: $54
	ld   b, c                                        ; $6376: $41
	rra                                              ; $6377: $1f
	rst  $38                                         ; $6378: $ff
	pop  af                                          ; $6379: $f1
	ld   de, $1311                                   ; $637a: $11 $11 $13
	pop  af                                          ; $637d: $f1
	ld   de, $dd1c                                   ; $637e: $11 $1c $dd
	call c, $d1dd                                    ; $6381: $dc $dd $d1
	ld   de, $1111                                   ; $6384: $11 $11 $11
	ld   de, $1111                                   ; $6387: $11 $11 $11
	ld   de, $1111                                   ; $638a: $11 $11 $11
	ld   de, $1111                                   ; $638d: $11 $11 $11
	ld   de, $5411                                   ; $6390: $11 $11 $54
	ld   b, h                                        ; $6393: $44
	db   $e3                                         ; $6394: $e3
	ld   de, $5454                                   ; $6395: $11 $54 $54
	ld   h, a                                        ; $6398: $67
	ld   [hl], d                                     ; $6399: $72
	ld   de, $1111                                   ; $639a: $11 $11 $11
	ld   de, $1112                                   ; $639d: $11 $12 $11
	ld   [de], a                                     ; $63a0: $12
	ld   de, $1111                                   ; $63a1: $11 $11 $11
	ld   h, [hl]                                     ; $63a4: $66
	halt                                             ; $63a5: $76
	db   $d3                                         ; $63a6: $d3
	ld   de, $8888                                   ; $63a7: $11 $88 $88
	adc  c                                           ; $63aa: $89
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	sbc  c                                           ; $63ae: $99
	adc  c                                           ; $63af: $89
	ld   a, b                                        ; $63b0: $78
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
	adc  c                                           ; $63bd: $89
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	add  a                                           ; $63c4: $87
	adc  b                                           ; $63c5: $88
	ld   a, d                                        ; $63c6: $7a
	and  a                                           ; $63c7: $a7
	add  a                                           ; $63c8: $87
	sbc  b                                           ; $63c9: $98
	ld   a, c                                        ; $63ca: $79
	ld   a, b                                        ; $63cb: $78
	ld   a, b                                        ; $63cc: $78
	adc  b                                           ; $63cd: $88
	add  a                                           ; $63ce: $87
	sub  a                                           ; $63cf: $97
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
	add  a                                           ; $63db: $87
	sbc  d                                           ; $63dc: $9a
	ld   l, b                                        ; $63dd: $68
	sub  a                                           ; $63de: $97
	adc  b                                           ; $63df: $88
	add  a                                           ; $63e0: $87
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	ld   a, b                                        ; $63e3: $78
	adc  b                                           ; $63e4: $88
	adc  c                                           ; $63e5: $89
	sbc  b                                           ; $63e6: $98
	adc  b                                           ; $63e7: $88
	ld   a, c                                        ; $63e8: $79
	adc  b                                           ; $63e9: $88
	add  [hl]                                        ; $63ea: $86
	adc  [hl]                                        ; $63eb: $8e
	sub  [hl]                                        ; $63ec: $96
	sub  [hl]                                        ; $63ed: $96
	adc  b                                           ; $63ee: $88
	adc  c                                           ; $63ef: $89
	adc  b                                           ; $63f0: $88
	ld   l, b                                        ; $63f1: $68
	adc  b                                           ; $63f2: $88
	adc  b                                           ; $63f3: $88
	add  a                                           ; $63f4: $87
	sbc  c                                           ; $63f5: $99
	adc  b                                           ; $63f6: $88
	adc  b                                           ; $63f7: $88
	sbc  b                                           ; $63f8: $98
	ld   a, b                                        ; $63f9: $78
	adc  b                                           ; $63fa: $88
	add  a                                           ; $63fb: $87
	add  [hl]                                        ; $63fc: $86
	sbc  d                                           ; $63fd: $9a
	ld   h, a                                        ; $63fe: $67
	ld   [hl], a                                     ; $63ff: $77
	sbc  b                                           ; $6400: $98
	add  a                                           ; $6401: $87
	add  a                                           ; $6402: $87
	ld   a, b                                        ; $6403: $78
	adc  c                                           ; $6404: $89
	adc  c                                           ; $6405: $89
	ld   a, c                                        ; $6406: $79
	sub  a                                           ; $6407: $97
	adc  c                                           ; $6408: $89
	ld   a, b                                        ; $6409: $78
	sbc  c                                           ; $640a: $99
	add  a                                           ; $640b: $87
	sbc  b                                           ; $640c: $98
	sub  a                                           ; $640d: $97
	adc  b                                           ; $640e: $88
	ld   a, b                                        ; $640f: $78
	ld   a, c                                        ; $6410: $79
	cp   c                                           ; $6411: $b9
	ld   e, b                                        ; $6412: $58
	halt                                             ; $6413: $76
	adc  b                                           ; $6414: $88
	xor  c                                           ; $6415: $a9
	halt                                             ; $6416: $76
	add  a                                           ; $6417: $87
	sbc  c                                           ; $6418: $99
	ld   a, b                                        ; $6419: $78
	add  a                                           ; $641a: $87
	sbc  c                                           ; $641b: $99
	ld   a, b                                        ; $641c: $78
	adc  b                                           ; $641d: $88
	adc  c                                           ; $641e: $89
	sbc  b                                           ; $641f: $98
	sub  a                                           ; $6420: $97
	sub  a                                           ; $6421: $97
	adc  c                                           ; $6422: $89
	ld   a, b                                        ; $6423: $78
	ld   a, c                                        ; $6424: $79
	ld   [hl], a                                     ; $6425: $77
	add  a                                           ; $6426: $87
	adc  b                                           ; $6427: $88
	sub  a                                           ; $6428: $97
	sbc  b                                           ; $6429: $98
	ld   a, c                                        ; $642a: $79
	adc  b                                           ; $642b: $88
	sbc  b                                           ; $642c: $98
	adc  b                                           ; $642d: $88
	adc  c                                           ; $642e: $89
	add  a                                           ; $642f: $87
	sbc  b                                           ; $6430: $98
	sbc  c                                           ; $6431: $99
	ld   a, c                                        ; $6432: $79
	ld   a, b                                        ; $6433: $78
	ld   a, b                                        ; $6434: $78
	adc  c                                           ; $6435: $89
	sbc  c                                           ; $6436: $99
	sub  [hl]                                        ; $6437: $96
	sbc  b                                           ; $6438: $98
	ld   [hl], a                                     ; $6439: $77
	sbc  d                                           ; $643a: $9a
	sub  a                                           ; $643b: $97
	adc  e                                           ; $643c: $8b
	ld   [hl], a                                     ; $643d: $77
	add  a                                           ; $643e: $87
	add  a                                           ; $643f: $87
	ld   h, a                                        ; $6440: $67
	add  a                                           ; $6441: $87
	and  [hl]                                        ; $6442: $a6
	adc  c                                           ; $6443: $89
	adc  c                                           ; $6444: $89
	ld   a, c                                        ; $6445: $79
	sbc  c                                           ; $6446: $99
	ld   a, b                                        ; $6447: $78
	add  a                                           ; $6448: $87
	ld   l, c                                        ; $6449: $69
	add  a                                           ; $644a: $87
	sbc  b                                           ; $644b: $98
	add  [hl]                                        ; $644c: $86
	adc  b                                           ; $644d: $88
	ld   a, e                                        ; $644e: $7b
	xor  c                                           ; $644f: $a9
	adc  e                                           ; $6450: $8b
	sbc  b                                           ; $6451: $98
	sub  [hl]                                        ; $6452: $96
	add  [hl]                                        ; $6453: $86
	add  [hl]                                        ; $6454: $86
	ld   l, d                                        ; $6455: $6a
	add  a                                           ; $6456: $87
	ld   a, c                                        ; $6457: $79
	adc  c                                           ; $6458: $89
	sbc  b                                           ; $6459: $98
	xor  d                                           ; $645a: $aa
	add  a                                           ; $645b: $87
	ld   h, a                                        ; $645c: $67
	adc  c                                           ; $645d: $89
	sub  a                                           ; $645e: $97
	adc  b                                           ; $645f: $88
	ld   [hl], a                                     ; $6460: $77
	add  a                                           ; $6461: $87
	adc  b                                           ; $6462: $88
	ld   a, b                                        ; $6463: $78
	ld   a, c                                        ; $6464: $79
	adc  c                                           ; $6465: $89
	sbc  c                                           ; $6466: $99
	ld   h, a                                        ; $6467: $67
	ld   a, c                                        ; $6468: $79
	ld   [hl], a                                     ; $6469: $77
	sbc  c                                           ; $646a: $99
	and  l                                           ; $646b: $a5
	add  [hl]                                        ; $646c: $86
	sbc  b                                           ; $646d: $98
	ld   e, b                                        ; $646e: $58
	ld   a, c                                        ; $646f: $79
	ld   l, h                                        ; $6470: $6c
	ld   [hl], l                                     ; $6471: $75
	add  a                                           ; $6472: $87
	xor  b                                           ; $6473: $a8
	xor  b                                           ; $6474: $a8
	sub  a                                           ; $6475: $97
	ld   [hl], a                                     ; $6476: $77
	ld   l, b                                        ; $6477: $68
	add  a                                           ; $6478: $87
	ld   d, a                                        ; $6479: $57
	adc  d                                           ; $647a: $8a
	sub  l                                           ; $647b: $95
	adc  c                                           ; $647c: $89
	ld   a, d                                        ; $647d: $7a
	adc  d                                           ; $647e: $8a
	ld   l, c                                        ; $647f: $69
	sub  l                                           ; $6480: $95
	add  h                                           ; $6481: $84
	adc  b                                           ; $6482: $88
	ld   h, [hl]                                     ; $6483: $66
	ld   h, a                                        ; $6484: $67
	ld   [hl], a                                     ; $6485: $77
	ld   a, c                                        ; $6486: $79
	ld   a, c                                        ; $6487: $79
	xor  c                                           ; $6488: $a9
	sbc  e                                           ; $6489: $9b
	xor  c                                           ; $648a: $a9
	cp   b                                           ; $648b: $b8
	adc  c                                           ; $648c: $89
	and  a                                           ; $648d: $a7
	ld   h, l                                        ; $648e: $65
	scf                                              ; $648f: $37
	ld   b, l                                        ; $6490: $45
	inc  [hl]                                        ; $6491: $34
	ld   h, [hl]                                     ; $6492: $66
	ld   [hl], a                                     ; $6493: $77
	xor  b                                           ; $6494: $a8
	xor  l                                           ; $6495: $ad
	cp   l                                           ; $6496: $bd
	set  1, l                                        ; $6497: $cb $cd
	sub  a                                           ; $6499: $97
	ld   a, b                                        ; $649a: $78
	ld   [hl], l                                     ; $649b: $75
	ld   h, e                                        ; $649c: $63
	ld   b, d                                        ; $649d: $42
	inc  h                                           ; $649e: $24
	inc  h                                           ; $649f: $24
	ld   b, l                                        ; $64a0: $45
	adc  b                                           ; $64a1: $88
	cp   h                                           ; $64a2: $bc
	rst  JumpTable                                         ; $64a3: $df
	rst  $38                                         ; $64a4: $ff
	xor  $dc                                         ; $64a5: $ee $dc
	ret                                              ; $64a7: $c9


	ld   c, b                                        ; $64a8: $48

Jump_0f3_64a9:
	ld   h, c                                        ; $64a9: $61
	ld   de, $2132                                   ; $64aa: $11 $32 $21
	inc  de                                          ; $64ad: $13
	ld   b, a                                        ; $64ae: $47
	sbc  d                                           ; $64af: $9a
	rst  JumpTable                                         ; $64b0: $df
	rst  $38                                         ; $64b1: $ff
	cp   $fe                                         ; $64b2: $fe $fe
	ret                                              ; $64b4: $c9


	sbc  b                                           ; $64b5: $98
	ld   h, [hl]                                     ; $64b6: $66
	ld   de, $1111                                   ; $64b7: $11 $11 $11
	ld   hl, $7a42                                   ; $64ba: $21 $42 $7a
	cp   a                                           ; $64bd: $bf
	rst  $28                                         ; $64be: $ef
	rst  $38                                         ; $64bf: $ff
	rst  $38                                         ; $64c0: $ff
	db   $ec                                         ; $64c1: $ec
	ret                                              ; $64c2: $c9


	ld   d, l                                        ; $64c3: $55
	ld   b, c                                        ; $64c4: $41
	ld   de, $1111                                   ; $64c5: $11 $11 $11
	ld   de, $af38                                   ; $64c8: $11 $38 $af
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	rst  $38                                         ; $64cd: $ff
	rst  $38                                         ; $64ce: $ff
	rst  ToBoot                                         ; $64cf: $c7
	ld   [hl], l                                     ; $64d0: $75
	ld   d, c                                        ; $64d1: $51
	ld   de, $1111                                   ; $64d2: $11 $11 $11
	ld   de, $bc26                                   ; $64d5: $11 $26 $bc
	rst  $38                                         ; $64d8: $ff
	rst  $38                                         ; $64d9: $ff
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	db   $eb                                         ; $64dc: $eb
	ld   h, e                                        ; $64dd: $63
	ld   [hl-], a                                    ; $64de: $32
	ld   de, $1111                                   ; $64df: $11 $11 $11
	ld   de, $af25                                   ; $64e2: $11 $25 $af
	rst  $38                                         ; $64e5: $ff
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	ei                                               ; $64e9: $fb
	ld   [hl], d                                     ; $64ea: $72
	ld   de, $1111                                   ; $64eb: $11 $11 $11
	ld   de, $3713                                   ; $64ee: $11 $13 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f1: $cf
	rst  $38                                         ; $64f2: $ff
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	ld   sp, hl                                      ; $64f6: $f9
	ld   b, c                                        ; $64f7: $41
	ld   de, $1111                                   ; $64f8: $11 $11 $11
	ld   de, $7c44                                   ; $64fb: $11 $44 $7c
	rst  $38                                         ; $64fe: $ff
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	or   e                                           ; $6503: $b3
	ld   de, $1111                                   ; $6504: $11 $11 $11
	ld   de, $7c24                                   ; $6507: $11 $24 $7c
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	rst  $38                                         ; $650d: $ff
	rst  $38                                         ; $650e: $ff
	ret  z                                           ; $650f: $c8

	ld   de, $1111                                   ; $6510: $11 $11 $11
	ld   de, $7c15                                   ; $6513: $11 $15 $7c
	rst  $38                                         ; $6516: $ff
	rst  $38                                         ; $6517: $ff
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	rst  ToBoot                                         ; $651b: $c7
	ld   de, $1111                                   ; $651c: $11 $11 $11
	ld   de, $8d36                                   ; $651f: $11 $36 $8d
	rst  $38                                         ; $6522: $ff
	rst  $38                                         ; $6523: $ff
	rst  $38                                         ; $6524: $ff
	rst  $38                                         ; $6525: $ff
	db   $ed                                         ; $6526: $ed
	sub  l                                           ; $6527: $95
	ld   de, $1111                                   ; $6528: $11 $11 $11
	ld   [de], a                                     ; $652b: $12
	ld   d, a                                        ; $652c: $57
	xor  a                                           ; $652d: $af
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	rst  $38                                         ; $6530: $ff
	cp   $b9                                         ; $6531: $fe $b9
	ld   h, e                                        ; $6533: $63
	ld   de, $1111                                   ; $6534: $11 $11 $11
	dec  h                                           ; $6537: $25
	adc  e                                           ; $6538: $8b
	rst  $38                                         ; $6539: $ff
	rst  $38                                         ; $653a: $ff
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	jp   c, $2195                                    ; $653d: $da $95 $21

	ld   de, $1111                                   ; $6540: $11 $11 $11
	ld   l, c                                        ; $6543: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6544: $cf
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	sub  a                                           ; $6549: $97
	ld   sp, $1111                                   ; $654a: $31 $11 $11
	ld   de, $8d37                                   ; $654d: $11 $37 $8d
	rst  $38                                         ; $6550: $ff
	rst  $38                                         ; $6551: $ff
	rst  $38                                         ; $6552: $ff
	rst  $38                                         ; $6553: $ff
	ld   hl, sp+$63                                  ; $6554: $f8 $63
	ld   de, $1111                                   ; $6556: $11 $11 $11
	ld   d, $79                                      ; $6559: $16 $79
	rst  JumpTable                                         ; $655b: $df
	rst  $38                                         ; $655c: $ff
	rst  $38                                         ; $655d: $ff
	rst  $38                                         ; $655e: $ff
	cp   $74                                         ; $655f: $fe $74
	ld   de, $1111                                   ; $6561: $11 $11 $11
	ld   [de], a                                     ; $6564: $12
	sbc  c                                           ; $6565: $99
	sbc  a                                           ; $6566: $9f
	rst  $38                                         ; $6567: $ff
	rst  $38                                         ; $6568: $ff
	rst  $38                                         ; $6569: $ff
	rst  $38                                         ; $656a: $ff
	call nz, $1121                                   ; $656b: $c4 $21 $11
	ld   de, $6c11                                   ; $656e: $11 $11 $6c
	sbc  h                                           ; $6571: $9c
	rst  $38                                         ; $6572: $ff
	rst  $38                                         ; $6573: $ff
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	and  $21                                         ; $6576: $e6 $21
	ld   de, $1111                                   ; $6578: $11 $11 $11
	ld   l, h                                        ; $657b: $6c
	xor  e                                           ; $657c: $ab
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	rst  $38                                         ; $657f: $ff
	rst  $38                                         ; $6580: $ff
	ld   hl, sp+$11                                  ; $6581: $f8 $11
	ld   de, $1111                                   ; $6583: $11 $11 $11
	ld   l, l                                        ; $6586: $6d
	cp   e                                           ; $6587: $bb
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	ld   sp, hl                                      ; $658c: $f9
	ld   de, $1111                                   ; $658d: $11 $11 $11
	ld   de, $bb7e                                   ; $6590: $11 $7e $bb
	rst  $38                                         ; $6593: $ff
	rst  $38                                         ; $6594: $ff
	rst  $38                                         ; $6595: $ff
	rst  $38                                         ; $6596: $ff
	ld   sp, hl                                      ; $6597: $f9
	ld   de, $1111                                   ; $6598: $11 $11 $11
	ld   de, $dd8e                                   ; $659b: $11 $8e $dd
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	add  sp, $11                                     ; $65a2: $e8 $11
	ld   de, $1111                                   ; $65a4: $11 $11 $11

Jump_0f3_65a7:
	xor  a                                           ; $65a7: $af
	sbc  $ff                                         ; $65a8: $de $ff
	rst  $38                                         ; $65aa: $ff
	rst  $38                                         ; $65ab: $ff
	rst  $38                                         ; $65ac: $ff
	and  $11                                         ; $65ad: $e6 $11
	ld   de, $1211                                   ; $65af: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65b2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65b3: $cf
	rst  $38                                         ; $65b4: $ff
	rst  $38                                         ; $65b5: $ff
	cp   $ff                                         ; $65b6: $fe $ff
	jp   $1111                                       ; $65b8: $c3 $11 $11


	ld   de, $ef15                                   ; $65bb: $11 $15 $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65be: $cf
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	rst  $38                                         ; $65c1: $ff
	rst  $38                                         ; $65c2: $ff
	or   d                                           ; $65c3: $b2
	ld   de, $1111                                   ; $65c4: $11 $11 $11
	ld   a, [de]                                     ; $65c7: $1a
	cp   $bf                                         ; $65c8: $fe $bf
	rst  $38                                         ; $65ca: $ff
	rst  $38                                         ; $65cb: $ff
	rst  $38                                         ; $65cc: $ff
	db   $fd                                         ; $65cd: $fd
	and  c                                           ; $65ce: $a1
	ld   de, $1111                                   ; $65cf: $11 $11 $11
	inc  e                                           ; $65d2: $1c
	ei                                               ; $65d3: $fb
	rst  JumpTable                                         ; $65d4: $df
	rst  $38                                         ; $65d5: $ff
	rst  $38                                         ; $65d6: $ff
	rst  $28                                         ; $65d7: $ef
	ld   a, [$2171]                                  ; $65d8: $fa $71 $21
	ld   de, $4f11                                   ; $65db: $11 $11 $4f
	jp   z, $ffff                                    ; $65de: $ca $ff $ff

	rst  $38                                         ; $65e1: $ff
	rst  $38                                         ; $65e2: $ff
	ld   sp, hl                                      ; $65e3: $f9
	ld   b, c                                        ; $65e4: $41
	ld   hl, $1111                                   ; $65e5: $21 $11 $11
	xor  l                                           ; $65e8: $ad
	ret  z                                           ; $65e9: $c8

	rst  $38                                         ; $65ea: $ff
	rst  $38                                         ; $65eb: $ff
	rst  $38                                         ; $65ec: $ff
	rst  $38                                         ; $65ed: $ff
	ret  z                                           ; $65ee: $c8

	ld   [hl+], a                                    ; $65ef: $22
	ld   de, $1111                                   ; $65f0: $11 $11 $11
	cp   d                                           ; $65f3: $ba
	adc  e                                           ; $65f4: $8b
	rst  $38                                         ; $65f5: $ff
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	halt                                             ; $65f9: $76
	dec  h                                           ; $65fa: $25
	ld   de, $1611                                   ; $65fb: $11 $11 $16
	and  a                                           ; $65fe: $a7
	ld   l, a                                        ; $65ff: $6f
	rst  $38                                         ; $6600: $ff
	rst  $38                                         ; $6601: $ff
	rst  $38                                         ; $6602: $ff
	db   $fd                                         ; $6603: $fd
	ld   [hl], a                                     ; $6604: $77
	ld   d, [hl]                                     ; $6605: $56
	ld   de, $1611                                   ; $6606: $11 $11 $16
	ld   d, l                                        ; $6609: $55
	xor  a                                           ; $660a: $af
	rst  $38                                         ; $660b: $ff
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	or   $88                                         ; $660e: $f6 $88
	ld   [hl], c                                     ; $6610: $71
	ld   de, $2311                                   ; $6611: $11 $11 $23
	ld   b, [hl]                                     ; $6614: $46
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	rst  $38                                         ; $6618: $ff
	push af                                          ; $6619: $f5
	reti                                             ; $661a: $d9


	ld   h, c                                        ; $661b: $61
	ld   de, $1111                                   ; $661c: $11 $11 $11
	ld   l, d                                        ; $661f: $6a
	rst  $38                                         ; $6620: $ff
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	rst  $38                                         ; $6623: $ff
	cp   c                                           ; $6624: $b9
	push af                                          ; $6625: $f5
	ld   b, c                                        ; $6626: $41
	ld   de, $1111                                   ; $6627: $11 $11 $11
	sbc  e                                           ; $662a: $9b
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	rst  $38                                         ; $662d: $ff
	rst  $38                                         ; $662e: $ff
	xor  l                                           ; $662f: $ad
	jp   $1111                                       ; $6630: $c3 $11 $11


	ld   de, $9c13                                   ; $6633: $11 $13 $9c
	rst  $38                                         ; $6636: $ff
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	rst  $38                                         ; $6639: $ff
	sbc  a                                           ; $663a: $9f
	sub  h                                           ; $663b: $94
	ld   de, $1111                                   ; $663c: $11 $11 $11
	inc  de                                          ; $663f: $13
	sbc  [hl]                                        ; $6640: $9e
	rst  $38                                         ; $6641: $ff
	rst  $38                                         ; $6642: $ff
	rst  $38                                         ; $6643: $ff
	rst  $38                                         ; $6644: $ff
	xor  a                                           ; $6645: $af
	ld   [hl], e                                     ; $6646: $73
	ld   de, $1111                                   ; $6647: $11 $11 $11
	dec  d                                           ; $664a: $15
	sbc  a                                           ; $664b: $9f
	rst  $38                                         ; $664c: $ff
	rst  $38                                         ; $664d: $ff
	rst  $38                                         ; $664e: $ff
	rst  $38                                         ; $664f: $ff
	cp   a                                           ; $6650: $bf
	ld   b, e                                        ; $6651: $43
	ld   de, $1111                                   ; $6652: $11 $11 $11
	dec  d                                           ; $6655: $15
	adc  a                                           ; $6656: $8f
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	rst  $38                                         ; $6659: $ff
	rst  $38                                         ; $665a: $ff
	rst  $28                                         ; $665b: $ef
	ld   [hl-], a                                    ; $665c: $32
	ld   de, $1111                                   ; $665d: $11 $11 $11
	dec  d                                           ; $6660: $15
	ld   a, a                                        ; $6661: $7f
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	rst  $38                                         ; $6664: $ff
	rst  $38                                         ; $6665: $ff
	cp   $32                                         ; $6666: $fe $32
	ld   de, $1111                                   ; $6668: $11 $11 $11
	inc  de                                          ; $666b: $13
	ld   l, a                                        ; $666c: $6f
	rst  $38                                         ; $666d: $ff
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	rst  $38                                         ; $6670: $ff
	rst  $38                                         ; $6671: $ff
	inc  [hl]                                        ; $6672: $34
	ld   de, $1111                                   ; $6673: $11 $11 $11
	ld   de, $ff5e                                   ; $6676: $11 $5e $ff
	rst  $38                                         ; $6679: $ff
	rst  $38                                         ; $667a: $ff
	rst  $38                                         ; $667b: $ff
	rst  $38                                         ; $667c: $ff
	ld   [hl], $11                                   ; $667d: $36 $11
	ld   de, $1111                                   ; $667f: $11 $11 $11
	ld   e, e                                        ; $6682: $5b
	rst  $38                                         ; $6683: $ff
	rst  $38                                         ; $6684: $ff
	rst  $38                                         ; $6685: $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	ld   b, a                                        ; $6688: $47
	ld   h, c                                        ; $6689: $61
	ld   de, $1111                                   ; $668a: $11 $11 $11
	ld   b, a                                        ; $668d: $47
	ei                                               ; $668e: $fb
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	rst  $28                                         ; $6691: $ef
	rst  $38                                         ; $6692: $ff
	adc  c                                           ; $6693: $89
	or   c                                           ; $6694: $b1
	ld   de, $1111                                   ; $6695: $11 $11 $11
	jr   @+$7b                                       ; $6698: $18 $79

	rst  JumpTable                                         ; $669a: $df
	rst  $38                                         ; $669b: $ff
	rst  $38                                         ; $669c: $ff
	rst  $38                                         ; $669d: $ff
	sbc  $f5                                         ; $669e: $de $f5
	ld   de, $1111                                   ; $66a0: $11 $11 $11
	ld   de, $7f32                                   ; $66a3: $11 $32 $7f
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	rst  $38                                         ; $66a8: $ff
	rst  $38                                         ; $66a9: $ff
	cp   $51                                         ; $66aa: $fe $51
	ld   hl, $2111                                   ; $66ac: $21 $11 $21
	inc  de                                          ; $66af: $13
	ld   b, e                                        ; $66b0: $43
	adc  a                                           ; $66b1: $8f
	rst  $38                                         ; $66b2: $ff
	rst  $38                                         ; $66b3: $ff
	rst  $38                                         ; $66b4: $ff
	rst  JumpTable                                         ; $66b5: $df
	db   $fc                                         ; $66b6: $fc
	ld   d, $41                                      ; $66b7: $16 $41
	ld   de, $1421                                   ; $66b9: $11 $21 $14
	ld   sp, $fe4c                                   ; $66bc: $31 $4c $fe
	rst  $38                                         ; $66bf: $ff
	rst  $38                                         ; $66c0: $ff
	rst  JumpTable                                         ; $66c1: $df
	ld   hl, sp+$4c                                  ; $66c2: $f8 $4c
	add  c                                           ; $66c4: $81
	dec  d                                           ; $66c5: $15

Jump_0f3_66c6:
	ld   hl, $2111                                   ; $66c6: $21 $11 $21
	rla                                              ; $66c9: $17
	rst  $30                                         ; $66ca: $f7
	adc  a                                           ; $66cb: $8f
	rst  $38                                         ; $66cc: $ff
	rst  $28                                         ; $66cd: $ef
	cp   $7e                                         ; $66ce: $fe $7e
	push bc                                          ; $66d0: $c5
	ld   h, $61                                      ; $66d1: $26 $61
	ld   de, $1211                                   ; $66d3: $11 $11 $12
	daa                                              ; $66d6: $27
	ld   l, b                                        ; $66d7: $68
	db   $dd                                         ; $66d8: $dd
	rst  $38                                         ; $66d9: $ff
	rst  $38                                         ; $66da: $ff
	cp   $ad                                         ; $66db: $fe $ad
	ret                                              ; $66dd: $c9


	ld   a, c                                        ; $66de: $79
	ld   d, c                                        ; $66df: $51
	ld   hl, $1111                                   ; $66e0: $21 $11 $11
	ld   d, $76                                      ; $66e3: $16 $76
	cp   [hl]                                        ; $66e5: $be
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	db   $fd                                         ; $66e8: $fd
	rst  JumpTable                                         ; $66e9: $df
	db   $db                                         ; $66ea: $db
	cp   d                                           ; $66eb: $ba
	ld   d, d                                        ; $66ec: $52
	ld   hl, $1111                                   ; $66ed: $21 $11 $11
	inc  de                                          ; $66f0: $13
	ld   h, [hl]                                     ; $66f1: $66
	sbc  h                                           ; $66f2: $9c
	db   $fd                                         ; $66f3: $fd
	rst  $38                                         ; $66f4: $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	db   $fd                                         ; $66f7: $fd
	jp   z, $1151                                    ; $66f8: $ca $51 $11

	ld   de, $1411                                   ; $66fb: $11 $11 $14
	adc  b                                           ; $66fe: $88
	cp   a                                           ; $66ff: $bf
	db   $fd                                         ; $6700: $fd
	rst  $38                                         ; $6701: $ff
	rst  $38                                         ; $6702: $ff
	rst  $38                                         ; $6703: $ff
	db   $eb                                         ; $6704: $eb
	and  l                                           ; $6705: $a5
	ld   de, $1111                                   ; $6706: $11 $11 $11
	ld   de, $8a29                                   ; $6709: $11 $29 $8a
	rst  JumpTable                                         ; $670c: $df
	rst  $28                                         ; $670d: $ef
	rst  $38                                         ; $670e: $ff
	rst  $38                                         ; $670f: $ff
	rst  $38                                         ; $6710: $ff
	jp   z, $1151                                    ; $6711: $ca $51 $11

	ld   de, $1411                                   ; $6714: $11 $11 $14
	adc  d                                           ; $6717: $8a
	cp   l                                           ; $6718: $bd
	rst  $38                                         ; $6719: $ff
	rst  $38                                         ; $671a: $ff
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	db   $fd                                         ; $671d: $fd
	add  d                                           ; $671e: $82
	ld   de, $1111                                   ; $671f: $11 $11 $11
	ld   de, $ac59                                   ; $6722: $11 $59 $ac
	rst  $28                                         ; $6725: $ef
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	cp   $b6                                         ; $6729: $fe $b6
	ld   de, $1111                                   ; $672b: $11 $11 $11
	ld   de, $9b26                                   ; $672e: $11 $26 $9b
	sbc  $ff                                         ; $6731: $de $ff
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	rst  $38                                         ; $6735: $ff
	ld   [$1141], a                                  ; $6736: $ea $41 $11
	ld   de, $1411                                   ; $6739: $11 $11 $14
	sbc  d                                           ; $673c: $9a
	call $ffff                                       ; $673d: $cd $ff $ff
	rst  $38                                         ; $6740: $ff
	rst  $38                                         ; $6741: $ff
	db   $fc                                         ; $6742: $fc
	add  d                                           ; $6743: $82
	ld   de, $1111                                   ; $6744: $11 $11 $11
	ld   de, $ab69                                   ; $6747: $11 $69 $ab
	rst  $28                                         ; $674a: $ef
	rst  $38                                         ; $674b: $ff
	rst  $38                                         ; $674c: $ff
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	or   l                                           ; $674f: $b5
	ld   de, $1111                                   ; $6750: $11 $11 $11
	ld   de, $9a37                                   ; $6753: $11 $37 $9a
	cp   l                                           ; $6756: $bd
	rst  $38                                         ; $6757: $ff
	rst  $38                                         ; $6758: $ff
	rst  $38                                         ; $6759: $ff
	rst  $38                                         ; $675a: $ff
	jp   c, $1131                                    ; $675b: $da $31 $11

	ld   de, $1411                                   ; $675e: $11 $11 $14
	adc  c                                           ; $6761: $89
	cp   h                                           ; $6762: $bc
	rst  $28                                         ; $6763: $ef
	rst  $38                                         ; $6764: $ff
	rst  $38                                         ; $6765: $ff
	rst  $38                                         ; $6766: $ff
	db   $fd                                         ; $6767: $fd
	ld   [hl], c                                     ; $6768: $71
	ld   de, $1111                                   ; $6769: $11 $11 $11
	ld   [de], a                                     ; $676c: $12
	ld   a, b                                        ; $676d: $78
	sbc  h                                           ; $676e: $9c
	rst  JumpTable                                         ; $676f: $df
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	rst  $38                                         ; $6773: $ff
	or   h                                           ; $6774: $b4
	ld   de, $1111                                   ; $6775: $11 $11 $11
	ld   de, $8b48                                   ; $6778: $11 $48 $8b
	cp   h                                           ; $677b: $bc
	rst  $28                                         ; $677c: $ef
	rst  $38                                         ; $677d: $ff
	rst  $38                                         ; $677e: $ff
	rst  $38                                         ; $677f: $ff
	jp   hl                                          ; $6780: $e9


	ld   hl, $1111                                   ; $6781: $21 $11 $11
	ld   de, $8916                                   ; $6784: $11 $16 $89
	cp   h                                           ; $6787: $bc
	rst  JumpTable                                         ; $6788: $df
	rst  $38                                         ; $6789: $ff
	rst  $38                                         ; $678a: $ff
	rst  $38                                         ; $678b: $ff
	db   $fd                                         ; $678c: $fd
	ld   [hl], c                                     ; $678d: $71
	ld   de, $1111                                   ; $678e: $11 $11 $11
	ld   [de], a                                     ; $6791: $12
	ld   a, b                                        ; $6792: $78
	xor  d                                           ; $6793: $aa
	adc  $ff                                         ; $6794: $ce $ff
	rst  $38                                         ; $6796: $ff
	rst  $38                                         ; $6797: $ff
	rst  $38                                         ; $6798: $ff
	call nz, $1111                                   ; $6799: $c4 $11 $11
	ld   de, $4811                                   ; $679c: $11 $11 $48
	adc  d                                           ; $679f: $8a
	cp   h                                           ; $67a0: $bc
	rst  JumpTable                                         ; $67a1: $df
	rst  $38                                         ; $67a2: $ff
	rst  $38                                         ; $67a3: $ff
	rst  $38                                         ; $67a4: $ff
	ld   a, [$1131]                                  ; $67a5: $fa $31 $11
	ld   de, $1511                                   ; $67a8: $11 $11 $15
	adc  b                                           ; $67ab: $88
	xor  d                                           ; $67ac: $aa
	adc  $ff                                         ; $67ad: $ce $ff
	rst  $38                                         ; $67af: $ff
	rst  $38                                         ; $67b0: $ff
	rst  $38                                         ; $67b1: $ff
	sub  c                                           ; $67b2: $91
	ld   de, $1111                                   ; $67b3: $11 $11 $11
	ld   [de], a                                     ; $67b6: $12
	ld   h, a                                        ; $67b7: $67
	adc  d                                           ; $67b8: $8a
	xor  h                                           ; $67b9: $ac
	rst  $28                                         ; $67ba: $ef
	rst  $38                                         ; $67bb: $ff
	rst  $38                                         ; $67bc: $ff
	rst  $38                                         ; $67bd: $ff
	rst  $20                                         ; $67be: $e7
	ld   de, $1111                                   ; $67bf: $11 $11 $11
	ld   de, $7826                                   ; $67c2: $11 $26 $78
	sbc  d                                           ; $67c5: $9a
	sbc  $ff                                         ; $67c6: $de $ff
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	db   $fd                                         ; $67ca: $fd
	ld   d, c                                        ; $67cb: $51
	ld   de, $1111                                   ; $67cc: $11 $11 $11
	inc  d                                           ; $67cf: $14
	ld   [hl], a                                     ; $67d0: $77
	sbc  d                                           ; $67d1: $9a
	cp   h                                           ; $67d2: $bc
	rst  $38                                         ; $67d3: $ff
	rst  $38                                         ; $67d4: $ff
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	or   e                                           ; $67d7: $b3
	ld   de, $1111                                   ; $67d8: $11 $11 $11
	ld   de, $7957                                   ; $67db: $11 $57 $79
	sbc  h                                           ; $67de: $9c
	rst  $28                                         ; $67df: $ef
	rst  $38                                         ; $67e0: $ff
	rst  $38                                         ; $67e1: $ff
	rst  $38                                         ; $67e2: $ff
	ld   hl, sp+$11                                  ; $67e3: $f8 $11
	ld   de, $1111                                   ; $67e5: $11 $11 $11
	dec  h                                           ; $67e8: $25
	ld   [hl], a                                     ; $67e9: $77
	adc  d                                           ; $67ea: $8a
	adc  $ff                                         ; $67eb: $ce $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	db   $fd                                         ; $67ef: $fd
	ld   h, c                                        ; $67f0: $61
	ld   de, $1111                                   ; $67f1: $11 $11 $11
	inc  de                                          ; $67f4: $13
	ld   h, [hl]                                     ; $67f5: $66
	adc  c                                           ; $67f6: $89
	cp   l                                           ; $67f7: $bd
	rst  $38                                         ; $67f8: $ff
	rst  $38                                         ; $67f9: $ff
	rst  $38                                         ; $67fa: $ff
	rst  $38                                         ; $67fb: $ff
	or   e                                           ; $67fc: $b3
	ld   de, $1111                                   ; $67fd: $11 $11 $11
	ld   de, $6846                                   ; $6800: $11 $46 $68
	xor  e                                           ; $6803: $ab
	rst  JumpTable                                         ; $6804: $df
	rst  $38                                         ; $6805: $ff
	rst  $38                                         ; $6806: $ff
	rst  $38                                         ; $6807: $ff
	jp   hl                                          ; $6808: $e9


	ld   de, $1111                                   ; $6809: $11 $11 $11
	ld   de, $6725                                   ; $680c: $11 $25 $67
	sbc  e                                           ; $680f: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6810: $cf
	rst  $38                                         ; $6811: $ff
	rst  $38                                         ; $6812: $ff
	rst  $38                                         ; $6813: $ff
	db   $fd                                         ; $6814: $fd
	ld   d, c                                        ; $6815: $51
	ld   de, $1111                                   ; $6816: $11 $11 $11
	inc  de                                          ; $6819: $13
	ld   h, [hl]                                     ; $681a: $66
	ld   a, c                                        ; $681b: $79
	call $ffff                                       ; $681c: $cd $ff $ff
	rst  $38                                         ; $681f: $ff
	rst  $38                                         ; $6820: $ff
	or   d                                           ; $6821: $b2
	ld   de, $1111                                   ; $6822: $11 $11 $11
	ld   de, $6857                                   ; $6825: $11 $57 $68
	xor  h                                           ; $6828: $ac
	rst  $28                                         ; $6829: $ef
	rst  $38                                         ; $682a: $ff
	rst  $38                                         ; $682b: $ff
	rst  $38                                         ; $682c: $ff
	rst  $20                                         ; $682d: $e7
	ld   de, $1111                                   ; $682e: $11 $11 $11
	ld   de, $6626                                   ; $6831: $11 $26 $66
	adc  e                                           ; $6834: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6835: $cf
	rst  $38                                         ; $6836: $ff
	rst  $38                                         ; $6837: $ff
	rst  $38                                         ; $6838: $ff
	rst  JumpTable                                         ; $6839: $df
	ld   sp, $1111                                   ; $683a: $31 $11 $11
	ld   de, $7317                                   ; $683d: $11 $17 $73
	sbc  l                                           ; $6840: $9d
	cp   l                                           ; $6841: $bd
	rst  $38                                         ; $6842: $ff
	rst  $38                                         ; $6843: $ff
	rst  $38                                         ; $6844: $ff
	rst  $38                                         ; $6845: $ff
	add  c                                           ; $6846: $81
	ld   de, $1111                                   ; $6847: $11 $11 $11
	ld   [de], a                                     ; $684a: $12
	add  [hl]                                        ; $684b: $86
	ld   e, e                                        ; $684c: $5b
	jp   z, $ffff                                    ; $684d: $ca $ff $ff

	rst  $38                                         ; $6850: $ff
	rst  $38                                         ; $6851: $ff
	db   $e3                                         ; $6852: $e3
	ld   de, $1111                                   ; $6853: $11 $11 $11
	ld   de, $4869                                   ; $6856: $11 $69 $48
	set  1, a                                        ; $6859: $cb $cf
	rst  $38                                         ; $685b: $ff
	rst  $38                                         ; $685c: $ff
	cp   $e8                                         ; $685d: $fe $e8
	ld   de, $1111                                   ; $685f: $11 $11 $11
	ld   de, $7639                                   ; $6862: $11 $39 $76
	cp   l                                           ; $6865: $bd
	cp   a                                           ; $6866: $bf
	rst  $38                                         ; $6867: $ff
	rst  $38                                         ; $6868: $ff
	rst  $38                                         ; $6869: $ff
	jp   c, $1111                                    ; $686a: $da $11 $11

	ld   de, $3711                                   ; $686d: $11 $11 $37
	sbc  b                                           ; $6870: $98
	xor  l                                           ; $6871: $ad
	rst  JumpTable                                         ; $6872: $df
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff

Jump_0f3_6875:
	rst  $38                                         ; $6875: $ff
	swap c                                           ; $6876: $cb $31
	ld   de, $1111                                   ; $6878: $11 $11 $11
	daa                                              ; $687b: $27
	xor  c                                           ; $687c: $a9
	xor  l                                           ; $687d: $ad
	xor  $ff                                         ; $687e: $ee $ff
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	jp   z, $1151                                    ; $6882: $ca $51 $11

	ld   de, $1511                                   ; $6885: $11 $11 $15
	cp   b                                           ; $6888: $b8
	xor  [hl]                                        ; $6889: $ae
	rst  JumpTable                                         ; $688a: $df
	rst  $38                                         ; $688b: $ff
	rst  $38                                         ; $688c: $ff
	rst  $38                                         ; $688d: $ff
	jp   hl                                          ; $688e: $e9


	ld   d, c                                        ; $688f: $51
	ld   de, $1111                                   ; $6890: $11 $11 $11
	dec  d                                           ; $6893: $15
	sbc  d                                           ; $6894: $9a
	xor  l                                           ; $6895: $ad
	rst  $28                                         ; $6896: $ef
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	rst  $38                                         ; $6899: $ff
	jp   hl                                          ; $689a: $e9


	ld   d, c                                        ; $689b: $51
	ld   de, $1111                                   ; $689c: $11 $11 $11
	dec  d                                           ; $689f: $15
	adc  d                                           ; $68a0: $8a
	cp   h                                           ; $68a1: $bc
	rst  $28                                         ; $68a2: $ef
	rst  $38                                         ; $68a3: $ff
	rst  $38                                         ; $68a4: $ff
	rst  $38                                         ; $68a5: $ff
	ld   sp, hl                                      ; $68a6: $f9
	ld   d, c                                        ; $68a7: $51
	ld   de, $1111                                   ; $68a8: $11 $11 $11
	ld   d, $7b                                      ; $68ab: $16 $7b
	xor  h                                           ; $68ad: $ac
	rst  $28                                         ; $68ae: $ef
	rst  $38                                         ; $68af: $ff
	rst  $38                                         ; $68b0: $ff
	rst  $38                                         ; $68b1: $ff
	ld   a, [$1151]                                  ; $68b2: $fa $51 $11
	ld   de, $1511                                   ; $68b5: $11 $11 $15
	adc  c                                           ; $68b8: $89
	sbc  h                                           ; $68b9: $9c
	rst  $28                                         ; $68ba: $ef
	rst  $38                                         ; $68bb: $ff
	rst  $38                                         ; $68bc: $ff
	rst  $38                                         ; $68bd: $ff
	ei                                               ; $68be: $fb
	ld   h, c                                        ; $68bf: $61
	ld   de, $1111                                   ; $68c0: $11 $11 $11
	dec  d                                           ; $68c3: $15
	ld   l, d                                        ; $68c4: $6a
	xor  h                                           ; $68c5: $ac
	rst  $28                                         ; $68c6: $ef
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff
	rst  $38                                         ; $68c9: $ff
	ei                                               ; $68ca: $fb
	ld   [hl], c                                     ; $68cb: $71
	ld   de, $1111                                   ; $68cc: $11 $11 $11
	inc  de                                          ; $68cf: $13
	ld   a, e                                        ; $68d0: $7b
	sbc  e                                           ; $68d1: $9b
	rst  $38                                         ; $68d2: $ff
	rst  $38                                         ; $68d3: $ff
	rst  $38                                         ; $68d4: $ff
	rst  $38                                         ; $68d5: $ff
	db   $fd                                         ; $68d6: $fd
	ld   [hl], d                                     ; $68d7: $72
	ld   de, $1111                                   ; $68d8: $11 $11 $11
	inc  de                                          ; $68db: $13
	ld   a, c                                        ; $68dc: $79
	xor  d                                           ; $68dd: $aa
	rst  $28                                         ; $68de: $ef
	rst  $38                                         ; $68df: $ff
	rst  $38                                         ; $68e0: $ff
	rst  $38                                         ; $68e1: $ff
	cp   $82                                         ; $68e2: $fe $82
	ld   de, $1111                                   ; $68e4: $11 $11 $11
	ld   de, $aa79                                   ; $68e7: $11 $79 $aa
	rst  $28                                         ; $68ea: $ef
	rst  $38                                         ; $68eb: $ff
	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	and  h                                           ; $68ef: $a4
	ld   de, $1111                                   ; $68f0: $11 $11 $11
	ld   de, $ba68                                   ; $68f3: $11 $68 $ba
	rst  JumpTable                                         ; $68f6: $df
	rst  $38                                         ; $68f7: $ff
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	rst  $38                                         ; $68fa: $ff
	and  l                                           ; $68fb: $a5
	ld   de, $1111                                   ; $68fc: $11 $11 $11
	ld   de, $bb48                                   ; $68ff: $11 $48 $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6902: $cf
	rst  $38                                         ; $6903: $ff
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	rst  $38                                         ; $6906: $ff
	add  $11                                         ; $6907: $c6 $11
	ld   de, $1111                                   ; $6909: $11 $11 $11
	daa                                              ; $690c: $27
	cp   d                                           ; $690d: $ba
	cp   a                                           ; $690e: $bf
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	rst  $38                                         ; $6912: $ff
	rst  $30                                         ; $6913: $f7
	ld   hl, $1111                                   ; $6914: $21 $11 $11
	ld   de, $9c16                                   ; $6917: $11 $16 $9c
	adc  $ff                                         ; $691a: $ce $ff
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	ld   a, [$1141]                                  ; $691f: $fa $41 $11
	ld   de, $1411                                   ; $6922: $11 $11 $14
	sbc  h                                           ; $6925: $9c
	cp   l                                           ; $6926: $bd
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	rst  $38                                         ; $6929: $ff
	rst  $38                                         ; $692a: $ff
	db   $fc                                         ; $692b: $fc
	ld   h, c                                        ; $692c: $61
	ld   de, $1111                                   ; $692d: $11 $11 $11
	ld   de, $cb6c                                   ; $6930: $11 $6c $cb
	rst  $28                                         ; $6933: $ef
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	rst  $38                                         ; $6936: $ff
	rst  $38                                         ; $6937: $ff
	sub  d                                           ; $6938: $92
	ld   de, $1111                                   ; $6939: $11 $11 $11
	ld   de, $cb4a                                   ; $693c: $11 $4a $cb
	rst  $28                                         ; $693f: $ef
	rst  $38                                         ; $6940: $ff
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	or   l                                           ; $6944: $b5
	ld   de, $1111                                   ; $6945: $11 $11 $11
	ld   de, $cb17                                   ; $6948: $11 $17 $cb
	sbc  $ff                                         ; $694b: $de $ff
	rst  $38                                         ; $694d: $ff
	rst  $38                                         ; $694e: $ff
	rst  $38                                         ; $694f: $ff
	ld   hl, sp+$21                                  ; $6950: $f8 $21
	ld   de, $1111                                   ; $6952: $11 $11 $11
	inc  de                                          ; $6955: $13
	cp   l                                           ; $6956: $bd
	cp   a                                           ; $6957: $bf
	rst  $38                                         ; $6958: $ff
	rst  $38                                         ; $6959: $ff
	rst  $38                                         ; $695a: $ff
	rst  $38                                         ; $695b: $ff
	db   $fc                                         ; $695c: $fc
	ld   b, c                                        ; $695d: $41
	ld   de, $1111                                   ; $695e: $11 $11 $11
	ld   de, $dd6d                                   ; $6961: $11 $6d $dd
	rst  $38                                         ; $6964: $ff
	rst  $38                                         ; $6965: $ff
	rst  $38                                         ; $6966: $ff
	rst  $38                                         ; $6967: $ff
	rst  $38                                         ; $6968: $ff
	sub  c                                           ; $6969: $91
	ld   de, $1111                                   ; $696a: $11 $11 $11
	ld   de, $dc3a                                   ; $696d: $11 $3a $dc
	rst  $28                                         ; $6970: $ef
	rst  $38                                         ; $6971: $ff
	rst  $38                                         ; $6972: $ff
	rst  $38                                         ; $6973: $ff
	rst  $38                                         ; $6974: $ff
	sub  $11                                         ; $6975: $d6 $11
	ld   de, $1111                                   ; $6977: $11 $11 $11

Call_0f3_697a:
	inc  d                                           ; $697a: $14
	db   $dd                                         ; $697b: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $697c: $cf
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	ld   a, [$1141]                                  ; $6981: $fa $41 $11
	ld   de, $1111                                   ; $6984: $11 $11 $11
	ld   a, a                                        ; $6987: $7f
	db   $ec                                         ; $6988: $ec
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	rst  $38                                         ; $698c: $ff
	rst  $38                                         ; $698d: $ff
	sub  c                                           ; $698e: $91
	ld   de, $1111                                   ; $698f: $11 $11 $11
	ld   [de], a                                     ; $6992: $12
	add  hl, de                                      ; $6993: $19
	db   $fd                                         ; $6994: $fd
	cp   a                                           ; $6995: $bf

Call_0f3_6996:
	rst  $38                                         ; $6996: $ff
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	ld   hl, sp+$11                                  ; $699a: $f8 $11
	ld   de, $1111                                   ; $699c: $11 $11 $11
	ld   hl, $ecbf                                   ; $699f: $21 $bf $ec
	rst  $38                                         ; $69a2: $ff
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	cp   $81                                         ; $69a6: $fe $81
	ld   de, $1111                                   ; $69a8: $11 $11 $11
	inc  sp                                          ; $69ab: $33
	ld   a, [hl+]                                    ; $69ac: $2a
	rst  $38                                         ; $69ad: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ae: $cf
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	rst  $38                                         ; $69b2: $ff
	ret  c                                           ; $69b3: $d8

	ld   de, $1111                                   ; $69b4: $11 $11 $11
	inc  d                                           ; $69b7: $14
	ld   h, e                                        ; $69b8: $63
	sbc  a                                           ; $69b9: $9f
	cp   $ff                                         ; $69ba: $fe $ff
	rst  $38                                         ; $69bc: $ff
	rst  $38                                         ; $69bd: $ff
	rst  $38                                         ; $69be: $ff
	db   $eb                                         ; $69bf: $eb
	ld   [hl], c                                     ; $69c0: $71
	ld   de, $1111                                   ; $69c1: $11 $11 $11
	ld   c, b                                        ; $69c4: $48
	ld   l, c                                        ; $69c5: $69
	rst  $28                                         ; $69c6: $ef
	rst  $38                                         ; $69c7: $ff
	rst  $38                                         ; $69c8: $ff
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	rst  $38                                         ; $69cb: $ff
	add  [hl]                                        ; $69cc: $86
	ld   de, $1111                                   ; $69cd: $11 $11 $11
	ld   de, $ad89                                   ; $69d0: $11 $89 $ad
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	rst  $38                                         ; $69d5: $ff
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	ei                                               ; $69d8: $fb
	ld   d, c                                        ; $69d9: $51
	ld   de, $1111                                   ; $69da: $11 $11 $11
	rla                                              ; $69dd: $17
	xor  d                                           ; $69de: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69df: $cf
	rst  $38                                         ; $69e0: $ff
	rst  $38                                         ; $69e1: $ff
	rst  $38                                         ; $69e2: $ff
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	rst  ToBoot                                         ; $69e5: $c7
	ld   de, $1111                                   ; $69e6: $11 $11 $11
	ld   de, $dc6a                                   ; $69e9: $11 $6a $dc
	rst  JumpTable                                         ; $69ec: $df
	rst  $38                                         ; $69ed: $ff
	rst  $38                                         ; $69ee: $ff
	rst  $38                                         ; $69ef: $ff
	rst  $38                                         ; $69f0: $ff
	db   $fd                                         ; $69f1: $fd
	and  c                                           ; $69f2: $a1
	ld   de, $1111                                   ; $69f3: $11 $11 $11
	ld   [de], a                                     ; $69f6: $12
	xor  l                                           ; $69f7: $ad
	db   $ec                                         ; $69f8: $ec
	rst  JumpTable                                         ; $69f9: $df
	rst  $38                                         ; $69fa: $ff
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	rst  $38                                         ; $69fd: $ff
	cp   c                                           ; $69fe: $b9
	ld   h, c                                        ; $69ff: $61
	ld   de, $1111                                   ; $6a00: $11 $11 $11
	inc  de                                          ; $6a03: $13
	rst  JumpTable                                         ; $6a04: $df
	ei                                               ; $6a05: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a06: $cf
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	sub  [hl]                                        ; $6a0b: $96
	ld   de, $1111                                   ; $6a0c: $11 $11 $11
	ld   de, $cf14                                   ; $6a0f: $11 $14 $cf
	cp   $df                                         ; $6a12: $fe $df
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	and  e                                           ; $6a18: $a3
	ld   de, $1111                                   ; $6a19: $11 $11 $11
	ld   de, $df27                                   ; $6a1c: $11 $27 $df
	db   $fd                                         ; $6a1f: $fd
	rst  $38                                         ; $6a20: $ff
	rst  $38                                         ; $6a21: $ff
	rst  $38                                         ; $6a22: $ff
	rst  $38                                         ; $6a23: $ff
	rst  $38                                         ; $6a24: $ff
	or   e                                           ; $6a25: $b3
	ld   de, $1111                                   ; $6a26: $11 $11 $11
	ld   de, $ef17                                   ; $6a29: $11 $17 $ef
	cp   $ff                                         ; $6a2c: $fe $ff
	rst  $38                                         ; $6a2e: $ff
	rst  $38                                         ; $6a2f: $ff
	rst  $38                                         ; $6a30: $ff
	rst  $38                                         ; $6a31: $ff
	or   h                                           ; $6a32: $b4
	ld   de, $1111                                   ; $6a33: $11 $11 $11
	ld   de, $cf14                                   ; $6a36: $11 $14 $cf
	rst  $38                                         ; $6a39: $ff
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	rst  $20                                         ; $6a3f: $e7
	ld   de, $1111                                   ; $6a40: $11 $11 $11

jr_0f3_6a43:
	ld   de, $7e11                                   ; $6a43: $11 $11 $7e
	rst  $38                                         ; $6a46: $ff
	rst  $38                                         ; $6a47: $ff
	rst  $38                                         ; $6a48: $ff
	rst  $38                                         ; $6a49: $ff
	rst  $38                                         ; $6a4a: $ff
	rst  $38                                         ; $6a4b: $ff
	ld   [$1131], a                                  ; $6a4c: $ea $31 $11
	ld   de, $1111                                   ; $6a4f: $11 $11 $11
	jr   z, jr_0f3_6a43                              ; $6a52: $28 $ef

	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	db   $db                                         ; $6a59: $db
	add  d                                           ; $6a5a: $82
	ld   de, $1111                                   ; $6a5b: $11 $11 $11
	ld   [de], a                                     ; $6a5e: $12
	ld   [de], a                                     ; $6a5f: $12
	ld   a, h                                        ; $6a60: $7c
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	rst  $38                                         ; $6a63: $ff
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	db   $fd                                         ; $6a66: $fd
	and  [hl]                                        ; $6a67: $a6
	ld   de, $1111                                   ; $6a68: $11 $11 $11
	ld   de, $1621                                   ; $6a6b: $11 $21 $16
	cp   a                                           ; $6a6e: $bf
	rst  $38                                         ; $6a6f: $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	rst  $38                                         ; $6a73: $ff
	db   $db                                         ; $6a74: $db
	ld   [hl], d                                     ; $6a75: $72
	ld   de, $1111                                   ; $6a76: $11 $11 $11
	ld   [de], a                                     ; $6a79: $12
	ld   de, $df49                                   ; $6a7a: $11 $49 $df
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	rst  $38                                         ; $6a80: $ff
	db   $fd                                         ; $6a81: $fd
	cp   b                                           ; $6a82: $b8
	ld   b, c                                        ; $6a83: $41
	ld   de, $1111                                   ; $6a84: $11 $11 $11
	ld   [de], a                                     ; $6a87: $12
	ld   [bc], a                                     ; $6a88: $02
	ld   l, d                                        ; $6a89: $6a
	rst  $38                                         ; $6a8a: $ff
	rst  $38                                         ; $6a8b: $ff
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	rst  $38                                         ; $6a8e: $ff
	db   $fc                                         ; $6a8f: $fc
	and  a                                           ; $6a90: $a7
	ld   sp, $1111                                   ; $6a91: $31 $11 $11
	ld   de, $1411                                   ; $6a94: $11 $11 $14
	adc  l                                           ; $6a97: $8d
	rst  $38                                         ; $6a98: $ff
	rst  $38                                         ; $6a99: $ff
	rst  $38                                         ; $6a9a: $ff
	rst  $38                                         ; $6a9b: $ff
	rst  $38                                         ; $6a9c: $ff
	db   $ec                                         ; $6a9d: $ec
	add  [hl]                                        ; $6a9e: $86
	ld   hl, $1111                                   ; $6a9f: $21 $11 $11
	ld   de, $2422                                   ; $6aa2: $11 $22 $24
	adc  l                                           ; $6aa5: $8d
	rst  $38                                         ; $6aa6: $ff
	rst  $38                                         ; $6aa7: $ff
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	ld   [$3186], a                                  ; $6aab: $ea $86 $31
	ld   de, $1111                                   ; $6aae: $11 $11 $11
	ld   b, e                                        ; $6ab1: $43
	dec  [hl]                                        ; $6ab2: $35
	sbc  l                                           ; $6ab3: $9d
	rst  $38                                         ; $6ab4: $ff
	rst  $38                                         ; $6ab5: $ff
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	rst  $38                                         ; $6ab8: $ff
	db   $db                                         ; $6ab9: $db
	sub  [hl]                                        ; $6aba: $96
	ld   sp, $1111                                   ; $6abb: $31 $11 $11
	ld   [de], a                                     ; $6abe: $12
	ld   d, l                                        ; $6abf: $55
	inc  [hl]                                        ; $6ac0: $34
	ld   a, e                                        ; $6ac1: $7b
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	rst  $38                                         ; $6ac6: $ff
	jp   c, Jump_0f3_4187                            ; $6ac7: $da $87 $41

	ld   de, $1311                                   ; $6aca: $11 $11 $13
	ld   d, [hl]                                     ; $6acd: $56
	ld   b, e                                        ; $6ace: $43
	ld   e, d                                        ; $6acf: $5a
	rst  $28                                         ; $6ad0: $ef
	rst  $38                                         ; $6ad1: $ff
	rst  $38                                         ; $6ad2: $ff
	rst  $28                                         ; $6ad3: $ef
	rst  $38                                         ; $6ad4: $ff
	db   $db                                         ; $6ad5: $db
	sbc  b                                           ; $6ad6: $98
	ld   h, h                                        ; $6ad7: $64
	ld   de, $1211                                   ; $6ad8: $11 $11 $12
	ld   d, [hl]                                     ; $6adb: $56
	ld   h, h                                        ; $6adc: $64
	ld   d, a                                        ; $6add: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ade: $cf
	rst  $38                                         ; $6adf: $ff
	rst  $38                                         ; $6ae0: $ff
	sbc  $ff                                         ; $6ae1: $de $ff
	db   $fc                                         ; $6ae3: $fc
	xor  d                                           ; $6ae4: $aa
	sub  a                                           ; $6ae5: $97
	ld   sp, $1111                                   ; $6ae6: $31 $11 $11
	scf                                              ; $6ae9: $37
	add  [hl]                                        ; $6aea: $86
	ld   d, l                                        ; $6aeb: $55
	adc  l                                           ; $6aec: $8d
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	db   $ed                                         ; $6aef: $ed
	rst  $28                                         ; $6af0: $ef
	cp   $cb                                         ; $6af1: $fe $cb
	xor  c                                           ; $6af3: $a9
	ld   [hl], h                                     ; $6af4: $74
	ld   de, $1311                                   ; $6af5: $11 $11 $13
	adc  c                                           ; $6af8: $89
	ld   [hl], l                                     ; $6af9: $75
	ld   e, c                                        ; $6afa: $59
	rst  $28                                         ; $6afb: $ef
	rst  $38                                         ; $6afc: $ff
	db   $fd                                         ; $6afd: $fd
	adc  $ff                                         ; $6afe: $ce $ff
	db   $db                                         ; $6b00: $db
	xor  c                                           ; $6b01: $a9
	xor  b                                           ; $6b02: $a8
	ld   d, c                                        ; $6b03: $51
	ld   de, $2911                                   ; $6b04: $11 $11 $29
	cp   d                                           ; $6b07: $ba
	ld   h, l                                        ; $6b08: $65
	adc  l                                           ; $6b09: $8d
	rst  $38                                         ; $6b0a: $ff
	cp   $cb                                         ; $6b0b: $fe $cb
	rst  JumpTable                                         ; $6b0d: $df
	db   $fd                                         ; $6b0e: $fd
	cp   c                                           ; $6b0f: $b9
	adc  d                                           ; $6b10: $8a
	and  a                                           ; $6b11: $a7
	ld   hl, $1111                                   ; $6b12: $21 $11 $11
	sbc  [hl]                                        ; $6b15: $9e
	reti                                             ; $6b16: $d9


	ld   a, b                                        ; $6b17: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b18: $cf
	rst  $38                                         ; $6b19: $ff
	jp   z, $ffad                                    ; $6b1a: $ca $ad $ff

	ld   [$bd98], a                                  ; $6b1d: $ea $98 $bd
	add  $11                                         ; $6b20: $c6 $11
	ld   de, $bf12                                   ; $6b22: $11 $12 $bf
	db   $eb                                         ; $6b25: $eb
	sbc  d                                           ; $6b26: $9a
	rst  JumpTable                                         ; $6b27: $df
	db   $fc                                         ; $6b28: $fc
	sbc  c                                           ; $6b29: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b2a: $cf
	rst  $38                                         ; $6b2b: $ff
	jp   c, $ce9a                                    ; $6b2c: $da $9a $ce

	add  $11                                         ; $6b2f: $c6 $11
	ld   de, $af11                                   ; $6b31: $11 $11 $af
	cp   $a8                                         ; $6b34: $fe $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b36: $cf
	db   $eb                                         ; $6b37: $eb
	adc  c                                           ; $6b38: $89
	cp   a                                           ; $6b39: $bf
	rst  $38                                         ; $6b3a: $ff
	jp   c, $ce89                                    ; $6b3b: $da $89 $ce

	reti                                             ; $6b3e: $d9


	ld   b, c                                        ; $6b3f: $41
	ld   de, $5f11                                   ; $6b40: $11 $11 $5f
	rst  $38                                         ; $6b43: $ff
	ret                                              ; $6b44: $c9


	adc  h                                           ; $6b45: $8c
	db   $ed                                         ; $6b46: $ed
	cp   b                                           ; $6b47: $b8
	sbc  h                                           ; $6b48: $9c
	rst  $38                                         ; $6b49: $ff
	db   $fd                                         ; $6b4a: $fd
	add  a                                           ; $6b4b: $87
	xor  h                                           ; $6b4c: $ac
	db   $fc                                         ; $6b4d: $fc
	sub  e                                           ; $6b4e: $93
	ld   de, $1611                                   ; $6b4f: $11 $11 $16
	rst  $38                                         ; $6b52: $ff
	cp   $87                                         ; $6b53: $fe $87
	adc  $c9                                         ; $6b55: $ce $c9
	ld   l, b                                        ; $6b57: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b58: $cf
	rst  $38                                         ; $6b59: $ff
	add  $59                                         ; $6b5a: $c6 $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b5c: $cf
	ret  c                                           ; $6b5d: $d8

	ld   d, c                                        ; $6b5e: $51
	ld   de, $1f11                                   ; $6b5f: $11 $11 $1f
	rst  $38                                         ; $6b62: $ff
	ei                                               ; $6b63: $fb
	ld   d, a                                        ; $6b64: $57
	call z, Call_0f3_7bb7                            ; $6b65: $cc $b7 $7b
	rst  $38                                         ; $6b68: $ff
	ei                                               ; $6b69: $fb
	ld   h, e                                        ; $6b6a: $63
	ld   e, d                                        ; $6b6b: $5a
	rst  $28                                         ; $6b6c: $ef
	ret                                              ; $6b6d: $c9


	ld   h, c                                        ; $6b6e: $61
	ld   de, $5f11                                   ; $6b6f: $11 $11 $5f
	rst  $38                                         ; $6b72: $ff
	rst  $30                                         ; $6b73: $f7
	scf                                              ; $6b74: $37
	cp   h                                           ; $6b75: $bc
	sub  h                                           ; $6b76: $94
	ld   c, h                                        ; $6b77: $4c
	rst  $38                                         ; $6b78: $ff
	ld   hl, sp+$31                                  ; $6b79: $f8 $31
	ld   e, l                                        ; $6b7b: $5d
	rst  $38                                         ; $6b7c: $ff
	jp   c, $1171                                    ; $6b7d: $da $71 $11

	ld   de, $ff2f                                   ; $6b80: $11 $2f $ff
	rst  $30                                         ; $6b83: $f7
	inc  hl                                          ; $6b84: $23
	sbc  d                                           ; $6b85: $9a
	ld   [hl], d                                     ; $6b86: $72
	inc  l                                           ; $6b87: $2c
	rst  $38                                         ; $6b88: $ff
	ld   sp, hl                                      ; $6b89: $f9
	ld   de, $ff4e                                   ; $6b8a: $11 $4e $ff
	db   $fc                                         ; $6b8d: $fc
	sub  a                                           ; $6b8e: $97
	ld   de, $1d11                                   ; $6b8f: $11 $11 $1d
	rst  $38                                         ; $6b92: $ff
	ei                                               ; $6b93: $fb
	ld   hl, $6259                                   ; $6b94: $21 $59 $62
	ld   d, $ff                                      ; $6b97: $16 $ff
	rst  $38                                         ; $6b99: $ff
	ld   de, $ff1a                                   ; $6b9a: $11 $1a $ff
	cp   $ab                                         ; $6b9d: $fe $ab
	ld   h, c                                        ; $6b9f: $61
	ld   de, rAUD1LEN                                   ; $6ba0: $11 $11 $ff
	rst  $38                                         ; $6ba3: $ff
	sub  d                                           ; $6ba4: $92
	inc  de                                          ; $6ba5: $13
	ld   h, e                                        ; $6ba6: $63
	ld   de, $ffbf                                   ; $6ba7: $11 $bf $ff
	pop  hl                                          ; $6baa: $e1
	ld   de, $ffbf                                   ; $6bab: $11 $bf $ff
	res  4, a                                        ; $6bae: $cb $a7
	ld   de, $1c11                                   ; $6bb0: $11 $11 $1c
	rst  $38                                         ; $6bb3: $ff
	cp   $41                                         ; $6bb4: $fe $41
	inc  de                                          ; $6bb6: $13
	ld   hl, $ff28                                   ; $6bb7: $21 $28 $ff
	rst  $38                                         ; $6bba: $ff
	ld   b, c                                        ; $6bbb: $41
	dec  d                                           ; $6bbc: $15
	rst  $38                                         ; $6bbd: $ff
	rst  $38                                         ; $6bbe: $ff
	ret                                              ; $6bbf: $c9


	ld   [hl], d                                     ; $6bc0: $72
	ld   de, $1f11                                   ; $6bc1: $11 $11 $1f
	rst  $38                                         ; $6bc4: $ff
	cp   $41                                         ; $6bc5: $fe $41
	ld   de, $9c14                                   ; $6bc7: $11 $14 $9c
	rst  $38                                         ; $6bca: $ff
	rst  $38                                         ; $6bcb: $ff
	ld   hl, $ff15                                   ; $6bcc: $21 $15 $ff
	rst  $38                                         ; $6bcf: $ff
	or   [hl]                                        ; $6bd0: $b6
	ld   b, c                                        ; $6bd1: $41
	ld   de, $1b11                                   ; $6bd2: $11 $11 $1b
	rst  $38                                         ; $6bd5: $ff
	rst  $38                                         ; $6bd6: $ff
	ld   sp, $3711                                   ; $6bd7: $31 $11 $37
	cp   l                                           ; $6bda: $bd
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	ld   d, c                                        ; $6bdd: $51
	ld   de, $ffef                                   ; $6bde: $11 $ef $ff
	and  $32                                         ; $6be1: $e6 $32
	ld   de, $1111                                   ; $6be3: $11 $11 $11
	rst  JumpTable                                         ; $6be6: $df
	rst  $38                                         ; $6be7: $ff
	pop  af                                          ; $6be8: $f1
	ld   de, $ce16                                   ; $6be9: $11 $16 $ce
	rst  JumpTable                                         ; $6bec: $df
	rst  $38                                         ; $6bed: $ff
	db   $f4                                         ; $6bee: $f4
	ld   de, $ff1f                                   ; $6bef: $11 $1f $ff
	ld   a, [$4244]                                  ; $6bf2: $fa $44 $42
	ld   de, $1811                                   ; $6bf5: $11 $11 $18
	rst  $38                                         ; $6bf8: $ff
	rst  $38                                         ; $6bf9: $ff
	ld   de, $6c11                                   ; $6bfa: $11 $11 $6c
	cp   $ff                                         ; $6bfd: $fe $ff
	rst  $38                                         ; $6bff: $ff
	add  c                                           ; $6c00: $81
	ld   de, $ffbf                                   ; $6c01: $11 $bf $ff
	rst  $20                                         ; $6c04: $e7
	ld   b, l                                        ; $6c05: $45
	ld   d, c                                        ; $6c06: $51
	ld   de, $1611                                   ; $6c07: $11 $11 $16
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	ld   de, $9f11                                   ; $6c0c: $11 $11 $9f
	db   $fd                                         ; $6c0f: $fd
	rst  JumpTable                                         ; $6c10: $df
	rst  $38                                         ; $6c11: $ff
	sub  c                                           ; $6c12: $91
	ld   de, $ffbf                                   ; $6c13: $11 $bf $ff
	and  $46                                         ; $6c16: $e6 $46
	ld   h, h                                        ; $6c18: $64
	ld   de, $1111                                   ; $6c19: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c1c: $cf
	rst  $38                                         ; $6c1d: $ff
	sub  c                                           ; $6c1e: $91
	ld   de, $fd3e                                   ; $6c1f: $11 $3e $fd
	cp   h                                           ; $6c22: $bc
	rst  $38                                         ; $6c23: $ff
	or   $11                                         ; $6c24: $f6 $11
	ccf                                              ; $6c26: $3f
	rst  $38                                         ; $6c27: $ff
	ld   a, [$7667]                                  ; $6c28: $fa $67 $76
	ld   b, c                                        ; $6c2b: $41
	ld   de, $1711                                   ; $6c2c: $11 $11 $17
	rst  $38                                         ; $6c2f: $ff
	cp   $11                                         ; $6c30: $fe $11
	inc  de                                          ; $6c32: $13
	rst  $38                                         ; $6c33: $ff
	reti                                             ; $6c34: $d9


	xor  a                                           ; $6c35: $af
	rst  $38                                         ; $6c36: $ff
	sub  c                                           ; $6c37: $91
	ld   de, $ffef                                   ; $6c38: $11 $ef $ff
	ld   [hl], a                                     ; $6c3b: $77
	sbc  h                                           ; $6c3c: $9c
	or   l                                           ; $6c3d: $b5
	ld   de, $1111                                   ; $6c3e: $11 $11 $11
	dec  d                                           ; $6c41: $15
	rst  $38                                         ; $6c42: $ff
	cp   $11                                         ; $6c43: $fe $11
	dec  d                                           ; $6c45: $15
	rst  $38                                         ; $6c46: $ff
	or   l                                           ; $6c47: $b5

jr_0f3_6c48:
	adc  a                                           ; $6c48: $8f
	rst  $38                                         ; $6c49: $ff
	sub  c                                           ; $6c4a: $91
	ld   [de], a                                     ; $6c4b: $12
	rst  $38                                         ; $6c4c: $ff
	cp   $44                                         ; $6c4d: $fe $44
	xor  a                                           ; $6c4f: $af
	ld   sp, hl                                      ; $6c50: $f9
	ld   hl, $1135                                   ; $6c51: $21 $35 $11
	ld   de, $ff7f                                   ; $6c54: $11 $7f $ff
	or   c                                           ; $6c57: $b1
	ld   de, $e69f                                   ; $6c58: $11 $9f $e6
	add  hl, sp                                      ; $6c5b: $39
	rst  $38                                         ; $6c5c: $ff
	rst  $30                                         ; $6c5d: $f7
	ld   de, $ff3f                                   ; $6c5e: $11 $3f $ff
	and  e                                           ; $6c61: $a3
	ld   a, [hl-]                                    ; $6c62: $3a
	rst  $38                                         ; $6c63: $ff
	call nz, Call_0f3_7324                           ; $6c64: $c4 $24 $73
	ld   de, rAUD1LEN                                   ; $6c67: $11 $11 $ff
	rst  $38                                         ; $6c6a: $ff
	ld   de, $cd11                                   ; $6c6b: $11 $11 $cd
	ld   h, c                                        ; $6c6e: $61
	ld   e, a                                        ; $6c6f: $5f
	rst  $38                                         ; $6c70: $ff
	pop  af                                          ; $6c71: $f1
	ld   de, $fb9f                                   ; $6c72: $11 $9f $fb
	ld   [hl], h                                     ; $6c75: $74
	sbc  a                                           ; $6c76: $9f
	db   $fd                                         ; $6c77: $fd
	ld   [hl], d                                     ; $6c78: $72
	ld   l, d                                        ; $6c79: $6a
	and  h                                           ; $6c7a: $a4
	ld   de, rAUD1LEN                                   ; $6c7b: $11 $11 $ff
	rst  $38                                         ; $6c7e: $ff
	ld   [hl], c                                     ; $6c7f: $71
	ld   de, $4269                                   ; $6c80: $11 $69 $42
	ld   l, a                                        ; $6c83: $6f
	rst  $38                                         ; $6c84: $ff
	push af                                          ; $6c85: $f5
	ld   de, $fe6e                                   ; $6c86: $11 $6e $fe
	adc  c                                           ; $6c89: $89
	sbc  a                                           ; $6c8a: $9f
	db   $fc                                         ; $6c8b: $fc
	add  e                                           ; $6c8c: $83
	jr   c, jr_0f3_6c48                              ; $6c8d: $38 $b9

	ld   de, $2f11                                   ; $6c8f: $11 $11 $2f
	rst  $38                                         ; $6c92: $ff
	ldh  a, [c]                                      ; $6c93: $f2
	ld   de, $6149                                   ; $6c94: $11 $49 $61
	rla                                              ; $6c97: $17
	rst  $38                                         ; $6c98: $ff
	db   $fd                                         ; $6c99: $fd
	ld   b, c                                        ; $6c9a: $41
	add  hl, de                                      ; $6c9b: $19
	rst  $28                                         ; $6c9c: $ef
	and  a                                           ; $6c9d: $a7
	xor  l                                           ; $6c9e: $ad
	rst  $38                                         ; $6c9f: $ff
	add  $11                                         ; $6ca0: $c6 $11
	ld   a, e                                        ; $6ca2: $7b
	ld   [hl], c                                     ; $6ca3: $71
	ld   de, $ff1a                                   ; $6ca4: $11 $1a $ff
	db   $fc                                         ; $6ca7: $fc
	ld   de, $a328                                   ; $6ca8: $11 $28 $a3
	ld   de, $ffaf                                   ; $6cab: $11 $af $ff
	and  d                                           ; $6cae: $a2
	ld   d, $ef                                      ; $6caf: $16 $ef
	rst  ToBoot                                         ; $6cb1: $c7
	ld   l, d                                        ; $6cb2: $6a
	rst  $38                                         ; $6cb3: $ff
	ld   sp, hl                                      ; $6cb4: $f9
	ld   hl, $c75b                                   ; $6cb5: $21 $5b $c7
	ld   de, $df11                                   ; $6cb8: $11 $11 $df
	rst  $38                                         ; $6cbb: $ff
	sub  c                                           ; $6cbc: $91
	ld   h, $96                                      ; $6cbd: $26 $96
	ld   de, $ff19                                   ; $6cbf: $11 $19 $ff
	db   $fd                                         ; $6cc2: $fd
	ld   h, l                                        ; $6cc3: $65
	sbc  l                                           ; $6cc4: $9d
	ret                                              ; $6cc5: $c9


	ld   d, [hl]                                     ; $6cc6: $56
	xor  a                                           ; $6cc7: $af
	rst  $38                                         ; $6cc8: $ff

Jump_0f3_6cc9:
	sub  h                                           ; $6cc9: $94
	ld   [hl], $98                                   ; $6cca: $36 $98
	ld   de, $1f11                                   ; $6ccc: $11 $11 $1f
	rst  $38                                         ; $6ccf: $ff
	ld   sp, hl                                      ; $6cd0: $f9
	inc  [hl]                                        ; $6cd1: $34
	adc  c                                           ; $6cd2: $89
	ld   b, c                                        ; $6cd3: $41
	ld   de, $ff9f                                   ; $6cd4: $11 $9f $ff
	reti                                             ; $6cd7: $d9


	cp   l                                           ; $6cd8: $bd
	call c, Call_0f3_7b74                            ; $6cd9: $dc $74 $7b
	rst  $38                                         ; $6cdc: $ff
	ret                                              ; $6cdd: $c9


	ld   b, h                                        ; $6cde: $44
	halt                                             ; $6cdf: $76
	ld   d, c                                        ; $6ce0: $51
	ld   de, $df11                                   ; $6ce1: $11 $11 $df
	rst  $38                                         ; $6ce4: $ff
	cp   b                                           ; $6ce5: $b8
	sbc  e                                           ; $6ce6: $9b
	and  l                                           ; $6ce7: $a5
	ld   de, $df16                                   ; $6ce8: $11 $16 $df
	db   $ed                                         ; $6ceb: $ed
	rst  JumpTable                                         ; $6cec: $df
	rst  $38                                         ; $6ced: $ff
	or   [hl]                                        ; $6cee: $b6
	ld   d, a                                        ; $6cef: $57
	adc  $d9                                         ; $6cf0: $ce $d9
	ld   h, l                                        ; $6cf2: $65
	ld   a, c                                        ; $6cf3: $79
	ld   [hl], e                                     ; $6cf4: $73
	ld   de, $1911                                   ; $6cf5: $11 $11 $19
	rst  $38                                         ; $6cf8: $ff
	cp   $ff                                         ; $6cf9: $fe $ff
	db   $fc                                         ; $6cfb: $fc
	ld   h, c                                        ; $6cfc: $61
	ld   de, $6725                                   ; $6cfd: $11 $25 $67
	sbc  a                                           ; $6d00: $9f
	rst  $38                                         ; $6d01: $ff
	cp   $a9                                         ; $6d02: $fe $a9
	xor  h                                           ; $6d04: $ac
	jp   z, Jump_0f3_6875                            ; $6d05: $ca $75 $68

	add  [hl]                                        ; $6d08: $86
	ld   de, $1311                                   ; $6d09: $11 $11 $13
	adc  e                                           ; $6d0c: $8b
	jp   z, $ffdf                                    ; $6d0d: $ca $df $ff

	ret  c                                           ; $6d10: $d8

	ld   b, d                                        ; $6d11: $42
	inc  sp                                          ; $6d12: $33
	ld   [hl-], a                                    ; $6d13: $32
	inc  h                                           ; $6d14: $24
	cp   a                                           ; $6d15: $bf
	rst  $38                                         ; $6d16: $ff
	db   $fc                                         ; $6d17: $fc
	call $a7ed                                       ; $6d18: $cd $ed $a7
	ld   d, [hl]                                     ; $6d1b: $56
	adc  b                                           ; $6d1c: $88
	ld   h, c                                        ; $6d1d: $61
	ld   de, $2611                                   ; $6d1e: $11 $11 $26
	ld   a, b                                        ; $6d21: $78
	adc  e                                           ; $6d22: $8b
	rst  $28                                         ; $6d23: $ef
	rst  $38                                         ; $6d24: $ff
	ret                                              ; $6d25: $c9


	ld   [hl], a                                     ; $6d26: $77
	ld   [hl], l                                     ; $6d27: $75
	ld   hl, $9d14                                   ; $6d28: $21 $14 $9d
	xor  $ed                                         ; $6d2b: $ee $ed
	rst  $38                                         ; $6d2d: $ff
	db   $fd                                         ; $6d2e: $fd
	xor  b                                           ; $6d2f: $a8
	ld   a, b                                        ; $6d30: $78
	add  [hl]                                        ; $6d31: $86
	ld   sp, $1111                                   ; $6d32: $31 $11 $11
	ld   [de], a                                     ; $6d35: $12
	ld   b, [hl]                                     ; $6d36: $46
	ld   a, c                                        ; $6d37: $79
	cp   l                                           ; $6d38: $bd
	rst  $38                                         ; $6d39: $ff
	db   $ed                                         ; $6d3a: $ed
	res  2, a                                        ; $6d3b: $cb $97
	ld   d, e                                        ; $6d3d: $53
	inc  hl                                          ; $6d3e: $23
	ld   e, b                                        ; $6d3f: $58
	sbc  e                                           ; $6d40: $9b
	cp   h                                           ; $6d41: $bc
	rst  JumpTable                                         ; $6d42: $df
	rst  $38                                         ; $6d43: $ff
	db   $eb                                         ; $6d44: $eb
	xor  d                                           ; $6d45: $aa
	sub  a                                           ; $6d46: $97
	ld   d, e                                        ; $6d47: $53
	ld   de, $1111                                   ; $6d48: $11 $11 $11
	inc  de                                          ; $6d4b: $13
	ld   d, [hl]                                     ; $6d4c: $56
	ld   a, b                                        ; $6d4d: $78
	cp   [hl]                                        ; $6d4e: $be
	rst  $38                                         ; $6d4f: $ff
	db   $ec                                         ; $6d50: $ec
	res  7, d                                        ; $6d51: $cb $ba
	ld   [hl], l                                     ; $6d53: $75
	ld   b, [hl]                                     ; $6d54: $46
	ld   a, b                                        ; $6d55: $78
	sbc  b                                           ; $6d56: $98
	sbc  c                                           ; $6d57: $99
	cp   l                                           ; $6d58: $bd
	db   $dd                                         ; $6d59: $dd
	cp   e                                           ; $6d5a: $bb
	xor  d                                           ; $6d5b: $aa
	sub  a                                           ; $6d5c: $97
	ld   d, e                                        ; $6d5d: $53
	ld   [hl-], a                                    ; $6d5e: $32
	ld   hl, $2312                                   ; $6d5f: $21 $12 $23
	ld   b, l                                        ; $6d62: $45
	ld   l, b                                        ; $6d63: $68
	sbc  e                                           ; $6d64: $9b
	call $ccdd                                       ; $6d65: $cd $dd $cc
	jp   z, $8899                                    ; $6d68: $ca $99 $88

	sbc  b                                           ; $6d6b: $98
	adc  b                                           ; $6d6c: $88
	adc  b                                           ; $6d6d: $88
	sbc  c                                           ; $6d6e: $99
	sbc  c                                           ; $6d6f: $99
	xor  c                                           ; $6d70: $a9
	sbc  c                                           ; $6d71: $99
	add  a                                           ; $6d72: $87
	ld   h, l                                        ; $6d73: $65
	ld   d, l                                        ; $6d74: $55
	ld   b, e                                        ; $6d75: $43
	inc  sp                                          ; $6d76: $33
	inc  [hl]                                        ; $6d77: $34
	ld   d, [hl]                                     ; $6d78: $56
	ld   a, b                                        ; $6d79: $78
	sbc  e                                           ; $6d7a: $9b
	cp   e                                           ; $6d7b: $bb
	cp   e                                           ; $6d7c: $bb
	cp   h                                           ; $6d7d: $bc
	jp   z, $99aa                                    ; $6d7e: $ca $aa $99

	adc  b                                           ; $6d81: $88
	sbc  c                                           ; $6d82: $99
	adc  c                                           ; $6d83: $89
	sbc  c                                           ; $6d84: $99
	sbc  c                                           ; $6d85: $99
	sbc  c                                           ; $6d86: $99
	add  a                                           ; $6d87: $87
	halt                                             ; $6d88: $76
	ld   h, l                                        ; $6d89: $65
	ld   d, h                                        ; $6d8a: $54
	ld   b, e                                        ; $6d8b: $43
	inc  [hl]                                        ; $6d8c: $34
	ld   d, [hl]                                     ; $6d8d: $56
	ld   h, a                                        ; $6d8e: $67
	adc  b                                           ; $6d8f: $88
	xor  d                                           ; $6d90: $aa
	cp   d                                           ; $6d91: $ba
	cp   e                                           ; $6d92: $bb
	cp   e                                           ; $6d93: $bb
	xor  c                                           ; $6d94: $a9
	sbc  c                                           ; $6d95: $99
	sbc  c                                           ; $6d96: $99
	sbc  b                                           ; $6d97: $98
	sbc  c                                           ; $6d98: $99
	sbc  d                                           ; $6d99: $9a
	xor  d                                           ; $6d9a: $aa
	sbc  c                                           ; $6d9b: $99
	adc  b                                           ; $6d9c: $88
	ld   [hl], a                                     ; $6d9d: $77
	ld   h, [hl]                                     ; $6d9e: $66
	ld   d, l                                        ; $6d9f: $55
	ld   d, h                                        ; $6da0: $54
	ld   b, h                                        ; $6da1: $44
	ld   b, l                                        ; $6da2: $45
	ld   d, [hl]                                     ; $6da3: $56
	ld   [hl], a                                     ; $6da4: $77
	adc  c                                           ; $6da5: $89
	xor  e                                           ; $6da6: $ab
	cp   d                                           ; $6da7: $ba
	cp   d                                           ; $6da8: $ba
	xor  e                                           ; $6da9: $ab
	cp   d                                           ; $6daa: $ba
	xor  d                                           ; $6dab: $aa
	sbc  c                                           ; $6dac: $99
	xor  c                                           ; $6dad: $a9
	sbc  d                                           ; $6dae: $9a
	sbc  c                                           ; $6daf: $99
	sbc  c                                           ; $6db0: $99
	adc  b                                           ; $6db1: $88
	add  a                                           ; $6db2: $87
	halt                                             ; $6db3: $76
	ld   h, [hl]                                     ; $6db4: $66
	ld   d, l                                        ; $6db5: $55
	ld   b, h                                        ; $6db6: $44
	ld   b, h                                        ; $6db7: $44
	ld   d, l                                        ; $6db8: $55
	ld   h, [hl]                                     ; $6db9: $66
	ld   a, b                                        ; $6dba: $78
	sbc  c                                           ; $6dbb: $99
	xor  e                                           ; $6dbc: $ab
	cp   d                                           ; $6dbd: $ba
	xor  d                                           ; $6dbe: $aa
	xor  d                                           ; $6dbf: $aa
	xor  c                                           ; $6dc0: $a9
	sbc  c                                           ; $6dc1: $99
	sbc  c                                           ; $6dc2: $99
	xor  c                                           ; $6dc3: $a9
	sbc  c                                           ; $6dc4: $99
	sbc  c                                           ; $6dc5: $99
	adc  c                                           ; $6dc6: $89
	adc  b                                           ; $6dc7: $88
	add  a                                           ; $6dc8: $87
	halt                                             ; $6dc9: $76
	ld   h, l                                        ; $6dca: $65
	ld   d, h                                        ; $6dcb: $54
	ld   b, h                                        ; $6dcc: $44
	ld   b, h                                        ; $6dcd: $44
	ld   d, l                                        ; $6dce: $55
	ld   h, a                                        ; $6dcf: $67
	adc  b                                           ; $6dd0: $88
	xor  d                                           ; $6dd1: $aa
	cp   d                                           ; $6dd2: $ba
	cp   e                                           ; $6dd3: $bb
	xor  e                                           ; $6dd4: $ab
	xor  d                                           ; $6dd5: $aa
	xor  c                                           ; $6dd6: $a9
	sbc  d                                           ; $6dd7: $9a
	sbc  c                                           ; $6dd8: $99
	sbc  c                                           ; $6dd9: $99
	sbc  c                                           ; $6dda: $99
	sbc  b                                           ; $6ddb: $98
	adc  b                                           ; $6ddc: $88
	adc  b                                           ; $6ddd: $88
	ld   [hl], a                                     ; $6dde: $77
	ld   h, [hl]                                     ; $6ddf: $66
	ld   d, l                                        ; $6de0: $55
	ld   d, h                                        ; $6de1: $54
	ld   b, h                                        ; $6de2: $44
	ld   b, l                                        ; $6de3: $45
	ld   h, [hl]                                     ; $6de4: $66
	ld   a, b                                        ; $6de5: $78
	adc  d                                           ; $6de6: $8a
	xor  e                                           ; $6de7: $ab
	xor  d                                           ; $6de8: $aa
	xor  d                                           ; $6de9: $aa
	cp   d                                           ; $6dea: $ba
	xor  d                                           ; $6deb: $aa
	sbc  c                                           ; $6dec: $99
	sbc  c                                           ; $6ded: $99
	sbc  c                                           ; $6dee: $99
	sbc  c                                           ; $6def: $99
	sbc  c                                           ; $6df0: $99
	sbc  c                                           ; $6df1: $99
	adc  c                                           ; $6df2: $89
	add  a                                           ; $6df3: $87
	ld   [hl], a                                     ; $6df4: $77
	ld   h, [hl]                                     ; $6df5: $66
	ld   d, l                                        ; $6df6: $55
	ld   d, h                                        ; $6df7: $54
	ld   b, l                                        ; $6df8: $45
	ld   d, l                                        ; $6df9: $55
	ld   h, [hl]                                     ; $6dfa: $66
	ld   a, b                                        ; $6dfb: $78
	adc  d                                           ; $6dfc: $8a
	xor  d                                           ; $6dfd: $aa
	xor  e                                           ; $6dfe: $ab
	cp   e                                           ; $6dff: $bb
	xor  d                                           ; $6e00: $aa
	sbc  d                                           ; $6e01: $9a
	xor  d                                           ; $6e02: $aa
	sbc  c                                           ; $6e03: $99
	sbc  c                                           ; $6e04: $99
	sbc  c                                           ; $6e05: $99
	sbc  c                                           ; $6e06: $99
	adc  c                                           ; $6e07: $89
	adc  b                                           ; $6e08: $88
	adc  b                                           ; $6e09: $88
	ld   [hl], a                                     ; $6e0a: $77
	ld   h, [hl]                                     ; $6e0b: $66
	ld   h, l                                        ; $6e0c: $65
	ld   d, l                                        ; $6e0d: $55
	ld   d, l                                        ; $6e0e: $55
	ld   d, [hl]                                     ; $6e0f: $56
	ld   h, a                                        ; $6e10: $67
	adc  c                                           ; $6e11: $89
	sbc  c                                           ; $6e12: $99
	xor  d                                           ; $6e13: $aa
	xor  d                                           ; $6e14: $aa
	xor  d                                           ; $6e15: $aa
	sbc  c                                           ; $6e16: $99
	xor  c                                           ; $6e17: $a9
	sbc  c                                           ; $6e18: $99
	sbc  c                                           ; $6e19: $99
	sbc  c                                           ; $6e1a: $99
	adc  b                                           ; $6e1b: $88
	sbc  c                                           ; $6e1c: $99
	sbc  c                                           ; $6e1d: $99
	sbc  c                                           ; $6e1e: $99
	adc  b                                           ; $6e1f: $88
	ld   [hl], a                                     ; $6e20: $77
	halt                                             ; $6e21: $76
	ld   h, l                                        ; $6e22: $65
	ld   d, l                                        ; $6e23: $55
	ld   d, l                                        ; $6e24: $55
	ld   h, [hl]                                     ; $6e25: $66
	ld   [hl], a                                     ; $6e26: $77
	adc  b                                           ; $6e27: $88
	sbc  c                                           ; $6e28: $99
	xor  d                                           ; $6e29: $aa
	xor  c                                           ; $6e2a: $a9
	sbc  c                                           ; $6e2b: $99
	sbc  d                                           ; $6e2c: $9a
	xor  d                                           ; $6e2d: $aa
	xor  c                                           ; $6e2e: $a9
	sbc  b                                           ; $6e2f: $98
	adc  c                                           ; $6e30: $89
	sbc  b                                           ; $6e31: $98
	adc  c                                           ; $6e32: $89
	sbc  c                                           ; $6e33: $99
	sbc  c                                           ; $6e34: $99
	adc  b                                           ; $6e35: $88
	ld   [hl], a                                     ; $6e36: $77
	halt                                             ; $6e37: $76
	ld   h, [hl]                                     ; $6e38: $66
	ld   d, l                                        ; $6e39: $55
	ld   d, l                                        ; $6e3a: $55
	ld   h, [hl]                                     ; $6e3b: $66
	ld   [hl], a                                     ; $6e3c: $77
	ld   a, b                                        ; $6e3d: $78
	adc  c                                           ; $6e3e: $89
	sbc  d                                           ; $6e3f: $9a
	xor  d                                           ; $6e40: $aa
	sbc  c                                           ; $6e41: $99
	sbc  d                                           ; $6e42: $9a
	xor  c                                           ; $6e43: $a9
	sbc  c                                           ; $6e44: $99
	adc  b                                           ; $6e45: $88
	sbc  c                                           ; $6e46: $99
	sbc  c                                           ; $6e47: $99
	sbc  b                                           ; $6e48: $98
	adc  c                                           ; $6e49: $89
	sbc  c                                           ; $6e4a: $99
	adc  b                                           ; $6e4b: $88
	ld   [hl], a                                     ; $6e4c: $77
	halt                                             ; $6e4d: $76
	ld   h, [hl]                                     ; $6e4e: $66
	ld   h, [hl]                                     ; $6e4f: $66
	ld   h, [hl]                                     ; $6e50: $66
	ld   h, [hl]                                     ; $6e51: $66
	ld   [hl], a                                     ; $6e52: $77
	ld   a, b                                        ; $6e53: $78
	adc  b                                           ; $6e54: $88
	sbc  c                                           ; $6e55: $99
	xor  d                                           ; $6e56: $aa
	sbc  c                                           ; $6e57: $99
	xor  d                                           ; $6e58: $aa
	sbc  c                                           ; $6e59: $99
	sbc  b                                           ; $6e5a: $98
	adc  c                                           ; $6e5b: $89
	sbc  c                                           ; $6e5c: $99
	sbc  c                                           ; $6e5d: $99
	sbc  c                                           ; $6e5e: $99
	sbc  c                                           ; $6e5f: $99
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	ld   [hl], a                                     ; $6e62: $77
	ld   [hl], a                                     ; $6e63: $77
	ld   [hl], a                                     ; $6e64: $77
	ld   h, [hl]                                     ; $6e65: $66
	ld   h, [hl]                                     ; $6e66: $66
	ld   h, [hl]                                     ; $6e67: $66
	ld   h, a                                        ; $6e68: $67
	ld   [hl], a                                     ; $6e69: $77
	adc  c                                           ; $6e6a: $89
	sbc  c                                           ; $6e6b: $99
	sbc  c                                           ; $6e6c: $99
	xor  d                                           ; $6e6d: $aa
	xor  d                                           ; $6e6e: $aa
	sbc  c                                           ; $6e6f: $99
	sbc  c                                           ; $6e70: $99
	sbc  b                                           ; $6e71: $98
	adc  b                                           ; $6e72: $88
	adc  b                                           ; $6e73: $88
	adc  c                                           ; $6e74: $89
	sbc  b                                           ; $6e75: $98
	adc  b                                           ; $6e76: $88
	ld   [hl], a                                     ; $6e77: $77
	ld   [hl], a                                     ; $6e78: $77
	ld   [hl], a                                     ; $6e79: $77
	ld   [hl], a                                     ; $6e7a: $77
	halt                                             ; $6e7b: $76
	ld   h, [hl]                                     ; $6e7c: $66
	ld   h, [hl]                                     ; $6e7d: $66
	ld   h, a                                        ; $6e7e: $67
	ld   [hl], a                                     ; $6e7f: $77
	adc  b                                           ; $6e80: $88
	sbc  c                                           ; $6e81: $99
	sbc  b                                           ; $6e82: $98
	xor  d                                           ; $6e83: $aa
	xor  d                                           ; $6e84: $aa
	sbc  c                                           ; $6e85: $99
	sbc  c                                           ; $6e86: $99
	xor  d                                           ; $6e87: $aa
	sbc  b                                           ; $6e88: $98
	adc  c                                           ; $6e89: $89
	sbc  d                                           ; $6e8a: $9a
	cp   e                                           ; $6e8b: $bb
	xor  c                                           ; $6e8c: $a9
	ld   h, l                                        ; $6e8d: $65
	ld   d, l                                        ; $6e8e: $55
	ld   h, [hl]                                     ; $6e8f: $66
	ld   d, l                                        ; $6e90: $55
	ld   d, h                                        ; $6e91: $54
	ld   d, [hl]                                     ; $6e92: $56
	ld   h, a                                        ; $6e93: $67
	sbc  c                                           ; $6e94: $99
	sbc  d                                           ; $6e95: $9a
	xor  c                                           ; $6e96: $a9
	xor  c                                           ; $6e97: $a9
	sbc  c                                           ; $6e98: $99
	xor  e                                           ; $6e99: $ab
	cp   e                                           ; $6e9a: $bb
	sbc  c                                           ; $6e9b: $99
	adc  c                                           ; $6e9c: $89
	xor  d                                           ; $6e9d: $aa
	sbc  c                                           ; $6e9e: $99
	sbc  b                                           ; $6e9f: $98
	add  [hl]                                        ; $6ea0: $86
	ld   b, d                                        ; $6ea1: $42
	inc  hl                                          ; $6ea2: $23
	ld   b, l                                        ; $6ea3: $45
	ld   b, e                                        ; $6ea4: $43
	ld   b, l                                        ; $6ea5: $45
	sbc  d                                           ; $6ea6: $9a
	cp   e                                           ; $6ea7: $bb
	xor  d                                           ; $6ea8: $aa
	cp   e                                           ; $6ea9: $bb
	cp   d                                           ; $6eaa: $ba
	sbc  c                                           ; $6eab: $99
	xor  d                                           ; $6eac: $aa
	xor  c                                           ; $6ead: $a9
	xor  c                                           ; $6eae: $a9
	cp   e                                           ; $6eaf: $bb
	sbc  c                                           ; $6eb0: $99
	add  a                                           ; $6eb1: $87
	ld   [hl], l                                     ; $6eb2: $75
	ld   sp, $2411                                   ; $6eb3: $31 $11 $24
	ld   d, h                                        ; $6eb6: $54
	ld   d, a                                        ; $6eb7: $57
	xor  h                                           ; $6eb8: $ac
	xor  $dc                                         ; $6eb9: $ee $dc
	cp   d                                           ; $6ebb: $ba
	xor  d                                           ; $6ebc: $aa
	xor  b                                           ; $6ebd: $a8
	adc  c                                           ; $6ebe: $89
	xor  d                                           ; $6ebf: $aa
	cp   d                                           ; $6ec0: $ba
	sbc  c                                           ; $6ec1: $99
	sbc  c                                           ; $6ec2: $99
	sub  [hl]                                        ; $6ec3: $96
	ld   hl, $1211                                   ; $6ec4: $21 $11 $12
	inc  [hl]                                        ; $6ec7: $34
	ld   e, b                                        ; $6ec8: $58
	adc  $ff                                         ; $6ec9: $ce $ff
	xor  $cb                                         ; $6ecb: $ee $cb
	db   $db                                         ; $6ecd: $db
	and  a                                           ; $6ece: $a7
	ld   d, a                                        ; $6ecf: $57
	sbc  c                                           ; $6ed0: $99
	xor  d                                           ; $6ed1: $aa
	xor  d                                           ; $6ed2: $aa
	xor  d                                           ; $6ed3: $aa
	add  e                                           ; $6ed4: $83
	ld   de, $1311                                   ; $6ed5: $11 $11 $13
	ld   b, l                                        ; $6ed8: $45
	sbc  h                                           ; $6ed9: $9c
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	db   $fc                                         ; $6edc: $fc
	call z, $64c9                                    ; $6edd: $cc $c9 $64
	ld   d, a                                        ; $6ee0: $57
	cp   h                                           ; $6ee1: $bc
	jp   z, Jump_0f3_7499                            ; $6ee2: $ca $99 $74

	ld   de, $1111                                   ; $6ee5: $11 $11 $11
	ld   e, b                                        ; $6ee8: $58
	adc  $ff                                         ; $6ee9: $ce $ff
	rst  $38                                         ; $6eeb: $ff
	ei                                               ; $6eec: $fb
	cp   b                                           ; $6eed: $b8
	sbc  c                                           ; $6eee: $99
	ld   d, l                                        ; $6eef: $55
	ld   e, b                                        ; $6ef0: $58
	rst  $28                                         ; $6ef1: $ef
	cp   $97                                         ; $6ef2: $fe $97
	ld   sp, $1111                                   ; $6ef4: $31 $11 $11
	inc  d                                           ; $6ef7: $14
	cp   a                                           ; $6ef8: $bf
	rst  $38                                         ; $6ef9: $ff
	rst  $38                                         ; $6efa: $ff
	rst  $38                                         ; $6efb: $ff
	or   a                                           ; $6efc: $b7
	ld   d, l                                        ; $6efd: $55
	halt                                             ; $6efe: $76
	ld   d, [hl]                                     ; $6eff: $56
	sbc  a                                           ; $6f00: $9f
	rst  $38                                         ; $6f01: $ff
	ld   a, [$1151]                                  ; $6f02: $fa $51 $11
	ld   de, $6f11                                   ; $6f05: $11 $11 $6f
	rst  $38                                         ; $6f08: $ff
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	add  sp, $41                                     ; $6f0b: $e8 $41
	ld   b, [hl]                                     ; $6f0d: $46
	ld   [hl], a                                     ; $6f0e: $77
	ld   a, e                                        ; $6f0f: $7b
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	ld   [hl], c                                     ; $6f12: $71
	ld   de, $1111                                   ; $6f13: $11 $11 $11
	cpl                                              ; $6f16: $2f
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	jp   c, $2562                                    ; $6f1a: $da $62 $25

	adc  e                                           ; $6f1d: $8b
	adc  $ff                                         ; $6f1e: $ce $ff
	cp   $a2                                         ; $6f20: $fe $a2
	ld   de, $1111                                   ; $6f22: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f25: $cf
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	jp   z, $3385                                    ; $6f28: $ca $85 $33

	ld   c, b                                        ; $6f2b: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f2c: $cf
	rst  $38                                         ; $6f2d: $ff
	rst  $38                                         ; $6f2e: $ff
	ei                                               ; $6f2f: $fb
	add  h                                           ; $6f30: $84
	ld   de, $1111                                   ; $6f31: $11 $11 $11
	rst  $38                                         ; $6f34: $ff
	rst  $38                                         ; $6f35: $ff
	db   $fd                                         ; $6f36: $fd
	cp   b                                           ; $6f37: $b8
	ld   b, d                                        ; $6f38: $42
	inc  de                                          ; $6f39: $13
	sbc  [hl]                                        ; $6f3a: $9e
	rst  $38                                         ; $6f3b: $ff
	xor  $ff                                         ; $6f3c: $ee $ff
	ei                                               ; $6f3e: $fb
	ld   [hl], c                                     ; $6f3f: $71
	ld   de, $1511                                   ; $6f40: $11 $11 $15
	rst  $38                                         ; $6f43: $ff
	rst  $38                                         ; $6f44: $ff
	rst  $30                                         ; $6f45: $f7
	ld   d, d                                        ; $6f46: $52
	inc  hl                                          ; $6f47: $23
	jr   c, @-$1f                                    ; $6f48: $38 $df

	rst  $38                                         ; $6f4a: $ff
	cp   $ce                                         ; $6f4b: $fe $ce
	ret                                              ; $6f4d: $c9


	ld   [hl], c                                     ; $6f4e: $71
	ld   de, $1f11                                   ; $6f4f: $11 $11 $1f
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	ld   b, e                                        ; $6f54: $43
	ld   hl, $7d43                                   ; $6f55: $21 $43 $7d
	rst  $38                                         ; $6f58: $ff
	rst  $38                                         ; $6f59: $ff
	jp   c, $c9ce                                    ; $6f5a: $da $ce $c9

	ld   de, $1211                                   ; $6f5d: $11 $11 $12
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	ldh  a, [c]                                      ; $6f62: $f2
	ld   [hl+], a                                    ; $6f63: $22
	dec  d                                           ; $6f64: $15
	ld   c, b                                        ; $6f65: $48
	rst  $38                                         ; $6f66: $ff
	rst  $38                                         ; $6f67: $ff
	call c, $fcab                                    ; $6f68: $dc $ab $fc
	ld   [hl], c                                     ; $6f6b: $71
	ld   de, $bf11                                   ; $6f6c: $11 $11 $bf
	rst  $38                                         ; $6f6f: $ff
	ld   sp, hl                                      ; $6f70: $f9
	ld   de, $7614                                   ; $6f71: $11 $14 $76
	cp   a                                           ; $6f74: $bf
	rst  $38                                         ; $6f75: $ff
	ei                                               ; $6f76: $fb
	xor  d                                           ; $6f77: $aa
	rst  JumpTable                                         ; $6f78: $df
	or   e                                           ; $6f79: $b3
	ld   de, $1f11                                   ; $6f7a: $11 $11 $1f
	rst  $38                                         ; $6f7d: $ff
	db   $fc                                         ; $6f7e: $fc
	ld   de, $9835                                   ; $6f7f: $11 $35 $98
	adc  [hl]                                        ; $6f82: $8e
	rst  $38                                         ; $6f83: $ff
	db   $fc                                         ; $6f84: $fc
	ld   [hl], a                                     ; $6f85: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f86: $cf
	rst  $30                                         ; $6f87: $f7
	ld   de, $1f11                                   ; $6f88: $11 $11 $1f
	rst  $38                                         ; $6f8b: $ff
	db   $fd                                         ; $6f8c: $fd
	ld   de, $aa26                                   ; $6f8d: $11 $26 $aa
	sbc  [hl]                                        ; $6f90: $9e
	rst  $38                                         ; $6f91: $ff
	db   $fd                                         ; $6f92: $fd
	ld   h, l                                        ; $6f93: $65
	xor  a                                           ; $6f94: $af
	ld   sp, hl                                      ; $6f95: $f9
	ld   de, $1f11                                   ; $6f96: $11 $11 $1f
	rst  $38                                         ; $6f99: $ff
	push af                                          ; $6f9a: $f5
	ld   de, $d96c                                   ; $6f9b: $11 $6c $d9
	sbc  h                                           ; $6f9e: $9c
	rst  $38                                         ; $6f9f: $ff
	ld   sp, hl                                      ; $6fa0: $f9
	inc  [hl]                                        ; $6fa1: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa2: $cf
	db   $f4                                         ; $6fa3: $f4
	ld   de, rAUD1LEN                                   ; $6fa4: $11 $11 $ff
	rst  $38                                         ; $6fa7: $ff
	pop  bc                                          ; $6fa8: $c1
	ld   de, $eabd                                   ; $6fa9: $11 $bd $ea
	xor  a                                           ; $6fac: $af
	rst  $38                                         ; $6fad: $ff
	push hl                                          ; $6fae: $e5
	ld   d, $cf                                      ; $6faf: $16 $cf
	or   c                                           ; $6fb1: $b1

jr_0f3_6fb2:
	ld   de, rAUD1LEN                                   ; $6fb2: $11 $11 $ff
	rst  $38                                         ; $6fb5: $ff
	ld   de, $ff17                                   ; $6fb6: $11 $17 $ff
	ld   sp, hl                                      ; $6fb9: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fba: $cf
	rst  $38                                         ; $6fbb: $ff
	add  c                                           ; $6fbc: $81
	ld   d, $ff                                      ; $6fbd: $16 $ff
	ld   bc, $1f11                                   ; $6fbf: $01 $11 $1f
	rst  $38                                         ; $6fc2: $ff
	pop  af                                          ; $6fc3: $f1
	ld   de, $fe7f                                   ; $6fc4: $11 $7f $fe
	ld   a, e                                        ; $6fc7: $7b
	rst  $38                                         ; $6fc8: $ff
	ld   hl, sp+$11                                  ; $6fc9: $f8 $11
	ccf                                              ; $6fcb: $3f
	pop  af                                          ; $6fcc: $f1
	ld   de, $ff17                                   ; $6fcd: $11 $17 $ff
	db   $fd                                         ; $6fd0: $fd
	ld   de, $ff1e                                   ; $6fd1: $11 $1e $ff
	and  h                                           ; $6fd4: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fd5: $cf
	rst  $38                                         ; $6fd6: $ff
	ld   b, c                                        ; $6fd7: $41
	ld   d, $f8                                      ; $6fd8: $16 $f8
	ld   de, rAUD1LEN                                   ; $6fda: $11 $11 $ff
	rst  $38                                         ; $6fdd: $ff
	ld   de, $ff18                                   ; $6fde: $11 $18 $ff
	db   $e3                                         ; $6fe1: $e3
	ld   e, a                                        ; $6fe2: $5f
	rst  $38                                         ; $6fe3: $ff
	sub  c                                           ; $6fe4: $91
	inc  de                                          ; $6fe5: $13
	reti                                             ; $6fe6: $d9


	ld   de, rAUD1LEN                                   ; $6fe7: $11 $11 $ff
	rst  $38                                         ; $6fea: $ff
	ld   de, $ff18                                   ; $6feb: $11 $18 $ff
	ldh  [c], a                                      ; $6fee: $e2
	ld   e, a                                        ; $6fef: $5f
	rst  $38                                         ; $6ff0: $ff
	add  c                                           ; $6ff1: $81
	ld   [de], a                                     ; $6ff2: $12
	or   h                                           ; $6ff3: $b4
	ld   de, rAUD1LOW                                   ; $6ff4: $11 $13 $ff
	cp   $11                                         ; $6ff7: $fe $11
	rra                                              ; $6ff9: $1f
	rst  $38                                         ; $6ffa: $ff
	sub  d                                           ; $6ffb: $92
	adc  a                                           ; $6ffc: $8f
	cp   $11                                         ; $6ffd: $fe $11
	jr   jr_0f3_6fb2                                 ; $6fff: $18 $b1

	ld   de, $ff1f                                   ; $7001: $11 $1f $ff
	pop  af                                          ; $7004: $f1
	ld   de, $fbef                                   ; $7005: $11 $ef $fb
	rla                                              ; $7008: $17
	rst  $38                                         ; $7009: $ff
	pop  af                                          ; $700a: $f1
	ld   de, $1139                                   ; $700b: $11 $39 $11
	ld   de, $ffff                                   ; $700e: $11 $ff $ff
	ld   de, $ff1f                                   ; $7011: $11 $1f $ff
	and  c                                           ; $7014: $a1
	ld   a, a                                        ; $7015: $7f
	cp   $11                                         ; $7016: $fe $11
	dec  d                                           ; $7018: $15
	ld   h, c                                        ; $7019: $61
	ld   de, $ff4f                                   ; $701a: $11 $4f $ff
	sub  c                                           ; $701d: $91
	ld   de, $f9ff                                   ; $701e: $11 $ff $f9
	ld   c, c                                        ; $7021: $49
	rst  $38                                         ; $7022: $ff
	ld   b, c                                        ; $7023: $41
	ld   de, $1151                                   ; $7024: $11 $51 $11
	rra                                              ; $7027: $1f
	rst  $38                                         ; $7028: $ff
	pop  af                                          ; $7029: $f1
	ld   de, $ffdf                                   ; $702a: $11 $df $ff
	sub  a                                           ; $702d: $97
	rst  $38                                         ; $702e: $ff
	ld   d, c                                        ; $702f: $51
	ld   de, $1111                                   ; $7030: $11 $11 $11
	cpl                                              ; $7033: $2f
	rst  $38                                         ; $7034: $ff
	pop  af                                          ; $7035: $f1
	ld   de, $ffbf                                   ; $7036: $11 $bf $ff
	db   $eb                                         ; $7039: $eb
	ei                                               ; $703a: $fb
	ld   de, $1111                                   ; $703b: $11 $11 $11
	ld   de, $ffbf                                   ; $703e: $11 $bf $ff
	add  c                                           ; $7041: $81
	ld   de, $ffef                                   ; $7042: $11 $ef $ff
	ei                                               ; $7045: $fb
	and  d                                           ; $7046: $a2
	ld   de, $1111                                   ; $7047: $11 $11 $11
	ccf                                              ; $704a: $3f
	rst  $38                                         ; $704b: $ff
	ld   hl, sp+$11                                  ; $704c: $f8 $11
	dec  e                                           ; $704e: $1d
	rst  $38                                         ; $704f: $ff
	rst  $38                                         ; $7050: $ff
	add  sp, $11                                     ; $7051: $e8 $11
	ld   de, $3b11                                   ; $7053: $11 $11 $3b
	rst  $38                                         ; $7056: $ff
	rst  $38                                         ; $7057: $ff
	ld   [hl], c                                     ; $7058: $71
	ld   de, $ffbf                                   ; $7059: $11 $bf $ff
	cp   $71                                         ; $705c: $fe $71
	ld   de, $1a11                                   ; $705e: $11 $11 $1a
	rst  $38                                         ; $7061: $ff
	rst  $38                                         ; $7062: $ff
	pop  de                                          ; $7063: $d1
	ld   de, $ff9f                                   ; $7064: $11 $9f $ff
	ld   sp, hl                                      ; $7067: $f9
	ld   hl, $1111                                   ; $7068: $21 $11 $11
	sbc  a                                           ; $706b: $9f
	rst  $38                                         ; $706c: $ff
	rst  $38                                         ; $706d: $ff
	or   e                                           ; $706e: $b3
	inc  de                                          ; $706f: $13
	sbc  a                                           ; $7070: $9f
	rst  $38                                         ; $7071: $ff
	db   $f4                                         ; $7072: $f4
	ld   de, $1611                                   ; $7073: $11 $11 $16
	rst  $38                                         ; $7076: $ff
	rst  $38                                         ; $7077: $ff
	cp   $41                                         ; $7078: $fe $41
	dec  d                                           ; $707a: $15
	rst  $38                                         ; $707b: $ff
	rst  $38                                         ; $707c: $ff
	ld   d, c                                        ; $707d: $51
	ld   de, $cf11                                   ; $707e: $11 $11 $cf
	rst  $38                                         ; $7081: $ff
	rst  $38                                         ; $7082: $ff
	rst  ToBoot                                         ; $7083: $c7
	ld   de, $ff6f                                   ; $7084: $11 $6f $ff
	db   $f4                                         ; $7087: $f4
	ld   de, $1911                                   ; $7088: $11 $11 $19
	rst  $38                                         ; $708b: $ff
	rst  $38                                         ; $708c: $ff
	ei                                               ; $708d: $fb
	ld   sp, $ff17                                   ; $708e: $31 $17 $ff
	rst  $38                                         ; $7091: $ff
	ld   b, c                                        ; $7092: $41
	ld   de, $ef11                                   ; $7093: $11 $11 $ef
	rst  $38                                         ; $7096: $ff
	rst  $38                                         ; $7097: $ff
	push bc                                          ; $7098: $c5
	ld   de, $ff5f                                   ; $7099: $11 $5f $ff
	db   $f4                                         ; $709c: $f4
	ld   de, $1e11                                   ; $709d: $11 $11 $1e
	rst  $38                                         ; $70a0: $ff
	rst  $38                                         ; $70a1: $ff
	db   $fc                                         ; $70a2: $fc
	ld   b, c                                        ; $70a3: $41
	rla                                              ; $70a4: $17
	rst  $38                                         ; $70a5: $ff
	db   $fd                                         ; $70a6: $fd
	ld   de, $1511                                   ; $70a7: $11 $11 $15
	rst  $38                                         ; $70aa: $ff
	rst  $38                                         ; $70ab: $ff
	cp   $b4                                         ; $70ac: $fe $b4
	ld   [de], a                                     ; $70ae: $12
	sbc  a                                           ; $70af: $9f
	rst  $38                                         ; $70b0: $ff
	pop  bc                                          ; $70b1: $c1
	ld   de, $af11                                   ; $70b2: $11 $11 $af
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	ld   a, [$1c21]                                  ; $70b7: $fa $21 $1c
	rst  $38                                         ; $70ba: $ff
	rst  $30                                         ; $70bb: $f7
	ld   de, $1d11                                   ; $70bc: $11 $11 $1d
	rst  $38                                         ; $70bf: $ff
	rst  $38                                         ; $70c0: $ff
	rst  $38                                         ; $70c1: $ff
	add  d                                           ; $70c2: $82
	inc  h                                           ; $70c3: $24
	rst  $28                                         ; $70c4: $ef
	rst  $38                                         ; $70c5: $ff
	ld   sp, $1711                                   ; $70c6: $31 $11 $17
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	and  $21                                         ; $70cc: $e6 $21
	sbc  a                                           ; $70ce: $9f
	rst  $38                                         ; $70cf: $ff
	sub  c                                           ; $70d0: $91
	ld   de, $ef11                                   ; $70d1: $11 $11 $ef
	rst  $38                                         ; $70d4: $ff
	rst  $38                                         ; $70d5: $ff
	ld   a, [$2d21]                                  ; $70d6: $fa $21 $2d
	rst  $38                                         ; $70d9: $ff
	db   $f4                                         ; $70da: $f4
	ld   de, $8f11                                   ; $70db: $11 $11 $8f
	rst  $38                                         ; $70de: $ff
	rst  $38                                         ; $70df: $ff
	rst  $38                                         ; $70e0: $ff
	ld   [hl], c                                     ; $70e1: $71
	rla                                              ; $70e2: $17
	rst  $38                                         ; $70e3: $ff
	ld   sp, hl                                      ; $70e4: $f9
	ld   de, $2f11                                   ; $70e5: $11 $11 $2f
	rst  $38                                         ; $70e8: $ff
	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	or   d                                           ; $70eb: $b2
	inc  de                                          ; $70ec: $13
	rst  $28                                         ; $70ed: $ef
	rst  $38                                         ; $70ee: $ff
	ld   de, $1c11                                   ; $70ef: $11 $11 $1c
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	or   h                                           ; $70f5: $b4
	ld   de, $ffcf                                   ; $70f6: $11 $cf $ff
	ld   sp, $1611                                   ; $70f9: $31 $11 $16
	rst  $38                                         ; $70fc: $ff
	rst  $38                                         ; $70fd: $ff
	rst  $38                                         ; $70fe: $ff
	ld   a, [$5f21]                                  ; $70ff: $fa $21 $5f
	rst  $38                                         ; $7102: $ff
	pop  bc                                          ; $7103: $c1
	ld   de, rAUD1LEN                                   ; $7104: $11 $11 $ff
	rst  $38                                         ; $7107: $ff
	rst  $28                                         ; $7108: $ef
	db   $fc                                         ; $7109: $fc
	ld   d, d                                        ; $710a: $52
	ld   c, a                                        ; $710b: $4f
	rst  $38                                         ; $710c: $ff
	pop  af                                          ; $710d: $f1
	ld   de, $9f11                                   ; $710e: $11 $11 $9f
	rst  $38                                         ; $7111: $ff
	db   $fd                                         ; $7112: $fd
	rst  $38                                         ; $7113: $ff
	and  l                                           ; $7114: $a5
	add  hl, hl                                      ; $7115: $29
	rst  $38                                         ; $7116: $ff
	ld   hl, sp+$11                                  ; $7117: $f8 $11
	ld   de, $ff5f                                   ; $7119: $11 $5f $ff
	db   $fd                                         ; $711c: $fd
	rst  $28                                         ; $711d: $ef
	sub  $24                                         ; $711e: $d6 $24
	rst  $38                                         ; $7120: $ff
	rst  $38                                         ; $7121: $ff
	ld   de, $1e11                                   ; $7122: $11 $11 $1e
	rst  $38                                         ; $7125: $ff
	cp   $df                                         ; $7126: $fe $df
	ld   hl, sp+$21                                  ; $7128: $f8 $21
	cp   a                                           ; $712a: $bf
	rst  $38                                         ; $712b: $ff
	ld   hl, $1a11                                   ; $712c: $21 $11 $1a
	rst  $38                                         ; $712f: $ff
	db   $fd                                         ; $7130: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7131: $cf
	ld   a, [$9f64]                                  ; $7132: $fa $64 $9f
	rst  $38                                         ; $7135: $ff
	ld   [hl], c                                     ; $7136: $71
	ld   de, rAUD1HIGH                                   ; $7137: $11 $14 $ff
	cp   $ac                                         ; $713a: $fe $ac
	rst  $38                                         ; $713c: $ff
	sub  a                                           ; $713d: $97
	ld   a, [hl]                                     ; $713e: $7e
	rst  $38                                         ; $713f: $ff
	pop  de                                          ; $7140: $d1
	ld   de, rAUD1LEN                                   ; $7141: $11 $11 $ff
	rst  $38                                         ; $7144: $ff
	cp   d                                           ; $7145: $ba
	rst  $38                                         ; $7146: $ff
	or   a                                           ; $7147: $b7
	ld   e, e                                        ; $7148: $5b
	rst  $38                                         ; $7149: $ff
	di                                               ; $714a: $f3
	ld   de, $8f11                                   ; $714b: $11 $11 $8f
	rst  $38                                         ; $714e: $ff
	db   $db                                         ; $714f: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7150: $cf
	jp   c, $ff7a                                    ; $7151: $da $7a $ff

	ld   hl, sp+$11                                  ; $7154: $f8 $11
	ld   de, $ff3f                                   ; $7156: $11 $3f $ff
	ei                                               ; $7159: $fb
	xor  a                                           ; $715a: $af
	ld   a, [$ff87]                                  ; $715b: $fa $87 $ff
	cp   $11                                         ; $715e: $fe $11
	ld   de, $ff1b                                   ; $7160: $11 $1b $ff
	db   $fd                                         ; $7163: $fd
	cp   [hl]                                        ; $7164: $be
	db   $eb                                         ; $7165: $eb
	xor  b                                           ; $7166: $a8
	rst  $28                                         ; $7167: $ef
	rst  $38                                         ; $7168: $ff
	ld   hl, $1611                                   ; $7169: $21 $11 $16
	rst  $38                                         ; $716c: $ff
	rst  $38                                         ; $716d: $ff
	cp   l                                           ; $716e: $bd
	db   $fd                                         ; $716f: $fd
	sbc  b                                           ; $7170: $98
	xor  a                                           ; $7171: $af
	rst  $38                                         ; $7172: $ff
	sub  c                                           ; $7173: $91
	ld   de, rAUD1ENV                                   ; $7174: $11 $12 $ff
	cp   $cf                                         ; $7177: $fe $cf
	rst  $38                                         ; $7179: $ff
	or   [hl]                                        ; $717a: $b6
	ld   a, a                                        ; $717b: $7f
	rst  $38                                         ; $717c: $ff
	or   c                                           ; $717d: $b1
	ld   de, $ef11                                   ; $717e: $11 $11 $ef
	cp   $ce                                         ; $7181: $fe $ce
	rst  $38                                         ; $7183: $ff
	ret                                              ; $7184: $c9


	ld   a, a                                        ; $7185: $7f
	rst  $38                                         ; $7186: $ff
	pop  hl                                          ; $7187: $e1
	ld   de, $bf11                                   ; $7188: $11 $11 $bf
	cp   $bd                                         ; $718b: $fe $bd
	rst  $38                                         ; $718d: $ff
	ei                                               ; $718e: $fb
	adc  h                                           ; $718f: $8c
	rst  $38                                         ; $7190: $ff
	di                                               ; $7191: $f3
	ld   de, $7f11                                   ; $7192: $11 $11 $7f
	rst  $38                                         ; $7195: $ff
	cp   h                                           ; $7196: $bc
	rst  $38                                         ; $7197: $ff
	db   $fc                                         ; $7198: $fc
	ld   a, c                                        ; $7199: $79
	rst  $38                                         ; $719a: $ff
	or   $11                                         ; $719b: $f6 $11
	ld   de, $ff4f                                   ; $719d: $11 $4f $ff
	set  7, a                                        ; $71a0: $cb $ff
	db   $fd                                         ; $71a2: $fd
	sbc  c                                           ; $71a3: $99
	rst  $38                                         ; $71a4: $ff
	ld   a, [$1111]                                  ; $71a5: $fa $11 $11
	inc  e                                           ; $71a8: $1c
	rst  $38                                         ; $71a9: $ff
	jp   z, $ffef                                    ; $71aa: $ca $ef $ff

	ret                                              ; $71ad: $c9


	rst  $28                                         ; $71ae: $ef
	db   $fc                                         ; $71af: $fc
	ld   de, $1b11                                   ; $71b0: $11 $11 $1b
	rst  $38                                         ; $71b3: $ff
	jp   z, $ffdf                                    ; $71b4: $ca $df $ff

	reti                                             ; $71b7: $d9


	rst  JumpTable                                         ; $71b8: $df
	cp   $11                                         ; $71b9: $fe $11
	ld   de, $ff18                                   ; $71bb: $11 $18 $ff
	jp   c, $ffcf                                    ; $71be: $da $cf $ff

	ld   sp, hl                                      ; $71c1: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71c2: $cf
	rst  $38                                         ; $71c3: $ff
	ld   sp, $1611                                   ; $71c4: $31 $11 $16
	rst  $38                                         ; $71c7: $ff
	ret  z                                           ; $71c8: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71c9: $cf
	rst  $38                                         ; $71ca: $ff
	ld   sp, hl                                      ; $71cb: $f9
	cp   a                                           ; $71cc: $bf
	rst  $38                                         ; $71cd: $ff
	ld   b, c                                        ; $71ce: $41
	ld   de, rAUD1HIGH                                   ; $71cf: $11 $14 $ff
	reti                                             ; $71d2: $d9


	cp   a                                           ; $71d3: $bf
	rst  $38                                         ; $71d4: $ff
	ld   a, [$ff9e]                                  ; $71d5: $fa $9e $ff
	ld   h, c                                        ; $71d8: $61
	ld   de, $fe15                                   ; $71d9: $11 $15 $fe
	sub  l                                           ; $71dc: $95
	ld   a, a                                        ; $71dd: $7f
	rst  $38                                         ; $71de: $ff

Call_0f3_71df:
	db   $fd                                         ; $71df: $fd
	rst  $38                                         ; $71e0: $ff
	rst  $38                                         ; $71e1: $ff
	ld   h, c                                        ; $71e2: $61
	ld   de, $7a11                                   ; $71e3: $11 $11 $7a
	sub  a                                           ; $71e6: $97
	sbc  a                                           ; $71e7: $9f
	rst  $38                                         ; $71e8: $ff
	rst  $38                                         ; $71e9: $ff
	rst  $38                                         ; $71ea: $ff
	rst  $38                                         ; $71eb: $ff
	add  c                                           ; $71ec: $81
	ld   de, $4811                                   ; $71ed: $11 $11 $48
	add  a                                           ; $71f0: $87
	adc  h                                           ; $71f1: $8c
	rst  $38                                         ; $71f2: $ff
	rst  $38                                         ; $71f3: $ff
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	or   c                                           ; $71f6: $b1
	ld   de, $2611                                   ; $71f7: $11 $11 $26
	ld   h, [hl]                                     ; $71fa: $66
	ld   l, d                                        ; $71fb: $6a
	rst  $38                                         ; $71fc: $ff
	rst  $38                                         ; $71fd: $ff
	rst  $38                                         ; $71fe: $ff
	rst  $38                                         ; $71ff: $ff
	push de                                          ; $7200: $d5
	ld   de, $1411                                   ; $7201: $11 $11 $14
	ld   d, l                                        ; $7204: $55
	ld   d, a                                        ; $7205: $57
	rst  JumpTable                                         ; $7206: $df
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	jp   hl                                          ; $720a: $e9


	ld   hl, $1411                                   ; $720b: $21 $11 $14
	ld   d, e                                        ; $720e: $53
	inc  h                                           ; $720f: $24
	ld   l, e                                        ; $7210: $6b
	rst  $28                                         ; $7211: $ef
	rst  $28                                         ; $7212: $ef
	rst  $38                                         ; $7213: $ff
	db   $fc                                         ; $7214: $fc
	add  e                                           ; $7215: $83
	ld   de, $6425                                   ; $7216: $11 $25 $64
	ld   hl, $9b36                                   ; $7219: $21 $36 $9b
	cp   e                                           ; $721c: $bb
	adc  $ee                                         ; $721d: $ce $ee
	jp   c, $6776                                    ; $721f: $da $76 $67

	add  a                                           ; $7222: $87
	ld   d, e                                        ; $7223: $53
	ld   [de], a                                     ; $7224: $12
	ld   [hl], $77                                   ; $7225: $36 $77
	adc  c                                           ; $7227: $89
	xor  l                                           ; $7228: $ad
	db   $dd                                         ; $7229: $dd
	jp   z, $aa9a                                    ; $722a: $ca $9a $aa

	add  [hl]                                        ; $722d: $86
	ld   sp, $4502                                   ; $722e: $31 $02 $45
	ld   h, [hl]                                     ; $7231: $66
	sbc  d                                           ; $7232: $9a
	call $cbee                                       ; $7233: $cd $ee $cb
	xor  e                                           ; $7236: $ab
	xor  c                                           ; $7237: $a9
	ld   h, e                                        ; $7238: $63
	ld   de, $5623                                   ; $7239: $11 $23 $56
	ld   l, c                                        ; $723c: $69
	xor  h                                           ; $723d: $ac
	xor  $ec                                         ; $723e: $ee $ec
	cp   e                                           ; $7240: $bb
	cp   c                                           ; $7241: $b9
	add  l                                           ; $7242: $85
	ld   hl, $3512                                   ; $7243: $21 $12 $35
	ld   h, a                                        ; $7246: $67
	sbc  e                                           ; $7247: $9b
	call $cbed                                       ; $7248: $cd $ed $cb
	cp   e                                           ; $724b: $bb
	sub  a                                           ; $724c: $97
	ld   b, d                                        ; $724d: $42
	ld   bc, $5623                                   ; $724e: $01 $23 $56
	ld   a, d                                        ; $7251: $7a
	call $edff                                       ; $7252: $cd $ff $ed
	cp   d                                           ; $7255: $ba
	xor  c                                           ; $7256: $a9
	ld   h, h                                        ; $7257: $64
	ld   de, $4512                                   ; $7258: $11 $12 $45
	ld   h, a                                        ; $725b: $67
	sbc  e                                           ; $725c: $9b
	rst  JumpTable                                         ; $725d: $df
	cp   $ca                                         ; $725e: $fe $ca
	xor  d                                           ; $7260: $aa
	add  [hl]                                        ; $7261: $86
	ld   sp, $2411                                   ; $7262: $31 $11 $24
	ld   d, [hl]                                     ; $7265: $56
	adc  d                                           ; $7266: $8a
	sbc  $ff                                         ; $7267: $de $ff
	db   $ec                                         ; $7269: $ec
	xor  c                                           ; $726a: $a9
	sbc  b                                           ; $726b: $98
	ld   d, e                                        ; $726c: $53
	ld   de, $4612                                   ; $726d: $11 $12 $46
	ld   l, b                                        ; $7270: $68
	cp   h                                           ; $7271: $bc
	rst  $38                                         ; $7272: $ff
	db   $fd                                         ; $7273: $fd
	cp   d                                           ; $7274: $ba
	sbc  c                                           ; $7275: $99
	ld   [hl], l                                     ; $7276: $75
	ld   hl, $3511                                   ; $7277: $21 $11 $35
	ld   h, [hl]                                     ; $727a: $66
	sbc  e                                           ; $727b: $9b
	rst  $28                                         ; $727c: $ef
	rst  $38                                         ; $727d: $ff
	db   $db                                         ; $727e: $db
	sbc  c                                           ; $727f: $99
	add  a                                           ; $7280: $87
	ld   b, c                                        ; $7281: $41
	ld   de, $5613                                   ; $7282: $11 $13 $56
	ld   a, c                                        ; $7285: $79
	adc  $ff                                         ; $7286: $ce $ff
	db   $fc                                         ; $7288: $fc
	xor  c                                           ; $7289: $a9
	xor  c                                           ; $728a: $a9
	ld   [hl], h                                     ; $728b: $74
	ld   de, $4512                                   ; $728c: $11 $12 $45
	ld   h, a                                        ; $728f: $67
	xor  h                                           ; $7290: $ac
	rst  $38                                         ; $7291: $ff
	cp   $ca                                         ; $7292: $fe $ca
	sbc  d                                           ; $7294: $9a
	add  [hl]                                        ; $7295: $86
	ld   sp, $2411                                   ; $7296: $31 $11 $24
	ld   h, [hl]                                     ; $7299: $66
	ld   a, e                                        ; $729a: $7b
	sbc  $ff                                         ; $729b: $de $ff
	db   $eb                                         ; $729d: $eb
	sbc  c                                           ; $729e: $99
	sbc  b                                           ; $729f: $98
	ld   d, e                                        ; $72a0: $53
	ld   de, $4613                                   ; $72a1: $11 $13 $46
	ld   l, c                                        ; $72a4: $69
	cp   l                                           ; $72a5: $bd
	rst  $38                                         ; $72a6: $ff
	db   $fd                                         ; $72a7: $fd
	xor  c                                           ; $72a8: $a9
	sbc  b                                           ; $72a9: $98
	ld   [hl], l                                     ; $72aa: $75
	ld   sp, $3511                                   ; $72ab: $31 $11 $35
	ld   h, a                                        ; $72ae: $67
	sbc  h                                           ; $72af: $9c
	rst  $28                                         ; $72b0: $ef
	cp   $cb                                         ; $72b1: $fe $cb
	sbc  d                                           ; $72b3: $9a
	sub  a                                           ; $72b4: $97
	ld   d, d                                        ; $72b5: $52
	ld   de, $5613                                   ; $72b6: $11 $13 $56
	ld   a, c                                        ; $72b9: $79
	call $fcff                                       ; $72ba: $cd $ff $fc
	xor  c                                           ; $72bd: $a9
	xor  b                                           ; $72be: $a8
	ld   h, h                                        ; $72bf: $64
	ld   de, $4612                                   ; $72c0: $11 $12 $46
	ld   a, b                                        ; $72c3: $78
	xor  l                                           ; $72c4: $ad
	rst  $28                                         ; $72c5: $ef
	cp   $ba                                         ; $72c6: $fe $ba
	sbc  c                                           ; $72c8: $99
	add  [hl]                                        ; $72c9: $86
	ld   sp, $2411                                   ; $72ca: $31 $11 $24
	ld   h, a                                        ; $72cd: $67
	sbc  d                                           ; $72ce: $9a
	sbc  $ff                                         ; $72cf: $de $ff
	call c, $97a9                                    ; $72d1: $dc $a9 $97
	ld   d, e                                        ; $72d4: $53
	ld   de, $5612                                   ; $72d5: $11 $12 $56
	ld   a, b                                        ; $72d8: $78
	cp   h                                           ; $72d9: $bc
	rst  $38                                         ; $72da: $ff
	cp   $ca                                         ; $72db: $fe $ca
	xor  c                                           ; $72dd: $a9
	ld   [hl], l                                     ; $72de: $75
	ld   sp, $3511                                   ; $72df: $31 $11 $35
	ld   h, a                                        ; $72e2: $67
	sbc  e                                           ; $72e3: $9b
	rst  JumpTable                                         ; $72e4: $df
	cp   $db                                         ; $72e5: $fe $db
	xor  c                                           ; $72e7: $a9
	sub  [hl]                                        ; $72e8: $96
	ld   b, d                                        ; $72e9: $42
	ld   de, $5613                                   ; $72ea: $11 $13 $56
	ld   a, d                                        ; $72ed: $7a
	cp   [hl]                                        ; $72ee: $be
	rst  $28                                         ; $72ef: $ef
	db   $fc                                         ; $72f0: $fc
	cp   d                                           ; $72f1: $ba
	xor  b                                           ; $72f2: $a8
	ld   h, h                                        ; $72f3: $64
	ld   hl, $3512                                   ; $72f4: $21 $12 $35
	ld   h, a                                        ; $72f7: $67
	sbc  h                                           ; $72f8: $9c
	rst  JumpTable                                         ; $72f9: $df
	cp   $db                                         ; $72fa: $fe $db
	xor  d                                           ; $72fc: $aa
	add  [hl]                                        ; $72fd: $86
	ld   sp, $2401                                   ; $72fe: $31 $01 $24
	ld   h, [hl]                                     ; $7301: $66
	adc  d                                           ; $7302: $8a
	adc  $ff                                         ; $7303: $ce $ff
	db   $ec                                         ; $7305: $ec
	cp   d                                           ; $7306: $ba
	sub  a                                           ; $7307: $97
	ld   d, e                                        ; $7308: $53
	ld   de, $4612                                   ; $7309: $11 $12 $46
	ld   l, b                                        ; $730c: $68
	cp   h                                           ; $730d: $bc
	rst  $28                                         ; $730e: $ef
	xor  $bb                                         ; $730f: $ee $bb
	xor  c                                           ; $7311: $a9
	ld   [hl], l                                     ; $7312: $75
	ld   sp, $3411                                   ; $7313: $31 $11 $34
	ld   h, a                                        ; $7316: $67
	sbc  e                                           ; $7317: $9b
	rst  JumpTable                                         ; $7318: $df
	rst  $38                                         ; $7319: $ff
	db   $ec                                         ; $731a: $ec
	cp   d                                           ; $731b: $ba
	add  a                                           ; $731c: $87
	ld   b, d                                        ; $731d: $42
	ld   de, $4613                                   ; $731e: $11 $13 $46
	ld   a, c                                        ; $7321: $79
	cp   l                                           ; $7322: $bd
	rst  $28                                         ; $7323: $ef

Call_0f3_7324:
	db   $fd                                         ; $7324: $fd
	cp   d                                           ; $7325: $ba
	xor  b                                           ; $7326: $a8
	ld   h, h                                        ; $7327: $64
	ld   hl, $3412                                   ; $7328: $21 $12 $34
	ld   h, a                                        ; $732b: $67
	sbc  h                                           ; $732c: $9c
	rst  JumpTable                                         ; $732d: $df
	xor  $db                                         ; $732e: $ee $db
	xor  d                                           ; $7330: $aa
	sub  [hl]                                        ; $7331: $96
	ld   b, d                                        ; $7332: $42
	ld   de, $4623                                   ; $7333: $11 $23 $46
	ld   a, c                                        ; $7336: $79
	call $edef                                       ; $7337: $cd $ef $ed
	jp   z, Jump_0f3_64a9                            ; $733a: $ca $a9 $64

	ld   hl, $3412                                   ; $733d: $21 $12 $34
	ld   h, a                                        ; $7340: $67
	sbc  e                                           ; $7341: $9b
	call $dbed                                       ; $7342: $cd $ed $db
	xor  d                                           ; $7345: $aa
	sub  [hl]                                        ; $7346: $96
	ld   d, e                                        ; $7347: $53
	ld   [hl+], a                                    ; $7348: $22
	inc  hl                                          ; $7349: $23
	ld   d, [hl]                                     ; $734a: $56
	ld   a, c                                        ; $734b: $79
	xor  e                                           ; $734c: $ab
	call $bbdd                                       ; $734d: $cd $dd $bb
	cp   d                                           ; $7350: $ba
	add  [hl]                                        ; $7351: $86
	ld   d, h                                        ; $7352: $54
	inc  sp                                          ; $7353: $33
	ld   b, h                                        ; $7354: $44
	ld   d, [hl]                                     ; $7355: $56
	ld   a, c                                        ; $7356: $79
	cp   e                                           ; $7357: $bb
	call z, $bacb                                    ; $7358: $cc $cb $ba
	xor  c                                           ; $735b: $a9
	ld   [hl], l                                     ; $735c: $75
	ld   b, h                                        ; $735d: $44
	ld   b, h                                        ; $735e: $44
	ld   b, l                                        ; $735f: $45
	ld   d, [hl]                                     ; $7360: $56
	ld   a, c                                        ; $7361: $79
	xor  d                                           ; $7362: $aa
	cp   e                                           ; $7363: $bb
	cp   e                                           ; $7364: $bb
	xor  d                                           ; $7365: $aa
	xor  c                                           ; $7366: $a9
	add  a                                           ; $7367: $87
	ld   h, [hl]                                     ; $7368: $66
	ld   d, l                                        ; $7369: $55
	ld   d, l                                        ; $736a: $55
	ld   h, [hl]                                     ; $736b: $66
	ld   a, b                                        ; $736c: $78
	sbc  c                                           ; $736d: $99
	xor  e                                           ; $736e: $ab
	cp   d                                           ; $736f: $ba
	xor  d                                           ; $7370: $aa
	cp   c                                           ; $7371: $b9
	adc  b                                           ; $7372: $88
	halt                                             ; $7373: $76
	ld   h, l                                        ; $7374: $65
	ld   d, l                                        ; $7375: $55
	ld   d, [hl]                                     ; $7376: $56
	ld   a, b                                        ; $7377: $78
	sbc  c                                           ; $7378: $99
	xor  d                                           ; $7379: $aa
	xor  e                                           ; $737a: $ab
	cp   e                                           ; $737b: $bb
	cp   c                                           ; $737c: $b9
	add  a                                           ; $737d: $87
	ld   h, l                                        ; $737e: $65
	ld   d, l                                        ; $737f: $55
	ld   d, l                                        ; $7380: $55
	ld   d, [hl]                                     ; $7381: $56
	ld   a, b                                        ; $7382: $78
	sbc  d                                           ; $7383: $9a
	cp   d                                           ; $7384: $ba
	xor  e                                           ; $7385: $ab
	cp   d                                           ; $7386: $ba
	cp   c                                           ; $7387: $b9
	add  a                                           ; $7388: $87
	ld   h, [hl]                                     ; $7389: $66
	ld   d, l                                        ; $738a: $55
	ld   d, l                                        ; $738b: $55
	ld   h, [hl]                                     ; $738c: $66
	ld   a, b                                        ; $738d: $78
	xor  d                                           ; $738e: $aa
	xor  e                                           ; $738f: $ab
	xor  d                                           ; $7390: $aa
	xor  e                                           ; $7391: $ab
	xor  d                                           ; $7392: $aa
	add  a                                           ; $7393: $87
	ld   h, l                                        ; $7394: $65
	ld   d, l                                        ; $7395: $55
	ld   d, l                                        ; $7396: $55
	ld   d, [hl]                                     ; $7397: $56
	ld   a, b                                        ; $7398: $78
	sbc  c                                           ; $7399: $99
	xor  d                                           ; $739a: $aa
	xor  e                                           ; $739b: $ab
	cp   e                                           ; $739c: $bb
	xor  d                                           ; $739d: $aa
	sub  a                                           ; $739e: $97
	ld   h, [hl]                                     ; $739f: $66
	ld   d, l                                        ; $73a0: $55
	ld   d, l                                        ; $73a1: $55
	ld   d, [hl]                                     ; $73a2: $56
	ld   h, a                                        ; $73a3: $67
	sbc  c                                           ; $73a4: $99
	xor  e                                           ; $73a5: $ab
	xor  d                                           ; $73a6: $aa
	xor  e                                           ; $73a7: $ab
	xor  d                                           ; $73a8: $aa
	sbc  b                                           ; $73a9: $98
	halt                                             ; $73aa: $76
	ld   h, l                                        ; $73ab: $65
	ld   d, l                                        ; $73ac: $55
	ld   h, [hl]                                     ; $73ad: $66
	ld   [hl], a                                     ; $73ae: $77
	sbc  d                                           ; $73af: $9a
	xor  d                                           ; $73b0: $aa
	xor  e                                           ; $73b1: $ab
	xor  d                                           ; $73b2: $aa
	xor  c                                           ; $73b3: $a9
	sbc  b                                           ; $73b4: $98
	halt                                             ; $73b5: $76
	ld   d, l                                        ; $73b6: $55
	ld   d, l                                        ; $73b7: $55
	ld   d, [hl]                                     ; $73b8: $56
	ld   h, a                                        ; $73b9: $67
	adc  c                                           ; $73ba: $89
	xor  e                                           ; $73bb: $ab
	xor  d                                           ; $73bc: $aa
	xor  d                                           ; $73bd: $aa
	xor  d                                           ; $73be: $aa
	xor  b                                           ; $73bf: $a8
	halt                                             ; $73c0: $76
	ld   d, l                                        ; $73c1: $55
	ld   d, l                                        ; $73c2: $55
	ld   h, [hl]                                     ; $73c3: $66
	ld   h, a                                        ; $73c4: $67
	adc  c                                           ; $73c5: $89
	xor  d                                           ; $73c6: $aa
	xor  e                                           ; $73c7: $ab
	xor  d                                           ; $73c8: $aa
	xor  d                                           ; $73c9: $aa
	sbc  c                                           ; $73ca: $99
	halt                                             ; $73cb: $76
	ld   d, l                                        ; $73cc: $55
	ld   d, l                                        ; $73cd: $55
	ld   d, [hl]                                     ; $73ce: $56
	ld   h, a                                        ; $73cf: $67
	ld   a, c                                        ; $73d0: $79
	xor  d                                           ; $73d1: $aa
	cp   e                                           ; $73d2: $bb
	xor  d                                           ; $73d3: $aa
	xor  d                                           ; $73d4: $aa
	sbc  c                                           ; $73d5: $99
	halt                                             ; $73d6: $76
	ld   d, l                                        ; $73d7: $55
	ld   d, l                                        ; $73d8: $55
	ld   d, [hl]                                     ; $73d9: $56
	ld   h, a                                        ; $73da: $67
	adc  c                                           ; $73db: $89
	xor  e                                           ; $73dc: $ab
	cp   d                                           ; $73dd: $ba
	xor  d                                           ; $73de: $aa
	xor  e                                           ; $73df: $ab
	xor  c                                           ; $73e0: $a9
	halt                                             ; $73e1: $76
	ld   d, h                                        ; $73e2: $54
	ld   d, [hl]                                     ; $73e3: $56
	ld   h, [hl]                                     ; $73e4: $66
	ld   h, a                                        ; $73e5: $67
	adc  d                                           ; $73e6: $8a
	cp   a                                           ; $73e7: $bf
	ld   [$7988], a                                  ; $73e8: $ea $88 $79
	xor  b                                           ; $73eb: $a8
	ld   d, c                                        ; $73ec: $51
	ld   de, $ca6a                                   ; $73ed: $11 $6a $ca
	sbc  c                                           ; $73f0: $99
	rst  JumpTable                                         ; $73f1: $df
	rst  $38                                         ; $73f2: $ff
	and  d                                           ; $73f3: $a2
	ld   de, $8813                                   ; $73f4: $11 $13 $88
	ld   d, d                                        ; $73f7: $52
	jr   @+$01                                       ; $73f8: $18 $ff

	rst  $38                                         ; $73fa: $ff

jr_0f3_73fb:
	cp   l                                           ; $73fb: $bd
	rst  $38                                         ; $73fc: $ff
	rst  $30                                         ; $73fd: $f7
	ld   de, $1a11                                   ; $73fe: $11 $11 $1a
	call c, $ffaa                                    ; $7401: $dc $aa $ff
	rst  $38                                         ; $7404: $ff
	push bc                                          ; $7405: $c5
	sbc  l                                           ; $7406: $9d
	db   $fc                                         ; $7407: $fc
	ld   de, $1a11                                   ; $7408: $11 $11 $1a
	rst  $38                                         ; $740b: $ff
	db   $fd                                         ; $740c: $fd
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	pop  af                                          ; $740f: $f1
	add  hl, de                                      ; $7410: $19
	call z, $1131                                    ; $7411: $cc $31 $11
	jr   @+$01                                       ; $7414: $18 $ff

	rst  $38                                         ; $7416: $ff
	rst  $38                                         ; $7417: $ff
	rst  $38                                         ; $7418: $ff
	pop  de                                          ; $7419: $d1
	jr   jr_0f3_73fb                                 ; $741a: $18 $df

	ld   [hl], c                                     ; $741c: $71
	ld   de, $ff18                                   ; $741d: $11 $18 $ff
	rst  $38                                         ; $7420: $ff
	rst  $38                                         ; $7421: $ff
	rst  $38                                         ; $7422: $ff
	ld   [hl], c                                     ; $7423: $71
	ld   a, [de]                                     ; $7424: $1a
	rst  $38                                         ; $7425: $ff
	and  c                                           ; $7426: $a1
	ld   de, $ff17                                   ; $7427: $11 $17 $ff
	rst  $38                                         ; $742a: $ff
	rst  $38                                         ; $742b: $ff
	rst  $38                                         ; $742c: $ff
	ld   d, c                                        ; $742d: $51
	ld   a, [de]                                     ; $742e: $1a
	rst  $38                                         ; $742f: $ff
	pop  de                                          ; $7430: $d1
	ld   de, $ff16                                   ; $7431: $11 $16 $ff
	rst  $38                                         ; $7434: $ff
	rst  $38                                         ; $7435: $ff
	rst  $38                                         ; $7436: $ff
	ld   hl, $ff1b                                   ; $7437: $21 $1b $ff
	pop  af                                          ; $743a: $f1
	ld   de, $ff15                                   ; $743b: $11 $15 $ff
	rst  $38                                         ; $743e: $ff
	rst  $38                                         ; $743f: $ff
	rst  $38                                         ; $7440: $ff
	ld   de, $ff1a                                   ; $7441: $11 $1a $ff
	pop  af                                          ; $7444: $f1
	ld   de, $ff15                                   ; $7445: $11 $15 $ff
	rst  $38                                         ; $7448: $ff
	rst  $38                                         ; $7449: $ff
	rst  $38                                         ; $744a: $ff
	ld   de, $ff1b                                   ; $744b: $11 $1b $ff
	pop  af                                          ; $744e: $f1
	ld   de, rAUD1ENV                                   ; $744f: $11 $12 $ff
	rst  $38                                         ; $7452: $ff
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	ld   de, $ff19                                   ; $7455: $11 $19 $ff
	pop  af                                          ; $7458: $f1
	ld   de, rAUD1HIGH                                   ; $7459: $11 $14 $ff
	rst  $38                                         ; $745c: $ff
	rst  $38                                         ; $745d: $ff
	db   $fd                                         ; $745e: $fd
	ld   de, $ff1e                                   ; $745f: $11 $1e $ff
	pop  af                                          ; $7462: $f1
	ld   de, rAUD1LEN                                   ; $7463: $11 $11 $ff
	rst  $38                                         ; $7466: $ff
	rst  $38                                         ; $7467: $ff
	db   $fd                                         ; $7468: $fd
	ld   de, $ff1a                                   ; $7469: $11 $1a $ff
	pop  af                                          ; $746c: $f1
	ld   de, rAUD1LEN                                   ; $746d: $11 $11 $ff
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	cp   $11                                         ; $7472: $fe $11
	dec  de                                          ; $7474: $1b
	rst  $38                                         ; $7475: $ff
	pop  af                                          ; $7476: $f1
	ld   de, rAUD1LEN                                   ; $7477: $11 $11 $ff
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	rst  $38                                         ; $747c: $ff
	ld   de, $ff1a                                   ; $747d: $11 $1a $ff
	pop  af                                          ; $7480: $f1
	ld   de, rAUD1LEN                                   ; $7481: $11 $11 $ff
	rst  $38                                         ; $7484: $ff
	rst  $38                                         ; $7485: $ff
	rst  $38                                         ; $7486: $ff
	ld   de, $ff1b                                   ; $7487: $11 $1b $ff
	ldh  a, [c]                                      ; $748a: $f2
	ld   de, rAUD1LEN                                   ; $748b: $11 $11 $ff
	rst  $38                                         ; $748e: $ff
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	ld   de, $ff18                                   ; $7491: $11 $18 $ff
	push af                                          ; $7494: $f5
	ld   de, $ef11                                   ; $7495: $11 $11 $ef
	rst  $38                                         ; $7498: $ff

Jump_0f3_7499:
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	ld   de, $ff17                                   ; $749b: $11 $17 $ff
	ld   hl, sp+$11                                  ; $749e: $f8 $11
	ld   de, $ffcf                                   ; $74a0: $11 $cf $ff
	rst  $38                                         ; $74a3: $ff
	rst  $38                                         ; $74a4: $ff
	ld   de, $ff15                                   ; $74a5: $11 $15 $ff
	ei                                               ; $74a8: $fb
	ld   de, $af11                                   ; $74a9: $11 $11 $af
	rst  $38                                         ; $74ac: $ff
	rst  $38                                         ; $74ad: $ff
	rst  $38                                         ; $74ae: $ff
	ld   de, rAUD1LOW                                   ; $74af: $11 $13 $ff
	rst  $38                                         ; $74b2: $ff
	ld   de, $8f11                                   ; $74b3: $11 $11 $8f
	rst  $38                                         ; $74b6: $ff
	rst  $38                                         ; $74b7: $ff
	rst  $38                                         ; $74b8: $ff
	ld   de, rAUD1LEN                                   ; $74b9: $11 $11 $ff
	rst  $38                                         ; $74bc: $ff
	ld   de, $6f11                                   ; $74bd: $11 $11 $6f
	rst  $38                                         ; $74c0: $ff
	rst  $38                                         ; $74c1: $ff
	rst  $38                                         ; $74c2: $ff
	ld   hl, rAUD1LEN                                   ; $74c3: $21 $11 $ff
	rst  $38                                         ; $74c6: $ff
	ld   de, $3f11                                   ; $74c7: $11 $11 $3f
	rst  $38                                         ; $74ca: $ff
	rst  $38                                         ; $74cb: $ff
	rst  $38                                         ; $74cc: $ff
	ld   b, c                                        ; $74cd: $41
	ld   de, $ffff                                   ; $74ce: $11 $ff $ff
	ld   de, $1f11                                   ; $74d1: $11 $11 $1f
	rst  $38                                         ; $74d4: $ff
	rst  $38                                         ; $74d5: $ff
	rst  $38                                         ; $74d6: $ff
	ld   [hl], c                                     ; $74d7: $71
	ld   de, $ffff                                   ; $74d8: $11 $ff $ff
	ld   de, $1f11                                   ; $74db: $11 $11 $1f
	rst  $38                                         ; $74de: $ff
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	sub  c                                           ; $74e1: $91
	ld   de, $ffcf                                   ; $74e2: $11 $cf $ff
	ld   h, c                                        ; $74e5: $61
	ld   de, $ff1e                                   ; $74e6: $11 $1e $ff
	rst  $38                                         ; $74e9: $ff
	rst  $38                                         ; $74ea: $ff
	pop  bc                                          ; $74eb: $c1
	ld   de, $ff9f                                   ; $74ec: $11 $9f $ff
	sub  c                                           ; $74ef: $91
	ld   de, $ff1b                                   ; $74f0: $11 $1b $ff
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	pop  de                                          ; $74f5: $d1
	ld   de, $ff5f                                   ; $74f6: $11 $5f $ff
	pop  hl                                          ; $74f9: $e1
	ld   de, $ff17                                   ; $74fa: $11 $17 $ff
	rst  $38                                         ; $74fd: $ff
	rst  $38                                         ; $74fe: $ff
	pop  af                                          ; $74ff: $f1
	ld   de, $ff3f                                   ; $7500: $11 $3f $ff
	pop  af                                          ; $7503: $f1
	ld   de, $ff15                                   ; $7504: $11 $15 $ff
	rst  $38                                         ; $7507: $ff
	rst  $38                                         ; $7508: $ff
	di                                               ; $7509: $f3
	ld   de, $ff1f                                   ; $750a: $11 $1f $ff
	pop  af                                          ; $750d: $f1
	ld   de, rAUD1ENV                                   ; $750e: $11 $12 $ff
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	push af                                          ; $7513: $f5
	ld   de, $ff1f                                   ; $7514: $11 $1f $ff
	pop  af                                          ; $7517: $f1
	ld   de, rAUD1LEN                                   ; $7518: $11 $11 $ff
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	ld   sp, hl                                      ; $751d: $f9
	ld   de, $ff1c                                   ; $751e: $11 $1c $ff
	push af                                          ; $7521: $f5
	ld   de, rAUD1LEN                                   ; $7522: $11 $11 $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	ei                                               ; $7527: $fb
	ld   de, $ff18                                   ; $7528: $11 $18 $ff
	ld   sp, hl                                      ; $752b: $f9
	ld   de, $df11                                   ; $752c: $11 $11 $df
	rst  $38                                         ; $752f: $ff
	rst  $38                                         ; $7530: $ff
	cp   $11                                         ; $7531: $fe $11
	dec  d                                           ; $7533: $15
	rst  $38                                         ; $7534: $ff
	db   $fd                                         ; $7535: $fd
	ld   de, $8f11                                   ; $7536: $11 $11 $8f
	rst  $38                                         ; $7539: $ff
	rst  $38                                         ; $753a: $ff
	rst  $38                                         ; $753b: $ff
	ld   de, rAUD1ENV                                   ; $753c: $11 $12 $ff
	rst  $38                                         ; $753f: $ff
	ld   de, $6f11                                   ; $7540: $11 $11 $6f
	rst  $38                                         ; $7543: $ff
	rst  $38                                         ; $7544: $ff
	rst  $38                                         ; $7545: $ff
	ld   sp, rAUD1LEN                                   ; $7546: $31 $11 $ff
	rst  $38                                         ; $7549: $ff
	ld   de, $2f11                                   ; $754a: $11 $11 $2f
	rst  $38                                         ; $754d: $ff
	rst  $38                                         ; $754e: $ff
	rst  $38                                         ; $754f: $ff
	ld   h, c                                        ; $7550: $61
	ld   de, $ffef                                   ; $7551: $11 $ef $ff
	ld   de, $1f11                                   ; $7554: $11 $11 $1f
	rst  $38                                         ; $7557: $ff
	rst  $38                                         ; $7558: $ff
	rst  $38                                         ; $7559: $ff
	and  c                                           ; $755a: $a1
	ld   de, $ffbf                                   ; $755b: $11 $bf $ff
	ld   [hl], c                                     ; $755e: $71
	ld   de, $ff1d                                   ; $755f: $11 $1d $ff
	rst  $38                                         ; $7562: $ff
	rst  $38                                         ; $7563: $ff
	pop  af                                          ; $7564: $f1
	ld   de, $ff6f                                   ; $7565: $11 $6f $ff
	pop  bc                                          ; $7568: $c1
	ld   de, $ff1b                                   ; $7569: $11 $1b $ff
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	pop  af                                          ; $756e: $f1
	ld   de, $ff4f                                   ; $756f: $11 $4f $ff
	pop  hl                                          ; $7572: $e1
	ld   de, $ff19                                   ; $7573: $11 $19 $ff
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	db   $f4                                         ; $7578: $f4
	ld   de, $ff1f                                   ; $7579: $11 $1f $ff
	pop  af                                          ; $757c: $f1
	ld   de, rAUD1LOW                                   ; $757d: $11 $13 $ff
	rst  $38                                         ; $7580: $ff
	rst  $38                                         ; $7581: $ff
	ld   hl, sp+$11                                  ; $7582: $f8 $11
	dec  e                                           ; $7584: $1d
	rst  $38                                         ; $7585: $ff
	pop  af                                          ; $7586: $f1
	ld   de, rAUD1LEN                                   ; $7587: $11 $11 $ff
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	db   $fc                                         ; $758c: $fc
	ld   de, $ff1b                                   ; $758d: $11 $1b $ff
	or   $11                                         ; $7590: $f6 $11
	ld   de, $ffef                                   ; $7592: $11 $ef $ff
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	ld   de, $ff18                                   ; $7597: $11 $18 $ff
	ld   sp, hl                                      ; $759a: $f9
	ld   de, $cf11                                   ; $759b: $11 $11 $cf
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	rst  $38                                         ; $75a0: $ff
	ld   de, $ff15                                   ; $75a1: $11 $15 $ff
	db   $fc                                         ; $75a4: $fc
	ld   de, $8f11                                   ; $75a5: $11 $11 $8f

Call_0f3_75a8:
Jump_0f3_75a8:
	rst  $38                                         ; $75a8: $ff
	rst  $38                                         ; $75a9: $ff
	rst  $38                                         ; $75aa: $ff
	ld   b, c                                        ; $75ab: $41
	ld   [de], a                                     ; $75ac: $12
	rst  $38                                         ; $75ad: $ff
	rst  $38                                         ; $75ae: $ff
	ld   de, $4f11                                   ; $75af: $11 $11 $4f
	rst  $38                                         ; $75b2: $ff
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	or   c                                           ; $75b5: $b1
	ld   de, $ffcf                                   ; $75b6: $11 $cf $ff
	ld   sp, $1f11                                   ; $75b9: $31 $11 $1f
	rst  $38                                         ; $75bc: $ff
	rst  $38                                         ; $75bd: $ff
	rst  $38                                         ; $75be: $ff
	pop  af                                          ; $75bf: $f1
	ld   de, $ff9f                                   ; $75c0: $11 $9f $ff
	add  c                                           ; $75c3: $81
	ld   de, $ff1c                                   ; $75c4: $11 $1c $ff
	rst  $38                                         ; $75c7: $ff
	rst  $38                                         ; $75c8: $ff
	ldh  a, [c]                                      ; $75c9: $f2
	ld   de, $ff5f                                   ; $75ca: $11 $5f $ff
	pop  bc                                          ; $75cd: $c1
	ld   de, $ff17                                   ; $75ce: $11 $17 $ff
	rst  $38                                         ; $75d1: $ff
	rst  $38                                         ; $75d2: $ff
	ld   sp, hl                                      ; $75d3: $f9
	ld   de, $ff2b                                   ; $75d4: $11 $2b $ff
	ldh  a, [c]                                      ; $75d7: $f2
	ld   de, $ef12                                   ; $75d8: $11 $12 $ef
	rst  $38                                         ; $75db: $ff
	rst  $38                                         ; $75dc: $ff
	rst  $38                                         ; $75dd: $ff
	ld   de, $ef19                                   ; $75de: $11 $19 $ef
	ld   hl, sp+$11                                  ; $75e1: $f8 $11
	ld   de, $ffaf                                   ; $75e3: $11 $af $ff
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	ld   h, c                                        ; $75e8: $61
	dec  d                                           ; $75e9: $15
	cp   l                                           ; $75ea: $bd
	db   $eb                                         ; $75eb: $eb
	ld   de, $7e11                                   ; $75ec: $11 $11 $7e
	rst  $38                                         ; $75ef: $ff
	rst  $38                                         ; $75f0: $ff
	rst  $38                                         ; $75f1: $ff
	pop  de                                          ; $75f2: $d1
	inc  de                                          ; $75f3: $13
	xor  l                                           ; $75f4: $ad
	db   $dd                                         ; $75f5: $dd
	ld   hl, $1d11                                   ; $75f6: $21 $11 $1d
	rst  $38                                         ; $75f9: $ff
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	push af                                          ; $75fc: $f5
	ld   de, $dc8a                                   ; $75fd: $11 $8a $dc
	ld   [hl], c                                     ; $7600: $71
	ld   de, $ef19                                   ; $7601: $11 $19 $ef
	rst  $38                                         ; $7604: $ff
	rst  $38                                         ; $7605: $ff
	ld   a, [$6a32]                                  ; $7606: $fa $32 $6a
	call z, $11a1                                    ; $7609: $cc $a1 $11
	inc  d                                           ; $760c: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $760d: $cf
	rst  $28                                         ; $760e: $ef
	rst  $38                                         ; $760f: $ff
	rst  $38                                         ; $7610: $ff
	ld   [hl], h                                     ; $7611: $74
	ld   e, b                                        ; $7612: $58
	sbc  e                                           ; $7613: $9b
	or   e                                           ; $7614: $b3
	ld   de, $8d11                                   ; $7615: $11 $11 $8d
	db   $fd                                         ; $7618: $fd
	rst  $38                                         ; $7619: $ff
	rst  $38                                         ; $761a: $ff
	or   [hl]                                        ; $761b: $b6
	ld   e, b                                        ; $761c: $58
	sbc  c                                           ; $761d: $99
	sub  [hl]                                        ; $761e: $96
	ld   de, $3a11                                   ; $761f: $11 $11 $3a
	db   $ec                                         ; $7622: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7623: $cf
	rst  $38                                         ; $7624: $ff
	ei                                               ; $7625: $fb
	adc  b                                           ; $7626: $88
	sbc  c                                           ; $7627: $99
	sub  a                                           ; $7628: $97
	ld   hl, $1511                                   ; $7629: $21 $11 $15
	cp   h                                           ; $762c: $bc
	xor  h                                           ; $762d: $ac
	rst  $38                                         ; $762e: $ff
	rst  $38                                         ; $762f: $ff
	xor  c                                           ; $7630: $a9
	sbc  e                                           ; $7631: $9b
	xor  c                                           ; $7632: $a9
	ld   h, c                                        ; $7633: $61
	ld   de, $5911                                   ; $7634: $11 $11 $59
	sub  a                                           ; $7637: $97
	sbc  h                                           ; $7638: $9c
	rst  $38                                         ; $7639: $ff
	db   $db                                         ; $763a: $db
	sbc  c                                           ; $763b: $99
	cp   c                                           ; $763c: $b9
	sub  a                                           ; $763d: $97
	ld   h, l                                        ; $763e: $65
	ld   d, l                                        ; $763f: $55
	ld   l, b                                        ; $7640: $68
	adc  c                                           ; $7641: $89
	halt                                             ; $7642: $76
	ld   h, a                                        ; $7643: $67
	ld   [hl], a                                     ; $7644: $77
	ld   [hl], a                                     ; $7645: $77
	adc  b                                           ; $7646: $88
	adc  b                                           ; $7647: $88
	sbc  d                                           ; $7648: $9a
	call z, $bacc                                    ; $7649: $cc $cc $ba
	cp   c                                           ; $764c: $b9
	add  a                                           ; $764d: $87
	ld   h, l                                        ; $764e: $65
	ld   d, h                                        ; $764f: $54
	ld   d, l                                        ; $7650: $55
	ld   b, l                                        ; $7651: $45
	ld   h, a                                        ; $7652: $67
	sbc  d                                           ; $7653: $9a
	cp   e                                           ; $7654: $bb
	xor  d                                           ; $7655: $aa
	cp   e                                           ; $7656: $bb
	cp   d                                           ; $7657: $ba
	xor  c                                           ; $7658: $a9
	add  a                                           ; $7659: $87
	halt                                             ; $765a: $76
	ld   d, h                                        ; $765b: $54
	ld   d, l                                        ; $765c: $55
	ld   h, a                                        ; $765d: $67
	ld   [hl], a                                     ; $765e: $77
	adc  b                                           ; $765f: $88
	adc  d                                           ; $7660: $8a
	sbc  d                                           ; $7661: $9a
	xor  d                                           ; $7662: $aa
	xor  d                                           ; $7663: $aa
	xor  d                                           ; $7664: $aa
	adc  b                                           ; $7665: $88
	ld   [hl], a                                     ; $7666: $77
	ld   [hl], a                                     ; $7667: $77
	ld   [hl], a                                     ; $7668: $77
	ld   h, [hl]                                     ; $7669: $66
	ld   h, a                                        ; $766a: $67
	ld   [hl], a                                     ; $766b: $77
	adc  b                                           ; $766c: $88
	adc  d                                           ; $766d: $8a
	xor  d                                           ; $766e: $aa
	sbc  c                                           ; $766f: $99
	adc  b                                           ; $7670: $88
	sbc  d                                           ; $7671: $9a
	sbc  c                                           ; $7672: $99
	add  [hl]                                        ; $7673: $86
	ld   h, [hl]                                     ; $7674: $66
	ld   h, [hl]                                     ; $7675: $66
	ld   h, [hl]                                     ; $7676: $66
	ld   a, b                                        ; $7677: $78
	adc  b                                           ; $7678: $88
	sbc  b                                           ; $7679: $98
	sbc  b                                           ; $767a: $98
	sbc  d                                           ; $767b: $9a
	xor  c                                           ; $767c: $a9
	sbc  b                                           ; $767d: $98
	ld   [hl], a                                     ; $767e: $77
	ld   [hl], a                                     ; $767f: $77
	ld   h, [hl]                                     ; $7680: $66
	ld   h, a                                        ; $7681: $67
	ld   a, b                                        ; $7682: $78
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	sbc  d                                           ; $7685: $9a
	xor  d                                           ; $7686: $aa
	sbc  c                                           ; $7687: $99
	adc  b                                           ; $7688: $88
	add  a                                           ; $7689: $87
	ld   [hl], a                                     ; $768a: $77
	ld   h, a                                        ; $768b: $67
	ld   [hl], a                                     ; $768c: $77
	add  a                                           ; $768d: $87
	ld   [hl], a                                     ; $768e: $77
	adc  b                                           ; $768f: $88
	xor  c                                           ; $7690: $a9
	xor  c                                           ; $7691: $a9
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	ld   [hl], a                                     ; $7694: $77
	ld   [hl], a                                     ; $7695: $77
	ld   [hl], a                                     ; $7696: $77
	add  a                                           ; $7697: $87

Jump_0f3_7698:
	ld   [hl], a                                     ; $7698: $77
	ld   a, b                                        ; $7699: $78
	sbc  d                                           ; $769a: $9a
	sbc  c                                           ; $769b: $99
	adc  b                                           ; $769c: $88
	adc  b                                           ; $769d: $88
	add  a                                           ; $769e: $87
	ld   [hl], a                                     ; $769f: $77
	ld   [hl], a                                     ; $76a0: $77
	adc  b                                           ; $76a1: $88
	ld   [hl], a                                     ; $76a2: $77
	ld   a, b                                        ; $76a3: $78
	sbc  c                                           ; $76a4: $99
	sbc  c                                           ; $76a5: $99
	sbc  b                                           ; $76a6: $98

Call_0f3_76a7:
	adc  b                                           ; $76a7: $88
	adc  b                                           ; $76a8: $88
	ld   [hl], a                                     ; $76a9: $77
	ld   [hl], a                                     ; $76aa: $77
	adc  b                                           ; $76ab: $88
	add  a                                           ; $76ac: $87
	ld   [hl], a                                     ; $76ad: $77
	adc  b                                           ; $76ae: $88
	sbc  b                                           ; $76af: $98
	sbc  b                                           ; $76b0: $98
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	ld   [hl], a                                     ; $76b7: $77
	adc  c                                           ; $76b8: $89
	adc  c                                           ; $76b9: $89
	adc  b                                           ; $76ba: $88
	ld   [hl], a                                     ; $76bb: $77
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  c                                           ; $76bf: $89
	sbc  b                                           ; $76c0: $98
	adc  b                                           ; $76c1: $88
	adc  c                                           ; $76c2: $89
	adc  c                                           ; $76c3: $89
	add  a                                           ; $76c4: $87
	ld   [hl], a                                     ; $76c5: $77
	ld   [hl], a                                     ; $76c6: $77
	ld   [hl], a                                     ; $76c7: $77
	ld   a, b                                        ; $76c8: $78
	adc  c                                           ; $76c9: $89
	sbc  b                                           ; $76ca: $98
	adc  b                                           ; $76cb: $88
	adc  c                                           ; $76cc: $89
	adc  b                                           ; $76cd: $88
	sbc  b                                           ; $76ce: $98
	ld   [hl], a                                     ; $76cf: $77
	adc  b                                           ; $76d0: $88
	ld   [hl], a                                     ; $76d1: $77
	ld   [hl], a                                     ; $76d2: $77
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  c                                           ; $76d8: $89
	adc  b                                           ; $76d9: $88
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	add  a                                           ; $76dc: $87
	adc  b                                           ; $76dd: $88
	adc  b                                           ; $76de: $88
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  c                                           ; $76e2: $89
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  c                                           ; $76eb: $89
	sbc  c                                           ; $76ec: $99
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	adc  c                                           ; $76f2: $89
	adc  b                                           ; $76f3: $88
	adc  b                                           ; $76f4: $88
	adc  c                                           ; $76f5: $89
	sbc  c                                           ; $76f6: $99
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
	adc  b                                           ; $76f9: $88
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	adc  b                                           ; $76fe: $88
	adc  c                                           ; $76ff: $89
	sbc  c                                           ; $7700: $99
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	adc  b                                           ; $7704: $88
	adc  b                                           ; $7705: $88
	adc  b                                           ; $7706: $88
	adc  b                                           ; $7707: $88
	adc  b                                           ; $7708: $88
	adc  b                                           ; $7709: $88
	sbc  c                                           ; $770a: $99
	adc  b                                           ; $770b: $88
	adc  b                                           ; $770c: $88
	adc  b                                           ; $770d: $88
	adc  b                                           ; $770e: $88
	adc  b                                           ; $770f: $88
	adc  c                                           ; $7710: $89
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	adc  b                                           ; $7713: $88
	sbc  c                                           ; $7714: $99
	sbc  b                                           ; $7715: $98
	adc  b                                           ; $7716: $88
	adc  b                                           ; $7717: $88
	adc  b                                           ; $7718: $88
	adc  b                                           ; $7719: $88
	adc  b                                           ; $771a: $88
	adc  b                                           ; $771b: $88
	adc  b                                           ; $771c: $88
	adc  b                                           ; $771d: $88
	sbc  c                                           ; $771e: $99
	sbc  b                                           ; $771f: $98
	adc  b                                           ; $7720: $88
	adc  b                                           ; $7721: $88
	adc  b                                           ; $7722: $88
	adc  b                                           ; $7723: $88
	adc  b                                           ; $7724: $88
	adc  b                                           ; $7725: $88
	adc  b                                           ; $7726: $88
	adc  b                                           ; $7727: $88
	adc  c                                           ; $7728: $89
	sbc  b                                           ; $7729: $98
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
	sbc  c                                           ; $78d1: $99
	xor  c                                           ; $78d2: $a9
	ld   a, b                                        ; $78d3: $78
	add  a                                           ; $78d4: $87
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	sbc  b                                           ; $78d8: $98
	xor  e                                           ; $78d9: $ab
	ld   a, c                                        ; $78da: $79
	cp   c                                           ; $78db: $b9
	sbc  c                                           ; $78dc: $99
	ld   a, c                                        ; $78dd: $79
	add  l                                           ; $78de: $85
	or   a                                           ; $78df: $b7
	ld   d, [hl]                                     ; $78e0: $56
	ld   h, a                                        ; $78e1: $67
	ld   a, b                                        ; $78e2: $78
	and  a                                           ; $78e3: $a7
	ld   l, c                                        ; $78e4: $69
	ld   l, b                                        ; $78e5: $68
	sub  a                                           ; $78e6: $97
	sub  a                                           ; $78e7: $97
	ld   h, a                                        ; $78e8: $67
	adc  b                                           ; $78e9: $88
	adc  c                                           ; $78ea: $89
	adc  c                                           ; $78eb: $89
	adc  b                                           ; $78ec: $88
	add  a                                           ; $78ed: $87
	ld   [hl], a                                     ; $78ee: $77
	ld   [hl], a                                     ; $78ef: $77
	halt                                             ; $78f0: $76
	add  a                                           ; $78f1: $87
	ld   a, b                                        ; $78f2: $78
	adc  d                                           ; $78f3: $8a
	cp   e                                           ; $78f4: $bb
	cp   e                                           ; $78f5: $bb
	xor  c                                           ; $78f6: $a9
	ld   d, h                                        ; $78f7: $54
	ld   b, e                                        ; $78f8: $43
	ld   sp, $5513                                   ; $78f9: $31 $13 $55
	adc  d                                           ; $78fc: $8a
	adc  $ef                                         ; $78fd: $ce $ef
	rst  $38                                         ; $78ff: $ff
	db   $fc                                         ; $7900: $fc
	sub  h                                           ; $7901: $94
	ld   de, $1111                                   ; $7902: $11 $11 $11
	ld   [de], a                                     ; $7905: $12
	ld   e, c                                        ; $7906: $59
	adc  $ff                                         ; $7907: $ce $ff
	rst  $38                                         ; $7909: $ff
	rst  $38                                         ; $790a: $ff
	db   $fd                                         ; $790b: $fd
	cp   b                                           ; $790c: $b8
	ld   de, $1111                                   ; $790d: $11 $11 $11
	ld   [de], a                                     ; $7910: $12
	ld   a, d                                        ; $7911: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7912: $cf
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	db   $fc                                         ; $7916: $fc
	adc  b                                           ; $7917: $88
	ld   hl, $1111                                   ; $7918: $21 $11 $11
	ld   de, $ff8d                                   ; $791b: $11 $8d $ff
	rst  $38                                         ; $791e: $ff
	rst  $38                                         ; $791f: $ff
	rst  $38                                         ; $7920: $ff
	ei                                               ; $7921: $fb
	ld   h, l                                        ; $7922: $65
	ld   sp, $1111                                   ; $7923: $31 $11 $11
	ld   de, $ff8f                                   ; $7926: $11 $8f $ff
	rst  $38                                         ; $7929: $ff
	rst  $38                                         ; $792a: $ff
	rst  $38                                         ; $792b: $ff
	ld   a, [$2153]                                  ; $792c: $fa $53 $21
	ld   de, $1111                                   ; $792f: $11 $11 $11
	sbc  a                                           ; $7932: $9f
	rst  $38                                         ; $7933: $ff
	rst  $38                                         ; $7934: $ff
	rst  $38                                         ; $7935: $ff
	rst  $38                                         ; $7936: $ff
	ld   [$1142], a                                  ; $7937: $ea $42 $11
	ld   de, $1311                                   ; $793a: $11 $11 $13
	rst  JumpTable                                         ; $793d: $df
	rst  $38                                         ; $793e: $ff
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	rst  $38                                         ; $7941: $ff
	ret  z                                           ; $7942: $c8

	ld   [hl+], a                                    ; $7943: $22
	ld   de, $1111                                   ; $7944: $11 $11 $11
	dec  d                                           ; $7947: $15
	rst  $38                                         ; $7948: $ff
	rst  $38                                         ; $7949: $ff
	rst  $38                                         ; $794a: $ff
	cp   $ff                                         ; $794b: $fe $ff
	and  [hl]                                        ; $794d: $a6
	ld   [hl+], a                                    ; $794e: $22
	ld   de, $1111                                   ; $794f: $11 $11 $11
	jr   @+$01                                       ; $7952: $18 $ff

	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	rst  $38                                         ; $7956: $ff
	db   $fd                                         ; $7957: $fd
	sub  h                                           ; $7958: $94
	ld   [hl+], a                                    ; $7959: $22
	ld   de, $1111                                   ; $795a: $11 $11 $11
	inc  e                                           ; $795d: $1c
	rst  $38                                         ; $795e: $ff
	rst  $38                                         ; $795f: $ff
	rst  $38                                         ; $7960: $ff
	rst  $28                                         ; $7961: $ef
	ei                                               ; $7962: $fb
	add  e                                           ; $7963: $83
	ld   sp, $1111                                   ; $7964: $31 $11 $11
	ld   de, $ff4f                                   ; $7967: $11 $4f $ff
	rst  $38                                         ; $796a: $ff
	rst  $38                                         ; $796b: $ff
	rst  JumpTable                                         ; $796c: $df
	jp   hl                                          ; $796d: $e9


	ld   h, d                                        ; $796e: $62
	ld   b, c                                        ; $796f: $41
	ld   de, $1111                                   ; $7970: $11 $11 $11
	sbc  a                                           ; $7973: $9f
	rst  $38                                         ; $7974: $ff
	rst  $38                                         ; $7975: $ff
	rst  $38                                         ; $7976: $ff
	rst  JumpTable                                         ; $7977: $df
	ret  z                                           ; $7978: $c8

	ld   b, e                                        ; $7979: $43
	ld   sp, $1111                                   ; $797a: $31 $11 $11
	ld   de, $ffff                                   ; $797d: $11 $ff $ff
	rst  $38                                         ; $7980: $ff
	db   $fc                                         ; $7981: $fc
	rst  $38                                         ; $7982: $ff
	add  a                                           ; $7983: $87
	inc  h                                           ; $7984: $24
	ld   de, $1111                                   ; $7985: $11 $11 $11
	jr   @+$01                                       ; $7988: $18 $ff

	rst  $38                                         ; $798a: $ff
	rst  $38                                         ; $798b: $ff
	db   $fc                                         ; $798c: $fc
	db   $fc                                         ; $798d: $fc
	ld   [hl], h                                     ; $798e: $74
	inc  [hl]                                        ; $798f: $34
	ld   de, $1111                                   ; $7990: $11 $11 $11
	cpl                                              ; $7993: $2f
	rst  $38                                         ; $7994: $ff
	rst  $38                                         ; $7995: $ff
	rst  $38                                         ; $7996: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7997: $cf
	ld   hl, sp+$63                                  ; $7998: $f8 $63
	ld   d, c                                        ; $799a: $51
	ld   de, $1111                                   ; $799b: $11 $11 $11
	sbc  a                                           ; $799e: $9f
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	rst  JumpTable                                         ; $79a2: $df
	add  $44                                         ; $79a3: $c6 $44
	ld   b, c                                        ; $79a5: $41
	ld   de, $1311                                   ; $79a6: $11 $11 $13
	rst  $38                                         ; $79a9: $ff
	rst  $28                                         ; $79aa: $ef
	rst  $38                                         ; $79ab: $ff
	ei                                               ; $79ac: $fb
	rst  $38                                         ; $79ad: $ff
	ld   [hl], l                                     ; $79ae: $75
	ld   b, l                                        ; $79af: $45
	ld   de, $1111                                   ; $79b0: $11 $11 $11
	dec  de                                          ; $79b3: $1b
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	rst  $38                                         ; $79b6: $ff
	rst  $28                                         ; $79b7: $ef
	ld   a, [$5255]                                  ; $79b8: $fa $55 $52
	ld   de, $1111                                   ; $79bb: $11 $11 $11
	ld   e, a                                        ; $79be: $5f
	rst  $38                                         ; $79bf: $ff
	rst  $38                                         ; $79c0: $ff
	rst  $38                                         ; $79c1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79c2: $cf
	or   $55                                         ; $79c3: $f6 $55
	ld   d, c                                        ; $79c5: $51
	ld   de, $1211                                   ; $79c6: $11 $11 $12
	rst  $28                                         ; $79c9: $ef
	rst  $38                                         ; $79ca: $ff
	rst  $38                                         ; $79cb: $ff
	ei                                               ; $79cc: $fb
	rst  $38                                         ; $79cd: $ff
	ld   [hl], l                                     ; $79ce: $75
	ld   d, [hl]                                     ; $79cf: $56
	ld   de, $1111                                   ; $79d0: $11 $11 $11
	add  hl, de                                      ; $79d3: $19
	rst  $38                                         ; $79d4: $ff
	rst  $38                                         ; $79d5: $ff
	rst  $38                                         ; $79d6: $ff
	db   $fd                                         ; $79d7: $fd
	db   $fc                                         ; $79d8: $fc
	ld   b, [hl]                                     ; $79d9: $46
	ld   h, d                                        ; $79da: $62
	ld   de, $1111                                   ; $79db: $11 $11 $11
	ld   c, a                                        ; $79de: $4f
	cp   $ff                                         ; $79df: $fe $ff
	rst  $38                                         ; $79e1: $ff
	rst  JumpTable                                         ; $79e2: $df
	or   $66                                         ; $79e3: $f6 $66
	ld   d, c                                        ; $79e5: $51
	ld   de, $1211                                   ; $79e6: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79e9: $cf
	rst  $38                                         ; $79ea: $ff
	rst  $38                                         ; $79eb: $ff
	cp   $ff                                         ; $79ec: $fe $ff
	sub  l                                           ; $79ee: $95
	halt                                             ; $79ef: $76
	ld   de, $1111                                   ; $79f0: $11 $11 $11
	rla                                              ; $79f3: $17
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	rst  $38                                         ; $79f6: $ff
	rst  $38                                         ; $79f7: $ff
	ei                                               ; $79f8: $fb
	ld   d, a                                        ; $79f9: $57
	ld   [hl], e                                     ; $79fa: $73
	ld   de, $1111                                   ; $79fb: $11 $11 $11
	ld   c, a                                        ; $79fe: $4f
	rst  $38                                         ; $79ff: $ff
	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	rst  JumpTable                                         ; $7a02: $df
	or   $68                                         ; $7a03: $f6 $68
	ld   d, c                                        ; $7a05: $51
	ld   de, $1211                                   ; $7a06: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a09: $cf
	rst  $38                                         ; $7a0a: $ff
	rst  $38                                         ; $7a0b: $ff
	db   $fd                                         ; $7a0c: $fd
	rst  $38                                         ; $7a0d: $ff
	add  [hl]                                        ; $7a0e: $86
	ld   a, b                                        ; $7a0f: $78
	ld   de, $1111                                   ; $7a10: $11 $11 $11
	jr   @+$01                                       ; $7a13: $18 $ff

	rst  $28                                         ; $7a15: $ef
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	db   $fc                                         ; $7a18: $fc
	ld   e, b                                        ; $7a19: $58
	add  e                                           ; $7a1a: $83
	ld   de, $1111                                   ; $7a1b: $11 $11 $11
	ld   c, [hl]                                     ; $7a1e: $4e
	cp   $ff                                         ; $7a1f: $fe $ff
	rst  $38                                         ; $7a21: $ff
	rst  $28                                         ; $7a22: $ef
	or   $78                                         ; $7a23: $f6 $78
	ld   h, c                                        ; $7a25: $61
	ld   de, $1111                                   ; $7a26: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a29: $cf
	rst  $38                                         ; $7a2a: $ff
	rst  $38                                         ; $7a2b: $ff
	rst  $38                                         ; $7a2c: $ff
	rst  $38                                         ; $7a2d: $ff
	sub  l                                           ; $7a2e: $95
	sbc  b                                           ; $7a2f: $98
	ld   de, $1111                                   ; $7a30: $11 $11 $11
	jr   @+$01                                       ; $7a33: $18 $ff

	rst  $38                                         ; $7a35: $ff
	rst  $38                                         ; $7a36: $ff
	rst  $38                                         ; $7a37: $ff
	db   $fc                                         ; $7a38: $fc
	ld   e, b                                        ; $7a39: $58
	sub  e                                           ; $7a3a: $93
	ld   de, $1111                                   ; $7a3b: $11 $11 $11
	ld   e, a                                        ; $7a3e: $5f
	cp   $ff                                         ; $7a3f: $fe $ff
	rst  $38                                         ; $7a41: $ff
	rst  $28                                         ; $7a42: $ef
	push af                                          ; $7a43: $f5
	ld   a, d                                        ; $7a44: $7a
	ld   d, c                                        ; $7a45: $51
	ld   de, $1311                                   ; $7a46: $11 $11 $13
	rst  JumpTable                                         ; $7a49: $df
	rst  $38                                         ; $7a4a: $ff
	rst  $38                                         ; $7a4b: $ff
	db   $fd                                         ; $7a4c: $fd
	rst  $38                                         ; $7a4d: $ff
	ld   [hl], a                                     ; $7a4e: $77
	sbc  b                                           ; $7a4f: $98
	ld   de, $1111                                   ; $7a50: $11 $11 $11
	dec  de                                          ; $7a53: $1b
	cp   $ff                                         ; $7a54: $fe $ff
	rst  $38                                         ; $7a56: $ff
	rst  $38                                         ; $7a57: $ff
	ld   a, [$915a]                                  ; $7a58: $fa $5a $91
	ld   de, $1111                                   ; $7a5b: $11 $11 $11
	adc  a                                           ; $7a5e: $8f
	rst  $38                                         ; $7a5f: $ff
	rst  $38                                         ; $7a60: $ff
	rst  $38                                         ; $7a61: $ff
	rst  $38                                         ; $7a62: $ff
	or   [hl]                                        ; $7a63: $b6
	adc  c                                           ; $7a64: $89
	ld   sp, $1111                                   ; $7a65: $31 $11 $11
	ld   d, $ff                                      ; $7a68: $16 $ff
	rst  $28                                         ; $7a6a: $ef
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	cp   $67                                         ; $7a6d: $fe $67
	sub  [hl]                                        ; $7a6f: $96
	ld   de, $1111                                   ; $7a70: $11 $11 $11
	ld   c, [hl]                                     ; $7a73: $4e
	cp   $ff                                         ; $7a74: $fe $ff
	rst  $38                                         ; $7a76: $ff
	rst  $28                                         ; $7a77: $ef
	or   $89                                         ; $7a78: $f6 $89
	ld   [hl], c                                     ; $7a7a: $71
	ld   de, $1211                                   ; $7a7b: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a7e: $cf
	rst  $28                                         ; $7a7f: $ef
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	rst  $38                                         ; $7a82: $ff
	add  a                                           ; $7a83: $87
	sub  [hl]                                        ; $7a84: $96
	ld   de, $1111                                   ; $7a85: $11 $11 $11
	ld   a, [de]                                     ; $7a88: $1a
	rst  $38                                         ; $7a89: $ff
	rst  $38                                         ; $7a8a: $ff
	rst  $38                                         ; $7a8b: $ff
	rst  $38                                         ; $7a8c: $ff
	ld   hl, sp+$78                                  ; $7a8d: $f8 $78
	ld   [hl], c                                     ; $7a8f: $71
	ld   de, $1111                                   ; $7a90: $11 $11 $11
	xor  a                                           ; $7a93: $af
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	rst  $38                                         ; $7a97: $ff
	and  [hl]                                        ; $7a98: $a6
	sub  a                                           ; $7a99: $97
	ld   de, $1111                                   ; $7a9a: $11 $11 $11
	add  hl, de                                      ; $7a9d: $19
	rst  $38                                         ; $7a9e: $ff
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	ld   sp, hl                                      ; $7aa2: $f9
	ld   a, b                                        ; $7aa3: $78
	add  c                                           ; $7aa4: $81
	ld   de, $1111                                   ; $7aa5: $11 $11 $11
	xor  a                                           ; $7aa8: $af
	rst  $38                                         ; $7aa9: $ff
	rst  $38                                         ; $7aaa: $ff
	db   $fd                                         ; $7aab: $fd
	rst  $38                                         ; $7aac: $ff
	add  [hl]                                        ; $7aad: $86
	adc  b                                           ; $7aae: $88
	ld   de, $1111                                   ; $7aaf: $11 $11 $11
	dec  de                                          ; $7ab2: $1b
	cp   $ff                                         ; $7ab3: $fe $ff
	rst  $38                                         ; $7ab5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab6: $cf
	rst  $30                                         ; $7ab7: $f7
	ld   l, c                                        ; $7ab8: $69
	ld   [hl], c                                     ; $7ab9: $71
	ld   de, $1111                                   ; $7aba: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7abd: $cf
	rst  $38                                         ; $7abe: $ff
	rst  $38                                         ; $7abf: $ff
	db   $fd                                         ; $7ac0: $fd
	rst  $38                                         ; $7ac1: $ff
	add  a                                           ; $7ac2: $87
	add  a                                           ; $7ac3: $87
	ld   de, $1111                                   ; $7ac4: $11 $11 $11
	inc  e                                           ; $7ac7: $1c
	cp   $ff                                         ; $7ac8: $fe $ff
	rst  $38                                         ; $7aca: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7acb: $cf
	rst  $30                                         ; $7acc: $f7
	ld   [hl], a                                     ; $7acd: $77
	ld   [hl], c                                     ; $7ace: $71
	ld   de, $1311                                   ; $7acf: $11 $11 $13
	rst  $28                                         ; $7ad2: $ef
	rst  $38                                         ; $7ad3: $ff
	rst  $38                                         ; $7ad4: $ff
	db   $fd                                         ; $7ad5: $fd
	cp   $86                                         ; $7ad6: $fe $86
	halt                                             ; $7ad8: $76
	ld   de, $1111                                   ; $7ad9: $11 $11 $11
	ld   c, a                                        ; $7adc: $4f
	rst  $38                                         ; $7add: $ff
	rst  $38                                         ; $7ade: $ff
	rst  $38                                         ; $7adf: $ff
	rst  JumpTable                                         ; $7ae0: $df
	rst  $20                                         ; $7ae1: $e7
	ld   h, a                                        ; $7ae2: $67
	ld   sp, $1111                                   ; $7ae3: $31 $11 $11
	ld   d, $ff                                      ; $7ae6: $16 $ff
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	rst  JumpTable                                         ; $7aea: $df
	db   $fc                                         ; $7aeb: $fc
	halt                                             ; $7aec: $76
	add  c                                           ; $7aed: $81
	ld   de, $1111                                   ; $7aee: $11 $11 $11
	sbc  a                                           ; $7af1: $9f
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	db   $fc                                         ; $7af4: $fc
	rst  $38                                         ; $7af5: $ff
	and  a                                           ; $7af6: $a7
	ld   l, b                                        ; $7af7: $68
	ld   de, $1111                                   ; $7af8: $11 $11 $11
	inc  e                                           ; $7afb: $1c
	rst  $38                                         ; $7afc: $ff
	rst  $38                                         ; $7afd: $ff
	rst  $38                                         ; $7afe: $ff
	xor  a                                           ; $7aff: $af
	ld   a, [$7176]                                  ; $7b00: $fa $76 $71
	ld   de, $1111                                   ; $7b03: $11 $11 $11
	rst  $28                                         ; $7b06: $ef
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	db   $fc                                         ; $7b09: $fc
	db   $fd                                         ; $7b0a: $fd
	sub  [hl]                                        ; $7b0b: $96
	ld   h, l                                        ; $7b0c: $65
	ld   de, $1111                                   ; $7b0d: $11 $11 $11
	ld   e, a                                        ; $7b10: $5f
	rst  $38                                         ; $7b11: $ff
	rst  $38                                         ; $7b12: $ff
	db   $fd                                         ; $7b13: $fd
	rst  JumpTable                                         ; $7b14: $df
	cp   b                                           ; $7b15: $b8
	ld   d, a                                        ; $7b16: $57
	ld   de, $1111                                   ; $7b17: $11 $11 $11
	jr   @+$01                                       ; $7b1a: $18 $ff

	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	cp   [hl]                                        ; $7b1e: $be
	ld   a, [$7176]                                  ; $7b1f: $fa $76 $71
	ld   de, $1211                                   ; $7b22: $11 $11 $12
	rst  JumpTable                                         ; $7b25: $df
	rst  $38                                         ; $7b26: $ff
	rst  $38                                         ; $7b27: $ff
	ei                                               ; $7b28: $fb
	db   $fd                                         ; $7b29: $fd
	and  [hl]                                        ; $7b2a: $a6
	ld   h, l                                        ; $7b2b: $65
	ld   de, $1111                                   ; $7b2c: $11 $11 $11
	ld   l, a                                        ; $7b2f: $6f
	rst  $38                                         ; $7b30: $ff
	rst  $38                                         ; $7b31: $ff
	db   $fd                                         ; $7b32: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b33: $cf
	cp   c                                           ; $7b34: $b9
	ld   d, [hl]                                     ; $7b35: $56
	ld   de, $1111                                   ; $7b36: $11 $11 $11
	ld   a, [hl-]                                    ; $7b39: $3a
	rst  $38                                         ; $7b3a: $ff
	rst  $38                                         ; $7b3b: $ff
	rst  $38                                         ; $7b3c: $ff
	cp   l                                           ; $7b3d: $bd
	jp   z, $5165                                    ; $7b3e: $ca $65 $51

	ld   de, $2511                                   ; $7b41: $11 $11 $25
	rst  $38                                         ; $7b44: $ff
	rst  $38                                         ; $7b45: $ff
	rst  $38                                         ; $7b46: $ff
	db   $eb                                         ; $7b47: $eb
	cp   h                                           ; $7b48: $bc
	sub  l                                           ; $7b49: $95
	ld   [hl], c                                     ; $7b4a: $71
	ld   de, $1311                                   ; $7b4b: $11 $11 $13
	xor  a                                           ; $7b4e: $af
	rst  $38                                         ; $7b4f: $ff
	rst  $38                                         ; $7b50: $ff
	ld   a, [$b9cd]                                  ; $7b51: $fa $cd $b9
	ld   d, a                                        ; $7b54: $57
	ld   de, $1111                                   ; $7b55: $11 $11 $11
	ld   c, l                                        ; $7b58: $4d
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	xor  [hl]                                        ; $7b5c: $ae
	xor  d                                           ; $7b5d: $aa
	halt                                             ; $7b5e: $76
	ld   sp, $1111                                   ; $7b5f: $31 $11 $11
	jr   z, @+$01                                    ; $7b62: $28 $ff

	rst  $38                                         ; $7b64: $ff
	rst  $38                                         ; $7b65: $ff
	cp   d                                           ; $7b66: $ba
	cp   e                                           ; $7b67: $bb
	sub  l                                           ; $7b68: $95
	ld   [hl], c                                     ; $7b69: $71
	ld   de, $1411                                   ; $7b6a: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b6d: $cf
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	ld   sp, hl                                      ; $7b70: $f9
	jp   z, Jump_0f3_65a7                            ; $7b71: $ca $a7 $65

Call_0f3_7b74:
	ld   de, $1411                                   ; $7b74: $11 $11 $14
	ld   a, a                                        ; $7b77: $7f
	rst  $38                                         ; $7b78: $ff
	rst  $38                                         ; $7b79: $ff
	db   $fc                                         ; $7b7a: $fc
	sbc  d                                           ; $7b7b: $9a
	cp   e                                           ; $7b7c: $bb
	ld   h, a                                        ; $7b7d: $67
	ld   de, $1111                                   ; $7b7e: $11 $11 $11
	ld   c, d                                        ; $7b81: $4a
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	sbc  c                                           ; $7b85: $99
	xor  h                                           ; $7b86: $ac
	and  l                                           ; $7b87: $a5
	ld   h, c                                        ; $7b88: $61
	ld   de, $3611                                   ; $7b89: $11 $11 $36
	rst  $38                                         ; $7b8c: $ff
	rst  $38                                         ; $7b8d: $ff
	rst  $38                                         ; $7b8e: $ff
	ret                                              ; $7b8f: $c9


	sbc  d                                           ; $7b90: $9a
	rst  ToBoot                                         ; $7b91: $c7
	ld   h, c                                        ; $7b92: $61
	ld   de, $3611                                   ; $7b93: $11 $11 $36
	sbc  a                                           ; $7b96: $9f
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	ld   sp, hl                                      ; $7b99: $f9
	adc  b                                           ; $7b9a: $88
	bit  4, l                                        ; $7b9b: $cb $65
	ld   de, $1411                                   ; $7b9d: $11 $11 $14
	ld   a, [hl]                                     ; $7ba0: $7e
	rst  $38                                         ; $7ba1: $ff
	rst  $38                                         ; $7ba2: $ff
	ei                                               ; $7ba3: $fb
	adc  b                                           ; $7ba4: $88
	sbc  l                                           ; $7ba5: $9d
	and  [hl]                                        ; $7ba6: $a6
	ld   de, $1211                                   ; $7ba7: $11 $11 $12
	ld   a, e                                        ; $7baa: $7b
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	cp   $88                                         ; $7bad: $fe $88
	adc  l                                           ; $7baf: $8d
	rst  ToBoot                                         ; $7bb0: $c7
	ld   b, c                                        ; $7bb1: $41
	ld   de, $5812                                   ; $7bb2: $11 $12 $58
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff

Call_0f3_7bb7:
	rst  $38                                         ; $7bb7: $ff
	sub  a                                           ; $7bb8: $97
	ld   a, d                                        ; $7bb9: $7a
	ld   sp, hl                                      ; $7bba: $f9
	ld   h, c                                        ; $7bbb: $61
	ld   de, $4811                                   ; $7bbc: $11 $11 $48
	rst  JumpTable                                         ; $7bbf: $df
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	or   [hl]                                        ; $7bc2: $b6
	ld   a, c                                        ; $7bc3: $79
	db   $fc                                         ; $7bc4: $fc
	ld   [hl], d                                     ; $7bc5: $72
	ld   de, $2711                                   ; $7bc6: $11 $11 $27
	xor  a                                           ; $7bc9: $af
	rst  $38                                         ; $7bca: $ff
	rst  $38                                         ; $7bcb: $ff
	rst  $20                                         ; $7bcc: $e7
	ld   h, [hl]                                     ; $7bcd: $66
	rst  JumpTable                                         ; $7bce: $df
	and  l                                           ; $7bcf: $a5
	ld   de, $1611                                   ; $7bd0: $11 $11 $16
	adc  a                                           ; $7bd3: $8f
	rst  $38                                         ; $7bd4: $ff
	rst  $38                                         ; $7bd5: $ff
	ld   hl, sp+$56                                  ; $7bd6: $f8 $56
	sbc  a                                           ; $7bd8: $9f
	rst  $10                                         ; $7bd9: $d7
	ld   de, $1511                                   ; $7bda: $11 $11 $15
	sbc  l                                           ; $7bdd: $9d
	rst  $38                                         ; $7bde: $ff
	rst  $38                                         ; $7bdf: $ff
	ld   hl, sp+$56                                  ; $7be0: $f8 $56
	adc  a                                           ; $7be2: $8f
	ld   a, [$1111]                                  ; $7be3: $fa $11 $11
	inc  de                                          ; $7be6: $13
	ld   a, d                                        ; $7be7: $7a
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	db   $fd                                         ; $7bea: $fd
	ld   d, h                                        ; $7beb: $54
	ld   l, a                                        ; $7bec: $6f
	ei                                               ; $7bed: $fb
	ld   sp, $1211                                   ; $7bee: $31 $11 $12
	adc  d                                           ; $7bf1: $8a
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	rst  $38                                         ; $7bf4: $ff
	ld   d, h                                        ; $7bf5: $54
	ld   l, h                                        ; $7bf6: $6c
	rst  $38                                         ; $7bf7: $ff
	ld   h, c                                        ; $7bf8: $61
	ld   de, $7812                                   ; $7bf9: $11 $12 $78
	rst  $38                                         ; $7bfc: $ff
	rst  $38                                         ; $7bfd: $ff
	rst  $38                                         ; $7bfe: $ff
	ld   h, l                                        ; $7bff: $65
	ld   e, c                                        ; $7c00: $59
	rst  $38                                         ; $7c01: $ff
	add  c                                           ; $7c02: $81
	ld   de, $6822                                   ; $7c03: $11 $22 $68
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	rst  $38                                         ; $7c08: $ff
	ld   d, l                                        ; $7c09: $55
	ld   c, b                                        ; $7c0a: $48
	rst  $38                                         ; $7c0b: $ff
	pop  bc                                          ; $7c0c: $c1
	ld   de, $5713                                   ; $7c0d: $11 $13 $57
	rst  $28                                         ; $7c10: $ef
	rst  $38                                         ; $7c11: $ff
	rst  $38                                         ; $7c12: $ff
	ld   d, e                                        ; $7c13: $53
	ld   e, b                                        ; $7c14: $58
	rst  $38                                         ; $7c15: $ff
	pop  hl                                          ; $7c16: $e1
	ld   de, $6815                                   ; $7c17: $11 $15 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c1a: $cf
	rst  $38                                         ; $7c1b: $ff
	rst  $38                                         ; $7c1c: $ff
	inc  [hl]                                        ; $7c1d: $34
	ld   l, c                                        ; $7c1e: $69
	rst  $38                                         ; $7c1f: $ff
	pop  af                                          ; $7c20: $f1
	ld   de, $6717                                   ; $7c21: $11 $17 $67
	cp   a                                           ; $7c24: $bf
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	ld   b, d                                        ; $7c27: $42
	ld   a, b                                        ; $7c28: $78
	rst  $38                                         ; $7c29: $ff
	di                                               ; $7c2a: $f3
	ld   de, $961a                                   ; $7c2b: $11 $1a $96
	adc  a                                           ; $7c2e: $8f
	rst  $38                                         ; $7c2f: $ff
	db   $fd                                         ; $7c30: $fd
	ld   [hl-], a                                    ; $7c31: $32
	ld   a, c                                        ; $7c32: $79
	rst  $38                                         ; $7c33: $ff
	db   $f4                                         ; $7c34: $f4
	ld   de, $9719                                   ; $7c35: $11 $19 $97
	sbc  a                                           ; $7c38: $9f
	rst  $38                                         ; $7c39: $ff
	db   $fd                                         ; $7c3a: $fd
	ld   hl, $ff59                                   ; $7c3b: $21 $59 $ff
	db   $f4                                         ; $7c3e: $f4
	ld   de, $c81a                                   ; $7c3f: $11 $1a $c8
	ld   a, a                                        ; $7c42: $7f
	rst  $38                                         ; $7c43: $ff
	ei                                               ; $7c44: $fb
	ld   de, $ff6a                                   ; $7c45: $11 $6a $ff
	push af                                          ; $7c48: $f5
	ld   de, $c819                                   ; $7c49: $11 $19 $c8
	ld   l, a                                        ; $7c4c: $6f
	rst  $38                                         ; $7c4d: $ff
	ld   sp, hl                                      ; $7c4e: $f9
	ld   de, $ff7c                                   ; $7c4f: $11 $7c $ff
	push af                                          ; $7c52: $f5
	ld   de, $fc18                                   ; $7c53: $11 $18 $fc
	ld   a, a                                        ; $7c56: $7f
	rst  $38                                         ; $7c57: $ff
	ld   hl, sp+$11                                  ; $7c58: $f8 $11
	ld   a, [hl]                                     ; $7c5a: $7e
	rst  $38                                         ; $7c5b: $ff
	ldh  a, [c]                                      ; $7c5c: $f2
	ld   de, $fc18                                   ; $7c5d: $11 $18 $fc
	sbc  a                                           ; $7c60: $9f
	rst  $38                                         ; $7c61: $ff
	rst  $30                                         ; $7c62: $f7
	ld   de, $ff8f                                   ; $7c63: $11 $8f $ff
	pop  af                                          ; $7c66: $f1
	ld   de, $fd18                                   ; $7c67: $11 $18 $fd
	cp   a                                           ; $7c6a: $bf
	rst  $38                                         ; $7c6b: $ff
	or   $11                                         ; $7c6c: $f6 $11
	adc  a                                           ; $7c6e: $8f
	rst  $38                                         ; $7c6f: $ff
	pop  bc                                          ; $7c70: $c1
	ld   de, $fe17                                   ; $7c71: $11 $17 $fe
	rst  JumpTable                                         ; $7c74: $df
	rst  $38                                         ; $7c75: $ff
	di                                               ; $7c76: $f3
	ld   de, $ff9f                                   ; $7c77: $11 $9f $ff
	sub  c                                           ; $7c7a: $91
	ld   de, $fc1b                                   ; $7c7b: $11 $1b $fc
	rst  $28                                         ; $7c7e: $ef
	rst  $38                                         ; $7c7f: $ff
	pop  hl                                          ; $7c80: $e1
	ld   de, $ffdf                                   ; $7c81: $11 $df $ff
	ld   [hl], c                                     ; $7c84: $71
	ld   de, $fd1a                                   ; $7c85: $11 $1a $fd
	rst  $38                                         ; $7c88: $ff
	rst  $38                                         ; $7c89: $ff
	pop  bc                                          ; $7c8a: $c1
	inc  de                                          ; $7c8b: $13
	rst  $38                                         ; $7c8c: $ff
	db   $fd                                         ; $7c8d: $fd
	ld   de, $4d11                                   ; $7c8e: $11 $11 $4d
	db   $fd                                         ; $7c91: $fd
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	sub  c                                           ; $7c94: $91
	ld   d, $ff                                      ; $7c95: $16 $ff
	ei                                               ; $7c97: $fb
	ld   de, $7e11                                   ; $7c98: $11 $11 $7e
	rst  $38                                         ; $7c9b: $ff
	rst  $38                                         ; $7c9c: $ff
	rst  $38                                         ; $7c9d: $ff
	ld   h, c                                        ; $7c9e: $61
	jr   @+$01                                       ; $7c9f: $18 $ff

	ld   hl, sp+$11                                  ; $7ca1: $f8 $11
	ld   de, $ffaf                                   ; $7ca3: $11 $af $ff
	rst  $38                                         ; $7ca6: $ff
	cp   $21                                         ; $7ca7: $fe $21
	dec  de                                          ; $7ca9: $1b
	rst  $38                                         ; $7caa: $ff
	ldh  a, [c]                                      ; $7cab: $f2
	ld   de, $bf11                                   ; $7cac: $11 $11 $bf
	rst  $28                                         ; $7caf: $ef
	rst  $38                                         ; $7cb0: $ff
	ld   a, [$4f11]                                  ; $7cb1: $fa $11 $4f
	rst  $38                                         ; $7cb4: $ff
	pop  de                                          ; $7cb5: $d1
	ld   de, rAUD1LOW                                   ; $7cb6: $11 $13 $ff
	rst  $38                                         ; $7cb9: $ff
	rst  $38                                         ; $7cba: $ff
	ld   sp, hl                                      ; $7cbb: $f9
	ld   de, $ff5f                                   ; $7cbc: $11 $5f $ff
	ld   h, c                                        ; $7cbf: $61
	ld   de, $ff1a                                   ; $7cc0: $11 $1a $ff
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	di                                               ; $7cc5: $f3
	ld   de, $ffbf                                   ; $7cc6: $11 $bf $ff
	ld   bc, $1a11                                   ; $7cc9: $01 $11 $1a
	rst  $38                                         ; $7ccc: $ff
	rst  $38                                         ; $7ccd: $ff
	rst  $38                                         ; $7cce: $ff
	pop  bc                                          ; $7ccf: $c1
	inc  de                                          ; $7cd0: $13
	rst  $38                                         ; $7cd1: $ff
	ei                                               ; $7cd2: $fb
	ld   de, $7f11                                   ; $7cd3: $11 $11 $7f
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	rst  $38                                         ; $7cd8: $ff
	ld   [hl], c                                     ; $7cd9: $71
	rla                                              ; $7cda: $17
	rst  $38                                         ; $7cdb: $ff
	di                                               ; $7cdc: $f3
	ld   de, $cf11                                   ; $7cdd: $11 $11 $cf
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	ei                                               ; $7ce2: $fb
	ld   hl, $ff2f                                   ; $7ce3: $21 $2f $ff
	pop  de                                          ; $7ce6: $d1
	ld   de, $df14                                   ; $7ce7: $11 $14 $df
	rst  $38                                         ; $7cea: $ff
	rst  $38                                         ; $7ceb: $ff
	ld   sp, hl                                      ; $7cec: $f9
	ld   de, $ff7f                                   ; $7ced: $11 $7f $ff
	ld   sp, $1a11                                   ; $7cf0: $31 $11 $1a
	rst  $28                                         ; $7cf3: $ef
	rst  $38                                         ; $7cf4: $ff
	rst  $38                                         ; $7cf5: $ff
	or   e                                           ; $7cf6: $b3
	inc  de                                          ; $7cf7: $13
	rst  $28                                         ; $7cf8: $ef
	rst  $38                                         ; $7cf9: $ff
	ld   de, $8f11                                   ; $7cfa: $11 $11 $8f
	rst  $28                                         ; $7cfd: $ef
	rst  $38                                         ; $7cfe: $ff
	db   $fd                                         ; $7cff: $fd
	ld   [hl], c                                     ; $7d00: $71
	add  hl, de                                      ; $7d01: $19
	rst  $38                                         ; $7d02: $ff
	ldh  a, [c]                                      ; $7d03: $f2
	ld   de, $cd11                                   ; $7d04: $11 $11 $cd
	rst  $28                                         ; $7d07: $ef
	rst  $38                                         ; $7d08: $ff
	or   $11                                         ; $7d09: $f6 $11
	ld   a, a                                        ; $7d0b: $7f
	rst  $38                                         ; $7d0c: $ff
	pop  bc                                          ; $7d0d: $c1
	ld   de, $ff19                                   ; $7d0e: $11 $19 $ff
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	call nz, $cf12                                   ; $7d13: $c4 $12 $cf
	rst  $38                                         ; $7d16: $ff
	ld   de, $3f11                                   ; $7d17: $11 $11 $3f
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	rst  $38                                         ; $7d1c: $ff
	add  c                                           ; $7d1d: $81
	rla                                              ; $7d1e: $17
	rst  $38                                         ; $7d1f: $ff
	rst  $30                                         ; $7d20: $f7
	ld   de, $df11                                   ; $7d21: $11 $11 $df
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	ld   a, [$5f21]                                  ; $7d26: $fa $21 $5f
	rst  $38                                         ; $7d29: $ff
	pop  de                                          ; $7d2a: $d1
	ld   de, $ff1a                                   ; $7d2b: $11 $1a $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	jp   $df14                                       ; $7d30: $c3 $14 $df


	rst  $38                                         ; $7d33: $ff
	ld   de, $5f11                                   ; $7d34: $11 $11 $5f
	rst  $38                                         ; $7d37: $ff
	rst  $38                                         ; $7d38: $ff
	cp   $71                                         ; $7d39: $fe $71
	ld   a, [hl-]                                    ; $7d3b: $3a
	rst  $38                                         ; $7d3c: $ff
	db   $f4                                         ; $7d3d: $f4
	ld   de, rAUD1LEN                                   ; $7d3e: $11 $11 $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	db   $db                                         ; $7d43: $db
	ld   b, h                                        ; $7d44: $44
	sbc  a                                           ; $7d45: $9f
	rst  $38                                         ; $7d46: $ff
	ld   h, c                                        ; $7d47: $61
	ld   de, $ff1b                                   ; $7d48: $11 $1b $ff
	rst  $38                                         ; $7d4b: $ff
	or   $35                                         ; $7d4c: $f6 $35
	sbc  [hl]                                        ; $7d4e: $9e
	rst  $38                                         ; $7d4f: $ff
	ei                                               ; $7d50: $fb
	ld   de, $1f11                                   ; $7d51: $11 $11 $1f
	rst  $38                                         ; $7d54: $ff
	rst  $38                                         ; $7d55: $ff
	ld   d, c                                        ; $7d56: $51
	ld   c, c                                        ; $7d57: $49
	rst  $28                                         ; $7d58: $ef
	rst  $38                                         ; $7d59: $ff
	pop  af                                          ; $7d5a: $f1
	ld   de, $df11                                   ; $7d5b: $11 $11 $df
	rst  $38                                         ; $7d5e: $ff
	ld   hl, sp+$12                                  ; $7d5f: $f8 $12
	ld   a, l                                        ; $7d61: $7d
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	ld   hl, $1811                                   ; $7d64: $21 $11 $18
	rst  $38                                         ; $7d67: $ff
	rst  $38                                         ; $7d68: $ff
	pop  de                                          ; $7d69: $d1
	dec  d                                           ; $7d6a: $15
	cp   a                                           ; $7d6b: $bf
	rst  $38                                         ; $7d6c: $ff
	or   $11                                         ; $7d6d: $f6 $11
	ld   de, $ff6f                                   ; $7d6f: $11 $6f $ff
	db   $fc                                         ; $7d72: $fc
	ld   hl, $ff6c                                   ; $7d73: $21 $6c $ff
	rst  $38                                         ; $7d76: $ff
	or   c                                           ; $7d77: $b1
	ld   de, $df11                                   ; $7d78: $11 $11 $df
	rst  $38                                         ; $7d7b: $ff
	di                                               ; $7d7c: $f3
	inc  de                                          ; $7d7d: $13
	cp   a                                           ; $7d7e: $bf
	rst  $38                                         ; $7d7f: $ff
	db   $fc                                         ; $7d80: $fc
	ld   de, $1c11                                   ; $7d81: $11 $11 $1c
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	ld   [hl], c                                     ; $7d86: $71
	add  hl, de                                      ; $7d87: $19
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	pop  af                                          ; $7d8a: $f1
	ld   de, $af11                                   ; $7d8b: $11 $11 $af
	rst  $38                                         ; $7d8e: $ff
	push af                                          ; $7d8f: $f5
	inc  de                                          ; $7d90: $13
	adc  a                                           ; $7d91: $8f
	rst  $38                                         ; $7d92: $ff
	rst  $38                                         ; $7d93: $ff
	ld   hl, $1711                                   ; $7d94: $21 $11 $17
	rst  $38                                         ; $7d97: $ff
	rst  $38                                         ; $7d98: $ff
	pop  de                                          ; $7d99: $d1
	inc  de                                          ; $7d9a: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d9b: $cf
	rst  $38                                         ; $7d9c: $ff
	di                                               ; $7d9d: $f3
	ld   de, $3e11                                   ; $7d9e: $11 $11 $3e
	rst  $38                                         ; $7da1: $ff
	cp   $11                                         ; $7da2: $fe $11
	ld   c, l                                        ; $7da4: $4d
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	ld   h, c                                        ; $7da7: $61
	ld   de, $ef11                                   ; $7da8: $11 $11 $ef
	rst  $38                                         ; $7dab: $ff
	or   c                                           ; $7dac: $b1
	ld   d, $ef                                      ; $7dad: $16 $ef
	rst  $38                                         ; $7daf: $ff
	rst  $30                                         ; $7db0: $f7
	ld   de, $1f11                                   ; $7db1: $11 $11 $1f
	rst  $38                                         ; $7db4: $ff
	ld   a, [$6d11]                                  ; $7db5: $fa $11 $6d
	rst  $38                                         ; $7db8: $ff
	rst  $38                                         ; $7db9: $ff
	ld   [hl], c                                     ; $7dba: $71
	ld   de, $ef11                                   ; $7dbb: $11 $11 $ef
	rst  $38                                         ; $7dbe: $ff
	pop  de                                          ; $7dbf: $d1
	inc  d                                           ; $7dc0: $14
	rst  JumpTable                                         ; $7dc1: $df
	rst  $38                                         ; $7dc2: $ff
	rst  $30                                         ; $7dc3: $f7
	ld   de, $1911                                   ; $7dc4: $11 $11 $19
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	ld   de, $ff2c                                   ; $7dc9: $11 $2c $ff
	rst  $38                                         ; $7dcc: $ff
	ld   h, c                                        ; $7dcd: $61
	ld   de, $9f11                                   ; $7dce: $11 $11 $9f
	rst  $38                                         ; $7dd1: $ff
	pop  af                                          ; $7dd2: $f1
	inc  d                                           ; $7dd3: $14
	rst  $28                                         ; $7dd4: $ef
	rst  $38                                         ; $7dd5: $ff
	or   $11                                         ; $7dd6: $f6 $11
	ld   de, $ff1b                                   ; $7dd8: $11 $1b $ff
	db   $fd                                         ; $7ddb: $fd
	ld   de, $ff5f                                   ; $7ddc: $11 $5f $ff
	rst  $38                                         ; $7ddf: $ff
	ld   h, c                                        ; $7de0: $61
	ld   de, $df11                                   ; $7de1: $11 $11 $df
	rst  $38                                         ; $7de4: $ff
	pop  bc                                          ; $7de5: $c1
	rla                                              ; $7de6: $17
	rst  $38                                         ; $7de7: $ff
	rst  $38                                         ; $7de8: $ff
	db   $d3                                         ; $7de9: $d3
	ld   de, $1d11                                   ; $7dea: $11 $11 $1d
	rst  $38                                         ; $7ded: $ff
	ld   a, [$9f11]                                  ; $7dee: $fa $11 $9f
	rst  $38                                         ; $7df1: $ff
	ei                                               ; $7df2: $fb
	ld   hl, $1111                                   ; $7df3: $21 $11 $11
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	ld   h, c                                        ; $7df8: $61
	ld   a, [de]                                     ; $7df9: $1a
	rst  $38                                         ; $7dfa: $ff
	rst  $38                                         ; $7dfb: $ff
	sub  c                                           ; $7dfc: $91
	ld   de, $3f11                                   ; $7dfd: $11 $11 $3f
	rst  $38                                         ; $7e00: $ff
	push af                                          ; $7e01: $f5
	ld   de, $ff9f                                   ; $7e02: $11 $9f $ff
	rst  $30                                         ; $7e05: $f7
	ld   de, $1511                                   ; $7e06: $11 $11 $15
	rst  $38                                         ; $7e09: $ff
	rst  $38                                         ; $7e0a: $ff
	ld   hl, $ff2c                                   ; $7e0b: $21 $2c $ff
	rst  $38                                         ; $7e0e: $ff
	ld   b, c                                        ; $7e0f: $41
	ld   de, $9f11                                   ; $7e10: $11 $11 $9f
	rst  $38                                         ; $7e13: $ff
	pop  af                                          ; $7e14: $f1
	ld   [de], a                                     ; $7e15: $12
	rst  $38                                         ; $7e16: $ff
	rst  $38                                         ; $7e17: $ff
	pop  de                                          ; $7e18: $d1
	ld   de, $1b11                                   ; $7e19: $11 $11 $1b
	rst  $38                                         ; $7e1c: $ff
	ld   a, [$6f11]                                  ; $7e1d: $fa $11 $6f
	rst  $38                                         ; $7e20: $ff
	ld   hl, sp+$11                                  ; $7e21: $f8 $11
	ld   de, $ff16                                   ; $7e23: $11 $16 $ff
	rst  $38                                         ; $7e26: $ff
	ld   sp, $ff1a                                   ; $7e27: $31 $1a $ff
	rst  $38                                         ; $7e2a: $ff
	ld   b, c                                        ; $7e2b: $41
	ld   de, $bf11                                   ; $7e2c: $11 $11 $bf
	rst  $38                                         ; $7e2f: $ff
	pop  af                                          ; $7e30: $f1
	ld   de, $ffef                                   ; $7e31: $11 $ef $ff
	pop  bc                                          ; $7e34: $c1
	ld   de, $4e11                                   ; $7e35: $11 $11 $4e
	rst  $38                                         ; $7e38: $ff
	ld   hl, sp+$11                                  ; $7e39: $f8 $11
	ld   l, a                                        ; $7e3b: $6f
	rst  $38                                         ; $7e3c: $ff
	db   $f4                                         ; $7e3d: $f4
	ld   de, $1911                                   ; $7e3e: $11 $11 $19
	rst  $38                                         ; $7e41: $ff
	rst  $38                                         ; $7e42: $ff
	ld   hl, $ff1b                                   ; $7e43: $21 $1b $ff
	db   $fd                                         ; $7e46: $fd
	ld   de, $1211                                   ; $7e47: $11 $11 $12
	rst  $28                                         ; $7e4a: $ef
	rst  $38                                         ; $7e4b: $ff
	add  c                                           ; $7e4c: $81
	inc  d                                           ; $7e4d: $14
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	ld   b, c                                        ; $7e50: $41
	ld   de, $bf11                                   ; $7e51: $11 $11 $bf
	rst  $38                                         ; $7e54: $ff
	di                                               ; $7e55: $f3
	ld   de, $ffaf                                   ; $7e56: $11 $af $ff
	pop  bc                                          ; $7e59: $c1
	ld   de, $4e11                                   ; $7e5a: $11 $11 $4e
	rst  $38                                         ; $7e5d: $ff
	ld   a, [$2f11]                                  ; $7e5e: $fa $11 $2f
	rst  $38                                         ; $7e61: $ff
	pop  af                                          ; $7e62: $f1
	ld   de, $1b11                                   ; $7e63: $11 $11 $1b
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	ld   sp, $ff1a                                   ; $7e68: $31 $1a $ff
	ld   sp, hl                                      ; $7e6b: $f9
	ld   de, $1b11                                   ; $7e6c: $11 $11 $1b
	rst  $38                                         ; $7e6f: $ff
	rst  $38                                         ; $7e70: $ff
	add  c                                           ; $7e71: $81
	inc  d                                           ; $7e72: $14
	rst  $38                                         ; $7e73: $ff
	rst  $38                                         ; $7e74: $ff
	ld   de, $1711                                   ; $7e75: $11 $11 $17
	rst  $38                                         ; $7e78: $ff
	rst  $38                                         ; $7e79: $ff
	jp   nz, rAUD1LEN                                   ; $7e7a: $c2 $11 $ff

	rst  $38                                         ; $7e7d: $ff
	ld   de, $1711                                   ; $7e7e: $11 $11 $17
	rst  $38                                         ; $7e81: $ff
	rst  $38                                         ; $7e82: $ff
	or   $11                                         ; $7e83: $f6 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e85: $cf
	rst  $38                                         ; $7e86: $ff
	ld   hl, $1811                                   ; $7e87: $21 $11 $18
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	ld   hl, sp+$21                                  ; $7e8c: $f8 $21
	cp   a                                           ; $7e8e: $bf
	rst  $38                                         ; $7e8f: $ff
	ld   b, c                                        ; $7e90: $41
	ld   de, $ff16                                   ; $7e91: $11 $16 $ff
	rst  $38                                         ; $7e94: $ff
	rst  ToBoot                                         ; $7e95: $c7
	ld   b, e                                        ; $7e96: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e97: $cf
	rst  $38                                         ; $7e98: $ff
	ld   hl, $1711                                   ; $7e99: $21 $11 $17
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	ret  c                                           ; $7e9e: $d8

	ld   d, h                                        ; $7e9f: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ea0: $cf
	rst  $38                                         ; $7ea1: $ff
	ld   de, $1911                                   ; $7ea2: $11 $11 $19
	rst  $38                                         ; $7ea5: $ff
	rst  $38                                         ; $7ea6: $ff
	cp   b                                           ; $7ea7: $b8
	ld   h, [hl]                                     ; $7ea8: $66
	rst  $28                                         ; $7ea9: $ef
	rst  $38                                         ; $7eaa: $ff
	ld   de, $1d11                                   ; $7eab: $11 $11 $1d
	rst  $38                                         ; $7eae: $ff
	db   $fd                                         ; $7eaf: $fd
	ld   h, a                                        ; $7eb0: $67
	adc  e                                           ; $7eb1: $8b
	rst  $38                                         ; $7eb2: $ff
	db   $fd                                         ; $7eb3: $fd
	ld   de, $1f11                                   ; $7eb4: $11 $11 $1f
	rst  $38                                         ; $7eb7: $ff
	ld   sp, hl                                      ; $7eb8: $f9
	ld   b, [hl]                                     ; $7eb9: $46
	cp   [hl]                                        ; $7eba: $be
	rst  $38                                         ; $7ebb: $ff
	ld   sp, hl                                      ; $7ebc: $f9
	ld   de, $2f11                                   ; $7ebd: $11 $11 $2f
	rst  $38                                         ; $7ec0: $ff
	ld   hl, sp+$56                                  ; $7ec1: $f8 $56
	adc  [hl]                                        ; $7ec3: $8e
	rst  $38                                         ; $7ec4: $ff
	push af                                          ; $7ec5: $f5
	ld   de, $5f11                                   ; $7ec6: $11 $11 $5f
	rst  $38                                         ; $7ec9: $ff
	or   $45                                         ; $7eca: $f6 $45
	xor  a                                           ; $7ecc: $af
	rst  $38                                         ; $7ecd: $ff
	pop  af                                          ; $7ece: $f1
	ld   de, $ef11                                   ; $7ecf: $11 $11 $ef
	rst  $38                                         ; $7ed2: $ff
	or   [hl]                                        ; $7ed3: $b6
	sbc  d                                           ; $7ed4: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed5: $cf
	rst  $38                                         ; $7ed6: $ff
	or   c                                           ; $7ed7: $b1
	ld   de, rAUD1LEN                                   ; $7ed8: $11 $11 $ff
	rst  $38                                         ; $7edb: $ff
	ld   h, h                                        ; $7edc: $64
	ld   e, d                                        ; $7edd: $5a
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	ld   hl, $1811                                   ; $7ee0: $21 $11 $18
	rst  $38                                         ; $7ee3: $ff
	cp   $45                                         ; $7ee4: $fe $45
	adc  a                                           ; $7ee6: $8f
	rst  $38                                         ; $7ee7: $ff
	ld   sp, hl                                      ; $7ee8: $f9
	ld   de, $1f11                                   ; $7ee9: $11 $11 $1f
	rst  $38                                         ; $7eec: $ff
	rst  $30                                         ; $7eed: $f7
	ld   h, a                                        ; $7eee: $67
	cp   a                                           ; $7eef: $bf
	rst  $38                                         ; $7ef0: $ff
	pop  af                                          ; $7ef1: $f1
	ld   de, $af11                                   ; $7ef2: $11 $11 $af
	rst  $38                                         ; $7ef5: $ff
	and  $67                                         ; $7ef6: $e6 $67
	rst  $38                                         ; $7ef8: $ff
	rst  $38                                         ; $7ef9: $ff
	ld   h, c                                        ; $7efa: $61
	ld   de, rAUD1LOW                                   ; $7efb: $11 $13 $ff
	rst  $38                                         ; $7efe: $ff
	sub  [hl]                                        ; $7eff: $96
	ld   e, e                                        ; $7f00: $5b
	rst  $38                                         ; $7f01: $ff
	db   $fd                                         ; $7f02: $fd
	ld   de, $1d11                                   ; $7f03: $11 $11 $1d
	rst  $38                                         ; $7f06: $ff
	db   $fc                                         ; $7f07: $fc
	ld   [hl], a                                     ; $7f08: $77
	ld   a, [hl]                                     ; $7f09: $7e
	rst  $38                                         ; $7f0a: $ff
	di                                               ; $7f0b: $f3
	ld   de, $cf11                                   ; $7f0c: $11 $11 $cf
	rst  $38                                         ; $7f0f: $ff
	add  $7a                                         ; $7f10: $c6 $7a
	rst  $28                                         ; $7f12: $ef
	rst  $38                                         ; $7f13: $ff
	sub  c                                           ; $7f14: $91
	ld   de, rAUD1ENV                                   ; $7f15: $11 $12 $ff
	rst  $38                                         ; $7f18: $ff
	ld   h, h                                        ; $7f19: $64
	ld   e, e                                        ; $7f1a: $5b
	rst  $38                                         ; $7f1b: $ff
	ei                                               ; $7f1c: $fb
	ld   de, $1f11                                   ; $7f1d: $11 $11 $1f
	rst  $38                                         ; $7f20: $ff
	ld   hl, sp+$57                                  ; $7f21: $f8 $57
	rst  JumpTable                                         ; $7f23: $df
	rst  $38                                         ; $7f24: $ff
	and  c                                           ; $7f25: $a1
	ld   de, $df11                                   ; $7f26: $11 $11 $df
	rst  $38                                         ; $7f29: $ff
	or   l                                           ; $7f2a: $b5
	ld   l, l                                        ; $7f2b: $6d
	rst  $38                                         ; $7f2c: $ff
	db   $fc                                         ; $7f2d: $fc
	ld   de, $1c11                                   ; $7f2e: $11 $11 $1c
	rst  $38                                         ; $7f31: $ff
	ld   sp, hl                                      ; $7f32: $f9
	ld   b, a                                        ; $7f33: $47
	cp   a                                           ; $7f34: $bf
	rst  $38                                         ; $7f35: $ff
	pop  af                                          ; $7f36: $f1
	ld   de, rAUD1LEN                                   ; $7f37: $11 $11 $ff
	rst  $38                                         ; $7f3a: $ff
	ld   [hl], e                                     ; $7f3b: $73
	adc  [hl]                                        ; $7f3c: $8e
	rst  $38                                         ; $7f3d: $ff
	db   $fd                                         ; $7f3e: $fd
	ld   de, $1911                                   ; $7f3f: $11 $11 $19
	rst  $38                                         ; $7f42: $ff
	db   $fd                                         ; $7f43: $fd
	ld   h, l                                        ; $7f44: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f45: $cf
	rst  $38                                         ; $7f46: $ff
	pop  hl                                          ; $7f47: $e1
	ld   de, $cf11                                   ; $7f48: $11 $11 $cf
	rst  $38                                         ; $7f4b: $ff
	sub  h                                           ; $7f4c: $94
	ld   a, h                                        ; $7f4d: $7c
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	ld   de, $1e11                                   ; $7f50: $11 $11 $1e
	rst  $38                                         ; $7f53: $ff
	ld   hl, sp+$47                                  ; $7f54: $f8 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f56: $cf
	rst  $38                                         ; $7f57: $ff
	pop  de                                          ; $7f58: $d1
	ld   de, $ef11                                   ; $7f59: $11 $11 $ef
	rst  $38                                         ; $7f5c: $ff
	add  [hl]                                        ; $7f5d: $86
	adc  [hl]                                        ; $7f5e: $8e
	rst  $38                                         ; $7f5f: $ff
	ld   a, [$1111]                                  ; $7f60: $fa $11 $11
	rra                                              ; $7f63: $1f
	rst  $38                                         ; $7f64: $ff
	push af                                          ; $7f65: $f5
	ld   l, e                                        ; $7f66: $6b
	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	ld   d, c                                        ; $7f69: $51
	ld   de, $ff15                                   ; $7f6a: $11 $15 $ff
	db   $fc                                         ; $7f6d: $fc
	dec  [hl]                                        ; $7f6e: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f6f: $cf
	rst  $38                                         ; $7f70: $ff
	pop  de                                          ; $7f71: $d1
	ld   de, $cf11                                   ; $7f72: $11 $11 $cf
	rst  $38                                         ; $7f75: $ff
	add  d                                           ; $7f76: $82
	adc  a                                           ; $7f77: $8f
	rst  $38                                         ; $7f78: $ff
	or   $11                                         ; $7f79: $f6 $11
	ld   de, $ff1f                                   ; $7f7b: $11 $1f $ff
	rst  $30                                         ; $7f7e: $f7
	ld   a, l                                        ; $7f7f: $7d
	rst  $38                                         ; $7f80: $ff
	rst  $38                                         ; $7f81: $ff
	ld   de, $1411                                   ; $7f82: $11 $11 $14
	rst  $38                                         ; $7f85: $ff
	ei                                               ; $7f86: $fb
	ld   a, h                                        ; $7f87: $7c
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	ld   h, c                                        ; $7f8a: $61
	ld   de, $7f11                                   ; $7f8b: $11 $11 $7f
	rst  $38                                         ; $7f8e: $ff
	cp   d                                           ; $7f8f: $ba
	rst  $38                                         ; $7f90: $ff
	rst  $38                                         ; $7f91: $ff
	push bc                                          ; $7f92: $c5
	ld   de, $1e11                                   ; $7f93: $11 $11 $1e
	rst  $38                                         ; $7f96: $ff
	ld   sp, hl                                      ; $7f97: $f9
	sbc  l                                           ; $7f98: $9d
	rst  $38                                         ; $7f99: $ff
	db   $fc                                         ; $7f9a: $fc
	ld   de, $1b11                                   ; $7f9b: $11 $11 $1b
	rst  $38                                         ; $7f9e: $ff
	ld   a, [$ff8c]                                  ; $7f9f: $fa $8c $ff
	rst  $38                                         ; $7fa2: $ff
	ld   d, c                                        ; $7fa3: $51
	ld   de, rAUD1HIGH                                   ; $7fa4: $11 $14 $ff
	rst  $38                                         ; $7fa7: $ff
	cp   l                                           ; $7fa8: $bd
	rst  $28                                         ; $7fa9: $ef
	rst  $38                                         ; $7faa: $ff
	or   c                                           ; $7fab: $b1
	ld   de, $ef11                                   ; $7fac: $11 $11 $ef
	rst  $38                                         ; $7faf: $ff
	sub  [hl]                                        ; $7fb0: $96
	sbc  a                                           ; $7fb1: $9f
	rst  $38                                         ; $7fb2: $ff
	pop  hl                                          ; $7fb3: $e1
	ld   de, $bf11                                   ; $7fb4: $11 $11 $bf
	rst  $38                                         ; $7fb7: $ff
	db   $ec                                         ; $7fb8: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fb9: $cf
	rst  $38                                         ; $7fba: $ff
	db   $e3                                         ; $7fbb: $e3
	ld   de, $5f11                                   ; $7fbc: $11 $11 $5f
	rst  $38                                         ; $7fbf: $ff
	push de                                          ; $7fc0: $d5
	ld   l, [hl]                                     ; $7fc1: $6e
	rst  $38                                         ; $7fc2: $ff
	di                                               ; $7fc3: $f3
	ld   de, $7f11                                   ; $7fc4: $11 $11 $7f
	rst  $38                                         ; $7fc7: $ff
	db   $eb                                         ; $7fc8: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc9: $cf
	rst  $38                                         ; $7fca: $ff
	and  $11                                         ; $7fcb: $e6 $11
	ld   de, $ff1f                                   ; $7fcd: $11 $1f $ff
	or   $5b                                         ; $7fd0: $f6 $5b
	rst  $38                                         ; $7fd2: $ff
	rst  $30                                         ; $7fd3: $f7
	ld   de, $5f11                                   ; $7fd4: $11 $11 $5f
	rst  $38                                         ; $7fd7: $ff
	call z, $ffff                                    ; $7fd8: $cc $ff $ff
	call nz, $1111                                   ; $7fdb: $c4 $11 $11
	inc  e                                           ; $7fde: $1c
	rst  $38                                         ; $7fdf: $ff
	rst  $38                                         ; $7fe0: $ff
	cp   h                                           ; $7fe1: $bc
	rst  $38                                         ; $7fe2: $ff
	ld   sp, hl                                      ; $7fe3: $f9
	ld   de, $3f11                                   ; $7fe4: $11 $11 $3f
	rst  $38                                         ; $7fe7: $ff
	ld   sp, hl                                      ; $7fe8: $f9
	sbc  a                                           ; $7fe9: $9f
	rst  $38                                         ; $7fea: $ff
	push af                                          ; $7feb: $f5
	ld   de, $6f11                                   ; $7fec: $11 $11 $6f
	rst  $38                                         ; $7fef: $ff
	ld   [$ffdf], a                                  ; $7ff0: $ea $df $ff
	jp   $1111                                       ; $7ff3: $c3 $11 $11


	ccf                                              ; $7ff6: $3f
	rst  $38                                         ; $7ff7: $ff
	ld   sp, hl                                      ; $7ff8: $f9
	cp   a                                           ; $7ff9: $bf
	rst  $38                                         ; $7ffa: $ff
	db   $e3                                         ; $7ffb: $e3
	ld   de, $8f11                                   ; $7ffc: $11 $11 $8f
	rst  $38                                         ; $7fff: $ff
