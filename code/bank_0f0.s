; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f0", ROMX[$4000], BANK[$f0]

	db   $fc                                         ; $4000: $fc
	rst  $38                                         ; $4001: $ff
	rst  $38                                         ; $4002: $ff
	ld   de, $1131                                   ; $4003: $11 $31 $11
	ld   c, a                                        ; $4006: $4f
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	di                                               ; $4009: $f3
	ld   de, $394a                                   ; $400a: $11 $4a $39
	rst  $38                                         ; $400d: $ff
	ei                                               ; $400e: $fb
	sbc  l                                           ; $400f: $9d
	ld   [hl], d                                     ; $4010: $72
	ld   de, $1f11                                   ; $4011: $11 $11 $1f
	cp   $ff                                         ; $4014: $fe $ff
	pop  af                                          ; $4016: $f1
	inc  de                                          ; $4017: $13
	ld   de, rAUD1LEN                                   ; $4018: $11 $11 $ff
	rst  $38                                         ; $401b: $ff
	rst  $38                                         ; $401c: $ff
	ld   d, c                                        ; $401d: $51
	ld   de, $8f64                                   ; $401e: $11 $64 $8f
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	and  h                                           ; $4023: $a4
	ld   sp, $1111                                   ; $4024: $31 $11 $11
	cp   a                                           ; $4027: $bf
	rst  $38                                         ; $4028: $ff
	rst  $38                                         ; $4029: $ff
	pop  af                                          ; $402a: $f1
	inc  d                                           ; $402b: $14
	ld   de, rAUD1LEN                                   ; $402c: $11 $11 $ff
	rst  $38                                         ; $402f: $ff
	rst  $38                                         ; $4030: $ff
	ld   hl, $6211                                   ; $4031: $21 $11 $62
	xor  a                                           ; $4034: $af
	rst  $38                                         ; $4035: $ff
	rst  $38                                         ; $4036: $ff
	push af                                          ; $4037: $f5
	ld   [de], a                                     ; $4038: $12
	ld   hl, $1f11                                   ; $4039: $21 $11 $1f
	ei                                               ; $403c: $fb
	rst  $28                                         ; $403d: $ef
	rst  $38                                         ; $403e: $ff
	ld   de, $1161                                   ; $403f: $11 $61 $11
	ld   e, a                                        ; $4042: $5f
	cp   $df                                         ; $4043: $fe $df
	pop  af                                          ; $4045: $f1
	ld   de, $2a56                                   ; $4046: $11 $56 $2a
	rst  $38                                         ; $4049: $ff
	db   $fd                                         ; $404a: $fd
	db   $fd                                         ; $404b: $fd
	ld   [hl], c                                     ; $404c: $71
	add  hl, sp                                      ; $404d: $39
	ld   h, c                                        ; $404e: $61
	ld   de, $f51f                                   ; $404f: $11 $1f $f5
	rst  $38                                         ; $4052: $ff
	or   $17                                         ; $4053: $f6 $17
	ld   sp, rAUD1LEN                                   ; $4055: $31 $11 $ff
	cp   h                                           ; $4058: $bc
	rst  $38                                         ; $4059: $ff
	sub  c                                           ; $405a: $91
	dec  [hl]                                        ; $405b: $35
	sub  e                                           ; $405c: $93
	ld   l, $ff                                      ; $405d: $2e $ff
	rst  JumpTable                                         ; $405f: $df
	db   $fc                                         ; $4060: $fc
	add  a                                           ; $4061: $87
	xor  c                                           ; $4062: $a9
	ld   b, c                                        ; $4063: $41
	ld   de, $f91f                                   ; $4064: $11 $1f $f9
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	ld   de, $1141                                   ; $4069: $11 $41 $11
	ld   e, a                                        ; $406c: $5f
	rst  $38                                         ; $406d: $ff
	rst  $28                                         ; $406e: $ef
	rst  $30                                         ; $406f: $f7
	ld   [hl+], a                                    ; $4070: $22
	ld   h, l                                        ; $4071: $65
	ld   d, $ff                                      ; $4072: $16 $ff
	cp   $ff                                         ; $4074: $fe $ff
	and  a                                           ; $4076: $a7
	ld   e, b                                        ; $4077: $58
	ld   h, c                                        ; $4078: $61
	ld   de, $cf11                                   ; $4079: $11 $11 $cf
	jp   z, $f1ef                                    ; $407c: $ca $ef $f1

	rla                                              ; $407f: $17
	inc  h                                           ; $4080: $24
	ld   [de], a                                     ; $4081: $12
	rst  $38                                         ; $4082: $ff
	call c, $82ff                                    ; $4083: $dc $ff $82
	scf                                              ; $4086: $37
	ld   [hl], c                                     ; $4087: $71
	ld   e, [hl]                                     ; $4088: $5e
	rst  $38                                         ; $4089: $ff
	db   $dd                                         ; $408a: $dd
	db   $ed                                         ; $408b: $ed
	ld   a, c                                        ; $408c: $79
	xor  e                                           ; $408d: $ab
	add  e                                           ; $408e: $83
	ld   de, rAUD1LEN                                   ; $408f: $11 $11 $ff
	ld   l, h                                        ; $4092: $6c
	rst  $38                                         ; $4093: $ff
	pop  af                                          ; $4094: $f1
	daa                                              ; $4095: $27
	ld   hl, $fc14                                   ; $4096: $21 $14 $fc
	cp   l                                           ; $4099: $bd
	rst  $38                                         ; $409a: $ff
	sub  h                                           ; $409b: $94
	ld   b, a                                        ; $409c: $47
	ld   b, c                                        ; $409d: $41
	ld   a, [hl-]                                    ; $409e: $3a
	rst  $28                                         ; $409f: $ef
	rst  JumpTable                                         ; $40a0: $df
	db   $fc                                         ; $40a1: $fc
	add  a                                           ; $40a2: $87
	add  a                                           ; $40a3: $87
	ld   b, l                                        ; $40a4: $45
	ld   h, l                                        ; $40a5: $65
	ld   de, $fa15                                   ; $40a6: $11 $15 $fa
	ld   l, [hl]                                     ; $40a9: $6e
	rst  $38                                         ; $40aa: $ff
	ld   sp, $3194                                   ; $40ab: $31 $94 $31
	dec  e                                           ; $40ae: $1d
	jp   z, $fdcf                                    ; $40af: $ca $cf $fd

	ld   d, l                                        ; $40b2: $55
	ld   h, l                                        ; $40b3: $65
	ld   de, $ec8d                                   ; $40b4: $11 $8d $ec
	rst  $38                                         ; $40b7: $ff
	rst  $20                                         ; $40b8: $e7
	ld   e, b                                        ; $40b9: $58
	sub  l                                           ; $40ba: $95
	ld   d, a                                        ; $40bb: $57
	sub  a                                           ; $40bc: $97
	ld   de, $fa12                                   ; $40bd: $11 $12 $fa
	ld   c, a                                        ; $40c0: $4f
	rst  $38                                         ; $40c1: $ff
	ld   [hl], c                                     ; $40c2: $71
	or   h                                           ; $40c3: $b4
	ld   hl, $aa1c                                   ; $40c4: $21 $1c $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40c7: $cf
	ei                                               ; $40c8: $fb
	ld   h, [hl]                                     ; $40c9: $66
	ld   [hl], l                                     ; $40ca: $75
	ld   [de], a                                     ; $40cb: $12
	sbc  h                                           ; $40cc: $9c
	call $c6ef                                       ; $40cd: $cd $ef $c6
	ld   d, [hl]                                     ; $40d0: $56
	add  [hl]                                        ; $40d1: $86
	ld   l, c                                        ; $40d2: $69
	bit  6, h                                        ; $40d3: $cb $74
	ld   de, $fb11                                   ; $40d5: $11 $11 $fb
	ld   l, a                                        ; $40d8: $6f
	rst  $38                                         ; $40d9: $ff
	or   e                                           ; $40da: $b3
	sub  h                                           ; $40db: $94
	ld   hl, $9a19                                   ; $40dc: $21 $19 $9a
	rst  JumpTable                                         ; $40df: $df
	db   $fd                                         ; $40e0: $fd
	add  l                                           ; $40e1: $85
	ld   d, h                                        ; $40e2: $54
	ld   de, $ed6a                                   ; $40e3: $11 $6a $ed
	rst  $28                                         ; $40e6: $ef
	reti                                             ; $40e7: $d9


	ld   h, l                                        ; $40e8: $65
	ld   h, a                                        ; $40e9: $67
	ld   a, b                                        ; $40ea: $78
	cp   h                                           ; $40eb: $bc
	cp   c                                           ; $40ec: $b9
	halt                                             ; $40ed: $76
	ld   de, $bf11                                   ; $40ee: $11 $11 $bf
	adc  [hl]                                        ; $40f1: $8e
	rst  $38                                         ; $40f2: $ff
	di                                               ; $40f3: $f3
	ld   d, l                                        ; $40f4: $55
	ld   de, $ab13                                   ; $40f5: $11 $13 $ab
	rst  JumpTable                                         ; $40f8: $df
	rst  $38                                         ; $40f9: $ff
	and  l                                           ; $40fa: $a5
	inc  sp                                          ; $40fb: $33
	ld   de, $ee38                                   ; $40fc: $11 $38 $ee
	rst  $28                                         ; $40ff: $ef
	db   $fc                                         ; $4100: $fc
	ld   [hl], l                                     ; $4101: $75
	ld   d, l                                        ; $4102: $55
	ld   b, [hl]                                     ; $4103: $46
	sbc  h                                           ; $4104: $9c
	cp   e                                           ; $4105: $bb
	cp   d                                           ; $4106: $ba
	sub  [hl]                                        ; $4107: $96
	ld   b, d                                        ; $4108: $42
	ld   de, $fc18                                   ; $4109: $11 $18 $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $410c: $cf
	rst  $38                                         ; $410d: $ff
	ld   hl, $1141                                   ; $410e: $21 $41 $11
	ld   c, [hl]                                     ; $4111: $4e
	sbc  $ff                                         ; $4112: $de $ff
	ld   sp, hl                                      ; $4114: $f9
	inc  sp                                          ; $4115: $33
	ld   b, e                                        ; $4116: $43
	inc  d                                           ; $4117: $14
	cp   a                                           ; $4118: $bf
	db   $fd                                         ; $4119: $fd
	rst  $38                                         ; $411a: $ff
	or   l                                           ; $411b: $b5
	inc  h                                           ; $411c: $24
	ld   b, h                                        ; $411d: $44
	ld   e, d                                        ; $411e: $5a
	cp   $dc                                         ; $411f: $fe $dc
	cp   c                                           ; $4121: $b9
	ld   d, e                                        ; $4122: $53
	ld   b, h                                        ; $4123: $44
	ld   b, e                                        ; $4124: $43
	ld   de, rAUD1LOW                                   ; $4125: $11 $13 $ff
	ld   a, h                                        ; $4128: $7c
	rst  $28                                         ; $4129: $ef
	add  c                                           ; $412a: $81
	ld   [hl], l                                     ; $412b: $75
	ld   d, e                                        ; $412c: $53
	dec  a                                           ; $412d: $3d
	cp   d                                           ; $412e: $ba
	cp   e                                           ; $412f: $bb
	jp   c, $7756                                    ; $4130: $da $56 $77

	ld   d, l                                        ; $4133: $55
	adc  d                                           ; $4134: $8a
	sbc  $9a                                         ; $4135: $de $9a
	or   a                                           ; $4137: $b7
	ld   [hl], h                                     ; $4138: $74
	ld   e, b                                        ; $4139: $58
	ld   l, c                                        ; $413a: $69
	xor  h                                           ; $413b: $ac
	ret                                              ; $413c: $c9


	sbc  c                                           ; $413d: $99
	add  [hl]                                        ; $413e: $86
	ld   d, [hl]                                     ; $413f: $56
	ld   [hl], a                                     ; $4140: $77
	ld   [hl], a                                     ; $4141: $77
	adc  b                                           ; $4142: $88
	ld   h, d                                        ; $4143: $62
	ld   de, $e91c                                   ; $4144: $11 $1c $e9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4147: $cf
	db   $fd                                         ; $4148: $fd
	ld   h, a                                        ; $4149: $67
	ld   h, e                                        ; $414a: $63
	ld   hl, $9c79                                   ; $414b: $21 $79 $9c
	adc  $d8                                         ; $414e: $ce $d8
	halt                                             ; $4150: $76
	ld   h, h                                        ; $4151: $64
	ld   [hl], $8d                                   ; $4152: $36 $8d
	jp   hl                                          ; $4154: $e9


	call Call_0f0_45a8                               ; $4155: $cd $a8 $45
	ld   d, h                                        ; $4158: $54
	ld   h, a                                        ; $4159: $67
	cp   l                                           ; $415a: $bd
	cp   h                                           ; $415b: $bc
	cp   e                                           ; $415c: $bb
	sub  a                                           ; $415d: $97
	ld   h, [hl]                                     ; $415e: $66
	ld   h, [hl]                                     ; $415f: $66
	ld   h, a                                        ; $4160: $67
	sbc  c                                           ; $4161: $99
	sbc  c                                           ; $4162: $99
	sbc  b                                           ; $4163: $98
	ld   h, e                                        ; $4164: $63
	ld   de, $fa17                                   ; $4165: $11 $17 $fa
	cp   a                                           ; $4168: $bf
	rst  $38                                         ; $4169: $ff
	ld   h, [hl]                                     ; $416a: $66
	ld   h, e                                        ; $416b: $63
	ld   sp, $9c59                                   ; $416c: $31 $59 $9c
	adc  $ea                                         ; $416f: $ce $ea
	halt                                             ; $4171: $76
	ld   d, l                                        ; $4172: $55
	ld   b, [hl]                                     ; $4173: $46
	adc  d                                           ; $4174: $8a
	cp   e                                           ; $4175: $bb
	call z, $76a9                                    ; $4176: $cc $a9 $76
	ld   d, l                                        ; $4179: $55
	ld   d, a                                        ; $417a: $57
	sbc  d                                           ; $417b: $9a
	cp   d                                           ; $417c: $ba
	cp   d                                           ; $417d: $ba
	xor  b                                           ; $417e: $a8
	ld   [hl], a                                     ; $417f: $77
	halt                                             ; $4180: $76
	ld   h, a                                        ; $4181: $67
	sbc  c                                           ; $4182: $99
	adc  b                                           ; $4183: $88
	sbc  c                                           ; $4184: $99
	add  a                                           ; $4185: $87
	ld   [hl], a                                     ; $4186: $77
	halt                                             ; $4187: $76
	ld   d, h                                        ; $4188: $54
	ld   de, $fc16                                   ; $4189: $11 $16 $fc
	sbc  [hl]                                        ; $418c: $9e
	xor  $95                                         ; $418d: $ee $95
	ld   [hl], l                                     ; $418f: $75
	ld   d, e                                        ; $4190: $53
	ld   c, d                                        ; $4191: $4a
	xor  d                                           ; $4192: $aa
	cp   h                                           ; $4193: $bc
	jp   c, $7687                                    ; $4194: $da $87 $76

	ld   d, l                                        ; $4197: $55
	adc  d                                           ; $4198: $8a
	xor  d                                           ; $4199: $aa
	cp   h                                           ; $419a: $bc
	xor  b                                           ; $419b: $a8
	ld   [hl], a                                     ; $419c: $77
	ld   h, [hl]                                     ; $419d: $66
	ld   h, a                                        ; $419e: $67
	adc  c                                           ; $419f: $89
	xor  d                                           ; $41a0: $aa
	cp   d                                           ; $41a1: $ba
	sbc  b                                           ; $41a2: $98
	halt                                             ; $41a3: $76
	ld   h, [hl]                                     ; $41a4: $66
	ld   h, a                                        ; $41a5: $67
	sbc  c                                           ; $41a6: $99
	xor  d                                           ; $41a7: $aa
	xor  d                                           ; $41a8: $aa
	sbc  b                                           ; $41a9: $98
	ld   [hl], a                                     ; $41aa: $77
	ld   h, [hl]                                     ; $41ab: $66
	ld   a, b                                        ; $41ac: $78
	sbc  c                                           ; $41ad: $99
	xor  e                                           ; $41ae: $ab
	xor  d                                           ; $41af: $aa
	adc  b                                           ; $41b0: $88
	ld   [hl], a                                     ; $41b1: $77
	ld   h, [hl]                                     ; $41b2: $66
	ld   [hl], a                                     ; $41b3: $77
	ld   [hl], a                                     ; $41b4: $77
	adc  b                                           ; $41b5: $88
	ld   [hl], a                                     ; $41b6: $77
	ld   h, h                                        ; $41b7: $64

Call_0f0_41b8:
	ld   hl, $ca27                                   ; $41b8: $21 $27 $ca
	cp   h                                           ; $41bb: $bc
	db   $ed                                         ; $41bc: $ed
	add  a                                           ; $41bd: $87
	ld   h, l                                        ; $41be: $65
	ld   b, e                                        ; $41bf: $43
	ld   l, b                                        ; $41c0: $68
	xor  e                                           ; $41c1: $ab
	cp   l                                           ; $41c2: $bd
	jp   z, Jump_0f0_6587                            ; $41c3: $ca $87 $65

	ld   b, l                                        ; $41c6: $45
	ld   a, d                                        ; $41c7: $7a
	xor  e                                           ; $41c8: $ab
	cp   h                                           ; $41c9: $bc
	cp   c                                           ; $41ca: $b9
	halt                                             ; $41cb: $76
	ld   h, l                                        ; $41cc: $65
	ld   d, [hl]                                     ; $41cd: $56
	adc  d                                           ; $41ce: $8a
	sbc  d                                           ; $41cf: $9a
	xor  c                                           ; $41d0: $a9
	sub  a                                           ; $41d1: $97
	ld   h, [hl]                                     ; $41d2: $66
	ld   h, [hl]                                     ; $41d3: $66
	ld   [hl], a                                     ; $41d4: $77
	sbc  d                                           ; $41d5: $9a
	sbc  c                                           ; $41d6: $99
	xor  c                                           ; $41d7: $a9
	add  a                                           ; $41d8: $87
	halt                                             ; $41d9: $76
	ld   h, a                                        ; $41da: $67
	ld   a, b                                        ; $41db: $78
	sbc  c                                           ; $41dc: $99
	sbc  c                                           ; $41dd: $99
	adc  b                                           ; $41de: $88
	ld   [hl], a                                     ; $41df: $77
	ld   [hl], a                                     ; $41e0: $77
	add  a                                           ; $41e1: $87
	adc  c                                           ; $41e2: $89
	sbc  c                                           ; $41e3: $99
	adc  b                                           ; $41e4: $88
	sub  a                                           ; $41e5: $97
	ld   [hl], a                                     ; $41e6: $77
	ld   [hl], a                                     ; $41e7: $77
	ld   a, b                                        ; $41e8: $78
	adc  b                                           ; $41e9: $88
	sbc  b                                           ; $41ea: $98
	adc  b                                           ; $41eb: $88
	add  a                                           ; $41ec: $87
	ld   [hl], a                                     ; $41ed: $77
	ld   a, b                                        ; $41ee: $78
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	add  a                                           ; $41f3: $87
	adc  b                                           ; $41f4: $88
	adc  b                                           ; $41f5: $88
	adc  c                                           ; $41f6: $89
	sbc  c                                           ; $41f7: $99
	sbc  c                                           ; $41f8: $99
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	ld   [hl], a                                     ; $41fe: $77
	ld   [hl], a                                     ; $41ff: $77
	ld   h, [hl]                                     ; $4200: $66
	ld   h, [hl]                                     ; $4201: $66
	ld   h, l                                        ; $4202: $65
	ld   l, c                                        ; $4203: $69
	xor  d                                           ; $4204: $aa
	cp   e                                           ; $4205: $bb
	jp   z, Jump_0f0_7888                            ; $4206: $ca $88 $78

	ld   [hl], a                                     ; $4209: $77
	adc  c                                           ; $420a: $89
	sbc  c                                           ; $420b: $99
	sbc  e                                           ; $420c: $9b
	xor  d                                           ; $420d: $aa
	sbc  b                                           ; $420e: $98
	adc  b                                           ; $420f: $88
	add  a                                           ; $4210: $87
	ld   [hl], a                                     ; $4211: $77
	ld   d, e                                        ; $4212: $53
	ld   de, $eb17                                   ; $4213: $11 $17 $eb
	cp   l                                           ; $4216: $bd
	db   $fd                                         ; $4217: $fd
	add  [hl]                                        ; $4218: $86
	ld   h, l                                        ; $4219: $65
	ld   b, d                                        ; $421a: $42
	ld   b, a                                        ; $421b: $47
	sbc  d                                           ; $421c: $9a
	cp   h                                           ; $421d: $bc
	db   $ec                                         ; $421e: $ec
	xor  b                                           ; $421f: $a8
	halt                                             ; $4220: $76
	ld   b, h                                        ; $4221: $44
	ld   d, a                                        ; $4222: $57
	adc  c                                           ; $4223: $89
	xor  e                                           ; $4224: $ab
	cp   d                                           ; $4225: $ba
	adc  b                                           ; $4226: $88
	halt                                             ; $4227: $76
	ld   d, [hl]                                     ; $4228: $56
	ld   a, b                                        ; $4229: $78
	sbc  d                                           ; $422a: $9a
	xor  d                                           ; $422b: $aa
	xor  c                                           ; $422c: $a9
	add  a                                           ; $422d: $87
	halt                                             ; $422e: $76
	ld   h, [hl]                                     ; $422f: $66
	ld   a, b                                        ; $4230: $78
	sbc  c                                           ; $4231: $99
	xor  e                                           ; $4232: $ab
	sbc  c                                           ; $4233: $99
	add  a                                           ; $4234: $87
	ld   h, [hl]                                     ; $4235: $66
	ld   h, a                                        ; $4236: $67
	ld   a, c                                        ; $4237: $79
	sbc  c                                           ; $4238: $99
	xor  d                                           ; $4239: $aa
	sbc  c                                           ; $423a: $99
	add  a                                           ; $423b: $87
	ld   h, [hl]                                     ; $423c: $66
	ld   h, a                                        ; $423d: $67
	adc  b                                           ; $423e: $88
	xor  d                                           ; $423f: $aa
	xor  d                                           ; $4240: $aa
	sbc  b                                           ; $4241: $98
	ld   [hl], a                                     ; $4242: $77
	ld   h, [hl]                                     ; $4243: $66
	ld   [hl], a                                     ; $4244: $77
	adc  b                                           ; $4245: $88
	sbc  d                                           ; $4246: $9a
	sbc  c                                           ; $4247: $99
	sbc  b                                           ; $4248: $98
	ld   [hl], a                                     ; $4249: $77
	ld   [hl], a                                     ; $424a: $77
	ld   a, b                                        ; $424b: $78
	adc  b                                           ; $424c: $88
	sbc  c                                           ; $424d: $99
	adc  c                                           ; $424e: $89
	adc  b                                           ; $424f: $88
	ld   [hl], a                                     ; $4250: $77
	ld   [hl], a                                     ; $4251: $77
	ld   a, b                                        ; $4252: $78
	adc  c                                           ; $4253: $89
	sbc  c                                           ; $4254: $99
	sbc  c                                           ; $4255: $99
	adc  b                                           ; $4256: $88
	adc  b                                           ; $4257: $88
	adc  b                                           ; $4258: $88
	adc  b                                           ; $4259: $88
	adc  b                                           ; $425a: $88
	adc  c                                           ; $425b: $89
	sbc  b                                           ; $425c: $98
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
	ld   de, $1111                                   ; $4267: $11 $11 $11
	ld   de, $1111                                   ; $426a: $11 $11 $11
	ld   de, $1111                                   ; $426d: $11 $11 $11
	ld   de, $1111                                   ; $4270: $11 $11 $11
	ld   de, $1111                                   ; $4273: $11 $11 $11
	ld   de, $1111                                   ; $4276: $11 $11 $11
	ld   de, $1111                                   ; $4279: $11 $11 $11
	ld   de, $1111                                   ; $427c: $11 $11 $11
	ld   de, $1111                                   ; $427f: $11 $11 $11
	ld   de, $1111                                   ; $4282: $11 $11 $11
	ld   de, $1111                                   ; $4285: $11 $11 $11
	ld   de, $0011                                   ; $4288: $11 $11 $00
	ld   c, b                                        ; $428b: $48
	ld   de, $1111                                   ; $428c: $11 $11 $11
	ld   de, $1111                                   ; $428f: $11 $11 $11
	ld   de, $1111                                   ; $4292: $11 $11 $11
	ld   de, $5413                                   ; $4295: $11 $13 $54
	ld   d, h                                        ; $4298: $54
	ld   d, h                                        ; $4299: $54
	ld   b, c                                        ; $429a: $41
	rra                                              ; $429b: $1f
	rst  $38                                         ; $429c: $ff
	pop  af                                          ; $429d: $f1
	ld   de, $1411                                   ; $429e: $11 $11 $14
	or   c                                           ; $42a1: $b1
	ld   de, $dd1c                                   ; $42a2: $11 $1c $dd
	call z, $c1dd                                    ; $42a5: $cc $dd $c1
	ld   de, $1111                                   ; $42a8: $11 $11 $11
	ld   de, $1111                                   ; $42ab: $11 $11 $11
	ld   de, $1111                                   ; $42ae: $11 $11 $11
	ld   de, $1111                                   ; $42b1: $11 $11 $11
	ld   de, $5411                                   ; $42b4: $11 $11 $54
	ld   b, h                                        ; $42b7: $44
	or   h                                           ; $42b8: $b4
	ld   de, $5454                                   ; $42b9: $11 $54 $54
	ld   h, a                                        ; $42bc: $67
	ld   [hl], d                                     ; $42bd: $72
	ld   de, $1111                                   ; $42be: $11 $11 $11
	ld   de, $1112                                   ; $42c1: $11 $12 $11
	ld   [de], a                                     ; $42c4: $12
	ld   de, $1111                                   ; $42c5: $11 $11 $11
	ld   h, [hl]                                     ; $42c8: $66
	halt                                             ; $42c9: $76
	add  h                                           ; $42ca: $84
	ld   de, $8888                                   ; $42cb: $11 $88 $88
	adc  b                                           ; $42ce: $88
	adc  b                                           ; $42cf: $88
	add  a                                           ; $42d0: $87
	ld   [hl], a                                     ; $42d1: $77
	ld   [hl], a                                     ; $42d2: $77
	ld   [hl], a                                     ; $42d3: $77
	ld   h, [hl]                                     ; $42d4: $66
	ld   h, [hl]                                     ; $42d5: $66
	ld   h, a                                        ; $42d6: $67
	ld   [hl], a                                     ; $42d7: $77
	adc  b                                           ; $42d8: $88
	sbc  c                                           ; $42d9: $99
	xor  d                                           ; $42da: $aa
	cp   d                                           ; $42db: $ba
	cp   h                                           ; $42dc: $bc
	call z, $abbb                                    ; $42dd: $cc $bb $ab
	xor  d                                           ; $42e0: $aa
	sbc  b                                           ; $42e1: $98
	ld   [hl], a                                     ; $42e2: $77
	ld   h, l                                        ; $42e3: $65
	ld   b, h                                        ; $42e4: $44
	inc  sp                                          ; $42e5: $33
	inc  sp                                          ; $42e6: $33
	inc  sp                                          ; $42e7: $33
	inc  [hl]                                        ; $42e8: $34
	ld   b, l                                        ; $42e9: $45
	ld   l, b                                        ; $42ea: $68
	sbc  d                                           ; $42eb: $9a
	call $ffde                                       ; $42ec: $cd $de $ff
	rst  $38                                         ; $42ef: $ff
	rst  $38                                         ; $42f0: $ff
	cp   $db                                         ; $42f1: $fe $db
	cp   d                                           ; $42f3: $ba
	add  a                                           ; $42f4: $87
	ld   d, e                                        ; $42f5: $53
	ld   de, $1111                                   ; $42f6: $11 $11 $11
	ld   de, $1111                                   ; $42f9: $11 $11 $11
	dec  [hl]                                        ; $42fc: $35
	ld   a, d                                        ; $42fd: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42fe: $cf
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	db   $ec                                         ; $4305: $ec
	and  a                                           ; $4306: $a7
	ld   b, d                                        ; $4307: $42
	ld   de, $1111                                   ; $4308: $11 $11 $11
	ld   de, $1111                                   ; $430b: $11 $11 $11
	ld   de, $cf58                                   ; $430e: $11 $58 $cf
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	rst  $38                                         ; $4313: $ff
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	rst  $38                                         ; $4316: $ff
	rst  $38                                         ; $4317: $ff
	ret                                              ; $4318: $c9


	ld   d, d                                        ; $4319: $52
	ld   de, $1111                                   ; $431a: $11 $11 $11
	ld   de, $1111                                   ; $431d: $11 $11 $11
	ld   de, $be26                                   ; $4320: $11 $26 $be
	rst  $38                                         ; $4323: $ff
	rst  $38                                         ; $4324: $ff
	rst  $38                                         ; $4325: $ff
	rst  $38                                         ; $4326: $ff
	rst  $38                                         ; $4327: $ff
	rst  $38                                         ; $4328: $ff
	rst  $38                                         ; $4329: $ff
	db   $eb                                         ; $432a: $eb
	ld   [hl], e                                     ; $432b: $73
	ld   de, $1111                                   ; $432c: $11 $11 $11
	ld   de, $1111                                   ; $432f: $11 $11 $11
	ld   de, $ad15                                   ; $4332: $11 $15 $ad
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	rst  $38                                         ; $4338: $ff
	rst  $38                                         ; $4339: $ff
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	ld   a, [$1172]                                  ; $433c: $fa $72 $11
	ld   de, $1111                                   ; $433f: $11 $11 $11
	ld   de, $1111                                   ; $4342: $11 $11 $11
	ld   d, $cf                                      ; $4345: $16 $cf
	rst  $38                                         ; $4347: $ff
	rst  $38                                         ; $4348: $ff
	rst  $38                                         ; $4349: $ff
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	jp   hl                                          ; $434e: $e9


	ld   b, c                                        ; $434f: $41
	ld   de, $1111                                   ; $4350: $11 $11 $11
	ld   de, $1111                                   ; $4353: $11 $11 $11
	ld   de, $ff5b                                   ; $4356: $11 $5b $ff
	rst  $38                                         ; $4359: $ff
	rst  $38                                         ; $435a: $ff
	rst  $38                                         ; $435b: $ff
	rst  $38                                         ; $435c: $ff
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	db   $fd                                         ; $435f: $fd
	add  e                                           ; $4360: $83
	ld   de, $1111                                   ; $4361: $11 $11 $11
	ld   de, $1111                                   ; $4364: $11 $11 $11
	ld   de, $df17                                   ; $4367: $11 $17 $df
	rst  $38                                         ; $436a: $ff
	rst  $38                                         ; $436b: $ff
	rst  $38                                         ; $436c: $ff
	rst  $38                                         ; $436d: $ff
	rst  $38                                         ; $436e: $ff
	rst  $38                                         ; $436f: $ff
	cp   $93                                         ; $4370: $fe $93
	ld   de, $1111                                   ; $4372: $11 $11 $11
	ld   de, $1111                                   ; $4375: $11 $11 $11
	ld   de, $ff6e                                   ; $4378: $11 $6e $ff
	rst  $38                                         ; $437b: $ff
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	rst  $38                                         ; $437e: $ff
	rst  $38                                         ; $437f: $ff
	db   $fd                                         ; $4380: $fd
	add  h                                           ; $4381: $84
	ld   de, $1111                                   ; $4382: $11 $11 $11
	ld   de, $1111                                   ; $4385: $11 $11 $11
	ld   de, $ff8f                                   ; $4388: $11 $8f $ff
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	rst  $38                                         ; $438e: $ff
	rst  $38                                         ; $438f: $ff
	or   d                                           ; $4390: $b2
	ld   de, $1111                                   ; $4391: $11 $11 $11
	ld   de, $4711                                   ; $4394: $11 $11 $47
	sbc  b                                           ; $4397: $98
	xor  a                                           ; $4398: $af
	rst  $38                                         ; $4399: $ff
	rst  $38                                         ; $439a: $ff
	rst  $38                                         ; $439b: $ff
	rst  $38                                         ; $439c: $ff
	ld   [$5198], a                                  ; $439d: $ea $98 $51
	ld   de, $1111                                   ; $43a0: $11 $11 $11
	ld   de, $ff19                                   ; $43a3: $11 $19 $ff

Call_0f0_43a6:
	rst  $38                                         ; $43a6: $ff
	rst  $38                                         ; $43a7: $ff
	rst  $38                                         ; $43a8: $ff
	rst  $38                                         ; $43a9: $ff
	rst  $38                                         ; $43aa: $ff
	rst  $38                                         ; $43ab: $ff
	sub  e                                           ; $43ac: $93
	ld   hl, $1111                                   ; $43ad: $21 $11 $11
	ld   de, $1111                                   ; $43b0: $11 $11 $11
	cp   a                                           ; $43b3: $bf
	rst  $38                                         ; $43b4: $ff
	rst  $38                                         ; $43b5: $ff
	rst  $38                                         ; $43b6: $ff
	rst  $38                                         ; $43b7: $ff
	rst  $38                                         ; $43b8: $ff
	rst  $38                                         ; $43b9: $ff
	push hl                                          ; $43ba: $e5
	ld   de, $1111                                   ; $43bb: $11 $11 $11
	ld   de, $1111                                   ; $43be: $11 $11 $11
	ld   e, a                                        ; $43c1: $5f
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	rst  $38                                         ; $43c4: $ff
	rst  $38                                         ; $43c5: $ff
	rst  $38                                         ; $43c6: $ff
	rst  $38                                         ; $43c7: $ff
	ld   sp, hl                                      ; $43c8: $f9
	ld   de, $1111                                   ; $43c9: $11 $11 $11
	ld   de, $1111                                   ; $43cc: $11 $11 $11
	rra                                              ; $43cf: $1f
	rst  $38                                         ; $43d0: $ff
	rst  $38                                         ; $43d1: $ff
	rst  $38                                         ; $43d2: $ff
	rst  $38                                         ; $43d3: $ff
	rst  $38                                         ; $43d4: $ff
	rst  $38                                         ; $43d5: $ff
	db   $fc                                         ; $43d6: $fc
	ld   b, c                                        ; $43d7: $41
	ld   de, $1111                                   ; $43d8: $11 $11 $11
	ld   de, $1f11                                   ; $43db: $11 $11 $1f
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	rst  $38                                         ; $43e0: $ff
	rst  $38                                         ; $43e1: $ff
	rst  $38                                         ; $43e2: $ff
	rst  $38                                         ; $43e3: $ff
	ld   a, [$1131]                                  ; $43e4: $fa $31 $11
	ld   de, $1111                                   ; $43e7: $11 $11 $11
	ld   de, $ff1f                                   ; $43ea: $11 $1f $ff
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	rst  $38                                         ; $43f0: $ff
	rst  $38                                         ; $43f1: $ff
	ld   hl, sp+$11                                  ; $43f2: $f8 $11
	ld   de, $1111                                   ; $43f4: $11 $11 $11
	ld   de, $9f11                                   ; $43f7: $11 $11 $9f
	rst  $38                                         ; $43fa: $ff
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	rst  $38                                         ; $43fd: $ff
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	call nc, $1111                                   ; $4400: $d4 $11 $11
	ld   de, $1111                                   ; $4403: $11 $11 $11
	ld   de, $ffff                                   ; $4406: $11 $ff $ff
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	rst  $38                                         ; $440b: $ff
	rst  $38                                         ; $440c: $ff
	rst  $38                                         ; $440d: $ff
	sub  c                                           ; $440e: $91
	ld   de, $1111                                   ; $440f: $11 $11 $11
	ld   de, $1c11                                   ; $4412: $11 $11 $1c
	rst  $38                                         ; $4415: $ff
	rst  $38                                         ; $4416: $ff
	rst  $38                                         ; $4417: $ff
	rst  $38                                         ; $4418: $ff
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	ei                                               ; $441b: $fb
	ld   hl, $1111                                   ; $441c: $21 $11 $11
	ld   de, $1111                                   ; $441f: $11 $11 $11
	rst  JumpTable                                         ; $4422: $df
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	rst  $38                                         ; $4426: $ff
	rst  $38                                         ; $4427: $ff
	rst  $38                                         ; $4428: $ff
	sub  d                                           ; $4429: $92
	ld   de, $1111                                   ; $442a: $11 $11 $11
	ld   de, $1f11                                   ; $442d: $11 $11 $1f
	rst  $38                                         ; $4430: $ff
	rst  $38                                         ; $4431: $ff
	db   $fd                                         ; $4432: $fd
	rst  $38                                         ; $4433: $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	db   $f4                                         ; $4436: $f4
	ld   de, $1113                                   ; $4437: $11 $13 $11
	ld   de, $1111                                   ; $443a: $11 $11 $11
	rst  $38                                         ; $443d: $ff
	rst  $38                                         ; $443e: $ff
	db   $fd                                         ; $443f: $fd
	cp   a                                           ; $4440: $bf
	rst  $38                                         ; $4441: $ff
	rst  $38                                         ; $4442: $ff
	db   $fd                                         ; $4443: $fd
	ld   sp, $2111                                   ; $4444: $31 $11 $21
	ld   de, $1111                                   ; $4447: $11 $11 $11
	adc  a                                           ; $444a: $8f
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	cp   e                                           ; $444d: $bb
	rst  $38                                         ; $444e: $ff
	rst  $38                                         ; $444f: $ff
	rst  $38                                         ; $4450: $ff
	sub  c                                           ; $4451: $91
	ld   de, $1122                                   ; $4452: $11 $22 $11
	ld   de, $1f11                                   ; $4455: $11 $11 $1f
	rst  $38                                         ; $4458: $ff
	rst  $38                                         ; $4459: $ff
	ld   sp, hl                                      ; $445a: $f9
	rst  $28                                         ; $445b: $ef
	rst  $38                                         ; $445c: $ff
	rst  $38                                         ; $445d: $ff
	di                                               ; $445e: $f3
	ld   de, $1111                                   ; $445f: $11 $11 $11
	ld   de, $1711                                   ; $4462: $11 $11 $17
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	ld   a, [$ff9f]                                  ; $4467: $fa $9f $ff
	rst  $38                                         ; $446a: $ff
	ld   hl, sp+$11                                  ; $446b: $f8 $11
	ld   de, $1111                                   ; $446d: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4470: $11 $11 $ff
	rst  $38                                         ; $4473: $ff
	cp   $be                                         ; $4474: $fe $be
	rst  $38                                         ; $4476: $ff
	rst  $38                                         ; $4477: $ff
	cp   $31                                         ; $4478: $fe $31
	ld   de, $1111                                   ; $447a: $11 $11 $11
	ld   de, $bf11                                   ; $447d: $11 $11 $bf
	rst  $38                                         ; $4480: $ff
	rst  $38                                         ; $4481: $ff
	sbc  h                                           ; $4482: $9c
	rst  $38                                         ; $4483: $ff
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	ld   h, c                                        ; $4486: $61
	ld   de, $1111                                   ; $4487: $11 $11 $11
	ld   de, $7f11                                   ; $448a: $11 $11 $7f
	rst  $38                                         ; $448d: $ff
	rst  $38                                         ; $448e: $ff
	sbc  e                                           ; $448f: $9b
	rst  $38                                         ; $4490: $ff
	rst  $38                                         ; $4491: $ff
	rst  $38                                         ; $4492: $ff
	ld   [hl], c                                     ; $4493: $71
	ld   de, $1111                                   ; $4494: $11 $11 $11
	ld   de, $4f11                                   ; $4497: $11 $11 $4f
	rst  $38                                         ; $449a: $ff
	rst  $38                                         ; $449b: $ff
	ld   l, b                                        ; $449c: $68
	rst  $28                                         ; $449d: $ef
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	add  c                                           ; $44a0: $81
	ld   de, $1111                                   ; $44a1: $11 $11 $11
	ld   de, $2f11                                   ; $44a4: $11 $11 $2f
	rst  $38                                         ; $44a7: $ff
	rst  $38                                         ; $44a8: $ff
	ld   d, [hl]                                     ; $44a9: $56
	rst  JumpTable                                         ; $44aa: $df
	rst  $38                                         ; $44ab: $ff
	rst  $38                                         ; $44ac: $ff
	sub  c                                           ; $44ad: $91
	ld   de, $1121                                   ; $44ae: $11 $21 $11
	ld   de, $3f11                                   ; $44b1: $11 $11 $3f
	rst  $38                                         ; $44b4: $ff
	rst  $38                                         ; $44b5: $ff
	ld   b, h                                        ; $44b6: $44

Call_0f0_44b7:
	rst  JumpTable                                         ; $44b7: $df
	rst  $38                                         ; $44b8: $ff
	rst  $38                                         ; $44b9: $ff
	and  c                                           ; $44ba: $a1
	ld   de, $1111                                   ; $44bb: $11 $11 $11
	ld   de, $3f11                                   ; $44be: $11 $11 $3f
	rst  $38                                         ; $44c1: $ff
	cp   $15                                         ; $44c2: $fe $15
	cp   a                                           ; $44c4: $bf
	rst  $38                                         ; $44c5: $ff
	rst  $38                                         ; $44c6: $ff
	sub  d                                           ; $44c7: $92
	ld   de, $1121                                   ; $44c8: $11 $21 $11
	ld   de, $9f11                                   ; $44cb: $11 $11 $9f
	rst  $38                                         ; $44ce: $ff
	db   $fc                                         ; $44cf: $fc
	inc  de                                          ; $44d0: $13
	rst  $38                                         ; $44d1: $ff
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	add  c                                           ; $44d4: $81
	ld   de, $1131                                   ; $44d5: $11 $31 $11
	ld   de, $ef11                                   ; $44d8: $11 $11 $ef
	rst  $38                                         ; $44db: $ff
	push af                                          ; $44dc: $f5
	dec  d                                           ; $44dd: $15
	rst  $38                                         ; $44de: $ff
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	ld   b, c                                        ; $44e1: $41
	ld   de, $1121                                   ; $44e2: $11 $21 $11
	ld   de, rAUD1LEN                                   ; $44e5: $11 $11 $ff
	rst  $38                                         ; $44e8: $ff
	ldh  a, [c]                                      ; $44e9: $f2
	ld   d, $ff                                      ; $44ea: $16 $ff
	rst  $38                                         ; $44ec: $ff
	db   $fd                                         ; $44ed: $fd
	ld   d, c                                        ; $44ee: $51
	ld   de, $1111                                   ; $44ef: $11 $11 $11
	ld   de, $ff17                                   ; $44f2: $11 $17 $ff
	rst  $38                                         ; $44f5: $ff
	and  c                                           ; $44f6: $a1
	ld   c, e                                        ; $44f7: $4b
	rst  $38                                         ; $44f8: $ff
	rst  $38                                         ; $44f9: $ff
	ld   sp, hl                                      ; $44fa: $f9
	ld   hl, $1111                                   ; $44fb: $21 $11 $11
	ld   de, $1f11                                   ; $44fe: $11 $11 $1f
	rst  $38                                         ; $4501: $ff
	rst  $38                                         ; $4502: $ff
	ld   de, $ff4f                                   ; $4503: $11 $4f $ff
	rst  $38                                         ; $4506: $ff
	jp   nz, $1111                                   ; $4507: $c2 $11 $11

	ld   de, $1111                                   ; $450a: $11 $11 $11
	xor  a                                           ; $450d: $af
	rst  $38                                         ; $450e: $ff
	rst  $30                                         ; $450f: $f7
	ld   de, $ffaf                                   ; $4510: $11 $af $ff
	rst  $38                                         ; $4513: $ff
	add  c                                           ; $4514: $81
	ld   de, $1111                                   ; $4515: $11 $11 $11
	ld   de, $ff16                                   ; $4518: $11 $16 $ff
	rst  $38                                         ; $451b: $ff
	or   c                                           ; $451c: $b1
	rla                                              ; $451d: $17
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	ei                                               ; $4520: $fb
	ld   de, $1111                                   ; $4521: $11 $11 $11
	ld   de, $4f11                                   ; $4524: $11 $11 $4f
	rst  $38                                         ; $4527: $ff
	db   $fc                                         ; $4528: $fc
	ld   hl, $ff6f                                   ; $4529: $21 $6f $ff
	rst  $38                                         ; $452c: $ff
	or   c                                           ; $452d: $b1
	ld   de, $1111                                   ; $452e: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4531: $11 $14 $ff
	rst  $38                                         ; $4534: $ff
	or   d                                           ; $4535: $b2
	ld   d, $ff                                      ; $4536: $16 $ff
	rst  $38                                         ; $4538: $ff
	ei                                               ; $4539: $fb
	ld   de, $1111                                   ; $453a: $11 $11 $11
	ld   de, $af11                                   ; $453d: $11 $11 $af
	rst  $38                                         ; $4540: $ff
	ld   a, [$7f11]                                  ; $4541: $fa $11 $7f
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	add  c                                           ; $4546: $81
	ld   de, $1111                                   ; $4547: $11 $11 $11
	ld   de, $ff1f                                   ; $454a: $11 $1f $ff
	rst  $38                                         ; $454d: $ff
	ld   [hl], c                                     ; $454e: $71
	inc  e                                           ; $454f: $1c
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	db   $f4                                         ; $4552: $f4
	ld   de, $1111                                   ; $4553: $11 $11 $11
	ld   de, $ff17                                   ; $4556: $11 $17 $ff
	rst  $38                                         ; $4559: $ff
	jp   nz, $ff15                                   ; $455a: $c2 $15 $ff

	rst  $38                                         ; $455d: $ff
	ei                                               ; $455e: $fb
	ld   de, $1111                                   ; $455f: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4562: $11 $12 $ff
	rst  $38                                         ; $4565: $ff
	ld   hl, sp+$11                                  ; $4566: $f8 $11
	rst  $28                                         ; $4568: $ef
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	ld   hl, $1111                                   ; $456b: $21 $11 $11
	ld   de, rAUD1LOW                                   ; $456e: $11 $13 $ff
	rst  $38                                         ; $4571: $ff
	ld   a, [$bf11]                                  ; $4572: $fa $11 $bf
	rst  $38                                         ; $4575: $ff
	rst  $38                                         ; $4576: $ff
	add  c                                           ; $4577: $81
	ld   de, $1111                                   ; $4578: $11 $11 $11
	inc  d                                           ; $457b: $14
	rst  $38                                         ; $457c: $ff
	rst  $38                                         ; $457d: $ff
	ld   sp, hl                                      ; $457e: $f9
	ld   de, $ff9f                                   ; $457f: $11 $9f $ff
	rst  $38                                         ; $4582: $ff
	and  c                                           ; $4583: $a1
	ld   de, $1111                                   ; $4584: $11 $11 $11
	inc  de                                          ; $4587: $13
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	ld   a, [$9f21]                                  ; $458a: $fa $21 $9f
	rst  $38                                         ; $458d: $ff
	rst  $38                                         ; $458e: $ff
	pop  bc                                          ; $458f: $c1
	ld   de, $1111                                   ; $4590: $11 $11 $11
	ld   d, $ff                                      ; $4593: $16 $ff
	rst  $38                                         ; $4595: $ff
	rst  $30                                         ; $4596: $f7
	ld   de, $ffaf                                   ; $4597: $11 $af $ff
	rst  $38                                         ; $459a: $ff
	and  c                                           ; $459b: $a1
	ld   de, $1111                                   ; $459c: $11 $11 $11
	inc  e                                           ; $459f: $1c
	rst  $38                                         ; $45a0: $ff
	rst  $38                                         ; $45a1: $ff
	db   $e3                                         ; $45a2: $e3
	ld   de, $ffbf                                   ; $45a3: $11 $bf $ff
	rst  $38                                         ; $45a6: $ff
	ld   d, c                                        ; $45a7: $51

Call_0f0_45a8:
	ld   de, $1111                                   ; $45a8: $11 $11 $11
	ld   a, a                                        ; $45ab: $7f
	rst  $38                                         ; $45ac: $ff
	rst  $38                                         ; $45ad: $ff
	and  c                                           ; $45ae: $a1
	inc  d                                           ; $45af: $14
	rst  $38                                         ; $45b0: $ff
	rst  $38                                         ; $45b1: $ff
	rst  $38                                         ; $45b2: $ff
	ld   de, $1111                                   ; $45b3: $11 $11 $11
	ld   de, $ffef                                   ; $45b6: $11 $ef $ff
	cp   $51                                         ; $45b9: $fe $51
	dec  de                                          ; $45bb: $1b
	rst  $38                                         ; $45bc: $ff
	rst  $38                                         ; $45bd: $ff
	ld   hl, sp+$11                                  ; $45be: $f8 $11
	ld   de, $1d11                                   ; $45c0: $11 $11 $1d
	rst  $38                                         ; $45c3: $ff
	rst  $38                                         ; $45c4: $ff
	push af                                          ; $45c5: $f5
	ld   de, $ff8f                                   ; $45c6: $11 $8f $ff
	rst  $38                                         ; $45c9: $ff
	or   c                                           ; $45ca: $b1
	ld   de, $1111                                   ; $45cb: $11 $11 $11
	cp   a                                           ; $45ce: $bf
	rst  $38                                         ; $45cf: $ff
	rst  $38                                         ; $45d0: $ff
	ld   b, c                                        ; $45d1: $41
	ld   d, $ff                                      ; $45d2: $16 $ff
	rst  $38                                         ; $45d4: $ff
	cp   $11                                         ; $45d5: $fe $11
	ld   de, $1b11                                   ; $45d7: $11 $11 $1b
	rst  $38                                         ; $45da: $ff
	rst  $38                                         ; $45db: $ff
	di                                               ; $45dc: $f3
	ld   de, $ff5f                                   ; $45dd: $11 $5f $ff
	rst  $38                                         ; $45e0: $ff
	pop  bc                                          ; $45e1: $c1
	ld   de, $1111                                   ; $45e2: $11 $11 $11
	rst  JumpTable                                         ; $45e5: $df
	rst  $38                                         ; $45e6: $ff
	rst  $38                                         ; $45e7: $ff
	ld   hl, $ff15                                   ; $45e8: $21 $15 $ff
	rst  $38                                         ; $45eb: $ff
	ei                                               ; $45ec: $fb
	ld   de, $1111                                   ; $45ed: $11 $11 $11
	ld   c, a                                        ; $45f0: $4f
	rst  $38                                         ; $45f1: $ff
	rst  $38                                         ; $45f2: $ff
	and  c                                           ; $45f3: $a1
	ld   de, $ff8f                                   ; $45f4: $11 $8f $ff
	rst  $38                                         ; $45f7: $ff
	ld   [hl], c                                     ; $45f8: $71
	ld   de, $1a11                                   ; $45f9: $11 $11 $1a
	rst  $38                                         ; $45fc: $ff
	rst  $38                                         ; $45fd: $ff
	db   $f4                                         ; $45fe: $f4
	ld   de, $ff2c                                   ; $45ff: $11 $2c $ff
	rst  $38                                         ; $4602: $ff
	pop  hl                                          ; $4603: $e1
	ld   de, $1111                                   ; $4604: $11 $11 $11
	rst  $38                                         ; $4607: $ff
	rst  $38                                         ; $4608: $ff
	ld   sp, hl                                      ; $4609: $f9
	ld   de, $ff19                                   ; $460a: $11 $19 $ff
	rst  $38                                         ; $460d: $ff
	db   $f4                                         ; $460e: $f4
	ld   de, $1111                                   ; $460f: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4612: $cf
	rst  $38                                         ; $4613: $ff
	rst  $38                                         ; $4614: $ff
	ld   hl, $ef12                                   ; $4615: $21 $12 $ef
	rst  $38                                         ; $4618: $ff
	ei                                               ; $4619: $fb
	ld   de, $1111                                   ; $461a: $11 $11 $11
	ld   l, a                                        ; $461d: $6f
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	ld   h, c                                        ; $4620: $61
	ld   de, $ff9f                                   ; $4621: $11 $9f $ff
	rst  $38                                         ; $4624: $ff
	ld   de, $1111                                   ; $4625: $11 $11 $11
	ccf                                              ; $4628: $3f
	rst  $38                                         ; $4629: $ff
	rst  $38                                         ; $462a: $ff
	ld   h, c                                        ; $462b: $61
	ld   de, $ff9f                                   ; $462c: $11 $9f $ff
	rst  $38                                         ; $462f: $ff
	ld   de, $1111                                   ; $4630: $11 $11 $11
	ld   e, a                                        ; $4633: $5f
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	ld   sp, $bf11                                   ; $4636: $31 $11 $bf
	rst  $38                                         ; $4639: $ff
	cp   $11                                         ; $463a: $fe $11
	ld   de, $8f11                                   ; $463c: $11 $11 $8f
	rst  $38                                         ; $463f: $ff
	rst  $38                                         ; $4640: $ff
	ld   sp, $bf11                                   ; $4641: $31 $11 $bf
	rst  $38                                         ; $4644: $ff
	ei                                               ; $4645: $fb
	ld   de, $1111                                   ; $4646: $11 $11 $11
	rst  $28                                         ; $4649: $ef
	rst  $38                                         ; $464a: $ff
	rst  $38                                         ; $464b: $ff
	ld   de, rAUD1ENV                                   ; $464c: $11 $12 $ff
	rst  $38                                         ; $464f: $ff
	or   $11                                         ; $4650: $f6 $11
	ld   de, rAUD1LEN                                   ; $4652: $11 $11 $ff
	rst  $38                                         ; $4655: $ff
	db   $fd                                         ; $4656: $fd
	ld   de, $ff16                                   ; $4657: $11 $16 $ff
	rst  $38                                         ; $465a: $ff
	pop  af                                          ; $465b: $f1
	ld   de, $1211                                   ; $465c: $11 $11 $12
	rst  $38                                         ; $465f: $ff
	rst  $38                                         ; $4660: $ff
	push af                                          ; $4661: $f5
	ld   de, $ff1c                                   ; $4662: $11 $1c $ff
	rst  $38                                         ; $4665: $ff
	pop  de                                          ; $4666: $d1
	ld   de, $1911                                   ; $4667: $11 $11 $19
	rst  $38                                         ; $466a: $ff
	rst  $38                                         ; $466b: $ff
	pop  af                                          ; $466c: $f1
	ld   de, $ff1f                                   ; $466d: $11 $1f $ff
	rst  $38                                         ; $4670: $ff
	ld   [hl], c                                     ; $4671: $71
	ld   de, $1f11                                   ; $4672: $11 $11 $1f
	rst  $38                                         ; $4675: $ff
	rst  $38                                         ; $4676: $ff
	pop  af                                          ; $4677: $f1
	ld   de, $ff3f                                   ; $4678: $11 $3f $ff
	rst  $38                                         ; $467b: $ff
	ld   b, c                                        ; $467c: $41
	ld   de, $1f11                                   ; $467d: $11 $11 $1f
	rst  $38                                         ; $4680: $ff
	rst  $38                                         ; $4681: $ff
	ld   h, c                                        ; $4682: $61
	ld   de, $ffaf                                   ; $4683: $11 $af $ff
	cp   $11                                         ; $4686: $fe $11
	ld   de, $9f11                                   ; $4688: $11 $11 $9f
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	ld   de, rAUD1LEN                                   ; $468d: $11 $11 $ff
	rst  $38                                         ; $4690: $ff
	rst  $30                                         ; $4691: $f7
	ld   de, $1111                                   ; $4692: $11 $11 $11
	rst  $38                                         ; $4695: $ff
	rst  $38                                         ; $4696: $ff
	db   $fc                                         ; $4697: $fc
	ld   de, $ff15                                   ; $4698: $11 $15 $ff
	rst  $38                                         ; $469b: $ff
	ldh  a, [c]                                      ; $469c: $f2
	ld   de, $1211                                   ; $469d: $11 $11 $12
	rst  $38                                         ; $46a0: $ff
	rst  $38                                         ; $46a1: $ff
	ldh  a, [c]                                      ; $46a2: $f2
	ld   de, $ff1d                                   ; $46a3: $11 $1d $ff
	rst  $38                                         ; $46a6: $ff
	pop  de                                          ; $46a7: $d1
	ld   de, $1a11                                   ; $46a8: $11 $11 $1a
	rst  $38                                         ; $46ab: $ff
	rst  $38                                         ; $46ac: $ff
	pop  af                                          ; $46ad: $f1
	ld   de, $ff1f                                   ; $46ae: $11 $1f $ff
	rst  $38                                         ; $46b1: $ff
	ld   h, c                                        ; $46b2: $61
	ld   de, $1f11                                   ; $46b3: $11 $11 $1f
	rst  $38                                         ; $46b6: $ff
	rst  $38                                         ; $46b7: $ff
	sub  c                                           ; $46b8: $91
	ld   de, $ff7f                                   ; $46b9: $11 $7f $ff
	rst  $38                                         ; $46bc: $ff
	ld   de, $1111                                   ; $46bd: $11 $11 $11
	adc  a                                           ; $46c0: $8f
	rst  $38                                         ; $46c1: $ff
	rst  $38                                         ; $46c2: $ff
	ld   de, rAUD1LEN                                   ; $46c3: $11 $11 $ff
	rst  $38                                         ; $46c6: $ff
	ld   sp, hl                                      ; $46c7: $f9
	ld   de, $1111                                   ; $46c8: $11 $11 $11
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	ld   a, [$1611]                                  ; $46cd: $fa $11 $16
	rst  $38                                         ; $46d0: $ff
	rst  $38                                         ; $46d1: $ff
	pop  af                                          ; $46d2: $f1
	ld   de, $1811                                   ; $46d3: $11 $11 $18
	rst  $38                                         ; $46d6: $ff
	rst  $38                                         ; $46d7: $ff
	pop  af                                          ; $46d8: $f1
	ld   de, $ff1f                                   ; $46d9: $11 $1f $ff
	rst  $38                                         ; $46dc: $ff
	add  c                                           ; $46dd: $81
	ld   de, $1f11                                   ; $46de: $11 $11 $1f
	rst  $38                                         ; $46e1: $ff
	rst  $38                                         ; $46e2: $ff
	add  c                                           ; $46e3: $81
	ld   de, $ff9f                                   ; $46e4: $11 $9f $ff
	cp   $11                                         ; $46e7: $fe $11
	ld   de, $af11                                   ; $46e9: $11 $11 $af
	rst  $38                                         ; $46ec: $ff
	rst  $38                                         ; $46ed: $ff
	ld   de, rAUD1ENV                                   ; $46ee: $11 $12 $ff
	rst  $38                                         ; $46f1: $ff
	push af                                          ; $46f2: $f5
	ld   de, $1111                                   ; $46f3: $11 $11 $11
	rst  $38                                         ; $46f6: $ff
	rst  $38                                         ; $46f7: $ff
	push af                                          ; $46f8: $f5
	ld   de, $ff1c                                   ; $46f9: $11 $1c $ff
	rst  $38                                         ; $46fc: $ff
	or   c                                           ; $46fd: $b1
	ld   de, $1d11                                   ; $46fe: $11 $11 $1d
	rst  $38                                         ; $4701: $ff
	rst  $38                                         ; $4702: $ff
	pop  de                                          ; $4703: $d1
	ld   de, $ff6f                                   ; $4704: $11 $6f $ff
	rst  $38                                         ; $4707: $ff
	ld   sp, $1111                                   ; $4708: $31 $11 $11
	cpl                                              ; $470b: $2f
	rst  $38                                         ; $470c: $ff
	rst  $38                                         ; $470d: $ff
	ld   de, rAUD1LEN                                   ; $470e: $11 $11 $ff
	rst  $38                                         ; $4711: $ff
	ld   sp, hl                                      ; $4712: $f9
	ld   de, $1111                                   ; $4713: $11 $11 $11
	rst  $38                                         ; $4716: $ff
	rst  $38                                         ; $4717: $ff
	or   $11                                         ; $4718: $f6 $11
	inc  e                                           ; $471a: $1c
	rst  $38                                         ; $471b: $ff
	rst  $38                                         ; $471c: $ff
	pop  bc                                          ; $471d: $c1
	ld   de, $1811                                   ; $471e: $11 $11 $18
	rst  $38                                         ; $4721: $ff
	rst  $38                                         ; $4722: $ff
	pop  hl                                          ; $4723: $e1
	ld   de, $ff8f                                   ; $4724: $11 $8f $ff
	rst  $38                                         ; $4727: $ff
	ld   d, c                                        ; $4728: $51
	ld   de, $1f11                                   ; $4729: $11 $11 $1f
	rst  $38                                         ; $472c: $ff
	rst  $38                                         ; $472d: $ff
	ld   de, rAUD1LOW                                   ; $472e: $11 $13 $ff
	rst  $38                                         ; $4731: $ff
	ld   sp, hl                                      ; $4732: $f9
	ld   de, $1111                                   ; $4733: $11 $11 $11
	rst  JumpTable                                         ; $4736: $df
	rst  $38                                         ; $4737: $ff
	rst  $30                                         ; $4738: $f7
	ld   de, $ff1c                                   ; $4739: $11 $1c $ff
	rst  $38                                         ; $473c: $ff
	push bc                                          ; $473d: $c5
	ld   de, $1111                                   ; $473e: $11 $11 $11
	rst  $38                                         ; $4741: $ff
	rst  $38                                         ; $4742: $ff
	pop  af                                          ; $4743: $f1
	ld   de, $ff8f                                   ; $4744: $11 $8f $ff
	cp   $91                                         ; $4747: $fe $91
	ld   de, $1f11                                   ; $4749: $11 $11 $1f
	rst  $38                                         ; $474c: $ff
	rst  $38                                         ; $474d: $ff
	ld   b, c                                        ; $474e: $41
	inc  d                                           ; $474f: $14
	rst  $38                                         ; $4750: $ff
	rst  $38                                         ; $4751: $ff
	db   $fd                                         ; $4752: $fd
	ld   b, c                                        ; $4753: $41
	ld   de, $bf11                                   ; $4754: $11 $11 $bf
	rst  $38                                         ; $4757: $ff
	ld   a, [$4d11]                                  ; $4758: $fa $11 $4d
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	db   $fc                                         ; $475d: $fc
	ld   de, $1111                                   ; $475e: $11 $11 $11
	rst  $38                                         ; $4761: $ff
	rst  $38                                         ; $4762: $ff
	ldh  a, [c]                                      ; $4763: $f2
	inc  de                                          ; $4764: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4765: $cf
	cp   $ff                                         ; $4766: $fe $ff
	di                                               ; $4768: $f3
	ld   de, $1f11                                   ; $4769: $11 $11 $1f
	rst  $38                                         ; $476c: $ff
	rst  $38                                         ; $476d: $ff
	ld   h, d                                        ; $476e: $62
	ld   c, h                                        ; $476f: $4c
	db   $ed                                         ; $4770: $ed
	call z, $c1ff                                    ; $4771: $cc $ff $c1
	ld   de, $9f11                                   ; $4774: $11 $11 $9f
	rst  $38                                         ; $4777: $ff
	db   $fc                                         ; $4778: $fc
	halt                                             ; $4779: $76
	cp   [hl]                                        ; $477a: $be
	xor  b                                           ; $477b: $a8
	sbc  a                                           ; $477c: $9f
	rst  $38                                         ; $477d: $ff
	ld   sp, $1111                                   ; $477e: $31 $11 $11
	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	ld   sp, hl                                      ; $4783: $f9
	call Call_0f0_54f9                               ; $4784: $cd $f9 $54
	cp   a                                           ; $4787: $bf
	db   $fd                                         ; $4788: $fd
	ld   de, $1f11                                   ; $4789: $11 $11 $1f
	rst  $38                                         ; $478c: $ff
	rst  $38                                         ; $478d: $ff
	xor  $ef                                         ; $478e: $ee $ef
	sub  e                                           ; $4790: $93
	add  hl, sp                                      ; $4791: $39
	rst  $38                                         ; $4792: $ff
	pop  af                                          ; $4793: $f1
	ld   de, $5f11                                   ; $4794: $11 $11 $5f
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	rst  $38                                         ; $4799: $ff
	ei                                               ; $479a: $fb
	ld   sp, $ff4f                                   ; $479b: $31 $4f $ff
	ld   h, c                                        ; $479e: $61
	ld   de, rAUD1LEN                                   ; $479f: $11 $11 $ff
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	db   $e3                                         ; $47a5: $e3
	ld   de, $fcbf                                   ; $47a6: $11 $bf $fc
	ld   de, $1c11                                   ; $47a9: $11 $11 $1c
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	rst  $38                                         ; $47ae: $ff
	rst  $38                                         ; $47af: $ff
	ld   d, c                                        ; $47b0: $51
	jr   @+$01                                       ; $47b1: $18 $ff

	pop  af                                          ; $47b3: $f1
	ld   de, $3f11                                   ; $47b4: $11 $11 $3f
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	rst  $30                                         ; $47ba: $f7
	ld   de, $ff4f                                   ; $47bb: $11 $4f $ff
	ld   d, c                                        ; $47be: $51
	ld   de, $af11                                   ; $47bf: $11 $11 $af
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	pop  hl                                          ; $47c5: $e1
	ld   [de], a                                     ; $47c6: $12
	cp   a                                           ; $47c7: $bf
	ld   a, [$1111]                                  ; $47c8: $fa $11 $11
	ld   [de], a                                     ; $47cb: $12
	xor  a                                           ; $47cc: $af
	rst  $38                                         ; $47cd: $ff
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	ld   d, c                                        ; $47d0: $51
	jr   @+$01                                       ; $47d1: $18 $ff

	ldh  a, [c]                                      ; $47d3: $f2
	ld   de, $1411                                   ; $47d4: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47d7: $cf
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	db   $fc                                         ; $47da: $fc
	ld   hl, $ff4b                                   ; $47db: $21 $4b $ff
	add  c                                           ; $47de: $81
	ld   de, $1711                                   ; $47df: $11 $11 $17
	rst  JumpTable                                         ; $47e2: $df
	rst  $38                                         ; $47e3: $ff
	rst  $38                                         ; $47e4: $ff
	push af                                          ; $47e5: $f5
	ld   de, $fc9f                                   ; $47e6: $11 $9f $fc
	ld   de, $1111                                   ; $47e9: $11 $11 $11
	jr   z, @-$0f                                    ; $47ec: $28 $ef

	rst  $38                                         ; $47ee: $ff
	rst  $38                                         ; $47ef: $ff
	add  c                                           ; $47f0: $81
	ld   d, $df                                      ; $47f1: $16 $df
	db   $e4                                         ; $47f3: $e4
	ld   de, $1111                                   ; $47f4: $11 $11 $11
	ld   e, e                                        ; $47f7: $5b
	rst  $38                                         ; $47f8: $ff
	rst  $38                                         ; $47f9: $ff
	db   $fd                                         ; $47fa: $fd
	ld   hl, $fe4c                                   ; $47fb: $21 $4c $fe
	ld   [hl], c                                     ; $47fe: $71
	ld   de, $1411                                   ; $47ff: $11 $11 $14
	xor  a                                           ; $4802: $af
	rst  $38                                         ; $4803: $ff
	rst  $38                                         ; $4804: $ff
	rst  $30                                         ; $4805: $f7
	inc  bc                                          ; $4806: $03
	adc  l                                           ; $4807: $8d
	jp   hl                                          ; $4808: $e9


	ld   de, $1111                                   ; $4809: $11 $11 $11
	rlca                                             ; $480c: $07
	rst  $28                                         ; $480d: $ef
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	call nc, $de47                                   ; $4810: $d4 $47 $de
	or   l                                           ; $4813: $b5
	ld   de, $1111                                   ; $4814: $11 $11 $11
	add  hl, hl                                      ; $4817: $29
	rst  $38                                         ; $4818: $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	rst  ToBoot                                         ; $481b: $c7
	ld   a, d                                        ; $481c: $7a
	cp   h                                           ; $481d: $bc
	sub  h                                           ; $481e: $94
	ld   de, $1111                                   ; $481f: $11 $11 $11
	ld   a, [hl+]                                    ; $4822: $2a
	rst  $28                                         ; $4823: $ef
	rst  $38                                         ; $4824: $ff
	rst  $38                                         ; $4825: $ff
	jp   z, $a98b                                    ; $4826: $ca $8b $a9

	and  e                                           ; $4829: $a3
	ld   hl, $1111                                   ; $482a: $21 $11 $11
	daa                                              ; $482d: $27
	call $ffff                                       ; $482e: $cd $ff $ff
	db   $eb                                         ; $4831: $eb
	xor  d                                           ; $4832: $aa
	db   $db                                         ; $4833: $db
	add  [hl]                                        ; $4834: $86
	ld   [hl-], a                                    ; $4835: $32
	ld   de, $2211                                   ; $4836: $11 $11 $22
	ld   l, e                                        ; $4839: $6b
	xor  h                                           ; $483a: $ac
	rst  JumpTable                                         ; $483b: $df
	cp   $db                                         ; $483c: $fe $db
	cp   h                                           ; $483e: $bc
	cp   e                                           ; $483f: $bb
	sub  l                                           ; $4840: $95
	ld   d, [hl]                                     ; $4841: $56
	ld   d, e                                        ; $4842: $53
	ld   de, $6625                                   ; $4843: $11 $25 $66
	ld   h, a                                        ; $4846: $67
	adc  e                                           ; $4847: $8b
	cp   l                                           ; $4848: $bd
	cp   h                                           ; $4849: $bc
	call c, $abba                                    ; $484a: $dc $ba $ab
	sbc  c                                           ; $484d: $99
	ld   [hl], l                                     ; $484e: $75
	ld   b, c                                        ; $484f: $41
	inc  hl                                          ; $4850: $23
	dec  [hl]                                        ; $4851: $35
	ld   d, [hl]                                     ; $4852: $56
	ld   a, c                                        ; $4853: $79
	xor  e                                           ; $4854: $ab
	cp   d                                           ; $4855: $ba
	xor  h                                           ; $4856: $ac
	db   $ed                                         ; $4857: $ed
	cp   d                                           ; $4858: $ba
	sbc  c                                           ; $4859: $99
	xor  c                                           ; $485a: $a9
	halt                                             ; $485b: $76
	ld   d, e                                        ; $485c: $53
	ld   d, h                                        ; $485d: $54
	ld   d, [hl]                                     ; $485e: $56
	ld   d, [hl]                                     ; $485f: $56
	ld   h, a                                        ; $4860: $67
	adc  e                                           ; $4861: $8b
	xor  e                                           ; $4862: $ab
	xor  d                                           ; $4863: $aa
	call z, $a9ba                                    ; $4864: $cc $ba $a9
	sbc  b                                           ; $4867: $98
	ld   a, b                                        ; $4868: $78
	ld   [hl], a                                     ; $4869: $77
	ld   h, [hl]                                     ; $486a: $66
	ld   d, [hl]                                     ; $486b: $56
	halt                                             ; $486c: $76
	ld   h, [hl]                                     ; $486d: $66
	ld   [hl], a                                     ; $486e: $77
	adc  c                                           ; $486f: $89
	sbc  d                                           ; $4870: $9a
	cp   d                                           ; $4871: $ba
	sbc  c                                           ; $4872: $99
	adc  d                                           ; $4873: $8a
	xor  d                                           ; $4874: $aa
	add  [hl]                                        ; $4875: $86
	add  a                                           ; $4876: $87
	halt                                             ; $4877: $76
	ld   [hl], a                                     ; $4878: $77
	ld   [hl], a                                     ; $4879: $77
	ld   a, c                                        ; $487a: $79
	sbc  b                                           ; $487b: $98
	add  a                                           ; $487c: $87
	adc  c                                           ; $487d: $89
	sbc  d                                           ; $487e: $9a
	sbc  c                                           ; $487f: $99
	adc  c                                           ; $4880: $89
	sbc  b                                           ; $4881: $98
	sbc  c                                           ; $4882: $99
	ld   a, b                                        ; $4883: $78
	ld   a, b                                        ; $4884: $78
	adc  c                                           ; $4885: $89
	adc  b                                           ; $4886: $88
	ld   h, a                                        ; $4887: $67
	adc  b                                           ; $4888: $88
	sbc  b                                           ; $4889: $98
	adc  c                                           ; $488a: $89
	sbc  b                                           ; $488b: $98
	adc  b                                           ; $488c: $88
	ld   [hl], a                                     ; $488d: $77
	ld   a, b                                        ; $488e: $78
	adc  c                                           ; $488f: $89
	sbc  d                                           ; $4890: $9a
	xor  b                                           ; $4891: $a8
	ld   [hl], a                                     ; $4892: $77
	adc  c                                           ; $4893: $89
	add  a                                           ; $4894: $87
	adc  b                                           ; $4895: $88
	adc  b                                           ; $4896: $88
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	ld   a, b                                        ; $4899: $78
	sbc  b                                           ; $489a: $98
	adc  b                                           ; $489b: $88
	adc  b                                           ; $489c: $88
	adc  c                                           ; $489d: $89
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	adc  b                                           ; $48a0: $88
	adc  c                                           ; $48a1: $89
	add  a                                           ; $48a2: $87
	ld   [hl], a                                     ; $48a3: $77
	adc  b                                           ; $48a4: $88
	sbc  c                                           ; $48a5: $99
	xor  c                                           ; $48a6: $a9
	ld   a, b                                        ; $48a7: $78
	adc  c                                           ; $48a8: $89
	sbc  c                                           ; $48a9: $99
	sbc  b                                           ; $48aa: $98
	sbc  b                                           ; $48ab: $98
	sbc  b                                           ; $48ac: $98
	ld   a, b                                        ; $48ad: $78
	adc  b                                           ; $48ae: $88
	sub  a                                           ; $48af: $97
	adc  c                                           ; $48b0: $89
	adc  b                                           ; $48b1: $88
	ld   [hl], a                                     ; $48b2: $77
	add  a                                           ; $48b3: $87
	sbc  c                                           ; $48b4: $99
	adc  c                                           ; $48b5: $89
	sbc  b                                           ; $48b6: $98
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	add  a                                           ; $48ba: $87
	add  a                                           ; $48bb: $87
	ld   a, b                                        ; $48bc: $78
	add  a                                           ; $48bd: $87
	adc  b                                           ; $48be: $88
	xor  b                                           ; $48bf: $a8
	ld   [hl], a                                     ; $48c0: $77
	adc  c                                           ; $48c1: $89
	adc  b                                           ; $48c2: $88
	add  a                                           ; $48c3: $87
	adc  b                                           ; $48c4: $88
	ld   a, b                                        ; $48c5: $78
	adc  c                                           ; $48c6: $89
	sub  a                                           ; $48c7: $97
	ld   e, b                                        ; $48c8: $58
	ld   a, b                                        ; $48c9: $78
	sub  a                                           ; $48ca: $97
	xor  c                                           ; $48cb: $a9
	adc  b                                           ; $48cc: $88
	ld   a, b                                        ; $48cd: $78
	adc  c                                           ; $48ce: $89
	adc  b                                           ; $48cf: $88
	adc  c                                           ; $48d0: $89
	adc  b                                           ; $48d1: $88
	ld   a, b                                        ; $48d2: $78
	halt                                             ; $48d3: $76
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	ld   a, b                                        ; $48d6: $78
	add  a                                           ; $48d7: $87
	adc  c                                           ; $48d8: $89
	adc  b                                           ; $48d9: $88
	ld   [hl], a                                     ; $48da: $77
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	ld   [hl], a                                     ; $48de: $77
	adc  c                                           ; $48df: $89
	adc  b                                           ; $48e0: $88
	ld   [hl], a                                     ; $48e1: $77
	ld   a, b                                        ; $48e2: $78
	sub  a                                           ; $48e3: $97
	ld   [hl], a                                     ; $48e4: $77
	sbc  b                                           ; $48e5: $98
	ld   a, b                                        ; $48e6: $78
	adc  c                                           ; $48e7: $89
	add  a                                           ; $48e8: $87
	sbc  b                                           ; $48e9: $98
	ld   a, b                                        ; $48ea: $78
	adc  b                                           ; $48eb: $88
	ld   a, b                                        ; $48ec: $78
	adc  b                                           ; $48ed: $88
	ld   [hl], a                                     ; $48ee: $77
	ld   a, b                                        ; $48ef: $78
	add  a                                           ; $48f0: $87
	add  a                                           ; $48f1: $87
	ld   a, b                                        ; $48f2: $78
	ld   a, b                                        ; $48f3: $78
	ld   a, b                                        ; $48f4: $78
	adc  c                                           ; $48f5: $89
	add  a                                           ; $48f6: $87
	sub  a                                           ; $48f7: $97
	adc  b                                           ; $48f8: $88
	ld   a, b                                        ; $48f9: $78
	adc  b                                           ; $48fa: $88
	add  a                                           ; $48fb: $87
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	ld   [hl], a                                     ; $48fe: $77
	ld   a, b                                        ; $48ff: $78
	sub  a                                           ; $4900: $97
	adc  c                                           ; $4901: $89
	halt                                             ; $4902: $76
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	add  a                                           ; $4906: $87
	ld   a, c                                        ; $4907: $79
	adc  c                                           ; $4908: $89
	add  a                                           ; $4909: $87
	ld   a, b                                        ; $490a: $78
	add  a                                           ; $490b: $87
	adc  c                                           ; $490c: $89
	ld   [hl], a                                     ; $490d: $77
	ld   h, a                                        ; $490e: $67
	add  a                                           ; $490f: $87
	sbc  c                                           ; $4910: $99
	adc  b                                           ; $4911: $88
	adc  b                                           ; $4912: $88
	sbc  b                                           ; $4913: $98
	add  a                                           ; $4914: $87
	sub  a                                           ; $4915: $97
	adc  c                                           ; $4916: $89
	add  a                                           ; $4917: $87
	ld   h, a                                        ; $4918: $67
	adc  b                                           ; $4919: $88
	ld   [hl], a                                     ; $491a: $77
	adc  b                                           ; $491b: $88
	adc  b                                           ; $491c: $88
	add  a                                           ; $491d: $87
	ld   a, c                                        ; $491e: $79
	add  a                                           ; $491f: $87
	add  a                                           ; $4920: $87
	sbc  b                                           ; $4921: $98
	ld   a, b                                        ; $4922: $78
	ld   a, b                                        ; $4923: $78
	ld   a, b                                        ; $4924: $78
	adc  b                                           ; $4925: $88
	add  a                                           ; $4926: $87
	sbc  b                                           ; $4927: $98
	add  a                                           ; $4928: $87
	adc  c                                           ; $4929: $89
	ld   [hl], a                                     ; $492a: $77
	sbc  b                                           ; $492b: $98
	adc  c                                           ; $492c: $89
	ld   [hl], a                                     ; $492d: $77
	ld   a, b                                        ; $492e: $78
	ld   a, b                                        ; $492f: $78
	sbc  b                                           ; $4930: $98
	ld   [hl], a                                     ; $4931: $77
	sub  a                                           ; $4932: $97
	sub  a                                           ; $4933: $97
	adc  c                                           ; $4934: $89
	adc  b                                           ; $4935: $88
	ld   a, b                                        ; $4936: $78
	adc  c                                           ; $4937: $89
	add  a                                           ; $4938: $87
	add  a                                           ; $4939: $87
	sub  a                                           ; $493a: $97
	adc  c                                           ; $493b: $89
	ld   [hl], a                                     ; $493c: $77
	adc  b                                           ; $493d: $88
	add  a                                           ; $493e: $87
	ld   a, b                                        ; $493f: $78
	adc  c                                           ; $4940: $89
	adc  b                                           ; $4941: $88
	ld   a, b                                        ; $4942: $78
	sub  a                                           ; $4943: $97
	sbc  b                                           ; $4944: $98
	adc  b                                           ; $4945: $88
	add  a                                           ; $4946: $87
	ld   a, b                                        ; $4947: $78
	adc  b                                           ; $4948: $88
	add  a                                           ; $4949: $87
	ld   a, c                                        ; $494a: $79
	add  a                                           ; $494b: $87
	adc  b                                           ; $494c: $88
	ld   a, b                                        ; $494d: $78
	adc  b                                           ; $494e: $88
	sub  a                                           ; $494f: $97
	sbc  b                                           ; $4950: $98
	sbc  c                                           ; $4951: $99
	ld   a, b                                        ; $4952: $78
	adc  c                                           ; $4953: $89
	add  a                                           ; $4954: $87
	adc  b                                           ; $4955: $88
	ld   a, b                                        ; $4956: $78
	sbc  b                                           ; $4957: $98
	ld   a, b                                        ; $4958: $78
	add  a                                           ; $4959: $87
	adc  c                                           ; $495a: $89
	sbc  b                                           ; $495b: $98
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	add  a                                           ; $495f: $87
	adc  b                                           ; $4960: $88
	adc  b                                           ; $4961: $88
	ld   a, b                                        ; $4962: $78
	adc  c                                           ; $4963: $89
	sbc  b                                           ; $4964: $98
	adc  b                                           ; $4965: $88
	adc  c                                           ; $4966: $89
	add  a                                           ; $4967: $87
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	sbc  b                                           ; $496d: $98
	ld   a, b                                        ; $496e: $78
	sbc  b                                           ; $496f: $98
	sub  a                                           ; $4970: $97
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
	sbc  b                                           ; $4979: $98
	add  a                                           ; $497a: $87
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  c                                           ; $497d: $89
	sbc  b                                           ; $497e: $98
	ld   a, c                                        ; $497f: $79
	adc  b                                           ; $4980: $88
	sbc  b                                           ; $4981: $98
	adc  c                                           ; $4982: $89
	adc  b                                           ; $4983: $88
	adc  b                                           ; $4984: $88
	adc  c                                           ; $4985: $89
	adc  b                                           ; $4986: $88
	add  a                                           ; $4987: $87
	adc  b                                           ; $4988: $88
	adc  c                                           ; $4989: $89
	adc  c                                           ; $498a: $89
	sbc  b                                           ; $498b: $98
	adc  b                                           ; $498c: $88
	sbc  b                                           ; $498d: $98
	adc  b                                           ; $498e: $88
	sub  a                                           ; $498f: $97
	add  a                                           ; $4990: $87
	adc  b                                           ; $4991: $88
	ld   a, c                                        ; $4992: $79
	adc  b                                           ; $4993: $88
	ld   a, b                                        ; $4994: $78
	adc  b                                           ; $4995: $88
	add  a                                           ; $4996: $87
	adc  c                                           ; $4997: $89
	sbc  b                                           ; $4998: $98
	adc  b                                           ; $4999: $88
	sbc  c                                           ; $499a: $99
	adc  b                                           ; $499b: $88
	adc  b                                           ; $499c: $88
	ld   a, b                                        ; $499d: $78
	sbc  b                                           ; $499e: $98
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	ld   a, b                                        ; $49a1: $78
	sbc  b                                           ; $49a2: $98
	adc  b                                           ; $49a3: $88
	adc  c                                           ; $49a4: $89
	sub  a                                           ; $49a5: $97
	sub  a                                           ; $49a6: $97
	adc  b                                           ; $49a7: $88
	ld   a, c                                        ; $49a8: $79
	ld   a, c                                        ; $49a9: $79
	ld   a, b                                        ; $49aa: $78
	adc  c                                           ; $49ab: $89
	adc  b                                           ; $49ac: $88
	add  a                                           ; $49ad: $87
	sbc  b                                           ; $49ae: $98
	adc  b                                           ; $49af: $88
	sbc  b                                           ; $49b0: $98
	ld   a, b                                        ; $49b1: $78
	sub  a                                           ; $49b2: $97
	adc  c                                           ; $49b3: $89
	adc  b                                           ; $49b4: $88
	sbc  b                                           ; $49b5: $98
	add  a                                           ; $49b6: $87
	adc  b                                           ; $49b7: $88
	ld   a, b                                        ; $49b8: $78
	sbc  b                                           ; $49b9: $98
	adc  b                                           ; $49ba: $88
	adc  b                                           ; $49bb: $88
	adc  c                                           ; $49bc: $89
	adc  b                                           ; $49bd: $88
	adc  b                                           ; $49be: $88
	ld   [hl], a                                     ; $49bf: $77
	ld   a, c                                        ; $49c0: $79
	sbc  b                                           ; $49c1: $98
	sbc  b                                           ; $49c2: $98
	adc  c                                           ; $49c3: $89
	ld   a, b                                        ; $49c4: $78
	sbc  b                                           ; $49c5: $98
	add  a                                           ; $49c6: $87
	add  a                                           ; $49c7: $87
	adc  b                                           ; $49c8: $88
	adc  c                                           ; $49c9: $89
	adc  c                                           ; $49ca: $89
	adc  b                                           ; $49cb: $88
	adc  b                                           ; $49cc: $88
	sbc  b                                           ; $49cd: $98
	sbc  b                                           ; $49ce: $98
	adc  b                                           ; $49cf: $88
	ld   a, c                                        ; $49d0: $79
	add  a                                           ; $49d1: $87
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  c                                           ; $49d4: $89
	adc  c                                           ; $49d5: $89
	adc  b                                           ; $49d6: $88
	adc  b                                           ; $49d7: $88
	ld   [hl], a                                     ; $49d8: $77
	sbc  b                                           ; $49d9: $98
	ld   a, c                                        ; $49da: $79
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	add  a                                           ; $49dd: $87
	adc  b                                           ; $49de: $88
	ld   a, b                                        ; $49df: $78
	sbc  b                                           ; $49e0: $98
	add  a                                           ; $49e1: $87
	adc  b                                           ; $49e2: $88
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	ld   a, c                                        ; $49e5: $79
	sub  a                                           ; $49e6: $97
	adc  b                                           ; $49e7: $88
	adc  b                                           ; $49e8: $88
	ld   a, b                                        ; $49e9: $78
	add  a                                           ; $49ea: $87
	ld   a, b                                        ; $49eb: $78
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	sub  a                                           ; $49ee: $97
	adc  b                                           ; $49ef: $88
	sub  a                                           ; $49f0: $97
	ld   a, c                                        ; $49f1: $79
	add  a                                           ; $49f2: $87
	ld   a, c                                        ; $49f3: $79
	sub  a                                           ; $49f4: $97
	ld   [hl], a                                     ; $49f5: $77
	sbc  b                                           ; $49f6: $98
	ld   a, b                                        ; $49f7: $78
	adc  c                                           ; $49f8: $89
	sub  a                                           ; $49f9: $97
	ld   a, c                                        ; $49fa: $79
	sbc  c                                           ; $49fb: $99
	ld   [hl], a                                     ; $49fc: $77
	add  a                                           ; $49fd: $87
	adc  b                                           ; $49fe: $88
	ld   a, b                                        ; $49ff: $78
	add  a                                           ; $4a00: $87
	ld   [hl], a                                     ; $4a01: $77
	sbc  b                                           ; $4a02: $98
	sub  a                                           ; $4a03: $97
	ld   a, b                                        ; $4a04: $78
	adc  d                                           ; $4a05: $8a
	ld   [hl], a                                     ; $4a06: $77
	ld   a, c                                        ; $4a07: $79
	add  [hl]                                        ; $4a08: $86
	adc  b                                           ; $4a09: $88
	adc  c                                           ; $4a0a: $89
	add  a                                           ; $4a0b: $87
	adc  b                                           ; $4a0c: $88
	adc  c                                           ; $4a0d: $89
	ld   a, b                                        ; $4a0e: $78
	ld   a, c                                        ; $4a0f: $79
	sbc  c                                           ; $4a10: $99
	add  a                                           ; $4a11: $87
	sub  a                                           ; $4a12: $97
	ld   a, b                                        ; $4a13: $78
	adc  b                                           ; $4a14: $88
	ld   a, c                                        ; $4a15: $79
	adc  b                                           ; $4a16: $88
	ld   a, b                                        ; $4a17: $78
	add  a                                           ; $4a18: $87
	sbc  c                                           ; $4a19: $99
	and  a                                           ; $4a1a: $a7
	ld   a, c                                        ; $4a1b: $79
	ld   l, b                                        ; $4a1c: $68
	adc  c                                           ; $4a1d: $89
	sbc  b                                           ; $4a1e: $98
	ld   [hl], a                                     ; $4a1f: $77
	add  a                                           ; $4a20: $87
	adc  b                                           ; $4a21: $88
	and  a                                           ; $4a22: $a7
	add  a                                           ; $4a23: $87
	sub  a                                           ; $4a24: $97
	adc  e                                           ; $4a25: $8b
	ld   a, b                                        ; $4a26: $78
	ld   a, d                                        ; $4a27: $7a
	add  a                                           ; $4a28: $87
	ld   l, b                                        ; $4a29: $68
	sbc  c                                           ; $4a2a: $99
	sub  a                                           ; $4a2b: $97
	ld   a, b                                        ; $4a2c: $78
	add  a                                           ; $4a2d: $87
	add  [hl]                                        ; $4a2e: $86
	sbc  d                                           ; $4a2f: $9a
	xor  c                                           ; $4a30: $a9
	ld   a, b                                        ; $4a31: $78
	ld   a, d                                        ; $4a32: $7a
	sbc  c                                           ; $4a33: $99
	add  a                                           ; $4a34: $87
	adc  d                                           ; $4a35: $8a
	add  [hl]                                        ; $4a36: $86
	sbc  c                                           ; $4a37: $99
	sub  a                                           ; $4a38: $97
	ld   l, b                                        ; $4a39: $68
	sbc  b                                           ; $4a3a: $98
	add  [hl]                                        ; $4a3b: $86
	sbc  c                                           ; $4a3c: $99
	add  a                                           ; $4a3d: $87
	ld   l, b                                        ; $4a3e: $68
	adc  c                                           ; $4a3f: $89
	xor  b                                           ; $4a40: $a8
	sbc  b                                           ; $4a41: $98
	sbc  b                                           ; $4a42: $98
	halt                                             ; $4a43: $76
	adc  b                                           ; $4a44: $88
	adc  h                                           ; $4a45: $8c
	add  $46                                         ; $4a46: $c6 $46
	ld   [hl], a                                     ; $4a48: $77
	ld   a, c                                        ; $4a49: $79
	xor  d                                           ; $4a4a: $aa
	add  a                                           ; $4a4b: $87
	ld   h, a                                        ; $4a4c: $67
	adc  c                                           ; $4a4d: $89
	add  [hl]                                        ; $4a4e: $86
	ld   l, b                                        ; $4a4f: $68
	sbc  d                                           ; $4a50: $9a
	sub  [hl]                                        ; $4a51: $96
	ld   a, c                                        ; $4a52: $79
	sub  [hl]                                        ; $4a53: $96
	ld   l, c                                        ; $4a54: $69
	cp   c                                           ; $4a55: $b9
	sub  l                                           ; $4a56: $95
	ld   [hl], a                                     ; $4a57: $77
	ld   a, c                                        ; $4a58: $79
	add  a                                           ; $4a59: $87
	sbc  d                                           ; $4a5a: $9a
	halt                                             ; $4a5b: $76
	ld   l, b                                        ; $4a5c: $68
	sbc  d                                           ; $4a5d: $9a
	add  l                                           ; $4a5e: $85
	ld   [hl], l                                     ; $4a5f: $75
	add  a                                           ; $4a60: $87
	sbc  b                                           ; $4a61: $98
	sbc  c                                           ; $4a62: $99
	sub  [hl]                                        ; $4a63: $96
	scf                                              ; $4a64: $37
	adc  h                                           ; $4a65: $8c
	xor  b                                           ; $4a66: $a8
	adc  d                                           ; $4a67: $8a
	and  [hl]                                        ; $4a68: $a6
	sub  [hl]                                        ; $4a69: $96
	add  a                                           ; $4a6a: $87
	adc  b                                           ; $4a6b: $88
	sbc  c                                           ; $4a6c: $99
	ld   h, a                                        ; $4a6d: $67
	ld   b, h                                        ; $4a6e: $44
	inc  h                                           ; $4a6f: $24
	adc  c                                           ; $4a70: $89
	adc  b                                           ; $4a71: $88
	adc  c                                           ; $4a72: $89
	cp   b                                           ; $4a73: $b8
	cp   c                                           ; $4a74: $b9
	sbc  $ff                                         ; $4a75: $de $ff
	sub  l                                           ; $4a77: $95
	ld   de, $1111                                   ; $4a78: $11 $11 $11
	ld   [bc], a                                     ; $4a7b: $02
	inc  [hl]                                        ; $4a7c: $34
	adc  d                                           ; $4a7d: $8a
	rst  JumpTable                                         ; $4a7e: $df
	rst  $38                                         ; $4a7f: $ff
	rst  $38                                         ; $4a80: $ff
	rst  $38                                         ; $4a81: $ff
	cp   e                                           ; $4a82: $bb
	sub  [hl]                                        ; $4a83: $96
	ld   de, $1111                                   ; $4a84: $11 $11 $11
	inc  de                                          ; $4a87: $13
	ld   a, e                                        ; $4a88: $7b
	rst  $38                                         ; $4a89: $ff
	rst  $38                                         ; $4a8a: $ff
	rst  $38                                         ; $4a8b: $ff
	rst  $38                                         ; $4a8c: $ff
	db   $fd                                         ; $4a8d: $fd
	and  l                                           ; $4a8e: $a5
	ld   de, $1111                                   ; $4a8f: $11 $11 $11
	ld   de, $ff6d                                   ; $4a92: $11 $6d $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	db   $fd                                         ; $4a99: $fd
	ld   sp, $1111                                   ; $4a9a: $31 $11 $11
	ld   de, $ff18                                   ; $4a9d: $11 $18 $ff
	rst  $38                                         ; $4aa0: $ff
	rst  $38                                         ; $4aa1: $ff
	rst  $38                                         ; $4aa2: $ff
	adc  $ff                                         ; $4aa3: $ce $ff
	ld   sp, hl                                      ; $4aa5: $f9
	ld   de, $1111                                   ; $4aa6: $11 $11 $11
	ld   de, $ff8f                                   ; $4aa9: $11 $8f $ff
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	db   $fc                                         ; $4aae: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aaf: $cf
	rst  $38                                         ; $4ab0: $ff
	ldh  [c], a                                      ; $4ab1: $e2
	ld   de, $1111                                   ; $4ab2: $11 $11 $11
	ld   d, $ff                                      ; $4ab5: $16 $ff
	rst  $38                                         ; $4ab7: $ff
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	xor  b                                           ; $4aba: $a8
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	ld   hl, $1111                                   ; $4abd: $21 $11 $11
	ld   de, $ff8f                                   ; $4ac0: $11 $8f $ff
	rst  $38                                         ; $4ac3: $ff
	rst  $38                                         ; $4ac4: $ff
	or   $5e                                         ; $4ac5: $f6 $5e
	rst  $38                                         ; $4ac7: $ff
	pop  af                                          ; $4ac8: $f1
	ld   de, $1111                                   ; $4ac9: $11 $11 $11
	ld   a, a                                        ; $4acc: $7f
	rst  $38                                         ; $4acd: $ff
	rst  $38                                         ; $4ace: $ff
	rst  $38                                         ; $4acf: $ff
	rst  $30                                         ; $4ad0: $f7
	rla                                              ; $4ad1: $17
	rst  $38                                         ; $4ad2: $ff
	db   $fd                                         ; $4ad3: $fd
	ld   de, $1111                                   ; $4ad4: $11 $11 $11
	dec  a                                           ; $4ad7: $3d
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	rst  $38                                         ; $4ada: $ff
	ld   a, [$bf12]                                  ; $4adb: $fa $12 $bf
	rst  $38                                         ; $4ade: $ff
	ld   de, $1111                                   ; $4adf: $11 $11 $11
	ld   l, a                                        ; $4ae2: $6f
	rst  $38                                         ; $4ae3: $ff
	rst  $38                                         ; $4ae4: $ff
	rst  $38                                         ; $4ae5: $ff
	or   $11                                         ; $4ae6: $f6 $11
	xor  a                                           ; $4ae8: $af
	rst  $38                                         ; $4ae9: $ff
	ld   de, $1111                                   ; $4aea: $11 $11 $11
	xor  a                                           ; $4aed: $af
	rst  $38                                         ; $4aee: $ff
	rst  $38                                         ; $4aef: $ff
	rst  $38                                         ; $4af0: $ff
	push hl                                          ; $4af1: $e5
	ld   de, $ffbf                                   ; $4af2: $11 $bf $ff
	ld   de, $1211                                   ; $4af5: $11 $11 $12
	rst  $38                                         ; $4af8: $ff
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	sub  c                                           ; $4afc: $91
	ld   [de], a                                     ; $4afd: $12
	rst  $28                                         ; $4afe: $ef
	cp   $11                                         ; $4aff: $fe $11
	ld   de, $ff1a                                   ; $4b01: $11 $1a $ff
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	ld   b, c                                        ; $4b07: $41
	ld   d, $ff                                      ; $4b08: $16 $ff
	pop  af                                          ; $4b0a: $f1
	ld   de, $cf11                                   ; $4b0b: $11 $11 $cf
	rst  $38                                         ; $4b0e: $ff
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	db   $f4                                         ; $4b11: $f4
	ld   de, $ff5f                                   ; $4b12: $11 $5f $ff
	ld   sp, $1611                                   ; $4b15: $31 $11 $16
	rst  $38                                         ; $4b18: $ff
	rst  $38                                         ; $4b19: $ff
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	ld   h, c                                        ; $4b1c: $61
	inc  de                                          ; $4b1d: $13
	rst  $38                                         ; $4b1e: $ff
	db   $f4                                         ; $4b1f: $f4
	ld   de, $9f11                                   ; $4b20: $11 $11 $9f
	rst  $38                                         ; $4b23: $ff
	rst  $38                                         ; $4b24: $ff
	rst  $38                                         ; $4b25: $ff
	or   $11                                         ; $4b26: $f6 $11
	ld   e, a                                        ; $4b28: $5f
	rst  $38                                         ; $4b29: $ff
	ld   de, $1f11                                   ; $4b2a: $11 $11 $1f
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	ld   sp, $ff18                                   ; $4b31: $31 $18 $ff
	pop  af                                          ; $4b34: $f1
	ld   de, rAUD1LEN                                   ; $4b35: $11 $11 $ff
	rst  $38                                         ; $4b38: $ff
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	pop  hl                                          ; $4b3b: $e1
	ld   de, $fbff                                   ; $4b3c: $11 $ff $fb
	ld   de, $8f11                                   ; $4b3f: $11 $11 $8f
	rst  $38                                         ; $4b42: $ff
	rst  $38                                         ; $4b43: $ff
	rst  $38                                         ; $4b44: $ff
	db   $f4                                         ; $4b45: $f4
	ld   de, $ff5f                                   ; $4b46: $11 $5f $ff
	ld   de, $1f11                                   ; $4b49: $11 $11 $1f
	rst  $38                                         ; $4b4c: $ff
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	db   $fd                                         ; $4b4f: $fd
	ld   de, $ff1d                                   ; $4b50: $11 $1d $ff
	pop  bc                                          ; $4b53: $c1
	ld   de, $ff1f                                   ; $4b54: $11 $1f $ff
	rst  $38                                         ; $4b57: $ff
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	ld   b, c                                        ; $4b5a: $41
	rla                                              ; $4b5b: $17
	rst  $38                                         ; $4b5c: $ff
	pop  af                                          ; $4b5d: $f1
	ld   de, rAUD1LEN                                   ; $4b5e: $11 $11 $ff
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	add  c                                           ; $4b64: $81
	ld   [de], a                                     ; $4b65: $12
	rst  $38                                         ; $4b66: $ff
	ld   sp, hl                                      ; $4b67: $f9
	ld   de, rAUD1LEN                                   ; $4b68: $11 $11 $ff
	rst  $38                                         ; $4b6b: $ff
	rst  $38                                         ; $4b6c: $ff
	rst  $38                                         ; $4b6d: $ff
	jp   nc, $af11                                   ; $4b6e: $d2 $11 $af

	rst  $38                                         ; $4b71: $ff
	ld   de, $1f11                                   ; $4b72: $11 $11 $1f
	rst  $38                                         ; $4b75: $ff
	rst  $38                                         ; $4b76: $ff
	rst  $38                                         ; $4b77: $ff
	rst  $30                                         ; $4b78: $f7
	ld   de, $ff3f                                   ; $4b79: $11 $3f $ff
	add  c                                           ; $4b7c: $81
	ld   de, $ff1f                                   ; $4b7d: $11 $1f $ff
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	ei                                               ; $4b82: $fb
	ld   de, $ff1c                                   ; $4b83: $11 $1c $ff
	pop  af                                          ; $4b86: $f1
	ld   de, rAUD1LEN                                   ; $4b87: $11 $11 $ff
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	cp   $51                                         ; $4b8c: $fe $51
	ld   d, $ff                                      ; $4b8e: $16 $ff
	ld   sp, hl                                      ; $4b90: $f9
	ld   de, rAUD1LEN                                   ; $4b91: $11 $11 $ff
	rst  $38                                         ; $4b94: $ff
	rst  $38                                         ; $4b95: $ff
	rst  $38                                         ; $4b96: $ff
	sub  c                                           ; $4b97: $91
	ld   de, $ffcf                                   ; $4b98: $11 $cf $ff
	ld   de, $1f11                                   ; $4b9b: $11 $11 $1f
	rst  $38                                         ; $4b9e: $ff
	rst  $38                                         ; $4b9f: $ff
	rst  $28                                         ; $4ba0: $ef
	push bc                                          ; $4ba1: $c5
	ld   de, $ff7f                                   ; $4ba2: $11 $7f $ff
	pop  bc                                          ; $4ba5: $c1
	ld   de, $ff1d                                   ; $4ba6: $11 $1d $ff
	rst  $38                                         ; $4ba9: $ff
	rst  $38                                         ; $4baa: $ff
	ld   sp, hl                                      ; $4bab: $f9
	ld   de, $ff1c                                   ; $4bac: $11 $1c $ff
	ldh  a, [c]                                      ; $4baf: $f2
	ld   de, rAUD1LEN                                   ; $4bb0: $11 $11 $ff
	rst  $38                                         ; $4bb3: $ff
	cp   $fd                                         ; $4bb4: $fe $fd
	ld   d, c                                        ; $4bb6: $51
	inc  d                                           ; $4bb7: $14
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	ld   de, $1f11                                   ; $4bba: $11 $11 $1f
	rst  $38                                         ; $4bbd: $ff
	rst  $38                                         ; $4bbe: $ff
	rst  $38                                         ; $4bbf: $ff
	and  e                                           ; $4bc0: $a3
	ld   de, $ff8f                                   ; $4bc1: $11 $8f $ff
	and  c                                           ; $4bc4: $a1
	ld   de, $ff1a                                   ; $4bc5: $11 $1a $ff
	rst  $38                                         ; $4bc8: $ff
	rst  $38                                         ; $4bc9: $ff
	add  sp, $11                                     ; $4bca: $e8 $11
	inc  e                                           ; $4bcc: $1c
	rst  $38                                         ; $4bcd: $ff
	di                                               ; $4bce: $f3
	ld   de, rAUD1LEN                                   ; $4bcf: $11 $11 $ff
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	db   $fd                                         ; $4bd4: $fd
	ld   d, c                                        ; $4bd5: $51
	dec  d                                           ; $4bd6: $15
	rst  $38                                         ; $4bd7: $ff
	rst  $38                                         ; $4bd8: $ff
	ld   de, $1f11                                   ; $4bd9: $11 $11 $1f
	rst  $38                                         ; $4bdc: $ff
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	or   h                                           ; $4bdf: $b4
	ld   de, $ff6f                                   ; $4be0: $11 $6f $ff
	pop  af                                          ; $4be3: $f1
	ld   de, rAUD1LEN                                   ; $4be4: $11 $11 $ff
	rst  $38                                         ; $4be7: $ff
	rst  $38                                         ; $4be8: $ff
	ei                                               ; $4be9: $fb
	ld   sp, $ff18                                   ; $4bea: $31 $18 $ff
	db   $fd                                         ; $4bed: $fd
	ld   de, $5f11                                   ; $4bee: $11 $11 $5f
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	rst  $38                                         ; $4bf3: $ff
	sub  e                                           ; $4bf4: $93
	ld   de, $ffaf                                   ; $4bf5: $11 $af $ff
	sub  c                                           ; $4bf8: $91
	ld   de, $ff19                                   ; $4bf9: $11 $19 $ff
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	ld   sp, hl                                      ; $4bfe: $f9
	ld   hl, $ff1a                                   ; $4bff: $21 $1a $ff
	rst  $30                                         ; $4c02: $f7
	ld   de, $df11                                   ; $4c03: $11 $11 $df
	rst  $38                                         ; $4c06: $ff
	rst  $38                                         ; $4c07: $ff
	rst  $38                                         ; $4c08: $ff
	or   e                                           ; $4c09: $b3
	ld   de, $ffbf                                   ; $4c0a: $11 $bf $ff
	ld   b, c                                        ; $4c0d: $41
	ld   de, $ff1f                                   ; $4c0e: $11 $1f $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	db   $fc                                         ; $4c13: $fc
	ld   sp, $ff1b                                   ; $4c14: $31 $1b $ff
	di                                               ; $4c17: $f3
	ld   de, rAUD1LEN                                   ; $4c18: $11 $11 $ff
	rst  $38                                         ; $4c1b: $ff
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	push de                                          ; $4c1e: $d5
	ld   de, $ffaf                                   ; $4c1f: $11 $af $ff
	ld   b, c                                        ; $4c22: $41
	ld   de, $ff1f                                   ; $4c23: $11 $1f $ff
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	rst  $38                                         ; $4c28: $ff
	sub  c                                           ; $4c29: $91
	jr   @+$01                                       ; $4c2a: $18 $ff

	db   $f4                                         ; $4c2c: $f4
	ld   de, $cf11                                   ; $4c2d: $11 $11 $cf
	rst  $38                                         ; $4c30: $ff
	cp   $ff                                         ; $4c31: $fe $ff
	db   $fd                                         ; $4c33: $fd
	ld   hl, $ff6e                                   ; $4c34: $21 $6e $ff
	ld   h, c                                        ; $4c37: $61
	ld   de, $ff18                                   ; $4c38: $11 $18 $ff
	rst  $38                                         ; $4c3b: $ff
	xor  [hl]                                        ; $4c3c: $ae
	rst  $38                                         ; $4c3d: $ff
	rst  $30                                         ; $4c3e: $f7
	dec  d                                           ; $4c3f: $15
	cp   a                                           ; $4c40: $bf
	ld   hl, sp+$11                                  ; $4c41: $f8 $11
	ld   de, $ff1f                                   ; $4c43: $11 $1f $ff
	ld   sp, hl                                      ; $4c46: $f9
	cp   a                                           ; $4c47: $bf
	rst  $38                                         ; $4c48: $ff
	call nc, $ff6a                                   ; $4c49: $d4 $6a $ff
	sub  c                                           ; $4c4c: $91
	ld   de, $8f11                                   ; $4c4d: $11 $11 $8f
	rst  $38                                         ; $4c50: $ff
	sub  l                                           ; $4c51: $95
	adc  l                                           ; $4c52: $8d
	rst  $38                                         ; $4c53: $ff
	add  sp, -$65                                    ; $4c54: $e8 $9b
	db   $db                                         ; $4c56: $db
	add  l                                           ; $4c57: $85
	ld   de, $6b11                                   ; $4c58: $11 $11 $6b
	ret                                              ; $4c5b: $c9


	ld   d, c                                        ; $4c5c: $51
	dec  d                                           ; $4c5d: $15
	cp   [hl]                                        ; $4c5e: $be
	db   $ed                                         ; $4c5f: $ed
	cp   d                                           ; $4c60: $ba
	cp   h                                           ; $4c61: $bc
	cp   c                                           ; $4c62: $b9
	sbc  d                                           ; $4c63: $9a
	add  [hl]                                        ; $4c64: $86
	ld   d, [hl]                                     ; $4c65: $56
	add  a                                           ; $4c66: $87
	ld   h, h                                        ; $4c67: $64
	ld   de, $9c15                                   ; $4c68: $11 $15 $9c
	call c, $ccbc                                    ; $4c6b: $dc $bc $cc
	call z, $95cc                                    ; $4c6e: $cc $cc $95
	dec  [hl]                                        ; $4c71: $35
	halt                                             ; $4c72: $76
	ld   [hl], l                                     ; $4c73: $75
	ld   de, $8c14                                   ; $4c74: $11 $14 $8c
	cp   h                                           ; $4c77: $bc
	sbc  $fe                                         ; $4c78: $de $fe
	res  7, e                                        ; $4c7a: $cb $bb
	sub  l                                           ; $4c7c: $95
	ld   sp, $5614                                   ; $4c7d: $31 $14 $56
	ld   sp, $9d13                                   ; $4c80: $31 $13 $9d
	rst  $38                                         ; $4c83: $ff
	cp   $ff                                         ; $4c84: $fe $ff
	db   $ec                                         ; $4c86: $ec
	ret                                              ; $4c87: $c9


	ld   b, c                                        ; $4c88: $41
	ld   de, $7911                                   ; $4c89: $11 $11 $79
	ld   d, d                                        ; $4c8c: $52
	ld   c, c                                        ; $4c8d: $49
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	db   $fd                                         ; $4c90: $fd
	sbc  $eb                                         ; $4c91: $de $eb
	ld   d, c                                        ; $4c93: $51
	ld   de, $4b11                                   ; $4c94: $11 $11 $4b
	db   $eb                                         ; $4c97: $eb
	ld   a, c                                        ; $4c98: $79
	rst  $38                                         ; $4c99: $ff
	rst  $38                                         ; $4c9a: $ff
	ei                                               ; $4c9b: $fb
	xor  l                                           ; $4c9c: $ad
	call c, $1191                                    ; $4c9d: $dc $91 $11
	ld   de, $ff1b                                   ; $4ca0: $11 $1b $ff
	xor  b                                           ; $4ca3: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ca4: $cf
	rst  $38                                         ; $4ca5: $ff
	db   $fc                                         ; $4ca6: $fc
	sbc  d                                           ; $4ca7: $9a
	call z, $11a4                                    ; $4ca8: $cc $a4 $11
	ld   de, $ff18                                   ; $4cab: $11 $18 $ff
	ld   [$ffbf], a                                  ; $4cae: $ea $bf $ff
	db   $fd                                         ; $4cb1: $fd
	sub  a                                           ; $4cb2: $97
	cp   l                                           ; $4cb3: $bd
	reti                                             ; $4cb4: $d9


	ld   de, $1411                                   ; $4cb5: $11 $11 $14
	rst  $38                                         ; $4cb8: $ff
	ei                                               ; $4cb9: $fb
	sbc  [hl]                                        ; $4cba: $9e
	rst  $38                                         ; $4cbb: $ff
	rst  $38                                         ; $4cbc: $ff
	sub  a                                           ; $4cbd: $97
	sbc  l                                           ; $4cbe: $9d
	call c, $1141                                    ; $4cbf: $dc $41 $11
	ld   de, $fdcf                                   ; $4cc2: $11 $cf $fd
	xor  e                                           ; $4cc5: $ab
	rst  $38                                         ; $4cc6: $ff
	rst  $38                                         ; $4cc7: $ff
	ret                                              ; $4cc8: $c9


	adc  e                                           ; $4cc9: $8b
	db   $dd                                         ; $4cca: $dd
	add  c                                           ; $4ccb: $81
	ld   de, $4f11                                   ; $4ccc: $11 $11 $4f
	rst  $38                                         ; $4ccf: $ff
	cp   c                                           ; $4cd0: $b9
	rst  JumpTable                                         ; $4cd1: $df
	rst  $38                                         ; $4cd2: $ff
	ei                                               ; $4cd3: $fb
	adc  c                                           ; $4cd4: $89
	cp   h                                           ; $4cd5: $bc
	or   l                                           ; $4cd6: $b5
	ld   de, $1911                                   ; $4cd7: $11 $11 $19
	rst  $38                                         ; $4cda: $ff
	ret  c                                           ; $4cdb: $d8

	xor  a                                           ; $4cdc: $af
	rst  $38                                         ; $4cdd: $ff
	rst  $38                                         ; $4cde: $ff
	xor  c                                           ; $4cdf: $a9
	sbc  e                                           ; $4ce0: $9b
	cp   c                                           ; $4ce1: $b9
	ld   sp, $1111                                   ; $4ce2: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ce5: $cf
	db   $fc                                         ; $4ce6: $fc
	adc  h                                           ; $4ce7: $8c
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	jp   hl                                          ; $4cea: $e9


	ld   a, d                                        ; $4ceb: $7a
	call z, $1182                                    ; $4cec: $cc $82 $11
	ld   de, $ff1d                                   ; $4cef: $11 $1d $ff
	cp   c                                           ; $4cf2: $b9
	rst  $28                                         ; $4cf3: $ef
	rst  $38                                         ; $4cf4: $ff
	db   $fc                                         ; $4cf5: $fc
	sbc  b                                           ; $4cf6: $98
	xor  l                                           ; $4cf7: $ad
	rst  ToBoot                                         ; $4cf8: $c7
	ld   de, $1111                                   ; $4cf9: $11 $11 $11
	rst  $38                                         ; $4cfc: $ff
	db   $fc                                         ; $4cfd: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cfe: $cf
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	or   a                                           ; $4d01: $b7
	adc  h                                           ; $4d02: $8c
	db   $db                                         ; $4d03: $db
	ld   h, c                                        ; $4d04: $61
	ld   de, $4f11                                   ; $4d05: $11 $11 $4f
	rst  $38                                         ; $4d08: $ff
	call c, $ffff                                    ; $4d09: $dc $ff $ff
	ld   a, [$de78]                                  ; $4d0c: $fa $78 $de
	and  l                                           ; $4d0f: $a5
	ld   de, $1711                                   ; $4d10: $11 $11 $17
	rst  $38                                         ; $4d13: $ff
	db   $fd                                         ; $4d14: $fd
	rst  JumpTable                                         ; $4d15: $df
	rst  $38                                         ; $4d16: $ff
	db   $fd                                         ; $4d17: $fd
	add  [hl]                                        ; $4d18: $86
	sbc  l                                           ; $4d19: $9d
	ld   [$1151], a                                  ; $4d1a: $ea $51 $11
	ld   de, $ff7f                                   ; $4d1d: $11 $7f $ff
	xor  $ff                                         ; $4d20: $ee $ff
	rst  $38                                         ; $4d22: $ff
	sub  $59                                         ; $4d23: $d6 $59
	xor  $b5                                         ; $4d25: $ee $b5
	ld   de, $1711                                   ; $4d27: $11 $11 $17
	rst  $38                                         ; $4d2a: $ff
	cp   $ff                                         ; $4d2b: $fe $ff
	rst  $38                                         ; $4d2d: $ff
	ei                                               ; $4d2e: $fb
	ld   d, l                                        ; $4d2f: $55
	sbc  a                                           ; $4d30: $9f
	db   $fc                                         ; $4d31: $fc
	ld   [hl], c                                     ; $4d32: $71
	ld   de, $4f11                                   ; $4d33: $11 $11 $4f
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	and  l                                           ; $4d3a: $a5
	ld   e, c                                        ; $4d3b: $59
	rst  $28                                         ; $4d3c: $ef
	ret  c                                           ; $4d3d: $d8

	ld   de, $1111                                   ; $4d3e: $11 $11 $11
	rst  $38                                         ; $4d41: $ff
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	db   $fc                                         ; $4d45: $fc
	ld   d, h                                        ; $4d46: $54
	adc  [hl]                                        ; $4d47: $8e
	rst  $38                                         ; $4d48: $ff
	or   d                                           ; $4d49: $b2
	ld   de, $1911                                   ; $4d4a: $11 $11 $19
	rst  $38                                         ; $4d4d: $ff
	rst  $38                                         ; $4d4e: $ff
	rst  $38                                         ; $4d4f: $ff
	rst  $38                                         ; $4d50: $ff
	rst  $20                                         ; $4d51: $e7
	ld   b, a                                        ; $4d52: $47
	rst  $28                                         ; $4d53: $ef
	db   $fc                                         ; $4d54: $fc
	ld   h, c                                        ; $4d55: $61
	ld   de, $2f11                                   ; $4d56: $11 $11 $2f
	rst  $38                                         ; $4d59: $ff
	rst  $38                                         ; $4d5a: $ff
	rst  $38                                         ; $4d5b: $ff
	rst  $38                                         ; $4d5c: $ff
	and  l                                           ; $4d5d: $a5
	ld   e, d                                        ; $4d5e: $5a
	rst  $38                                         ; $4d5f: $ff
	ei                                               ; $4d60: $fb
	ld   hl, $1111                                   ; $4d61: $21 $11 $11
	adc  a                                           ; $4d64: $8f
	rst  $38                                         ; $4d65: $ff
	rst  $38                                         ; $4d66: $ff
	rst  $38                                         ; $4d67: $ff
	cp   $74                                         ; $4d68: $fe $74
	ld   a, l                                        ; $4d6a: $7d
	rst  $38                                         ; $4d6b: $ff
	ret  c                                           ; $4d6c: $d8

	ld   de, $1111                                   ; $4d6d: $11 $11 $11
	xor  a                                           ; $4d70: $af
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	db   $fc                                         ; $4d74: $fc
	ld   h, l                                        ; $4d75: $65
	xor  [hl]                                        ; $4d76: $ae
	rst  $38                                         ; $4d77: $ff
	jp   hl                                          ; $4d78: $e9


	ld   de, $1111                                   ; $4d79: $11 $11 $11
	ld   l, a                                        ; $4d7c: $6f
	rst  $38                                         ; $4d7d: $ff
	rst  $38                                         ; $4d7e: $ff
	rst  $38                                         ; $4d7f: $ff
	db   $fc                                         ; $4d80: $fc
	halt                                             ; $4d81: $76
	cp   [hl]                                        ; $4d82: $be
	rst  $38                                         ; $4d83: $ff
	rst  $20                                         ; $4d84: $e7
	ld   de, $1111                                   ; $4d85: $11 $11 $11
	sbc  a                                           ; $4d88: $9f
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	rst  $38                                         ; $4d8b: $ff
	db   $fc                                         ; $4d8c: $fc
	ld   h, [hl]                                     ; $4d8d: $66
	xor  a                                           ; $4d8e: $af
	rst  $38                                         ; $4d8f: $ff
	reti                                             ; $4d90: $d9


	ld   de, $1111                                   ; $4d91: $11 $11 $11
	ld   c, h                                        ; $4d94: $4c
	rst  $38                                         ; $4d95: $ff
	rst  $38                                         ; $4d96: $ff
	rst  $38                                         ; $4d97: $ff
	rst  $38                                         ; $4d98: $ff
	rst  ToBoot                                         ; $4d99: $c7
	sbc  h                                           ; $4d9a: $9c
	rst  $38                                         ; $4d9b: $ff
	ei                                               ; $4d9c: $fb
	ld   de, $1111                                   ; $4d9d: $11 $11 $11
	dec  d                                           ; $4da0: $15
	ld   a, l                                        ; $4da1: $7d
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	rst  $38                                         ; $4da4: $ff
	or   [hl]                                        ; $4da5: $b6
	sbc  h                                           ; $4da6: $9c
	rst  $38                                         ; $4da7: $ff
	ei                                               ; $4da8: $fb
	ld   de, $1111                                   ; $4da9: $11 $11 $11
	inc  b                                           ; $4dac: $04
	sbc  l                                           ; $4dad: $9d
	rst  $38                                         ; $4dae: $ff
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	sub  l                                           ; $4db1: $95
	ld   a, h                                        ; $4db2: $7c
	rst  $38                                         ; $4db3: $ff
	ld   a, [$1111]                                  ; $4db4: $fa $11 $11
	ld   de, $8d25                                   ; $4db7: $11 $25 $8d
	rst  $38                                         ; $4dba: $ff
	rst  $38                                         ; $4dbb: $ff
	ld   a, [$8f12]                                  ; $4dbc: $fa $12 $8f
	rst  $38                                         ; $4dbf: $ff
	ld   [hl], c                                     ; $4dc0: $71
	ld   de, $1311                                   ; $4dc1: $11 $11 $13
	sbc  h                                           ; $4dc4: $9c
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	ei                                               ; $4dc7: $fb
	ld   de, $fd4e                                   ; $4dc8: $11 $4e $fd
	ld   sp, $1111                                   ; $4dcb: $31 $11 $11
	ld   c, c                                        ; $4dce: $49
	rst  $38                                         ; $4dcf: $ff
	rst  $38                                         ; $4dd0: $ff
	rst  $38                                         ; $4dd1: $ff
	or   e                                           ; $4dd2: $b3
	daa                                              ; $4dd3: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dd4: $cf
	ret  c                                           ; $4dd5: $d8

	ld   hl, $1111                                   ; $4dd6: $21 $11 $11
	inc  l                                           ; $4dd9: $2c
	rst  $38                                         ; $4dda: $ff
	rst  $38                                         ; $4ddb: $ff
	rst  $38                                         ; $4ddc: $ff
	cp   $65                                         ; $4ddd: $fe $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddf: $cf
	rst  $38                                         ; $4de0: $ff
	ld   [hl], c                                     ; $4de1: $71
	ld   de, $1111                                   ; $4de2: $11 $11 $11
	sbc  h                                           ; $4de5: $9c
	cp   h                                           ; $4de6: $bc
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	ld   a, [$ef58]                                  ; $4de9: $fa $58 $ef
	rst  $38                                         ; $4dec: $ff
	add  c                                           ; $4ded: $81
	ld   de, $1111                                   ; $4dee: $11 $11 $11
	ld   b, h                                        ; $4df1: $44
	ld   l, l                                        ; $4df2: $6d
	rst  $38                                         ; $4df3: $ff
	rst  $38                                         ; $4df4: $ff
	db   $f4                                         ; $4df5: $f4
	ld   a, [hl-]                                    ; $4df6: $3a
	rst  $38                                         ; $4df7: $ff
	db   $fd                                         ; $4df8: $fd
	ld   [hl], c                                     ; $4df9: $71
	ld   de, $1111                                   ; $4dfa: $11 $11 $11
	ld   b, a                                        ; $4dfd: $47
	xor  a                                           ; $4dfe: $af
	rst  $38                                         ; $4dff: $ff
	rst  $38                                         ; $4e00: $ff
	sub  l                                           ; $4e01: $95
	adc  [hl]                                        ; $4e02: $8e
	rst  $38                                         ; $4e03: $ff
	rst  $10                                         ; $4e04: $d7
	ld   de, $1111                                   ; $4e05: $11 $11 $11
	inc  h                                           ; $4e08: $24
	ld   d, [hl]                                     ; $4e09: $56
	cp   a                                           ; $4e0a: $bf
	rst  $38                                         ; $4e0b: $ff
	db   $fc                                         ; $4e0c: $fc
	sbc  d                                           ; $4e0d: $9a
	rst  $28                                         ; $4e0e: $ef
	db   $fd                                         ; $4e0f: $fd
	xor  b                                           ; $4e10: $a8
	ld   b, c                                        ; $4e11: $41
	ld   de, $1811                                   ; $4e12: $11 $11 $18
	cp   h                                           ; $4e15: $bc
	rst  $28                                         ; $4e16: $ef
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	ld   [hl], h                                     ; $4e19: $74
	xor  a                                           ; $4e1a: $af
	rst  $38                                         ; $4e1b: $ff
	or   [hl]                                        ; $4e1c: $b6
	ld   de, $1111                                   ; $4e1d: $11 $11 $11
	ld   [de], a                                     ; $4e20: $12
	ld   l, c                                        ; $4e21: $69
	rst  JumpTable                                         ; $4e22: $df
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	ret  z                                           ; $4e25: $c8

	xor  [hl]                                        ; $4e26: $ae
	rst  $38                                         ; $4e27: $ff
	ei                                               ; $4e28: $fb
	add  e                                           ; $4e29: $83
	ld   de, $1111                                   ; $4e2a: $11 $11 $11
	inc  [hl]                                        ; $4e2d: $34
	ld   e, b                                        ; $4e2e: $58
	rst  $38                                         ; $4e2f: $ff
	rst  $38                                         ; $4e30: $ff
	ld   a, [$ff69]                                  ; $4e31: $fa $69 $ff
	db   $fd                                         ; $4e34: $fd
	sub  [hl]                                        ; $4e35: $96
	ld   hl, $1111                                   ; $4e36: $21 $11 $11
	ld   de, $6d11                                   ; $4e39: $11 $11 $6d
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	ld   [$efcc], a                                  ; $4e3e: $ea $cc $ef
	call c, $2196                                    ; $4e41: $dc $96 $21
	ld   de, $1111                                   ; $4e44: $11 $11 $11
	ld   de, $ff7e                                   ; $4e47: $11 $7e $ff
	rst  $38                                         ; $4e4a: $ff
	db   $fc                                         ; $4e4b: $fc
	cp   e                                           ; $4e4c: $bb
	call z, $a7cc                                    ; $4e4d: $cc $cc $a7
	ld   b, c                                        ; $4e50: $41
	ld   de, $1111                                   ; $4e51: $11 $11 $11
	ld   de, $cf15                                   ; $4e54: $11 $15 $cf
	rst  $38                                         ; $4e57: $ff
	rst  $38                                         ; $4e58: $ff
	db   $db                                         ; $4e59: $db
	xor  h                                           ; $4e5a: $ac
	cp   l                                           ; $4e5b: $bd
	res  4, [hl]                                     ; $4e5c: $cb $a6
	ld   b, c                                        ; $4e5e: $41
	ld   de, $0111                                   ; $4e5f: $11 $11 $01
	ld   de, $9e25                                   ; $4e62: $11 $25 $9e
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	res  5, h                                        ; $4e67: $cb $ac
	db   $dd                                         ; $4e69: $dd
	db   $ec                                         ; $4e6a: $ec
	cp   d                                           ; $4e6b: $ba
	ld   [hl], l                                     ; $4e6c: $75
	ld   sp, $2211                                   ; $4e6d: $31 $11 $22
	ld   hl, $3611                                   ; $4e70: $21 $11 $36
	xor  e                                           ; $4e73: $ab
	rst  JumpTable                                         ; $4e74: $df
	rst  $38                                         ; $4e75: $ff
	sbc  $de                                         ; $4e76: $de $de
	xor  $dc                                         ; $4e78: $ee $dc
	sbc  c                                           ; $4e7a: $99
	halt                                             ; $4e7b: $76
	ld   b, e                                        ; $4e7c: $43
	ld   b, l                                        ; $4e7d: $45
	ld   sp, $1121                                   ; $4e7e: $31 $21 $11
	dec  [hl]                                        ; $4e81: $35
	ld   l, d                                        ; $4e82: $6a
	xor  e                                           ; $4e83: $ab
	sbc  $dc                                         ; $4e84: $de $dc
	cp   e                                           ; $4e86: $bb
	cp   h                                           ; $4e87: $bc
	cp   e                                           ; $4e88: $bb
	cp   e                                           ; $4e89: $bb
	xor  b                                           ; $4e8a: $a8
	halt                                             ; $4e8b: $76
	ld   h, l                                        ; $4e8c: $65
	ld   h, a                                        ; $4e8d: $67
	ld   h, [hl]                                     ; $4e8e: $66
	ld   h, l                                        ; $4e8f: $65
	inc  sp                                          ; $4e90: $33
	ld   b, l                                        ; $4e91: $45
	ld   d, a                                        ; $4e92: $57
	add  a                                           ; $4e93: $87
	sbc  c                                           ; $4e94: $99
	sbc  d                                           ; $4e95: $9a
	xor  d                                           ; $4e96: $aa
	sbc  b                                           ; $4e97: $98
	xor  e                                           ; $4e98: $ab
	cp   h                                           ; $4e99: $bc
	xor  e                                           ; $4e9a: $ab
	sbc  b                                           ; $4e9b: $98
	xor  c                                           ; $4e9c: $a9
	adc  b                                           ; $4e9d: $88
	adc  c                                           ; $4e9e: $89
	add  [hl]                                        ; $4e9f: $86
	ld   h, [hl]                                     ; $4ea0: $66
	ld   d, h                                        ; $4ea1: $54
	ld   d, l                                        ; $4ea2: $55
	ld   d, l                                        ; $4ea3: $55
	ld   l, b                                        ; $4ea4: $68
	ld   a, b                                        ; $4ea5: $78
	sbc  c                                           ; $4ea6: $99
	sbc  d                                           ; $4ea7: $9a
	cp   d                                           ; $4ea8: $ba
	cp   c                                           ; $4ea9: $b9
	xor  e                                           ; $4eaa: $ab
	xor  e                                           ; $4eab: $ab
	sbc  d                                           ; $4eac: $9a
	ld   a, b                                        ; $4ead: $78
	sub  a                                           ; $4eae: $97
	sub  [hl]                                        ; $4eaf: $96
	halt                                             ; $4eb0: $76
	sub  a                                           ; $4eb1: $97
	ld   [hl], a                                     ; $4eb2: $77
	ld   l, b                                        ; $4eb3: $68
	ld   h, a                                        ; $4eb4: $67
	add  a                                           ; $4eb5: $87
	ld   a, c                                        ; $4eb6: $79
	sbc  c                                           ; $4eb7: $99
	add  a                                           ; $4eb8: $87
	add  a                                           ; $4eb9: $87
	ld   a, b                                        ; $4eba: $78
	add  a                                           ; $4ebb: $87
	adc  c                                           ; $4ebc: $89
	sbc  d                                           ; $4ebd: $9a
	sbc  c                                           ; $4ebe: $99
	sbc  b                                           ; $4ebf: $98
	sbc  b                                           ; $4ec0: $98
	adc  b                                           ; $4ec1: $88
	sbc  c                                           ; $4ec2: $99
	adc  b                                           ; $4ec3: $88
	sbc  b                                           ; $4ec4: $98
	sub  a                                           ; $4ec5: $97
	halt                                             ; $4ec6: $76
	ld   [hl], a                                     ; $4ec7: $77
	ld   a, b                                        ; $4ec8: $78
	ld   l, b                                        ; $4ec9: $68
	ld   a, c                                        ; $4eca: $79
	sub  a                                           ; $4ecb: $97
	adc  b                                           ; $4ecc: $88
	sbc  c                                           ; $4ecd: $99
	adc  b                                           ; $4ece: $88
	sbc  c                                           ; $4ecf: $99
	adc  b                                           ; $4ed0: $88
	adc  b                                           ; $4ed1: $88
	ld   a, b                                        ; $4ed2: $78
	sbc  c                                           ; $4ed3: $99
	sbc  c                                           ; $4ed4: $99
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	add  a                                           ; $4ed7: $87
	adc  b                                           ; $4ed8: $88
	ld   [hl], a                                     ; $4ed9: $77
	ld   [hl], a                                     ; $4eda: $77
	adc  b                                           ; $4edb: $88
	sub  a                                           ; $4edc: $97
	ld   a, b                                        ; $4edd: $78
	sbc  c                                           ; $4ede: $99
	sub  a                                           ; $4edf: $97
	adc  c                                           ; $4ee0: $89
	sbc  b                                           ; $4ee1: $98
	ld   a, b                                        ; $4ee2: $78
	adc  b                                           ; $4ee3: $88
	add  a                                           ; $4ee4: $87
	ld   [hl], a                                     ; $4ee5: $77
	ld   a, b                                        ; $4ee6: $78
	add  a                                           ; $4ee7: $87
	ld   [hl], a                                     ; $4ee8: $77
	adc  b                                           ; $4ee9: $88
	sbc  c                                           ; $4eea: $99
	adc  b                                           ; $4eeb: $88
	sbc  b                                           ; $4eec: $98
	adc  b                                           ; $4eed: $88
	adc  b                                           ; $4eee: $88
	adc  c                                           ; $4eef: $89
	add  a                                           ; $4ef0: $87
	add  a                                           ; $4ef1: $87
	ld   [hl], a                                     ; $4ef2: $77
	ld   [hl], a                                     ; $4ef3: $77
	adc  b                                           ; $4ef4: $88
	ld   [hl], a                                     ; $4ef5: $77
	adc  b                                           ; $4ef6: $88
	sbc  b                                           ; $4ef7: $98
	sbc  b                                           ; $4ef8: $98
	sbc  b                                           ; $4ef9: $98
	sbc  b                                           ; $4efa: $98
	adc  c                                           ; $4efb: $89
	sbc  b                                           ; $4efc: $98
	add  a                                           ; $4efd: $87
	ld   a, b                                        ; $4efe: $78
	add  a                                           ; $4eff: $87
	ld   [hl], a                                     ; $4f00: $77
	ld   a, b                                        ; $4f01: $78
	ld   [hl], a                                     ; $4f02: $77
	ld   a, b                                        ; $4f03: $78
	sbc  b                                           ; $4f04: $98
	sbc  c                                           ; $4f05: $99
	adc  c                                           ; $4f06: $89
	sbc  b                                           ; $4f07: $98
	adc  b                                           ; $4f08: $88
	sbc  b                                           ; $4f09: $98
	adc  c                                           ; $4f0a: $89
	ld   a, b                                        ; $4f0b: $78
	add  a                                           ; $4f0c: $87
	ld   [hl], a                                     ; $4f0d: $77
	ld   a, b                                        ; $4f0e: $78
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  c                                           ; $4f11: $89
	adc  b                                           ; $4f12: $88
	adc  b                                           ; $4f13: $88
	adc  b                                           ; $4f14: $88
	adc  c                                           ; $4f15: $89
	adc  c                                           ; $4f16: $89
	adc  c                                           ; $4f17: $89
	add  a                                           ; $4f18: $87
	adc  b                                           ; $4f19: $88
	adc  b                                           ; $4f1a: $88
	add  a                                           ; $4f1b: $87
	adc  b                                           ; $4f1c: $88
	adc  b                                           ; $4f1d: $88
	adc  b                                           ; $4f1e: $88
	add  a                                           ; $4f1f: $87
	add  a                                           ; $4f20: $87
	adc  b                                           ; $4f21: $88
	adc  b                                           ; $4f22: $88
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	adc  b                                           ; $4f26: $88
	sbc  b                                           ; $4f27: $98
	sbc  b                                           ; $4f28: $98
	adc  b                                           ; $4f29: $88
	sbc  b                                           ; $4f2a: $98
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	ld   a, b                                        ; $4f2f: $78
	adc  b                                           ; $4f30: $88
	ld   [hl], a                                     ; $4f31: $77
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	adc  c                                           ; $4f34: $89
	sbc  c                                           ; $4f35: $99
	sbc  c                                           ; $4f36: $99
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	add  a                                           ; $4f3a: $87
	ld   a, b                                        ; $4f3b: $78
	adc  b                                           ; $4f3c: $88
	ld   a, b                                        ; $4f3d: $78
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	adc  b                                           ; $4f40: $88
	adc  b                                           ; $4f41: $88
	adc  b                                           ; $4f42: $88
	sbc  b                                           ; $4f43: $98
	sbc  b                                           ; $4f44: $98
	adc  b                                           ; $4f45: $88
	ld   a, b                                        ; $4f46: $78
	adc  b                                           ; $4f47: $88
	ld   [hl], a                                     ; $4f48: $77
	ld   [hl], a                                     ; $4f49: $77
	ld   a, b                                        ; $4f4a: $78
	add  a                                           ; $4f4b: $87
	adc  b                                           ; $4f4c: $88
	adc  b                                           ; $4f4d: $88
	sbc  c                                           ; $4f4e: $99
	sbc  c                                           ; $4f4f: $99
	sbc  c                                           ; $4f50: $99
	adc  b                                           ; $4f51: $88
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	ld   [hl], a                                     ; $4f55: $77
	add  a                                           ; $4f56: $87
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	adc  c                                           ; $4f5a: $89
	sbc  c                                           ; $4f5b: $99
	adc  b                                           ; $4f5c: $88
	adc  b                                           ; $4f5d: $88
	adc  c                                           ; $4f5e: $89
	ld   [hl], a                                     ; $4f5f: $77
	add  a                                           ; $4f60: $87
	add  a                                           ; $4f61: $87
	ld   a, b                                        ; $4f62: $78
	adc  b                                           ; $4f63: $88
	adc  b                                           ; $4f64: $88
	adc  c                                           ; $4f65: $89
	sbc  b                                           ; $4f66: $98
	adc  b                                           ; $4f67: $88
	adc  b                                           ; $4f68: $88
	adc  b                                           ; $4f69: $88
	ld   a, b                                        ; $4f6a: $78
	adc  b                                           ; $4f6b: $88
	add  a                                           ; $4f6c: $87
	ld   a, b                                        ; $4f6d: $78
	adc  b                                           ; $4f6e: $88
	adc  b                                           ; $4f6f: $88
	adc  b                                           ; $4f70: $88
	adc  c                                           ; $4f71: $89
	adc  b                                           ; $4f72: $88
	adc  c                                           ; $4f73: $89
	adc  b                                           ; $4f74: $88
	adc  b                                           ; $4f75: $88
	add  a                                           ; $4f76: $87
	adc  b                                           ; $4f77: $88
	adc  b                                           ; $4f78: $88
	adc  b                                           ; $4f79: $88
	adc  b                                           ; $4f7a: $88
	adc  b                                           ; $4f7b: $88
	adc  b                                           ; $4f7c: $88
	sbc  b                                           ; $4f7d: $98
	adc  c                                           ; $4f7e: $89
	add  a                                           ; $4f7f: $87
	adc  b                                           ; $4f80: $88
	adc  b                                           ; $4f81: $88
	add  a                                           ; $4f82: $87
	adc  b                                           ; $4f83: $88
	adc  b                                           ; $4f84: $88
	adc  b                                           ; $4f85: $88
	sbc  b                                           ; $4f86: $98
	sbc  b                                           ; $4f87: $98
	adc  b                                           ; $4f88: $88
	adc  c                                           ; $4f89: $89
	adc  b                                           ; $4f8a: $88
	adc  b                                           ; $4f8b: $88
	ld   a, b                                        ; $4f8c: $78
	adc  b                                           ; $4f8d: $88
	add  a                                           ; $4f8e: $87
	adc  b                                           ; $4f8f: $88
	adc  b                                           ; $4f90: $88
	ld   a, b                                        ; $4f91: $78
	adc  b                                           ; $4f92: $88
	adc  c                                           ; $4f93: $89
	sbc  b                                           ; $4f94: $98
	adc  b                                           ; $4f95: $88
	adc  b                                           ; $4f96: $88
	add  a                                           ; $4f97: $87
	adc  c                                           ; $4f98: $89
	sbc  c                                           ; $4f99: $99
	adc  b                                           ; $4f9a: $88
	ld   [hl], a                                     ; $4f9b: $77
	add  a                                           ; $4f9c: $87
	ld   a, b                                        ; $4f9d: $78
	adc  b                                           ; $4f9e: $88
	add  a                                           ; $4f9f: $87
	adc  c                                           ; $4fa0: $89
	sbc  b                                           ; $4fa1: $98
	add  a                                           ; $4fa2: $87
	add  a                                           ; $4fa3: $87
	adc  c                                           ; $4fa4: $89
	adc  c                                           ; $4fa5: $89
	adc  b                                           ; $4fa6: $88
	add  a                                           ; $4fa7: $87
	ld   [hl], a                                     ; $4fa8: $77
	adc  c                                           ; $4fa9: $89
	adc  b                                           ; $4faa: $88
	ld   a, b                                        ; $4fab: $78
	adc  b                                           ; $4fac: $88
	ld   a, b                                        ; $4fad: $78
	adc  b                                           ; $4fae: $88
	adc  b                                           ; $4faf: $88
	adc  b                                           ; $4fb0: $88
	adc  b                                           ; $4fb1: $88
	adc  b                                           ; $4fb2: $88
	ld   [hl], a                                     ; $4fb3: $77
	sbc  c                                           ; $4fb4: $99
	sbc  c                                           ; $4fb5: $99
	adc  b                                           ; $4fb6: $88
	adc  b                                           ; $4fb7: $88
	sbc  c                                           ; $4fb8: $99
	adc  c                                           ; $4fb9: $89
	sbc  c                                           ; $4fba: $99
	add  a                                           ; $4fbb: $87
	ld   a, b                                        ; $4fbc: $78
	adc  b                                           ; $4fbd: $88
	sub  a                                           ; $4fbe: $97
	adc  b                                           ; $4fbf: $88
	adc  b                                           ; $4fc0: $88
	ld   a, b                                        ; $4fc1: $78
	adc  c                                           ; $4fc2: $89
	sbc  b                                           ; $4fc3: $98
	adc  b                                           ; $4fc4: $88
	sbc  b                                           ; $4fc5: $98
	adc  b                                           ; $4fc6: $88
	sub  a                                           ; $4fc7: $97
	adc  b                                           ; $4fc8: $88
	adc  b                                           ; $4fc9: $88
	ld   a, b                                        ; $4fca: $78
	adc  c                                           ; $4fcb: $89
	adc  b                                           ; $4fcc: $88
	add  a                                           ; $4fcd: $87
	adc  b                                           ; $4fce: $88
	adc  b                                           ; $4fcf: $88
	adc  b                                           ; $4fd0: $88
	adc  b                                           ; $4fd1: $88
	sub  a                                           ; $4fd2: $97
	sbc  c                                           ; $4fd3: $99
	add  a                                           ; $4fd4: $87
	ld   a, b                                        ; $4fd5: $78
	adc  b                                           ; $4fd6: $88
	add  a                                           ; $4fd7: $87
	ld   a, b                                        ; $4fd8: $78
	adc  b                                           ; $4fd9: $88
	add  a                                           ; $4fda: $87
	adc  b                                           ; $4fdb: $88
	ld   a, b                                        ; $4fdc: $78
	adc  b                                           ; $4fdd: $88
	adc  c                                           ; $4fde: $89
	adc  b                                           ; $4fdf: $88
	sub  a                                           ; $4fe0: $97
	ld   [hl], a                                     ; $4fe1: $77
	adc  b                                           ; $4fe2: $88
	adc  b                                           ; $4fe3: $88
	ld   a, b                                        ; $4fe4: $78
	sbc  c                                           ; $4fe5: $99
	add  a                                           ; $4fe6: $87
	ld   a, b                                        ; $4fe7: $78
	add  a                                           ; $4fe8: $87
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	adc  b                                           ; $4feb: $88
	ld   [hl], a                                     ; $4fec: $77
	ld   a, c                                        ; $4fed: $79
	sbc  b                                           ; $4fee: $98
	ld   a, b                                        ; $4fef: $78
	sbc  b                                           ; $4ff0: $98
	ld   [hl], a                                     ; $4ff1: $77
	add  a                                           ; $4ff2: $87
	sbc  b                                           ; $4ff3: $98
	ld   a, b                                        ; $4ff4: $78
	adc  c                                           ; $4ff5: $89
	add  a                                           ; $4ff6: $87
	ld   h, a                                        ; $4ff7: $67
	ld   a, c                                        ; $4ff8: $79
	adc  b                                           ; $4ff9: $88
	sub  a                                           ; $4ffa: $97
	adc  b                                           ; $4ffb: $88
	adc  c                                           ; $4ffc: $89

Call_0f0_4ffd:
	sbc  c                                           ; $4ffd: $99
	sbc  c                                           ; $4ffe: $99
	adc  c                                           ; $4fff: $89
	add  a                                           ; $5000: $87
	ld   [hl], a                                     ; $5001: $77
	xor  b                                           ; $5002: $a8
	ld   [hl], a                                     ; $5003: $77
	ld   [hl], a                                     ; $5004: $77
	add  a                                           ; $5005: $87
	sbc  c                                           ; $5006: $99
	adc  c                                           ; $5007: $89
	adc  c                                           ; $5008: $89
	ld   [hl], a                                     ; $5009: $77
	adc  b                                           ; $500a: $88
	ld   l, b                                        ; $500b: $68
	add  a                                           ; $500c: $87
	ld   [hl], a                                     ; $500d: $77
	sbc  b                                           ; $500e: $98
	ld   a, b                                        ; $500f: $78
	ld   a, b                                        ; $5010: $78
	adc  b                                           ; $5011: $88
	ld   [hl], a                                     ; $5012: $77
	adc  c                                           ; $5013: $89
	ld   a, d                                        ; $5014: $7a
	add  a                                           ; $5015: $87
	add  a                                           ; $5016: $87
	sub  a                                           ; $5017: $97
	adc  c                                           ; $5018: $89
	ld   [hl], a                                     ; $5019: $77
	ld   a, c                                        ; $501a: $79
	ld   [hl], a                                     ; $501b: $77
	adc  b                                           ; $501c: $88
	sub  a                                           ; $501d: $97
	add  a                                           ; $501e: $87
	adc  b                                           ; $501f: $88
	add  a                                           ; $5020: $87
	sbc  b                                           ; $5021: $98
	adc  b                                           ; $5022: $88
	ld   a, b                                        ; $5023: $78
	ld   l, c                                        ; $5024: $69
	ld   a, c                                        ; $5025: $79
	ld   [hl], a                                     ; $5026: $77
	sbc  c                                           ; $5027: $99
	sub  a                                           ; $5028: $97
	sub  [hl]                                        ; $5029: $96
	add  a                                           ; $502a: $87
	adc  c                                           ; $502b: $89
	ld   a, c                                        ; $502c: $79
	ld   a, b                                        ; $502d: $78
	ld   a, c                                        ; $502e: $79
	ld   a, c                                        ; $502f: $79
	sbc  b                                           ; $5030: $98
	adc  b                                           ; $5031: $88
	add  a                                           ; $5032: $87
	adc  b                                           ; $5033: $88
	sub  a                                           ; $5034: $97
	adc  b                                           ; $5035: $88
	adc  d                                           ; $5036: $8a
	ld   a, b                                        ; $5037: $78
	ld   a, c                                        ; $5038: $79
	sbc  c                                           ; $5039: $99
	sub  a                                           ; $503a: $97
	sub  a                                           ; $503b: $97
	add  a                                           ; $503c: $87
	sbc  b                                           ; $503d: $98
	ld   a, c                                        ; $503e: $79
	adc  c                                           ; $503f: $89
	ld   a, c                                        ; $5040: $79
	adc  c                                           ; $5041: $89
	adc  b                                           ; $5042: $88
	sbc  b                                           ; $5043: $98
	sbc  c                                           ; $5044: $99
	and  [hl]                                        ; $5045: $a6
	ld   a, b                                        ; $5046: $78
	sbc  c                                           ; $5047: $99
	ld   a, b                                        ; $5048: $78
	adc  b                                           ; $5049: $88
	adc  c                                           ; $504a: $89
	sbc  b                                           ; $504b: $98
	adc  b                                           ; $504c: $88
	xor  c                                           ; $504d: $a9
	sbc  b                                           ; $504e: $98
	adc  b                                           ; $504f: $88
	ld   [hl], a                                     ; $5050: $77
	ld   [hl], a                                     ; $5051: $77
	ld   a, b                                        ; $5052: $78
	adc  b                                           ; $5053: $88
	ld   a, c                                        ; $5054: $79
	sbc  b                                           ; $5055: $98
	adc  b                                           ; $5056: $88
	sbc  c                                           ; $5057: $99
	sbc  c                                           ; $5058: $99
	ld   a, b                                        ; $5059: $78
	ld   [hl], a                                     ; $505a: $77
	ld   a, c                                        ; $505b: $79
	sbc  e                                           ; $505c: $9b
	xor  c                                           ; $505d: $a9
	ld   [hl], a                                     ; $505e: $77
	sub  a                                           ; $505f: $97
	sbc  c                                           ; $5060: $99
	ld   a, b                                        ; $5061: $78
	add  a                                           ; $5062: $87
	ld   h, [hl]                                     ; $5063: $66
	ld   b, [hl]                                     ; $5064: $46
	ld   h, a                                        ; $5065: $67
	add  [hl]                                        ; $5066: $86
	halt                                             ; $5067: $76
	ld   [hl], a                                     ; $5068: $77
	sbc  c                                           ; $5069: $99
	sbc  b                                           ; $506a: $98
	sbc  d                                           ; $506b: $9a
	xor  e                                           ; $506c: $ab
	xor  d                                           ; $506d: $aa
	xor  e                                           ; $506e: $ab
	cp   e                                           ; $506f: $bb
	cp   d                                           ; $5070: $ba
	cp   e                                           ; $5071: $bb
	cp   b                                           ; $5072: $b8
	add  [hl]                                        ; $5073: $86
	ld   d, l                                        ; $5074: $55
	ld   d, l                                        ; $5075: $55
	inc  sp                                          ; $5076: $33
	ld   de, $3412                                   ; $5077: $11 $12 $34
	ld   h, a                                        ; $507a: $67
	sbc  c                                           ; $507b: $99
	xor  h                                           ; $507c: $ac
	adc  $ed                                         ; $507d: $ce $ed
	adc  $dd                                         ; $507f: $ce $dd
	call c, $dbcc                                    ; $5081: $dc $cc $db
	xor  c                                           ; $5084: $a9
	ld   a, b                                        ; $5085: $78
	ld   h, [hl]                                     ; $5086: $66
	ld   b, e                                        ; $5087: $43
	ld   de, $1111                                   ; $5088: $11 $11 $11
	inc  [hl]                                        ; $508b: $34
	ld   [hl], a                                     ; $508c: $77
	sbc  l                                           ; $508d: $9d
	adc  $fc                                         ; $508e: $ce $fc
	db   $ed                                         ; $5090: $ed
	xor  $ec                                         ; $5091: $ee $ec
	db   $dd                                         ; $5093: $dd
	adc  $db                                         ; $5094: $ce $db
	cp   c                                           ; $5096: $b9
	adc  c                                           ; $5097: $89
	add  l                                           ; $5098: $85
	ld   sp, $1111                                   ; $5099: $31 $11 $11
	ld   de, $7936                                   ; $509c: $11 $36 $79
	sbc  e                                           ; $509f: $9b
	rst  $38                                         ; $50a0: $ff
	cp   $9d                                         ; $50a1: $fe $9d
	call $cedc                                       ; $50a3: $cd $dc $ce
	db   $ed                                         ; $50a6: $ed
	ld   sp, hl                                      ; $50a7: $f9
	xor  d                                           ; $50a8: $aa
	sbc  d                                           ; $50a9: $9a
	ld   [hl], e                                     ; $50aa: $73
	ld   de, $1111                                   ; $50ab: $11 $11 $11
	inc  de                                          ; $50ae: $13
	adc  b                                           ; $50af: $88
	ld   a, e                                        ; $50b0: $7b
	sbc  $ff                                         ; $50b1: $de $ff
	db   $ec                                         ; $50b3: $ec
	sbc  l                                           ; $50b4: $9d
	db   $ec                                         ; $50b5: $ec
	jp   z, $ffbe                                    ; $50b6: $ca $be $ff

	rst  $20                                         ; $50b9: $e7
	ld   a, b                                        ; $50ba: $78
	adc  c                                           ; $50bb: $89
	ld   sp, $1111                                   ; $50bc: $31 $11 $11
	ld   de, $6935                                   ; $50bf: $11 $35 $69
	db   $dd                                         ; $50c2: $dd
	rst  $38                                         ; $50c3: $ff
	rst  $38                                         ; $50c4: $ff
	cp   h                                           ; $50c5: $bc
	cp   l                                           ; $50c6: $bd
	cp   e                                           ; $50c7: $bb
	db   $db                                         ; $50c8: $db
	rst  $38                                         ; $50c9: $ff
	db   $eb                                         ; $50ca: $eb
	sbc  d                                           ; $50cb: $9a
	ld   a, c                                        ; $50cc: $79
	ld   d, d                                        ; $50cd: $52
	ld   de, $1111                                   ; $50ce: $11 $11 $11
	inc  d                                           ; $50d1: $14
	ld   e, d                                        ; $50d2: $5a
	sbc  l                                           ; $50d3: $9d
	rst  $38                                         ; $50d4: $ff
	rst  $38                                         ; $50d5: $ff
	db   $fd                                         ; $50d6: $fd
	db   $db                                         ; $50d7: $db
	jp   c, $cfbc                                    ; $50d8: $da $bc $cf

	db   $fd                                         ; $50db: $fd
	db   $db                                         ; $50dc: $db
	adc  d                                           ; $50dd: $8a
	ld   [hl], h                                     ; $50de: $74
	ld   sp, $1111                                   ; $50df: $31 $11 $11
	ld   de, $8a58                                   ; $50e2: $11 $58 $8a
	sbc  $ff                                         ; $50e5: $de $ff
	rst  $28                                         ; $50e7: $ef
	db   $db                                         ; $50e8: $db
	db   $dd                                         ; $50e9: $dd
	db   $db                                         ; $50ea: $db
	set  7, a                                        ; $50eb: $cb $ff
	rst  $38                                         ; $50ed: $ff
	sbc  b                                           ; $50ee: $98
	ld   l, b                                        ; $50ef: $68
	ld   h, d                                        ; $50f0: $62
	ld   de, $1111                                   ; $50f1: $11 $11 $11
	ld   d, $9c                                      ; $50f4: $16 $9c
	cp   e                                           ; $50f6: $bb
	rst  JumpTable                                         ; $50f7: $df
	rst  $38                                         ; $50f8: $ff
	db   $fd                                         ; $50f9: $fd
	cp   h                                           ; $50fa: $bc
	call $bfbc                                       ; $50fb: $cd $bc $bf
	rst  $38                                         ; $50fe: $ff
	ei                                               ; $50ff: $fb
	sub  [hl]                                        ; $5100: $96
	ld   h, h                                        ; $5101: $64
	ld   de, $1111                                   ; $5102: $11 $11 $11
	ld   de, $be79                                   ; $5105: $11 $79 $be
	db   $db                                         ; $5108: $db
	db   $fd                                         ; $5109: $fd
	rst  $28                                         ; $510a: $ef
	cp   h                                           ; $510b: $bc
	set  7, [hl]                                     ; $510c: $cb $fe
	cp   l                                           ; $510e: $bd
	rst  $28                                         ; $510f: $ef
	rst  $38                                         ; $5110: $ff
	reti                                             ; $5111: $d9


	ld   d, l                                        ; $5112: $55
	ld   b, c                                        ; $5113: $41
	ld   de, $1111                                   ; $5114: $11 $11 $11
	inc  de                                          ; $5117: $13
	sbc  e                                           ; $5118: $9b
	adc  a                                           ; $5119: $8f
	sbc  $fa                                         ; $511a: $de $fa
	db   $ec                                         ; $511c: $ec
	db   $ec                                         ; $511d: $ec
	call c, $dfcf                                    ; $511e: $dc $cf $df
	rst  $38                                         ; $5121: $ff
	db   $fd                                         ; $5122: $fd
	sub  $64                                         ; $5123: $d6 $64
	ld   de, $1111                                   ; $5125: $11 $11 $11
	ld   de, $ac47                                   ; $5128: $11 $47 $ac
	rst  JumpTable                                         ; $512b: $df
	sbc  $dc                                         ; $512c: $de $dc
	db   $ec                                         ; $512e: $ec
	call $fecc                                       ; $512f: $cd $cc $fe
	rst  $28                                         ; $5132: $ef
	rst  $38                                         ; $5133: $ff
	db   $fc                                         ; $5134: $fc
	sbc  b                                           ; $5135: $98
	ld   b, d                                        ; $5136: $42
	ld   de, $1111                                   ; $5137: $11 $11 $11
	ld   de, $cd6a                                   ; $513a: $11 $6a $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $513d: $cf
	adc  $cb                                         ; $513e: $ce $cb
	db   $db                                         ; $5140: $db
	call z, $eedd                                    ; $5141: $cc $dd $ee
	rst  $38                                         ; $5144: $ff
	rst  $38                                         ; $5145: $ff
	ei                                               ; $5146: $fb
	add  [hl]                                        ; $5147: $86
	ld   d, d                                        ; $5148: $52
	ld   de, $1111                                   ; $5149: $11 $11 $11
	ld   [de], a                                     ; $514c: $12
	ld   e, d                                        ; $514d: $5a
	call $beff                                       ; $514e: $cd $ff $be
	cp   d                                           ; $5151: $ba
	db   $eb                                         ; $5152: $eb
	call c, $eecd                                    ; $5153: $dc $cd $ee
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	db   $db                                         ; $5158: $db
	and  [hl]                                        ; $5159: $a6
	ld   b, d                                        ; $515a: $42
	ld   de, $1111                                   ; $515b: $11 $11 $11
	ld   de, $cd7b                                   ; $515e: $11 $7b $cd
	rst  JumpTable                                         ; $5161: $df
	db   $ed                                         ; $5162: $ed
	jp   c, $bdcc                                    ; $5163: $da $cc $bd

	cp   h                                           ; $5166: $bc
	sbc  $ef                                         ; $5167: $de $ef
	rst  $38                                         ; $5169: $ff
	db   $fc                                         ; $516a: $fc
	xor  b                                           ; $516b: $a8
	ld   d, e                                        ; $516c: $53
	ld   de, $1111                                   ; $516d: $11 $11 $11
	ld   de, $9a25                                   ; $5170: $11 $25 $9a
	cp   l                                           ; $5173: $bd
	adc  $db                                         ; $5174: $ce $db
	call z, $bbbc                                    ; $5176: $cc $bc $bb
	call $efcd                                       ; $5179: $cd $cd $ef
	cp   $da                                         ; $517c: $fe $da
	add  [hl]                                        ; $517e: $86
	ld   d, h                                        ; $517f: $54
	ld   sp, $1111                                   ; $5180: $31 $11 $11
	ld   de, $6625                                   ; $5183: $11 $25 $66
	adc  c                                           ; $5186: $89
	cp   e                                           ; $5187: $bb
	cp   e                                           ; $5188: $bb
	call z, $abdd                                    ; $5189: $cc $dd $ab
	sbc  c                                           ; $518c: $99
	xor  d                                           ; $518d: $aa
	xor  e                                           ; $518e: $ab
	sbc  c                                           ; $518f: $99
	sub  a                                           ; $5190: $97
	xor  h                                           ; $5191: $ac
	cp   c                                           ; $5192: $b9
	add  [hl]                                        ; $5193: $86
	ld   l, b                                        ; $5194: $68
	xor  c                                           ; $5195: $a9
	ld   d, l                                        ; $5196: $55

Call_0f0_5197:
	ld   h, a                                        ; $5197: $67
	ld   h, h                                        ; $5198: $64
	ld   b, l                                        ; $5199: $45
	ld   d, l                                        ; $519a: $55
	ld   d, l                                        ; $519b: $55
	ld   h, [hl]                                     ; $519c: $66
	ld   h, [hl]                                     ; $519d: $66
	ld   h, a                                        ; $519e: $67
	sbc  c                                           ; $519f: $99
	sbc  c                                           ; $51a0: $99
	cp   e                                           ; $51a1: $bb
	call z, $cbcc                                    ; $51a2: $cc $cc $cb
	call z, $b89b                                    ; $51a5: $cc $9b $b8
	adc  c                                           ; $51a8: $89
	sub  a                                           ; $51a9: $97
	sbc  d                                           ; $51aa: $9a

Call_0f0_51ab:
	add  a                                           ; $51ab: $87
	ld   h, a                                        ; $51ac: $67
	halt                                             ; $51ad: $76
	ld   h, [hl]                                     ; $51ae: $66
	ld   h, l                                        ; $51af: $65
	ld   d, l                                        ; $51b0: $55
	ld   d, h                                        ; $51b1: $54
	ld   d, l                                        ; $51b2: $55
	ld   d, [hl]                                     ; $51b3: $56
	ld   h, a                                        ; $51b4: $67
	ld   [hl], a                                     ; $51b5: $77
	ld   a, b                                        ; $51b6: $78
	sbc  c                                           ; $51b7: $99
	sbc  e                                           ; $51b8: $9b
	cp   e                                           ; $51b9: $bb
	db   $dd                                         ; $51ba: $dd
	db   $dd                                         ; $51bb: $dd
	cp   e                                           ; $51bc: $bb
	cp   e                                           ; $51bd: $bb
	xor  b                                           ; $51be: $a8
	sbc  b                                           ; $51bf: $98
	ld   [hl], a                                     ; $51c0: $77
	halt                                             ; $51c1: $76
	ld   h, [hl]                                     ; $51c2: $66
	ld   h, [hl]                                     ; $51c3: $66
	ld   h, [hl]                                     ; $51c4: $66
	ld   h, [hl]                                     ; $51c5: $66
	ld   d, l                                        ; $51c6: $55
	ld   d, h                                        ; $51c7: $54
	ld   b, h                                        ; $51c8: $44
	ld   b, l                                        ; $51c9: $45
	ld   d, l                                        ; $51ca: $55
	ld   h, a                                        ; $51cb: $67
	ld   a, c                                        ; $51cc: $79
	xor  d                                           ; $51cd: $aa
	cp   d                                           ; $51ce: $ba
	cp   h                                           ; $51cf: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51d0: $cf
	ld   a, [$bcab]                                  ; $51d1: $fa $ab $bc
	sub  a                                           ; $51d4: $97
	add  a                                           ; $51d5: $87
	add  a                                           ; $51d6: $87
	ld   h, [hl]                                     ; $51d7: $66
	ld   h, [hl]                                     ; $51d8: $66
	ld   h, l                                        ; $51d9: $65
	ld   d, h                                        ; $51da: $54
	ld   b, h                                        ; $51db: $44
	ld   b, h                                        ; $51dc: $44
	ld   b, l                                        ; $51dd: $45
	ld   d, l                                        ; $51de: $55
	ld   l, b                                        ; $51df: $68
	adc  b                                           ; $51e0: $88
	adc  c                                           ; $51e1: $89
	sbc  d                                           ; $51e2: $9a
	cp   e                                           ; $51e3: $bb
	cp   e                                           ; $51e4: $bb
	xor  d                                           ; $51e5: $aa
	cp   e                                           ; $51e6: $bb
	cp   e                                           ; $51e7: $bb
	xor  d                                           ; $51e8: $aa
	xor  e                                           ; $51e9: $ab
	cp   c                                           ; $51ea: $b9
	adc  c                                           ; $51eb: $89
	add  a                                           ; $51ec: $87
	halt                                             ; $51ed: $76
	ld   h, h                                        ; $51ee: $64
	ld   b, l                                        ; $51ef: $45
	inc  [hl]                                        ; $51f0: $34
	ld   de, $4412                                   ; $51f1: $11 $12 $44
	ld   h, l                                        ; $51f4: $65
	ld   a, b                                        ; $51f5: $78
	sbc  d                                           ; $51f6: $9a
	xor  e                                           ; $51f7: $ab
	cp   e                                           ; $51f8: $bb
	adc  $dc                                         ; $51f9: $ce $dc
	cp   e                                           ; $51fb: $bb
	cp   h                                           ; $51fc: $bc
	xor  d                                           ; $51fd: $aa
	sbc  c                                           ; $51fe: $99
	sbc  d                                           ; $51ff: $9a
	xor  c                                           ; $5200: $a9
	sbc  b                                           ; $5201: $98
	adc  d                                           ; $5202: $8a
	halt                                             ; $5203: $76
	ld   d, h                                        ; $5204: $54
	ld   hl, $1111                                   ; $5205: $21 $11 $11
	ld   de, $7936                                   ; $5208: $11 $36 $79
	call $eeee                                       ; $520b: $cd $ee $ee
	db   $dd                                         ; $520e: $dd
	call c, $9aba                                    ; $520f: $dc $ba $9a
	xor  e                                           ; $5212: $ab
	res  7, e                                        ; $5213: $cb $bb
	cp   h                                           ; $5215: $bc
	jp   z, $6597                                    ; $5216: $ca $97 $65

	ld   d, h                                        ; $5219: $54
	ld   hl, $1111                                   ; $521a: $21 $11 $11
	ld   de, $8946                                   ; $521d: $11 $46 $89
	xor  l                                           ; $5220: $ad
	rst  $28                                         ; $5221: $ef
	db   $fd                                         ; $5222: $fd
	call z, $dbcd                                    ; $5223: $cc $cd $db
	sbc  b                                           ; $5226: $98
	sbc  e                                           ; $5227: $9b
	db   $dd                                         ; $5228: $dd
	call c, $dddd                                    ; $5229: $dc $dd $dd
	ret                                              ; $522c: $c9


	ld   [hl], l                                     ; $522d: $75
	ld   d, h                                        ; $522e: $54
	ld   sp, $1111                                   ; $522f: $31 $11 $11
	ld   de, $7914                                   ; $5232: $11 $14 $79
	xor  l                                           ; $5235: $ad
	rst  $38                                         ; $5236: $ff
	rst  $38                                         ; $5237: $ff
	db   $db                                         ; $5238: $db
	cp   e                                           ; $5239: $bb
	res  4, a                                        ; $523a: $cb $a7
	ld   a, c                                        ; $523c: $79
	rst  JumpTable                                         ; $523d: $df
	rst  $38                                         ; $523e: $ff
	rst  $38                                         ; $523f: $ff
	rst  $38                                         ; $5240: $ff
	db   $ec                                         ; $5241: $ec
	add  l                                           ; $5242: $85
	ld   b, e                                        ; $5243: $43
	ld   hl, $1111                                   ; $5244: $21 $11 $11
	ld   de, $8a13                                   ; $5247: $11 $13 $8a
	adc  $ff                                         ; $524a: $ce $ff
	rst  $38                                         ; $524c: $ff
	ld   [$8988], a                                  ; $524d: $ea $88 $89
	and  a                                           ; $5250: $a7
	ld   h, a                                        ; $5251: $67
	cp   a                                           ; $5252: $bf
	rst  $38                                         ; $5253: $ff
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	and  l                                           ; $5257: $a5
	ld   [hl-], a                                    ; $5258: $32
	inc  sp                                          ; $5259: $33
	ld   de, $1111                                   ; $525a: $11 $11 $11
	ld   de, $df3a                                   ; $525d: $11 $3a $df
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	db   $fd                                         ; $5262: $fd
	sub  l                                           ; $5263: $95
	ld   b, l                                        ; $5264: $45
	ld   a, c                                        ; $5265: $79
	sbc  c                                           ; $5266: $99
	xor  h                                           ; $5267: $ac
	rst  $38                                         ; $5268: $ff
	rst  $38                                         ; $5269: $ff
	cp   $ee                                         ; $526a: $fe $ee
	db   $eb                                         ; $526c: $eb
	ld   [hl], h                                     ; $526d: $74
	inc  [hl]                                        ; $526e: $34
	ld   d, e                                        ; $526f: $53
	ld   de, $1111                                   ; $5270: $11 $11 $11
	ld   de, $ff6d                                   ; $5273: $11 $6d $ff
	rst  $38                                         ; $5276: $ff
	rst  $38                                         ; $5277: $ff
	ld   a, [$2463]                                  ; $5278: $fa $63 $24
	ld   a, d                                        ; $527b: $7a
	cp   e                                           ; $527c: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $527d: $cf
	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	db   $eb                                         ; $5280: $eb
	cp   l                                           ; $5281: $bd
	db   $eb                                         ; $5282: $eb
	ld   [hl], h                                     ; $5283: $74
	inc  [hl]                                        ; $5284: $34
	ld   d, h                                        ; $5285: $54
	ld   de, $1111                                   ; $5286: $11 $11 $11
	ld   de, $ff7e                                   ; $5289: $11 $7e $ff
	rst  $38                                         ; $528c: $ff
	rst  $38                                         ; $528d: $ff
	ld   a, [$1251]                                  ; $528e: $fa $51 $12
	ld   a, e                                        ; $5291: $7b
	db   $dd                                         ; $5292: $dd
	rst  $28                                         ; $5293: $ef
	rst  $38                                         ; $5294: $ff
	rst  $38                                         ; $5295: $ff
	ret                                              ; $5296: $c9


	sbc  e                                           ; $5297: $9b
	db   $dd                                         ; $5298: $dd
	sub  l                                           ; $5299: $95
	inc  sp                                          ; $529a: $33
	ld   d, l                                        ; $529b: $55
	ld   sp, $1111                                   ; $529c: $31 $11 $11
	ld   de, $ff5f                                   ; $529f: $11 $5f $ff
	rst  $38                                         ; $52a2: $ff
	rst  $38                                         ; $52a3: $ff
	db   $fc                                         ; $52a4: $fc
	ld   d, c                                        ; $52a5: $51
	ld   de, $ff4a                                   ; $52a6: $11 $4a $ff
	rst  $38                                         ; $52a9: $ff
	rst  $38                                         ; $52aa: $ff
	rst  $38                                         ; $52ab: $ff
	reti                                             ; $52ac: $d9


	ld   h, a                                        ; $52ad: $67
	sbc  l                                           ; $52ae: $9d
	db   $eb                                         ; $52af: $eb
	ld   [hl], h                                     ; $52b0: $74
	ld   b, l                                        ; $52b1: $45
	ld   h, h                                        ; $52b2: $64
	ld   de, $1111                                   ; $52b3: $11 $11 $11
	ld   d, $ff                                      ; $52b6: $16 $ff
	rst  $38                                         ; $52b8: $ff
	rst  $38                                         ; $52b9: $ff
	rst  $38                                         ; $52ba: $ff
	call nz, $1211                                   ; $52bb: $c4 $11 $12
	sbc  a                                           ; $52be: $9f
	rst  $38                                         ; $52bf: $ff
	rst  $38                                         ; $52c0: $ff
	rst  $38                                         ; $52c1: $ff
	cp   $95                                         ; $52c2: $fe $95
	ld   b, a                                        ; $52c4: $47
	cp   [hl]                                        ; $52c5: $be
	db   $db                                         ; $52c6: $db
	ld   [hl], l                                     ; $52c7: $75
	ld   d, [hl]                                     ; $52c8: $56
	ld   h, h                                        ; $52c9: $64
	ld   de, $1111                                   ; $52ca: $11 $11 $11
	inc  e                                           ; $52cd: $1c
	rst  $38                                         ; $52ce: $ff
	rst  $38                                         ; $52cf: $ff
	rst  $38                                         ; $52d0: $ff
	rst  $38                                         ; $52d1: $ff
	and  d                                           ; $52d2: $a2
	ld   de, $af12                                   ; $52d3: $11 $12 $af
	rst  $38                                         ; $52d6: $ff
	rst  $38                                         ; $52d7: $ff
	cp   $ec                                         ; $52d8: $fe $ec
	sub  l                                           ; $52da: $95
	ld   d, a                                        ; $52db: $57
	cp   [hl]                                        ; $52dc: $be
	db   $fc                                         ; $52dd: $fc
	sub  l                                           ; $52de: $95
	ld   b, l                                        ; $52df: $45
	ld   h, [hl]                                     ; $52e0: $66
	ld   hl, $1111                                   ; $52e1: $21 $11 $11
	jr   @+$01                                       ; $52e4: $18 $ff

	rst  $38                                         ; $52e6: $ff
	rst  $38                                         ; $52e7: $ff
	rst  $38                                         ; $52e8: $ff
	add  $11                                         ; $52e9: $c6 $11
	ld   de, $ff6f                                   ; $52eb: $11 $6f $ff
	rst  $38                                         ; $52ee: $ff
	db   $dd                                         ; $52ef: $dd
	call c, Call_0f0_55b7                            ; $52f0: $dc $b7 $55
	adc  h                                           ; $52f3: $8c
	rst  $38                                         ; $52f4: $ff
	ret                                              ; $52f5: $c9


	ld   d, h                                        ; $52f6: $54
	ld   d, a                                        ; $52f7: $57
	ld   h, e                                        ; $52f8: $63
	ld   de, $1111                                   ; $52f9: $11 $11 $11
	sbc  a                                           ; $52fc: $9f
	rst  $38                                         ; $52fd: $ff
	rst  $38                                         ; $52fe: $ff
	xor  $ed                                         ; $52ff: $ee $ed
	ld   [hl], c                                     ; $5301: $71
	ld   de, $df13                                   ; $5302: $11 $13 $df
	rst  $38                                         ; $5305: $ff
	rst  $38                                         ; $5306: $ff
	set  1, d                                        ; $5307: $cb $ca
	add  [hl]                                        ; $5309: $86
	ld   b, [hl]                                     ; $530a: $46
	sbc  l                                           ; $530b: $9d
	rst  $38                                         ; $530c: $ff
	cp   b                                           ; $530d: $b8
	ld   h, l                                        ; $530e: $65
	ld   h, a                                        ; $530f: $67
	ld   d, c                                        ; $5310: $51
	ld   de, $1411                                   ; $5311: $11 $11 $14
	rst  $38                                         ; $5314: $ff
	rst  $38                                         ; $5315: $ff
	cp   $ce                                         ; $5316: $fe $ce
	jp   c, $1141                                    ; $5318: $da $41 $11

	rla                                              ; $531b: $17
	rst  $38                                         ; $531c: $ff
	rst  $38                                         ; $531d: $ff
	db   $fc                                         ; $531e: $fc
	cp   d                                           ; $531f: $ba
	cp   d                                           ; $5320: $ba
	add  h                                           ; $5321: $84
	dec  [hl]                                        ; $5322: $35
	sbc  [hl]                                        ; $5323: $9e
	rst  $38                                         ; $5324: $ff
	ei                                               ; $5325: $fb
	ld   h, l                                        ; $5326: $65
	ld   h, a                                        ; $5327: $67
	ld   d, c                                        ; $5328: $51
	ld   de, $1111                                   ; $5329: $11 $11 $11
	rst  $38                                         ; $532c: $ff
	rst  $38                                         ; $532d: $ff
	cp   $cc                                         ; $532e: $fe $cc
	db   $db                                         ; $5330: $db
	ld   d, c                                        ; $5331: $51
	ld   de, $ef13                                   ; $5332: $11 $13 $ef
	rst  $38                                         ; $5335: $ff
	rst  $38                                         ; $5336: $ff
	cp   d                                           ; $5337: $ba
	sbc  c                                           ; $5338: $99
	add  [hl]                                        ; $5339: $86
	inc  sp                                          ; $533a: $33
	ld   e, d                                        ; $533b: $5a
	rst  $38                                         ; $533c: $ff
	rst  $38                                         ; $533d: $ff
	rst  ToBoot                                         ; $533e: $c7
	ld   b, e                                        ; $533f: $43
	ld   b, e                                        ; $5340: $43
	ld   de, $1111                                   ; $5341: $11 $11 $11
	cpl                                              ; $5344: $2f
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	ret  z                                           ; $5347: $c8

	sbc  d                                           ; $5348: $9a
	and  l                                           ; $5349: $a5
	ld   de, $3f11                                   ; $534a: $11 $11 $3f
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	ld   a, [$8967]                                  ; $534f: $fa $67 $89
	ld   [hl], h                                     ; $5352: $74
	inc  [hl]                                        ; $5353: $34
	adc  a                                           ; $5354: $8f
	rst  $38                                         ; $5355: $ff
	db   $fd                                         ; $5356: $fd
	ld   [hl], e                                     ; $5357: $73
	ld   [hl+], a                                    ; $5358: $22
	ld   hl, $1111                                   ; $5359: $21 $11 $11
	ld   de, $ffff                                   ; $535c: $11 $ff $ff
	db   $fd                                         ; $535f: $fd
	ld   h, l                                        ; $5360: $65
	adc  c                                           ; $5361: $89
	add  d                                           ; $5362: $82
	ld   de, $bf11                                   ; $5363: $11 $11 $bf
	rst  $38                                         ; $5366: $ff
	rst  $38                                         ; $5367: $ff
	and  l                                           ; $5368: $a5
	ld   d, a                                        ; $5369: $57
	adc  c                                           ; $536a: $89
	ld   h, e                                        ; $536b: $63
	dec  [hl]                                        ; $536c: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $536d: $cf
	rst  $38                                         ; $536e: $ff
	ei                                               ; $536f: $fb
	ld   b, c                                        ; $5370: $41
	ld   de, $1111                                   ; $5371: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $5374: $11 $13 $ff
	rst  $38                                         ; $5377: $ff
	ld   a, [$7a43]                                  ; $5378: $fa $43 $7a
	sub  e                                           ; $537b: $93
	ld   de, $af11                                   ; $537c: $11 $11 $af
	rst  $38                                         ; $537f: $ff
	rst  $38                                         ; $5380: $ff
	sub  h                                           ; $5381: $94
	ld   [hl], $88                                   ; $5382: $36 $88
	ld   [hl], h                                     ; $5384: $74
	inc  h                                           ; $5385: $24
	sbc  a                                           ; $5386: $9f
	rst  $38                                         ; $5387: $ff
	db   $fd                                         ; $5388: $fd
	ld   d, c                                        ; $5389: $51
	ld   de, $1111                                   ; $538a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $538d: $11 $11 $ff
	rst  $38                                         ; $5390: $ff
	ei                                               ; $5391: $fb
	ld   hl, $8537                                   ; $5392: $21 $37 $85
	ld   de, $7f11                                   ; $5395: $11 $11 $7f

Call_0f0_5398:
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	and  e                                           ; $539a: $a3
	ld   [de], a                                     ; $539b: $12
	ld   l, c                                        ; $539c: $69
	add  l                                           ; $539d: $85
	ld   [hl+], a                                    ; $539e: $22
	ld   a, a                                        ; $539f: $7f
	rst  $38                                         ; $53a0: $ff
	rst  $38                                         ; $53a1: $ff
	sub  c                                           ; $53a2: $91
	ld   de, $1111                                   ; $53a3: $11 $11 $11
	ld   de, $9f11                                   ; $53a6: $11 $11 $9f
	rst  $38                                         ; $53a9: $ff
	rst  $38                                         ; $53aa: $ff
	ld   d, c                                        ; $53ab: $51
	ld   [de], a                                     ; $53ac: $12
	ld   a, b                                        ; $53ad: $78
	ld   b, c                                        ; $53ae: $41
	ld   de, $ff1b                                   ; $53af: $11 $1b $ff
	rst  $38                                         ; $53b2: $ff
	push af                                          ; $53b3: $f5
	ld   de, $9a16                                   ; $53b4: $11 $16 $9a
	ld   h, d                                        ; $53b7: $62
	scf                                              ; $53b8: $37
	rst  $38                                         ; $53b9: $ff
	rst  $38                                         ; $53ba: $ff
	ld   hl, sp+$11                                  ; $53bb: $f8 $11
	ld   de, $1121                                   ; $53bd: $11 $21 $11
	ld   de, rAUD1HIGH                                   ; $53c0: $11 $14 $ff
	rst  $38                                         ; $53c3: $ff
	ld   a, [$1611]                                  ; $53c4: $fa $11 $16
	sub  a                                           ; $53c7: $97
	ld   de, $5f11                                   ; $53c8: $11 $11 $5f
	rst  $38                                         ; $53cb: $ff
	rst  $38                                         ; $53cc: $ff
	and  c                                           ; $53cd: $a1
	ld   de, $a838                                   ; $53ce: $11 $38 $a8
	ld   b, e                                        ; $53d1: $43
	ld   c, e                                        ; $53d2: $4b
	rst  $38                                         ; $53d3: $ff
	rst  $38                                         ; $53d4: $ff
	push af                                          ; $53d5: $f5
	ld   de, $2111                                   ; $53d6: $11 $11 $21
	ld   de, $1a11                                   ; $53d9: $11 $11 $1a
	rst  $38                                         ; $53dc: $ff
	rst  $38                                         ; $53dd: $ff
	push af                                          ; $53de: $f5
	ld   de, $a727                                   ; $53df: $11 $27 $a7
	ld   de, $8f11                                   ; $53e2: $11 $11 $8f
	rst  $38                                         ; $53e5: $ff
	rst  $38                                         ; $53e6: $ff
	ld   [hl], c                                     ; $53e7: $71
	ld   de, $ab39                                   ; $53e8: $11 $39 $ab
	ld   [hl], l                                     ; $53eb: $75
	ld   l, d                                        ; $53ec: $6a
	rst  $38                                         ; $53ed: $ff
	rst  $38                                         ; $53ee: $ff
	push af                                          ; $53ef: $f5
	ld   de, $1111                                   ; $53f0: $11 $11 $11
	ld   de, $1a11                                   ; $53f3: $11 $11 $1a
	rst  $38                                         ; $53f6: $ff
	rst  $38                                         ; $53f7: $ff
	or   $11                                         ; $53f8: $f6 $11
	inc  d                                           ; $53fa: $14
	halt                                             ; $53fb: $76
	ld   sp, $7f11                                   ; $53fc: $31 $11 $7f
	rst  $38                                         ; $53ff: $ff
	rst  $38                                         ; $5400: $ff
	sub  c                                           ; $5401: $91
	ld   de, $bc15                                   ; $5402: $11 $15 $bc
	xor  b                                           ; $5405: $a8
	adc  d                                           ; $5406: $8a
	rst  $38                                         ; $5407: $ff
	rst  $38                                         ; $5408: $ff
	or   $11                                         ; $5409: $f6 $11
	ld   de, $1111                                   ; $540b: $11 $11 $11
	ld   de, $ff3f                                   ; $540e: $11 $3f $ff
	rst  $38                                         ; $5411: $ff
	di                                               ; $5412: $f3
	ld   de, $5612                                   ; $5413: $11 $12 $56
	ld   sp, $cf13                                   ; $5416: $31 $13 $cf
	rst  $38                                         ; $5419: $ff
	rst  $38                                         ; $541a: $ff
	add  c                                           ; $541b: $81
	ld   de, $bc16                                   ; $541c: $11 $16 $bc
	call c, $ffbd                                    ; $541f: $dc $bd $ff
	rst  $38                                         ; $5422: $ff
	call nz, $1111                                   ; $5423: $c4 $11 $11
	ld   de, $1911                                   ; $5426: $11 $11 $19
	rst  $38                                         ; $5429: $ff
	rst  $38                                         ; $542a: $ff
	rst  $38                                         ; $542b: $ff
	ld   d, c                                        ; $542c: $51
	ld   de, $2211                                   ; $542d: $11 $11 $22
	inc  h                                           ; $5430: $24
	adc  a                                           ; $5431: $8f
	rst  $38                                         ; $5432: $ff
	rst  $38                                         ; $5433: $ff
	ld   sp, hl                                      ; $5434: $f9
	ld   de, $3811                                   ; $5435: $11 $11 $38
	adc  $ef                                         ; $5438: $ce $ef
	rst  $38                                         ; $543a: $ff
	rst  $38                                         ; $543b: $ff
	ret  z                                           ; $543c: $c8

	ld   hl, $1111                                   ; $543d: $21 $11 $11
	ld   de, $ff19                                   ; $5440: $11 $19 $ff
	rst  $38                                         ; $5443: $ff
	rst  $38                                         ; $5444: $ff
	ld   [hl], c                                     ; $5445: $71
	ld   de, $1111                                   ; $5446: $11 $11 $11
	ld   [de], a                                     ; $5449: $12
	sbc  a                                           ; $544a: $9f
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	ld   a, [$1111]                                  ; $544d: $fa $11 $11
	ld   d, $bd                                      ; $5450: $16 $bd
	rst  $28                                         ; $5452: $ef
	rst  $38                                         ; $5453: $ff
	rst  $38                                         ; $5454: $ff
	rst  ToBoot                                         ; $5455: $c7
	ld   de, $1111                                   ; $5456: $11 $11 $11
	ld   de, $ff2e                                   ; $5459: $11 $2e $ff
	rst  $38                                         ; $545c: $ff
	cp   $51                                         ; $545d: $fe $51
	ld   de, $1111                                   ; $545f: $11 $11 $11
	inc  d                                           ; $5462: $14
	cp   a                                           ; $5463: $bf
	rst  $38                                         ; $5464: $ff
	rst  $38                                         ; $5465: $ff
	ld   hl, sp+$11                                  ; $5466: $f8 $11
	ld   de, $be16                                   ; $5468: $11 $16 $be
	rst  $38                                         ; $546b: $ff
	rst  $38                                         ; $546c: $ff
	db   $ec                                         ; $546d: $ec
	ld   [hl], d                                     ; $546e: $72
	ld   de, $1111                                   ; $546f: $11 $11 $11
	ld   d, $ff                                      ; $5472: $16 $ff
	rst  $38                                         ; $5474: $ff
	rst  $38                                         ; $5475: $ff
	and  d                                           ; $5476: $a2
	ld   de, $1111                                   ; $5477: $11 $11 $11
	ld   de, $ff5c                                   ; $547a: $11 $5c $ff
	rst  $38                                         ; $547d: $ff
	rst  $38                                         ; $547e: $ff
	ld   h, c                                        ; $547f: $61
	ld   de, $ad14                                   ; $5480: $11 $14 $ad
	rst  $38                                         ; $5483: $ff
	db   $fd                                         ; $5484: $fd
	xor  b                                           ; $5485: $a8

Jump_0f0_5486:
	ld   d, c                                        ; $5486: $51
	ld   de, $1111                                   ; $5487: $11 $11 $11
	dec  de                                          ; $548a: $1b
	rst  $38                                         ; $548b: $ff
	rst  $38                                         ; $548c: $ff
	rst  $38                                         ; $548d: $ff
	ld   [hl], c                                     ; $548e: $71
	ld   de, $1111                                   ; $548f: $11 $11 $11
	inc  d                                           ; $5492: $14
	sbc  a                                           ; $5493: $9f
	rst  $38                                         ; $5494: $ff
	rst  $38                                         ; $5495: $ff
	db   $fd                                         ; $5496: $fd
	ld   b, c                                        ; $5497: $41
	ld   de, $df28                                   ; $5498: $11 $28 $df
	db   $fc                                         ; $549b: $fc
	ld   [hl], e                                     ; $549c: $73
	ld   de, $1111                                   ; $549d: $11 $11 $11
	ld   de, $ff28                                   ; $54a0: $11 $28 $ff
	rst  $38                                         ; $54a3: $ff
	rst  $38                                         ; $54a4: $ff
	push de                                          ; $54a5: $d5
	ld   de, $1111                                   ; $54a6: $11 $11 $11
	ld   b, a                                        ; $54a9: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54aa: $cf
	rst  $38                                         ; $54ab: $ff
	rst  $38                                         ; $54ac: $ff
	rst  $38                                         ; $54ad: $ff
	add  h                                           ; $54ae: $84
	ld   [hl+], a                                    ; $54af: $22
	ld   e, b                                        ; $54b0: $58
	cp   l                                           ; $54b1: $bd
	or   [hl]                                        ; $54b2: $b6
	ld   de, $1111                                   ; $54b3: $11 $11 $11
	ld   [de], a                                     ; $54b6: $12
	ld   a, l                                        ; $54b7: $7d
	rst  $38                                         ; $54b8: $ff
	rst  $38                                         ; $54b9: $ff
	rst  $38                                         ; $54ba: $ff
	ld   [$1162], a                                  ; $54bb: $ea $62 $11
	ld   de, $ef38                                   ; $54be: $11 $38 $ef
	rst  $38                                         ; $54c1: $ff
	rst  $38                                         ; $54c2: $ff
	reti                                             ; $54c3: $d9


	add  a                                           ; $54c4: $87
	sbc  d                                           ; $54c5: $9a
	res  4, [hl]                                     ; $54c6: $cb $a6
	ld   de, $1111                                   ; $54c8: $11 $11 $11
	ld   de, $ff4b                                   ; $54cb: $11 $4b $ff
	rst  $38                                         ; $54ce: $ff
	rst  $38                                         ; $54cf: $ff
	ld   [$1163], a                                  ; $54d0: $ea $63 $11
	ld   de, $df17                                   ; $54d3: $11 $17 $df
	rst  $38                                         ; $54d6: $ff
	rst  $38                                         ; $54d7: $ff
	db   $fc                                         ; $54d8: $fc
	sub  a                                           ; $54d9: $97
	ld   a, b                                        ; $54da: $78
	xor  d                                           ; $54db: $aa
	add  h                                           ; $54dc: $84
	ld   de, $1111                                   ; $54dd: $11 $11 $11
	ld   de, $ff8f                                   ; $54e0: $11 $8f $ff
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	cp   b                                           ; $54e5: $b8
	ld   d, d                                        ; $54e6: $52
	ld   de, $4a11                                   ; $54e7: $11 $11 $4a
	rst  $38                                         ; $54ea: $ff
	rst  $38                                         ; $54eb: $ff
	rst  $38                                         ; $54ec: $ff
	db   $fc                                         ; $54ed: $fc
	and  a                                           ; $54ee: $a7
	ld   h, [hl]                                     ; $54ef: $66
	ld   d, d                                        ; $54f0: $52
	ld   de, $1111                                   ; $54f1: $11 $11 $11
	ld   de, $ff6f                                   ; $54f4: $11 $6f $ff
	rst  $38                                         ; $54f7: $ff
	ei                                               ; $54f8: $fb

Call_0f0_54f9:
	ld   [hl], l                                     ; $54f9: $75
	ld   b, l                                        ; $54fa: $45
	ld   d, h                                        ; $54fb: $54
	ld   b, h                                        ; $54fc: $44
	ld   e, b                                        ; $54fd: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54fe: $cf
	rst  $38                                         ; $54ff: $ff
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	or   [hl]                                        ; $5502: $b6
	ld   sp, $1111                                   ; $5503: $31 $11 $11
	ld   de, $1111                                   ; $5506: $11 $11 $11
	rst  $28                                         ; $5509: $ef
	rst  $38                                         ; $550a: $ff
	rst  $38                                         ; $550b: $ff
	push de                                          ; $550c: $d5
	ld   de, $6813                                   ; $550d: $11 $13 $68
	adc  b                                           ; $5510: $88
	adc  c                                           ; $5511: $89
	rst  $28                                         ; $5512: $ef
	rst  $38                                         ; $5513: $ff
	rst  $38                                         ; $5514: $ff
	db   $fc                                         ; $5515: $fc
	ld   hl, $1111                                   ; $5516: $21 $11 $11
	ld   de, $1111                                   ; $5519: $11 $11 $11
	ld   e, a                                        ; $551c: $5f
	rst  $38                                         ; $551d: $ff
	rst  $38                                         ; $551e: $ff
	or   $11                                         ; $551f: $f6 $11
	ld   de, $ec6c                                   ; $5521: $11 $6c $ec
	sbc  c                                           ; $5524: $99
	sbc  a                                           ; $5525: $9f
	rst  $38                                         ; $5526: $ff
	rst  $38                                         ; $5527: $ff
	cp   $11                                         ; $5528: $fe $11
	ld   de, $1111                                   ; $552a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $552d: $11 $11 $ff
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	pop  af                                          ; $5532: $f1
	ld   de, $8d11                                   ; $5533: $11 $11 $8d
	cp   $cb                                         ; $5536: $fe $cb
	rst  $28                                         ; $5538: $ef
	rst  $38                                         ; $5539: $ff
	rst  $38                                         ; $553a: $ff
	ldh  [c], a                                      ; $553b: $e2
	ld   de, $1111                                   ; $553c: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $553f: $11 $14 $ff
	rst  $38                                         ; $5542: $ff
	rst  $38                                         ; $5543: $ff
	rst  $30                                         ; $5544: $f7
	ld   de, $3811                                   ; $5545: $11 $11 $38
	cp   h                                           ; $5548: $bc
	sbc  $ff                                         ; $5549: $de $ff
	rst  $38                                         ; $554b: $ff
	rst  $38                                         ; $554c: $ff
	ld   [hl], c                                     ; $554d: $71
	ld   de, $1111                                   ; $554e: $11 $11 $11
	ld   de, $ff6f                                   ; $5551: $11 $6f $ff
	rst  $38                                         ; $5554: $ff
	rst  $38                                         ; $5555: $ff
	ld   [hl], c                                     ; $5556: $71
	ld   de, $6912                                   ; $5557: $11 $12 $69
	cp   [hl]                                        ; $555a: $be
	rst  $38                                         ; $555b: $ff
	rst  $38                                         ; $555c: $ff
	rst  $38                                         ; $555d: $ff
	and  c                                           ; $555e: $a1
	ld   de, $1111                                   ; $555f: $11 $11 $11
	ld   de, $ff6f                                   ; $5562: $11 $6f $ff
	rst  $38                                         ; $5565: $ff
	rst  $38                                         ; $5566: $ff
	add  c                                           ; $5567: $81
	ld   de, $6912                                   ; $5568: $11 $12 $69
	cp   a                                           ; $556b: $bf
	rst  $38                                         ; $556c: $ff
	rst  $38                                         ; $556d: $ff
	rst  $38                                         ; $556e: $ff
	ld   sp, $1111                                   ; $556f: $31 $11 $11
	ld   de, rAUD1HIGH                                   ; $5572: $11 $14 $ff
	rst  $38                                         ; $5575: $ff
	rst  $38                                         ; $5576: $ff
	cp   $51                                         ; $5577: $fe $51
	ld   de, $7924                                   ; $5579: $11 $24 $79
	rst  JumpTable                                         ; $557c: $df
	rst  $38                                         ; $557d: $ff
	rst  $38                                         ; $557e: $ff
	sub  c                                           ; $557f: $91
	ld   de, $1111                                   ; $5580: $11 $11 $11
	inc  de                                          ; $5583: $13
	rst  $38                                         ; $5584: $ff
	rst  $38                                         ; $5585: $ff

Jump_0f0_5586:
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	sub  h                                           ; $5588: $94
	ld   de, $8b45                                   ; $5589: $11 $45 $8b
	rst  JumpTable                                         ; $558c: $df
	rst  $38                                         ; $558d: $ff
	db   $fc                                         ; $558e: $fc
	ld   sp, $1111                                   ; $558f: $31 $11 $11
	ld   de, $ff18                                   ; $5592: $11 $18 $ff
	rst  $38                                         ; $5595: $ff
	rst  $38                                         ; $5596: $ff
	rst  $38                                         ; $5597: $ff
	add  e                                           ; $5598: $83
	ld   de, $9c35                                   ; $5599: $11 $35 $9c
	rst  $38                                         ; $559c: $ff
	rst  $38                                         ; $559d: $ff
	and  d                                           ; $559e: $a2
	ld   de, $1111                                   ; $559f: $11 $11 $11
	ld   de, $ff9f                                   ; $55a2: $11 $9f $ff
	rst  $38                                         ; $55a5: $ff
	rst  $38                                         ; $55a6: $ff
	ei                                               ; $55a7: $fb
	add  l                                           ; $55a8: $85
	ld   d, l                                        ; $55a9: $55
	ld   l, c                                        ; $55aa: $69
	xor  [hl]                                        ; $55ab: $ae
	db   $ed                                         ; $55ac: $ed
	and  e                                           ; $55ad: $a3
	ld   de, $1111                                   ; $55ae: $11 $11 $11
	ld   de, $ff9f                                   ; $55b1: $11 $9f $ff
	rst  $38                                         ; $55b4: $ff
	rst  $38                                         ; $55b5: $ff
	rst  $38                                         ; $55b6: $ff

Call_0f0_55b7:
	ret  z                                           ; $55b7: $c8

	add  a                                           ; $55b8: $87
	adc  c                                           ; $55b9: $89
	cp   l                                           ; $55ba: $bd
	ld   [$1161], a                                  ; $55bb: $ea $61 $11
	ld   de, $1411                                   ; $55be: $11 $11 $14
	rst  $38                                         ; $55c1: $ff
	rst  $38                                         ; $55c2: $ff
	rst  $38                                         ; $55c3: $ff
	rst  $38                                         ; $55c4: $ff
	rst  $38                                         ; $55c5: $ff
	jp   c, $8a76                                    ; $55c6: $da $76 $8a

	rst  JumpTable                                         ; $55c9: $df
	jp   hl                                          ; $55ca: $e9


	ld   de, $1111                                   ; $55cb: $11 $11 $11
	ld   de, $ff1b                                   ; $55ce: $11 $1b $ff
	rst  $38                                         ; $55d1: $ff
	rst  $38                                         ; $55d2: $ff
	rst  $38                                         ; $55d3: $ff
	rst  $38                                         ; $55d4: $ff
	jp   z, $bd99                                    ; $55d5: $ca $99 $bd

	db   $fd                                         ; $55d8: $fd
	add  c                                           ; $55d9: $81
	ld   de, $1111                                   ; $55da: $11 $11 $11
	dec  d                                           ; $55dd: $15
	rst  $38                                         ; $55de: $ff
	rst  $38                                         ; $55df: $ff
	rst  $38                                         ; $55e0: $ff
	rst  $38                                         ; $55e1: $ff
	rst  $38                                         ; $55e2: $ff
	db   $ec                                         ; $55e3: $ec
	halt                                             ; $55e4: $76
	sbc  e                                           ; $55e5: $9b
	rst  $38                                         ; $55e6: $ff
	rst  $20                                         ; $55e7: $e7
	ld   de, $1111                                   ; $55e8: $11 $11 $11
	ld   de, $ffdf                                   ; $55eb: $11 $df $ff
	rst  $38                                         ; $55ee: $ff
	rst  $38                                         ; $55ef: $ff
	rst  $38                                         ; $55f0: $ff
	cp   $85                                         ; $55f1: $fe $85
	ld   e, b                                        ; $55f3: $58
	rst  JumpTable                                         ; $55f4: $df
	ld   a, [$1111]                                  ; $55f5: $fa $11 $11
	ld   de, $bf11                                   ; $55f8: $11 $11 $bf
	rst  $38                                         ; $55fb: $ff
	rst  $38                                         ; $55fc: $ff
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	rst  $38                                         ; $55ff: $ff
	push bc                                          ; $5600: $c5
	ld   b, [hl]                                     ; $5601: $46
	adc  [hl]                                        ; $5602: $8e
	add  sp, $11                                     ; $5603: $e8 $11
	ld   de, $1111                                   ; $5605: $11 $11 $11
	rst  $38                                         ; $5608: $ff
	rst  $38                                         ; $5609: $ff
	rst  $38                                         ; $560a: $ff
	rst  $38                                         ; $560b: $ff
	rst  $38                                         ; $560c: $ff
	rst  $38                                         ; $560d: $ff
	call nz, $8e35                                   ; $560e: $c4 $35 $8e
	rst  $20                                         ; $5611: $e7
	ld   de, $1111                                   ; $5612: $11 $11 $11
	ld   [de], a                                     ; $5615: $12
	rst  $38                                         ; $5616: $ff
	rst  $38                                         ; $5617: $ff
	rst  $38                                         ; $5618: $ff
	rst  $38                                         ; $5619: $ff
	rst  $38                                         ; $561a: $ff
	rst  $38                                         ; $561b: $ff
	call nz, $8d56                                   ; $561c: $c4 $56 $8d
	and  c                                           ; $561f: $a1
	ld   de, $1111                                   ; $5620: $11 $11 $11
	dec  de                                          ; $5623: $1b
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	rst  $38                                         ; $5626: $ff
	rst  $38                                         ; $5627: $ff
	rst  $38                                         ; $5628: $ff
	rst  $38                                         ; $5629: $ff
	and  l                                           ; $562a: $a5
	ld   h, [hl]                                     ; $562b: $66
	xor  l                                           ; $562c: $ad
	ld   b, c                                        ; $562d: $41
	ld   de, $1111                                   ; $562e: $11 $11 $11
	ld   c, a                                        ; $5631: $4f
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	rst  $38                                         ; $5634: $ff
	rst  $38                                         ; $5635: $ff
	rst  $38                                         ; $5636: $ff
	rst  $38                                         ; $5637: $ff
	add  [hl]                                        ; $5638: $86
	ld   l, b                                        ; $5639: $68
	ret  z                                           ; $563a: $c8

	ld   de, $1111                                   ; $563b: $11 $11 $11
	ld   de, $ffdf                                   ; $563e: $11 $df $ff
	rst  $38                                         ; $5641: $ff
	rst  $38                                         ; $5642: $ff
	rst  $38                                         ; $5643: $ff
	rst  $38                                         ; $5644: $ff
	ld   a, [$9c67]                                  ; $5645: $fa $67 $9c
	and  c                                           ; $5648: $a1
	ld   de, $1111                                   ; $5649: $11 $11 $11
	ld   a, [de]                                     ; $564c: $1a
	rst  $38                                         ; $564d: $ff
	rst  $38                                         ; $564e: $ff
	rst  $38                                         ; $564f: $ff
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	rst  $38                                         ; $5652: $ff
	add  $8a                                         ; $5653: $c6 $8a
	xor  $41                                         ; $5655: $ee $41
	ld   de, $1111                                   ; $5657: $11 $11 $11
	ld   l, a                                        ; $565a: $6f
	rst  $38                                         ; $565b: $ff
	rst  $38                                         ; $565c: $ff
	rst  $38                                         ; $565d: $ff
	rst  $38                                         ; $565e: $ff
	rst  $38                                         ; $565f: $ff
	db   $fd                                         ; $5660: $fd
	adc  b                                           ; $5661: $88
	xor  [hl]                                        ; $5662: $ae
	call nc, $1111                                   ; $5663: $d4 $11 $11
	ld   de, $ff17                                   ; $5666: $11 $17 $ff
	rst  $38                                         ; $5669: $ff
	rst  $38                                         ; $566a: $ff
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	jp   hl                                          ; $566e: $e9


	xor  [hl]                                        ; $566f: $ae
	db   $ed                                         ; $5670: $ed
	ld   b, c                                        ; $5671: $41
	ld   de, $1111                                   ; $5672: $11 $11 $11
	ld   l, a                                        ; $5675: $6f
	rst  $38                                         ; $5676: $ff
	rst  $38                                         ; $5677: $ff
	rst  $38                                         ; $5678: $ff
	rst  $38                                         ; $5679: $ff
	rst  $38                                         ; $567a: $ff
	db   $fd                                         ; $567b: $fd
	sbc  c                                           ; $567c: $99
	sbc  $c3                                         ; $567d: $de $c3
	ld   de, $1111                                   ; $567f: $11 $11 $11
	dec  e                                           ; $5682: $1d
	rst  $38                                         ; $5683: $ff
	rst  $38                                         ; $5684: $ff
	rst  $38                                         ; $5685: $ff
	rst  $38                                         ; $5686: $ff
	rst  $38                                         ; $5687: $ff
	rst  $38                                         ; $5688: $ff
	sub  a                                           ; $5689: $97
	xor  a                                           ; $568a: $af
	db   $fc                                         ; $568b: $fc
	ld   de, $1111                                   ; $568c: $11 $11 $11
	dec  d                                           ; $568f: $15
	rst  $38                                         ; $5690: $ff
	rst  $38                                         ; $5691: $ff
	rst  $38                                         ; $5692: $ff
	rst  $38                                         ; $5693: $ff
	rst  $38                                         ; $5694: $ff
	rst  $38                                         ; $5695: $ff
	or   [hl]                                        ; $5696: $b6
	ld   l, l                                        ; $5697: $6d
	rst  $38                                         ; $5698: $ff
	ld   d, c                                        ; $5699: $51
	ld   de, $1311                                   ; $569a: $11 $11 $13
	rst  $38                                         ; $569d: $ff
	rst  $38                                         ; $569e: $ff
	rst  $38                                         ; $569f: $ff
	rst  $38                                         ; $56a0: $ff
	rst  $38                                         ; $56a1: $ff
	rst  $38                                         ; $56a2: $ff
	and  l                                           ; $56a3: $a5
	ld   l, l                                        ; $56a4: $6d
	rst  $38                                         ; $56a5: $ff
	ld   [hl], c                                     ; $56a6: $71
	ld   de, $1611                                   ; $56a7: $11 $11 $16
	rst  $38                                         ; $56aa: $ff
	rst  $38                                         ; $56ab: $ff
	rst  $38                                         ; $56ac: $ff
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	cp   $74                                         ; $56af: $fe $74
	sbc  a                                           ; $56b1: $9f
	rst  $38                                         ; $56b2: $ff
	ld   b, c                                        ; $56b3: $41
	ld   de, $1e11                                   ; $56b4: $11 $11 $1e
	rst  $38                                         ; $56b7: $ff
	rst  $38                                         ; $56b8: $ff
	db   $fd                                         ; $56b9: $fd
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	ld   a, [$bf24]                                  ; $56bc: $fa $24 $bf
	rst  $38                                         ; $56bf: $ff
	ld   de, $1111                                   ; $56c0: $11 $11 $11
	ld   c, a                                        ; $56c3: $4f
	rst  $38                                         ; $56c4: $ff
	rst  $38                                         ; $56c5: $ff
	call $ffff                                       ; $56c6: $cd $ff $ff
	jp   nc, $ff18                                   ; $56c9: $d2 $18 $ff

	rst  $30                                         ; $56cc: $f7
	ld   de, $1111                                   ; $56cd: $11 $11 $11
	rst  $38                                         ; $56d0: $ff
	rst  $38                                         ; $56d1: $ff
	ei                                               ; $56d2: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56d3: $cf
	rst  $38                                         ; $56d4: $ff
	ld   a, [$8f11]                                  ; $56d5: $fa $11 $8f
	rst  $38                                         ; $56d8: $ff
	sub  c                                           ; $56d9: $91
	ld   de, $1f11                                   ; $56da: $11 $11 $1f
	rst  $38                                         ; $56dd: $ff
	rst  $38                                         ; $56de: $ff
	adc  c                                           ; $56df: $89
	rst  $38                                         ; $56e0: $ff
	rst  $38                                         ; $56e1: $ff
	and  c                                           ; $56e2: $a1
	dec  e                                           ; $56e3: $1d
	rst  $38                                         ; $56e4: $ff
	rst  $30                                         ; $56e5: $f7
	ld   de, $1211                                   ; $56e6: $11 $11 $12
	rst  $38                                         ; $56e9: $ff
	rst  $38                                         ; $56ea: $ff
	ei                                               ; $56eb: $fb
	rst  $38                                         ; $56ec: $ff
	rst  $38                                         ; $56ed: $ff
	sub  c                                           ; $56ee: $91
	dec  d                                           ; $56ef: $15
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	ld   de, $1111                                   ; $56f2: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f5: $cf
	rst  $38                                         ; $56f6: $ff
	rst  $38                                         ; $56f7: $ff
	rst  $38                                         ; $56f8: $ff
	rst  $38                                         ; $56f9: $ff
	and  c                                           ; $56fa: $a1
	ld   de, $ffff                                   ; $56fb: $11 $ff $ff
	pop  de                                          ; $56fe: $d1
	ld   de, $1f11                                   ; $56ff: $11 $11 $1f
	rst  $38                                         ; $5702: $ff
	rst  $38                                         ; $5703: $ff
	rst  $38                                         ; $5704: $ff
	db   $fc                                         ; $5705: $fc
	add  c                                           ; $5706: $81
	ld   [de], a                                     ; $5707: $12
	rst  JumpTable                                         ; $5708: $df
	rst  $38                                         ; $5709: $ff
	pop  af                                          ; $570a: $f1
	ld   de, $1a11                                   ; $570b: $11 $11 $1a
	rst  $38                                         ; $570e: $ff
	rst  $38                                         ; $570f: $ff
	rst  $38                                         ; $5710: $ff
	rst  $38                                         ; $5711: $ff
	ld   [hl], c                                     ; $5712: $71
	ld   de, $ffbf                                   ; $5713: $11 $bf $ff
	pop  af                                          ; $5716: $f1
	ld   de, $1811                                   ; $5717: $11 $11 $18
	rst  $38                                         ; $571a: $ff
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	ld   d, c                                        ; $571e: $51
	ld   de, $ffbf                                   ; $571f: $11 $bf $ff
	pop  af                                          ; $5722: $f1
	ld   de, $1411                                   ; $5723: $11 $11 $14
	rst  $38                                         ; $5726: $ff
	rst  $38                                         ; $5727: $ff
	rst  $38                                         ; $5728: $ff
	db   $fc                                         ; $5729: $fc
	ld   de, rAUD1LEN                                   ; $572a: $11 $11 $ff
	rst  $38                                         ; $572d: $ff
	pop  af                                          ; $572e: $f1
	ld   de, $1411                                   ; $572f: $11 $11 $14
	rst  $38                                         ; $5732: $ff
	rst  $38                                         ; $5733: $ff
	rst  $38                                         ; $5734: $ff
	rst  $30                                         ; $5735: $f7
	ld   de, rAUD1HIGH                                   ; $5736: $11 $14 $ff
	rst  $38                                         ; $5739: $ff
	pop  hl                                          ; $573a: $e1
	ld   de, $1611                                   ; $573b: $11 $11 $16
	rst  $38                                         ; $573e: $ff
	rst  $38                                         ; $573f: $ff
	rst  $38                                         ; $5740: $ff
	or   $11                                         ; $5741: $f6 $11
	dec  d                                           ; $5743: $15
	rst  $38                                         ; $5744: $ff
	rst  $38                                         ; $5745: $ff
	ld   d, c                                        ; $5746: $51
	ld   de, $1a11                                   ; $5747: $11 $11 $1a
	rst  $38                                         ; $574a: $ff
	rst  $38                                         ; $574b: $ff
	rst  $38                                         ; $574c: $ff
	pop  hl                                          ; $574d: $e1
	ld   de, $ff1f                                   ; $574e: $11 $1f $ff
	rst  $38                                         ; $5751: $ff
	ld   de, $1111                                   ; $5752: $11 $11 $11
	ld   c, a                                        ; $5755: $4f
	rst  $38                                         ; $5756: $ff
	rst  $38                                         ; $5757: $ff
	rst  $38                                         ; $5758: $ff
	ld   de, $bf11                                   ; $5759: $11 $11 $bf
	rst  $38                                         ; $575c: $ff
	ldh  a, [c]                                      ; $575d: $f2
	ld   de, $1111                                   ; $575e: $11 $11 $11
	rst  $38                                         ; $5761: $ff
	rst  $38                                         ; $5762: $ff
	rst  $38                                         ; $5763: $ff
	pop  af                                          ; $5764: $f1
	ld   de, $ff1a                                   ; $5765: $11 $1a $ff
	rst  $38                                         ; $5768: $ff
	ld   h, c                                        ; $5769: $61
	ld   de, $1811                                   ; $576a: $11 $11 $18
	rst  $38                                         ; $576d: $ff
	rst  $38                                         ; $576e: $ff
	rst  $38                                         ; $576f: $ff
	ld   hl, $9f11                                   ; $5770: $21 $11 $9f
	rst  $38                                         ; $5773: $ff
	ei                                               ; $5774: $fb
	ld   de, $1111                                   ; $5775: $11 $11 $11
	ld   l, a                                        ; $5778: $6f
	rst  $38                                         ; $5779: $ff
	rst  $38                                         ; $577a: $ff
	pop  af                                          ; $577b: $f1
	ld   de, $ff18                                   ; $577c: $11 $18 $ff
	rst  $38                                         ; $577f: $ff
	pop  af                                          ; $5780: $f1
	ld   de, $1111                                   ; $5781: $11 $11 $11
	rst  $28                                         ; $5784: $ef
	rst  $38                                         ; $5785: $ff
	rst  $38                                         ; $5786: $ff
	ld   hl, $7f11                                   ; $5787: $21 $11 $7f
	rst  $38                                         ; $578a: $ff
	rst  $38                                         ; $578b: $ff
	ld   de, $1111                                   ; $578c: $11 $11 $11
	ld   a, [de]                                     ; $578f: $1a
	rst  $38                                         ; $5790: $ff
	rst  $38                                         ; $5791: $ff
	pop  af                                          ; $5792: $f1
	ld   de, $ff1b                                   ; $5793: $11 $1b $ff
	rst  $38                                         ; $5796: $ff
	or   $11                                         ; $5797: $f6 $11
	ld   de, $1f11                                   ; $5799: $11 $11 $1f
	rst  $38                                         ; $579c: $ff
	rst  $38                                         ; $579d: $ff
	ld   hl, $cf11                                   ; $579e: $21 $11 $cf
	rst  $38                                         ; $57a1: $ff
	rst  $38                                         ; $57a2: $ff
	pop  de                                          ; $57a3: $d1
	ld   de, $1111                                   ; $57a4: $11 $11 $11
	rra                                              ; $57a7: $1f
	rst  $38                                         ; $57a8: $ff
	rst  $38                                         ; $57a9: $ff
	ld   de, rAUD1LEN                                   ; $57aa: $11 $11 $ff
	rst  $38                                         ; $57ad: $ff
	rst  $38                                         ; $57ae: $ff
	and  c                                           ; $57af: $a1
	ld   de, $1111                                   ; $57b0: $11 $11 $11
	ld   de, $ffff                                   ; $57b3: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $57b6: $11 $11 $ff
	rst  $38                                         ; $57b9: $ff
	rst  $38                                         ; $57ba: $ff
	pop  af                                          ; $57bb: $f1
	ld   de, $b115                                   ; $57bc: $11 $15 $b1
	ld   de, $ff5f                                   ; $57bf: $11 $5f $ff
	pop  hl                                          ; $57c2: $e1
	ld   de, $ff8f                                   ; $57c3: $11 $8f $ff
	rst  $38                                         ; $57c6: $ff
	rst  $38                                         ; $57c7: $ff
	ld   de, $fd11                                   ; $57c8: $11 $11 $fd
	ld   de, $ff1f                                   ; $57cb: $11 $1f $ff
	pop  af                                          ; $57ce: $f1
	ld   de, $ff1f                                   ; $57cf: $11 $1f $ff
	rst  $38                                         ; $57d2: $ff
	rst  $38                                         ; $57d3: $ff
	sub  c                                           ; $57d4: $91
	ld   de, $b16f                                   ; $57d5: $11 $6f $b1
	ld   de, $ffff                                   ; $57d8: $11 $ff $ff
	ld   de, rAUD1HIGH                                   ; $57db: $11 $14 $ff
	rst  $38                                         ; $57de: $ff
	rst  $38                                         ; $57df: $ff
	pop  af                                          ; $57e0: $f1
	ld   de, $f11e                                   ; $57e1: $11 $1e $f1
	ld   de, $ff1f                                   ; $57e4: $11 $1f $ff
	pop  hl                                          ; $57e7: $e1
	ld   de, $ffbf                                   ; $57e8: $11 $bf $ff
	rst  $38                                         ; $57eb: $ff
	rst  $38                                         ; $57ec: $ff
	ld   de, rAUD1LEN                                   ; $57ed: $11 $11 $ff
	ld   de, $ff1b                                   ; $57f0: $11 $1b $ff
	pop  af                                          ; $57f3: $f1
	ld   de, $ff1d                                   ; $57f4: $11 $1d $ff
	rst  $38                                         ; $57f7: $ff
	rst  $38                                         ; $57f8: $ff
	ld   [hl], c                                     ; $57f9: $71
	ld   de, $a17f                                   ; $57fa: $11 $7f $a1
	ld   de, $ffff                                   ; $57fd: $11 $ff $ff
	ld   de, $de13                                   ; $5800: $11 $13 $de
	rst  $38                                         ; $5803: $ff
	rst  $38                                         ; $5804: $ff
	pop  af                                          ; $5805: $f1
	ld   de, $f11e                                   ; $5806: $11 $1e $f1
	ld   de, $ff1f                                   ; $5809: $11 $1f $ff
	pop  af                                          ; $580c: $f1
	ld   de, $cf7a                                   ; $580d: $11 $7a $cf
	rst  $38                                         ; $5810: $ff
	rst  $38                                         ; $5811: $ff
	ld   de, $fd11                                   ; $5812: $11 $11 $fd
	ld   de, $ff1f                                   ; $5815: $11 $1f $ff
	ldh  a, [c]                                      ; $5818: $f2
	ld   de, $ab17                                   ; $5819: $11 $17 $ab
	rst  $38                                         ; $581c: $ff
	rst  $38                                         ; $581d: $ff
	ld   b, c                                        ; $581e: $41
	ld   de, $216f                                   ; $581f: $11 $6f $21
	ld   de, $ffff                                   ; $5822: $11 $ff $ff
	ld   de, $6811                                   ; $5825: $11 $11 $68
	rst  $38                                         ; $5828: $ff
	rst  $38                                         ; $5829: $ff
	pop  af                                          ; $582a: $f1
	ld   de, $e118                                   ; $582b: $11 $18 $e1
	ld   de, $ff2f                                   ; $582e: $11 $2f $ff
	pop  af                                          ; $5831: $f1
	ld   de, $af14                                   ; $5832: $11 $14 $af
	rst  $38                                         ; $5835: $ff
	db   $fc                                         ; $5836: $fc
	ld   de, $8511                                   ; $5837: $11 $11 $85
	ld   de, $ff1f                                   ; $583a: $11 $1f $ff
	rst  $30                                         ; $583d: $f7
	ld   de, $5f11                                   ; $583e: $11 $11 $5f
	rst  $38                                         ; $5841: $ff
	rst  $38                                         ; $5842: $ff
	ld   b, c                                        ; $5843: $41
	ld   de, $1129                                   ; $5844: $11 $29 $11
	ld   de, $ffff                                   ; $5847: $11 $ff $ff
	ld   de, $1411                                   ; $584a: $11 $11 $14
	rst  $38                                         ; $584d: $ff
	rst  $38                                         ; $584e: $ff
	pop  af                                          ; $584f: $f1
	ld   de, $4112                                   ; $5850: $11 $12 $41
	ld   de, $ffcf                                   ; $5853: $11 $cf $ff
	pop  bc                                          ; $5856: $c1
	ld   de, $af12                                   ; $5857: $11 $12 $af
	rst  $38                                         ; $585a: $ff
	rst  $38                                         ; $585b: $ff
	ld   de, $1111                                   ; $585c: $11 $11 $11
	ld   de, $ff1f                                   ; $585f: $11 $1f $ff
	or   $11                                         ; $5862: $f6 $11
	ld   de, $ff5f                                   ; $5864: $11 $5f $ff
	rst  $38                                         ; $5867: $ff
	ld   h, c                                        ; $5868: $61
	ld   de, $1111                                   ; $5869: $11 $11 $11
	ld   a, [de]                                     ; $586c: $1a
	rst  $38                                         ; $586d: $ff
	rst  $38                                         ; $586e: $ff
	ld   sp, $1711                                   ; $586f: $31 $11 $17
	rst  $38                                         ; $5872: $ff
	rst  $38                                         ; $5873: $ff
	pop  af                                          ; $5874: $f1
	ld   de, $1111                                   ; $5875: $11 $11 $11
	ld   de, $ffff                                   ; $5878: $11 $ff $ff
	or   c                                           ; $587b: $b1
	ld   de, $cf11                                   ; $587c: $11 $11 $cf
	rst  $38                                         ; $587f: $ff
	rst  $38                                         ; $5880: $ff
	ld   de, $1111                                   ; $5881: $11 $11 $11
	ld   de, $ff1f                                   ; $5884: $11 $1f $ff
	ld   sp, hl                                      ; $5887: $f9
	ld   de, $2f11                                   ; $5888: $11 $11 $2f
	rst  $38                                         ; $588b: $ff
	rst  $38                                         ; $588c: $ff
	pop  de                                          ; $588d: $d1
	ld   de, $1111                                   ; $588e: $11 $11 $11
	ld   a, [de]                                     ; $5891: $1a
	rst  $38                                         ; $5892: $ff
	rst  $38                                         ; $5893: $ff
	sub  c                                           ; $5894: $91
	ld   de, rAUD1HIGH                                   ; $5895: $11 $14 $ff
	rst  $38                                         ; $5898: $ff
	ei                                               ; $5899: $fb
	ld   de, $1111                                   ; $589a: $11 $11 $11
	ld   de, $ffff                                   ; $589d: $11 $ff $ff
	ld   a, [$1111]                                  ; $58a0: $fa $11 $11
	ld   a, a                                        ; $58a3: $7f
	rst  $38                                         ; $58a4: $ff
	rst  $38                                         ; $58a5: $ff
	sub  c                                           ; $58a6: $91
	ld   de, $1111                                   ; $58a7: $11 $11 $11
	rra                                              ; $58aa: $1f
	rst  $38                                         ; $58ab: $ff
	rst  $38                                         ; $58ac: $ff
	pop  bc                                          ; $58ad: $c1
	ld   de, $ff1a                                   ; $58ae: $11 $1a $ff
	rst  $38                                         ; $58b1: $ff
	ld   hl, sp+$11                                  ; $58b2: $f8 $11
	ld   de, $1211                                   ; $58b4: $11 $11 $12
	rst  $38                                         ; $58b7: $ff
	rst  $38                                         ; $58b8: $ff
	ld   a, [$1111]                                  ; $58b9: $fa $11 $11
	cp   a                                           ; $58bc: $bf
	rst  $38                                         ; $58bd: $ff
	rst  $38                                         ; $58be: $ff
	ld   b, c                                        ; $58bf: $41
	ld   de, $1111                                   ; $58c0: $11 $11 $11
	xor  a                                           ; $58c3: $af
	rst  $38                                         ; $58c4: $ff
	rst  $38                                         ; $58c5: $ff
	and  c                                           ; $58c6: $a1
	ld   de, $ff1d                                   ; $58c7: $11 $1d $ff
	rst  $38                                         ; $58ca: $ff
	pop  af                                          ; $58cb: $f1
	ld   de, $1111                                   ; $58cc: $11 $11 $11
	rra                                              ; $58cf: $1f
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	or   $11                                         ; $58d2: $f6 $11
	ld   [de], a                                     ; $58d4: $12
	cp   a                                           ; $58d5: $bf
	rst  $38                                         ; $58d6: $ff
	rst  $38                                         ; $58d7: $ff
	ld   de, $1111                                   ; $58d8: $11 $11 $11
	ld   de, $ffff                                   ; $58db: $11 $ff $ff
	rst  $38                                         ; $58de: $ff
	ld   [hl], c                                     ; $58df: $71
	ld   de, $ff39                                   ; $58e0: $11 $39 $ff
	rst  $38                                         ; $58e3: $ff
	pop  af                                          ; $58e4: $f1
	ld   de, $1111                                   ; $58e5: $11 $11 $11
	ld   l, a                                        ; $58e8: $6f
	rst  $38                                         ; $58e9: $ff
	rst  $38                                         ; $58ea: $ff
	ld   hl, sp+$11                                  ; $58eb: $f8 $11
	dec  d                                           ; $58ed: $15
	adc  a                                           ; $58ee: $8f
	rst  $38                                         ; $58ef: $ff
	or   $11                                         ; $58f0: $f6 $11
	ld   de, $1f11                                   ; $58f2: $11 $11 $1f
	rst  $38                                         ; $58f5: $ff
	rst  $38                                         ; $58f6: $ff
	rst  $38                                         ; $58f7: $ff
	or   e                                           ; $58f8: $b3
	jr   z, @+$7a                                    ; $58f9: $28 $78

	rst  $38                                         ; $58fb: $ff
	ei                                               ; $58fc: $fb
	ld   de, $1111                                   ; $58fd: $11 $11 $11
	rra                                              ; $5900: $1f
	rst  $38                                         ; $5901: $ff
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	ld   sp, hl                                      ; $5904: $f9
	ld   a, d                                        ; $5905: $7a
	sub  a                                           ; $5906: $97
	rst  JumpTable                                         ; $5907: $df
	db   $fc                                         ; $5908: $fc
	ld   de, $1111                                   ; $5909: $11 $11 $11
	ld   a, [de]                                     ; $590c: $1a
	rst  $38                                         ; $590d: $ff
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	db   $fd                                         ; $5910: $fd
	xor  l                                           ; $5911: $ad
	ret  z                                           ; $5912: $c8

	cp   [hl]                                        ; $5913: $be
	db   $fd                                         ; $5914: $fd
	ld   de, $1111                                   ; $5915: $11 $11 $11
	rla                                              ; $5918: $17
	rst  $38                                         ; $5919: $ff
	rst  $38                                         ; $591a: $ff
	rst  $38                                         ; $591b: $ff
	rst  $38                                         ; $591c: $ff
	cp   l                                           ; $591d: $bd
	jp   hl                                          ; $591e: $e9


	adc  e                                           ; $591f: $8b
	db   $ed                                         ; $5920: $ed
	ld   sp, $1111                                   ; $5921: $31 $11 $11
	dec  d                                           ; $5924: $15
	cp   [hl]                                        ; $5925: $be
	cp   e                                           ; $5926: $bb
	rst  $28                                         ; $5927: $ef
	rst  $38                                         ; $5928: $ff
	call z, $aceb                                    ; $5929: $cc $eb $ac
	db   $dd                                         ; $592c: $dd
	add  e                                           ; $592d: $83
	ld   [de], a                                     ; $592e: $12
	inc  sp                                          ; $592f: $33
	ld   d, [hl]                                     ; $5930: $56
	ld   [hl], a                                     ; $5931: $77
	ld   h, [hl]                                     ; $5932: $66
	ld   d, l                                        ; $5933: $55
	ld   h, a                                        ; $5934: $67
	xor  h                                           ; $5935: $ac
	call c, $bdbb                                    ; $5936: $dc $bb $bd
	call c, $87b9                                    ; $5939: $dc $b9 $87
	ld   [hl], a                                     ; $593c: $77
	halt                                             ; $593d: $76
	ld   b, l                                        ; $593e: $45
	ld   b, h                                        ; $593f: $44
	ld   [hl+], a                                    ; $5940: $22
	dec  [hl]                                        ; $5941: $35
	ld   a, c                                        ; $5942: $79
	adc  $cc                                         ; $5943: $ce $cc
	call z, $dcde                                    ; $5945: $cc $de $dc
	xor  b                                           ; $5948: $a8
	add  a                                           ; $5949: $87
	ld   h, l                                        ; $594a: $65
	ld   b, e                                        ; $594b: $43
	ld   b, e                                        ; $594c: $43
	ld   [hl+], a                                    ; $594d: $22
	inc  h                                           ; $594e: $24
	ld   d, [hl]                                     ; $594f: $56
	sbc  e                                           ; $5950: $9b
	xor  $ff                                         ; $5951: $ee $ff
	cp   $dd                                         ; $5953: $fe $dd
	db   $ec                                         ; $5955: $ec
	ld   [hl], h                                     ; $5956: $74
	inc  [hl]                                        ; $5957: $34
	ld   de, $2111                                   ; $5958: $11 $11 $21
	inc  h                                           ; $595b: $24
	ld   l, b                                        ; $595c: $68
	adc  l                                           ; $595d: $8d
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	rst  $38                                         ; $5960: $ff
	db   $ec                                         ; $5961: $ec
	call c, $1151                                    ; $5962: $dc $51 $11
	ld   de, $2311                                   ; $5965: $11 $11 $23
	dec  [hl]                                        ; $5968: $35
	xor  l                                           ; $5969: $ad
	rst  $28                                         ; $596a: $ef
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	call c, $1194                                    ; $596e: $dc $94 $11
	ld   de, $1211                                   ; $5971: $11 $11 $12
	ld   b, h                                        ; $5974: $44
	adc  h                                           ; $5975: $8c
	rst  $38                                         ; $5976: $ff
	rst  $38                                         ; $5977: $ff
	rst  $38                                         ; $5978: $ff
	rst  $38                                         ; $5979: $ff
	db   $fd                                         ; $597a: $fd
	cp   b                                           ; $597b: $b8
	ld   hl, $1111                                   ; $597c: $21 $11 $11
	ld   de, $6a35                                   ; $597f: $11 $35 $6a
	rst  JumpTable                                         ; $5982: $df
	rst  $38                                         ; $5983: $ff
	rst  $38                                         ; $5984: $ff
	rst  $38                                         ; $5985: $ff
	db   $fd                                         ; $5986: $fd
	cp   d                                           ; $5987: $ba
	ld   h, c                                        ; $5988: $61
	ld   de, $1111                                   ; $5989: $11 $11 $11
	inc  d                                           ; $598c: $14
	ld   d, [hl]                                     ; $598d: $56
	xor  l                                           ; $598e: $ad
	rst  $38                                         ; $598f: $ff
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	db   $db                                         ; $5993: $db
	or   [hl]                                        ; $5994: $b6
	ld   de, $1111                                   ; $5995: $11 $11 $11
	ld   de, $6934                                   ; $5998: $11 $34 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599b: $cf
	rst  $38                                         ; $599c: $ff
	rst  $38                                         ; $599d: $ff
	rst  $38                                         ; $599e: $ff
	db   $fd                                         ; $599f: $fd
	call z, $1161                                    ; $59a0: $cc $61 $11
	ld   de, $1211                                   ; $59a3: $11 $11 $12
	dec  [hl]                                        ; $59a6: $35
	adc  e                                           ; $59a7: $8b
	rst  $28                                         ; $59a8: $ef
	rst  $38                                         ; $59a9: $ff
	rst  $38                                         ; $59aa: $ff
	rst  $38                                         ; $59ab: $ff
	db   $fc                                         ; $59ac: $fc
	cp   c                                           ; $59ad: $b9
	ld   de, $1111                                   ; $59ae: $11 $11 $11
	ld   de, $4813                                   ; $59b1: $11 $13 $48
	call $ffff                                       ; $59b4: $cd $ff $ff
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	res  0, c                                        ; $59b9: $cb $81
	ld   de, $1111                                   ; $59bb: $11 $11 $11
	ld   [de], a                                     ; $59be: $12
	dec  [hl]                                        ; $59bf: $35
	sbc  h                                           ; $59c0: $9c
	rst  $38                                         ; $59c1: $ff
	rst  $38                                         ; $59c2: $ff
	rst  $38                                         ; $59c3: $ff
	rst  $38                                         ; $59c4: $ff
	db   $fd                                         ; $59c5: $fd
	and  l                                           ; $59c6: $a5
	ld   de, $1111                                   ; $59c7: $11 $11 $11
	ld   de, $9c24                                   ; $59ca: $11 $24 $9c
	rst  $38                                         ; $59cd: $ff
	rst  $38                                         ; $59ce: $ff
	rst  $38                                         ; $59cf: $ff
	rst  $38                                         ; $59d0: $ff
	db   $fd                                         ; $59d1: $fd
	cp   c                                           ; $59d2: $b9
	ld   de, $1111                                   ; $59d3: $11 $11 $11
	ld   de, $7c14                                   ; $59d6: $11 $14 $7c
	rst  $38                                         ; $59d9: $ff
	rst  $38                                         ; $59da: $ff
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	cp   $b9                                         ; $59dd: $fe $b9
	ld   de, $1111                                   ; $59df: $11 $11 $11
	ld   de, $7d14                                   ; $59e2: $11 $14 $7d
	rst  $38                                         ; $59e5: $ff
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	rst  $38                                         ; $59e9: $ff
	ret  z                                           ; $59ea: $c8

	ld   de, $1111                                   ; $59eb: $11 $11 $11
	ld   de, $8d15                                   ; $59ee: $11 $15 $8d
	rst  $38                                         ; $59f1: $ff
	rst  $38                                         ; $59f2: $ff
	rst  $38                                         ; $59f3: $ff
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	ret  z                                           ; $59f6: $c8

	ld   de, $1111                                   ; $59f7: $11 $11 $11
	ld   de, $9f16                                   ; $59fa: $11 $16 $9f
	rst  $38                                         ; $59fd: $ff
	rst  $38                                         ; $59fe: $ff
	rst  $38                                         ; $59ff: $ff
	rst  $38                                         ; $5a00: $ff
	rst  $38                                         ; $5a01: $ff
	or   a                                           ; $5a02: $b7
	ld   de, $1111                                   ; $5a03: $11 $11 $11
	ld   de, $bf07                                   ; $5a06: $11 $07 $bf
	rst  $38                                         ; $5a09: $ff
	rst  $38                                         ; $5a0a: $ff
	rst  $38                                         ; $5a0b: $ff
	rst  $38                                         ; $5a0c: $ff
	db   $fd                                         ; $5a0d: $fd
	and  [hl]                                        ; $5a0e: $a6
	ld   de, $1111                                   ; $5a0f: $11 $11 $11
	ld   de, $cf38                                   ; $5a12: $11 $38 $cf
	rst  $38                                         ; $5a15: $ff
	rst  $38                                         ; $5a16: $ff
	rst  $38                                         ; $5a17: $ff
	rst  $38                                         ; $5a18: $ff
	ei                                               ; $5a19: $fb
	sub  c                                           ; $5a1a: $91
	ld   de, $1111                                   ; $5a1b: $11 $11 $11
	ld   de, $ef59                                   ; $5a1e: $11 $59 $ef
	rst  $38                                         ; $5a21: $ff
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	ld   sp, hl                                      ; $5a25: $f9
	ld   h, c                                        ; $5a26: $61
	ld   de, $1111                                   ; $5a27: $11 $11 $11
	ld   [de], a                                     ; $5a2a: $12
	ld   l, e                                        ; $5a2b: $6b
	rst  $38                                         ; $5a2c: $ff
	rst  $38                                         ; $5a2d: $ff
	rst  $38                                         ; $5a2e: $ff
	rst  $38                                         ; $5a2f: $ff
	rst  $38                                         ; $5a30: $ff
	ret  z                                           ; $5a31: $c8

	ld   hl, $1111                                   ; $5a32: $21 $11 $11
	ld   de, $8f14                                   ; $5a35: $11 $14 $8f
	rst  $38                                         ; $5a38: $ff
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	rst  $38                                         ; $5a3b: $ff
	rst  $38                                         ; $5a3c: $ff
	add  [hl]                                        ; $5a3d: $86
	ld   de, $1111                                   ; $5a3e: $11 $11 $11
	ld   de, $bf36                                   ; $5a41: $11 $36 $bf
	rst  $38                                         ; $5a44: $ff
	rst  $38                                         ; $5a45: $ff
	rst  $38                                         ; $5a46: $ff
	rst  $38                                         ; $5a47: $ff
	ld   sp, hl                                      ; $5a48: $f9
	add  c                                           ; $5a49: $81
	ld   de, $1111                                   ; $5a4a: $11 $11 $11
	ld   [de], a                                     ; $5a4d: $12
	ld   c, c                                        ; $5a4e: $49
	rst  $38                                         ; $5a4f: $ff
	rst  $38                                         ; $5a50: $ff
	rst  $38                                         ; $5a51: $ff
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	cp   b                                           ; $5a54: $b8
	ld   d, c                                        ; $5a55: $51
	ld   de, $1111                                   ; $5a56: $11 $11 $11
	ld   [hl+], a                                    ; $5a59: $22
	ld   a, [hl]                                     ; $5a5a: $7e
	rst  $38                                         ; $5a5b: $ff
	rst  $38                                         ; $5a5c: $ff
	rst  $38                                         ; $5a5d: $ff
	rst  $38                                         ; $5a5e: $ff
	cp   $79                                         ; $5a5f: $fe $79
	ld   de, $1111                                   ; $5a61: $11 $11 $11
	ld   de, $df34                                   ; $5a64: $11 $34 $df
	rst  $38                                         ; $5a67: $ff
	rst  $38                                         ; $5a68: $ff
	rst  $38                                         ; $5a69: $ff
	rst  $38                                         ; $5a6a: $ff
	ld   sp, hl                                      ; $5a6b: $f9
	sub  c                                           ; $5a6c: $91
	ld   de, $1111                                   ; $5a6d: $11 $11 $11
	inc  de                                          ; $5a70: $13
	dec  de                                          ; $5a71: $1b
	rst  $38                                         ; $5a72: $ff
	rst  $38                                         ; $5a73: $ff
	rst  $38                                         ; $5a74: $ff
	rst  $38                                         ; $5a75: $ff
	rst  $38                                         ; $5a76: $ff
	xor  c                                           ; $5a77: $a9
	ld   b, c                                        ; $5a78: $41
	ld   de, $1111                                   ; $5a79: $11 $11 $11
	ld   b, c                                        ; $5a7c: $41
	sbc  a                                           ; $5a7d: $9f
	rst  $38                                         ; $5a7e: $ff
	rst  $38                                         ; $5a7f: $ff
	rst  $38                                         ; $5a80: $ff
	rst  $38                                         ; $5a81: $ff
	ld   a, [$11a7]                                  ; $5a82: $fa $a7 $11
	ld   de, $1411                                   ; $5a85: $11 $11 $14
	rla                                              ; $5a88: $17
	rst  $38                                         ; $5a89: $ff
	rst  $38                                         ; $5a8a: $ff
	rst  $38                                         ; $5a8b: $ff
	rst  $38                                         ; $5a8c: $ff
	rst  $38                                         ; $5a8d: $ff
	jp   z, $1191                                    ; $5a8e: $ca $91 $11

	ld   de, $2111                                   ; $5a91: $11 $11 $21
	ld   c, a                                        ; $5a94: $4f
	rst  $38                                         ; $5a95: $ff
	rst  $38                                         ; $5a96: $ff
	rst  $38                                         ; $5a97: $ff
	rst  $38                                         ; $5a98: $ff
	db   $fd                                         ; $5a99: $fd
	xor  d                                           ; $5a9a: $aa
	ld   de, $1111                                   ; $5a9b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $5a9e: $11 $11 $ff
	rst  $38                                         ; $5aa1: $ff
	rst  $38                                         ; $5aa2: $ff
	rst  $38                                         ; $5aa3: $ff
	rst  $38                                         ; $5aa4: $ff
	db   $ec                                         ; $5aa5: $ec
	or   c                                           ; $5aa6: $b1
	ld   de, $1111                                   ; $5aa7: $11 $11 $11
	ld   de, $ff1d                                   ; $5aaa: $11 $1d $ff
	rst  $38                                         ; $5aad: $ff
	rst  $38                                         ; $5aae: $ff
	rst  $38                                         ; $5aaf: $ff
	cp   $db                                         ; $5ab0: $fe $db
	ld   sp, $1111                                   ; $5ab2: $31 $11 $11
	ld   de, $af11                                   ; $5ab5: $11 $11 $af
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	db   $ed                                         ; $5abc: $ed
	add  $11                                         ; $5abd: $c6 $11
	ld   de, $1111                                   ; $5abf: $11 $11 $11
	ld   d, $ff                                      ; $5ac2: $16 $ff
	rst  $38                                         ; $5ac4: $ff
	rst  $38                                         ; $5ac5: $ff
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	db   $ed                                         ; $5ac8: $ed
	sub  c                                           ; $5ac9: $91
	ld   de, $1111                                   ; $5aca: $11 $11 $11
	ld   de, $ff3f                                   ; $5acd: $11 $3f $ff
	rst  $38                                         ; $5ad0: $ff
	rst  $38                                         ; $5ad1: $ff
	rst  $38                                         ; $5ad2: $ff
	cp   $da                                         ; $5ad3: $fe $da
	ld   de, $1111                                   ; $5ad5: $11 $11 $11
	ld   de, $ef11                                   ; $5ad8: $11 $11 $ef
	rst  $38                                         ; $5adb: $ff
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	rst  $38                                         ; $5ade: $ff
	adc  $b4                                         ; $5adf: $ce $b4
	ld   de, $1111                                   ; $5ae1: $11 $11 $11
	ld   de, $ff19                                   ; $5ae4: $11 $19 $ff
	rst  $38                                         ; $5ae7: $ff
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	db   $fd                                         ; $5aea: $fd
	db   $fc                                         ; $5aeb: $fc
	ld   h, c                                        ; $5aec: $61
	ld   de, $1111                                   ; $5aed: $11 $11 $11
	ld   de, $ff5f                                   ; $5af0: $11 $5f $ff
	rst  $38                                         ; $5af3: $ff
	rst  $38                                         ; $5af4: $ff
	rst  $38                                         ; $5af5: $ff
	db   $fd                                         ; $5af6: $fd
	ret  c                                           ; $5af7: $d8

	ld   de, $1111                                   ; $5af8: $11 $11 $11
	ld   de, $ef12                                   ; $5afb: $11 $12 $ef
	rst  $38                                         ; $5afe: $ff
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	sbc  $b3                                         ; $5b02: $de $b3
	ld   de, $1111                                   ; $5b04: $11 $11 $11
	ld   [de], a                                     ; $5b07: $12
	add  hl, de                                      ; $5b08: $19
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	rst  $38                                         ; $5b0b: $ff
	rst  $38                                         ; $5b0c: $ff
	cp   $cd                                         ; $5b0d: $fe $cd
	ld   [hl], c                                     ; $5b0f: $71
	ld   de, $1111                                   ; $5b10: $11 $11 $11
	ld   [de], a                                     ; $5b13: $12
	ld   a, $ff                                      ; $5b14: $3e $ff
	rst  $38                                         ; $5b16: $ff
	rst  $38                                         ; $5b17: $ff
	rst  $38                                         ; $5b18: $ff
	ei                                               ; $5b19: $fb
	db   $db                                         ; $5b1a: $db
	ld   sp, $1111                                   ; $5b1b: $31 $11 $11
	ld   de, $8f12                                   ; $5b1e: $11 $12 $8f
	rst  $38                                         ; $5b21: $ff
	rst  $38                                         ; $5b22: $ff
	rst  $38                                         ; $5b23: $ff
	rst  $38                                         ; $5b24: $ff
	db   $ec                                         ; $5b25: $ec
	jp   hl                                          ; $5b26: $e9


	ld   de, $1111                                   ; $5b27: $11 $11 $11
	ld   de, $bf22                                   ; $5b2a: $11 $22 $bf
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	rst  $38                                         ; $5b2f: $ff
	rst  $38                                         ; $5b30: $ff
	call c, $11d6                                    ; $5b31: $dc $d6 $11
	ld   de, $1211                                   ; $5b34: $11 $11 $12
	inc  hl                                          ; $5b37: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b38: $cf
	rst  $38                                         ; $5b39: $ff
	rst  $38                                         ; $5b3a: $ff
	rst  $38                                         ; $5b3b: $ff
	rst  $38                                         ; $5b3c: $ff
	call z, $11c6                                    ; $5b3d: $cc $c6 $11
	ld   de, $1211                                   ; $5b40: $11 $11 $12
	inc  sp                                          ; $5b43: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b44: $cf
	rst  $38                                         ; $5b45: $ff
	rst  $38                                         ; $5b46: $ff
	rst  $38                                         ; $5b47: $ff
	rst  $38                                         ; $5b48: $ff
	cp   h                                           ; $5b49: $bc
	add  $11                                         ; $5b4a: $c6 $11
	ld   de, $1411                                   ; $5b4c: $11 $11 $14
	inc  sp                                          ; $5b4f: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b50: $cf
	rst  $38                                         ; $5b51: $ff
	rst  $38                                         ; $5b52: $ff
	rst  $38                                         ; $5b53: $ff
	rst  $38                                         ; $5b54: $ff
	jp   z, $31b6                                    ; $5b55: $ca $b6 $31

	ld   de, $1411                                   ; $5b58: $11 $11 $14
	inc  [hl]                                        ; $5b5b: $34
	ld   a, a                                        ; $5b5c: $7f
	cp   $ff                                         ; $5b5d: $fe $ff
	rst  $38                                         ; $5b5f: $ff
	rst  $38                                         ; $5b60: $ff
	ld   [$41c7], a                                  ; $5b61: $ea $c7 $41
	ld   de, $1111                                   ; $5b64: $11 $11 $11
	ld   h, h                                        ; $5b67: $64
	ld   c, [hl]                                     ; $5b68: $4e
	rst  $38                                         ; $5b69: $ff
	rst  $38                                         ; $5b6a: $ff
	rst  $38                                         ; $5b6b: $ff
	rst  $38                                         ; $5b6c: $ff
	ei                                               ; $5b6d: $fb
	cp   e                                           ; $5b6e: $bb
	ld   h, h                                        ; $5b6f: $64
	ld   de, $1111                                   ; $5b70: $11 $11 $11
	ld   d, [hl]                                     ; $5b73: $56
	ld   d, [hl]                                     ; $5b74: $56
	rst  $38                                         ; $5b75: $ff
	rst  JumpTable                                         ; $5b76: $df
	rst  $38                                         ; $5b77: $ff
	rst  $38                                         ; $5b78: $ff
	cp   $8b                                         ; $5b79: $fe $8b
	sub  h                                           ; $5b7b: $94
	ld   d, c                                        ; $5b7c: $51
	ld   de, $1721                                   ; $5b7d: $11 $21 $17
	sub  l                                           ; $5b80: $95
	ld   l, a                                        ; $5b81: $6f
	db   $fd                                         ; $5b82: $fd
	rst  $38                                         ; $5b83: $ff
	rst  $38                                         ; $5b84: $ff
	rst  $38                                         ; $5b85: $ff
	sub  $b9                                         ; $5b86: $d6 $b9
	ld   b, l                                        ; $5b88: $45
	ld   de, $1111                                   ; $5b89: $11 $11 $11
	ld   e, c                                        ; $5b8c: $59
	ld   h, [hl]                                     ; $5b8d: $66
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	rst  $38                                         ; $5b90: $ff
	rst  $38                                         ; $5b91: $ff
	db   $fd                                         ; $5b92: $fd
	ld   l, c                                        ; $5b93: $69
	and  l                                           ; $5b94: $a5
	ld   h, c                                        ; $5b95: $61
	ld   de, $1111                                   ; $5b96: $11 $11 $11
	xor  d                                           ; $5b99: $aa
	ld   e, e                                        ; $5b9a: $5b
	rst  $38                                         ; $5b9b: $ff
	rst  JumpTable                                         ; $5b9c: $df
	rst  $38                                         ; $5b9d: $ff
	rst  $38                                         ; $5b9e: $ff
	ld   hl, sp+$4a                                  ; $5b9f: $f8 $4a
	add  [hl]                                        ; $5ba1: $86
	ld   d, c                                        ; $5ba2: $51
	ld   de, $1111                                   ; $5ba3: $11 $11 $11
	xor  c                                           ; $5ba6: $a9
	ld   c, [hl]                                     ; $5ba7: $4e
	rst  $38                                         ; $5ba8: $ff
	rst  $28                                         ; $5ba9: $ef
	rst  $38                                         ; $5baa: $ff
	rst  $28                                         ; $5bab: $ef
	push hl                                          ; $5bac: $e5
	ld   e, h                                        ; $5bad: $5c
	ld   [hl], l                                     ; $5bae: $75
	and  l                                           ; $5baf: $a5
	ld   de, $1114                                   ; $5bb0: $11 $14 $11
	cp   c                                           ; $5bb3: $b9
	add  hl, sp                                      ; $5bb4: $39
	rst  $38                                         ; $5bb5: $ff
	cp   a                                           ; $5bb6: $bf
	rst  $38                                         ; $5bb7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bb8: $cf
	or   $3b                                         ; $5bb9: $f6 $3b
	or   l                                           ; $5bbb: $b5
	cp   e                                           ; $5bbc: $bb
	ld   hl, $1113                                   ; $5bbd: $21 $13 $11
	ld   a, [de]                                     ; $5bc0: $1a
	ld   h, h                                        ; $5bc1: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bc2: $cf
	db   $fd                                         ; $5bc3: $fd
	rst  $38                                         ; $5bc4: $ff
	ei                                               ; $5bc5: $fb
	db   $fd                                         ; $5bc6: $fd
	ld   b, h                                        ; $5bc7: $44
	call z, $e66c                                    ; $5bc8: $cc $6c $e6
	ld   de, $1111                                   ; $5bcb: $11 $11 $11
	scf                                              ; $5bce: $37
	ld   h, [hl]                                     ; $5bcf: $66
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	call c, $25fa                                    ; $5bd3: $dc $fa $25
	db   $ec                                         ; $5bd6: $ec
	ld   a, a                                        ; $5bd7: $7f
	ld   hl, sp+$11                                  ; $5bd8: $f8 $11
	ld   de, $1511                                   ; $5bda: $11 $11 $15
	ld   h, a                                        ; $5bdd: $67
	rst  $38                                         ; $5bde: $ff
	rst  $38                                         ; $5bdf: $ff
	rst  $38                                         ; $5be0: $ff
	ei                                               ; $5be1: $fb
	db   $eb                                         ; $5be2: $eb
	ld   [hl+], a                                    ; $5be3: $22
	adc  l                                           ; $5be4: $8d
	cp   d                                           ; $5be5: $ba
	rst  $38                                         ; $5be6: $ff
	sub  c                                           ; $5be7: $91
	ld   de, $1111                                   ; $5be8: $11 $11 $11
	rla                                              ; $5beb: $17
	xor  a                                           ; $5bec: $af
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	rst  $38                                         ; $5bef: $ff
	ret                                              ; $5bf0: $c9


	sub  c                                           ; $5bf1: $91
	ld   de, $bf8e                                   ; $5bf2: $11 $8e $bf
	rst  $38                                         ; $5bf5: $ff
	or   h                                           ; $5bf6: $b4
	ld   de, $1111                                   ; $5bf7: $11 $11 $11
	rla                                              ; $5bfa: $17
	rst  $38                                         ; $5bfb: $ff
	rst  $38                                         ; $5bfc: $ff
	rst  $38                                         ; $5bfd: $ff
	rst  $38                                         ; $5bfe: $ff
	and  h                                           ; $5bff: $a4
	ld   de, $3c11                                   ; $5c00: $11 $11 $3c
	rst  $38                                         ; $5c03: $ff
	rst  $38                                         ; $5c04: $ff
	cp   $a3                                         ; $5c05: $fe $a3
	ld   de, $1111                                   ; $5c07: $11 $11 $11
	rra                                              ; $5c0a: $1f
	rst  $38                                         ; $5c0b: $ff
	rst  $38                                         ; $5c0c: $ff
	rst  $38                                         ; $5c0d: $ff
	add  $11                                         ; $5c0e: $c6 $11
	ld   de, $8f11                                   ; $5c10: $11 $11 $8f
	rst  $38                                         ; $5c13: $ff
	rst  $38                                         ; $5c14: $ff
	rst  $38                                         ; $5c15: $ff
	or   a                                           ; $5c16: $b7
	ld   sp, $1111                                   ; $5c17: $31 $11 $11
	ld   de, $ffff                                   ; $5c1a: $11 $ff $ff
	rst  $38                                         ; $5c1d: $ff
	or   $11                                         ; $5c1e: $f6 $11
	ld   de, $bd13                                   ; $5c20: $11 $13 $bd
	rst  $38                                         ; $5c23: $ff
	rst  $38                                         ; $5c24: $ff
	rst  $38                                         ; $5c25: $ff
	db   $fd                                         ; $5c26: $fd
	add  e                                           ; $5c27: $83
	ld   de, $1911                                   ; $5c28: $11 $11 $19
	ld   sp, $ffff                                   ; $5c2b: $31 $ff $ff
	rst  $38                                         ; $5c2e: $ff
	ldh  a, [c]                                      ; $5c2f: $f2
	ld   de, $1511                                   ; $5c30: $11 $11 $15
	rst  $38                                         ; $5c33: $ff
	rst  $38                                         ; $5c34: $ff
	rst  $38                                         ; $5c35: $ff
	db   $fd                                         ; $5c36: $fd
	bit  4, c                                        ; $5c37: $cb $61
	ld   de, $1611                                   ; $5c39: $11 $11 $16
	and  $cf                                         ; $5c3c: $e6 $cf
	rst  $38                                         ; $5c3e: $ff
	rst  $38                                         ; $5c3f: $ff
	ld   hl, sp+$11                                  ; $5c40: $f8 $11
	ld   de, $cf11                                   ; $5c42: $11 $11 $cf
	rst  $38                                         ; $5c45: $ff
	rst  $38                                         ; $5c46: $ff
	ei                                               ; $5c47: $fb
	ld   c, b                                        ; $5c48: $48
	add  l                                           ; $5c49: $85
	ld   hl, $1111                                   ; $5c4a: $21 $11 $11
	ld   e, $d7                                      ; $5c4d: $1e $d7
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	reti                                             ; $5c51: $d9


	and  h                                           ; $5c52: $a4
	ld   de, $2811                                   ; $5c53: $11 $11 $28
	rst  $38                                         ; $5c56: $ff
	rst  $38                                         ; $5c57: $ff
	rst  $38                                         ; $5c58: $ff
	ld   hl, sp+$55                                  ; $5c59: $f8 $55
	ld   a, d                                        ; $5c5b: $7a
	add  h                                           ; $5c5c: $84
	ld   [hl-], a                                    ; $5c5d: $32
	ld   de, $2b11                                   ; $5c5e: $11 $11 $2b
	ld   a, d                                        ; $5c61: $7a
	rst  $38                                         ; $5c62: $ff
	rst  $38                                         ; $5c63: $ff
	jp   z, $1181                                    ; $5c64: $ca $81 $11

	inc  h                                           ; $5c67: $24
	ld   l, [hl]                                     ; $5c68: $6e
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	db   $ec                                         ; $5c6b: $ec
	sub  l                                           ; $5c6c: $95
	ld   d, a                                        ; $5c6d: $57
	xor  h                                           ; $5c6e: $ac
	xor  b                                           ; $5c6f: $a8
	add  h                                           ; $5c70: $84
	ld   de, $1811                                   ; $5c71: $11 $11 $18
	cp   l                                           ; $5c74: $bd
	rst  $38                                         ; $5c75: $ff
	rst  $38                                         ; $5c76: $ff
	push bc                                          ; $5c77: $c5
	ld   sp, $1211                                   ; $5c78: $31 $11 $12
	adc  a                                           ; $5c7b: $8f
	rst  $38                                         ; $5c7c: $ff
	rst  $38                                         ; $5c7d: $ff
	ld   [$6576], a                                  ; $5c7e: $ea $76 $65
	ld   l, d                                        ; $5c81: $6a
	rst  $38                                         ; $5c82: $ff
	ret                                              ; $5c83: $c9


	ld   b, c                                        ; $5c84: $41
	ld   de, $1811                                   ; $5c85: $11 $11 $18
	rst  $38                                         ; $5c88: $ff
	rst  $38                                         ; $5c89: $ff
	rst  $38                                         ; $5c8a: $ff
	and  c                                           ; $5c8b: $a1
	ld   de, $1911                                   ; $5c8c: $11 $11 $19
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	and  e                                           ; $5c92: $a3
	dec  [hl]                                        ; $5c93: $35
	ld   [hl], a                                     ; $5c94: $77
	sbc  e                                           ; $5c95: $9b
	rst  $38                                         ; $5c96: $ff
	reti                                             ; $5c97: $d9


	ld   h, d                                        ; $5c98: $62
	ld   de, $1111                                   ; $5c99: $11 $11 $11
	rst  $38                                         ; $5c9c: $ff
	rst  $38                                         ; $5c9d: $ff
	rst  $38                                         ; $5c9e: $ff
	pop  af                                          ; $5c9f: $f1
	ld   de, $1512                                   ; $5ca0: $11 $12 $15
	rst  $38                                         ; $5ca3: $ff
	rst  $38                                         ; $5ca4: $ff
	db   $dd                                         ; $5ca5: $dd
	db   $fc                                         ; $5ca6: $fc
	ld   de, $ef4a                                   ; $5ca7: $11 $4a $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5caa: $cf
	cp   $97                                         ; $5cab: $fe $97
	xor  c                                           ; $5cad: $a9
	ld   sp, $1111                                   ; $5cae: $31 $11 $11
	rst  $28                                         ; $5cb1: $ef
	rst  $38                                         ; $5cb2: $ff
	rst  $38                                         ; $5cb3: $ff
	pop  hl                                          ; $5cb4: $e1
	ld   de, $8816                                   ; $5cb5: $11 $16 $88
	rst  $38                                         ; $5cb8: $ff
	rst  $38                                         ; $5cb9: $ff
	and  [hl]                                        ; $5cba: $a6
	ld   a, d                                        ; $5cbb: $7a
	or   [hl]                                        ; $5cbc: $b6
	ld   a, h                                        ; $5cbd: $7c
	rst  $38                                         ; $5cbe: $ff
	db   $fd                                         ; $5cbf: $fd
	cp   c                                           ; $5cc0: $b9
	adc  c                                           ; $5cc1: $89
	xor  h                                           ; $5cc2: $ac
	or   [hl]                                        ; $5cc3: $b6
	ld   de, $1111                                   ; $5cc4: $11 $11 $11
	ccf                                              ; $5cc7: $3f
	rst  $38                                         ; $5cc8: $ff
	cp   $f7                                         ; $5cc9: $fe $f7
	ld   de, $aa12                                   ; $5ccb: $11 $12 $aa
	cp   a                                           ; $5cce: $bf
	rst  $38                                         ; $5ccf: $ff
	rst  $20                                         ; $5cd0: $e7
	ld   h, a                                        ; $5cd1: $67
	cp   [hl]                                        ; $5cd2: $be
	sbc  c                                           ; $5cd3: $99
	sbc  $fa                                         ; $5cd4: $de $fa
	ld   e, c                                        ; $5cd6: $59
	cp   l                                           ; $5cd7: $bd
	db   $fc                                         ; $5cd8: $fc
	db   $dd                                         ; $5cd9: $dd
	sub  e                                           ; $5cda: $93
	ld   de, $1111                                   ; $5cdb: $11 $11 $11
	rra                                              ; $5cde: $1f
	rst  $38                                         ; $5cdf: $ff
	ld   sp, hl                                      ; $5ce0: $f9
	rl   c                                           ; $5ce1: $cb $11
	ld   de, $efff                                   ; $5ce3: $11 $ff $ef
	rst  $38                                         ; $5ce6: $ff
	db   $e3                                         ; $5ce7: $e3
	ld   de, $df58                                   ; $5ce8: $11 $58 $df
	rst  $38                                         ; $5ceb: $ff
	ret  c                                           ; $5cec: $d8

	ld   d, l                                        ; $5ced: $55
	ld   d, a                                        ; $5cee: $57
	sbc  l                                           ; $5cef: $9d
	rst  $38                                         ; $5cf0: $ff
	or   [hl]                                        ; $5cf1: $b6
	ld   sp, $1111                                   ; $5cf2: $31 $11 $11
	ld   de, $ff1f                                   ; $5cf5: $11 $1f $ff
	or   $8a                                         ; $5cf8: $f6 $8a
	ld   de, rAUD1LEN                                   ; $5cfa: $11 $11 $ff
	rst  $38                                         ; $5cfd: $ff
	rst  $38                                         ; $5cfe: $ff
	or   c                                           ; $5cff: $b1
	ld   de, $cf6a                                   ; $5d00: $11 $6a $cf
	rst  $38                                         ; $5d03: $ff
	or   h                                           ; $5d04: $b4
	ld   [de], a                                     ; $5d05: $12
	ld   d, l                                        ; $5d06: $55
	adc  l                                           ; $5d07: $8d
	rst  $38                                         ; $5d08: $ff
	ld   sp, hl                                      ; $5d09: $f9
	ld   h, l                                        ; $5d0a: $65
	ld   d, l                                        ; $5d0b: $55
	ld   hl, $1111                                   ; $5d0c: $21 $11 $11
	inc  e                                           ; $5d0f: $1c
	rst  $38                                         ; $5d10: $ff
	ld   sp, hl                                      ; $5d11: $f9
	ld   l, d                                        ; $5d12: $6a
	add  c                                           ; $5d13: $81
	ld   de, $faaf                                   ; $5d14: $11 $af $fa
	xor  [hl]                                        ; $5d17: $ae
	ret  c                                           ; $5d18: $d8

	ld   hl, $976a                                   ; $5d19: $21 $6a $97
	adc  a                                           ; $5d1c: $8f
	rst  $38                                         ; $5d1d: $ff
	ld   h, c                                        ; $5d1e: $61
	ld   e, e                                        ; $5d1f: $5b
	db   $eb                                         ; $5d20: $eb
	cp   l                                           ; $5d21: $bd
	rst  $38                                         ; $5d22: $ff
	and  [hl]                                        ; $5d23: $a6
	ld   b, [hl]                                     ; $5d24: $46
	ld   [hl], l                                     ; $5d25: $75
	inc  sp                                          ; $5d26: $33
	ld   de, $1611                                   ; $5d27: $11 $11 $16
	rst  $38                                         ; $5d2a: $ff
	ld   a, [$917b]                                  ; $5d2b: $fa $7b $91
	ld   de, $fb6f                                   ; $5d2e: $11 $6f $fb
	cp   [hl]                                        ; $5d31: $be
	ei                                               ; $5d32: $fb
	ld   b, c                                        ; $5d33: $41
	scf                                              ; $5d34: $37
	sub  a                                           ; $5d35: $97
	adc  h                                           ; $5d36: $8c
	rst  $38                                         ; $5d37: $ff
	sub  $7b                                         ; $5d38: $d6 $7b
	xor  d                                           ; $5d3a: $aa
	sub  a                                           ; $5d3b: $97
	call z, $a9bb                                    ; $5d3c: $cc $bb $a9
	cp   c                                           ; $5d3f: $b9
	halt                                             ; $5d40: $76
	ld   b, e                                        ; $5d41: $43
	ld   de, $1111                                   ; $5d42: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d45: $cf
	rst  $38                                         ; $5d46: $ff
	sbc  b                                           ; $5d47: $98
	sub  [hl]                                        ; $5d48: $96
	ld   de, $fe18                                   ; $5d49: $11 $18 $fe
	cp   e                                           ; $5d4c: $bb
	rst  $28                                         ; $5d4d: $ef
	and  l                                           ; $5d4e: $a5
	dec  [hl]                                        ; $5d4f: $35
	adc  b                                           ; $5d50: $88
	ld   h, a                                        ; $5d51: $67
	cp   a                                           ; $5d52: $bf
	rst  $38                                         ; $5d53: $ff
	ret                                              ; $5d54: $c9


	xor  c                                           ; $5d55: $a9
	ld   [hl], a                                     ; $5d56: $77
	ld   l, c                                        ; $5d57: $69
	res  7, h                                        ; $5d58: $cb $bc
	cp   e                                           ; $5d5a: $bb
	sub  l                                           ; $5d5b: $95
	ld   b, l                                        ; $5d5c: $45
	ld   b, d                                        ; $5d5d: $42
	ld   de, $1111                                   ; $5d5e: $11 $11 $11
	ld   a, a                                        ; $5d61: $7f
	rst  $38                                         ; $5d62: $ff
	cp   d                                           ; $5d63: $ba
	cp   e                                           ; $5d64: $bb
	ld   d, c                                        ; $5d65: $51
	inc  d                                           ; $5d66: $14
	xor  e                                           ; $5d67: $ab
	sbc  d                                           ; $5d68: $9a
	rst  $28                                         ; $5d69: $ef
	jp   c, $7666                                    ; $5d6a: $da $66 $76

	ld   b, h                                        ; $5d6d: $44
	ld   a, h                                        ; $5d6e: $7c
	xor  $ca                                         ; $5d6f: $ee $ca
	cp   l                                           ; $5d71: $bd
	and  a                                           ; $5d72: $a7
	ld   h, a                                        ; $5d73: $67
	xor  h                                           ; $5d74: $ac
	cp   e                                           ; $5d75: $bb
	call z, Call_0f0_44b7                            ; $5d76: $cc $b7 $44
	ld   b, d                                        ; $5d79: $42
	ld   de, $1111                                   ; $5d7a: $11 $11 $11
	ld   l, $ff                                      ; $5d7d: $2e $ff
	db   $eb                                         ; $5d7f: $eb
	cp   l                                           ; $5d80: $bd
	or   h                                           ; $5d81: $b4
	ld   de, $7768                                   ; $5d82: $11 $68 $77
	xor  [hl]                                        ; $5d85: $ae
	rst  $38                                         ; $5d86: $ff
	and  a                                           ; $5d87: $a7
	ld   [hl], a                                     ; $5d88: $77
	ld   d, e                                        ; $5d89: $53
	ld   b, a                                        ; $5d8a: $47
	adc  $cc                                         ; $5d8b: $ce $cc
	db   $dd                                         ; $5d8d: $dd
	jp   c, $8a77                                    ; $5d8e: $da $77 $8a

	cp   c                                           ; $5d91: $b9
	xor  e                                           ; $5d92: $ab
	cp   c                                           ; $5d93: $b9
	ld   h, l                                        ; $5d94: $65
	ld   b, e                                        ; $5d95: $43
	ld   hl, $1111                                   ; $5d96: $21 $11 $11
	ld   [de], a                                     ; $5d99: $12
	xor  a                                           ; $5d9a: $af
	db   $fd                                         ; $5d9b: $fd
	xor  h                                           ; $5d9c: $ac
	db   $ec                                         ; $5d9d: $ec
	ld   h, c                                        ; $5d9e: $61
	inc  d                                           ; $5d9f: $14
	ld   h, [hl]                                     ; $5da0: $66
	ld   [hl], $cf                                   ; $5da1: $36 $cf
	db   $fd                                         ; $5da3: $fd
	cp   h                                           ; $5da4: $bc
	ret                                              ; $5da5: $c9


	ld   [hl], l                                     ; $5da6: $75
	ld   d, [hl]                                     ; $5da7: $56
	ld   a, c                                        ; $5da8: $79
	sbc  d                                           ; $5da9: $9a
	adc  $dd                                         ; $5daa: $ce $dd
	cp   e                                           ; $5dac: $bb
	cp   d                                           ; $5dad: $ba
	sbc  b                                           ; $5dae: $98
	ld   a, b                                        ; $5daf: $78
	halt                                             ; $5db0: $76
	ld   h, h                                        ; $5db1: $64
	ld   b, e                                        ; $5db2: $43
	ld   hl, $1111                                   ; $5db3: $21 $11 $11
	dec  d                                           ; $5db6: $15
	xor  h                                           ; $5db7: $ac
	jp   z, $fcbe                                    ; $5db8: $ca $be $fc

	add  [hl]                                        ; $5dbb: $86
	ld   h, a                                        ; $5dbc: $67
	ld   h, l                                        ; $5dbd: $65
	ld   b, l                                        ; $5dbe: $45
	adc  e                                           ; $5dbf: $8b
	xor  d                                           ; $5dc0: $aa
	xor  e                                           ; $5dc1: $ab
	call z, $aaca                                    ; $5dc2: $cc $ca $aa
	sbc  c                                           ; $5dc5: $99
	adc  b                                           ; $5dc6: $88
	adc  d                                           ; $5dc7: $8a
	xor  c                                           ; $5dc8: $a9
	xor  e                                           ; $5dc9: $ab
	cp   d                                           ; $5dca: $ba
	xor  c                                           ; $5dcb: $a9
	add  a                                           ; $5dcc: $87
	halt                                             ; $5dcd: $76
	ld   d, l                                        ; $5dce: $55
	ld   d, h                                        ; $5dcf: $54
	ld   b, e                                        ; $5dd0: $43
	inc  sp                                          ; $5dd1: $33
	ld   b, l                                        ; $5dd2: $45
	ld   h, a                                        ; $5dd3: $67
	ld   [hl], a                                     ; $5dd4: $77
	ld   [hl], a                                     ; $5dd5: $77
	ld   a, b                                        ; $5dd6: $78
	adc  c                                           ; $5dd7: $89
	sbc  c                                           ; $5dd8: $99
	sbc  c                                           ; $5dd9: $99
	sbc  d                                           ; $5dda: $9a
	sbc  d                                           ; $5ddb: $9a
	sbc  c                                           ; $5ddc: $99
	sbc  c                                           ; $5ddd: $99
	adc  b                                           ; $5dde: $88
	adc  c                                           ; $5ddf: $89
	sbc  c                                           ; $5de0: $99
	sbc  c                                           ; $5de1: $99
	sbc  c                                           ; $5de2: $99
	sbc  c                                           ; $5de3: $99
	sbc  c                                           ; $5de4: $99
	sbc  c                                           ; $5de5: $99
	xor  c                                           ; $5de6: $a9
	sbc  c                                           ; $5de7: $99
	sbc  c                                           ; $5de8: $99
	sbc  d                                           ; $5de9: $9a
	sbc  c                                           ; $5dea: $99
	xor  c                                           ; $5deb: $a9
	sbc  b                                           ; $5dec: $98
	add  a                                           ; $5ded: $87
	ld   [hl], a                                     ; $5dee: $77
	halt                                             ; $5def: $76
	ld   h, l                                        ; $5df0: $65
	ld   d, [hl]                                     ; $5df1: $56
	ld   h, l                                        ; $5df2: $65
	ld   d, l                                        ; $5df3: $55
	ld   d, l                                        ; $5df4: $55
	ld   d, l                                        ; $5df5: $55
	ld   d, [hl]                                     ; $5df6: $56
	ld   h, a                                        ; $5df7: $67
	ld   [hl], a                                     ; $5df8: $77
	adc  c                                           ; $5df9: $89
	adc  b                                           ; $5dfa: $88
	sbc  d                                           ; $5dfb: $9a
	sbc  d                                           ; $5dfc: $9a
	xor  d                                           ; $5dfd: $aa
	xor  d                                           ; $5dfe: $aa
	xor  d                                           ; $5dff: $aa
	xor  d                                           ; $5e00: $aa
	xor  d                                           ; $5e01: $aa
	xor  d                                           ; $5e02: $aa
	xor  c                                           ; $5e03: $a9
	sbc  c                                           ; $5e04: $99
	sbc  c                                           ; $5e05: $99
	adc  c                                           ; $5e06: $89
	sbc  c                                           ; $5e07: $99
	adc  b                                           ; $5e08: $88
	sbc  c                                           ; $5e09: $99
	adc  c                                           ; $5e0a: $89
	adc  b                                           ; $5e0b: $88
	add  a                                           ; $5e0c: $87
	ld   [hl], a                                     ; $5e0d: $77
	ld   [hl], a                                     ; $5e0e: $77
	ld   [hl], a                                     ; $5e0f: $77
	ld   [hl], a                                     ; $5e10: $77
	halt                                             ; $5e11: $76
	ld   h, [hl]                                     ; $5e12: $66
	ld   h, [hl]                                     ; $5e13: $66
	ld   d, l                                        ; $5e14: $55
	ld   d, [hl]                                     ; $5e15: $56
	ld   h, [hl]                                     ; $5e16: $66
	ld   h, a                                        ; $5e17: $67
	ld   [hl], a                                     ; $5e18: $77
	adc  b                                           ; $5e19: $88
	adc  c                                           ; $5e1a: $89
	sbc  b                                           ; $5e1b: $98
	adc  c                                           ; $5e1c: $89
	sbc  c                                           ; $5e1d: $99
	xor  c                                           ; $5e1e: $a9
	sbc  d                                           ; $5e1f: $9a
	xor  d                                           ; $5e20: $aa
	sbc  c                                           ; $5e21: $99
	sbc  c                                           ; $5e22: $99
	xor  d                                           ; $5e23: $aa
	sbc  c                                           ; $5e24: $99
	sbc  c                                           ; $5e25: $99
	adc  b                                           ; $5e26: $88
	adc  c                                           ; $5e27: $89
	sbc  b                                           ; $5e28: $98
	add  a                                           ; $5e29: $87
	ld   [hl], a                                     ; $5e2a: $77
	ld   a, b                                        ; $5e2b: $78
	adc  c                                           ; $5e2c: $89
	sbc  b                                           ; $5e2d: $98
	adc  b                                           ; $5e2e: $88
	adc  b                                           ; $5e2f: $88
	add  a                                           ; $5e30: $87
	ld   a, b                                        ; $5e31: $78
	add  a                                           ; $5e32: $87
	ld   [hl], a                                     ; $5e33: $77
	ld   [hl], a                                     ; $5e34: $77
	halt                                             ; $5e35: $76
	ld   h, [hl]                                     ; $5e36: $66
	ld   h, [hl]                                     ; $5e37: $66
	ld   h, [hl]                                     ; $5e38: $66
	ld   h, a                                        ; $5e39: $67
	ld   [hl], a                                     ; $5e3a: $77
	ld   [hl], a                                     ; $5e3b: $77
	adc  b                                           ; $5e3c: $88
	adc  b                                           ; $5e3d: $88
	sbc  b                                           ; $5e3e: $98
	sbc  c                                           ; $5e3f: $99
	sbc  c                                           ; $5e40: $99
	sbc  c                                           ; $5e41: $99
	sbc  c                                           ; $5e42: $99
	sbc  c                                           ; $5e43: $99
	sbc  c                                           ; $5e44: $99
	adc  b                                           ; $5e45: $88
	adc  c                                           ; $5e46: $89
	sbc  c                                           ; $5e47: $99
	adc  b                                           ; $5e48: $88
	sbc  c                                           ; $5e49: $99
	adc  b                                           ; $5e4a: $88
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	adc  b                                           ; $5e4d: $88
	adc  b                                           ; $5e4e: $88
	add  a                                           ; $5e4f: $87
	ld   [hl], a                                     ; $5e50: $77
	ld   [hl], a                                     ; $5e51: $77
	ld   [hl], a                                     ; $5e52: $77
	ld   [hl], a                                     ; $5e53: $77
	ld   a, b                                        ; $5e54: $78
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
	ld   a, b                                        ; $5e70: $78
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
	sbc  c                                           ; $5ec0: $99
	sbc  d                                           ; $5ec1: $9a
	db   $dd                                         ; $5ec2: $dd
	add  [hl]                                        ; $5ec3: $86
	adc  c                                           ; $5ec4: $89
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	xor  d                                           ; $5ec7: $aa
	ld   h, l                                        ; $5ec8: $65
	ld   [hl], a                                     ; $5ec9: $77
	ld   h, [hl]                                     ; $5eca: $66
	ld   a, b                                        ; $5ecb: $78
	halt                                             ; $5ecc: $76
	ld   l, b                                        ; $5ecd: $68
	adc  d                                           ; $5ece: $8a
	xor  d                                           ; $5ecf: $aa
	cp   h                                           ; $5ed0: $bc
	sbc  b                                           ; $5ed1: $98
	ld   [hl], a                                     ; $5ed2: $77
	adc  c                                           ; $5ed3: $89
	adc  b                                           ; $5ed4: $88
	halt                                             ; $5ed5: $76
	ld   h, [hl]                                     ; $5ed6: $66
	ld   d, [hl]                                     ; $5ed7: $56
	ld   [hl], a                                     ; $5ed8: $77
	ld   a, b                                        ; $5ed9: $78
	adc  c                                           ; $5eda: $89
	sbc  b                                           ; $5edb: $98
	adc  c                                           ; $5edc: $89
	sbc  b                                           ; $5edd: $98
	sbc  b                                           ; $5ede: $98
	ld   a, b                                        ; $5edf: $78
	add  a                                           ; $5ee0: $87
	adc  b                                           ; $5ee1: $88
	adc  b                                           ; $5ee2: $88
	add  a                                           ; $5ee3: $87
	adc  b                                           ; $5ee4: $88
	ld   [hl], a                                     ; $5ee5: $77
	ld   h, [hl]                                     ; $5ee6: $66
	ld   h, [hl]                                     ; $5ee7: $66
	ld   d, h                                        ; $5ee8: $54
	ld   b, e                                        ; $5ee9: $43
	inc  sp                                          ; $5eea: $33
	ld   b, l                                        ; $5eeb: $45
	ld   h, [hl]                                     ; $5eec: $66
	ld   a, b                                        ; $5eed: $78
	xor  e                                           ; $5eee: $ab
	cp   h                                           ; $5eef: $bc
	cp   h                                           ; $5ef0: $bc
	cp   e                                           ; $5ef1: $bb
	cp   c                                           ; $5ef2: $b9
	xor  d                                           ; $5ef3: $aa
	sbc  c                                           ; $5ef4: $99
	adc  c                                           ; $5ef5: $89
	sbc  d                                           ; $5ef6: $9a
	sbc  d                                           ; $5ef7: $9a
	xor  e                                           ; $5ef8: $ab
	call z, $bbbb                                    ; $5ef9: $cc $bb $bb
	cp   d                                           ; $5efc: $ba
	xor  d                                           ; $5efd: $aa
	add  a                                           ; $5efe: $87
	ld   d, h                                        ; $5eff: $54
	ld   sp, $1111                                   ; $5f00: $31 $11 $11
	ld   de, $7925                                   ; $5f03: $11 $25 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f06: $cf
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	db   $fd                                         ; $5f09: $fd
	ret                                              ; $5f0a: $c9


	ld   h, l                                        ; $5f0b: $65
	ld   d, h                                        ; $5f0c: $54
	ld   b, l                                        ; $5f0d: $45
	ld   l, d                                        ; $5f0e: $6a
	cp   l                                           ; $5f0f: $bd
	sbc  $ff                                         ; $5f10: $de $ff
	cp   $dc                                         ; $5f12: $fe $dc
	cp   d                                           ; $5f14: $ba
	sbc  d                                           ; $5f15: $9a
	sbc  c                                           ; $5f16: $99
	halt                                             ; $5f17: $76
	ld   h, l                                        ; $5f18: $65
	ld   sp, $1111                                   ; $5f19: $31 $11 $11
	ld   de, $7914                                   ; $5f1c: $11 $14 $79
	rst  JumpTable                                         ; $5f1f: $df
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	cp   $a6                                         ; $5f22: $fe $a6
	ld   d, e                                        ; $5f24: $53
	ld   [hl+], a                                    ; $5f25: $22
	dec  [hl]                                        ; $5f26: $35
	sbc  e                                           ; $5f27: $9b
	rst  $28                                         ; $5f28: $ef
	rst  $38                                         ; $5f29: $ff
	rst  $38                                         ; $5f2a: $ff
	db   $ed                                         ; $5f2b: $ed
	xor  d                                           ; $5f2c: $aa
	xor  c                                           ; $5f2d: $a9
	sbc  d                                           ; $5f2e: $9a
	sbc  c                                           ; $5f2f: $99
	and  a                                           ; $5f30: $a7
	ld   h, l                                        ; $5f31: $65
	ld   sp, $1111                                   ; $5f32: $31 $11 $11
	ld   de, $9d25                                   ; $5f35: $11 $25 $9d
	rst  $38                                         ; $5f38: $ff
	rst  $38                                         ; $5f39: $ff
	rst  $38                                         ; $5f3a: $ff
	ret  c                                           ; $5f3b: $d8

	ld   d, d                                        ; $5f3c: $52
	ld   bc, $6a02                                   ; $5f3d: $01 $02 $6a
	rst  JumpTable                                         ; $5f40: $df
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	db   $ec                                         ; $5f43: $ec
	and  a                                           ; $5f44: $a7
	ld   a, b                                        ; $5f45: $78
	adc  c                                           ; $5f46: $89
	sbc  d                                           ; $5f47: $9a
	res  0, [hl]                                     ; $5f48: $cb $86
	ld   d, d                                        ; $5f4a: $52
	ld   de, $1111                                   ; $5f4b: $11 $11 $11
	inc  d                                           ; $5f4e: $14
	adc  [hl]                                        ; $5f4f: $8e
	rst  $38                                         ; $5f50: $ff
	rst  $38                                         ; $5f51: $ff
	rst  $38                                         ; $5f52: $ff
	sub  $32                                         ; $5f53: $d6 $32
	ld   de, $7c13                                   ; $5f55: $11 $13 $7c
	rst  JumpTable                                         ; $5f58: $df
	rst  $38                                         ; $5f59: $ff
	rst  $38                                         ; $5f5a: $ff
	db   $db                                         ; $5f5b: $db
	sub  l                                           ; $5f5c: $95
	ld   [hl], $89                                   ; $5f5d: $36 $89
	cp   l                                           ; $5f5f: $bd
	sbc  $b7                                         ; $5f60: $de $b7
	ld   d, e                                        ; $5f62: $53
	ld   de, $1111                                   ; $5f63: $11 $11 $11
	dec  d                                           ; $5f66: $15
	xor  a                                           ; $5f67: $af
	rst  $38                                         ; $5f68: $ff
	rst  $38                                         ; $5f69: $ff
	db   $fd                                         ; $5f6a: $fd
	add  e                                           ; $5f6b: $83
	ld   de, $2611                                   ; $5f6c: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f6f: $cf
	rst  $38                                         ; $5f70: $ff
	rst  $38                                         ; $5f71: $ff
	db   $fc                                         ; $5f72: $fc
	sub  [hl]                                        ; $5f73: $96
	ld   b, h                                        ; $5f74: $44
	ld   e, b                                        ; $5f75: $58
	cp   l                                           ; $5f76: $bd
	db   $ed                                         ; $5f77: $ed
	reti                                             ; $5f78: $d9


	ld   d, d                                        ; $5f79: $52
	ld   de, $1111                                   ; $5f7a: $11 $11 $11
	rla                                              ; $5f7d: $17
	sbc  a                                           ; $5f7e: $9f
	rst  $38                                         ; $5f7f: $ff
	rst  $38                                         ; $5f80: $ff
	db   $fc                                         ; $5f81: $fc
	ld   [hl], d                                     ; $5f82: $72
	ld   de, $3811                                   ; $5f83: $11 $11 $38
	rst  $28                                         ; $5f86: $ef
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	ld   a, [$4575]                                  ; $5f89: $fa $75 $45
	ld   l, c                                        ; $5f8c: $69
	sbc  $fd                                         ; $5f8d: $de $fd
	cp   b                                           ; $5f8f: $b8
	ld   hl, $1111                                   ; $5f90: $21 $11 $11
	ld   de, $ef4a                                   ; $5f93: $11 $4a $ef
	rst  $38                                         ; $5f96: $ff
	rst  $38                                         ; $5f97: $ff
	cp   c                                           ; $5f98: $b9
	ld   sp, $3511                                   ; $5f99: $31 $11 $35
	sbc  a                                           ; $5f9c: $9f
	rst  $38                                         ; $5f9d: $ff
	rst  $38                                         ; $5f9e: $ff
	db   $fd                                         ; $5f9f: $fd
	sub  l                                           ; $5fa0: $95
	ld   b, l                                        ; $5fa1: $45
	ld   a, c                                        ; $5fa2: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fa3: $cf
	rst  $38                                         ; $5fa4: $ff
	or   a                                           ; $5fa5: $b7
	ld   sp, $1111                                   ; $5fa6: $31 $11 $11
	ld   de, $ef3e                                   ; $5fa9: $11 $3e $ef
	rst  $38                                         ; $5fac: $ff
	rst  $38                                         ; $5fad: $ff
	ld   h, l                                        ; $5fae: $65
	ld   hl, $4811                                   ; $5faf: $21 $11 $48
	rst  $28                                         ; $5fb2: $ef
	rst  $38                                         ; $5fb3: $ff
	rst  $38                                         ; $5fb4: $ff
	ld   sp, hl                                      ; $5fb5: $f9
	ld   h, h                                        ; $5fb6: $64
	ld   [hl], $bd                                   ; $5fb7: $36 $bd
	rst  $38                                         ; $5fb9: $ff
	reti                                             ; $5fba: $d9


	ld   b, c                                        ; $5fbb: $41
	ld   de, $1111                                   ; $5fbc: $11 $11 $11
	ld   a, [de]                                     ; $5fbf: $1a
	rst  $38                                         ; $5fc0: $ff
	rst  $38                                         ; $5fc1: $ff
	rst  $38                                         ; $5fc2: $ff
	add  h                                           ; $5fc3: $84
	ld   de, $2a11                                   ; $5fc4: $11 $11 $2a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fc7: $cf
	rst  $38                                         ; $5fc8: $ff
	rst  $38                                         ; $5fc9: $ff
	ei                                               ; $5fca: $fb
	ld   h, e                                        ; $5fcb: $63
	ld   h, $bd                                      ; $5fcc: $26 $bd
	cp   $b8                                         ; $5fce: $fe $b8
	ld   sp, $1111                                   ; $5fd0: $31 $11 $11
	ld   de, $ff3f                                   ; $5fd3: $11 $3f $ff
	rst  $38                                         ; $5fd6: $ff
	db   $fd                                         ; $5fd7: $fd
	ld   d, d                                        ; $5fd8: $52
	ld   de, $8c11                                   ; $5fd9: $11 $11 $8c
	rst  $38                                         ; $5fdc: $ff
	rst  $38                                         ; $5fdd: $ff
	rst  $38                                         ; $5fde: $ff
	reti                                             ; $5fdf: $d9


	ld   b, l                                        ; $5fe0: $45
	adc  e                                           ; $5fe1: $8b
	db   $db                                         ; $5fe2: $db
	sub  l                                           ; $5fe3: $95
	ld   de, $1111                                   ; $5fe4: $11 $11 $11
	ld   de, $ff4f                                   ; $5fe7: $11 $4f $ff
	rst  $38                                         ; $5fea: $ff
	ei                                               ; $5feb: $fb
	ld   d, e                                        ; $5fec: $53
	ld   de, $bf11                                   ; $5fed: $11 $11 $bf
	rst  $38                                         ; $5ff0: $ff
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	cp   c                                           ; $5ff3: $b9
	cp   e                                           ; $5ff4: $bb
	cp   l                                           ; $5ff5: $bd
	ret                                              ; $5ff6: $c9


	ld   sp, $1111                                   ; $5ff7: $31 $11 $11
	ld   de, $ff15                                   ; $5ffa: $11 $15 $ff
	rst  $38                                         ; $5ffd: $ff
	rst  $38                                         ; $5ffe: $ff
	sub  e                                           ; $5fff: $93
	ld   de, $5f11                                   ; $6000: $11 $11 $5f
	rst  $38                                         ; $6003: $ff
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	ld   [$ccac], a                                  ; $6006: $ea $ac $cc
	cp   c                                           ; $6009: $b9
	ld   d, c                                        ; $600a: $51
	ld   de, $1111                                   ; $600b: $11 $11 $11
	jr   @+$01                                       ; $600e: $18 $ff

	rst  $38                                         ; $6010: $ff
	cp   $73                                         ; $6011: $fe $73
	ld   de, $9f11                                   ; $6013: $11 $11 $9f
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	rst  $38                                         ; $6018: $ff
	cp   $fd                                         ; $6019: $fe $fd
	xor  b                                           ; $601b: $a8
	ld   [hl], c                                     ; $601c: $71
	ld   de, $1111                                   ; $601d: $11 $11 $11
	ld   de, $ffff                                   ; $6020: $11 $ff $ff
	rst  $38                                         ; $6023: $ff
	jp   $1111                                       ; $6024: $c3 $11 $11


	ld   e, a                                        ; $6027: $5f
	rst  $38                                         ; $6028: $ff
	rst  $38                                         ; $6029: $ff
	rst  $38                                         ; $602a: $ff
	rst  $38                                         ; $602b: $ff
	rst  $38                                         ; $602c: $ff
	or   a                                           ; $602d: $b7
	ld   d, c                                        ; $602e: $51
	ld   de, $1111                                   ; $602f: $11 $11 $11
	add  hl, de                                      ; $6032: $19
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	rst  $38                                         ; $6035: $ff
	ld   h, c                                        ; $6036: $61
	ld   de, $bf12                                   ; $6037: $11 $12 $bf
	rst  $38                                         ; $603a: $ff
	rst  $38                                         ; $603b: $ff
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	ei                                               ; $603e: $fb
	ld   b, c                                        ; $603f: $41
	ld   de, $1111                                   ; $6040: $11 $11 $11
	ld   de, $ffff                                   ; $6043: $11 $ff $ff
	rst  $38                                         ; $6046: $ff
	call nz, $1211                                   ; $6047: $c4 $11 $12
	ld   a, a                                        ; $604a: $7f
	rst  $38                                         ; $604b: $ff
	rst  $38                                         ; $604c: $ff
	rst  $38                                         ; $604d: $ff
	rst  $38                                         ; $604e: $ff
	db   $fc                                         ; $604f: $fc
	ld   [hl], c                                     ; $6050: $71
	ld   de, $1111                                   ; $6051: $11 $11 $11
	ld   de, $ffff                                   ; $6054: $11 $ff $ff
	rst  $38                                         ; $6057: $ff
	pop  de                                          ; $6058: $d1
	ld   hl, $bf13                                   ; $6059: $21 $13 $bf
	rst  $38                                         ; $605c: $ff
	rst  $38                                         ; $605d: $ff
	rst  $38                                         ; $605e: $ff
	rst  $38                                         ; $605f: $ff
	rst  $10                                         ; $6060: $d7
	ld   hl, $1111                                   ; $6061: $21 $11 $11
	ld   de, $ff1e                                   ; $6064: $11 $1e $ff
	rst  $38                                         ; $6067: $ff
	rst  $38                                         ; $6068: $ff
	ld   sp, $4d11                                   ; $6069: $31 $11 $4d
	call c, $ffff                                    ; $606c: $dc $ff $ff
	rst  $38                                         ; $606f: $ff
	rst  $38                                         ; $6070: $ff
	ld   d, d                                        ; $6071: $52
	ld   de, $1111                                   ; $6072: $11 $11 $11
	jr   @+$01                                       ; $6075: $18 $ff

	rst  $38                                         ; $6077: $ff
	rst  $38                                         ; $6078: $ff
	ld   d, c                                        ; $6079: $51
	ld   de, $ed18                                   ; $607a: $11 $18 $ed
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	rst  $38                                         ; $607f: $ff
	db   $fd                                         ; $6080: $fd
	ld   [hl], c                                     ; $6081: $71
	ld   de, $1111                                   ; $6082: $11 $11 $11
	rra                                              ; $6085: $1f
	rst  $38                                         ; $6086: $ff
	rst  $38                                         ; $6087: $ff
	rst  $38                                         ; $6088: $ff
	ld   hl, $2b11                                   ; $6089: $21 $11 $2b
	cp   c                                           ; $608c: $b9
	rst  $38                                         ; $608d: $ff
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	cp   $31                                         ; $6090: $fe $31
	ld   de, $1111                                   ; $6092: $11 $11 $11
	adc  a                                           ; $6095: $8f
	rst  $38                                         ; $6096: $ff
	rst  $38                                         ; $6097: $ff
	rst  $30                                         ; $6098: $f7
	ld   de, $ac11                                   ; $6099: $11 $11 $ac
	cp   a                                           ; $609c: $bf
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	rst  $38                                         ; $609f: $ff
	or   $11                                         ; $60a0: $f6 $11
	ld   de, $1d11                                   ; $60a2: $11 $11 $1d
	rst  $38                                         ; $60a5: $ff
	rst  $38                                         ; $60a6: $ff
	rst  $38                                         ; $60a7: $ff
	ld   sp, $3b11                                   ; $60a8: $31 $11 $3b
	sbc  h                                           ; $60ab: $9c
	rst  $38                                         ; $60ac: $ff
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	db   $eb                                         ; $60af: $eb
	ld   b, c                                        ; $60b0: $41
	ld   de, $1111                                   ; $60b1: $11 $11 $11
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	ld   h, c                                        ; $60b7: $61
	ld   de, $6f57                                   ; $60b8: $11 $57 $6f
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	rst  $38                                         ; $60bd: $ff
	db   $ec                                         ; $60be: $ec
	ld   sp, $1111                                   ; $60bf: $31 $11 $11
	ld   de, $ffff                                   ; $60c2: $11 $ff $ff
	rst  $38                                         ; $60c5: $ff
	ld   d, c                                        ; $60c6: $51
	ld   [de], a                                     ; $60c7: $12
	sub  l                                           ; $60c8: $95
	sbc  a                                           ; $60c9: $9f
	rst  $38                                         ; $60ca: $ff
	rst  $38                                         ; $60cb: $ff
	rst  $38                                         ; $60cc: $ff
	and  a                                           ; $60cd: $a7
	ld   b, c                                        ; $60ce: $41
	ld   de, $1f11                                   ; $60cf: $11 $11 $1f
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	db   $fd                                         ; $60d4: $fd
	ld   de, $a616                                   ; $60d5: $11 $16 $a6
	rst  JumpTable                                         ; $60d8: $df
	rst  $38                                         ; $60d9: $ff
	rst  $38                                         ; $60da: $ff
	db   $fd                                         ; $60db: $fd
	ld   h, c                                        ; $60dc: $61
	ld   de, $1111                                   ; $60dd: $11 $11 $11
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	pop  hl                                          ; $60e3: $e1
	ld   de, $6f78                                   ; $60e4: $11 $78 $6f
	rst  $38                                         ; $60e7: $ff
	rst  $38                                         ; $60e8: $ff
	rst  $38                                         ; $60e9: $ff
	push de                                          ; $60ea: $d5
	ld   de, $1111                                   ; $60eb: $11 $11 $11
	rra                                              ; $60ee: $1f
	rst  $38                                         ; $60ef: $ff
	rst  $38                                         ; $60f0: $ff
	rst  $30                                         ; $60f1: $f7
	ld   de, $2419                                   ; $60f2: $11 $19 $24
	rst  $38                                         ; $60f5: $ff
	rst  $38                                         ; $60f6: $ff
	rst  $38                                         ; $60f7: $ff
	db   $eb                                         ; $60f8: $eb
	ld   sp, $1111                                   ; $60f9: $31 $11 $11
	rra                                              ; $60fc: $1f
	rst  $38                                         ; $60fd: $ff
	rst  $38                                         ; $60fe: $ff
	rst  $38                                         ; $60ff: $ff
	ld   de, $6119                                   ; $6100: $11 $19 $61
	rst  $38                                         ; $6103: $ff
	rst  $38                                         ; $6104: $ff
	rst  $38                                         ; $6105: $ff
	db   $eb                                         ; $6106: $eb
	ld   [hl-], a                                    ; $6107: $32
	ld   de, $1c11                                   ; $6108: $11 $11 $1c
	rst  $38                                         ; $610b: $ff
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	ld   de, $211b                                   ; $610e: $11 $1b $21

Call_0f0_6111:
	rst  $38                                         ; $6111: $ff
	rst  $38                                         ; $6112: $ff
	rst  $38                                         ; $6113: $ff
	jp   hl                                          ; $6114: $e9


	ld   b, h                                        ; $6115: $44
	ld   de, $1f11                                   ; $6116: $11 $11 $1f
	rst  $38                                         ; $6119: $ff
	rst  $38                                         ; $611a: $ff
	ld   a, [$2d11]                                  ; $611b: $fa $11 $2d
	inc  h                                           ; $611e: $24
	rst  $38                                         ; $611f: $ff
	rst  $38                                         ; $6120: $ff
	cp   $76                                         ; $6121: $fe $76
	ld   [hl], l                                     ; $6123: $75
	ld   de, $1f11                                   ; $6124: $11 $11 $1f
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	pop  af                                          ; $6129: $f1
	inc  d                                           ; $612a: $14
	or   c                                           ; $612b: $b1
	cpl                                              ; $612c: $2f
	rst  $38                                         ; $612d: $ff
	rst  $38                                         ; $612e: $ff
	rst  $20                                         ; $612f: $e7
	inc  [hl]                                        ; $6130: $34
	ld   [hl], c                                     ; $6131: $71
	ld   de, rAUD1LEN                                   ; $6132: $11 $11 $ff
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	ld   de, $387c                                   ; $6137: $11 $7c $38
	rst  $38                                         ; $613a: $ff
	cp   $e9                                         ; $613b: $fe $e9
	ld   de, $1135                                   ; $613d: $11 $35 $11
	ld   de, $ffff                                   ; $6140: $11 $ff $ff
	rst  $38                                         ; $6143: $ff
	ld   h, c                                        ; $6144: $61
	inc  e                                           ; $6145: $1c
	adc  b                                           ; $6146: $88
	rst  $38                                         ; $6147: $ff
	rst  $38                                         ; $6148: $ff
	db   $db                                         ; $6149: $db
	ld   hl, $1111                                   ; $614a: $21 $11 $11
	ld   de, $ffff                                   ; $614d: $11 $ff $ff
	rst  $38                                         ; $6150: $ff
	ld   sp, $3916                                   ; $6151: $31 $16 $39
	rst  $38                                         ; $6154: $ff
	rst  $38                                         ; $6155: $ff
	rst  $30                                         ; $6156: $f7
	ld   hl, $1111                                   ; $6157: $21 $11 $11
	ld   [de], a                                     ; $615a: $12
	rst  $38                                         ; $615b: $ff
	rst  $38                                         ; $615c: $ff
	rst  $38                                         ; $615d: $ff
	ld   de, $6f46                                   ; $615e: $11 $46 $6f
	rst  $38                                         ; $6161: $ff
	rst  $38                                         ; $6162: $ff
	ld   h, c                                        ; $6163: $61
	ld   de, $1111                                   ; $6164: $11 $11 $11
	rra                                              ; $6167: $1f
	rst  $38                                         ; $6168: $ff
	rst  $38                                         ; $6169: $ff
	pop  af                                          ; $616a: $f1
	dec  d                                           ; $616b: $15
	ld   e, c                                        ; $616c: $59
	rst  $38                                         ; $616d: $ff
	rst  $38                                         ; $616e: $ff
	db   $d3                                         ; $616f: $d3
	ld   de, $1121                                   ; $6170: $11 $21 $11
	rla                                              ; $6173: $17
	rst  $38                                         ; $6174: $ff
	rst  $38                                         ; $6175: $ff
	ld   sp, hl                                      ; $6176: $f9
	ld   de, $ff75                                   ; $6177: $11 $75 $ff
	rst  $38                                         ; $617a: $ff
	or   $11                                         ; $617b: $f6 $11
	ld   de, $1111                                   ; $617d: $11 $11 $11
	rst  $38                                         ; $6180: $ff
	rst  $38                                         ; $6181: $ff
	ld   hl, sp+$11                                  ; $6182: $f8 $11
	ld   h, $ff                                      ; $6184: $26 $ff
	rst  $38                                         ; $6186: $ff
	ld   sp, hl                                      ; $6187: $f9
	ld   de, $1111                                   ; $6188: $11 $11 $11
	inc  de                                          ; $618b: $13
	rst  $38                                         ; $618c: $ff
	rst  $38                                         ; $618d: $ff
	db   $f4                                         ; $618e: $f4
	ld   de, $ff1c                                   ; $618f: $11 $1c $ff
	rst  $38                                         ; $6192: $ff
	ldh  a, [c]                                      ; $6193: $f2
	ld   de, $1111                                   ; $6194: $11 $11 $11
	rra                                              ; $6197: $1f
	rst  $38                                         ; $6198: $ff
	rst  $38                                         ; $6199: $ff
	ld   d, h                                        ; $619a: $54
	ld   de, $ff6f                                   ; $619b: $11 $6f $ff
	rst  $38                                         ; $619e: $ff
	ld   d, c                                        ; $619f: $51
	ld   de, $1311                                   ; $61a0: $11 $11 $13
	rst  $38                                         ; $61a3: $ff
	rst  $38                                         ; $61a4: $ff
	sub  a                                           ; $61a5: $97
	ld   d, c                                        ; $61a6: $51
	inc  e                                           ; $61a7: $1c
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	pop  af                                          ; $61aa: $f1
	ld   de, $1211                                   ; $61ab: $11 $11 $12
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	db   $dd                                         ; $61b0: $dd
	ld   b, c                                        ; $61b1: $41
	ld   d, $ff                                      ; $61b2: $16 $ff
	rst  $38                                         ; $61b4: $ff
	add  c                                           ; $61b5: $81
	ld   de, $6d11                                   ; $61b6: $11 $11 $6d
	rst  $38                                         ; $61b9: $ff
	rst  $38                                         ; $61ba: $ff
	ei                                               ; $61bb: $fb
	ld   [de], a                                     ; $61bc: $12
	ld   e, a                                        ; $61bd: $5f
	rst  $38                                         ; $61be: $ff
	pop  hl                                          ; $61bf: $e1
	ld   de, $6f11                                   ; $61c0: $11 $11 $6f
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	rst  ToBoot                                         ; $61c5: $c7
	inc  d                                           ; $61c6: $14
	ld   a, d                                        ; $61c7: $7a
	rst  $38                                         ; $61c8: $ff
	push af                                          ; $61c9: $f5
	ld   de, $6f11                                   ; $61ca: $11 $11 $6f
	rst  $38                                         ; $61cd: $ff

jr_0f0_61ce:
	rst  $38                                         ; $61ce: $ff
	ld   a, [$3811]                                  ; $61cf: $fa $11 $38
	rst  $38                                         ; $61d2: $ff
	or   $11                                         ; $61d3: $f6 $11
	ld   de, $ff9f                                   ; $61d5: $11 $9f $ff
	rst  $38                                         ; $61d8: $ff
	ld   a, [$3a11]                                  ; $61d9: $fa $11 $3a
	rst  $38                                         ; $61dc: $ff
	or   $11                                         ; $61dd: $f6 $11
	ld   de, $ff3f                                   ; $61df: $11 $3f $ff
	rst  $38                                         ; $61e2: $ff
	rst  $38                                         ; $61e3: $ff
	ld   de, $ff57                                   ; $61e4: $11 $57 $ff
	di                                               ; $61e7: $f3
	ld   de, $af11                                   ; $61e8: $11 $11 $af
	rst  $38                                         ; $61eb: $ff
	rst  $38                                         ; $61ec: $ff
	ld   a, [$7a13]                                  ; $61ed: $fa $13 $7a
	rst  $38                                         ; $61f0: $ff
	pop  bc                                          ; $61f1: $c1
	ld   de, $ef13                                   ; $61f2: $11 $13 $ef
	rst  $38                                         ; $61f5: $ff
	rst  $38                                         ; $61f6: $ff
	db   $f4                                         ; $61f7: $f4
	daa                                              ; $61f8: $27
	adc  a                                           ; $61f9: $8f
	rst  $38                                         ; $61fa: $ff
	ld   b, c                                        ; $61fb: $41
	ld   de, $ff18                                   ; $61fc: $11 $18 $ff
	rst  $38                                         ; $61ff: $ff
	rst  $38                                         ; $6200: $ff
	and  c                                           ; $6201: $a1
	adc  e                                           ; $6202: $8b
	cp   a                                           ; $6203: $bf
	rst  $30                                         ; $6204: $f7
	ld   de, $8f11                                   ; $6205: $11 $11 $8f
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	db   $fc                                         ; $620a: $fc
	dec  d                                           ; $620b: $15
	adc  d                                           ; $620c: $8a
	rst  $38                                         ; $620d: $ff
	pop  bc                                          ; $620e: $c1
	ld   de, $ff18                                   ; $620f: $11 $18 $ff
	rst  $38                                         ; $6212: $ff
	rst  $38                                         ; $6213: $ff
	db   $d3                                         ; $6214: $d3
	adc  d                                           ; $6215: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6216: $cf
	ld   hl, sp+$11                                  ; $6217: $f8 $11
	ld   de, $ffaf                                   ; $6219: $11 $af $ff
	rst  $38                                         ; $621c: $ff
	ei                                               ; $621d: $fb
	jr   z, jr_0f0_61ce                              ; $621e: $28 $ae

	cp   $71                                         ; $6220: $fe $71
	ld   de, $ff1c                                   ; $6222: $11 $1c $ff
	rst  $38                                         ; $6225: $ff
	rst  $38                                         ; $6226: $ff
	add  e                                           ; $6227: $83
	adc  l                                           ; $6228: $8d
	rst  $28                                         ; $6229: $ef
	jp   nz, $1311                                   ; $622a: $c2 $11 $13

	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	rst  $38                                         ; $622f: $ff
	and  $3b                                         ; $6230: $e6 $3b
	rst  $28                                         ; $6232: $ef
	rst  $30                                         ; $6233: $f7
	ld   de, $9f11                                   ; $6234: $11 $11 $9f
	rst  $38                                         ; $6237: $ff
	rst  $38                                         ; $6238: $ff
	ld   sp, hl                                      ; $6239: $f9
	ld   c, b                                        ; $623a: $48
	adc  $fe                                         ; $623b: $ce $fe
	ld   de, $3f11                                   ; $623d: $11 $11 $3f
	rst  $38                                         ; $6240: $ff
	rst  $38                                         ; $6241: $ff
	db   $ec                                         ; $6242: $ec
	ld   h, l                                        ; $6243: $65
	set  7, a                                        ; $6244: $cb $ff
	ld   h, c                                        ; $6246: $61
	ld   de, $ff1b                                   ; $6247: $11 $1b $ff
	rst  $38                                         ; $624a: $ff
	db   $fd                                         ; $624b: $fd
	ld   a, b                                        ; $624c: $78
	sbc  d                                           ; $624d: $9a
	rst  $28                                         ; $624e: $ef
	sub  c                                           ; $624f: $91
	ld   de, $ff1d                                   ; $6250: $11 $1d $ff
	rst  $38                                         ; $6253: $ff
	db   $fd                                         ; $6254: $fd
	adc  c                                           ; $6255: $89
	call z, $a1af                                    ; $6256: $cc $af $a1
	ld   de, $ff1e                                   ; $6259: $11 $1e $ff
	rst  $38                                         ; $625c: $ff
	db   $fc                                         ; $625d: $fc
	ld   l, c                                        ; $625e: $69
	xor  h                                           ; $625f: $ac
	cp   [hl]                                        ; $6260: $be
	sub  c                                           ; $6261: $91
	ld   de, $ff1d                                   ; $6262: $11 $1d $ff
	rst  $38                                         ; $6265: $ff
	ld   a, [$ac59]                                  ; $6266: $fa $59 $ac
	cp   [hl]                                        ; $6269: $be
	and  c                                           ; $626a: $a1
	ld   de, $ff1d                                   ; $626b: $11 $1d $ff
	rst  $38                                         ; $626e: $ff
	db   $fd                                         ; $626f: $fd
	adc  c                                           ; $6270: $89
	call z, Call_0f0_51ab                            ; $6271: $cc $ab $51
	ld   de, $ff4f                                   ; $6274: $11 $4f $ff
	rst  $38                                         ; $6277: $ff
	ld   a, [$ecac]                                  ; $6278: $fa $ac $ec
	xor  d                                           ; $627b: $aa
	ld   de, $9f11                                   ; $627c: $11 $11 $9f
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	ld   hl, sp-$44                                  ; $6281: $f8 $bc
	jp   z, $11a9                                    ; $6283: $ca $a9 $11

	ld   de, $ffff                                   ; $6286: $11 $ff $ff
	rst  $38                                         ; $6289: $ff
	cp   d                                           ; $628a: $ba
	rst  $28                                         ; $628b: $ef
	add  sp, -$4f                                    ; $628c: $e8 $b1
	ld   de, $ff1d                                   ; $628e: $11 $1d $ff
	rst  $38                                         ; $6291: $ff
	db   $fc                                         ; $6292: $fc
	sbc  a                                           ; $6293: $9f
	rst  $38                                         ; $6294: $ff
	bit  4, c                                        ; $6295: $cb $61
	ld   de, $ff3f                                   ; $6297: $11 $3f $ff
	rst  $38                                         ; $629a: $ff
	ld   sp, hl                                      ; $629b: $f9
	xor  [hl]                                        ; $629c: $ae
	rst  $38                                         ; $629d: $ff
	cp   c                                           ; $629e: $b9
	ld   de, rAUD1LEN                                   ; $629f: $11 $11 $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	xor  b                                           ; $62a4: $a8
	rst  $28                                         ; $62a5: $ef
	db   $fc                                         ; $62a6: $fc
	and  c                                           ; $62a7: $a1
	ld   de, $ff1b                                   ; $62a8: $11 $1b $ff
	rst  $38                                         ; $62ab: $ff
	ei                                               ; $62ac: $fb
	ld   a, l                                        ; $62ad: $7d
	rst  $38                                         ; $62ae: $ff
	cp   b                                           ; $62af: $b8
	ld   b, c                                        ; $62b0: $41
	ld   de, $ff9f                                   ; $62b1: $11 $9f $ff
	rst  $38                                         ; $62b4: $ff
	ret  z                                           ; $62b5: $c8

	rst  JumpTable                                         ; $62b6: $df
	db   $fc                                         ; $62b7: $fc
	add  e                                           ; $62b8: $83
	ld   de, $ff19                                   ; $62b9: $11 $19 $ff
	db   $fd                                         ; $62bc: $fd
	db   $fc                                         ; $62bd: $fc
	ld   l, l                                        ; $62be: $6d
	rst  $38                                         ; $62bf: $ff
	rst  $10                                         ; $62c0: $d7
	ld   b, c                                        ; $62c1: $41
	ld   de, $ff7f                                   ; $62c2: $11 $7f $ff
	rst  $38                                         ; $62c5: $ff
	and  [hl]                                        ; $62c6: $a6
	xor  a                                           ; $62c7: $af
	cp   $93                                         ; $62c8: $fe $93
	ld   de, $ff17                                   ; $62ca: $11 $17 $ff
	db   $fd                                         ; $62cd: $fd
	ei                                               ; $62ce: $fb
	ld   l, l                                        ; $62cf: $6d
	rst  $38                                         ; $62d0: $ff
	rst  ToBoot                                         ; $62d1: $c7
	ld   sp, $af11                                   ; $62d2: $31 $11 $af
	rst  $38                                         ; $62d5: $ff
	xor  $97                                         ; $62d6: $ee $97
	rst  $28                                         ; $62d8: $ef
	db   $fc                                         ; $62d9: $fc
	ld   h, c                                        ; $62da: $61
	ld   de, $ff1c                                   ; $62db: $11 $1c $ff
	cp   $d7                                         ; $62de: $fe $d7
	ld   e, [hl]                                     ; $62e0: $5e
	rst  $38                                         ; $62e1: $ff
	sub  $11                                         ; $62e2: $d6 $11
	ld   de, $ffff                                   ; $62e4: $11 $ff $ff
	db   $dd                                         ; $62e7: $dd
	add  a                                           ; $62e8: $87
	rst  $38                                         ; $62e9: $ff
	ei                                               ; $62ea: $fb
	ld   b, c                                        ; $62eb: $41
	ld   de, $ff4f                                   ; $62ec: $11 $4f $ff
	db   $fc                                         ; $62ef: $fc
	rst  ToBoot                                         ; $62f0: $c7
	xor  a                                           ; $62f1: $af
	cp   $91                                         ; $62f2: $fe $91
	ld   de, $ff1a                                   ; $62f4: $11 $1a $ff
	db   $fd                                         ; $62f7: $fd
	jp   z, $ff8d                                    ; $62f8: $ca $8d $ff

	or   h                                           ; $62fb: $b4
	ld   de, $df13                                   ; $62fc: $11 $13 $df
	rst  $38                                         ; $62ff: $ff
	res  3, h                                        ; $6300: $cb $9c
	rst  $28                                         ; $6302: $ef
	add  sp, $11                                     ; $6303: $e8 $11
	ld   de, $ff9f                                   ; $6305: $11 $9f $ff
	ret  c                                           ; $6308: $d8

	adc  d                                           ; $6309: $8a
	rst  JumpTable                                         ; $630a: $df
	ld   a, [$1151]                                  ; $630b: $fa $51 $11
	ld   c, [hl]                                     ; $630e: $4e
	rst  $38                                         ; $630f: $ff
	ei                                               ; $6310: $fb
	sbc  c                                           ; $6311: $99
	xor  [hl]                                        ; $6312: $ae
	db   $fc                                         ; $6313: $fc
	ld   [hl], c                                     ; $6314: $71
	ld   de, $ff2a                                   ; $6315: $11 $2a $ff
	ei                                               ; $6318: $fb
	xor  d                                           ; $6319: $aa
	sbc  h                                           ; $631a: $9c
	cp   $a1                                         ; $631b: $fe $a1
	ld   de, $df17                                   ; $631d: $11 $17 $df
	cp   $b8                                         ; $6320: $fe $b8
	adc  e                                           ; $6322: $8b
	xor  $91                                         ; $6323: $ee $91
	ld   de, $df28                                   ; $6325: $11 $28 $df
	db   $fd                                         ; $6328: $fd
	cp   d                                           ; $6329: $ba
	adc  d                                           ; $632a: $8a
	cp   e                                           ; $632b: $bb
	add  c                                           ; $632c: $81
	ld   de, $de5a                                   ; $632d: $11 $5a $de
	call c, $9a99                                    ; $6330: $dc $99 $9a
	jp   z, $1441                                    ; $6333: $ca $41 $14

	ld   a, d                                        ; $6336: $7a
	db   $ed                                         ; $6337: $ed
	jp   c, $bb8a                                    ; $6338: $da $8a $bb

	and  l                                           ; $633b: $a5
	ld   de, $ad49                                   ; $633c: $11 $49 $ad
	db   $db                                         ; $633f: $db
	sbc  c                                           ; $6340: $99
	sbc  h                                           ; $6341: $9c
	bit  6, c                                        ; $6342: $cb $71
	inc  de                                          ; $6344: $13
	ld   a, d                                        ; $6345: $7a
	call z, Call_0f0_79d9                            ; $6346: $cc $d9 $79
	xor  d                                           ; $6349: $aa
	xor  b                                           ; $634a: $a8
	ld   de, $9b47                                   ; $634b: $11 $47 $9b
	call z, $8aa7                                    ; $634e: $cc $a7 $8a
	jp   z, $1671                                    ; $6351: $ca $71 $16

	adc  d                                           ; $6354: $8a
	cp   e                                           ; $6355: $bb
	cp   b                                           ; $6356: $b8
	ld   a, d                                        ; $6357: $7a
	sbc  d                                           ; $6358: $9a
	sub  [hl]                                        ; $6359: $96
	inc  [hl]                                        ; $635a: $34
	ld   a, c                                        ; $635b: $79
	sbc  b                                           ; $635c: $98
	xor  c                                           ; $635d: $a9
	sbc  c                                           ; $635e: $99
	sbc  c                                           ; $635f: $99
	sub  a                                           ; $6360: $97
	ld   d, l                                        ; $6361: $55
	adc  c                                           ; $6362: $89
	sbc  d                                           ; $6363: $9a
	sbc  c                                           ; $6364: $99
	ld   [hl], a                                     ; $6365: $77
	adc  b                                           ; $6366: $88
	adc  b                                           ; $6367: $88
	halt                                             ; $6368: $76
	adc  c                                           ; $6369: $89
	sbc  c                                           ; $636a: $99
	sbc  c                                           ; $636b: $99
	add  a                                           ; $636c: $87
	ld   [hl], a                                     ; $636d: $77
	ld   [hl], a                                     ; $636e: $77
	ld   [hl], a                                     ; $636f: $77
	adc  b                                           ; $6370: $88
	xor  d                                           ; $6371: $aa
	sbc  c                                           ; $6372: $99
	sbc  c                                           ; $6373: $99
	add  a                                           ; $6374: $87
	ld   [hl], a                                     ; $6375: $77
	ld   [hl], a                                     ; $6376: $77
	adc  c                                           ; $6377: $89
	sbc  b                                           ; $6378: $98
	adc  b                                           ; $6379: $88
	sbc  b                                           ; $637a: $98
	sbc  b                                           ; $637b: $98
	add  a                                           ; $637c: $87
	ld   [hl], a                                     ; $637d: $77
	ld   a, b                                        ; $637e: $78
	adc  c                                           ; $637f: $89
	sbc  c                                           ; $6380: $99
	adc  b                                           ; $6381: $88
	adc  c                                           ; $6382: $89
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
	add  c                                           ; $6391: $81
	ld   de, $1111                                   ; $6392: $11 $11 $11
	ld   de, $1111                                   ; $6395: $11 $11 $11
	ld   de, $1111                                   ; $6398: $11 $11 $11
	ld   de, $1111                                   ; $639b: $11 $11 $11
	ld   de, $1111                                   ; $639e: $11 $11 $11
	ld   de, $1111                                   ; $63a1: $11 $11 $11
	ld   de, $1111                                   ; $63a4: $11 $11 $11
	ld   de, $1111                                   ; $63a7: $11 $11 $11
	ld   de, $1111                                   ; $63aa: $11 $11 $11
	ld   de, $1111                                   ; $63ad: $11 $11 $11
	ld   de, $1111                                   ; $63b0: $11 $11 $11
	ld   de, $1111                                   ; $63b3: $11 $11 $11
	nop                                              ; $63b6: $00
	ld   c, b                                        ; $63b7: $48
	ld   de, $1111                                   ; $63b8: $11 $11 $11
	ld   de, $1111                                   ; $63bb: $11 $11 $11
	ld   de, $1111                                   ; $63be: $11 $11 $11
	ld   de, $5413                                   ; $63c1: $11 $13 $54
	ld   d, h                                        ; $63c4: $54
	ld   d, h                                        ; $63c5: $54
	ld   b, c                                        ; $63c6: $41
	rra                                              ; $63c7: $1f
	rst  $38                                         ; $63c8: $ff
	pop  af                                          ; $63c9: $f1
	ld   de, $1811                                   ; $63ca: $11 $11 $18
	ld   h, c                                        ; $63cd: $61
	ld   de, $dd1c                                   ; $63ce: $11 $1c $dd
	call z, $d1dd                                    ; $63d1: $cc $dd $d1
	ld   de, $1111                                   ; $63d4: $11 $11 $11
	ld   de, $1111                                   ; $63d7: $11 $11 $11
	ld   de, $1111                                   ; $63da: $11 $11 $11
	ld   de, $1111                                   ; $63dd: $11 $11 $11
	ld   de, $5411                                   ; $63e0: $11 $11 $54
	ld   b, h                                        ; $63e3: $44
	ld   l, b                                        ; $63e4: $68
	ld   de, $5454                                   ; $63e5: $11 $54 $54
	ld   h, a                                        ; $63e8: $67
	ld   [hl], d                                     ; $63e9: $72
	ld   de, $1111                                   ; $63ea: $11 $11 $11
	ld   de, $1112                                   ; $63ed: $11 $12 $11
	ld   [de], a                                     ; $63f0: $12
	ld   de, $1111                                   ; $63f1: $11 $11 $11
	ld   h, [hl]                                     ; $63f4: $66
	halt                                             ; $63f5: $76
	jr   c, jr_0f0_6409                              ; $63f6: $38 $11

	adc  b                                           ; $63f8: $88
	adc  c                                           ; $63f9: $89
	adc  c                                           ; $63fa: $89
	sbc  c                                           ; $63fb: $99
	xor  e                                           ; $63fc: $ab
	sbc  d                                           ; $63fd: $9a
	cp   c                                           ; $63fe: $b9
	xor  b                                           ; $63ff: $a8
	ld   a, b                                        ; $6400: $78
	ld   [hl], a                                     ; $6401: $77
	ld   d, [hl]                                     ; $6402: $56
	ld   d, l                                        ; $6403: $55
	ld   h, [hl]                                     ; $6404: $66
	ld   h, l                                        ; $6405: $65
	ld   [hl], a                                     ; $6406: $77
	ld   a, b                                        ; $6407: $78
	ld   a, b                                        ; $6408: $78

jr_0f0_6409:
	adc  c                                           ; $6409: $89
	sbc  d                                           ; $640a: $9a
	sbc  c                                           ; $640b: $99
	xor  d                                           ; $640c: $aa
	xor  e                                           ; $640d: $ab
	sbc  c                                           ; $640e: $99
	sub  a                                           ; $640f: $97
	halt                                             ; $6410: $76
	add  [hl]                                        ; $6411: $86
	ld   b, l                                        ; $6412: $45
	ld   d, l                                        ; $6413: $55
	ld   b, [hl]                                     ; $6414: $46
	ld   h, [hl]                                     ; $6415: $66
	ld   [hl], a                                     ; $6416: $77
	sbc  c                                           ; $6417: $99
	adc  c                                           ; $6418: $89
	xor  d                                           ; $6419: $aa
	sbc  d                                           ; $641a: $9a
	cp   d                                           ; $641b: $ba
	xor  e                                           ; $641c: $ab
	xor  d                                           ; $641d: $aa
	xor  c                                           ; $641e: $a9
	adc  c                                           ; $641f: $89
	halt                                             ; $6420: $76
	add  l                                           ; $6421: $85
	dec  [hl]                                        ; $6422: $35
	ld   d, e                                        ; $6423: $53
	dec  [hl]                                        ; $6424: $35
	ld   d, [hl]                                     ; $6425: $56
	ld   [hl], a                                     ; $6426: $77
	xor  d                                           ; $6427: $aa
	xor  d                                           ; $6428: $aa
	db   $dd                                         ; $6429: $dd
	cp   h                                           ; $642a: $bc
	db   $db                                         ; $642b: $db
	cp   h                                           ; $642c: $bc
	xor  c                                           ; $642d: $a9
	add  a                                           ; $642e: $87
	ld   h, [hl]                                     ; $642f: $66
	ld   d, d                                        ; $6430: $52
	inc  [hl]                                        ; $6431: $34
	ld   de, $4644                                   ; $6432: $11 $44 $46
	adc  d                                           ; $6435: $8a
	xor  e                                           ; $6436: $ab
	adc  $ec                                         ; $6437: $ce $ec
	rst  $38                                         ; $6439: $ff
	call z, Call_0f0_77b9                            ; $643a: $cc $b9 $77
	ld   d, l                                        ; $643d: $55
	ld   d, c                                        ; $643e: $51
	inc  d                                           ; $643f: $14
	ld   de, $3635                                   ; $6440: $11 $35 $36
	adc  c                                           ; $6443: $89
	cp   h                                           ; $6444: $bc
	rst  JumpTable                                         ; $6445: $df
	rst  $38                                         ; $6446: $ff
	rst  $38                                         ; $6447: $ff
	db   $ed                                         ; $6448: $ed
	or   a                                           ; $6449: $b7
	ld   h, e                                        ; $644a: $63
	inc  [hl]                                        ; $644b: $34
	ld   de, $1111                                   ; $644c: $11 $11 $11
	ld   b, h                                        ; $644f: $44
	ld   e, b                                        ; $6450: $58
	cp   l                                           ; $6451: $bd
	cp   $ff                                         ; $6452: $fe $ff
	rst  $38                                         ; $6454: $ff
	rst  $38                                         ; $6455: $ff
	cp   d                                           ; $6456: $ba
	ld   [hl], h                                     ; $6457: $74
	ld   de, $1111                                   ; $6458: $11 $11 $11
	ld   de, $5713                                   ; $645b: $11 $13 $57
	sbc  [hl]                                        ; $645e: $9e
	rst  $38                                         ; $645f: $ff
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	db   $eb                                         ; $6463: $eb
	ld   h, e                                        ; $6464: $63
	ld   de, $1111                                   ; $6465: $11 $11 $11
	ld   de, $3712                                   ; $6468: $11 $12 $37
	xor  a                                           ; $646b: $af
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	db   $fc                                         ; $6470: $fc
	ld   [hl], c                                     ; $6471: $71
	ld   de, $1111                                   ; $6472: $11 $11 $11
	ld   de, $3911                                   ; $6475: $11 $11 $39
	rst  JumpTable                                         ; $6478: $df
	rst  $38                                         ; $6479: $ff
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	ld   [$1131], a                                  ; $647d: $ea $31 $11
	ld   de, $1111                                   ; $6480: $11 $11 $11
	ld   de, $ff7c                                   ; $6483: $11 $7c $ff
	rst  $38                                         ; $6486: $ff
	rst  $38                                         ; $6487: $ff
	rst  $38                                         ; $6488: $ff
	rst  $38                                         ; $6489: $ff
	call nz, $1111                                   ; $648a: $c4 $11 $11
	ld   de, $1111                                   ; $648d: $11 $11 $11
	dec  d                                           ; $6490: $15
	rst  JumpTable                                         ; $6491: $df
	rst  $38                                         ; $6492: $ff
	rst  $38                                         ; $6493: $ff
	rst  $38                                         ; $6494: $ff
	rst  $38                                         ; $6495: $ff
	cp   $51                                         ; $6496: $fe $51
	ld   de, $1111                                   ; $6498: $11 $11 $11
	ld   de, $6a13                                   ; $649b: $11 $13 $6a
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	rst  $38                                         ; $64a0: $ff
	rst  $38                                         ; $64a1: $ff
	rst  $38                                         ; $64a2: $ff
	call nc, $1111                                   ; $64a3: $d4 $11 $11
	ld   de, $1111                                   ; $64a6: $11 $11 $11
	ld   b, a                                        ; $64a9: $47
	rst  $28                                         ; $64aa: $ef
	rst  $38                                         ; $64ab: $ff
	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	db   $db                                         ; $64af: $db
	ld   de, $1111                                   ; $64b0: $11 $11 $11
	ld   de, $1711                                   ; $64b3: $11 $11 $17
	sbc  a                                           ; $64b6: $9f
	rst  $38                                         ; $64b7: $ff
	rst  $38                                         ; $64b8: $ff
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	ld   sp, hl                                      ; $64bb: $f9
	ld   [hl], c                                     ; $64bc: $71
	ld   de, $1111                                   ; $64bd: $11 $11 $11
	ld   de, $ae17                                   ; $64c0: $11 $17 $ae
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	rst  $38                                         ; $64c6: $ff
	ld   sp, hl                                      ; $64c7: $f9
	ld   [hl], c                                     ; $64c8: $71
	ld   de, $1111                                   ; $64c9: $11 $11 $11
	ld   de, $bb19                                   ; $64cc: $11 $19 $bb
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	or   $41                                         ; $64d3: $f6 $41
	ld   de, $1111                                   ; $64d5: $11 $11 $11
	ld   de, $ce1c                                   ; $64d8: $11 $1c $ce
	rst  $38                                         ; $64db: $ff
	rst  $38                                         ; $64dc: $ff
	rst  $38                                         ; $64dd: $ff
	rst  $38                                         ; $64de: $ff
	di                                               ; $64df: $f3
	ld   hl, $1111                                   ; $64e0: $21 $11 $11
	ld   de, $3f11                                   ; $64e3: $11 $11 $3f
	sbc  a                                           ; $64e6: $9f
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	rst  $38                                         ; $64e9: $ff
	rst  $38                                         ; $64ea: $ff
	pop  af                                          ; $64eb: $f1
	ld   de, $1111                                   ; $64ec: $11 $11 $11
	ld   de, $df11                                   ; $64ef: $11 $11 $df
	adc  a                                           ; $64f2: $8f
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	rst  $38                                         ; $64f5: $ff
	rst  $38                                         ; $64f6: $ff
	ld   sp, $1111                                   ; $64f7: $31 $11 $11
	ld   de, $2611                                   ; $64fa: $11 $11 $26
	ld   sp, hl                                      ; $64fd: $f9
	rst  $38                                         ; $64fe: $ff

jr_0f0_64ff:
	rst  $38                                         ; $64ff: $ff
	rst  $38                                         ; $6500: $ff
	ei                                               ; $6501: $fb
	ld   sp, hl                                      ; $6502: $f9
	ld   de, $1111                                   ; $6503: $11 $11 $11
	ld   de, $5f15                                   ; $6506: $11 $15 $5f
	rst  JumpTable                                         ; $6509: $df
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	sbc  a                                           ; $650d: $9f
	add  c                                           ; $650e: $81
	ld   de, $1721                                   ; $650f: $11 $21 $17
	ld   de, $fb77                                   ; $6512: $11 $77 $fb
	rst  $38                                         ; $6515: $ff
	rst  $38                                         ; $6516: $ff
	rst  $38                                         ; $6517: $ff
	rst  $30                                         ; $6518: $f7
	push af                                          ; $6519: $f5
	ld   de, $1114                                   ; $651a: $11 $14 $11
	or   c                                           ; $651d: $b1
	jr   jr_0f0_64ff                                 ; $651e: $18 $df

	sbc  a                                           ; $6520: $9f
	rst  $38                                         ; $6521: $ff
	rst  $38                                         ; $6522: $ff
	rst  $38                                         ; $6523: $ff
	ld   a, a                                        ; $6524: $7f
	ld   de, $4111                                   ; $6525: $11 $11 $41
	dec  de                                          ; $6528: $1b
	inc  de                                          ; $6529: $13
	adc  a                                           ; $652a: $8f
	rst  $30                                         ; $652b: $f7
	rst  $38                                         ; $652c: $ff
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	adc  h                                           ; $652f: $8c
	pop  af                                          ; $6530: $f1
	ld   de, $1d51                                   ; $6531: $11 $51 $1d
	ld   de, $f57f                                   ; $6534: $11 $7f $f5
	rst  $38                                         ; $6537: $ff
	rst  $38                                         ; $6538: $ff
	rst  $38                                         ; $6539: $ff
	ldh  [c], a                                      ; $653a: $e2
	pop  af                                          ; $653b: $f1
	ld   de, $1111                                   ; $653c: $11 $11 $11
	pop  bc                                          ; $653f: $c1
	ld   c, e                                        ; $6540: $4b
	rst  $38                                         ; $6541: $ff
	sbc  a                                           ; $6542: $9f
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	pop  af                                          ; $6545: $f1
	jp   hl                                          ; $6546: $e9


	ld   de, $1117                                   ; $6547: $11 $17 $11
	pop  hl                                          ; $654a: $e1
	ld   h, $ff                                      ; $654b: $26 $ff
	ccf                                              ; $654d: $3f
	rst  $38                                         ; $654e: $ff
	rst  $38                                         ; $654f: $ff
	pop  af                                          ; $6550: $f1
	adc  l                                           ; $6551: $8d
	ld   de, $111a                                   ; $6552: $11 $1a $11
	pop  af                                          ; $6555: $f1
	ld   b, h                                        ; $6556: $44
	rst  $38                                         ; $6557: $ff
	cpl                                              ; $6558: $2f
	rst  $38                                         ; $6559: $ff
	rst  $38                                         ; $655a: $ff
	pop  af                                          ; $655b: $f1
	ld   a, e                                        ; $655c: $7b
	ld   de, $1119                                   ; $655d: $11 $19 $11
	pop  de                                          ; $6560: $d1
	ld   [hl], h                                     ; $6561: $74
	rst  $38                                         ; $6562: $ff
	ld   c, a                                        ; $6563: $4f
	rst  $38                                         ; $6564: $ff
	rst  $38                                         ; $6565: $ff
	pop  af                                          ; $6566: $f1
	ld   l, b                                        ; $6567: $68
	ld   de, $1451                                   ; $6568: $11 $51 $14
	ld   b, e                                        ; $656b: $43
	ld   a, b                                        ; $656c: $78
	db   $fd                                         ; $656d: $fd
	rst  JumpTable                                         ; $656e: $df
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	pop  de                                          ; $6571: $d1
	add  c                                           ; $6572: $81
	ld   de, $1dc1                                   ; $6573: $11 $c1 $1d
	dec  de                                          ; $6576: $1b
	ld   c, a                                        ; $6577: $4f
	db   $f4                                         ; $6578: $f4
	rst  $38                                         ; $6579: $ff
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	ld   b, c                                        ; $657c: $41
	ld   [hl], c                                     ; $657d: $71
	ld   de, $1ba1                                   ; $657e: $11 $a1 $1b
	rra                                              ; $6581: $1f
	cpl                                              ; $6582: $2f
	db   $f4                                         ; $6583: $f4
	rst  $38                                         ; $6584: $ff
	rst  $38                                         ; $6585: $ff
	rst  $38                                         ; $6586: $ff

Jump_0f0_6587:
	dec  d                                           ; $6587: $15
	ld   sp, $111b                                   ; $6588: $31 $1b $11
	pop  af                                          ; $658b: $f1
	xor  c                                           ; $658c: $a9
	rst  JumpTable                                         ; $658d: $df
	ld   l, a                                        ; $658e: $6f
	rst  $38                                         ; $658f: $ff
	rst  $38                                         ; $6590: $ff
	push af                                          ; $6591: $f5
	jr   jr_0f0_65a5                                 ; $6592: $18 $11

	inc  e                                           ; $6594: $1c
	ld   de, $f2d1                                   ; $6595: $11 $d1 $f2

Call_0f0_6598:
	rst  $38                                         ; $6598: $ff
	ccf                                              ; $6599: $3f
	rst  $38                                         ; $659a: $ff
	rst  $38                                         ; $659b: $ff
	pop  af                                          ; $659c: $f1
	ld   d, c                                        ; $659d: $51
	ld   de, $1fd1                                   ; $659e: $11 $d1 $1f
	inc  e                                           ; $65a1: $1c
	sbc  a                                           ; $65a2: $9f
	di                                               ; $65a3: $f3
	rst  $38                                         ; $65a4: $ff

jr_0f0_65a5:
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff
	ld   hl, CheckIfReachedLastKanjiIdxInCurrTextBox                                   ; $65a7: $21 $71 $14
	ld   h, c                                        ; $65aa: $61
	sbc  c                                           ; $65ab: $99
	rrca                                             ; $65ac: $0f
	ld   c, a                                        ; $65ad: $4f
	rst  $30                                         ; $65ae: $f7
	rst  $38                                         ; $65af: $ff
	cp   $fb                                         ; $65b0: $fe $fb
	rla                                              ; $65b2: $17
	ld   de, $111f                                   ; $65b3: $11 $1f $11
	pop  af                                          ; $65b6: $f1
	db   $f4                                         ; $65b7: $f4
	rst  $38                                         ; $65b8: $ff
	rra                                              ; $65b9: $1f
	db   $fd                                         ; $65ba: $fd
	rst  $28                                         ; $65bb: $ef
	pop  af                                          ; $65bc: $f1
	ld   b, l                                        ; $65bd: $45
	ld   de, $1ff1                                   ; $65be: $11 $f1 $1f
	dec  de                                          ; $65c1: $1b
	cp   h                                           ; $65c2: $bc
	di                                               ; $65c3: $f3
	rst  $38                                         ; $65c4: $ff
	db   $ed                                         ; $65c5: $ed
	rst  $28                                         ; $65c6: $ef
	ld   sp, $1791                                   ; $65c7: $31 $91 $17
	and  c                                           ; $65ca: $a1
	sra  a                                           ; $65cb: $cb $2f
	ccf                                              ; $65cd: $3f
	push af                                          ; $65ce: $f5
	rst  $38                                         ; $65cf: $ff
	set  7, d                                        ; $65d0: $cb $fa
	rla                                              ; $65d2: $17
	ld   de, $111f                                   ; $65d3: $11 $1f $11
	pop  af                                          ; $65d6: $f1
	or   $ff                                         ; $65d7: $f6 $ff
	rra                                              ; $65d9: $1f
	ld   a, [$f1cf]                                  ; $65da: $fa $cf $f1
	scf                                              ; $65dd: $37
	ld   de, $1ff1                                   ; $65de: $11 $f1 $1f
	dec  de                                          ; $65e1: $1b
	db   $db                                         ; $65e2: $db
	db   $f4                                         ; $65e3: $f4
	rst  $38                                         ; $65e4: $ff
	jp   z, $21cf                                    ; $65e5: $ca $cf $21

	and  c                                           ; $65e8: $a1
	rla                                              ; $65e9: $17
	pop  hl                                          ; $65ea: $e1
	xor  $1f                                         ; $65eb: $ee $1f
	ld   c, a                                        ; $65ed: $4f
	ldh  a, [c]                                      ; $65ee: $f2
	rst  $38                                         ; $65ef: $ff
	sbc  d                                           ; $65f0: $9a
	ld   a, [$5117]                                  ; $65f1: $fa $17 $51
	rra                                              ; $65f4: $1f
	ld   de, $f9f1                                   ; $65f5: $11 $f1 $f9
	rst  $38                                         ; $65f8: $ff
	rra                                              ; $65f9: $1f
	ld   a, [$f1ae]                                  ; $65fa: $fa $ae $f1
	dec  de                                          ; $65fd: $1b
	ld   de, $1ff5                                   ; $65fe: $11 $f5 $1f
	add  d                                           ; $6601: $82
	or   $fd                                         ; $6602: $f6 $fd
	ld   l, a                                        ; $6604: $6f
	ld   sp, hl                                      ; $6605: $f9
	rst  JumpTable                                         ; $6606: $df
	ld   d, c                                        ; $6607: $51
	and  d                                           ; $6608: $a2
	ld   de, $1ff1                                   ; $6609: $11 $f1 $1f
	rra                                              ; $660c: $1f
	ld   a, a                                        ; $660d: $7f
	pop  af                                          ; $660e: $f1
	rst  $38                                         ; $660f: $ff
	ld   a, d                                        ; $6610: $7a
	cp   $14                                         ; $6611: $fe $14
	or   c                                           ; $6613: $b1
	rra                                              ; $6614: $1f
	ld   d, c                                        ; $6615: $51
	ld   sp, hl                                      ; $6616: $f9
	rra                                              ; $6617: $1f
	ld   e, a                                        ; $6618: $5f
	or   h                                           ; $6619: $b4
	rst  $38                                         ; $661a: $ff
	ld   e, [hl]                                     ; $661b: $5e
	db   $f4                                         ; $661c: $f4
	inc  e                                           ; $661d: $1c
	ld   b, c                                        ; $661e: $41
	rra                                              ; $661f: $1f
	ld   de, $e9f1                                   ; $6620: $11 $f1 $e9
	rst  $38                                         ; $6623: $ff
	rra                                              ; $6624: $1f
	rst  $30                                         ; $6625: $f7
	sbc  a                                           ; $6626: $9f
	pop  af                                          ; $6627: $f1
	ld   a, $11                                      ; $6628: $3e $11
	cp   a                                           ; $662a: $bf
	inc  e                                           ; $662b: $1c
	pop  af                                          ; $662c: $f1
	push af                                          ; $662d: $f5
	rst  $38                                         ; $662e: $ff
	rra                                              ; $662f: $1f
	di                                               ; $6630: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6631: $cf
	add  c                                           ; $6632: $81
	cp   d                                           ; $6633: $ba
	ld   de, $1ff4                                   ; $6634: $11 $f4 $1f
	and  c                                           ; $6637: $a1
	push af                                          ; $6638: $f5
	ei                                               ; $6639: $fb
	ccf                                              ; $663a: $3f
	db   $e3                                         ; $663b: $e3
	rst  $38                                         ; $663c: $ff
	ld   sp, $11d7                                   ; $663d: $31 $d7 $11
	pop  af                                          ; $6640: $f1
	rra                                              ; $6641: $1f
	ld   de, $f5f7                                   ; $6642: $11 $f7 $f5
	sbc  a                                           ; $6645: $9f
	sub  l                                           ; $6646: $95
	rst  $38                                         ; $6647: $ff
	inc  d                                           ; $6648: $14
	di                                               ; $6649: $f3
	ld   de, $1ff1                                   ; $664a: $11 $f1 $1f
	ld   de, $f6f5                                   ; $664d: $11 $f5 $f6
	cp   a                                           ; $6650: $bf
	add  l                                           ; $6651: $85
	rst  $38                                         ; $6652: $ff
	rla                                              ; $6653: $17
	jp   $f111                                       ; $6654: $c3 $11 $f1


	rra                                              ; $6657: $1f
	ld   de, $faf4                                   ; $6658: $11 $f4 $fa
	adc  a                                           ; $665b: $8f
	and  h                                           ; $665c: $a4
	rst  $38                                         ; $665d: $ff
	add  hl, de                                      ; $665e: $19
	db   $d3                                         ; $665f: $d3
	ld   de, $1ff2                                   ; $6660: $11 $f2 $1f
	ld   [hl], c                                     ; $6663: $71
	push af                                          ; $6664: $f5
	rst  $38                                         ; $6665: $ff
	ccf                                              ; $6666: $3f
	di                                               ; $6667: $f3
	rst  $38                                         ; $6668: $ff
	ld   d, $f4                                      ; $6669: $16 $f4
	ld   de, $1a7f                                   ; $666b: $11 $7f $1a
	pop  af                                          ; $666e: $f1
	rst  $38                                         ; $666f: $ff
	ccf                                              ; $6670: $3f
	ld   c, a                                        ; $6671: $4f
	or   $9f                                         ; $6672: $f6 $9f
	add  c                                           ; $6674: $81
	rst  $30                                         ; $6675: $f7
	ld   de, $111f                                   ; $6676: $11 $1f $11
	pop  af                                          ; $6679: $f1
	rra                                              ; $667a: $1f
	rra                                              ; $667b: $1f
	db   $f4                                         ; $667c: $f4
	rst  $38                                         ; $667d: $ff
	ccf                                              ; $667e: $3f
	pop  af                                          ; $667f: $f1
	cp   [hl]                                        ; $6680: $be
	inc  h                                           ; $6681: $24
	ld   de, $1ff1                                   ; $6682: $11 $f1 $1f
	rla                                              ; $6685: $17
	pop  af                                          ; $6686: $f1
	ei                                               ; $6687: $fb
	ld   l, a                                        ; $6688: $6f
	or   h                                           ; $6689: $b4
	cp   $1f                                         ; $668a: $fe $1f
	sub  e                                           ; $668c: $93
	ld   h, c                                        ; $668d: $61
	rra                                              ; $668e: $1f
	ld   de, $4ff1                                   ; $668f: $11 $f1 $4f
	rra                                              ; $6692: $1f
	call nz, Call_0f0_4ffd                           ; $6693: $c4 $fd $4f
	ldh  a, [c]                                      ; $6696: $f2
	ld   a, [$3149]                                  ; $6697: $fa $49 $31
	xor  c                                           ; $669a: $a9
	rra                                              ; $669b: $1f
	ld   h, c                                        ; $669c: $61
	pop  af                                          ; $669d: $f1
	ld   e, a                                        ; $669e: $5f
	dec  hl                                          ; $669f: $2b
	push af                                          ; $66a0: $f5
	adc  a                                           ; $66a1: $8f
	ld   e, c                                        ; $66a2: $59
	db   $f4                                         ; $66a3: $f4
	xor  b                                           ; $66a4: $a8
	ld   de, $1fb7                                   ; $66a5: $11 $b7 $1f
	ld   d, c                                        ; $66a8: $51
	pop  af                                          ; $66a9: $f1
	ld   a, a                                        ; $66aa: $7f
	ld   a, [hl-]                                    ; $66ab: $3a
	push af                                          ; $66ac: $f5
	adc  a                                           ; $66ad: $8f
	ld   e, d                                        ; $66ae: $5a
	or   $b8                                         ; $66af: $f6 $b8
	ld   d, e                                        ; $66b1: $53
	ld   c, a                                        ; $66b2: $4f
	ld   hl, $2ff1                                   ; $66b3: $21 $f1 $2f
	add  hl, de                                      ; $66b6: $19
	or   e                                           ; $66b7: $b3
	call $e23c                                       ; $66b8: $cd $3c $e2
	adc  $5b                                         ; $66bb: $ce $5b
	or   [hl]                                        ; $66bd: $b6
	ld   h, e                                        ; $66be: $63
	cp   e                                           ; $66bf: $bb
	inc  e                                           ; $66c0: $1c
	or   c                                           ; $66c1: $b1
	ret  c                                           ; $66c2: $d8

	inc  e                                           ; $66c3: $1c
	ld   d, [hl]                                     ; $66c4: $56
	sub  $5f                                         ; $66c5: $d6 $5f
	ld   d, l                                        ; $66c7: $55
	or   $8e                                         ; $66c8: $f6 $8e
	ld   a, c                                        ; $66ca: $79
	sub  l                                           ; $66cb: $95
	adc  e                                           ; $66cc: $8b
	ld   h, h                                        ; $66cd: $64
	db   $d3                                         ; $66ce: $d3
	ld   a, $16                                      ; $66cf: $3e $16
	or   e                                           ; $66d1: $b3
	adc  h                                           ; $66d2: $8c
	ld   d, a                                        ; $66d3: $57
	push de                                          ; $66d4: $d5
	adc  e                                           ; $66d5: $8b
	ld   l, h                                        ; $66d6: $6c
	sub  a                                           ; $66d7: $97
	rst  ToBoot                                         ; $66d8: $c7
	ld   a, e                                        ; $66d9: $7b
	ld   l, d                                        ; $66da: $6a
	or   e                                           ; $66db: $b3
	sbc  d                                           ; $66dc: $9a
	ld   a, [de]                                     ; $66dd: $1a
	add  d                                           ; $66de: $82
	and  [hl]                                        ; $66df: $a6
	dec  sp                                          ; $66e0: $3b
	ld   [hl], l                                     ; $66e1: $75
	ret  z                                           ; $66e2: $c8

	ld   l, e                                        ; $66e3: $6b
	adc  b                                           ; $66e4: $88
	cp   b                                           ; $66e5: $b8
	adc  d                                           ; $66e6: $8a
	ld   a, c                                        ; $66e7: $79
	and  [hl]                                        ; $66e8: $a6
	sbc  b                                           ; $66e9: $98
	adc  d                                           ; $66ea: $8a
	ld   e, b                                        ; $66eb: $58
	or   e                                           ; $66ec: $b3
	adc  b                                           ; $66ed: $88
	ld   c, b                                        ; $66ee: $48
	ld   [hl], l                                     ; $66ef: $75
	sbc  b                                           ; $66f0: $98
	ld   l, d                                        ; $66f1: $6a
	add  a                                           ; $66f2: $87
	cp   b                                           ; $66f3: $b8
	ld   a, d                                        ; $66f4: $7a
	add  a                                           ; $66f5: $87
	sub  a                                           ; $66f6: $97
	adc  c                                           ; $66f7: $89
	ld   a, c                                        ; $66f8: $79
	adc  b                                           ; $66f9: $88
	sbc  b                                           ; $66fa: $98
	sbc  d                                           ; $66fb: $9a
	ld   a, b                                        ; $66fc: $78
	sub  [hl]                                        ; $66fd: $96
	sub  a                                           ; $66fe: $97
	ld   l, c                                        ; $66ff: $69
	ld   h, [hl]                                     ; $6700: $66
	sub  a                                           ; $6701: $97
	ld   a, b                                        ; $6702: $78
	add  a                                           ; $6703: $87
	adc  b                                           ; $6704: $88
	adc  c                                           ; $6705: $89
	adc  c                                           ; $6706: $89
	add  a                                           ; $6707: $87
	adc  c                                           ; $6708: $89
	adc  b                                           ; $6709: $88
	sbc  b                                           ; $670a: $98
	adc  b                                           ; $670b: $88
	adc  c                                           ; $670c: $89
	adc  c                                           ; $670d: $89
	sbc  b                                           ; $670e: $98
	ld   a, b                                        ; $670f: $78
	add  a                                           ; $6710: $87
	adc  b                                           ; $6711: $88
	adc  b                                           ; $6712: $88
	adc  b                                           ; $6713: $88
	ld   a, b                                        ; $6714: $78
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	sbc  b                                           ; $6717: $98
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	adc  b                                           ; $671a: $88
	adc  b                                           ; $671b: $88
	add  a                                           ; $671c: $87
	ld   [hl], a                                     ; $671d: $77
	ld   [hl], a                                     ; $671e: $77
	ld   [hl], a                                     ; $671f: $77
	add  a                                           ; $6720: $87
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	sbc  c                                           ; $6723: $99
	adc  b                                           ; $6724: $88
	adc  c                                           ; $6725: $89
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  c                                           ; $6728: $89
	ld   [hl], a                                     ; $6729: $77
	adc  b                                           ; $672a: $88
	ld   [hl], a                                     ; $672b: $77
	ld   a, b                                        ; $672c: $78
	add  a                                           ; $672d: $87
	sbc  b                                           ; $672e: $98
	ld   a, b                                        ; $672f: $78
	sbc  b                                           ; $6730: $98
	adc  c                                           ; $6731: $89
	adc  b                                           ; $6732: $88
	sbc  b                                           ; $6733: $98
	adc  b                                           ; $6734: $88
	ld   a, b                                        ; $6735: $78
	add  a                                           ; $6736: $87
	ld   a, b                                        ; $6737: $78
	ld   [hl], a                                     ; $6738: $77
	sub  a                                           ; $6739: $97
	adc  b                                           ; $673a: $88
	adc  b                                           ; $673b: $88
	adc  c                                           ; $673c: $89
	adc  b                                           ; $673d: $88
	sbc  b                                           ; $673e: $98
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	add  a                                           ; $6741: $87
	adc  b                                           ; $6742: $88
	ld   [hl], a                                     ; $6743: $77
	sub  a                                           ; $6744: $97
	ld   a, c                                        ; $6745: $79
	ld   a, b                                        ; $6746: $78
	adc  b                                           ; $6747: $88
	sbc  b                                           ; $6748: $98
	adc  c                                           ; $6749: $89
	adc  b                                           ; $674a: $88
	adc  b                                           ; $674b: $88
	adc  b                                           ; $674c: $88
	adc  b                                           ; $674d: $88
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	ld   a, c                                        ; $6750: $79
	adc  b                                           ; $6751: $88
	adc  b                                           ; $6752: $88
	adc  b                                           ; $6753: $88
	ld   a, b                                        ; $6754: $78
	adc  b                                           ; $6755: $88
	adc  b                                           ; $6756: $88
	add  a                                           ; $6757: $87
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
	ld   a, b                                        ; $6762: $78
	add  a                                           ; $6763: $87
	adc  b                                           ; $6764: $88
	ld   a, b                                        ; $6765: $78
	add  a                                           ; $6766: $87
	sbc  b                                           ; $6767: $98
	adc  b                                           ; $6768: $88
	adc  b                                           ; $6769: $88
	adc  b                                           ; $676a: $88
	adc  c                                           ; $676b: $89
	adc  b                                           ; $676c: $88
	add  a                                           ; $676d: $87
	adc  b                                           ; $676e: $88
	ld   a, b                                        ; $676f: $78
	add  a                                           ; $6770: $87
	adc  b                                           ; $6771: $88
	ld   a, c                                        ; $6772: $79
	adc  b                                           ; $6773: $88
	adc  b                                           ; $6774: $88
	sbc  c                                           ; $6775: $99
	ld   a, c                                        ; $6776: $79
	sub  a                                           ; $6777: $97
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	adc  b                                           ; $677a: $88
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	add  a                                           ; $677d: $87
	adc  b                                           ; $677e: $88
	adc  b                                           ; $677f: $88
	adc  b                                           ; $6780: $88
	adc  b                                           ; $6781: $88
	adc  b                                           ; $6782: $88
	adc  b                                           ; $6783: $88
	adc  b                                           ; $6784: $88
	adc  b                                           ; $6785: $88
	adc  b                                           ; $6786: $88
	adc  b                                           ; $6787: $88
	add  a                                           ; $6788: $87
	sbc  b                                           ; $6789: $98
	adc  b                                           ; $678a: $88
	adc  b                                           ; $678b: $88
	adc  b                                           ; $678c: $88
	adc  b                                           ; $678d: $88
	adc  b                                           ; $678e: $88
	adc  b                                           ; $678f: $88
	adc  b                                           ; $6790: $88
	adc  b                                           ; $6791: $88
	adc  b                                           ; $6792: $88
	adc  b                                           ; $6793: $88
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	adc  b                                           ; $6798: $88
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
	adc  b                                           ; $679e: $88
	adc  b                                           ; $679f: $88
	adc  c                                           ; $67a0: $89
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
	adc  b                                           ; $67d2: $88
	adc  b                                           ; $67d3: $88
	adc  b                                           ; $67d4: $88
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	adc  b                                           ; $67d7: $88
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	adc  b                                           ; $67de: $88
	adc  b                                           ; $67df: $88
	adc  b                                           ; $67e0: $88
	adc  b                                           ; $67e1: $88
	adc  b                                           ; $67e2: $88
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	adc  b                                           ; $67ea: $88
	adc  b                                           ; $67eb: $88
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	adc  b                                           ; $67ee: $88
	adc  b                                           ; $67ef: $88
	adc  b                                           ; $67f0: $88
	adc  b                                           ; $67f1: $88
	adc  b                                           ; $67f2: $88
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	adc  b                                           ; $67f5: $88
	adc  b                                           ; $67f6: $88
	adc  b                                           ; $67f7: $88
	adc  b                                           ; $67f8: $88
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	adc  b                                           ; $67fb: $88
	adc  b                                           ; $67fc: $88
	adc  b                                           ; $67fd: $88
	adc  b                                           ; $67fe: $88
	adc  b                                           ; $67ff: $88
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	adc  b                                           ; $6802: $88
	adc  b                                           ; $6803: $88
	adc  b                                           ; $6804: $88
	adc  b                                           ; $6805: $88
	adc  b                                           ; $6806: $88
	adc  b                                           ; $6807: $88
	adc  b                                           ; $6808: $88
	adc  b                                           ; $6809: $88
	adc  b                                           ; $680a: $88
	adc  b                                           ; $680b: $88
	adc  b                                           ; $680c: $88
	adc  b                                           ; $680d: $88
	adc  b                                           ; $680e: $88
	adc  b                                           ; $680f: $88
	adc  b                                           ; $6810: $88
	adc  b                                           ; $6811: $88
	adc  b                                           ; $6812: $88
	adc  b                                           ; $6813: $88
	adc  b                                           ; $6814: $88
	adc  b                                           ; $6815: $88
	adc  b                                           ; $6816: $88
	adc  b                                           ; $6817: $88
	adc  b                                           ; $6818: $88
	adc  b                                           ; $6819: $88
	adc  b                                           ; $681a: $88
	adc  b                                           ; $681b: $88
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	adc  b                                           ; $6825: $88
	adc  b                                           ; $6826: $88
	adc  b                                           ; $6827: $88
	adc  b                                           ; $6828: $88
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  b                                           ; $682b: $88
	adc  b                                           ; $682c: $88
	adc  b                                           ; $682d: $88
	adc  b                                           ; $682e: $88
	adc  b                                           ; $682f: $88
	adc  b                                           ; $6830: $88
	adc  b                                           ; $6831: $88
	adc  b                                           ; $6832: $88
	adc  b                                           ; $6833: $88
	adc  b                                           ; $6834: $88
	adc  b                                           ; $6835: $88
	adc  b                                           ; $6836: $88
	adc  b                                           ; $6837: $88
	adc  b                                           ; $6838: $88
	adc  b                                           ; $6839: $88
	adc  b                                           ; $683a: $88
	adc  b                                           ; $683b: $88
	adc  b                                           ; $683c: $88
	adc  b                                           ; $683d: $88
	adc  b                                           ; $683e: $88
	adc  b                                           ; $683f: $88
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	adc  b                                           ; $6842: $88
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	adc  b                                           ; $6845: $88
	adc  b                                           ; $6846: $88
	adc  b                                           ; $6847: $88
	adc  b                                           ; $6848: $88
	adc  b                                           ; $6849: $88
	adc  b                                           ; $684a: $88
	adc  b                                           ; $684b: $88
	adc  b                                           ; $684c: $88
	adc  b                                           ; $684d: $88
	adc  b                                           ; $684e: $88
	adc  b                                           ; $684f: $88
	adc  b                                           ; $6850: $88
	adc  b                                           ; $6851: $88
	adc  b                                           ; $6852: $88
	adc  b                                           ; $6853: $88
	adc  b                                           ; $6854: $88
	adc  b                                           ; $6855: $88
	adc  b                                           ; $6856: $88
	adc  b                                           ; $6857: $88
	adc  b                                           ; $6858: $88
	adc  b                                           ; $6859: $88
	adc  b                                           ; $685a: $88
	adc  b                                           ; $685b: $88
	adc  b                                           ; $685c: $88
	adc  b                                           ; $685d: $88
	adc  b                                           ; $685e: $88
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	adc  b                                           ; $6861: $88
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	adc  b                                           ; $6864: $88
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	adc  b                                           ; $6868: $88
	adc  b                                           ; $6869: $88
	adc  b                                           ; $686a: $88
	adc  b                                           ; $686b: $88
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	adc  b                                           ; $686f: $88
	adc  b                                           ; $6870: $88
	adc  b                                           ; $6871: $88
	adc  b                                           ; $6872: $88
	adc  b                                           ; $6873: $88
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	adc  b                                           ; $687b: $88
	adc  b                                           ; $687c: $88
	adc  b                                           ; $687d: $88
	adc  b                                           ; $687e: $88
	adc  b                                           ; $687f: $88
	adc  b                                           ; $6880: $88
	adc  b                                           ; $6881: $88
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	adc  b                                           ; $6886: $88
	adc  b                                           ; $6887: $88
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
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
	adc  b                                           ; $68a9: $88
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

Call_0f0_6a74:
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
	sbc  c                                           ; $6b4b: $99
	sub  a                                           ; $6b4c: $97
	adc  c                                           ; $6b4d: $89
	sbc  c                                           ; $6b4e: $99
	ld   [hl], a                                     ; $6b4f: $77
	adc  c                                           ; $6b50: $89
	sbc  b                                           ; $6b51: $98
	ld   [hl], a                                     ; $6b52: $77
	sbc  e                                           ; $6b53: $9b
	sub  [hl]                                        ; $6b54: $96
	ld   e, b                                        ; $6b55: $58
	call z, Call_0f0_6a74                            ; $6b56: $cc $74 $6a
	call z, $4685                                    ; $6b59: $cc $85 $46
	xor  d                                           ; $6b5c: $aa
	sub  [hl]                                        ; $6b5d: $96
	ld   d, l                                        ; $6b5e: $55
	ld   [hl], a                                     ; $6b5f: $77
	halt                                             ; $6b60: $76
	ld   d, [hl]                                     ; $6b61: $56
	ld   a, b                                        ; $6b62: $78
	add  a                                           ; $6b63: $87
	ld   h, a                                        ; $6b64: $67
	cp   h                                           ; $6b65: $bc
	ret                                              ; $6b66: $c9


	ld   h, [hl]                                     ; $6b67: $66
	adc  h                                           ; $6b68: $8c
	ei                                               ; $6b69: $fb
	ld   h, h                                        ; $6b6a: $64
	ld   l, d                                        ; $6b6b: $6a
	jp   z, $5964                                    ; $6b6c: $ca $64 $59

	cp   c                                           ; $6b6f: $b9
	ld   h, l                                        ; $6b70: $65
	ld   l, b                                        ; $6b71: $68
	xor  b                                           ; $6b72: $a8
	halt                                             ; $6b73: $76
	ld   a, b                                        ; $6b74: $78
	sbc  c                                           ; $6b75: $99
	ld   [hl], a                                     ; $6b76: $77
	ld   h, [hl]                                     ; $6b77: $66
	ld   a, b                                        ; $6b78: $78
	sbc  b                                           ; $6b79: $98
	ld   [hl], a                                     ; $6b7a: $77
	ld   [hl], a                                     ; $6b7b: $77
	sbc  d                                           ; $6b7c: $9a
	xor  d                                           ; $6b7d: $aa
	xor  d                                           ; $6b7e: $aa
	cp   d                                           ; $6b7f: $ba
	xor  d                                           ; $6b80: $aa
	add  [hl]                                        ; $6b81: $86
	ld   h, a                                        ; $6b82: $67
	halt                                             ; $6b83: $76
	ld   b, e                                        ; $6b84: $43
	ld   e, b                                        ; $6b85: $58
	xor  e                                           ; $6b86: $ab
	xor  d                                           ; $6b87: $aa
	cp   h                                           ; $6b88: $bc
	jp   c, $3574                                    ; $6b89: $da $74 $35

	ld   d, l                                        ; $6b8c: $55
	ld   b, d                                        ; $6b8d: $42
	dec  [hl]                                        ; $6b8e: $35
	ld   a, b                                        ; $6b8f: $78
	xor  e                                           ; $6b90: $ab
	adc  $ef                                         ; $6b91: $ce $ef
	db   $eb                                         ; $6b93: $eb
	and  [hl]                                        ; $6b94: $a6
	ld   d, e                                        ; $6b95: $53
	ld   [hl+], a                                    ; $6b96: $22
	inc  [hl]                                        ; $6b97: $34
	ld   b, l                                        ; $6b98: $45
	ld   d, a                                        ; $6b99: $57
	adc  d                                           ; $6b9a: $8a
	call c, $eeff                                    ; $6b9b: $dc $ff $ee
	cp   e                                           ; $6b9e: $bb
	and  a                                           ; $6b9f: $a7
	ld   b, c                                        ; $6ba0: $41
	ld   [de], a                                     ; $6ba1: $12
	ld   b, [hl]                                     ; $6ba2: $46
	ld   h, l                                        ; $6ba3: $65
	ld   b, [hl]                                     ; $6ba4: $46
	sbc  l                                           ; $6ba5: $9d
	db   $dd                                         ; $6ba6: $dd
	sbc  $ef                                         ; $6ba7: $de $ef
	db   $fd                                         ; $6ba9: $fd
	sub  h                                           ; $6baa: $94
	ld   bc, $2411                                   ; $6bab: $01 $11 $24
	ld   d, [hl]                                     ; $6bae: $56
	ld   e, b                                        ; $6baf: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb0: $cf
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	cp   $d9                                         ; $6bb3: $fe $d9
	ld   d, c                                        ; $6bb5: $51
	ld   de, $6911                                   ; $6bb6: $11 $11 $69
	and  a                                           ; $6bb9: $a7
	sbc  h                                           ; $6bba: $9c
	rst  $38                                         ; $6bbb: $ff
	rst  $38                                         ; $6bbc: $ff
	db   $eb                                         ; $6bbd: $eb
	cp   h                                           ; $6bbe: $bc
	and  [hl]                                        ; $6bbf: $a6
	ld   de, $1b11                                   ; $6bc0: $11 $11 $1b
	db   $fd                                         ; $6bc3: $fd
	adc  b                                           ; $6bc4: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bc5: $cf
	rst  $38                                         ; $6bc6: $ff
	ei                                               ; $6bc7: $fb
	add  a                                           ; $6bc8: $87
	cp   d                                           ; $6bc9: $ba
	ld   b, c                                        ; $6bca: $41
	ld   de, $ff1a                                   ; $6bcb: $11 $1a $ff
	jp   hl                                          ; $6bce: $e9


	adc  a                                           ; $6bcf: $8f
	rst  $38                                         ; $6bd0: $ff
	ei                                               ; $6bd1: $fb
	ld   b, d                                        ; $6bd2: $42
	ld   a, d                                        ; $6bd3: $7a
	ld   b, c                                        ; $6bd4: $41
	ld   de, $ff1d                                   ; $6bd5: $11 $1d $ff
	ld   a, [$ff7f]                                  ; $6bd8: $fa $7f $ff
	ld   a, [$3311]                                  ; $6bdb: $fa $11 $33
	ld   de, $5f11                                   ; $6bde: $11 $11 $5f
	rst  $38                                         ; $6be1: $ff
	ld   sp, hl                                      ; $6be2: $f9
	xor  a                                           ; $6be3: $af
	rst  $38                                         ; $6be4: $ff
	db   $f4                                         ; $6be5: $f4
	ld   de, $1111                                   ; $6be6: $11 $11 $11
	ld   e, $ff                                      ; $6be9: $1e $ff
	rst  $38                                         ; $6beb: $ff
	cp   l                                           ; $6bec: $bd
	rst  $38                                         ; $6bed: $ff
	ei                                               ; $6bee: $fb
	ld   d, c                                        ; $6bef: $51
	ld   de, $1d11                                   ; $6bf0: $11 $11 $1d
	rst  $38                                         ; $6bf3: $ff
	rst  $38                                         ; $6bf4: $ff
	xor  b                                           ; $6bf5: $a8
	rst  $38                                         ; $6bf6: $ff
	cp   $62                                         ; $6bf7: $fe $62
	ld   de, $1911                                   ; $6bf9: $11 $11 $19
	rst  $38                                         ; $6bfc: $ff
	rst  $38                                         ; $6bfd: $ff
	and  h                                           ; $6bfe: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bff: $cf
	rst  $38                                         ; $6c00: $ff
	add  l                                           ; $6c01: $85
	ld   de, $1811                                   ; $6c02: $11 $11 $18
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	add  c                                           ; $6c07: $81
	adc  l                                           ; $6c08: $8d
	rst  $38                                         ; $6c09: $ff
	sub  [hl]                                        ; $6c0a: $96
	ld   de, $1911                                   ; $6c0b: $11 $11 $19
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	ld   h, c                                        ; $6c10: $61
	ld   l, h                                        ; $6c11: $6c
	rst  $38                                         ; $6c12: $ff
	or   a                                           ; $6c13: $b7
	ld   de, $1a11                                   ; $6c14: $11 $11 $1a
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	ld   b, c                                        ; $6c19: $41
	ld   c, e                                        ; $6c1a: $4b
	rst  $38                                         ; $6c1b: $ff
	ret  z                                           ; $6c1c: $c8

	ld   de, $1d11                                   ; $6c1d: $11 $11 $1d
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	ld   de, $ff4b                                   ; $6c22: $11 $4b $ff
	cp   b                                           ; $6c25: $b8
	ld   de, $1e11                                   ; $6c26: $11 $11 $1e
	rst  $38                                         ; $6c29: $ff
	rst  $38                                         ; $6c2a: $ff
	ld   de, $ff2a                                   ; $6c2b: $11 $2a $ff
	ret  c                                           ; $6c2e: $d8

	ld   de, $1f11                                   ; $6c2f: $11 $11 $1f
	rst  $38                                         ; $6c32: $ff
	db   $fc                                         ; $6c33: $fc
	ld   de, $ff2b                                   ; $6c34: $11 $2b $ff
	ret                                              ; $6c37: $c9


	ld   de, $1f11                                   ; $6c38: $11 $11 $1f
	rst  $38                                         ; $6c3b: $ff
	ei                                               ; $6c3c: $fb
	ld   de, $ff1b                                   ; $6c3d: $11 $1b $ff
	ld   [$1111], a                                  ; $6c40: $ea $11 $11
	rra                                              ; $6c43: $1f
	rst  $38                                         ; $6c44: $ff
	ld   hl, sp+$11                                  ; $6c45: $f8 $11
	inc  l                                           ; $6c47: $2c
	rst  $38                                         ; $6c48: $ff
	jp   hl                                          ; $6c49: $e9


	ld   de, $2f11                                   ; $6c4a: $11 $11 $2f
	rst  $38                                         ; $6c4d: $ff
	db   $f4                                         ; $6c4e: $f4
	ld   de, $ff4f                                   ; $6c4f: $11 $4f $ff
	add  sp, $11                                     ; $6c52: $e8 $11
	ld   de, $ff5f                                   ; $6c54: $11 $5f $ff
	pop  af                                          ; $6c57: $f1
	ld   de, $ff5f                                   ; $6c58: $11 $5f $ff
	push de                                          ; $6c5b: $d5
	ld   de, $ef11                                   ; $6c5c: $11 $11 $ef
	rst  $38                                         ; $6c5f: $ff
	pop  hl                                          ; $6c60: $e1
	ld   de, $ffaf                                   ; $6c61: $11 $af $ff
	jp   nz, $1111                                   ; $6c64: $c2 $11 $11

	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	sub  c                                           ; $6c69: $91
	ld   de, $ffbf                                   ; $6c6a: $11 $bf $ff
	or   c                                           ; $6c6d: $b1
	ld   de, $ff15                                   ; $6c6e: $11 $15 $ff
	rst  $38                                         ; $6c71: $ff
	ld   de, rAUD1HIGH                                   ; $6c72: $11 $14 $ff
	rst  $38                                         ; $6c75: $ff
	ld   [hl], c                                     ; $6c76: $71
	ld   de, $ff1d                                   ; $6c77: $11 $1d $ff
	rst  $38                                         ; $6c7a: $ff
	ld   de, $ff17                                   ; $6c7b: $11 $17 $ff
	rst  $38                                         ; $6c7e: $ff
	ld   de, $1f11                                   ; $6c7f: $11 $11 $1f
	rst  $38                                         ; $6c82: $ff
	pop  af                                          ; $6c83: $f1
	ld   de, $ff1f                                   ; $6c84: $11 $1f $ff
	ld   a, [$1111]                                  ; $6c87: $fa $11 $11
	xor  a                                           ; $6c8a: $af
	rst  $38                                         ; $6c8b: $ff
	pop  af                                          ; $6c8c: $f1
	ld   de, $ff3f                                   ; $6c8d: $11 $3f $ff
	db   $f4                                         ; $6c90: $f4
	ld   de, rAUD1LEN                                   ; $6c91: $11 $11 $ff
	rst  $38                                         ; $6c94: $ff
	ld   de, rAUD1LEN                                   ; $6c95: $11 $11 $ff
	rst  $38                                         ; $6c98: $ff
	or   c                                           ; $6c99: $b1
	ld   de, $ff1a                                   ; $6c9a: $11 $1a $ff
	rst  $38                                         ; $6c9d: $ff
	ld   de, rAUD1HIGH                                   ; $6c9e: $11 $14 $ff
	rst  $38                                         ; $6ca1: $ff
	ld   sp, $2f11                                   ; $6ca2: $31 $11 $2f
	rst  $38                                         ; $6ca5: $ff
	pop  af                                          ; $6ca6: $f1
	ld   de, $ff6f                                   ; $6ca7: $11 $6f $ff
	ld   hl, sp+$11                                  ; $6caa: $f8 $11
	ld   de, $ffdf                                   ; $6cac: $11 $df $ff
	pop  de                                          ; $6caf: $d1
	ld   de, $ff8f                                   ; $6cb0: $11 $8f $ff
	pop  de                                          ; $6cb3: $d1
	ld   de, $ff17                                   ; $6cb4: $11 $17 $ff
	cp   $11                                         ; $6cb7: $fe $11
	ld   a, [de]                                     ; $6cb9: $1a
	rst  $38                                         ; $6cba: $ff
	db   $fd                                         ; $6cbb: $fd
	ld   d, c                                        ; $6cbc: $51
	ld   de, $ff1f                                   ; $6cbd: $11 $1f $ff
	rst  $30                                         ; $6cc0: $f7
	ld   de, $ff1c                                   ; $6cc1: $11 $1c $ff
	db   $fc                                         ; $6cc4: $fc
	ld   de, $ef11                                   ; $6cc5: $11 $11 $ef
	rst  $38                                         ; $6cc8: $ff
	and  c                                           ; $6cc9: $a1
	ld   de, $ffcf                                   ; $6cca: $11 $cf $ff
	jp   nc, $1111                                   ; $6ccd: $d2 $11 $11

	rst  $38                                         ; $6cd0: $ff
	rst  $38                                         ; $6cd1: $ff
	ld   de, rAUD1LEN                                   ; $6cd2: $11 $11 $ff
	rst  $38                                         ; $6cd5: $ff
	sub  c                                           ; $6cd6: $91
	ld   de, $ff1f                                   ; $6cd7: $11 $1f $ff
	pop  af                                          ; $6cda: $f1
	ld   de, $ff1f                                   ; $6cdb: $11 $1f $ff
	ld   sp, hl                                      ; $6cde: $f9
	ld   de, $7f11                                   ; $6cdf: $11 $11 $7f
	rst  $38                                         ; $6ce2: $ff
	pop  af                                          ; $6ce3: $f1
	ld   de, $ff3f                                   ; $6ce4: $11 $3f $ff
	pop  af                                          ; $6ce7: $f1
	ld   de, rAUD1LOW                                   ; $6ce8: $11 $13 $ff
	rst  $38                                         ; $6ceb: $ff
	ld   de, rAUD1HIGH                                   ; $6cec: $11 $14 $ff
	rst  $38                                         ; $6cef: $ff
	ld   h, c                                        ; $6cf0: $61
	ld   de, $ff1f                                   ; $6cf1: $11 $1f $ff
	db   $f4                                         ; $6cf4: $f4
	ld   de, $ff1e                                   ; $6cf5: $11 $1e $ff
	ld   a, [$1111]                                  ; $6cf8: $fa $11 $11
	rst  $38                                         ; $6cfb: $ff
	rst  $38                                         ; $6cfc: $ff
	ld   d, c                                        ; $6cfd: $51
	ld   de, $ffff                                   ; $6cfe: $11 $ff $ff
	and  c                                           ; $6d01: $a1
	ld   de, $ff17                                   ; $6d02: $11 $17 $ff
	rst  $38                                         ; $6d05: $ff
	ld   de, $ff15                                   ; $6d06: $11 $15 $ff
	rst  $38                                         ; $6d09: $ff
	ld   de, $6f11                                   ; $6d0a: $11 $11 $6f
	rst  $38                                         ; $6d0d: $ff
	pop  af                                          ; $6d0e: $f1
	ld   de, $ff8f                                   ; $6d0f: $11 $8f $ff
	jp   nc, $1111                                   ; $6d12: $d2 $11 $11

	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	ld   de, rAUD1LEN                                   ; $6d17: $11 $11 $ff
	rst  $38                                         ; $6d1a: $ff
	ld   b, c                                        ; $6d1b: $41
	ld   de, $ff0f                                   ; $6d1c: $11 $0f $ff
	pop  af                                          ; $6d1f: $f1
	ld   de, $ff4f                                   ; $6d20: $11 $4f $ff
	db   $f4                                         ; $6d23: $f4
	ld   de, rAUD1LEN                                   ; $6d24: $11 $11 $ff
	rst  $38                                         ; $6d27: $ff
	ld   de, rAUD1LEN                                   ; $6d28: $11 $11 $ff
	rst  $38                                         ; $6d2b: $ff
	ld   d, c                                        ; $6d2c: $51
	ld   de, $ff1f                                   ; $6d2d: $11 $1f $ff
	pop  af                                          ; $6d30: $f1
	ld   de, $ff2f                                   ; $6d31: $11 $2f $ff
	push af                                          ; $6d34: $f5
	ld   de, rAUD1LEN                                   ; $6d35: $11 $11 $ff
	rst  $38                                         ; $6d38: $ff
	ld   de, rAUD1LEN                                   ; $6d39: $11 $11 $ff
	rst  $38                                         ; $6d3c: $ff
	ld   d, c                                        ; $6d3d: $51
	ld   de, $ff1f                                   ; $6d3e: $11 $1f $ff
	pop  af                                          ; $6d41: $f1
	ld   de, $ff4f                                   ; $6d42: $11 $4f $ff
	db   $f4                                         ; $6d45: $f4
	ld   de, rAUD1LEN                                   ; $6d46: $11 $11 $ff
	rst  $38                                         ; $6d49: $ff
	ld   de, rAUD1ENV                                   ; $6d4a: $11 $12 $ff
	rst  $38                                         ; $6d4d: $ff
	ld   sp, $2f11                                   ; $6d4e: $31 $11 $2f
	rst  $38                                         ; $6d51: $ff
	pop  af                                          ; $6d52: $f1
	ld   de, $ff7f                                   ; $6d53: $11 $7f $ff
	pop  hl                                          ; $6d56: $e1
	ld   de, rAUD1HIGH                                   ; $6d57: $11 $14 $ff
	rst  $38                                         ; $6d5a: $ff
	ld   de, $ff18                                   ; $6d5b: $11 $18 $ff
	db   $fd                                         ; $6d5e: $fd
	ld   de, $af11                                   ; $6d5f: $11 $11 $af
	rst  $38                                         ; $6d62: $ff
	and  c                                           ; $6d63: $a1
	ld   de, $ffdf                                   ; $6d64: $11 $df $ff
	and  c                                           ; $6d67: $a1
	ld   de, $ff1e                                   ; $6d68: $11 $1e $ff
	rst  $30                                         ; $6d6b: $f7
	ld   de, $ff1f                                   ; $6d6c: $11 $1f $ff
	ld   sp, hl                                      ; $6d6f: $f9
	ld   de, rAUD1LEN                                   ; $6d70: $11 $11 $ff
	rst  $38                                         ; $6d73: $ff
	ld   de, rAUD1LEN                                   ; $6d74: $11 $11 $ff
	rst  $38                                         ; $6d77: $ff
	ld   h, c                                        ; $6d78: $61
	ld   de, $ff1f                                   ; $6d79: $11 $1f $ff
	pop  af                                          ; $6d7c: $f1
	ld   de, $ff1f                                   ; $6d7d: $11 $1f $ff
	push af                                          ; $6d80: $f5
	ld   de, rAUD1LEN                                   ; $6d81: $11 $11 $ff
	rst  $38                                         ; $6d84: $ff
	ld   de, rAUD1LOW                                   ; $6d85: $11 $13 $ff
	rst  $38                                         ; $6d88: $ff
	ld   hl, $1f11                                   ; $6d89: $21 $11 $1f
	rst  $38                                         ; $6d8c: $ff
	pop  af                                          ; $6d8d: $f1
	ld   de, $ff7f                                   ; $6d8e: $11 $7f $ff
	pop  hl                                          ; $6d91: $e1
	ld   de, $ff15                                   ; $6d92: $11 $15 $ff
	cp   $11                                         ; $6d95: $fe $11
	ld   a, [de]                                     ; $6d97: $1a
	rst  $38                                         ; $6d98: $ff
	db   $fc                                         ; $6d99: $fc
	ld   de, $af11                                   ; $6d9a: $11 $11 $af
	rst  $38                                         ; $6d9d: $ff
	or   c                                           ; $6d9e: $b1
	ld   de, $ffcf                                   ; $6d9f: $11 $cf $ff
	or   c                                           ; $6da2: $b1
	ld   de, $ff1f                                   ; $6da3: $11 $1f $ff
	push af                                          ; $6da6: $f5
	ld   de, $ff1f                                   ; $6da7: $11 $1f $ff
	ld   sp, hl                                      ; $6daa: $f9
	ld   de, rAUD1LEN                                   ; $6dab: $11 $11 $ff
	rst  $38                                         ; $6dae: $ff
	ld   hl, rAUD1LEN                                   ; $6daf: $21 $11 $ff
	rst  $38                                         ; $6db2: $ff
	ld   [hl], c                                     ; $6db3: $71
	ld   de, $ff1f                                   ; $6db4: $11 $1f $ff
	pop  af                                          ; $6db7: $f1
	ld   de, $ff1f                                   ; $6db8: $11 $1f $ff
	or   $11                                         ; $6dbb: $f6 $11
	ld   de, $ffff                                   ; $6dbd: $11 $ff $ff
	ld   de, rAUD1ENV                                   ; $6dc0: $11 $12 $ff
	rst  $38                                         ; $6dc3: $ff
	ld   b, c                                        ; $6dc4: $41
	ld   de, $ff1f                                   ; $6dc5: $11 $1f $ff
	pop  af                                          ; $6dc8: $f1
	ld   de, $ff6f                                   ; $6dc9: $11 $6f $ff
	ldh  a, [c]                                      ; $6dcc: $f2
	ld   de, rAUD1ENV                                   ; $6dcd: $11 $12 $ff
	rst  $38                                         ; $6dd0: $ff
	ld   de, $ff17                                   ; $6dd1: $11 $17 $ff
	cp   $11                                         ; $6dd4: $fe $11
	ld   de, $ff5f                                   ; $6dd6: $11 $5f $ff
	pop  af                                          ; $6dd9: $f1
	ld   de, $ff9f                                   ; $6dda: $11 $9f $ff
	pop  hl                                          ; $6ddd: $e1
	ld   de, $ff17                                   ; $6dde: $11 $17 $ff
	db   $fc                                         ; $6de1: $fc
	ld   de, $ff1c                                   ; $6de2: $11 $1c $ff
	db   $fc                                         ; $6de5: $fc
	ld   de, $bf11                                   ; $6de6: $11 $11 $bf
	rst  $38                                         ; $6de9: $ff
	sub  c                                           ; $6dea: $91
	ld   de, $ffef                                   ; $6deb: $11 $ef $ff
	or   c                                           ; $6dee: $b1
	ld   de, $ff1c                                   ; $6def: $11 $1c $ff
	rst  $30                                         ; $6df2: $f7
	ld   de, $ff1f                                   ; $6df3: $11 $1f $ff
	ld   a, [$1111]                                  ; $6df6: $fa $11 $11
	rst  $38                                         ; $6df9: $ff
	rst  $38                                         ; $6dfa: $ff
	ld   sp, rAUD1LEN                                   ; $6dfb: $31 $11 $ff
	rst  $38                                         ; $6dfe: $ff
	add  c                                           ; $6dff: $81
	ld   de, $ff1f                                   ; $6e00: $11 $1f $ff
	pop  af                                          ; $6e03: $f1
	ld   de, $ff1f                                   ; $6e04: $11 $1f $ff
	rst  $30                                         ; $6e07: $f7
	ld   de, rAUD1LEN                                   ; $6e08: $11 $11 $ff
	rst  $38                                         ; $6e0b: $ff
	ld   de, rAUD1LOW                                   ; $6e0c: $11 $13 $ff
	rst  $38                                         ; $6e0f: $ff
	ld   d, c                                        ; $6e10: $51
	ld   de, $ff1f                                   ; $6e11: $11 $1f $ff
	pop  af                                          ; $6e14: $f1
	ld   de, $ff6f                                   ; $6e15: $11 $6f $ff
	di                                               ; $6e18: $f3
	ld   de, rAUD1LEN                                   ; $6e19: $11 $11 $ff
	rst  $38                                         ; $6e1c: $ff
	ld   de, $ff17                                   ; $6e1d: $11 $17 $ff
	cp   $21                                         ; $6e20: $fe $21
	ld   de, $ff4f                                   ; $6e22: $11 $4f $ff
	pop  af                                          ; $6e25: $f1
	ld   de, $ffaf                                   ; $6e26: $11 $af $ff
	pop  de                                          ; $6e29: $d1
	ld   de, $ff16                                   ; $6e2a: $11 $16 $ff
	db   $fd                                         ; $6e2d: $fd
	ld   de, $ff1b                                   ; $6e2e: $11 $1b $ff
	db   $fc                                         ; $6e31: $fc
	ld   de, $6f11                                   ; $6e32: $11 $11 $6f
	rst  $38                                         ; $6e35: $ff
	pop  de                                          ; $6e36: $d1
	ld   de, $ffbf                                   ; $6e37: $11 $bf $ff
	pop  bc                                          ; $6e3a: $c1
	ld   de, $ff19                                   ; $6e3b: $11 $19 $ff
	ld   a, [$1d11]                                  ; $6e3e: $fa $11 $1d
	rst  $38                                         ; $6e41: $ff
	db   $fc                                         ; $6e42: $fc
	ld   de, $8f11                                   ; $6e43: $11 $11 $8f
	rst  $38                                         ; $6e46: $ff
	pop  bc                                          ; $6e47: $c1
	ld   de, $ffdf                                   ; $6e48: $11 $df $ff
	pop  bc                                          ; $6e4b: $c1
	ld   de, $ff17                                   ; $6e4c: $11 $17 $ff
	db   $fc                                         ; $6e4f: $fc
	ld   de, $ff1c                                   ; $6e50: $11 $1c $ff
	db   $fd                                         ; $6e53: $fd
	ld   de, $5f11                                   ; $6e54: $11 $11 $5f
	rst  $38                                         ; $6e57: $ff
	pop  de                                          ; $6e58: $d1
	ld   de, $ffcf                                   ; $6e59: $11 $cf $ff
	or   d                                           ; $6e5c: $b2
	ld   de, rAUD1LOW                                   ; $6e5d: $11 $13 $ff
	rst  $38                                         ; $6e60: $ff
	ld   de, $ff1a                                   ; $6e61: $11 $1a $ff
	db   $fd                                         ; $6e64: $fd
	ld   h, c                                        ; $6e65: $61
	ld   de, $ff1f                                   ; $6e66: $11 $1f $ff
	pop  af                                          ; $6e69: $f1
	ld   de, $ff9f                                   ; $6e6a: $11 $9f $ff
	rst  $10                                         ; $6e6d: $d7
	ld   de, rAUD1LEN                                   ; $6e6e: $11 $11 $ff
	rst  $38                                         ; $6e71: $ff
	ld   de, $ff16                                   ; $6e72: $11 $16 $ff
	rst  $38                                         ; $6e75: $ff
	and  c                                           ; $6e76: $a1
	ld   de, $ff1f                                   ; $6e77: $11 $1f $ff
	ldh  a, [c]                                      ; $6e7a: $f2
	ld   de, $ff4f                                   ; $6e7b: $11 $4f $ff
	db   $eb                                         ; $6e7e: $eb
	ld   de, $9f11                                   ; $6e7f: $11 $11 $9f
	rst  $38                                         ; $6e82: $ff
	add  c                                           ; $6e83: $81
	ld   de, $ffff                                   ; $6e84: $11 $ff $ff
	push hl                                          ; $6e87: $e5
	ld   de, rAUD1ENV                                   ; $6e88: $11 $12 $ff
	cp   $11                                         ; $6e8b: $fe $11
	dec  e                                           ; $6e8d: $1d
	rst  $38                                         ; $6e8e: $ff
	cp   $a1                                         ; $6e8f: $fe $a1
	ld   de, $ff1f                                   ; $6e91: $11 $1f $ff
	pop  af                                          ; $6e94: $f1
	ld   de, $ffbf                                   ; $6e95: $11 $bf $ff
	db   $dd                                         ; $6e98: $dd
	ld   de, $df11                                   ; $6e99: $11 $11 $df
	rst  $38                                         ; $6e9c: $ff
	ld   de, $ff17                                   ; $6e9d: $11 $17 $ff
	db   $fc                                         ; $6ea0: $fc
	add  sp, $11                                     ; $6ea1: $e8 $11
	ld   [de], a                                     ; $6ea3: $12
	rst  $38                                         ; $6ea4: $ff
	ld   a, [$1f11]                                  ; $6ea5: $fa $11 $1f
	rst  $38                                         ; $6ea8: $ff
	cp   [hl]                                        ; $6ea9: $be
	pop  hl                                          ; $6eaa: $e1
	ld   de, $ff1f                                   ; $6eab: $11 $1f $ff
	pop  af                                          ; $6eae: $f1
	ld   de, $faef                                   ; $6eaf: $11 $ef $fa
	rst  JumpTable                                         ; $6eb2: $df
	add  c                                           ; $6eb3: $81
	ld   de, $ff9f                                   ; $6eb4: $11 $9f $ff
	ld   de, $ff19                                   ; $6eb7: $11 $19 $ff
	xor  c                                           ; $6eba: $a9
	rst  $38                                         ; $6ebb: $ff
	ld   de, rAUD1LEN                                   ; $6ebc: $11 $11 $ff
	db   $fc                                         ; $6ebf: $fc
	ld   de, $fb2f                                   ; $6ec0: $11 $2f $fb
	ld   l, l                                        ; $6ec3: $6d
	ei                                               ; $6ec4: $fb
	ld   de, $ff1d                                   ; $6ec5: $11 $1d $ff
	pop  af                                          ; $6ec8: $f1
	ld   de, $c4ff                                   ; $6ec9: $11 $ff $c4
	adc  a                                           ; $6ecc: $8f
	pop  af                                          ; $6ecd: $f1
	ld   de, $ff1f                                   ; $6ece: $11 $1f $ff
	ld   h, c                                        ; $6ed1: $61
	jr   @+$01                                       ; $6ed2: $18 $ff

	ld   [hl-], a                                    ; $6ed4: $32
	rst  $38                                         ; $6ed5: $ff
	pop  af                                          ; $6ed6: $f1
	ld   de, $ffcf                                   ; $6ed7: $11 $cf $ff
	ld   de, $f51f                                   ; $6eda: $11 $1f $f5
	rla                                              ; $6edd: $17
	rst  $38                                         ; $6ede: $ff
	ld   d, c                                        ; $6edf: $51
	ld   de, $f5ff                                   ; $6ee0: $11 $ff $f5
	ld   de, $c1bf                                   ; $6ee3: $11 $bf $c1
	rra                                              ; $6ee6: $1f
	rst  $38                                         ; $6ee7: $ff
	ld   de, rAUD1LOW                                   ; $6ee8: $11 $13 $ff
	pop  af                                          ; $6eeb: $f1
	inc  de                                          ; $6eec: $13
	rst  $38                                         ; $6eed: $ff
	ld   de, $ff7f                                   ; $6eee: $11 $7f $ff
	ld   de, $ff1f                                   ; $6ef1: $11 $1f $ff
	pop  af                                          ; $6ef4: $f1
	dec  de                                          ; $6ef5: $1b
	rst  $30                                         ; $6ef6: $f7
	ld   de, $f9ff                                   ; $6ef7: $11 $ff $f9
	ld   de, $ff1f                                   ; $6efa: $11 $1f $ff
	pop  af                                          ; $6efd: $f1
	ld   l, h                                        ; $6efe: $6c
	or   c                                           ; $6eff: $b1
	ld   de, $f5ff                                   ; $6f00: $11 $ff $f5
	ld   de, $ff1f                                   ; $6f03: $11 $1f $ff
	or   $ab                                         ; $6f06: $f6 $ab
	ld   h, c                                        ; $6f08: $61
	inc  d                                           ; $6f09: $14
	rst  $38                                         ; $6f0a: $ff
	ld   hl, sp+$11                                  ; $6f0b: $f8 $11
	jr   @+$01                                       ; $6f0d: $18 $ff

	ei                                               ; $6f0f: $fb
	xor  c                                           ; $6f10: $a9
	ld   sp, rAUD1ENV                                   ; $6f11: $31 $12 $ff
	db   $fc                                         ; $6f14: $fc
	ld   de, rAUD1HIGH                                   ; $6f15: $11 $14 $ff
	db   $fc                                         ; $6f18: $fc
	cp   c                                           ; $6f19: $b9
	ld   b, c                                        ; $6f1a: $41
	ld   de, $ffff                                   ; $6f1b: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6f1e: $11 $11 $ff
	rst  $38                                         ; $6f21: $ff
	cp   c                                           ; $6f22: $b9
	ld   sp, $ef11                                   ; $6f23: $31 $11 $ef
	rst  $38                                         ; $6f26: $ff
	ld   hl, rAUD1LEN                                   ; $6f27: $21 $11 $ff
	rst  $38                                         ; $6f2a: $ff
	cp   e                                           ; $6f2b: $bb
	ld   h, c                                        ; $6f2c: $61
	ld   de, $ffaf                                   ; $6f2d: $11 $af $ff
	ld   [hl], c                                     ; $6f30: $71
	ld   de, $ff7f                                   ; $6f31: $11 $7f $ff
	call z, $1192                                    ; $6f34: $cc $92 $11
	ld   e, a                                        ; $6f37: $5f
	rst  $38                                         ; $6f38: $ff
	pop  hl                                          ; $6f39: $e1
	ld   de, $ff1f                                   ; $6f3a: $11 $1f $ff
	db   $fc                                         ; $6f3d: $fc
	push bc                                          ; $6f3e: $c5
	ld   de, $ff1e                                   ; $6f3f: $11 $1e $ff
	push af                                          ; $6f42: $f5
	ld   de, $ff1a                                   ; $6f43: $11 $1a $ff
	db   $fd                                         ; $6f46: $fd
	db   $eb                                         ; $6f47: $eb
	ld   de, $ff17                                   ; $6f48: $11 $17 $ff
	db   $fc                                         ; $6f4b: $fc
	ld   de, rAUD1LEN                                   ; $6f4c: $11 $11 $ff
	rst  $38                                         ; $6f4f: $ff
	rst  $38                                         ; $6f50: $ff
	ld   d, c                                        ; $6f51: $51
	ld   de, $ffff                                   ; $6f52: $11 $ff $ff
	ld   h, c                                        ; $6f55: $61
	ld   de, $ffaf                                   ; $6f56: $11 $af $ff
	rst  $28                                         ; $6f59: $ef
	or   c                                           ; $6f5a: $b1
	ld   de, $ff8f                                   ; $6f5b: $11 $8f $ff
	pop  bc                                          ; $6f5e: $c1
	ld   de, $ff1f                                   ; $6f5f: $11 $1f $ff
	db   $fd                                         ; $6f62: $fd
	rst  $30                                         ; $6f63: $f7
	ld   de, $ff1d                                   ; $6f64: $11 $1d $ff
	ld   a, [$1611]                                  ; $6f67: $fa $11 $16
	rst  $38                                         ; $6f6a: $ff
	db   $fd                                         ; $6f6b: $fd
	rst  $38                                         ; $6f6c: $ff
	ld   sp, $ff16                                   ; $6f6d: $31 $16 $ff
	db   $fd                                         ; $6f70: $fd
	ld   d, c                                        ; $6f71: $51
	ld   de, $ffdf                                   ; $6f72: $11 $df $ff
	cp   a                                           ; $6f75: $bf
	pop  hl                                          ; $6f76: $e1
	ld   de, $ff9f                                   ; $6f77: $11 $9f $ff
	pop  de                                          ; $6f7a: $d1
	ld   de, $ff1f                                   ; $6f7b: $11 $1f $ff
	rst  $28                                         ; $6f7e: $ef
	ld   a, [$1f11]                                  ; $6f7f: $fa $11 $1f
	rst  $38                                         ; $6f82: $ff
	db   $ec                                         ; $6f83: $ec
	ld   de, rAUD1LEN                                   ; $6f84: $11 $11 $ff
	ei                                               ; $6f87: $fb
	rst  $38                                         ; $6f88: $ff
	add  c                                           ; $6f89: $81
	inc  de                                          ; $6f8a: $13
	rst  $38                                         ; $6f8b: $ff
	cp   $d1                                         ; $6f8c: $fe $d1
	ld   de, $ff1f                                   ; $6f8e: $11 $1f $ff
	xor  a                                           ; $6f91: $af
	ld   a, [$4f11]                                  ; $6f92: $fa $11 $4f
	rst  $38                                         ; $6f95: $ff
	sbc  $11                                         ; $6f96: $de $11
	ld   de, $f7ff                                   ; $6f98: $11 $ff $f7
	rst  $38                                         ; $6f9b: $ff
	pop  bc                                          ; $6f9c: $c1
	inc  d                                           ; $6f9d: $14
	rst  $38                                         ; $6f9e: $ff
	db   $eb                                         ; $6f9f: $eb
	push bc                                          ; $6fa0: $c5
	ld   de, $ff1f                                   ; $6fa1: $11 $1f $ff
	ld   a, d                                        ; $6fa4: $7a
	rst  $38                                         ; $6fa5: $ff
	ld   hl, $fe3e                                   ; $6fa6: $21 $3e $fe
	adc  $91                                         ; $6fa9: $ce $91
	ld   de, $f4ff                                   ; $6fab: $11 $ff $f4
	xor  a                                           ; $6fae: $af
	push af                                          ; $6faf: $f5
	ld   de, $d9ff                                   ; $6fb0: $11 $ff $d9
	sbc  h                                           ; $6fb3: $9c
	ld   de, $ff19                                   ; $6fb4: $11 $19 $ff
	add  h                                           ; $6fb7: $84
	rst  $38                                         ; $6fb8: $ff
	pop  hl                                          ; $6fb9: $e1
	ld   a, [de]                                     ; $6fba: $1a
	db   $fd                                         ; $6fbb: $fd
	adc  b                                           ; $6fbc: $88
	add  $11                                         ; $6fbd: $c6 $11
	rra                                              ; $6fbf: $1f
	db   $fc                                         ; $6fc0: $fc
	dec  de                                          ; $6fc1: $1b
	rst  $38                                         ; $6fc2: $ff
	add  c                                           ; $6fc3: $81
	ld   c, a                                        ; $6fc4: $4f
	ld   hl, sp+$68                                  ; $6fc5: $f8 $68
	or   c                                           ; $6fc7: $b1
	ld   de, $f49f                                   ; $6fc8: $11 $9f $f4
	cpl                                              ; $6fcb: $2f
	rst  $38                                         ; $6fcc: $ff
	ld   b, c                                        ; $6fcd: $41
	xor  a                                           ; $6fce: $af
	push bc                                          ; $6fcf: $c5
	ld   e, c                                        ; $6fd0: $59
	and  c                                           ; $6fd1: $a1
	ld   de, $f3df                                   ; $6fd2: $11 $df $f3
	ld   e, a                                        ; $6fd5: $5f
	rst  $38                                         ; $6fd6: $ff
	ld   b, e                                        ; $6fd7: $43
	rst  JumpTable                                         ; $6fd8: $df
	and  l                                           ; $6fd9: $a5
	ld   l, d                                        ; $6fda: $6a
	ld   h, c                                        ; $6fdb: $61
	ld   de, $b1ff                                   ; $6fdc: $11 $ff $b1
	ld   a, a                                        ; $6fdf: $7f
	cp   $25                                         ; $6fe0: $fe $25
	rst  $38                                         ; $6fe2: $ff
	sub  h                                           ; $6fe3: $94
	ld   l, d                                        ; $6fe4: $6a
	ld   d, c                                        ; $6fe5: $51
	ld   de, $91ff                                   ; $6fe6: $11 $ff $91
	sbc  a                                           ; $6fe9: $9f
	db   $fc                                         ; $6fea: $fc
	ld   h, $ff                                      ; $6feb: $26 $ff
	and  h                                           ; $6fed: $a4
	ld   l, e                                        ; $6fee: $6b
	ld   d, c                                        ; $6fef: $51
	ld   de, $71ff                                   ; $6ff0: $11 $ff $71
	sbc  a                                           ; $6ff3: $9f
	ei                                               ; $6ff4: $fb
	add  hl, sp                                      ; $6ff5: $39
	rst  $38                                         ; $6ff6: $ff
	add  h                                           ; $6ff7: $84
	ld   a, e                                        ; $6ff8: $7b
	ld   sp, rAUD1LEN                                   ; $6ff9: $31 $11 $ff
	ld   h, c                                        ; $6ffc: $61
	xor  a                                           ; $6ffd: $af
	db   $fc                                         ; $6ffe: $fc
	ld   a, [hl-]                                    ; $6fff: $3a
	rst  $38                                         ; $7000: $ff
	add  h                                           ; $7001: $84
	ld   a, e                                        ; $7002: $7b
	ld   sp, rAUD1LEN                                   ; $7003: $31 $11 $ff
	ld   d, c                                        ; $7006: $51
	rst  JumpTable                                         ; $7007: $df
	ld   hl, sp+$1b                                  ; $7008: $f8 $1b
	rst  $38                                         ; $700a: $ff
	ld   d, e                                        ; $700b: $53
	adc  h                                           ; $700c: $8c
	ld   hl, rAUD1LEN                                   ; $700d: $21 $11 $ff
	ld   h, d                                        ; $7010: $62
	rst  $28                                         ; $7011: $ef
	push af                                          ; $7012: $f5
	ld   a, [de]                                     ; $7013: $1a
	cp   $43                                         ; $7014: $fe $43
	xor  [hl]                                        ; $7016: $ae
	ld   hl, rAUD1LEN                                   ; $7017: $21 $11 $ff
	ld   h, e                                        ; $701a: $63
	rst  JumpTable                                         ; $701b: $df
	db   $f4                                         ; $701c: $f4
	ld   a, [de]                                     ; $701d: $1a
	cp   $33                                         ; $701e: $fe $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7020: $cf
	sub  c                                           ; $7021: $91
	ld   de, $94ff                                   ; $7022: $11 $ff $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7025: $cf
	ld   sp, hl                                      ; $7026: $f9
	inc  d                                           ; $7027: $14
	cp   $42                                         ; $7028: $fe $42
	rst  JumpTable                                         ; $702a: $df
	pop  hl                                          ; $702b: $e1
	ld   de, $f91f                                   ; $702c: $11 $1f $f9
	rst  JumpTable                                         ; $702f: $df
	rst  $38                                         ; $7030: $ff
	ld   de, $858d                                   ; $7031: $11 $8d $85
	cp   a                                           ; $7034: $bf
	rst  $30                                         ; $7035: $f7
	ld   de, rAUD1LEN                                   ; $7036: $11 $11 $ff
	rst  $28                                         ; $7039: $ef
	rst  $38                                         ; $703a: $ff
	pop  de                                          ; $703b: $d1
	dec  d                                           ; $703c: $15
	xor  d                                           ; $703d: $aa
	adc  l                                           ; $703e: $8d
	rst  $38                                         ; $703f: $ff
	ld   d, c                                        ; $7040: $51
	ld   de, $ff1f                                   ; $7041: $11 $1f $ff
	rst  $38                                         ; $7044: $ff
	db   $fc                                         ; $7045: $fc
	ld   de, $cc28                                   ; $7046: $11 $28 $cc
	rst  $38                                         ; $7049: $ff
	push af                                          ; $704a: $f5
	ld   de, $af11                                   ; $704b: $11 $11 $af
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	pop  af                                          ; $7050: $f1
	ld   de, $ff5f                                   ; $7051: $11 $5f $ff
	rst  $38                                         ; $7054: $ff
	and  c                                           ; $7055: $a1
	ld   de, rAUD1LEN                                   ; $7056: $11 $11 $ff
	rst  $38                                         ; $7059: $ff
	ld   a, [$1151]                                  ; $705a: $fa $51 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $705d: $cf
	rst  $38                                         ; $705e: $ff
	rst  $38                                         ; $705f: $ff
	ld   de, $1111                                   ; $7060: $11 $11 $11
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	sub  c                                           ; $7065: $91
	ld   de, rAUD1LEN                                   ; $7066: $11 $11 $ff
	rst  $38                                         ; $7069: $ff
	db   $fd                                         ; $706a: $fd
	ld   de, $1111                                   ; $706b: $11 $11 $11
	ccf                                              ; $706e: $3f
	rst  $38                                         ; $706f: $ff
	ld   [hl], c                                     ; $7070: $71
	ld   de, rAUD1LEN                                   ; $7071: $11 $11 $ff
	rst  $38                                         ; $7074: $ff
	adc  d                                           ; $7075: $8a
	ld   de, $9511                                   ; $7076: $11 $11 $95
	ld   a, [de]                                     ; $7079: $1a
	rst  $38                                         ; $707a: $ff
	or   c                                           ; $707b: $b1
	ld   d, $51                                      ; $707c: $16 $51
	ld   e, a                                        ; $707e: $5f
	rst  $38                                         ; $707f: $ff
	and  c                                           ; $7080: $a1
	ld   sp, $2f11                                   ; $7081: $31 $11 $2f
	ld   de, $f3ff                                   ; $7084: $11 $ff $f3
	ld   de, $1ef1                                   ; $7087: $11 $f1 $1e
	rst  $38                                         ; $708a: $ff
	pop  af                                          ; $708b: $f1
	ld   [de], a                                     ; $708c: $12
	ld   de, $e11a                                   ; $708d: $11 $1a $e1
	rra                                              ; $7090: $1f
	cp   $11                                         ; $7091: $fe $11
	rra                                              ; $7093: $1f
	ld   de, $ffff                                   ; $7094: $11 $ff $ff
	ld   de, $1241                                   ; $7097: $11 $41 $12
	rst  ToBoot                                         ; $709a: $c7
	ld   de, $a1ff                                   ; $709b: $11 $ff $a1
	ld   [de], a                                     ; $709e: $12
	pop  af                                          ; $709f: $f1
	rra                                              ; $70a0: $1f
	rst  $38                                         ; $70a1: $ff
	pop  af                                          ; $70a2: $f1
	inc  [hl]                                        ; $70a3: $34
	ld   hl, $313c                                   ; $70a4: $21 $3c $31
	rra                                              ; $70a7: $1f
	rst  $30                                         ; $70a8: $f7
	ld   de, $116f                                   ; $70a9: $11 $6f $11
	rst  $38                                         ; $70ac: $ff
	ei                                               ; $70ad: $fb
	inc  d                                           ; $70ae: $14
	ld   [hl-], a                                    ; $70af: $32
	dec  [hl]                                        ; $70b0: $35
	jp   nc, rAUD1LEN                                   ; $70b1: $d2 $11 $ff

	ld   d, c                                        ; $70b4: $51
	ld   d, $f1                                      ; $70b5: $16 $f1
	rra                                              ; $70b7: $1f
	rst  $38                                         ; $70b8: $ff
	pop  bc                                          ; $70b9: $c1
	inc  sp                                          ; $70ba: $33
	dec  [hl]                                        ; $70bb: $35
	ld   a, a                                        ; $70bc: $7f
	ld   d, c                                        ; $70bd: $51
	rra                                              ; $70be: $1f
	ld   sp, hl                                      ; $70bf: $f9
	ld   de, $111f                                   ; $70c0: $11 $1f $11
	rst  $38                                         ; $70c3: $ff
	rst  $38                                         ; $70c4: $ff
	ld   de, $7663                                   ; $70c5: $11 $63 $76
	add  $11                                         ; $70c8: $c6 $11
	rst  $38                                         ; $70ca: $ff
	pop  af                                          ; $70cb: $f1
	ld   de, $1ef2                                   ; $70cc: $11 $f2 $1e
	rst  $38                                         ; $70cf: $ff
	pop  af                                          ; $70d0: $f1
	inc  de                                          ; $70d1: $13
	add  hl, hl                                      ; $70d2: $29
	cp   l                                           ; $70d3: $bd
	or   c                                           ; $70d4: $b1
	ld   de, $13ff                                   ; $70d5: $11 $ff $13
	ld   d, $f1                                      ; $70d8: $16 $f1
	rra                                              ; $70da: $1f
	rst  $38                                         ; $70db: $ff
	pop  hl                                          ; $70dc: $e1
	ld   [de], a                                     ; $70dd: $12
	inc  l                                           ; $70de: $2c
	bit  4, c                                        ; $70df: $cb $61
	dec  d                                           ; $70e1: $15
	rst  $38                                         ; $70e2: $ff
	ld   de, $511f                                   ; $70e3: $11 $1f $51
	rst  JumpTable                                         ; $70e6: $df
	rst  $38                                         ; $70e7: $ff
	ld   de, $9f31                                   ; $70e8: $11 $31 $9f
	db   $ec                                         ; $70eb: $ec
	ld   hl, $fe1f                                   ; $70ec: $21 $1f $fe
	ld   b, c                                        ; $70ef: $41
	rra                                              ; $70f0: $1f
	ld   de, $ffff                                   ; $70f1: $11 $ff $ff
	ld   de, $cf11                                   ; $70f4: $11 $11 $cf
	add  sp, $11                                     ; $70f7: $e8 $11
	rra                                              ; $70f9: $1f
	ld   sp, hl                                      ; $70fa: $f9
	ld   h, c                                        ; $70fb: $61
	dec  e                                           ; $70fc: $1d
	ld   de, $ffff                                   ; $70fd: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7100: $11 $11 $ff
	or   $11                                         ; $7103: $f6 $11
	rra                                              ; $7105: $1f
	db   $fc                                         ; $7106: $fc
	add  c                                           ; $7107: $81
	ld   a, [de]                                     ; $7108: $1a
	ld   de, $ffff                                   ; $7109: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $710c: $11 $11 $ff
	ld   hl, sp+$11                                  ; $710f: $f8 $11
	rra                                              ; $7111: $1f
	rst  $38                                         ; $7112: $ff
	ld   [hl], c                                     ; $7113: $71
	dec  de                                          ; $7114: $1b
	ld   de, $ffff                                   ; $7115: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $7118: $11 $11 $ff
	ld   hl, sp+$11                                  ; $711b: $f8 $11
	inc  e                                           ; $711d: $1c
	rst  $38                                         ; $711e: $ff
	ld   h, h                                        ; $711f: $64
	rla                                              ; $7120: $17
	ld   de, $ffff                                   ; $7121: $11 $ff $ff
	ld   de, $ef11                                   ; $7124: $11 $11 $ef
	db   $fc                                         ; $7127: $fc
	ld   de, rAUD1LEN                                   ; $7128: $11 $11 $ff
	ld   a, d                                        ; $712b: $7a
	ld   de, $cf21                                   ; $712c: $11 $21 $cf
	rst  $38                                         ; $712f: $ff
	ld   [hl], c                                     ; $7130: $71
	ld   de, $ff9f                                   ; $7131: $11 $9f $ff
	ld   hl, rAUD1LEN                                   ; $7134: $21 $11 $ff
	ld   [$4111], a                                  ; $7137: $ea $11 $41
	rra                                              ; $713a: $1f
	rst  $38                                         ; $713b: $ff
	pop  af                                          ; $713c: $f1
	ld   de, $ff1f                                   ; $713d: $11 $1f $ff
	ld   [hl], c                                     ; $7140: $71
	ld   de, $f93f                                   ; $7141: $11 $3f $f9
	ld   h, c                                        ; $7144: $61
	ld   de, $ff1f                                   ; $7145: $11 $1f $ff
	pop  af                                          ; $7148: $f1
	ld   de, $ff1f                                   ; $7149: $11 $1f $ff
	pop  af                                          ; $714c: $f1
	ld   de, $fe1f                                   ; $714d: $11 $1f $fe
	pop  de                                          ; $7150: $d1
	inc  d                                           ; $7151: $14
	ld   [de], a                                     ; $7152: $12
	rst  $38                                         ; $7153: $ff
	rst  $38                                         ; $7154: $ff
	ld   de, rAUD1LOW                                   ; $7155: $11 $13 $ff
	rst  $30                                         ; $7158: $f7
	ld   de, rAUD1LEN                                   ; $7159: $11 $11 $ff
	sbc  b                                           ; $715c: $98
	ld   de, rAUD1LEN                                   ; $715d: $11 $11 $ff
	rst  $38                                         ; $7160: $ff
	ld   hl, $ef11                                   ; $7161: $21 $11 $ef
	rst  $38                                         ; $7164: $ff
	ld   de, rAUD1LEN                                   ; $7165: $11 $11 $ff
	ld   a, [$4111]                                  ; $7168: $fa $11 $41
	rra                                              ; $716b: $1f
	rst  $38                                         ; $716c: $ff
	pop  af                                          ; $716d: $f1
	ld   de, $ff1f                                   ; $716e: $11 $1f $ff
	sub  c                                           ; $7171: $91
	ld   de, $fa1f                                   ; $7172: $11 $1f $fa
	sub  c                                           ; $7175: $91
	inc  d                                           ; $7176: $14
	ld   a, [de]                                     ; $7177: $1a
	rst  $38                                         ; $7178: $ff
	ld   a, [$1911]                                  ; $7179: $fa $11 $19
	rst  $38                                         ; $717c: $ff
	di                                               ; $717d: $f3
	ld   de, $ff16                                   ; $717e: $11 $16 $ff
	add  h                                           ; $7181: $84
	ld   de, rAUD1LEN                                   ; $7182: $11 $11 $ff
	rst  $38                                         ; $7185: $ff
	ld   de, rAUD1LEN                                   ; $7186: $11 $11 $ff
	db   $fd                                         ; $7189: $fd
	ld   de, rAUD1LEN                                   ; $718a: $11 $11 $ff
	ld   sp, hl                                      ; $718d: $f9
	ld   de, $1f41                                   ; $718e: $11 $41 $1f
	rst  $38                                         ; $7191: $ff
	pop  af                                          ; $7192: $f1
	ld   de, $ff4f                                   ; $7193: $11 $4f $ff
	add  c                                           ; $7196: $81
	ld   de, $fa1f                                   ; $7197: $11 $1f $fa
	and  c                                           ; $719a: $a1
	ld   d, $18                                      ; $719b: $16 $18
	rst  $38                                         ; $719d: $ff
	ld   a, [$1a11]                                  ; $719e: $fa $11 $1a
	rst  $38                                         ; $71a1: $ff
	push af                                          ; $71a2: $f5
	ld   de, $ff1a                                   ; $71a3: $11 $1a $ff
	ld   [hl], h                                     ; $71a6: $74
	ld   de, rAUD1LEN                                   ; $71a7: $11 $11 $ff
	rst  $38                                         ; $71aa: $ff
	ld   de, rAUD1LEN                                   ; $71ab: $11 $11 $ff
	rst  $38                                         ; $71ae: $ff
	ld   de, rAUD1LEN                                   ; $71af: $11 $11 $ff
	ei                                               ; $71b2: $fb
	ld   de, $1f31                                   ; $71b3: $11 $31 $1f
	rst  $38                                         ; $71b6: $ff
	pop  af                                          ; $71b7: $f1
	ld   de, $ff1f                                   ; $71b8: $11 $1f $ff
	pop  bc                                          ; $71bb: $c1
	ld   de, $fa1f                                   ; $71bc: $11 $1f $fa
	or   c                                           ; $71bf: $b1
	inc  d                                           ; $71c0: $14
	ld   d, $ff                                      ; $71c1: $16 $ff
	db   $fd                                         ; $71c3: $fd
	ld   de, $ff15                                   ; $71c4: $11 $15 $ff
	ld   sp, hl                                      ; $71c7: $f9
	ld   de, rAUD1HIGH                                   ; $71c8: $11 $14 $ff
	xor  b                                           ; $71cb: $a8
	ld   de, rAUD1LEN                                   ; $71cc: $11 $11 $ff
	rst  $38                                         ; $71cf: $ff
	ld   sp, $bf11                                   ; $71d0: $31 $11 $bf
	rst  $38                                         ; $71d3: $ff
	ld   b, c                                        ; $71d4: $41
	ld   de, $fbff                                   ; $71d5: $11 $ff $fb
	ld   sp, $1f41                                   ; $71d8: $31 $41 $1f
	rst  $38                                         ; $71db: $ff
	pop  af                                          ; $71dc: $f1
	ld   de, $ff1d                                   ; $71dd: $11 $1d $ff
	pop  af                                          ; $71e0: $f1
	ld   de, $ff1f                                   ; $71e1: $11 $1f $ff
	pop  de                                          ; $71e4: $d1
	ld   d, $11                                      ; $71e5: $16 $11
	rst  $38                                         ; $71e7: $ff
	rst  $38                                         ; $71e8: $ff
	ld   de, rAUD1LEN                                   ; $71e9: $11 $11 $ff
	rst  $38                                         ; $71ec: $ff
	ld   de, rAUD1LEN                                   ; $71ed: $11 $11 $ff
	cp   h                                           ; $71f0: $bc
	ld   de, $1f61                                   ; $71f1: $11 $61 $1f
	rst  $38                                         ; $71f4: $ff
	pop  af                                          ; $71f5: $f1
	ld   de, $ff1d                                   ; $71f6: $11 $1d $ff
	pop  af                                          ; $71f9: $f1
	ld   de, $fd1f                                   ; $71fa: $11 $1f $fd
	pop  hl                                          ; $71fd: $e1
	ld   d, $11                                      ; $71fe: $16 $11
	rst  $38                                         ; $7200: $ff
	rst  $38                                         ; $7201: $ff
	ld   de, $cf11                                   ; $7202: $11 $11 $cf
	rst  $38                                         ; $7205: $ff
	ld   de, rAUD1LEN                                   ; $7206: $11 $11 $ff
	call Call_0f0_6111                               ; $7209: $cd $11 $61
	rra                                              ; $720c: $1f
	rst  $38                                         ; $720d: $ff
	pop  af                                          ; $720e: $f1
	ld   de, $ff1a                                   ; $720f: $11 $1a $ff
	pop  af                                          ; $7212: $f1
	ld   de, $fc1f                                   ; $7213: $11 $1f $fc
	pop  de                                          ; $7216: $d1
	add  hl, de                                      ; $7217: $19
	ld   de, $ffff                                   ; $7218: $11 $ff $ff
	ld   de, $7f11                                   ; $721b: $11 $11 $7f
	rst  $38                                         ; $721e: $ff
	ld   de, rAUD1LEN                                   ; $721f: $11 $11 $ff
	cp   h                                           ; $7222: $bc
	inc  d                                           ; $7223: $14
	and  c                                           ; $7224: $a1
	rra                                              ; $7225: $1f
	rst  $38                                         ; $7226: $ff
	pop  af                                          ; $7227: $f1
	ld   de, $ff16                                   ; $7228: $11 $16 $ff
	pop  af                                          ; $722b: $f1
	ld   de, $fd1f                                   ; $722c: $11 $1f $fd
	jp   nz, $112b                                   ; $722f: $c2 $2b $11

	rst  $38                                         ; $7232: $ff
	rst  $38                                         ; $7233: $ff
	ld   de, $4c11                                   ; $7234: $11 $11 $4c
	rst  $38                                         ; $7237: $ff
	ld   [hl], c                                     ; $7238: $71
	ld   de, $fcff                                   ; $7239: $11 $ff $fc
	ld   d, c                                        ; $723c: $51
	pop  af                                          ; $723d: $f1
	ld   a, [de]                                     ; $723e: $1a
	rst  $38                                         ; $723f: $ff
	or   $35                                         ; $7240: $f6 $35
	ld   [de], a                                     ; $7242: $12
	adc  a                                           ; $7243: $8f
	db   $fc                                         ; $7244: $fc
	ld   de, rAUD1LEN                                   ; $7245: $11 $11 $ff
	cp   h                                           ; $7248: $bc
	dec  e                                           ; $7249: $1d
	ld   [hl], c                                     ; $724a: $71
	rra                                              ; $724b: $1f
	rst  $38                                         ; $724c: $ff
	db   $f4                                         ; $724d: $f4
	add  c                                           ; $724e: $81
	dec  d                                           ; $724f: $15
	xor  a                                           ; $7250: $af
	pop  af                                          ; $7251: $f1
	ld   de, $fd1f                                   ; $7252: $11 $1f $fd
	call nc, $115f                                   ; $7255: $d4 $5f $11
	xor  a                                           ; $7258: $af
	rst  $38                                         ; $7259: $ff
	ld   a, b                                        ; $725a: $78
	add  c                                           ; $725b: $81
	inc  [hl]                                        ; $725c: $34
	rst  $28                                         ; $725d: $ef
	pop  de                                          ; $725e: $d1
	ld   de, $fb1f                                   ; $725f: $11 $1f $fb
	call nz, $11cd                                   ; $7262: $c4 $cd $11
	xor  a                                           ; $7265: $af
	rst  $38                                         ; $7266: $ff
	ld   a, l                                        ; $7267: $7d
	sub  e                                           ; $7268: $93
	ld   b, l                                        ; $7269: $45
	rst  $28                                         ; $726a: $ef
	add  c                                           ; $726b: $81
	ld   de, $fc1f                                   ; $726c: $11 $1f $fc
	call nc, $11fc                                   ; $726f: $d4 $fc $11
	ld   a, l                                        ; $7272: $7d
	rst  $38                                         ; $7273: $ff
	xor  a                                           ; $7274: $af
	and  [hl]                                        ; $7275: $a6
	ld   d, e                                        ; $7276: $53
	rst  JumpTable                                         ; $7277: $df
	ld   [hl], c                                     ; $7278: $71
	ld   de, $ff1f                                   ; $7279: $11 $1f $ff
	sub  $fd                                         ; $727c: $d6 $fd
	ld   de, $ff3a                                   ; $727e: $11 $3a $ff
	rst  JumpTable                                         ; $7281: $df
	jp   hl                                          ; $7282: $e9


	ld   b, d                                        ; $7283: $42
	xor  a                                           ; $7284: $af
	sub  c                                           ; $7285: $91
	ld   de, $ff1f                                   ; $7286: $11 $1f $ff
	ld   sp, hl                                      ; $7289: $f9
	rst  JumpTable                                         ; $728a: $df
	ld   de, rAUD1HIGH                                   ; $728b: $11 $14 $ff
	rst  JumpTable                                         ; $728e: $df
	db   $fc                                         ; $728f: $fc
	add  d                                           ; $7290: $82
	ld   e, [hl]                                     ; $7291: $5e
	add  $11                                         ; $7292: $c6 $11
	ld   de, $feff                                   ; $7294: $11 $ff $fe
	adc  a                                           ; $7297: $8f
	pop  bc                                          ; $7298: $c1
	ld   de, $fb9f                                   ; $7299: $11 $9f $fb
	rst  $38                                         ; $729c: $ff
	add  sp, $39                                     ; $729d: $e8 $39
	jp   c, $1131                                    ; $729f: $da $31 $11

	ccf                                              ; $72a2: $3f
	rst  $38                                         ; $72a3: $ff
	db   $db                                         ; $72a4: $db
	db   $fc                                         ; $72a5: $fc
	ld   de, $fa19                                   ; $72a6: $11 $19 $fa
	xor  a                                           ; $72a9: $af
	rst  $38                                         ; $72aa: $ff
	add  e                                           ; $72ab: $83
	sbc  h                                           ; $72ac: $9c
	sub  e                                           ; $72ad: $93
	ld   de, rAUD1LEN                                   ; $72ae: $11 $11 $ff
	db   $fd                                         ; $72b1: $fd
	xor  a                                           ; $72b2: $af
	db   $f4                                         ; $72b3: $f4
	ld   de, $985e                                   ; $72b4: $11 $5e $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b7: $cf
	ei                                               ; $72b8: $fb
	ld   l, d                                        ; $72b9: $6a
	cp   d                                           ; $72ba: $ba
	ld   [hl], c                                     ; $72bb: $71
	ld   de, $fe17                                   ; $72bc: $11 $17 $fe
	ei                                               ; $72bf: $fb
	rst  $38                                         ; $72c0: $ff
	push hl                                          ; $72c1: $e5
	inc  sp                                          ; $72c2: $33
	xor  c                                           ; $72c3: $a9
	ld   e, b                                        ; $72c4: $58
	cp   a                                           ; $72c5: $bf
	ld   sp, hl                                      ; $72c6: $f9
	sbc  l                                           ; $72c7: $9d
	jp   c, $1131                                    ; $72c8: $da $31 $11

	ld   d, $ac                                      ; $72cb: $16 $ac
	call $faff                                       ; $72cd: $cd $ff $fa
	ld   h, [hl]                                     ; $72d0: $66
	xor  b                                           ; $72d1: $a8
	ld   h, [hl]                                     ; $72d2: $66
	xor  l                                           ; $72d3: $ad
	reti                                             ; $72d4: $d9


	xor  l                                           ; $72d5: $ad
	rst  ToBoot                                         ; $72d6: $c7
	ld   de, $1611                                   ; $72d7: $11 $11 $16
	ld   a, c                                        ; $72da: $79
	xor  a                                           ; $72db: $af
	rst  $38                                         ; $72dc: $ff
	db   $ec                                         ; $72dd: $ec
	cp   h                                           ; $72de: $bc
	ret                                              ; $72df: $c9


	ld   a, b                                        ; $72e0: $78
	xor  d                                           ; $72e1: $aa
	sbc  b                                           ; $72e2: $98
	sbc  c                                           ; $72e3: $99
	ld   h, c                                        ; $72e4: $61
	ld   de, $7517                                   ; $72e5: $11 $17 $75
	ld   e, b                                        ; $72e8: $58
	rst  $28                                         ; $72e9: $ef
	db   $ec                                         ; $72ea: $ec
	cp   a                                           ; $72eb: $bf
	cp   $99                                         ; $72ec: $fe $99
	xor  e                                           ; $72ee: $ab
	and  a                                           ; $72ef: $a7
	ld   h, [hl]                                     ; $72f0: $66
	ld   d, c                                        ; $72f1: $51
	ld   de, $9617                                   ; $72f2: $11 $17 $96
	ld   b, l                                        ; $72f5: $45
	sbc  l                                           ; $72f6: $9d
	jp   z, $eeac                                    ; $72f7: $ca $ac $ee

	cp   d                                           ; $72fa: $ba
	cp   h                                           ; $72fb: $bc
	ret                                              ; $72fc: $c9


	ld   [hl], a                                     ; $72fd: $77
	ld   [hl], l                                     ; $72fe: $75
	ld   hl, $8815                                   ; $72ff: $21 $15 $88
	ld   h, h                                        ; $7302: $64
	ld   b, [hl]                                     ; $7303: $46
	adc  c                                           ; $7304: $89
	add  a                                           ; $7305: $87
	adc  d                                           ; $7306: $8a
	cp   e                                           ; $7307: $bb
	cp   h                                           ; $7308: $bc
	call z, $88c9                                    ; $7309: $cc $c9 $88
	adc  c                                           ; $730c: $89
	add  a                                           ; $730d: $87
	ld   a, b                                        ; $730e: $78
	adc  b                                           ; $730f: $88
	ld   h, h                                        ; $7310: $64
	ld   d, [hl]                                     ; $7311: $56
	ld   h, h                                        ; $7312: $64
	inc  [hl]                                        ; $7313: $34
	ld   d, [hl]                                     ; $7314: $56
	ld   a, b                                        ; $7315: $78
	xor  e                                           ; $7316: $ab
	cp   e                                           ; $7317: $bb
	xor  d                                           ; $7318: $aa
	cp   d                                           ; $7319: $ba
	xor  d                                           ; $731a: $aa
	xor  e                                           ; $731b: $ab
	cp   e                                           ; $731c: $bb
	xor  d                                           ; $731d: $aa
	xor  c                                           ; $731e: $a9
	ld   [hl], l                                     ; $731f: $75
	ld   b, h                                        ; $7320: $44
	inc  sp                                          ; $7321: $33
	inc  sp                                          ; $7322: $33
	ld   b, l                                        ; $7323: $45
	ld   h, a                                        ; $7324: $67
	ld   a, b                                        ; $7325: $78
	xor  c                                           ; $7326: $a9
	cp   d                                           ; $7327: $ba
	cp   h                                           ; $7328: $bc
	set  1, h                                        ; $7329: $cb $cc
	db   $db                                         ; $732b: $db
	xor  d                                           ; $732c: $aa
	xor  c                                           ; $732d: $a9
	halt                                             ; $732e: $76
	ld   b, h                                        ; $732f: $44
	inc  sp                                          ; $7330: $33
	inc  sp                                          ; $7331: $33
	ld   b, h                                        ; $7332: $44
	ld   d, [hl]                                     ; $7333: $56
	ld   [hl], a                                     ; $7334: $77
	sbc  c                                           ; $7335: $99
	sbc  e                                           ; $7336: $9b
	cp   h                                           ; $7337: $bc
	call z, $cdcc                                    ; $7338: $cc $cc $cd
	jp   z, $8899                                    ; $733b: $ca $99 $88

	ld   h, l                                        ; $733e: $65
	ld   b, d                                        ; $733f: $42
	ld   hl, $4423                                   ; $7340: $21 $23 $44
	ld   d, [hl]                                     ; $7343: $56
	adc  d                                           ; $7344: $8a
	cp   e                                           ; $7345: $bb
	call c, $dcee                                    ; $7346: $dc $ee $dc
	call z, $98ba                                    ; $7349: $cc $ba $98
	halt                                             ; $734c: $76
	ld   d, h                                        ; $734d: $54
	inc  sp                                          ; $734e: $33
	inc  sp                                          ; $734f: $33
	inc  [hl]                                        ; $7350: $34
	ld   b, l                                        ; $7351: $45
	ld   h, a                                        ; $7352: $67
	adc  c                                           ; $7353: $89
	xor  d                                           ; $7354: $aa
	call $dddd                                       ; $7355: $cd $dd $dd
	db   $dd                                         ; $7358: $dd
	jp   z, $6698                                    ; $7359: $ca $98 $66

	ld   d, h                                        ; $735c: $54
	ld   [hl-], a                                    ; $735d: $32
	inc  sp                                          ; $735e: $33
	inc  [hl]                                        ; $735f: $34
	ld   b, l                                        ; $7360: $45
	ld   h, a                                        ; $7361: $67
	adc  c                                           ; $7362: $89
	xor  e                                           ; $7363: $ab
	call z, $dece                                    ; $7364: $cc $ce $de
	call c, $97bb                                    ; $7367: $dc $bb $97
	ld   d, h                                        ; $736a: $54
	ld   b, h                                        ; $736b: $44
	ld   [hl-], a                                    ; $736c: $32
	inc  hl                                          ; $736d: $23
	ld   b, h                                        ; $736e: $44
	ld   b, l                                        ; $736f: $45
	ld   l, b                                        ; $7370: $68
	sbc  d                                           ; $7371: $9a
	xor  e                                           ; $7372: $ab
	call $eeee                                       ; $7373: $cd $ee $ee
	call c, $87ca                                    ; $7376: $dc $ca $87
	ld   d, h                                        ; $7379: $54
	inc  sp                                          ; $737a: $33
	ld   [hl+], a                                    ; $737b: $22
	inc  sp                                          ; $737c: $33
	inc  [hl]                                        ; $737d: $34
	ld   b, l                                        ; $737e: $45
	ld   h, a                                        ; $737f: $67
	sbc  d                                           ; $7380: $9a
	cp   h                                           ; $7381: $bc
	db   $dd                                         ; $7382: $dd
	sbc  $de                                         ; $7383: $de $de
	call c, $86b9                                    ; $7385: $dc $b9 $86
	ld   d, h                                        ; $7388: $54
	ld   b, e                                        ; $7389: $43
	ld   [hl+], a                                    ; $738a: $22
	ld   [hl+], a                                    ; $738b: $22
	inc  [hl]                                        ; $738c: $34
	ld   b, l                                        ; $738d: $45
	ld   l, c                                        ; $738e: $69
	xor  e                                           ; $738f: $ab
	cp   h                                           ; $7390: $bc
	sbc  $ee                                         ; $7391: $de $ee
	xor  $dc                                         ; $7393: $ee $dc
	cp   c                                           ; $7395: $b9
	sub  a                                           ; $7396: $97
	ld   d, h                                        ; $7397: $54
	ld   [hl-], a                                    ; $7398: $32
	ld   [de], a                                     ; $7399: $12
	ld   [hl+], a                                    ; $739a: $22
	inc  sp                                          ; $739b: $33
	ld   b, l                                        ; $739c: $45
	ld   a, b                                        ; $739d: $78
	sbc  d                                           ; $739e: $9a
	call $dedd                                       ; $739f: $cd $dd $de
	xor  $dc                                         ; $73a2: $ee $dc
	cp   e                                           ; $73a4: $bb
	sub  [hl]                                        ; $73a5: $96
	ld   d, h                                        ; $73a6: $54
	ld   [hl-], a                                    ; $73a7: $32
	ld   de, $3312                                   ; $73a8: $11 $12 $33
	ld   b, l                                        ; $73ab: $45
	ld   l, b                                        ; $73ac: $68
	sbc  d                                           ; $73ad: $9a
	cp   h                                           ; $73ae: $bc
	adc  $ee                                         ; $73af: $ce $ee
	xor  $ec                                         ; $73b1: $ee $ec
	res  2, a                                        ; $73b3: $cb $97
	ld   d, h                                        ; $73b5: $54
	ld   [hl-], a                                    ; $73b6: $32
	ld   de, $3322                                   ; $73b7: $11 $22 $33
	dec  [hl]                                        ; $73ba: $35
	ld   h, a                                        ; $73bb: $67
	adc  c                                           ; $73bc: $89
	cp   h                                           ; $73bd: $bc
	db   $dd                                         ; $73be: $dd
	rst  $28                                         ; $73bf: $ef
	rst  $28                                         ; $73c0: $ef
	db   $dd                                         ; $73c1: $dd
	res  2, a                                        ; $73c2: $cb $97
	ld   h, l                                        ; $73c4: $65
	ld   b, e                                        ; $73c5: $43
	ld   de, $2311                                   ; $73c6: $11 $11 $23
	inc  [hl]                                        ; $73c9: $34
	ld   h, a                                        ; $73ca: $67
	adc  c                                           ; $73cb: $89
	xor  e                                           ; $73cc: $ab
	sbc  $ef                                         ; $73cd: $de $ef
	rst  $38                                         ; $73cf: $ff
	xor  $cb                                         ; $73d0: $ee $cb
	xor  c                                           ; $73d2: $a9
	ld   [hl], l                                     ; $73d3: $75
	ld   b, e                                        ; $73d4: $43
	ld   de, $2311                                   ; $73d5: $11 $11 $23
	inc  sp                                          ; $73d8: $33
	ld   d, [hl]                                     ; $73d9: $56
	adc  c                                           ; $73da: $89
	sbc  d                                           ; $73db: $9a
	call $eeef                                       ; $73dc: $cd $ef $ee
	xor  $ec                                         ; $73df: $ee $ec
	cp   d                                           ; $73e1: $ba
	add  [hl]                                        ; $73e2: $86
	ld   d, e                                        ; $73e3: $53
	ld   hl, $1211                                   ; $73e4: $21 $11 $12
	inc  sp                                          ; $73e7: $33
	ld   b, l                                        ; $73e8: $45
	ld   h, a                                        ; $73e9: $67
	adc  d                                           ; $73ea: $8a
	cp   l                                           ; $73eb: $bd
	sbc  $ef                                         ; $73ec: $de $ef
	rst  $38                                         ; $73ee: $ff
	db   $dd                                         ; $73ef: $dd
	call c, Call_0f0_6598                            ; $73f0: $dc $98 $65
	ld   b, d                                        ; $73f3: $42
	ld   de, $2311                                   ; $73f4: $11 $11 $23
	inc  h                                           ; $73f7: $24
	ld   d, [hl]                                     ; $73f8: $56
	adc  b                                           ; $73f9: $88
	xor  h                                           ; $73fa: $ac
	call $eeef                                       ; $73fb: $cd $ef $ee
	xor  $dd                                         ; $73fe: $ee $dd
	jp   z, Jump_0f0_5486                            ; $7400: $ca $86 $54

	ld   hl, $1211                                   ; $7403: $21 $11 $12
	ld   [hl+], a                                    ; $7406: $22
	ld   b, l                                        ; $7407: $45
	ld   l, b                                        ; $7408: $68
	adc  d                                           ; $7409: $8a
	cp   l                                           ; $740a: $bd
	sbc  $ef                                         ; $740b: $de $ef
	cp   $de                                         ; $740d: $fe $de
	call c, Call_0f0_75a8                            ; $740f: $dc $a8 $75
	ld   b, e                                        ; $7412: $43
	ld   de, $1211                                   ; $7413: $11 $11 $12
	inc  hl                                          ; $7416: $23
	ld   d, [hl]                                     ; $7417: $56
	ld   a, b                                        ; $7418: $78
	xor  e                                           ; $7419: $ab
	cp   h                                           ; $741a: $bc
	xor  $ef                                         ; $741b: $ee $ef
	xor  $ed                                         ; $741d: $ee $ed
	db   $db                                         ; $741f: $db
	sub  a                                           ; $7420: $97
	ld   h, h                                        ; $7421: $64
	ld   sp, $1101                                   ; $7422: $31 $01 $11
	ld   [hl+], a                                    ; $7425: $22
	inc  h                                           ; $7426: $24
	ld   d, [hl]                                     ; $7427: $56
	adc  c                                           ; $7428: $89
	xor  h                                           ; $7429: $ac
	call $ffee                                       ; $742a: $cd $ee $ff
	cp   $dc                                         ; $742d: $fe $dc
	cp   d                                           ; $742f: $ba
	add  a                                           ; $7430: $87
	ld   h, h                                        ; $7431: $64
	ld   hl, $1111                                   ; $7432: $21 $11 $11
	ld   [hl+], a                                    ; $7435: $22
	inc  [hl]                                        ; $7436: $34
	ld   h, a                                        ; $7437: $67
	sbc  c                                           ; $7438: $99
	cp   h                                           ; $7439: $bc
	db   $dd                                         ; $743a: $dd
	rst  $38                                         ; $743b: $ff
	xor  $ee                                         ; $743c: $ee $ee
	db   $dd                                         ; $743e: $dd
	cp   d                                           ; $743f: $ba
	add  a                                           ; $7440: $87
	ld   d, e                                        ; $7441: $53
	ld   hl, $1111                                   ; $7442: $21 $11 $11
	ld   [hl+], a                                    ; $7445: $22
	dec  [hl]                                        ; $7446: $35
	ld   h, a                                        ; $7447: $67
	adc  c                                           ; $7448: $89
	cp   h                                           ; $7449: $bc
	db   $dd                                         ; $744a: $dd
	cp   $ff                                         ; $744b: $fe $ff
	rst  $28                                         ; $744d: $ef
	db   $dd                                         ; $744e: $dd
	ret                                              ; $744f: $c9


	sub  [hl]                                        ; $7450: $96
	ld   d, e                                        ; $7451: $53
	ld   de, $1111                                   ; $7452: $11 $11 $11
	ld   [hl+], a                                    ; $7455: $22
	dec  [hl]                                        ; $7456: $35
	ld   h, a                                        ; $7457: $67
	sbc  d                                           ; $7458: $9a
	xor  h                                           ; $7459: $ac
	sbc  $ef                                         ; $745a: $de $ef
	rst  $38                                         ; $745c: $ff
	rst  $38                                         ; $745d: $ff
	call c, $97ca                                    ; $745e: $dc $ca $97
	ld   d, e                                        ; $7461: $53
	ld   hl, $1111                                   ; $7462: $21 $11 $11
	ld   [hl+], a                                    ; $7465: $22
	inc  [hl]                                        ; $7466: $34
	ld   h, a                                        ; $7467: $67
	sbc  c                                           ; $7468: $99
	cp   h                                           ; $7469: $bc
	db   $dd                                         ; $746a: $dd
	cp   $ff                                         ; $746b: $fe $ff
	rst  $38                                         ; $746d: $ff
	db   $ed                                         ; $746e: $ed
	res  4, a                                        ; $746f: $cb $a7
	ld   h, h                                        ; $7471: $64
	ld   hl, $1111                                   ; $7472: $21 $11 $11
	ld   [hl+], a                                    ; $7475: $22
	inc  h                                           ; $7476: $24
	ld   d, a                                        ; $7477: $57
	adc  c                                           ; $7478: $89
	xor  h                                           ; $7479: $ac
	db   $dd                                         ; $747a: $dd
	rst  $28                                         ; $747b: $ef
	rst  $28                                         ; $747c: $ef
	xor  $ee                                         ; $747d: $ee $ee
	db   $db                                         ; $747f: $db
	sbc  c                                           ; $7480: $99
	ld   h, l                                        ; $7481: $65
	ld   sp, $1111                                   ; $7482: $31 $11 $11
	ld   [de], a                                     ; $7485: $12
	inc  hl                                          ; $7486: $23
	ld   d, [hl]                                     ; $7487: $56
	ld   a, b                                        ; $7488: $78
	sbc  d                                           ; $7489: $9a
	call z, $fede                                    ; $748a: $cc $de $fe
	cp   $fe                                         ; $748d: $fe $fe
	db   $db                                         ; $748f: $db
	cp   c                                           ; $7490: $b9
	add  [hl]                                        ; $7491: $86
	ld   b, d                                        ; $7492: $42
	ld   de, $1211                                   ; $7493: $11 $11 $12
	ld   [hl+], a                                    ; $7496: $22
	ld   b, l                                        ; $7497: $45
	ld   a, b                                        ; $7498: $78
	sbc  d                                           ; $7499: $9a
	cp   h                                           ; $749a: $bc
	db   $dd                                         ; $749b: $dd
	rst  $28                                         ; $749c: $ef
	cp   $fe                                         ; $749d: $fe $fe
	call c, $97ca                                    ; $749f: $dc $ca $97
	ld   d, h                                        ; $74a2: $54
	ld   hl, $1111                                   ; $74a3: $21 $11 $11
	ld   [hl+], a                                    ; $74a6: $22
	inc  [hl]                                        ; $74a7: $34
	ld   d, a                                        ; $74a8: $57
	adc  c                                           ; $74a9: $89
	cp   h                                           ; $74aa: $bc
	call $feee                                       ; $74ab: $cd $ee $fe
	rst  $28                                         ; $74ae: $ef
	db   $ed                                         ; $74af: $ed
	db   $db                                         ; $74b0: $db
	xor  b                                           ; $74b1: $a8
	ld   [hl], l                                     ; $74b2: $75
	ld   [hl-], a                                    ; $74b3: $32
	ld   de, $1211                                   ; $74b4: $11 $11 $12
	inc  hl                                          ; $74b7: $23
	ld   b, [hl]                                     ; $74b8: $46
	ld   a, c                                        ; $74b9: $79
	sbc  d                                           ; $74ba: $9a
	call z, $efdd                                    ; $74bb: $cc $dd $ef
	cp   $fe                                         ; $74be: $fe $fe
	call c, $87b9                                    ; $74c0: $dc $b9 $87
	ld   d, e                                        ; $74c3: $53
	ld   hl, $1111                                   ; $74c4: $21 $11 $11
	ld   [hl+], a                                    ; $74c7: $22
	inc  [hl]                                        ; $74c8: $34
	ld   d, a                                        ; $74c9: $57
	sbc  c                                           ; $74ca: $99
	xor  h                                           ; $74cb: $ac
	call $fede                                       ; $74cc: $cd $de $fe
	rst  $28                                         ; $74cf: $ef
	db   $ed                                         ; $74d0: $ed
	res  3, b                                        ; $74d1: $cb $98
	ld   [hl], l                                     ; $74d3: $75
	ld   [hl-], a                                    ; $74d4: $32
	ld   de, $1211                                   ; $74d5: $11 $11 $12
	inc  hl                                          ; $74d8: $23
	ld   b, [hl]                                     ; $74d9: $46
	ld   a, b                                        ; $74da: $78
	sbc  d                                           ; $74db: $9a
	call z, $efdd                                    ; $74dc: $cc $dd $ef
	xor  $ee                                         ; $74df: $ee $ee
	call c, $87ba                                    ; $74e1: $dc $ba $87
	ld   d, h                                        ; $74e4: $54
	ld   hl, $1111                                   ; $74e5: $21 $11 $11
	ld   [hl+], a                                    ; $74e8: $22
	inc  [hl]                                        ; $74e9: $34
	ld   d, a                                        ; $74ea: $57
	adc  c                                           ; $74eb: $89
	xor  e                                           ; $74ec: $ab
	call $feee                                       ; $74ed: $cd $ee $fe
	rst  $28                                         ; $74f0: $ef
	db   $ed                                         ; $74f1: $ed
	res  5, c                                        ; $74f2: $cb $a9
	halt                                             ; $74f4: $76
	ld   b, d                                        ; $74f5: $42
	ld   de, $1211                                   ; $74f6: $11 $11 $12
	inc  hl                                          ; $74f9: $23
	ld   b, l                                        ; $74fa: $45
	ld   a, b                                        ; $74fb: $78
	sbc  d                                           ; $74fc: $9a
	cp   h                                           ; $74fd: $bc
	adc  $de                                         ; $74fe: $ce $de
	rst  $38                                         ; $7500: $ff
	cp   $ed                                         ; $7501: $fe $ed
	cp   d                                           ; $7503: $ba
	sbc  b                                           ; $7504: $98
	ld   h, h                                        ; $7505: $64
	ld   sp, $0111                                   ; $7506: $31 $11 $01
	ld   [hl+], a                                    ; $7509: $22
	inc  h                                           ; $750a: $24
	ld   d, [hl]                                     ; $750b: $56
	adc  c                                           ; $750c: $89
	sbc  d                                           ; $750d: $9a
	cp   l                                           ; $750e: $bd
	db   $dd                                         ; $750f: $dd
	xor  $fe                                         ; $7510: $ee $fe
	xor  $dc                                         ; $7512: $ee $dc
	cp   d                                           ; $7514: $ba
	add  [hl]                                        ; $7515: $86
	ld   d, e                                        ; $7516: $53
	ld   de, $1211                                   ; $7517: $11 $11 $12
	ld   [hl+], a                                    ; $751a: $22
	ld   b, l                                        ; $751b: $45
	ld   h, a                                        ; $751c: $67
	adc  d                                           ; $751d: $8a
	cp   h                                           ; $751e: $bc
	call $efed                                       ; $751f: $cd $ed $ef
	cp   $ec                                         ; $7522: $fe $ec
	cp   d                                           ; $7524: $ba
	sbc  c                                           ; $7525: $99
	ld   [hl], l                                     ; $7526: $75
	ld   [hl-], a                                    ; $7527: $32
	ld   de, $1211                                   ; $7528: $11 $11 $12
	inc  hl                                          ; $752b: $23
	ld   d, [hl]                                     ; $752c: $56
	ld   a, c                                        ; $752d: $79
	sbc  d                                           ; $752e: $9a
	cp   h                                           ; $752f: $bc
	call $ffde                                       ; $7530: $cd $de $ff
	db   $ed                                         ; $7533: $ed
	call c, $97ba                                    ; $7534: $dc $ba $97
	ld   h, h                                        ; $7537: $64
	ld   sp, $1111                                   ; $7538: $31 $11 $11
	ld   [hl+], a                                    ; $753b: $22
	inc  [hl]                                        ; $753c: $34
	ld   d, a                                        ; $753d: $57
	adc  c                                           ; $753e: $89
	sbc  e                                           ; $753f: $9b
	cp   l                                           ; $7540: $bd
	sbc  $ee                                         ; $7541: $de $ee
	rst  $38                                         ; $7543: $ff
	xor  $cb                                         ; $7544: $ee $cb
	xor  d                                           ; $7546: $aa
	sub  a                                           ; $7547: $97
	ld   d, e                                        ; $7548: $53
	ld   hl, $1211                                   ; $7549: $21 $11 $12
	ld   [hl+], a                                    ; $754c: $22
	dec  [hl]                                        ; $754d: $35
	ld   h, a                                        ; $754e: $67
	adc  c                                           ; $754f: $89
	cp   h                                           ; $7550: $bc
	call $eeed                                       ; $7551: $cd $ed $ee
	xor  $dd                                         ; $7554: $ee $dd
	res  5, c                                        ; $7556: $cb $a9
	ld   [hl], l                                     ; $7558: $75
	ld   b, d                                        ; $7559: $42
	ld   de, $1211                                   ; $755a: $11 $11 $12
	inc  hl                                          ; $755d: $23
	ld   b, l                                        ; $755e: $45
	ld   a, b                                        ; $755f: $78
	sbc  d                                           ; $7560: $9a
	cp   h                                           ; $7561: $bc
	sbc  $de                                         ; $7562: $de $de
	cp   $fe                                         ; $7564: $fe $fe
	db   $ed                                         ; $7566: $ed
	res  3, b                                        ; $7567: $cb $98
	ld   h, h                                        ; $7569: $64
	ld   hl, $1111                                   ; $756a: $21 $11 $11
	ld   [de], a                                     ; $756d: $12
	inc  h                                           ; $756e: $24
	ld   d, [hl]                                     ; $756f: $56
	adc  c                                           ; $7570: $89
	sbc  e                                           ; $7571: $9b
	cp   l                                           ; $7572: $bd
	sbc  $ef                                         ; $7573: $de $ef
	cp   $ed                                         ; $7575: $fe $ed
	call c, $96b9                                    ; $7577: $dc $b9 $96
	ld   d, e                                        ; $757a: $53
	ld   de, $1111                                   ; $757b: $11 $11 $11
	ld   [de], a                                     ; $757e: $12
	inc  [hl]                                        ; $757f: $34
	ld   h, a                                        ; $7580: $67
	sbc  c                                           ; $7581: $99
	xor  h                                           ; $7582: $ac
	call $eedd                                       ; $7583: $cd $dd $ee
	cp   $ed                                         ; $7586: $fe $ed
	call c, Call_0f0_75b9                            ; $7588: $dc $b9 $75
	ld   b, d                                        ; $758b: $42
	ld   de, $0111                                   ; $758c: $11 $11 $01
	ld   [de], a                                     ; $758f: $12
	ld   b, l                                        ; $7590: $45
	ld   a, b                                        ; $7591: $78
	sbc  c                                           ; $7592: $99
	cp   h                                           ; $7593: $bc
	sbc  $de                                         ; $7594: $de $de
	rst  $38                                         ; $7596: $ff
	cp   $dc                                         ; $7597: $fe $dc
	res  5, c                                        ; $7599: $cb $a9
	ld   h, l                                        ; $759b: $65
	ld   [hl-], a                                    ; $759c: $32
	ld   de, $1111                                   ; $759d: $11 $11 $11
	inc  hl                                          ; $75a0: $23
	ld   b, [hl]                                     ; $75a1: $46
	ld   a, c                                        ; $75a2: $79
	xor  d                                           ; $75a3: $aa
	call z, $dedd                                    ; $75a4: $cc $dd $de
	rst  $28                                         ; $75a7: $ef

Call_0f0_75a8:
	cp   $ed                                         ; $75a8: $fe $ed
	res  3, b                                        ; $75aa: $cb $98
	ld   h, h                                        ; $75ac: $64
	ld   sp, $1111                                   ; $75ad: $31 $11 $11
	ld   de, $4623                                   ; $75b0: $11 $23 $46
	adc  c                                           ; $75b3: $89
	sbc  d                                           ; $75b4: $9a
	cp   h                                           ; $75b5: $bc
	sbc  $ef                                         ; $75b6: $de $ef
	rst  $38                                         ; $75b8: $ff

Call_0f0_75b9:
	cp   $dc                                         ; $75b9: $fe $dc
	jp   z, $5397                                    ; $75bb: $ca $97 $53

	ld   hl, $1111                                   ; $75be: $21 $11 $11
	ld   de, $5724                                   ; $75c1: $11 $24 $57
	sbc  d                                           ; $75c4: $9a
	cp   e                                           ; $75c5: $bb
	call $feee                                       ; $75c6: $cd $ee $fe
	rst  $38                                         ; $75c9: $ff
	cp   $dc                                         ; $75ca: $fe $dc
	cp   e                                           ; $75cc: $bb
	sub  a                                           ; $75cd: $97
	ld   b, e                                        ; $75ce: $43
	ld   de, $1111                                   ; $75cf: $11 $11 $11
	ld   de, $5734                                   ; $75d2: $11 $34 $57
	sbc  c                                           ; $75d5: $99
	xor  e                                           ; $75d6: $ab
	call $eeef                                       ; $75d7: $cd $ef $ee
	rst  $38                                         ; $75da: $ff
	cp   $dc                                         ; $75db: $fe $dc
	cp   d                                           ; $75dd: $ba
	sub  [hl]                                        ; $75de: $96
	ld   b, d                                        ; $75df: $42
	ld   de, $1111                                   ; $75e0: $11 $11 $11
	ld   bc, $6734                                   ; $75e3: $01 $34 $67
	sbc  c                                           ; $75e6: $99
	cp   h                                           ; $75e7: $bc
	adc  $ee                                         ; $75e8: $ce $ee
	rst  $28                                         ; $75ea: $ef
	rst  $38                                         ; $75eb: $ff
	xor  $dc                                         ; $75ec: $ee $dc
	cp   d                                           ; $75ee: $ba
	add  [hl]                                        ; $75ef: $86
	ld   b, d                                        ; $75f0: $42
	ld   de, $1111                                   ; $75f1: $11 $11 $11
	ld   [de], a                                     ; $75f4: $12
	inc  [hl]                                        ; $75f5: $34
	ld   h, a                                        ; $75f6: $67
	adc  d                                           ; $75f7: $8a
	call $ffee                                       ; $75f8: $cd $ee $ff
	rst  $38                                         ; $75fb: $ff
	rst  $28                                         ; $75fc: $ef
	db   $fd                                         ; $75fd: $fd
	call c, Call_0f0_5197                            ; $75fe: $dc $97 $51
	ld   de, $1111                                   ; $7601: $11 $11 $11
	ld   [de], a                                     ; $7604: $12
	ld   b, a                                        ; $7605: $47
	adc  b                                           ; $7606: $88
	sbc  d                                           ; $7607: $9a
	sbc  $dc                                         ; $7608: $de $dc
	call $ecee                                       ; $760a: $cd $ee $ec
	cp   h                                           ; $760d: $bc
	call z, Call_0f0_5398                            ; $760e: $cc $98 $53
	ld   de, $1411                                   ; $7611: $11 $11 $14
	ld   d, e                                        ; $7614: $53
	ld   [hl], $cf                                   ; $7615: $36 $cf
	db   $fd                                         ; $7617: $fd
	xor  e                                           ; $7618: $ab
	sbc  $da                                         ; $7619: $de $da
	sbc  c                                           ; $761b: $99
	call $89ca                                       ; $761c: $cd $ca $89
	call Call_0f0_41b8                               ; $761f: $cd $b8 $41
	ld   de, $5811                                   ; $7622: $11 $11 $58
	ld   [hl], l                                     ; $7625: $75
	ld   e, e                                        ; $7626: $5b
	rst  $38                                         ; $7627: $ff
	ld   [$de9b], a                                  ; $7628: $ea $9b $de
	xor  c                                           ; $762b: $a9
	adc  e                                           ; $762c: $8b
	db   $dd                                         ; $762d: $dd
	cp   d                                           ; $762e: $ba
	xor  h                                           ; $762f: $ac
	xor  $83                                         ; $7630: $ee $83
	ld   de, $1a11                                   ; $7632: $11 $11 $1a
	db   $ec                                         ; $7635: $ec
	ld   [hl], a                                     ; $7636: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7637: $cf
	db   $fc                                         ; $7638: $fc
	ld   d, [hl]                                     ; $7639: $56
	xor  l                                           ; $763a: $ad
	ret  c                                           ; $763b: $d8

	ld   l, b                                        ; $763c: $68
	cp   l                                           ; $763d: $bd
	res  7, l                                        ; $763e: $cb $bd
	rst  $38                                         ; $7640: $ff
	add  sp, $21                                     ; $7641: $e8 $21
	ld   de, $9f11                                   ; $7643: $11 $11 $9f
	cp   $45                                         ; $7646: $fe $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7648: $cf
	ld   hl, sp+$47                                  ; $7649: $f8 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764b: $cf
	or   l                                           ; $764c: $b5
	ld   d, a                                        ; $764d: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764e: $cf
	db   $dd                                         ; $764f: $dd
	rst  $28                                         ; $7650: $ef
	rst  $38                                         ; $7651: $ff
	sub  d                                           ; $7652: $92
	ld   de, $1711                                   ; $7653: $11 $11 $17
	rst  $38                                         ; $7656: $ff
	push af                                          ; $7657: $f5
	dec  d                                           ; $7658: $15
	rst  JumpTable                                         ; $7659: $df
	sub  $6a                                         ; $765a: $d6 $6a
	db   $ed                                         ; $765c: $ed
	ld   h, d                                        ; $765d: $62
	ld   c, c                                        ; $765e: $49
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	ld   a, [$1141]                                  ; $7662: $fa $41 $11
	ld   de, $ff1f                                   ; $7665: $11 $1f $ff
	pop  af                                          ; $7668: $f1
	inc  de                                          ; $7669: $13
	rst  $38                                         ; $766a: $ff
	or   $57                                         ; $766b: $f6 $57
	db   $fc                                         ; $766d: $fc
	ld   sp, $ff3b                                   ; $766e: $31 $3b $ff
	cp   $bd                                         ; $7671: $fe $bd
	ret  c                                           ; $7673: $d8

	ld   sp, $1111                                   ; $7674: $31 $11 $11
	rra                                              ; $7677: $1f
	rst  $38                                         ; $7678: $ff
	and  c                                           ; $7679: $a1
	ld   de, $f7ff                                   ; $767a: $11 $ff $f7
	inc  h                                           ; $767d: $24
	jp   c, $3e41                                    ; $767e: $da $41 $3e

	rst  $38                                         ; $7681: $ff
	ei                                               ; $7682: $fb
	ld   l, b                                        ; $7683: $68
	xor  c                                           ; $7684: $a9
	ld   h, c                                        ; $7685: $61
	ld   de, $9f11                                   ; $7686: $11 $11 $9f
	rst  $38                                         ; $7689: $ff
	ld   de, rAUD1ENV                                   ; $768a: $11 $12 $ff
	rst  $30                                         ; $768d: $f7
	inc  de                                          ; $768e: $13
	xor  d                                           ; $768f: $aa
	ld   d, c                                        ; $7690: $51
	ld   e, a                                        ; $7691: $5f
	rst  $38                                         ; $7692: $ff
	ld   a, [$9b34]                                  ; $7693: $fa $34 $9b
	and  h                                           ; $7696: $a4
	ld   de, $7f11                                   ; $7697: $11 $11 $7f
	rst  $38                                         ; $769a: $ff
	ld   sp, rAUD1LEN                                   ; $769b: $31 $11 $ff
	ld   sp, hl                                      ; $769e: $f9
	ld   de, $747a                                   ; $769f: $11 $7a $74
	ld   e, h                                        ; $76a2: $5c
	rst  $38                                         ; $76a3: $ff
	db   $fc                                         ; $76a4: $fc
	ld   hl, $da5b                                   ; $76a5: $21 $5b $da
	ld   de, $5f11                                   ; $76a8: $11 $11 $5f
	rst  $38                                         ; $76ab: $ff
	ld   d, c                                        ; $76ac: $51
	ld   de, $fbff                                   ; $76ad: $11 $ff $fb
	ld   de, $975c                                   ; $76b0: $11 $5c $97
	ld   c, b                                        ; $76b3: $48
	rst  $38                                         ; $76b4: $ff
	rst  $38                                         ; $76b5: $ff
	ld   sp, $fd3a                                   ; $76b6: $31 $3a $fd
	ld   hl, $1f11                                   ; $76b9: $21 $11 $1f
	rst  $38                                         ; $76bc: $ff
	pop  de                                          ; $76bd: $d1
	ld   de, $ffff                                   ; $76be: $11 $ff $ff
	ld   de, $cd18                                   ; $76c1: $11 $18 $cd
	halt                                             ; $76c4: $76
	rst  $28                                         ; $76c5: $ef
	rst  $38                                         ; $76c6: $ff
	ld   h, c                                        ; $76c7: $61
	ld   d, $ff                                      ; $76c8: $16 $ff
	sub  c                                           ; $76ca: $91
	ld   de, $ff1f                                   ; $76cb: $11 $1f $ff
	pop  af                                          ; $76ce: $f1
	ld   de, $ff3f                                   ; $76cf: $11 $3f $ff
	ld   [hl], c                                     ; $76d2: $71
	inc  d                                           ; $76d3: $14
	xor  a                                           ; $76d4: $af
	add  $9f                                         ; $76d5: $c6 $9f
	rst  $38                                         ; $76d7: $ff
	jp   nz, $af11                                   ; $76d8: $c2 $11 $af

	ldh  a, [c]                                      ; $76db: $f2
	ld   de, $ff1b                                   ; $76dc: $11 $1b $ff
	pop  af                                          ; $76df: $f1
	ld   de, $ff1f                                   ; $76e0: $11 $1f $ff
	pop  af                                          ; $76e3: $f1
	ld   de, $fb6f                                   ; $76e4: $11 $6f $fb
	adc  h                                           ; $76e7: $8c
	rst  $38                                         ; $76e8: $ff
	rst  $30                                         ; $76e9: $f7
	ld   hl, $f84e                                   ; $76ea: $21 $4e $f8
	ld   de, rAUD1LEN                                   ; $76ed: $11 $11 $ff
	rst  $38                                         ; $76f0: $ff
	ld   de, $ff19                                   ; $76f1: $11 $19 $ff
	push af                                          ; $76f4: $f5
	ld   de, $ff1b                                   ; $76f5: $11 $1b $ff
	jp   z, $fb9f                                    ; $76f8: $ca $9f $fb

	ld   [hl], e                                     ; $76fb: $73
	ld   a, [hl+]                                    ; $76fc: $2a
	db   $db                                         ; $76fd: $db
	ld   de, rAUD1LEN                                   ; $76fe: $11 $11 $ff
	rst  $38                                         ; $7701: $ff
	ld   de, rAUD1LEN                                   ; $7702: $11 $11 $ff
	rst  $38                                         ; $7705: $ff
	ld   de, rAUD1ENV                                   ; $7706: $11 $12 $ff
	db   $fd                                         ; $7709: $fd
	ld   a, b                                        ; $770a: $78
	db   $fd                                         ; $770b: $fd
	and  a                                           ; $770c: $a7
	ld   h, $bb                                      ; $770d: $26 $bb
	ld   h, c                                        ; $770f: $61
	ld   de, $ff6f                                   ; $7710: $11 $6f $ff
	add  c                                           ; $7713: $81
	ld   de, $ffcf                                   ; $7714: $11 $cf $ff
	ld   d, c                                        ; $7717: $51
	ld   de, $ffaf                                   ; $7718: $11 $af $ff
	call nz, $ab9d                                   ; $771b: $c4 $9d $ab
	ld   h, l                                        ; $771e: $65
	xor  b                                           ; $771f: $a8
	ld   [hl], c                                     ; $7720: $71
	ld   de, $ff1f                                   ; $7721: $11 $1f $ff
	pop  af                                          ; $7724: $f1
	ld   de, $ff1f                                   ; $7725: $11 $1f $ff
	pop  af                                          ; $7728: $f1
	ld   de, $ff1f                                   ; $7729: $11 $1f $ff
	rst  $30                                         ; $772c: $f7
	ld   c, c                                        ; $772d: $49
	adc  e                                           ; $772e: $8b
	and  [hl]                                        ; $772f: $a6
	xor  b                                           ; $7730: $a8
	ld   h, e                                        ; $7731: $63
	ld   de, $ff1b                                   ; $7732: $11 $1b $ff
	push af                                          ; $7735: $f5
	ld   de, $ff1d                                   ; $7736: $11 $1d $ff
	push af                                          ; $7739: $f5
	ld   de, $ff19                                   ; $773a: $11 $19 $ff
	rst  $38                                         ; $773d: $ff
	ld   b, [hl]                                     ; $773e: $46
	ld   l, b                                        ; $773f: $68
	reti                                             ; $7740: $d9


	xor  d                                           ; $7741: $aa
	ld   [hl], l                                     ; $7742: $75
	ld   de, rAUD1ENV                                   ; $7743: $11 $12 $ff
	rst  $38                                         ; $7746: $ff
	ld   de, rAUD1LEN                                   ; $7747: $11 $11 $ff
	rst  $38                                         ; $774a: $ff
	ld   de, rAUD1LEN                                   ; $774b: $11 $11 $ff
	rst  $38                                         ; $774e: $ff
	sub  h                                           ; $774f: $94
	ld   d, h                                        ; $7750: $54
	cp   d                                           ; $7751: $ba
	xor  h                                           ; $7752: $ac
	sub  [hl]                                        ; $7753: $96
	ld   de, $df11                                   ; $7754: $11 $11 $df
	rst  $38                                         ; $7757: $ff
	ld   d, c                                        ; $7758: $51
	ld   de, $ffbf                                   ; $7759: $11 $bf $ff
	add  c                                           ; $775c: $81
	ld   de, $ff4f                                   ; $775d: $11 $4f $ff
	rst  $30                                         ; $7760: $f7
	ld   sp, $be5b                                   ; $7761: $31 $5b $be
	rst  ToBoot                                         ; $7764: $c7
	ld   sp, $1f11                                   ; $7765: $31 $11 $1f
	rst  $38                                         ; $7768: $ff
	pop  af                                          ; $7769: $f1
	ld   de, $ff1f                                   ; $776a: $11 $1f $ff
	ldh  a, [c]                                      ; $776d: $f2
	ld   de, $ff19                                   ; $776e: $11 $19 $ff
	rst  $38                                         ; $7771: $ff
	ld   [hl], d                                     ; $7772: $72
	rla                                              ; $7773: $17
	sbc  h                                           ; $7774: $9c
	jp   c, $1171                                    ; $7775: $da $71 $11

	add  hl, de                                      ; $7778: $19
	rst  $38                                         ; $7779: $ff
	db   $fd                                         ; $777a: $fd
	ld   de, rAUD1LEN                                   ; $777b: $11 $11 $ff
	rst  $38                                         ; $777e: $ff
	ld   de, $df11                                   ; $777f: $11 $11 $df
	rst  $38                                         ; $7782: $ff
	push bc                                          ; $7783: $c5
	ld   [de], a                                     ; $7784: $12
	adc  d                                           ; $7785: $8a
	sbc  $b7                                         ; $7786: $de $b7
	ld   de, $af11                                   ; $7788: $11 $11 $af
	rst  $38                                         ; $778b: $ff
	pop  hl                                          ; $778c: $e1
	ld   de, $ff1f                                   ; $778d: $11 $1f $ff
	pop  af                                          ; $7790: $f1
	ld   de, $ff1b                                   ; $7791: $11 $1b $ff
	db   $fd                                         ; $7794: $fd
	ld   h, c                                        ; $7795: $61
	jr   @-$51                                       ; $7796: $18 $ad

	db   $db                                         ; $7798: $db
	ld   [hl], c                                     ; $7799: $71
	ld   de, $ff17                                   ; $779a: $11 $17 $ff
	rst  $38                                         ; $779d: $ff
	ld   de, rAUD1LEN                                   ; $779e: $11 $11 $ff
	rst  $38                                         ; $77a1: $ff
	ld   b, c                                        ; $77a2: $41
	ld   de, $ff6f                                   ; $77a3: $11 $6f $ff
	ld   sp, hl                                      ; $77a6: $f9
	ld   de, $cf68                                   ; $77a7: $11 $68 $cf
	cp   b                                           ; $77aa: $b8
	ld   hl, $4f11                                   ; $77ab: $21 $11 $4f
	rst  $38                                         ; $77ae: $ff
	ldh  a, [c]                                      ; $77af: $f2
	ld   de, $ff1b                                   ; $77b0: $11 $1b $ff
	ld   sp, hl                                      ; $77b3: $f9
	ld   de, rAUD1ENV                                   ; $77b4: $11 $12 $ff
	rst  $38                                         ; $77b7: $ff
	or   h                                           ; $77b8: $b4

Call_0f0_77b9:
	inc  d                                           ; $77b9: $14
	ld   a, e                                        ; $77ba: $7b
	call c, $11a6                                    ; $77bb: $dc $a6 $11
	ld   de, $ffdf                                   ; $77be: $11 $df $ff
	or   c                                           ; $77c1: $b1
	ld   de, $ff1f                                   ; $77c2: $11 $1f $ff
	ldh  a, [c]                                      ; $77c5: $f2
	ld   de, $ff18                                   ; $77c6: $11 $18 $ff
	rst  $38                                         ; $77c9: $ff
	sub  c                                           ; $77ca: $91
	dec  d                                           ; $77cb: $15
	sbc  h                                           ; $77cc: $9c
	jp   c, $1183                                    ; $77cd: $da $83 $11

	rla                                              ; $77d0: $17
	rst  $38                                         ; $77d1: $ff
	rst  $38                                         ; $77d2: $ff
	ld   sp, $bf11                                   ; $77d3: $31 $11 $bf
	rst  $38                                         ; $77d6: $ff
	or   c                                           ; $77d7: $b1
	ld   de, $ff1f                                   ; $77d8: $11 $1f $ff
	db   $fd                                         ; $77db: $fd
	ld   sp, $ce26                                   ; $77dc: $31 $26 $ce
	ret                                              ; $77df: $c9


	ld   d, c                                        ; $77e0: $51
	ld   de, $ff1d                                   ; $77e1: $11 $1d $ff
	db   $fc                                         ; $77e4: $fc
	ld   de, rAUD1LEN                                   ; $77e5: $11 $11 $ff
	rst  $38                                         ; $77e8: $ff
	ld   d, c                                        ; $77e9: $51
	ld   de, $ff5f                                   ; $77ea: $11 $5f $ff
	ei                                               ; $77ed: $fb
	ld   de, $cd37                                   ; $77ee: $11 $37 $cd
	ret                                              ; $77f1: $c9


	ld   b, c                                        ; $77f2: $41
	ld   de, $ff3e                                   ; $77f3: $11 $3e $ff
	ld   sp, hl                                      ; $77f6: $f9
	ld   de, rAUD1HIGH                                   ; $77f7: $11 $14 $ff
	rst  $38                                         ; $77fa: $ff
	ld   hl, $9f11                                   ; $77fb: $21 $11 $9f
	rst  $38                                         ; $77fe: $ff
	rst  $30                                         ; $77ff: $f7
	ld   de, $cd39                                   ; $7800: $11 $39 $cd
	cp   c                                           ; $7803: $b9
	ld   hl, $7d11                                   ; $7804: $21 $11 $7d
	rst  $38                                         ; $7807: $ff
	rst  $30                                         ; $7808: $f7
	ld   de, $ff17                                   ; $7809: $11 $17 $ff
	cp   $11                                         ; $780c: $fe $11
	ld   de, $ffbf                                   ; $780e: $11 $bf $ff
	or   $12                                         ; $7811: $f6 $12
	ld   e, d                                        ; $7813: $5a
	db   $db                                         ; $7814: $db
	and  a                                           ; $7815: $a7
	ld   hl, $8d11                                   ; $7816: $21 $11 $8d
	rst  $38                                         ; $7819: $ff
	or   $11                                         ; $781a: $f6 $11
	rla                                              ; $781c: $17
	rst  $38                                         ; $781d: $ff
	cp   $11                                         ; $781e: $fe $11
	ld   de, $ffcf                                   ; $7820: $11 $cf $ff
	or   $12                                         ; $7823: $f6 $12
	ld   c, d                                        ; $7825: $4a
	res  4, a                                        ; $7826: $cb $a7
	ld   sp, $7e11                                   ; $7828: $31 $11 $7e
	rst  $38                                         ; $782b: $ff
	or   $11                                         ; $782c: $f6 $11
	rla                                              ; $782e: $17
	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	ld   de, $af11                                   ; $7831: $11 $11 $af
	rst  $38                                         ; $7834: $ff
	rst  $30                                         ; $7835: $f7
	ld   [hl+], a                                    ; $7836: $22
	ld   c, c                                        ; $7837: $49
	cp   h                                           ; $7838: $bc
	cp   b                                           ; $7839: $b8
	ld   b, c                                        ; $783a: $41
	ld   de, $ff5b                                   ; $783b: $11 $5b $ff
	ld   a, [$1311]                                  ; $783e: $fa $11 $13
	rst  $38                                         ; $7841: $ff
	rst  $38                                         ; $7842: $ff
	ld   sp, $6f11                                   ; $7843: $31 $11 $6f
	rst  $38                                         ; $7846: $ff
	ld   a, [$4822]                                  ; $7847: $fa $22 $48
	res  5, c                                        ; $784a: $cb $a9
	ld   d, c                                        ; $784c: $51
	ld   de, $ff19                                   ; $784d: $11 $19 $ff
	rst  $38                                         ; $7850: $ff
	ld   de, $df11                                   ; $7851: $11 $11 $df
	rst  $38                                         ; $7854: $ff
	or   c                                           ; $7855: $b1
	ld   de, $ff1f                                   ; $7856: $11 $1f $ff
	cp   $52                                         ; $7859: $fe $52
	ld   [hl], $ac                                   ; $785b: $36 $ac
	xor  b                                           ; $785d: $a8
	ld   h, h                                        ; $785e: $64
	ld   de, $bf16                                   ; $785f: $11 $16 $bf
	rst  $38                                         ; $7862: $ff
	and  c                                           ; $7863: $a1
	ld   de, $ff3f                                   ; $7864: $11 $3f $ff
	db   $f4                                         ; $7867: $f4
	ld   de, $ff15                                   ; $7868: $11 $15 $ff
	rst  $38                                         ; $786b: $ff
	and  h                                           ; $786c: $a4
	dec  h                                           ; $786d: $25
	adc  e                                           ; $786e: $8b
	xor  b                                           ; $786f: $a8
	ld   [hl], l                                     ; $7870: $75
	ld   sp, $8e11                                   ; $7871: $31 $11 $8e
	rst  $38                                         ; $7874: $ff
	db   $f4                                         ; $7875: $f4
	ld   de, $ff1a                                   ; $7876: $11 $1a $ff
	db   $fc                                         ; $7879: $fc
	ld   de, $af11                                   ; $787a: $11 $11 $af
	rst  $38                                         ; $787d: $ff
	add  sp, $32                                     ; $787e: $e8 $32
	ld   l, c                                        ; $7880: $69
	bit  6, [hl]                                     ; $7881: $cb $76
	ld   [hl-], a                                    ; $7883: $32
	ld   de, $ff48                                   ; $7884: $11 $48 $ff
	rst  $38                                         ; $7887: $ff

Jump_0f0_7888:
	ld   de, $cf11                                   ; $7888: $11 $11 $cf
	rst  $38                                         ; $788b: $ff
	and  c                                           ; $788c: $a1
	ld   de, $ff1c                                   ; $788d: $11 $1c $ff
	db   $fc                                         ; $7890: $fc
	ld   d, c                                        ; $7891: $51
	scf                                              ; $7892: $37
	cp   l                                           ; $7893: $bd
	sub  [hl]                                        ; $7894: $96
	ld   b, d                                        ; $7895: $42
	ld   hl, $8f16                                   ; $7896: $21 $16 $8f
	rst  $38                                         ; $7899: $ff
	pop  af                                          ; $789a: $f1
	ld   de, $ff1c                                   ; $789b: $11 $1c $ff
	ld   a, [$1111]                                  ; $789e: $fa $11 $11
	rst  JumpTable                                         ; $78a1: $df
	rst  $38                                         ; $78a2: $ff
	or   h                                           ; $78a3: $b4
	inc  de                                          ; $78a4: $13
	adc  l                                           ; $78a5: $8d
	db   $eb                                         ; $78a6: $eb
	ld   [hl], e                                     ; $78a7: $73
	ld   de, $5a11                                   ; $78a8: $11 $11 $5a
	rst  $38                                         ; $78ab: $ff
	rst  $38                                         ; $78ac: $ff
	ld   sp, $9f11                                   ; $78ad: $31 $11 $9f
	rst  $38                                         ; $78b0: $ff
	pop  bc                                          ; $78b1: $c1
	ld   de, $ff1a                                   ; $78b2: $11 $1a $ff
	cp   $61                                         ; $78b5: $fe $61
	ld   d, $cf                                      ; $78b7: $16 $cf
	db   $fc                                         ; $78b9: $fc
	ld   d, c                                        ; $78ba: $51
	ld   de, $ce11                                   ; $78bb: $11 $11 $ce
	rst  $38                                         ; $78be: $ff
	jp   c, $1111                                    ; $78bf: $da $11 $11

	rst  $28                                         ; $78c2: $ef
	rst  $38                                         ; $78c3: $ff
	add  c                                           ; $78c4: $81
	ld   de, $ff1a                                   ; $78c5: $11 $1a $ff
	db   $fc                                         ; $78c8: $fc
	ld   d, c                                        ; $78c9: $51
	ld   d, $df                                      ; $78ca: $16 $df
	db   $fc                                         ; $78cc: $fc
	ld   d, c                                        ; $78cd: $51
	ld   de, $de11                                   ; $78ce: $11 $11 $de
	rst  $38                                         ; $78d1: $ff
	jp   z, $1111                                    ; $78d2: $ca $11 $11

	rst  $28                                         ; $78d5: $ef
	rst  $38                                         ; $78d6: $ff
	sub  c                                           ; $78d7: $91
	ld   de, $ff1a                                   ; $78d8: $11 $1a $ff
	db   $fc                                         ; $78db: $fc
	ld   h, c                                        ; $78dc: $61
	ld   b, $df                                      ; $78dd: $06 $df
	cp   $71                                         ; $78df: $fe $71
	ld   de, $8f11                                   ; $78e1: $11 $11 $8f
	rst  $38                                         ; $78e4: $ff
	ei                                               ; $78e5: $fb
	ld   sp, $af11                                   ; $78e6: $31 $11 $af
	rst  $38                                         ; $78e9: $ff
	db   $d3                                         ; $78ea: $d3
	ld   de, $ef16                                   ; $78eb: $11 $16 $ef
	cp   $91                                         ; $78ee: $fe $91
	ld   [de], a                                     ; $78f0: $12
	adc  a                                           ; $78f1: $8f
	rst  $38                                         ; $78f2: $ff
	call nc, $1111                                   ; $78f3: $d4 $11 $11
	inc  e                                           ; $78f6: $1c
	rst  $38                                         ; $78f7: $ff
	db   $fd                                         ; $78f8: $fd
	sub  c                                           ; $78f9: $91
	ld   de, $ff1d                                   ; $78fa: $11 $1d $ff
	ld   sp, hl                                      ; $78fd: $f9
	ld   de, $9f11                                   ; $78fe: $11 $11 $9f
	rst  $38                                         ; $7901: $ff
	rst  $10                                         ; $7902: $d7
	ld   de, $ff39                                   ; $7903: $11 $39 $ff
	cp   $61                                         ; $7906: $fe $61
	ld   de, $af11                                   ; $7908: $11 $11 $af
	rst  $38                                         ; $790b: $ff
	ld   a, [$1121]                                  ; $790c: $fa $21 $11
	sbc  a                                           ; $790f: $9f
	rst  $38                                         ; $7910: $ff
	push de                                          ; $7911: $d5
	ld   de, $bf15                                   ; $7912: $11 $15 $bf
	rst  $38                                         ; $7915: $ff
	and  h                                           ; $7916: $a4
	inc  hl                                          ; $7917: $23
	ld   e, e                                        ; $7918: $5b
	rst  $38                                         ; $7919: $ff
	db   $fc                                         ; $791a: $fc
	ld   h, c                                        ; $791b: $61
	ld   de, $bf11                                   ; $791c: $11 $11 $bf
	rst  $38                                         ; $791f: $ff
	ld   hl, sp+$11                                  ; $7920: $f8 $11
	ld   de, $ff9f                                   ; $7922: $11 $9f $ff
	push de                                          ; $7925: $d5
	ld   de, $cf14                                   ; $7926: $11 $14 $cf
	rst  $38                                         ; $7929: $ff
	or   l                                           ; $792a: $b5
	ld   [hl+], a                                    ; $792b: $22
	ld   c, c                                        ; $792c: $49
	rst  JumpTable                                         ; $792d: $df
	cp   $92                                         ; $792e: $fe $92
	ld   de, $6f11                                   ; $7930: $11 $11 $6f
	rst  $38                                         ; $7933: $ff
	ld   a, [$1161]                                  ; $7934: $fa $61 $11
	ld   a, $ff                                      ; $7937: $3e $ff
	ld   sp, hl                                      ; $7939: $f9
	ld   hl, $7e11                                   ; $793a: $21 $11 $7e
	rst  $38                                         ; $793d: $ff
	ld   [$2542], a                                  ; $793e: $ea $42 $25
	sbc  l                                           ; $7941: $9d
	rst  $38                                         ; $7942: $ff
	ld   [$1141], a                                  ; $7943: $ea $41 $11
	inc  de                                          ; $7946: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7947: $cf
	rst  $38                                         ; $7948: $ff
	reti                                             ; $7949: $d9


	ld   de, $9f11                                   ; $794a: $11 $11 $9f
	rst  $38                                         ; $794d: $ff
	push de                                          ; $794e: $d5
	ld   de, $bf14                                   ; $794f: $11 $14 $bf
	rst  $38                                         ; $7952: $ff
	push bc                                          ; $7953: $c5
	ld   [hl+], a                                    ; $7954: $22
	scf                                              ; $7955: $37
	sbc  [hl]                                        ; $7956: $9e
	rst  $38                                         ; $7957: $ff
	ld   [$1161], a                                  ; $7958: $ea $61 $11
	inc  de                                          ; $795b: $13
	ld   a, a                                        ; $795c: $7f
	rst  $38                                         ; $795d: $ff
	ld   sp, hl                                      ; $795e: $f9
	ld   h, c                                        ; $795f: $61
	ld   de, $ff3f                                   ; $7960: $11 $3f $ff
	ld   sp, hl                                      ; $7963: $f9
	ld   sp, $7e11                                   ; $7964: $31 $11 $7e
	rst  $38                                         ; $7967: $ff
	ld   sp, hl                                      ; $7968: $f9
	ld   b, d                                        ; $7969: $42
	inc  h                                           ; $796a: $24
	sbc  e                                           ; $796b: $9b
	call $b8dd                                       ; $796c: $cd $dd $b8
	ld   d, d                                        ; $796f: $52
	ld   de, $7b46                                   ; $7970: $11 $46 $7b
	call z, $84e8                                    ; $7973: $cc $e8 $84
	inc  de                                          ; $7976: $13
	ld   a, [hl-]                                    ; $7977: $3a
	rst  $28                                         ; $7978: $ef
	ei                                               ; $7979: $fb
	ld   h, c                                        ; $797a: $61
	ld   [de], a                                     ; $797b: $12
	ld   e, d                                        ; $797c: $5a
	rst  $38                                         ; $797d: $ff
	ei                                               ; $797e: $fb
	ld   h, e                                        ; $797f: $63
	inc  hl                                          ; $7980: $23
	ld   l, c                                        ; $7981: $69
	call z, $abba                                    ; $7982: $cc $ba $ab
	cp   c                                           ; $7985: $b9
	add  l                                           ; $7986: $85
	ld   [hl-], a                                    ; $7987: $32
	ld   [hl], $76                                   ; $7988: $36 $76
	xor  c                                           ; $798a: $a9
	xor  [hl]                                        ; $798b: $ae
	sbc  e                                           ; $798c: $9b
	ld   [hl], d                                     ; $798d: $72
	ld   d, d                                        ; $798e: $52
	adc  d                                           ; $798f: $8a
	rst  JumpTable                                         ; $7990: $df
	cp   c                                           ; $7991: $b9
	ld   b, d                                        ; $7992: $42
	inc  [hl]                                        ; $7993: $34
	adc  h                                           ; $7994: $8c
	db   $dd                                         ; $7995: $dd
	or   a                                           ; $7996: $b7
	ld   d, h                                        ; $7997: $54
	ld   b, [hl]                                     ; $7998: $46
	sbc  d                                           ; $7999: $9a
	cp   d                                           ; $799a: $ba
	sub  a                                           ; $799b: $97
	ld   [hl], a                                     ; $799c: $77
	adc  e                                           ; $799d: $8b
	cp   e                                           ; $799e: $bb
	xor  c                                           ; $799f: $a9
	ld   h, l                                        ; $79a0: $65
	ld   b, l                                        ; $79a1: $45
	ld   h, [hl]                                     ; $79a2: $66
	ld   d, h                                        ; $79a3: $54
	add  a                                           ; $79a4: $87
	cp   [hl]                                        ; $79a5: $be
	db   $dd                                         ; $79a6: $dd
	ld   h, e                                        ; $79a7: $63
	ld   hl, $ef79                                   ; $79a8: $21 $79 $ef
	jp   z, $3542                                    ; $79ab: $ca $42 $35

	xor  l                                           ; $79ae: $ad
	call c, Call_0f0_43a6                            ; $79af: $dc $a6 $43
	ld   d, a                                        ; $79b2: $57
	sbc  e                                           ; $79b3: $9b
	cp   d                                           ; $79b4: $ba
	add  [hl]                                        ; $79b5: $86
	ld   [hl], a                                     ; $79b6: $77
	sbc  c                                           ; $79b7: $99
	sbc  c                                           ; $79b8: $99
	ld   [hl], a                                     ; $79b9: $77
	sbc  e                                           ; $79ba: $9b
	db   $dd                                         ; $79bb: $dd
	or   a                                           ; $79bc: $b7
	ld   sp, $7814                                   ; $79bd: $31 $14 $78
	cp   l                                           ; $79c0: $bd
	sbc  h                                           ; $79c1: $9c
	xor  b                                           ; $79c2: $a8
	sub  e                                           ; $79c3: $93
	ld   h, l                                        ; $79c4: $65
	ld   l, c                                        ; $79c5: $69
	xor  l                                           ; $79c6: $ad
	ret                                              ; $79c7: $c9


	add  h                                           ; $79c8: $84
	ld   b, h                                        ; $79c9: $44
	ld   l, b                                        ; $79ca: $68
	xor  h                                           ; $79cb: $ac
	jp   z, Jump_0f0_5586                            ; $79cc: $ca $86 $55

	ld   l, b                                        ; $79cf: $68
	xor  c                                           ; $79d0: $a9
	xor  c                                           ; $79d1: $a9
	sbc  b                                           ; $79d2: $98
	ld   a, b                                        ; $79d3: $78
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	add  a                                           ; $79d6: $87
	adc  c                                           ; $79d7: $89
	sbc  c                                           ; $79d8: $99

Call_0f0_79d9:
	sbc  b                                           ; $79d9: $98
	ld   [hl], a                                     ; $79da: $77
	ld   [hl], a                                     ; $79db: $77
	sbc  c                                           ; $79dc: $99
	xor  e                                           ; $79dd: $ab
	res  2, [hl]                                     ; $79de: $cb $96
	ld   b, d                                        ; $79e0: $42
	dec  [hl]                                        ; $79e1: $35
	ld   e, b                                        ; $79e2: $58
	cp   h                                           ; $79e3: $bc
	db   $ec                                         ; $79e4: $ec
	and  a                                           ; $79e5: $a7
	inc  hl                                          ; $79e6: $23
	dec  h                                           ; $79e7: $25
	xor  h                                           ; $79e8: $ac
	db   $fd                                         ; $79e9: $fd
	and  a                                           ; $79ea: $a7
	inc  sp                                          ; $79eb: $33
	ld   [hl], $9b                                   ; $79ec: $36 $9b
	call c, $65a8                                    ; $79ee: $dc $a8 $65
	ld   d, [hl]                                     ; $79f1: $56
	adc  b                                           ; $79f2: $88
	sbc  d                                           ; $79f3: $9a
	adc  c                                           ; $79f4: $89
	sbc  c                                           ; $79f5: $99
	adc  b                                           ; $79f6: $88
	ld   [hl], a                                     ; $79f7: $77
	ld   h, a                                        ; $79f8: $67
	ld   a, c                                        ; $79f9: $79
	xor  d                                           ; $79fa: $aa
	sbc  c                                           ; $79fb: $99
	halt                                             ; $79fc: $76
	ld   h, [hl]                                     ; $79fd: $66
	ld   a, c                                        ; $79fe: $79
	xor  d                                           ; $79ff: $aa
	xor  c                                           ; $7a00: $a9
	halt                                             ; $7a01: $76
	ld   h, a                                        ; $7a02: $67
	ld   a, c                                        ; $7a03: $79
	adc  c                                           ; $7a04: $89
	adc  c                                           ; $7a05: $89
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	add  a                                           ; $7a08: $87
	ld   [hl], a                                     ; $7a09: $77
	ld   a, b                                        ; $7a0a: $78
	adc  c                                           ; $7a0b: $89
	sbc  b                                           ; $7a0c: $98
	add  a                                           ; $7a0d: $87
	ld   [hl], a                                     ; $7a0e: $77
	ld   [hl], a                                     ; $7a0f: $77
	adc  c                                           ; $7a10: $89
	sbc  c                                           ; $7a11: $99
	adc  b                                           ; $7a12: $88
	ld   [hl], a                                     ; $7a13: $77
	ld   [hl], a                                     ; $7a14: $77
	adc  b                                           ; $7a15: $88
	sbc  b                                           ; $7a16: $98
	sbc  c                                           ; $7a17: $99
	xor  d                                           ; $7a18: $aa
	and  a                                           ; $7a19: $a7
	ld   h, h                                        ; $7a1a: $64
	inc  sp                                          ; $7a1b: $33
	ld   e, c                                        ; $7a1c: $59
	xor  [hl]                                        ; $7a1d: $ae
	db   $ec                                         ; $7a1e: $ec
	sub  e                                           ; $7a1f: $93
	ld   hl, $be49                                   ; $7a20: $21 $49 $be
	bit  6, h                                        ; $7a23: $cb $74
	inc  [hl]                                        ; $7a25: $34
	ld   a, c                                        ; $7a26: $79
	cp   e                                           ; $7a27: $bb
	xor  b                                           ; $7a28: $a8
	ld   h, [hl]                                     ; $7a29: $66
	ld   l, b                                        ; $7a2a: $68
	adc  c                                           ; $7a2b: $89
	adc  b                                           ; $7a2c: $88
	ld   [hl], a                                     ; $7a2d: $77
	ld   a, b                                        ; $7a2e: $78
	sbc  d                                           ; $7a2f: $9a
	xor  b                                           ; $7a30: $a8
	ld   h, l                                        ; $7a31: $65
	ld   d, [hl]                                     ; $7a32: $56
	sbc  d                                           ; $7a33: $9a
	xor  e                                           ; $7a34: $ab
	sub  a                                           ; $7a35: $97
	ld   h, l                                        ; $7a36: $65
	ld   h, a                                        ; $7a37: $67
	sbc  d                                           ; $7a38: $9a
	xor  d                                           ; $7a39: $aa
	add  a                                           ; $7a3a: $87
	ld   [hl], a                                     ; $7a3b: $77
	ld   a, b                                        ; $7a3c: $78
	adc  b                                           ; $7a3d: $88
	sbc  b                                           ; $7a3e: $98
	adc  b                                           ; $7a3f: $88
	adc  c                                           ; $7a40: $89
	sbc  c                                           ; $7a41: $99
	add  a                                           ; $7a42: $87
	ld   [hl], a                                     ; $7a43: $77
	ld   a, b                                        ; $7a44: $78
	sbc  c                                           ; $7a45: $99
	sbc  c                                           ; $7a46: $99
	ld   [hl], a                                     ; $7a47: $77
	ld   [hl], a                                     ; $7a48: $77
	adc  c                                           ; $7a49: $89
	sbc  c                                           ; $7a4a: $99
	adc  b                                           ; $7a4b: $88
	ld   [hl], a                                     ; $7a4c: $77
	ld   a, b                                        ; $7a4d: $78
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	add  a                                           ; $7a54: $87
	adc  b                                           ; $7a55: $88
	adc  c                                           ; $7a56: $89
	sbc  c                                           ; $7a57: $99
	adc  b                                           ; $7a58: $88
	ld   [hl], a                                     ; $7a59: $77
	adc  b                                           ; $7a5a: $88
	sbc  c                                           ; $7a5b: $99
	sbc  b                                           ; $7a5c: $98
	add  a                                           ; $7a5d: $87
	ld   a, b                                        ; $7a5e: $78
	adc  b                                           ; $7a5f: $88
	sbc  b                                           ; $7a60: $98
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	sbc  c                                           ; $7a64: $99
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  c                                           ; $7a68: $89
	sbc  b                                           ; $7a69: $98
	adc  b                                           ; $7a6a: $88
	ld   [hl], a                                     ; $7a6b: $77
	adc  b                                           ; $7a6c: $88
	adc  c                                           ; $7a6d: $89
	sbc  b                                           ; $7a6e: $98
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  c                                           ; $7a7d: $89
	sbc  b                                           ; $7a7e: $98
	adc  b                                           ; $7a7f: $88
	add  a                                           ; $7a80: $87
	ld   a, b                                        ; $7a81: $78
	adc  b                                           ; $7a82: $88
	sbc  c                                           ; $7a83: $99
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
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  b                                           ; $7afb: $88
	adc  b                                           ; $7afc: $88
	adc  b                                           ; $7afd: $88
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	adc  b                                           ; $7b00: $88
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  b                                           ; $7b06: $88
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	adc  b                                           ; $7b0f: $88
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  b                                           ; $7b13: $88
	adc  b                                           ; $7b14: $88
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	adc  b                                           ; $7b17: $88
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	adc  b                                           ; $7b24: $88
	adc  b                                           ; $7b25: $88
	adc  b                                           ; $7b26: $88
	adc  b                                           ; $7b27: $88
	adc  b                                           ; $7b28: $88
	adc  b                                           ; $7b29: $88
	adc  b                                           ; $7b2a: $88
	adc  b                                           ; $7b2b: $88
	adc  b                                           ; $7b2c: $88
	adc  b                                           ; $7b2d: $88
	adc  b                                           ; $7b2e: $88
	adc  b                                           ; $7b2f: $88
	adc  b                                           ; $7b30: $88
	adc  b                                           ; $7b31: $88
	adc  b                                           ; $7b32: $88
	adc  b                                           ; $7b33: $88
	adc  b                                           ; $7b34: $88
	adc  b                                           ; $7b35: $88
	adc  b                                           ; $7b36: $88
	adc  b                                           ; $7b37: $88
	adc  b                                           ; $7b38: $88
	adc  b                                           ; $7b39: $88
	adc  b                                           ; $7b3a: $88
	adc  b                                           ; $7b3b: $88
	adc  b                                           ; $7b3c: $88
	adc  b                                           ; $7b3d: $88
	adc  b                                           ; $7b3e: $88
	adc  b                                           ; $7b3f: $88
	adc  b                                           ; $7b40: $88
	adc  b                                           ; $7b41: $88
	adc  b                                           ; $7b42: $88
	adc  b                                           ; $7b43: $88
	adc  b                                           ; $7b44: $88
	adc  b                                           ; $7b45: $88
	adc  b                                           ; $7b46: $88
	adc  b                                           ; $7b47: $88
	adc  b                                           ; $7b48: $88
	adc  b                                           ; $7b49: $88
	adc  b                                           ; $7b4a: $88
	adc  b                                           ; $7b4b: $88
	adc  b                                           ; $7b4c: $88
	adc  b                                           ; $7b4d: $88
	adc  b                                           ; $7b4e: $88
	adc  b                                           ; $7b4f: $88
	adc  b                                           ; $7b50: $88
	adc  b                                           ; $7b51: $88
	adc  b                                           ; $7b52: $88
	adc  b                                           ; $7b53: $88
	adc  b                                           ; $7b54: $88
	adc  b                                           ; $7b55: $88
	adc  b                                           ; $7b56: $88
	adc  b                                           ; $7b57: $88
	adc  b                                           ; $7b58: $88
	adc  b                                           ; $7b59: $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	adc  b                                           ; $7b5c: $88
	adc  b                                           ; $7b5d: $88
	adc  b                                           ; $7b5e: $88
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	adc  b                                           ; $7b61: $88
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	adc  b                                           ; $7b66: $88
	adc  b                                           ; $7b67: $88
	adc  b                                           ; $7b68: $88
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	adc  b                                           ; $7b6b: $88
	adc  b                                           ; $7b6c: $88
	adc  b                                           ; $7b6d: $88
	adc  b                                           ; $7b6e: $88
	adc  b                                           ; $7b6f: $88
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
	adc  b                                           ; $7b7d: $88
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
	adc  b                                           ; $7e68: $88
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  b                                           ; $7e6b: $88
	adc  b                                           ; $7e6c: $88
	adc  b                                           ; $7e6d: $88
	adc  b                                           ; $7e6e: $88
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	adc  b                                           ; $7e79: $88
	adc  b                                           ; $7e7a: $88
	adc  b                                           ; $7e7b: $88
	adc  b                                           ; $7e7c: $88
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	adc  b                                           ; $7e7f: $88
	adc  b                                           ; $7e80: $88
	adc  b                                           ; $7e81: $88
	adc  b                                           ; $7e82: $88
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	adc  b                                           ; $7e85: $88
	adc  b                                           ; $7e86: $88
	adc  b                                           ; $7e87: $88
	adc  b                                           ; $7e88: $88
	adc  b                                           ; $7e89: $88
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	adc  b                                           ; $7e95: $88
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	adc  b                                           ; $7eb4: $88
	adc  b                                           ; $7eb5: $88
	adc  b                                           ; $7eb6: $88
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  b                                           ; $7eb9: $88
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	adc  b                                           ; $7eca: $88
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	adc  b                                           ; $7ecd: $88
	adc  b                                           ; $7ece: $88
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
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
