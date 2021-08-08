; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b4", ROMX[$4000], BANK[$b4]

	add  hl, de                                      ; $4000: $19
	ld   c, [hl]                                     ; $4001: $4e
	rst  $38                                         ; $4002: $ff
	ld   e, $fc                                      ; $4003: $1e $fc
	sub  c                                           ; $4005: $91
	sbc  a                                           ; $4006: $9f
	rst  $38                                         ; $4007: $ff
	ld   de, $13b9                                   ; $4008: $11 $b9 $13
	ld   b, d                                        ; $400b: $42
	db   $ed                                         ; $400c: $ed
	ld   de, $b9ff                                   ; $400d: $11 $ff $b9
	inc  [hl]                                        ; $4010: $34
	rst  $38                                         ; $4011: $ff
	dec  de                                          ; $4012: $1b
	rst  $38                                         ; $4013: $ff
	ld   sp, $a33a                                   ; $4014: $31 $3a $a3
	ld   de, $f97f                                   ; $4017: $11 $7f $f9
	ld   de, $ffff                                   ; $401a: $11 $ff $ff
	rra                                              ; $401d: $1f
	ld   de, $fff1                                   ; $401e: $11 $f1 $ff
	ld   de, $f11d                                   ; $4021: $11 $1d $f1
	ld   de, $f11f                                   ; $4024: $11 $1f $f1
	jr   @-$02                                       ; $4027: $18 $fc

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4029: $cf
	rst  $38                                         ; $402a: $ff
	pop  hl                                          ; $402b: $e1
	ld   de, $13fb                                   ; $402c: $11 $fb $13
	or   e                                           ; $402f: $b3
	ld   de, $ff18                                   ; $4030: $11 $18 $ff
	pop  bc                                          ; $4033: $c1
	ld   de, $ffff                                   ; $4034: $11 $ff $ff
	rst  $38                                         ; $4037: $ff
	ld   de, $f4c6                                   ; $4038: $11 $c6 $f4
	add  hl, de                                      ; $403b: $19
	pop  af                                          ; $403c: $f1
	ld   de, $ef18                                   ; $403d: $11 $18 $ef
	ld   [de], a                                     ; $4040: $12
	di                                               ; $4041: $f3
	rra                                              ; $4042: $1f
	rst  $38                                         ; $4043: $ff
	db   $fc                                         ; $4044: $fc
	ld   de, $54fe                                   ; $4045: $11 $fe $54
	ld   d, c                                        ; $4048: $51
	ld   sp, $5f11                                   ; $4049: $31 $11 $5f
	pop  af                                          ; $404c: $f1
	ld   [de], a                                     ; $404d: $12
	ld   e, a                                        ; $404e: $5f
	rst  $38                                         ; $404f: $ff
	rst  $38                                         ; $4050: $ff
	pop  af                                          ; $4051: $f1
	ld   d, l                                        ; $4052: $55
	rst  $38                                         ; $4053: $ff
	dec  d                                           ; $4054: $15
	sub  $11                                         ; $4055: $d6 $11
	dec  de                                          ; $4057: $1b
	rst  $38                                         ; $4058: $ff
	ld   de, $716f                                   ; $4059: $11 $6f $71
	xor  l                                           ; $405c: $ad
	rst  $38                                         ; $405d: $ff
	ld   b, c                                        ; $405e: $41
	ld   b, h                                        ; $405f: $44
	sub  c                                           ; $4060: $91
	ld   c, a                                        ; $4061: $4f
	db   $fd                                         ; $4062: $fd
	ld   de, $ff1b                                   ; $4063: $11 $1b $ff
	ld   de, $ff72                                   ; $4066: $11 $72 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4069: $cf
	jp   nc, $fffd                                   ; $406a: $d2 $fd $ff

	ld   de, $ff1b                                   ; $406d: $11 $1b $ff
	ld   de, rAUD1LEN                                   ; $4070: $11 $11 $ff
	pop  af                                          ; $4073: $f1
	ld   de, $fcff                                   ; $4074: $11 $ff $fc
	rst  ToBoot                                         ; $4077: $c7
	ccf                                              ; $4078: $3f
	ld   a, [$1292]                                  ; $4079: $fa $92 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407c: $cf
	ld   b, c                                        ; $407d: $41
	ld   de, $f9fd                                   ; $407e: $11 $fd $f9
	ld   de, $feef                                   ; $4081: $11 $ef $fe
	add  d                                           ; $4084: $82
	ld   a, a                                        ; $4085: $7f
	db   $f4                                         ; $4086: $f4
	sub  d                                           ; $4087: $92
	cp   d                                           ; $4088: $ba
	ld   [hl], $11                                   ; $4089: $36 $11
	add  h                                           ; $408b: $84
	ld   de, $11ff                                   ; $408c: $11 $ff $11
	ld   e, a                                        ; $408f: $5f
	db   $fc                                         ; $4090: $fc
	ld   d, $ff                                      ; $4091: $16 $ff
	pop  af                                          ; $4093: $f1
	ld   e, $f8                                      ; $4094: $1e $f8
	ld   de, $814c                                   ; $4096: $11 $4c $81
	ld   e, $71                                      ; $4099: $1e $71
	inc  h                                           ; $409b: $24
	ld   e, a                                        ; $409c: $5f
	ei                                               ; $409d: $fb
	sbc  [hl]                                        ; $409e: $9e
	rst  $38                                         ; $409f: $ff
	cp   $27                                         ; $40a0: $fe $27
	and  $42                                         ; $40a2: $e6 $42
	inc  hl                                          ; $40a4: $23
	ld   de, rAUD1ENV                                   ; $40a5: $11 $12 $ff
	pop  de                                          ; $40a8: $d1
	rra                                              ; $40a9: $1f
	rst  $38                                         ; $40aa: $ff
	pop  af                                          ; $40ab: $f1
	rst  $38                                         ; $40ac: $ff
	rst  $38                                         ; $40ad: $ff
	ld   de, $fce8                                   ; $40ae: $11 $e8 $fc
	ld   de, $b118                                   ; $40b1: $11 $18 $b1
	dec  de                                          ; $40b4: $1b
	call nc, Call_0b4_728f                           ; $40b5: $d4 $8f $72
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	db   $fc                                         ; $40ba: $fc
	adc  h                                           ; $40bb: $8c
	jr   @+$01                                       ; $40bc: $18 $ff

	ld   de, $d211                                   ; $40be: $11 $11 $d2
	inc  d                                           ; $40c1: $14
	push bc                                          ; $40c2: $c5
	pop  hl                                          ; $40c3: $e1
	rst  $28                                         ; $40c4: $ef
	ld   b, d                                        ; $40c5: $42
	ld   c, a                                        ; $40c6: $4f
	rst  $38                                         ; $40c7: $ff
	ld   [hl], c                                     ; $40c8: $71
	add  [hl]                                        ; $40c9: $86
	push af                                          ; $40ca: $f5
	ld   de, $21ca                                   ; $40cb: $11 $ca $21
	ld   a, [de]                                     ; $40ce: $1a
	rst  $38                                         ; $40cf: $ff
	ld   de, $bb7d                                   ; $40d0: $11 $7d $bb
	rst  $38                                         ; $40d3: $ff
	ld   l, l                                        ; $40d4: $6d
	rst  $38                                         ; $40d5: $ff
	pop  af                                          ; $40d6: $f1
	ld   b, c                                        ; $40d7: $41
	ld   e, l                                        ; $40d8: $5d
	ld   [hl], l                                     ; $40d9: $75
	ld   de, $1f11                                   ; $40da: $11 $11 $1f
	ld   a, [$1f51]                                  ; $40dd: $fa $51 $1f
	db   $fd                                         ; $40e0: $fd
	adc  a                                           ; $40e1: $8f
	rst  $38                                         ; $40e2: $ff
	ld   [$4369], a                                  ; $40e3: $ea $69 $43
	ld   h, e                                        ; $40e6: $63
	rst  $30                                         ; $40e7: $f7
	ld   de, $ff15                                   ; $40e8: $11 $15 $ff
	ld   de, $9d9d                                   ; $40eb: $11 $9d $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ee: $cf
	adc  $fa                                         ; $40ef: $ce $fa
	rst  $38                                         ; $40f1: $ff
	sub  d                                           ; $40f2: $92
	rla                                              ; $40f3: $17
	ret  z                                           ; $40f4: $c8

	ld   de, $bf13                                   ; $40f5: $11 $13 $bf
	ld   de, $bffc                                   ; $40f8: $11 $fc $bf
	ld   e, a                                        ; $40fb: $5f
	db   $dd                                         ; $40fc: $dd
	add  c                                           ; $40fd: $81
	rst  $38                                         ; $40fe: $ff
	rst  $30                                         ; $40ff: $f7
	ld   de, $a17e                                   ; $4100: $11 $7e $a1
	ld   d, $63                                      ; $4103: $16 $63
	ld   de, $f14f                                   ; $4105: $11 $4f $f1
	rra                                              ; $4108: $1f
	ld   hl, sp+$19                                  ; $4109: $f8 $19
	cp   a                                           ; $410b: $bf
	ld   sp, hl                                      ; $410c: $f9
	ld   [de], a                                     ; $410d: $12
	sbc  e                                           ; $410e: $9b
	ld   sp, $9186                                   ; $410f: $31 $86 $91
	ld   d, $c8                                      ; $4112: $16 $c8
	ld   [de], a                                     ; $4114: $12
	ld   b, l                                        ; $4115: $45
	rst  $38                                         ; $4116: $ff
	ld   de, $f9bf                                   ; $4117: $11 $bf $f9
	call nz, $c1ff                                   ; $411a: $c4 $ff $c1
	dec  d                                           ; $411d: $15
	call z, $1156                                    ; $411e: $cc $56 $11
	ld   [de], a                                     ; $4121: $12
	sbc  a                                           ; $4122: $9f
	rst  $30                                         ; $4123: $f7
	ld   de, $f3bf                                   ; $4124: $11 $bf $f3
	xor  a                                           ; $4127: $af
	db   $fd                                         ; $4128: $fd
	ld   h, c                                        ; $4129: $61
	ld   c, a                                        ; $412a: $4f
	di                                               ; $412b: $f3
	ld   d, $75                                      ; $412c: $16 $75
	ld   hl, $9e26                                   ; $412e: $21 $26 $9e
	jp   nc, $df11                                   ; $4131: $d2 $11 $df

	and  c                                           ; $4134: $a1
	db   $fc                                         ; $4135: $fc
	rst  $38                                         ; $4136: $ff
	inc  de                                          ; $4137: $13
	adc  [hl]                                        ; $4138: $8e
	or   $12                                         ; $4139: $f6 $12
	dec  hl                                          ; $413b: $2b
	pop  af                                          ; $413c: $f1
	ld   b, h                                        ; $413d: $44
	ld   de, $fb4f                                   ; $413e: $11 $4f $fb
	ld   sp, $ff15                                   ; $4141: $31 $15 $ff
	or   c                                           ; $4144: $b1
	rst  $28                                         ; $4145: $ef
	ld   a, [$6711]                                  ; $4146: $fa $11 $67
	and  a                                           ; $4149: $a7
	adc  l                                           ; $414a: $8d
	ld   d, c                                        ; $414b: $51
	inc  de                                          ; $414c: $13
	sbc  c                                           ; $414d: $99
	bit  4, h                                        ; $414e: $cb $64
	ld   e, d                                        ; $4150: $5a
	ld   sp, hl                                      ; $4151: $f9
	ld   h, l                                        ; $4152: $65
	rst  $38                                         ; $4153: $ff
	or   a                                           ; $4154: $b7
	ld   h, e                                        ; $4155: $63
	sbc  c                                           ; $4156: $99
	ld   h, $6b                                      ; $4157: $26 $6b
	or   $11                                         ; $4159: $f6 $11
	ld   e, $ff                                      ; $415b: $1e $ff
	ld   d, h                                        ; $415d: $54
	xor  b                                           ; $415e: $a8
	ld   de, $fb8f                                   ; $415f: $11 $8f $fb
	cp   [hl]                                        ; $4162: $be
	and  [hl]                                        ; $4163: $a6
	ld   de, $fd6e                                   ; $4164: $11 $6e $fd
	ld   [hl], $71                                   ; $4167: $36 $71
	ld   hl, $fb3f                                   ; $4169: $21 $3f $fb
	ld   h, l                                        ; $416c: $65
	ld   d, h                                        ; $416d: $54
	ld   a, h                                        ; $416e: $7c
	sbc  e                                           ; $416f: $9b
	db   $fc                                         ; $4170: $fc
	ld   b, l                                        ; $4171: $45
	dec  d                                           ; $4172: $15
	db   $ec                                         ; $4173: $ec
	cp   a                                           ; $4174: $bf
	and  [hl]                                        ; $4175: $a6
	ld   sp, $8d14                                   ; $4176: $31 $14 $8d
	call c, $15c1                                    ; $4179: $dc $c1 $15
	sbc  h                                           ; $417c: $9c
	call nc, $f78f                                   ; $417d: $d4 $8f $f7
	inc  de                                          ; $4180: $13
	sbc  h                                           ; $4181: $9c
	rst  ToBoot                                         ; $4182: $c7
	ld   e, c                                        ; $4183: $59
	cp   b                                           ; $4184: $b8
	adc  b                                           ; $4185: $88
	ld   [hl], c                                     ; $4186: $71
	inc  de                                          ; $4187: $13
	adc  l                                           ; $4188: $8d
	reti                                             ; $4189: $d9


	adc  d                                           ; $418a: $8a
	ld   b, l                                        ; $418b: $45
	ld   a, e                                        ; $418c: $7b
	db   $fd                                         ; $418d: $fd
	cp   c                                           ; $418e: $b9
	ld   h, l                                        ; $418f: $65
	inc  h                                           ; $4190: $24
	cp   a                                           ; $4191: $bf
	db   $fd                                         ; $4192: $fd
	ld   [hl-], a                                    ; $4193: $32
	ld   h, e                                        ; $4194: $63
	inc  d                                           ; $4195: $14
	xor  a                                           ; $4196: $af
	db   $d3                                         ; $4197: $d3
	ld   c, c                                        ; $4198: $49
	add  h                                           ; $4199: $84
	inc  l                                           ; $419a: $2c
	db   $fd                                         ; $419b: $fd
	ld   d, c                                        ; $419c: $51
	inc  a                                           ; $419d: $3c
	db   $fd                                         ; $419e: $fd
	xor  b                                           ; $419f: $a8
	sub  a                                           ; $41a0: $97
	ld   [hl+], a                                    ; $41a1: $22
	ld   e, h                                        ; $41a2: $5c
	cp   c                                           ; $41a3: $b9
	sub  a                                           ; $41a4: $97
	add  a                                           ; $41a5: $87
	ld   de, $ff6e                                   ; $41a6: $11 $6e $ff
	ld   h, [hl]                                     ; $41a9: $66
	ld   d, h                                        ; $41aa: $54
	sub  [hl]                                        ; $41ab: $96
	ld   l, l                                        ; $41ac: $6d
	db   $dd                                         ; $41ad: $dd
	add  l                                           ; $41ae: $85
	ld   h, a                                        ; $41af: $67
	ld   h, l                                        ; $41b0: $65
	ld   e, b                                        ; $41b1: $58
	cp   e                                           ; $41b2: $bb
	and  [hl]                                        ; $41b3: $a6
	ld   de, $df39                                   ; $41b4: $11 $39 $df
	push de                                          ; $41b7: $d5
	ld   c, b                                        ; $41b8: $48
	ld   h, [hl]                                     ; $41b9: $66
	cp   l                                           ; $41ba: $bd
	xor  $73                                         ; $41bb: $ee $73
	ld   b, l                                        ; $41bd: $45
	ld   h, a                                        ; $41be: $67
	xor  h                                           ; $41bf: $ac
	ret  z                                           ; $41c0: $c8

	ld   d, e                                        ; $41c1: $53
	ld   [de], a                                     ; $41c2: $12
	adc  l                                           ; $41c3: $8d
	ld   sp, hl                                      ; $41c4: $f9
	ld   [hl], a                                     ; $41c5: $77
	ld   b, [hl]                                     ; $41c6: $46
	adc  d                                           ; $41c7: $8a
	jp   c, $9b77                                    ; $41c8: $da $77 $9b

	rst  ToBoot                                         ; $41cb: $c7
	ld   [hl-], a                                    ; $41cc: $32
	ld   e, h                                        ; $41cd: $5c
	ld   [$4696], a                                  ; $41ce: $ea $96 $46
	ld   h, [hl]                                     ; $41d1: $66
	xor  b                                           ; $41d2: $a8
	ld   d, l                                        ; $41d3: $55
	ld   a, e                                        ; $41d4: $7b
	ret  z                                           ; $41d5: $c8

	adc  e                                           ; $41d6: $8b
	ld   [hl], a                                     ; $41d7: $77
	add  [hl]                                        ; $41d8: $86
	ld   [hl], a                                     ; $41d9: $77
	ld   a, c                                        ; $41da: $79
	xor  d                                           ; $41db: $aa
	jp   c, Jump_0b4_5744                            ; $41dc: $da $44 $57

	and  [hl]                                        ; $41df: $a6
	ld   a, d                                        ; $41e0: $7a
	sub  [hl]                                        ; $41e1: $96
	ld   b, e                                        ; $41e2: $43
	sbc  [hl]                                        ; $41e3: $9e
	db   $db                                         ; $41e4: $db
	halt                                             ; $41e5: $76
	ld   [hl], a                                     ; $41e6: $77
	ld   d, [hl]                                     ; $41e7: $56
	ld   l, c                                        ; $41e8: $69
	db   $dd                                         ; $41e9: $dd
	ld   d, d                                        ; $41ea: $52
	ld   e, b                                        ; $41eb: $58
	xor  c                                           ; $41ec: $a9
	adc  c                                           ; $41ed: $89
	and  a                                           ; $41ee: $a7
	ld   h, h                                        ; $41ef: $64
	ld   b, a                                        ; $41f0: $47
	adc  d                                           ; $41f1: $8a
	res  3, c                                        ; $41f2: $cb $99
	ld   d, h                                        ; $41f4: $54
	ld   d, [hl]                                     ; $41f5: $56
	sbc  e                                           ; $41f6: $9b
	bit  6, h                                        ; $41f7: $cb $74
	ld   b, a                                        ; $41f9: $47
	adc  b                                           ; $41fa: $88
	adc  e                                           ; $41fb: $8b
	cp   e                                           ; $41fc: $bb
	ld   d, e                                        ; $41fd: $53
	ld   d, [hl]                                     ; $41fe: $56
	xor  h                                           ; $41ff: $ac
	sbc  d                                           ; $4200: $9a
	or   a                                           ; $4201: $b7
	ld   h, l                                        ; $4202: $65
	ld   [hl], $bd                                   ; $4203: $36 $bd
	and  a                                           ; $4205: $a7
	sbc  c                                           ; $4206: $99
	ld   d, h                                        ; $4207: $54
	ld   b, l                                        ; $4208: $45
	xor  h                                           ; $4209: $ac
	cp   b                                           ; $420a: $b8
	ld   a, b                                        ; $420b: $78
	sbc  b                                           ; $420c: $98
	ld   b, [hl]                                     ; $420d: $46
	sbc  c                                           ; $420e: $99
	sub  a                                           ; $420f: $97
	ld   d, a                                        ; $4210: $57
	sbc  d                                           ; $4211: $9a
	and  [hl]                                        ; $4212: $a6
	ld   l, c                                        ; $4213: $69
	sbc  b                                           ; $4214: $98
	ld   h, [hl]                                     ; $4215: $66
	ld   l, c                                        ; $4216: $69
	xor  b                                           ; $4217: $a8
	add  a                                           ; $4218: $87
	ld   a, d                                        ; $4219: $7a
	add  [hl]                                        ; $421a: $86
	ld   a, c                                        ; $421b: $79
	xor  b                                           ; $421c: $a8
	ld   l, b                                        ; $421d: $68
	sbc  b                                           ; $421e: $98
	ld   h, l                                        ; $421f: $65
	ld   a, b                                        ; $4220: $78
	ld   l, b                                        ; $4221: $68
	db   $ec                                         ; $4222: $ec
	ld   [hl], h                                     ; $4223: $74
	ld   l, b                                        ; $4224: $68
	sub  a                                           ; $4225: $97
	ld   h, [hl]                                     ; $4226: $66
	cp   l                                           ; $4227: $bd
	add  h                                           ; $4228: $84
	ld   e, b                                        ; $4229: $58
	sub  a                                           ; $422a: $97
	ld   e, b                                        ; $422b: $58
	xor  h                                           ; $422c: $ac
	jp   $9c15                                       ; $422d: $c3 $15 $9c


	cp   b                                           ; $4230: $b8
	adc  b                                           ; $4231: $88
	add  [hl]                                        ; $4232: $86
	ld   d, a                                        ; $4233: $57
	xor  b                                           ; $4234: $a8
	ld   a, h                                        ; $4235: $7c
	and  [hl]                                        ; $4236: $a6
	ld   h, l                                        ; $4237: $65
	ld   l, d                                        ; $4238: $6a
	ret                                              ; $4239: $c9


	adc  c                                           ; $423a: $89
	add  [hl]                                        ; $423b: $86
	ld   b, h                                        ; $423c: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $423d: $cf
	and  a                                           ; $423e: $a7
	ld   e, b                                        ; $423f: $58
	or   a                                           ; $4240: $b7
	ld   d, l                                        ; $4241: $55
	ld   a, l                                        ; $4242: $7d
	add  $47                                         ; $4243: $c6 $47
	xor  d                                           ; $4245: $aa
	ld   h, l                                        ; $4246: $65
	adc  d                                           ; $4247: $8a
	sub  [hl]                                        ; $4248: $96
	ld   d, [hl]                                     ; $4249: $56
	xor  d                                           ; $424a: $aa
	add  a                                           ; $424b: $87
	adc  c                                           ; $424c: $89
	sub  a                                           ; $424d: $97
	ld   d, [hl]                                     ; $424e: $56
	sbc  d                                           ; $424f: $9a
	ret                                              ; $4250: $c9


	ld   l, c                                        ; $4251: $69
	add  a                                           ; $4252: $87
	ld   h, [hl]                                     ; $4253: $66
	adc  c                                           ; $4254: $89
	adc  d                                           ; $4255: $8a
	sbc  b                                           ; $4256: $98
	ld   a, b                                        ; $4257: $78
	ld   [hl], a                                     ; $4258: $77
	add  a                                           ; $4259: $87
	sbc  d                                           ; $425a: $9a
	adc  b                                           ; $425b: $88
	halt                                             ; $425c: $76
	adc  c                                           ; $425d: $89
	ld   a, b                                        ; $425e: $78
	adc  b                                           ; $425f: $88
	xor  b                                           ; $4260: $a8
	ld   h, a                                        ; $4261: $67
	ld   a, b                                        ; $4262: $78
	sub  a                                           ; $4263: $97
	adc  d                                           ; $4264: $8a
	sub  a                                           ; $4265: $97
	ld   [hl], a                                     ; $4266: $77
	sbc  c                                           ; $4267: $99
	ld   [hl], a                                     ; $4268: $77
	ld   a, b                                        ; $4269: $78
	sub  a                                           ; $426a: $97
	ld   a, d                                        ; $426b: $7a
	xor  c                                           ; $426c: $a9
	ld   [hl], a                                     ; $426d: $77
	ld   [hl], a                                     ; $426e: $77
	adc  b                                           ; $426f: $88
	adc  d                                           ; $4270: $8a
	xor  b                                           ; $4271: $a8
	ld   [hl], a                                     ; $4272: $77
	ld   a, b                                        ; $4273: $78
	sbc  b                                           ; $4274: $98
	add  a                                           ; $4275: $87
	adc  b                                           ; $4276: $88
	add  a                                           ; $4277: $87
	ld   a, b                                        ; $4278: $78
	sbc  c                                           ; $4279: $99
	ld   a, b                                        ; $427a: $78
	sub  a                                           ; $427b: $97
	ld   [hl], a                                     ; $427c: $77
	ld   a, d                                        ; $427d: $7a
	sbc  b                                           ; $427e: $98
	ld   [hl], a                                     ; $427f: $77
	adc  c                                           ; $4280: $89
	ld   [hl], a                                     ; $4281: $77
	ld   [hl], a                                     ; $4282: $77
	sbc  c                                           ; $4283: $99
	sbc  b                                           ; $4284: $98
	sbc  b                                           ; $4285: $98
	add  a                                           ; $4286: $87
	add  a                                           ; $4287: $87
	ld   a, b                                        ; $4288: $78
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	adc  c                                           ; $428c: $89
	adc  c                                           ; $428d: $89
	sbc  b                                           ; $428e: $98
	ld   [hl], a                                     ; $428f: $77
	adc  b                                           ; $4290: $88
	sbc  b                                           ; $4291: $98
	adc  b                                           ; $4292: $88
	add  a                                           ; $4293: $87
	adc  b                                           ; $4294: $88
	sbc  c                                           ; $4295: $99

Call_0b4_4296:
Jump_0b4_4296:
	adc  c                                           ; $4296: $89
	sbc  b                                           ; $4297: $98
	adc  b                                           ; $4298: $88
	adc  b                                           ; $4299: $88
	sbc  b                                           ; $429a: $98
	adc  b                                           ; $429b: $88
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	sbc  d                                           ; $429e: $9a
	sub  a                                           ; $429f: $97
	ld   [hl], a                                     ; $42a0: $77
	adc  c                                           ; $42a1: $89
	sbc  b                                           ; $42a2: $98
	adc  b                                           ; $42a3: $88
	sub  a                                           ; $42a4: $97
	ld   a, b                                        ; $42a5: $78
	adc  b                                           ; $42a6: $88
	adc  b                                           ; $42a7: $88
	sbc  c                                           ; $42a8: $99
	adc  c                                           ; $42a9: $89
	ld   [hl], a                                     ; $42aa: $77
	ld   a, c                                        ; $42ab: $79
	adc  b                                           ; $42ac: $88
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	ld   a, b                                        ; $42af: $78
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	sbc  b                                           ; $42b3: $98
	add  a                                           ; $42b4: $87
	ld   a, b                                        ; $42b5: $78
	adc  c                                           ; $42b6: $89
	adc  b                                           ; $42b7: $88
	adc  b                                           ; $42b8: $88
	adc  b                                           ; $42b9: $88
	adc  c                                           ; $42ba: $89
	adc  b                                           ; $42bb: $88
	adc  b                                           ; $42bc: $88
	adc  b                                           ; $42bd: $88
	adc  b                                           ; $42be: $88
	adc  c                                           ; $42bf: $89
	sbc  b                                           ; $42c0: $98
	adc  b                                           ; $42c1: $88
	adc  b                                           ; $42c2: $88
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	adc  b                                           ; $42c5: $88
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88

Call_0b4_42ca:
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
	sbc  c                                           ; $430e: $99
	adc  b                                           ; $430f: $88
	adc  b                                           ; $4310: $88
	adc  c                                           ; $4311: $89
	sbc  c                                           ; $4312: $99
	sbc  c                                           ; $4313: $99
	sbc  c                                           ; $4314: $99
	adc  b                                           ; $4315: $88
	sbc  c                                           ; $4316: $99
	sbc  c                                           ; $4317: $99
	adc  c                                           ; $4318: $89
	sbc  c                                           ; $4319: $99
	sbc  c                                           ; $431a: $99
	sbc  c                                           ; $431b: $99
	sbc  c                                           ; $431c: $99
	adc  b                                           ; $431d: $88
	adc  c                                           ; $431e: $89
	sbc  c                                           ; $431f: $99
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	sbc  b                                           ; $4323: $98
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	sbc  c                                           ; $4326: $99
	sbc  b                                           ; $4327: $98
	adc  c                                           ; $4328: $89
	sbc  b                                           ; $4329: $98
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	sbc  c                                           ; $432c: $99
	sbc  b                                           ; $432d: $98
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  c                                           ; $4331: $89
	sbc  c                                           ; $4332: $99
	adc  b                                           ; $4333: $88
	ld   a, b                                        ; $4334: $78
	adc  b                                           ; $4335: $88
	sbc  b                                           ; $4336: $98
	adc  b                                           ; $4337: $88
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  b                                           ; $433d: $88
	ld   [hl], a                                     ; $433e: $77
	adc  b                                           ; $433f: $88
	sbc  b                                           ; $4340: $98
	ld   a, b                                        ; $4341: $78
	adc  b                                           ; $4342: $88
	adc  b                                           ; $4343: $88
	ld   [hl], a                                     ; $4344: $77
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	ld   [hl], a                                     ; $4347: $77
	ld   a, b                                        ; $4348: $78
	sbc  b                                           ; $4349: $98
	sbc  b                                           ; $434a: $98
	add  a                                           ; $434b: $87
	ld   a, b                                        ; $434c: $78
	ld   [hl], a                                     ; $434d: $77
	ld   a, b                                        ; $434e: $78
	sbc  b                                           ; $434f: $98
	adc  b                                           ; $4350: $88
	adc  b                                           ; $4351: $88
	ld   [hl], a                                     ; $4352: $77
	ld   [hl], a                                     ; $4353: $77
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	ld   [hl], a                                     ; $4356: $77
	ld   [hl], a                                     ; $4357: $77
	adc  c                                           ; $4358: $89
	adc  b                                           ; $4359: $88
	ld   [hl], a                                     ; $435a: $77
	adc  b                                           ; $435b: $88
	ld   [hl], a                                     ; $435c: $77
	ld   a, b                                        ; $435d: $78
	sbc  c                                           ; $435e: $99
	add  a                                           ; $435f: $87
	ld   [hl], a                                     ; $4360: $77
	sbc  b                                           ; $4361: $98
	add  a                                           ; $4362: $87
	ld   h, [hl]                                     ; $4363: $66
	ld   a, c                                        ; $4364: $79
	xor  b                                           ; $4365: $a8
	ld   h, a                                        ; $4366: $67
	adc  b                                           ; $4367: $88
	sub  a                                           ; $4368: $97
	ld   h, a                                        ; $4369: $67
	adc  b                                           ; $436a: $88
	xor  c                                           ; $436b: $a9
	ld   [hl], a                                     ; $436c: $77
	ld   a, b                                        ; $436d: $78
	adc  b                                           ; $436e: $88
	add  a                                           ; $436f: $87
	ld   a, b                                        ; $4370: $78
	sbc  c                                           ; $4371: $99
	ld   h, [hl]                                     ; $4372: $66
	ld   a, b                                        ; $4373: $78
	add  a                                           ; $4374: $87
	ld   a, c                                        ; $4375: $79
	adc  b                                           ; $4376: $88
	sub  a                                           ; $4377: $97
	ld   a, b                                        ; $4378: $78
	adc  c                                           ; $4379: $89
	sub  a                                           ; $437a: $97
	ld   a, b                                        ; $437b: $78
	add  a                                           ; $437c: $87
	ld   h, [hl]                                     ; $437d: $66
	ld   a, c                                        ; $437e: $79
	sbc  d                                           ; $437f: $9a
	add  a                                           ; $4380: $87
	ld   [hl], a                                     ; $4381: $77
	ld   a, b                                        ; $4382: $78
	ld   [hl], a                                     ; $4383: $77
	ld   a, c                                        ; $4384: $79
	sbc  b                                           ; $4385: $98
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	add  [hl]                                        ; $4388: $86
	ld   l, b                                        ; $4389: $68
	adc  b                                           ; $438a: $88
	ld   [hl], a                                     ; $438b: $77
	ld   a, b                                        ; $438c: $78
	halt                                             ; $438d: $76
	ld   l, b                                        ; $438e: $68
	xor  d                                           ; $438f: $aa
	xor  c                                           ; $4390: $a9
	ld   h, a                                        ; $4391: $67
	ld   a, c                                        ; $4392: $79
	sub  a                                           ; $4393: $97
	ld   [hl], a                                     ; $4394: $77
	adc  b                                           ; $4395: $88
	halt                                             ; $4396: $76
	adc  b                                           ; $4397: $88
	ld   a, c                                        ; $4398: $79
	sbc  c                                           ; $4399: $99
	add  a                                           ; $439a: $87
	ld   h, l                                        ; $439b: $65
	ld   a, b                                        ; $439c: $78
	sbc  b                                           ; $439d: $98
	adc  d                                           ; $439e: $8a
	cp   e                                           ; $439f: $bb
	ld   h, d                                        ; $43a0: $62
	ld   c, d                                        ; $43a1: $4a
	or   a                                           ; $43a2: $b7
	ld   h, a                                        ; $43a3: $67
	sbc  c                                           ; $43a4: $99
	ld   h, h                                        ; $43a5: $64

Call_0b4_43a6:
	ld   c, b                                        ; $43a6: $48
	cp   e                                           ; $43a7: $bb
	sub  a                                           ; $43a8: $97
	sbc  d                                           ; $43a9: $9a
	sub  l                                           ; $43aa: $95
	ld   c, c                                        ; $43ab: $49
	db   $db                                         ; $43ac: $db
	add  a                                           ; $43ad: $87
	ld   d, h                                        ; $43ae: $54
	adc  c                                           ; $43af: $89
	ld   h, l                                        ; $43b0: $65
	ld   a, e                                        ; $43b1: $7b
	and  a                                           ; $43b2: $a7
	ld   h, a                                        ; $43b3: $67
	ld   l, c                                        ; $43b4: $69
	sbc  b                                           ; $43b5: $98
	cp   d                                           ; $43b6: $ba
	sub  a                                           ; $43b7: $97
	inc  [hl]                                        ; $43b8: $34
	adc  e                                           ; $43b9: $8b
	and  [hl]                                        ; $43ba: $a6
	ld   l, d                                        ; $43bb: $6a
	sub  a                                           ; $43bc: $97
	ld   [hl], l                                     ; $43bd: $75
	ld   b, a                                        ; $43be: $47
	cp   h                                           ; $43bf: $bc
	sbc  b                                           ; $43c0: $98
	sbc  b                                           ; $43c1: $98
	ld   h, [hl]                                     ; $43c2: $66
	xor  l                                           ; $43c3: $ad
	add  l                                           ; $43c4: $85
	ld   a, d                                        ; $43c5: $7a
	or   a                                           ; $43c6: $b7
	dec  [hl]                                        ; $43c7: $35
	ld   a, c                                        ; $43c8: $79
	or   a                                           ; $43c9: $b7
	ld   b, h                                        ; $43ca: $44
	ld   l, c                                        ; $43cb: $69
	and  a                                           ; $43cc: $a7
	sbc  d                                           ; $43cd: $9a
	bit  6, l                                        ; $43ce: $cb $75
	ld   a, b                                        ; $43d0: $78
	ld   h, a                                        ; $43d1: $67
	xor  b                                           ; $43d2: $a8
	ld   a, b                                        ; $43d3: $78
	add  l                                           ; $43d4: $85
	ld   d, a                                        ; $43d5: $57
	cp   c                                           ; $43d6: $b9
	ld   a, b                                        ; $43d7: $78
	cp   e                                           ; $43d8: $bb
	and  a                                           ; $43d9: $a7
	ld   l, c                                        ; $43da: $69
	ld   a, c                                        ; $43db: $79
	and  a                                           ; $43dc: $a7
	ld   h, l                                        ; $43dd: $65
	ld   a, d                                        ; $43de: $7a
	or   a                                           ; $43df: $b7
	ld   d, l                                        ; $43e0: $55
	adc  d                                           ; $43e1: $8a
	add  a                                           ; $43e2: $87
	ld   [hl], a                                     ; $43e3: $77
	cp   l                                           ; $43e4: $bd
	cp   b                                           ; $43e5: $b8
	ld   h, [hl]                                     ; $43e6: $66
	ld   a, b                                        ; $43e7: $78
	sbc  c                                           ; $43e8: $99
	add  a                                           ; $43e9: $87
	ld   a, c                                        ; $43ea: $79
	ld   [hl], l                                     ; $43eb: $75
	ld   [hl], a                                     ; $43ec: $77
	adc  c                                           ; $43ed: $89
	xor  h                                           ; $43ee: $ac
	and  [hl]                                        ; $43ef: $a6
	sbc  d                                           ; $43f0: $9a
	add  a                                           ; $43f1: $87
	halt                                             ; $43f2: $76
	ld   e, c                                        ; $43f3: $59
	xor  b                                           ; $43f4: $a8
	ld   [hl], a                                     ; $43f5: $77
	ld   h, l                                        ; $43f6: $65
	ld   a, e                                        ; $43f7: $7b
	ld   a, b                                        ; $43f8: $78
	call Call_0b4_68b8                               ; $43f9: $cd $b8 $68
	ld   [hl], h                                     ; $43fc: $74
	ld   l, e                                        ; $43fd: $6b
	rst  ToBoot                                         ; $43fe: $c7
	ld   b, a                                        ; $43ff: $47
	ret                                              ; $4400: $c9


	ld   b, d                                        ; $4401: $42
	ld   e, c                                        ; $4402: $59
	call z, $6a96                                    ; $4403: $cc $96 $6a
	jp   z, Jump_0b4_6b63                            ; $4406: $ca $63 $6b

	ret                                              ; $4409: $c9


	ld   [hl], a                                     ; $440a: $77
	ld   a, c                                        ; $440b: $79
	adc  b                                           ; $440c: $88
	add  [hl]                                        ; $440d: $86
	ld   l, d                                        ; $440e: $6a
	db   $db                                         ; $440f: $db
	ld   a, b                                        ; $4410: $78
	add  a                                           ; $4411: $87
	ld   a, c                                        ; $4412: $79
	and  [hl]                                        ; $4413: $a6
	dec  h                                           ; $4414: $25
	xor  c                                           ; $4415: $a9
	ld   [hl], l                                     ; $4416: $75
	ld   a, d                                        ; $4417: $7a
	xor  d                                           ; $4418: $aa
	cp   b                                           ; $4419: $b8

jr_0b4_441a:
	ld   a, e                                        ; $441a: $7b
	db   $eb                                         ; $441b: $eb
	ld   b, e                                        ; $441c: $43
	adc  d                                           ; $441d: $8a
	ld   h, d                                        ; $441e: $62
	ld   l, h                                        ; $441f: $6c
	and  a                                           ; $4420: $a7
	ld   h, a                                        ; $4421: $67
	xor  e                                           ; $4422: $ab
	call c, Call_0b4_7b97                            ; $4423: $dc $97 $7b
	and  [hl]                                        ; $4426: $a6
	ld   sp, $948e                                   ; $4427: $31 $8e $94
	dec  d                                           ; $442a: $15
	rst  $28                                         ; $442b: $ef
	ei                                               ; $442c: $fb
	jr   c, jr_0b4_441a                              ; $442d: $38 $eb

	sub  h                                           ; $442f: $94
	inc  hl                                          ; $4430: $23
	add  hl, sp                                      ; $4431: $39
	sub  $32                                         ; $4432: $d6 $32
	ld   l, [hl]                                     ; $4434: $6e
	rst  $38                                         ; $4435: $ff
	jp   nz, $ed5c                                   ; $4436: $c2 $5c $ed

	ld   b, c                                        ; $4439: $41
	ld   a, [hl-]                                    ; $443a: $3a
	xor  d                                           ; $443b: $aa
	add  h                                           ; $443c: $84
	ld   d, $ee                                      ; $443d: $16 $ee
	reti                                             ; $443f: $d9


	adc  d                                           ; $4440: $8a
	res  4, l                                        ; $4441: $cb $a5
	ld   de, $d27f                                   ; $4443: $11 $7f $d2
	ld   d, $be                                      ; $4446: $16 $be
	reti                                             ; $4448: $d9


	sbc  h                                           ; $4449: $9c
	db   $db                                         ; $444a: $db
	ld   a, b                                        ; $444b: $78
	add  c                                           ; $444c: $81
	ld   d, $cb                                      ; $444d: $16 $cb
	ld   h, c                                        ; $444f: $61
	dec  hl                                          ; $4450: $2b
	jp   c, $97ad                                    ; $4451: $da $ad $97

	res  3, b                                        ; $4454: $cb $98
	ld   hl, $c759                                   ; $4456: $21 $59 $c7
	dec  d                                           ; $4459: $15
	ld   a, h                                        ; $445a: $7c
	rst  $38                                         ; $445b: $ff
	ret                                              ; $445c: $c9


	sbc  b                                           ; $445d: $98
	ld   l, h                                        ; $445e: $6c
	ld   h, c                                        ; $445f: $61
	add  hl, hl                                      ; $4460: $29
	or   [hl]                                        ; $4461: $b6
	inc  hl                                          ; $4462: $23
	ld   [hl], $ff                                   ; $4463: $36 $ff
	jp   z, $92df                                    ; $4465: $ca $df $92

	ld   bc, $557c                                   ; $4468: $01 $7c $55
	halt                                             ; $446b: $76
	sbc  d                                           ; $446c: $9a
	cp   l                                           ; $446d: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $446e: $cf
	rst  $10                                         ; $446f: $d7
	ld   d, [hl]                                     ; $4470: $56
	ld   d, c                                        ; $4471: $51
	ld   [de], a                                     ; $4472: $12
	adc  c                                           ; $4473: $89
	ld   d, e                                        ; $4474: $53
	ld   a, c                                        ; $4475: $79
	sbc  a                                           ; $4476: $9f
	db   $fc                                         ; $4477: $fc
	ld   b, e                                        ; $4478: $43
	rst  $38                                         ; $4479: $ff
	ld   de, $c717                                   ; $447a: $11 $17 $c7
	ld   b, c                                        ; $447d: $41
	ld   c, l                                        ; $447e: $4d
	rst  JumpTable                                         ; $447f: $df
	rst  $38                                         ; $4480: $ff
	or   l                                           ; $4481: $b5
	ld   c, c                                        ; $4482: $49
	ld   d, e                                        ; $4483: $53
	ld   sp, $fb2e                                   ; $4484: $31 $2e $fb
	ld   de, $ff7f                                   ; $4487: $11 $7f $ff
	and  [hl]                                        ; $448a: $a6
	ld   b, a                                        ; $448b: $47
	cp   b                                           ; $448c: $b8
	ld   de, $c92d                                   ; $448d: $11 $2d $c9
	add  [hl]                                        ; $4490: $86
	ld   l, a                                        ; $4491: $6f
	rst  $38                                         ; $4492: $ff
	ld   [hl], c                                     ; $4493: $71
	rra                                              ; $4494: $1f
	pop  af                                          ; $4495: $f1
	ld   de, $74bc                                   ; $4496: $11 $bc $74
	inc  sp                                          ; $4499: $33
	cp   a                                           ; $449a: $bf
	db   $fc                                         ; $449b: $fc
	call $1793                                       ; $449c: $cd $93 $17
	and  e                                           ; $449f: $a3
	inc  de                                          ; $44a0: $13
	cp   [hl]                                        ; $44a1: $be
	add  d                                           ; $44a2: $82
	ld   e, e                                        ; $44a3: $5b
	rst  $28                                         ; $44a4: $ef
	or   $15                                         ; $44a5: $f6 $15
	ld   h, a                                        ; $44a7: $67
	sub  e                                           ; $44a8: $93
	inc  de                                          ; $44a9: $13
	ld   l, h                                        ; $44aa: $6c
	or   e                                           ; $44ab: $b3
	scf                                              ; $44ac: $37
	cp   a                                           ; $44ad: $bf
	ei                                               ; $44ae: $fb
	ret                                              ; $44af: $c9


	ld   b, a                                        ; $44b0: $47
	sub  d                                           ; $44b1: $92
	inc  d                                           ; $44b2: $14
	ld   [hl], l                                     ; $44b3: $75
	ld   c, c                                        ; $44b4: $49
	and  a                                           ; $44b5: $a7
	cp   a                                           ; $44b6: $bf
	db   $ed                                         ; $44b7: $ed
	bit  6, h                                        ; $44b8: $cb $74
	ld   d, h                                        ; $44ba: $54
	inc  d                                           ; $44bb: $14
	ld   h, d                                        ; $44bc: $62
	ld   d, a                                        ; $44bd: $57
	xor  a                                           ; $44be: $af
	cp   $9b                                         ; $44bf: $fe $9b
	ld   sp, hl                                      ; $44c1: $f9
	ld   b, l                                        ; $44c2: $45
	ld   sp, $9236                                   ; $44c3: $31 $36 $92
	ld   a, [de]                                     ; $44c6: $1a
	rst  JumpTable                                         ; $44c7: $df
	ei                                               ; $44c8: $fb
	ld   a, d                                        ; $44c9: $7a
	rst  $38                                         ; $44ca: $ff
	ld   b, c                                        ; $44cb: $41
	dec  d                                           ; $44cc: $15
	ld   h, d                                        ; $44cd: $62
	inc  bc                                          ; $44ce: $03
	ld   a, e                                        ; $44cf: $7b
	adc  $ff                                         ; $44d0: $ce $ff
	rst  $10                                         ; $44d2: $d7
	adc  d                                           ; $44d3: $8a
	and  a                                           ; $44d4: $a7
	ld   de, $b617                                   ; $44d5: $11 $17 $b6
	inc  de                                          ; $44d8: $13
	cp   a                                           ; $44d9: $bf
	rst  $38                                         ; $44da: $ff
	ret  z                                           ; $44db: $c8

	ld   [hl], $a9                                   ; $44dc: $36 $a9
	ld   hl, $da1c                                   ; $44de: $21 $1c $da
	ld   d, d                                        ; $44e1: $52
	adc  a                                           ; $44e2: $8f
	rst  $38                                         ; $44e3: $ff
	ld   d, d                                        ; $44e4: $52
	call c, $1165                                    ; $44e5: $dc $65 $11
	ld   d, l                                        ; $44e8: $55
	ld   [hl], l                                     ; $44e9: $75
	ld   a, d                                        ; $44ea: $7a
	sbc  a                                           ; $44eb: $9f
	rst  $30                                         ; $44ec: $f7
	cp   h                                           ; $44ed: $bc
	adc  b                                           ; $44ee: $88
	sub  [hl]                                        ; $44ef: $96
	ld   de, $317e                                   ; $44f0: $11 $7e $31
	ld   e, b                                        ; $44f3: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f4: $cf
	ld   sp, hl                                      ; $44f5: $f9
	sbc  l                                           ; $44f6: $9d
	ld   [hl], l                                     ; $44f7: $75
	ld   h, [hl]                                     ; $44f8: $66
	ld   hl, $7d34                                   ; $44f9: $21 $34 $7d
	ld   h, h                                        ; $44fc: $64
	rst  $38                                         ; $44fd: $ff
	rst  $20                                         ; $44fe: $e7
	xor  [hl]                                        ; $44ff: $ae
	add  e                                           ; $4500: $83
	ld   b, [hl]                                     ; $4501: $46
	ld   b, h                                        ; $4502: $44
	ld   d, h                                        ; $4503: $54
	ld   [hl+], a                                    ; $4504: $22
	xor  a                                           ; $4505: $af
	ei                                               ; $4506: $fb

jr_0b4_4507:
	ld   l, d                                        ; $4507: $6a
	db   $fd                                         ; $4508: $fd
	ld   d, c                                        ; $4509: $51
	ld   [de], a                                     ; $450a: $12
	ld   b, [hl]                                     ; $450b: $46
	ld   [hl], l                                     ; $450c: $75
	inc  de                                          ; $450d: $13
	rst  $38                                         ; $450e: $ff
	rst  $38                                         ; $450f: $ff
	ld   b, a                                        ; $4510: $47
	ld   sp, hl                                      ; $4511: $f9
	ld   hl, $2721                                   ; $4512: $21 $21 $27
	add  e                                           ; $4515: $83
	jr   jr_0b4_4507                                 ; $4516: $18 $ef

	cp   $bf                                         ; $4518: $fe $bf
	add  c                                           ; $451a: $81
	ld   b, h                                        ; $451b: $44
	inc  sp                                          ; $451c: $33
	inc  de                                          ; $451d: $13
	ld   l, c                                        ; $451e: $69
	set  1, a                                        ; $451f: $cb $cf
	db   $ec                                         ; $4521: $ec
	db   $ec                                         ; $4522: $ec
	ld   d, c                                        ; $4523: $51
	inc  sp                                          ; $4524: $33
	ld   [de], a                                     ; $4525: $12
	ld   [hl], d                                     ; $4526: $72
	daa                                              ; $4527: $27
	rst  $38                                         ; $4528: $ff
	ld   sp, hl                                      ; $4529: $f9
	xor  l                                           ; $452a: $ad
	db   $fc                                         ; $452b: $fc
	ld   de, $1853                                   ; $452c: $11 $53 $18
	ld   d, d                                        ; $452f: $52
	adc  d                                           ; $4530: $8a
	rst  $38                                         ; $4531: $ff
	db   $ed                                         ; $4532: $ed
	res  4, c                                        ; $4533: $cb $a1
	ld   d, $11                                      ; $4535: $16 $11
	ld   h, [hl]                                     ; $4537: $66
	ld   d, l                                        ; $4538: $55
	adc  [hl]                                        ; $4539: $8e
	rst  $38                                         ; $453a: $ff
	ld   [$68bb], a                                  ; $453b: $ea $bb $68
	ld   [hl], c                                     ; $453e: $71
	inc  d                                           ; $453f: $14
	xor  c                                           ; $4540: $a9
	inc  de                                          ; $4541: $13
	rst  $38                                         ; $4542: $ff
	ei                                               ; $4543: $fb
	xor  a                                           ; $4544: $af
	pop  bc                                          ; $4545: $c1
	rla                                              ; $4546: $17
	and  e                                           ; $4547: $a3
	ld   de, $7976                                   ; $4548: $11 $76 $79
	rst  $28                                         ; $454b: $ef
	ld   a, [$b1cf]                                  ; $454c: $fa $cf $b1
	ld   d, $a5                                      ; $454f: $16 $a5
	ld   b, d                                        ; $4551: $42
	inc  d                                           ; $4552: $14
	rst  JumpTable                                         ; $4553: $df
	db   $fc                                         ; $4554: $fc
	rst  $38                                         ; $4555: $ff
	and  h                                           ; $4556: $a4
	ld   b, [hl]                                     ; $4557: $46
	ld   h, c                                        ; $4558: $61

jr_0b4_4559:
	ld   [de], a                                     ; $4559: $12
	ld   h, l                                        ; $455a: $65
	jr   c, jr_0b4_4559                              ; $455b: $38 $fc

	rst  JumpTable                                         ; $455d: $df
	db   $fc                                         ; $455e: $fc
	add  d                                           ; $455f: $82
	dec  h                                           ; $4560: $25
	ld   sp, $7126                                   ; $4561: $31 $26 $71
	ld   e, a                                        ; $4564: $5f
	rst  $38                                         ; $4565: $ff
	xor  h                                           ; $4566: $ac
	ld   a, [$6224]                                  ; $4567: $fa $24 $62
	ld   de, $634b                                   ; $456a: $11 $4b $63
	rst  JumpTable                                         ; $456d: $df
	rst  $38                                         ; $456e: $ff
	call c, Call_0b4_7197                            ; $456f: $dc $97 $71
	inc  de                                          ; $4572: $13
	sub  c                                           ; $4573: $91
	inc  d                                           ; $4574: $14
	sbc  a                                           ; $4575: $9f
	rst  $38                                         ; $4576: $ff
	db   $ec                                         ; $4577: $ec
	cp   h                                           ; $4578: $bc
	ld   d, c                                        ; $4579: $51
	inc  h                                           ; $457a: $24
	ld   c, c                                        ; $457b: $49
	ld   d, c                                        ; $457c: $51
	dec  de                                          ; $457d: $1b
	xor  c                                           ; $457e: $a9
	rst  $38                                         ; $457f: $ff
	db   $fd                                         ; $4580: $fd
	ld   [hl], l                                     ; $4581: $75
	ld   b, e                                        ; $4582: $43
	inc  sp                                          ; $4583: $33
	inc  h                                           ; $4584: $24
	ld   d, h                                        ; $4585: $54
	ld   h, [hl]                                     ; $4586: $66
	adc  [hl]                                        ; $4587: $8e
	rst  $38                                         ; $4588: $ff
	ld   hl, sp+$67                                  ; $4589: $f8 $67
	ld   h, d                                        ; $458b: $62
	ld   de, $6a13                                   ; $458c: $11 $13 $6a
	sbc  b                                           ; $458f: $98
	call z, $9fff                                    ; $4590: $cc $ff $9f
	db   $d3                                         ; $4593: $d3
	ld   de, $1274                                   ; $4594: $11 $74 $12
	jr   @+$01                                       ; $4597: $18 $ff

	cp   $79                                         ; $4599: $fe $79
	ld   sp, hl                                      ; $459b: $f9
	ld   de, $711a                                   ; $459c: $11 $1a $71
	jr   @-$12                                       ; $459f: $18 $ec

	sbc  [hl]                                        ; $45a1: $9e
	rst  $38                                         ; $45a2: $ff
	xor  d                                           ; $45a3: $aa
	ld   h, h                                        ; $45a4: $64
	ld   d, d                                        ; $45a5: $52
	inc  [hl]                                        ; $45a6: $34
	ld   [de], a                                     ; $45a7: $12
	dec  [hl]                                        ; $45a8: $35
	cp   h                                           ; $45a9: $bc
	rst  $28                                         ; $45aa: $ef
	ei                                               ; $45ab: $fb
	xor  b                                           ; $45ac: $a8
	ld   [de], a                                     ; $45ad: $12
	ld   hl, $1543                                   ; $45ae: $21 $43 $15
	cp   h                                           ; $45b1: $bc
	xor  l                                           ; $45b2: $ad
	rst  $38                                         ; $45b3: $ff
	ld   a, [$21a6]                                  ; $45b4: $fa $a6 $21
	inc  hl                                          ; $45b7: $23
	ld   [de], a                                     ; $45b8: $12
	add  l                                           ; $45b9: $85
	add  hl, de                                      ; $45ba: $19
	rst  $38                                         ; $45bb: $ff
	ldh  [c], a                                      ; $45bc: $e2
	cp   a                                           ; $45bd: $bf
	or   a                                           ; $45be: $b7
	ld   de, $1873                                   ; $45bf: $11 $73 $18
	halt                                             ; $45c2: $76
	sbc  a                                           ; $45c3: $9f
	rst  $38                                         ; $45c4: $ff
	sbc  d                                           ; $45c5: $9a
	cp   d                                           ; $45c6: $ba
	ld   d, c                                        ; $45c7: $51
	ld   de, $9614                                   ; $45c8: $11 $14 $96
	ld   a, d                                        ; $45cb: $7a
	rst  $28                                         ; $45cc: $ef
	rst  $38                                         ; $45cd: $ff
	or   d                                           ; $45ce: $b2
	adc  c                                           ; $45cf: $89
	ld   de, $1541                                   ; $45d0: $11 $41 $15
	ret                                              ; $45d3: $c9


	xor  a                                           ; $45d4: $af
	rst  $38                                         ; $45d5: $ff
	db   $ec                                         ; $45d6: $ec
	rst  $30                                         ; $45d7: $f7
	ld   de, $3136                                   ; $45d8: $11 $36 $31
	ld   d, h                                        ; $45db: $54
	adc  h                                           ; $45dc: $8c
	rst  $38                                         ; $45dd: $ff
	sbc  b                                           ; $45de: $98
	db   $dd                                         ; $45df: $dd
	and  d                                           ; $45e0: $a2
	inc  d                                           ; $45e1: $14
	ld   de, $9f23                                   ; $45e2: $11 $23 $9f
	rst  $38                                         ; $45e5: $ff
	db   $fd                                         ; $45e6: $fd
	db   $fd                                         ; $45e7: $fd
	ld   [hl+], a                                    ; $45e8: $22
	ld   d, l                                        ; $45e9: $55
	ld   e, b                                        ; $45ea: $58
	ld   sp, $ab17                                   ; $45eb: $31 $17 $ab
	rst  $38                                         ; $45ee: $ff
	ret  c                                           ; $45ef: $d8

	and  a                                           ; $45f0: $a7
	ld   [hl], l                                     ; $45f1: $75
	ld   de, $9259                                   ; $45f2: $11 $59 $92
	rla                                              ; $45f5: $17
	rst  $38                                         ; $45f6: $ff
	ei                                               ; $45f7: $fb
	adc  a                                           ; $45f8: $8f
	jp   nc, $1112                                   ; $45f9: $d2 $12 $11

	ld   l, l                                        ; $45fc: $6d
	ld   hl, $df9a                                   ; $45fd: $21 $9a $df
	rst  $30                                         ; $4600: $f7
	ld   [hl], e                                     ; $4601: $73
	sbc  a                                           ; $4602: $9f
	ld   [hl], c                                     ; $4603: $71
	inc  d                                           ; $4604: $14
	sbc  h                                           ; $4605: $9c
	rst  ToBoot                                         ; $4606: $c7
	xor  a                                           ; $4607: $af
	rst  $38                                         ; $4608: $ff
	ld   sp, hl                                      ; $4609: $f9
	ld   de, $4138                                   ; $460a: $11 $38 $41
	ld   b, l                                        ; $460d: $45
	scf                                              ; $460e: $37
	cp   a                                           ; $460f: $bf
	ld   hl, sp+$7f                                  ; $4610: $f8 $7f
	ld   hl, sp+$43                                  ; $4612: $f8 $43
	ld   de, $5347                                   ; $4614: $11 $47 $53
	adc  l                                           ; $4617: $8d
	rst  $38                                         ; $4618: $ff
	adc  b                                           ; $4619: $88
	db   $db                                         ; $461a: $db
	add  l                                           ; $461b: $85
	ld   [de], a                                     ; $461c: $12
	ld   h, h                                        ; $461d: $64
	inc  sp                                          ; $461e: $33
	ld   e, c                                        ; $461f: $59
	rst  $38                                         ; $4620: $ff
	jp   z, $83cd                                    ; $4621: $ca $cd $83

	dec  h                                           ; $4624: $25
	ld   [hl], l                                     ; $4625: $75
	ld   hl, $8b48                                   ; $4626: $21 $48 $8b
	xor  $ff                                         ; $4629: $ee $ff
	and  l                                           ; $462b: $a5
	ld   l, d                                        ; $462c: $6a
	ld   h, c                                        ; $462d: $61
	dec  h                                           ; $462e: $25
	add  [hl]                                        ; $462f: $86
	ld   b, a                                        ; $4630: $47
	rst  $28                                         ; $4631: $ef
	ei                                               ; $4632: $fb
	ld   l, b                                        ; $4633: $68
	or   a                                           ; $4634: $b7
	ld   hl, $745c                                   ; $4635: $21 $5c $74
	ld   de, $9fba                                   ; $4638: $11 $ba $9f
	cp   $95                                         ; $463b: $fe $95
	and  [hl]                                        ; $463d: $a6
	ld   [de], a                                     ; $463e: $12
	ld   de, $98bf                                   ; $463f: $11 $bf $98
	adc  c                                           ; $4642: $89
	rst  $38                                         ; $4643: $ff
	jp   nc, Jump_0b4_7c15                           ; $4644: $d2 $15 $7c

	ld   d, c                                        ; $4647: $51
	ld   h, h                                        ; $4648: $64
	ld   c, d                                        ; $4649: $4a
	sbc  [hl]                                        ; $464a: $9e
	ld   a, [$b65a]                                  ; $464b: $fa $5a $b6
	ld   d, l                                        ; $464e: $55
	ld   de, $ba7a                                   ; $464f: $11 $7a $ba
	cp   [hl]                                        ; $4652: $be
	rst  ToBoot                                         ; $4653: $c7
	cp   c                                           ; $4654: $b9
	daa                                              ; $4655: $27
	sub  c                                           ; $4656: $91
	add  hl, hl                                      ; $4657: $29
	ld   [hl], d                                     ; $4658: $72
	ld   l, h                                        ; $4659: $6c
	cp   h                                           ; $465a: $bc
	db   $db                                         ; $465b: $db
	xor  a                                           ; $465c: $af
	sub  d                                           ; $465d: $92
	ld   [hl+], a                                    ; $465e: $22
	ld   d, a                                        ; $465f: $57
	ld   d, e                                        ; $4660: $53
	ld   d, $cf                                      ; $4661: $16 $cf
	ld   a, [$8d89]                                  ; $4663: $fa $89 $8d
	pop  de                                          ; $4666: $d1
	inc  hl                                          ; $4667: $23
	inc  [hl]                                        ; $4668: $34
	ld   b, a                                        ; $4669: $47
	ld   h, l                                        ; $466a: $65
	cp   a                                           ; $466b: $bf
	rst  $38                                         ; $466c: $ff
	or   a                                           ; $466d: $b7
	ld   d, h                                        ; $466e: $54
	sub  [hl]                                        ; $466f: $96
	inc  d                                           ; $4670: $14
	ld   d, h                                        ; $4671: $54
	adc  b                                           ; $4672: $88

Jump_0b4_4673:
	ld   l, [hl]                                     ; $4673: $6e

jr_0b4_4674:
	cp   $a7                                         ; $4674: $fe $a7
	adc  l                                           ; $4676: $8d
	add  c                                           ; $4677: $81
	dec  [hl]                                        ; $4678: $35
	ld   h, [hl]                                     ; $4679: $66
	ld   b, e                                        ; $467a: $43
	ld   l, d                                        ; $467b: $6a
	rst  $38                                         ; $467c: $ff
	ret  z                                           ; $467d: $c8

	adc  a                                           ; $467e: $8f
	and  c                                           ; $467f: $a1
	dec  d                                           ; $4680: $15
	ld   h, [hl]                                     ; $4681: $66
	inc  sp                                          ; $4682: $33
	adc  e                                           ; $4683: $8b
	db   $ec                                         ; $4684: $ec
	adc  e                                           ; $4685: $8b
	db   $ed                                         ; $4686: $ed
	ld   [hl], c                                     ; $4687: $71
	ld   a, [hl-]                                    ; $4688: $3a
	add  d                                           ; $4689: $82
	ld   [de], a                                     ; $468a: $12
	xor  e                                           ; $468b: $ab
	rst  JumpTable                                         ; $468c: $df
	cp   h                                           ; $468d: $bc
	ld   a, [$1199]                                  ; $468e: $fa $99 $11
	ld   h, [hl]                                     ; $4691: $66
	ld   d, a                                        ; $4692: $57
	inc  [hl]                                        ; $4693: $34
	sbc  a                                           ; $4694: $9f
	cp   $db                                         ; $4695: $fe $db
	ld   h, a                                        ; $4697: $67
	ld   [hl], h                                     ; $4698: $74
	ld   [hl-], a                                    ; $4699: $32
	inc  de                                          ; $469a: $13
	ld   l, c                                        ; $469b: $69
	or   a                                           ; $469c: $b7
	adc  $8d                                         ; $469d: $ce $8d
	rst  $30                                         ; $469f: $f7
	ld   b, h                                        ; $46a0: $44
	add  hl, sp                                      ; $46a1: $39
	ld   [hl], d                                     ; $46a2: $72
	ld   de, $afbc                                   ; $46a3: $11 $bc $af
	ld   sp, hl                                      ; $46a6: $f9
	ld   [$1477], a                                  ; $46a7: $ea $77 $14
	add  d                                           ; $46aa: $82
	ld   a, [hl-]                                    ; $46ab: $3a
	ld   h, [hl]                                     ; $46ac: $66
	sbc  d                                           ; $46ad: $9a
	rst  $38                                         ; $46ae: $ff
	adc  e                                           ; $46af: $8b
	cp   d                                           ; $46b0: $ba
	and  e                                           ; $46b1: $a3
	inc  de                                          ; $46b2: $13
	halt                                             ; $46b3: $76
	ld   h, d                                        ; $46b4: $62
	ld   c, d                                        ; $46b5: $4a
	rst  JumpTable                                         ; $46b6: $df
	or   $ad                                         ; $46b7: $f6 $ad
	add  $21                                         ; $46b9: $c6 $21
	halt                                             ; $46bb: $76
	inc  de                                          ; $46bc: $13
	xor  c                                           ; $46bd: $a9
	rst  $38                                         ; $46be: $ff
	adc  d                                           ; $46bf: $8a
	rst  $38                                         ; $46c0: $ff
	or   c                                           ; $46c1: $b1
	add  hl, de                                      ; $46c2: $19
	ld   h, l                                        ; $46c3: $65
	add  c                                           ; $46c4: $81
	jr   jr_0b4_4674                                 ; $46c5: $18 $ad

	xor  h                                           ; $46c7: $ac
	ld   a, [$64cc]                                  ; $46c8: $fa $cc $64
	ld   b, c                                        ; $46cb: $41
	ld   d, $a7                                      ; $46cc: $16 $a7
	ld   d, a                                        ; $46ce: $57
	rst  $38                                         ; $46cf: $ff
	ld   sp, hl                                      ; $46d0: $f9
	adc  d                                           ; $46d1: $8a
	xor  d                                           ; $46d2: $aa
	add  c                                           ; $46d3: $81
	dec  de                                          ; $46d4: $1b
	ld   h, e                                        ; $46d5: $63
	ld   de, $ffdf                                   ; $46d6: $11 $df $ff
	sbc  d                                           ; $46d9: $9a
	ei                                               ; $46da: $fb
	ld   b, d                                        ; $46db: $42
	ld   [de], a                                     ; $46dc: $12
	ld   [hl], e                                     ; $46dd: $73
	dec  [hl]                                        ; $46de: $35
	xor  a                                           ; $46df: $af
	ld   a, [$dfab]                                  ; $46e0: $fa $ab $df

jr_0b4_46e3:
	sub  h                                           ; $46e3: $94
	ld   [hl-], a                                    ; $46e4: $32
	ld   hl, $8914                                   ; $46e5: $21 $14 $89
	db   $dd                                         ; $46e8: $dd
	rst  $38                                         ; $46e9: $ff
	ld   a, [$a933]                                  ; $46ea: $fa $33 $a9
	ld   [hl], c                                     ; $46ed: $71
	dec  d                                           ; $46ee: $15
	add  a                                           ; $46ef: $87
	ld   h, a                                        ; $46f0: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46f1: $cf
	cp   $cc                                         ; $46f2: $fe $cc
	sub  d                                           ; $46f4: $92
	dec  h                                           ; $46f5: $25
	inc  sp                                          ; $46f6: $33
	ld   h, h                                        ; $46f7: $64
	add  hl, sp                                      ; $46f8: $39
	xor  $bb                                         ; $46f9: $ee $bb
	rst  $28                                         ; $46fb: $ef
	cp   b                                           ; $46fc: $b8
	ld   [hl], c                                     ; $46fd: $71
	inc  d                                           ; $46fe: $14
	ld   hl, $7c57                                   ; $46ff: $21 $57 $7c
	db   $fd                                         ; $4702: $fd
	db   $ed                                         ; $4703: $ed
	and  [hl]                                        ; $4704: $a6
	ld   d, a                                        ; $4705: $57
	add  [hl]                                        ; $4706: $86
	inc  sp                                          ; $4707: $33
	ld   [hl-], a                                    ; $4708: $32
	scf                                              ; $4709: $37
	xor  h                                           ; $470a: $ac
	rst  $38                                         ; $470b: $ff
	ei                                               ; $470c: $fb
	xor  e                                           ; $470d: $ab
	inc  hl                                          ; $470e: $23
	ld   de, $4189                                   ; $470f: $11 $89 $41
	ld   a, [hl-]                                    ; $4712: $3a
	rst  $38                                         ; $4713: $ff
	db   $fc                                         ; $4714: $fc
	adc  [hl]                                        ; $4715: $8e
	ei                                               ; $4716: $fb
	ld   b, c                                        ; $4717: $41
	ld   [de], a                                     ; $4718: $12
	ld   d, a                                        ; $4719: $57
	ld   [hl], e                                     ; $471a: $73
	ld   e, e                                        ; $471b: $5b
	rst  $38                                         ; $471c: $ff
	db   $eb                                         ; $471d: $eb
	sbc  l                                           ; $471e: $9d
	or   l                                           ; $471f: $b5
	ld   de, $1421                                   ; $4720: $11 $21 $14
	sbc  e                                           ; $4723: $9b
	db   $dd                                         ; $4724: $dd
	rst  $28                                         ; $4725: $ef
	db   $ec                                         ; $4726: $ec
	sub  e                                           ; $4727: $93
	ld   h, [hl]                                     ; $4728: $66
	ld   b, l                                        ; $4729: $45
	ld   h, c                                        ; $472a: $61
	ld   [de], a                                     ; $472b: $12
	ld   l, c                                        ; $472c: $69
	rst  JumpTable                                         ; $472d: $df
	sbc  $ff                                         ; $472e: $de $ff
	push af                                          ; $4730: $f5
	ld   de, $8137                                   ; $4731: $11 $37 $81
	jr   jr_0b4_46e3                                 ; $4734: $18 $ad

	db   $fc                                         ; $4736: $fc
	rst  JumpTable                                         ; $4737: $df
	db   $db                                         ; $4738: $db
	or   c                                           ; $4739: $b1
	ld   h, $11                                      ; $473a: $26 $11
	ld   [hl+], a                                    ; $473c: $22
	ld   e, b                                        ; $473d: $58
	ld   c, e                                        ; $473e: $4b
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	inc  sp                                          ; $4741: $33
	and  a                                           ; $4742: $a7
	and  h                                           ; $4743: $a4
	inc  d                                           ; $4744: $14
	ld   h, e                                        ; $4745: $63
	ld   [hl], l                                     ; $4746: $75
	ld   a, a                                        ; $4747: $7f
	rst  $28                                         ; $4748: $ef
	ld   a, [$42ac]                                  ; $4749: $fa $ac $42
	ld   sp, $1535                                   ; $474c: $31 $35 $15
	sbc  b                                           ; $474f: $98
	cp   h                                           ; $4750: $bc
	rst  $38                                         ; $4751: $ff
	db   $dd                                         ; $4752: $dd
	ld   [hl], c                                     ; $4753: $71
	ld   l, [hl]                                     ; $4754: $6e
	ld   d, c                                        ; $4755: $51
	ld   hl, $5b5a                                   ; $4756: $21 $5a $5b
	db   $fd                                         ; $4759: $fd
	cp   $aa                                         ; $475a: $fe $aa
	sub  [hl]                                        ; $475c: $96
	ld   sp, $7117                                   ; $475d: $31 $17 $71
	dec  d                                           ; $4760: $15
	cp   a                                           ; $4761: $bf
	rst  $38                                         ; $4762: $ff
	ld   [$a6be], a                                  ; $4763: $ea $be $a6
	ld   hl, $5227                                   ; $4766: $21 $27 $52
	ld   d, l                                        ; $4769: $55
	xor  a                                           ; $476a: $af
	ei                                               ; $476b: $fb
	db   $dd                                         ; $476c: $dd
	cp   [hl]                                        ; $476d: $be
	sub  c                                           ; $476e: $91
	inc  d                                           ; $476f: $14
	ld   [hl+], a                                    ; $4770: $22
	ld   hl, $8e9b                                   ; $4771: $21 $9b $8e
	rst  $38                                         ; $4774: $ff
	ld   a, [$a44a]                                  ; $4775: $fa $4a $a4
	ld   d, e                                        ; $4778: $53
	jr   jr_0b4_47ed                                 ; $4779: $18 $72

	inc  [hl]                                        ; $477b: $34
	xor  a                                           ; $477c: $af
	rst  $38                                         ; $477d: $ff
	cp   c                                           ; $477e: $b9
	xor  $51                                         ; $477f: $ee $51
	inc  de                                          ; $4781: $13
	sub  a                                           ; $4782: $97
	ld   [hl-], a                                    ; $4783: $32
	ld   b, a                                        ; $4784: $47
	rst  JumpTable                                         ; $4785: $df
	db   $dd                                         ; $4786: $dd
	xor  c                                           ; $4787: $a9
	reti                                             ; $4788: $d9


	scf                                              ; $4789: $37
	ld   d, c                                        ; $478a: $51
	inc  sp                                          ; $478b: $33
	ld   l, b                                        ; $478c: $68
	ld   h, [hl]                                     ; $478d: $66
	cp   a                                           ; $478e: $bf
	rst  $38                                         ; $478f: $ff
	cp   h                                           ; $4790: $bc
	and  [hl]                                        ; $4791: $a6
	inc  sp                                          ; $4792: $33
	ld   sp, $7627                                   ; $4793: $31 $27 $76
	xor  e                                           ; $4796: $ab
	cp   e                                           ; $4797: $bb
	call $c7dd                                       ; $4798: $cd $dd $c7
	ld   h, [hl]                                     ; $479b: $66
	ld   de, $5632                                   ; $479c: $11 $32 $56
	ld   l, e                                        ; $479f: $6b
	rst  $38                                         ; $47a0: $ff
	db   $fc                                         ; $47a1: $fc
	adc  c                                           ; $47a2: $89
	xor  d                                           ; $47a3: $aa
	sub  c                                           ; $47a4: $91
	ld   [de], a                                     ; $47a5: $12
	ld   b, a                                        ; $47a6: $47
	ld   d, d                                        ; $47a7: $52
	ld   l, h                                        ; $47a8: $6c
	rst  $38                                         ; $47a9: $ff
	ld   a, [$a89d]                                  ; $47aa: $fa $9d $a8
	ld   hl, $3356                                   ; $47ad: $21 $56 $33
	ld   [hl], $ca                                   ; $47b0: $36 $ca
	cp   a                                           ; $47b2: $bf
	xor  $db                                         ; $47b3: $ee $db
	sub  a                                           ; $47b5: $97
	inc  h                                           ; $47b6: $24
	ld   d, c                                        ; $47b7: $51
	dec  h                                           ; $47b8: $25
	ld   a, b                                        ; $47b9: $78
	add  a                                           ; $47ba: $87
	cp   a                                           ; $47bb: $bf
	cp   $6a                                         ; $47bc: $fe $6a
	bit  6, d                                        ; $47be: $cb $72
	dec  d                                           ; $47c0: $15
	ld   [hl], l                                     ; $47c1: $75
	ld   b, e                                        ; $47c2: $43
	ld   d, a                                        ; $47c3: $57
	rst  JumpTable                                         ; $47c4: $df
	cp   $da                                         ; $47c5: $fe $da
	xor  b                                           ; $47c7: $a8
	ld   d, [hl]                                     ; $47c8: $56
	ld   d, d                                        ; $47c9: $52
	ld   [hl], $68                                   ; $47ca: $36 $68
	ld   [hl], e                                     ; $47cc: $73
	adc  [hl]                                        ; $47cd: $8e
	rst  $28                                         ; $47ce: $ef
	jp   hl                                          ; $47cf: $e9


	xor  e                                           ; $47d0: $ab
	inc  sp                                          ; $47d1: $33
	ld   d, c                                        ; $47d2: $51
	ld   e, b                                        ; $47d3: $58
	dec  [hl]                                        ; $47d4: $35
	halt                                             ; $47d5: $76
	xor  a                                           ; $47d6: $af
	db   $db                                         ; $47d7: $db
	call c, Call_0b4_42ca                            ; $47d8: $dc $ca $42
	ld   d, l                                        ; $47db: $55
	ld   h, l                                        ; $47dc: $65
	dec  d                                           ; $47dd: $15
	sbc  d                                           ; $47de: $9a
	db   $db                                         ; $47df: $db
	sbc  h                                           ; $47e0: $9c
	rst  JumpTable                                         ; $47e1: $df
	db   $d3                                         ; $47e2: $d3
	inc  hl                                          ; $47e3: $23
	ld   e, b                                        ; $47e4: $58
	ld   b, c                                        ; $47e5: $41
	ld   d, $9d                                      ; $47e6: $16 $9d
	db   $db                                         ; $47e8: $db
	cp   [hl]                                        ; $47e9: $be
	db   $ec                                         ; $47ea: $ec
	and  [hl]                                        ; $47eb: $a6
	ld   b, h                                        ; $47ec: $44

jr_0b4_47ed:
	dec  [hl]                                        ; $47ed: $35
	ld   h, h                                        ; $47ee: $64
	inc  [hl]                                        ; $47ef: $34
	ld   l, e                                        ; $47f0: $6b
	ei                                               ; $47f1: $fb
	xor  $ae                                         ; $47f2: $ee $ae
	or   e                                           ; $47f4: $b3
	ld   d, h                                        ; $47f5: $54
	inc  b                                           ; $47f6: $04
	ld   [hl+], a                                    ; $47f7: $22
	ld   d, [hl]                                     ; $47f8: $56
	adc  d                                           ; $47f9: $8a
	db   $dd                                         ; $47fa: $dd
	xor  $ab                                         ; $47fb: $ee $ab
	or   [hl]                                        ; $47fd: $b6
	ld   b, h                                        ; $47fe: $44
	ld   [hl-], a                                    ; $47ff: $32
	ld   b, e                                        ; $4800: $43
	ld   h, $58                                      ; $4801: $26 $58
	rst  $28                                         ; $4803: $ef
	cp   $b9                                         ; $4804: $fe $b9
	add  l                                           ; $4806: $85
	ld   a, b                                        ; $4807: $78
	ld   b, c                                        ; $4808: $41
	ld   [de], a                                     ; $4809: $12
	ld   h, [hl]                                     ; $480a: $66
	ld   b, [hl]                                     ; $480b: $46
	xor  [hl]                                        ; $480c: $ae
	rst  $38                                         ; $480d: $ff
	jp   c, $6398                                    ; $480e: $da $98 $63

	ld   de, $5346                                   ; $4811: $11 $46 $53
	ld   c, b                                        ; $4814: $48
	call $becd                                       ; $4815: $cd $cd $be
	bit  6, e                                        ; $4818: $cb $73
	ld   b, l                                        ; $481a: $45
	ld   hl, $7657                                   ; $481b: $21 $57 $76
	ld   a, h                                        ; $481e: $7c
	rst  $38                                         ; $481f: $ff
	db   $db                                         ; $4820: $db
	xor  d                                           ; $4821: $aa
	or   a                                           ; $4822: $b7
	ld   sp, $5514                                   ; $4823: $31 $14 $55
	ld   b, e                                        ; $4826: $43
	ld   a, h                                        ; $4827: $7c
	db   $ed                                         ; $4828: $ed
	db   $fd                                         ; $4829: $fd
	cp   d                                           ; $482a: $ba
	sbc  c                                           ; $482b: $99
	ld   [hl], d                                     ; $482c: $72
	ld   de, $5416                                   ; $482d: $11 $16 $54
	ld   a, b                                        ; $4830: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4831: $cf
	db   $fd                                         ; $4832: $fd
	jp   z, $23b8                                    ; $4833: $ca $b8 $23

	ld   d, h                                        ; $4836: $54
	ld   b, e                                        ; $4837: $43
	ld   b, [hl]                                     ; $4838: $46
	ld   l, b                                        ; $4839: $68
	xor  c                                           ; $483a: $a9
	rst  $38                                         ; $483b: $ff
	db   $eb                                         ; $483c: $eb
	add  [hl]                                        ; $483d: $86
	sbc  d                                           ; $483e: $9a
	ld   sp, $7911                                   ; $483f: $31 $11 $79
	ld   h, l                                        ; $4842: $65
	ld   a, d                                        ; $4843: $7a
	rst  $38                                         ; $4844: $ff
	call z, $97b9                                    ; $4845: $cc $b9 $97
	ld   d, d                                        ; $4848: $52
	ld   de, $8568                                   ; $4849: $11 $68 $85
	ld   c, d                                        ; $484c: $4a
	rst  $38                                         ; $484d: $ff
	ld   a, [$b96a]                                  ; $484e: $fa $6a $b9
	add  d                                           ; $4851: $82
	inc  d                                           ; $4852: $14
	ld   d, [hl]                                     ; $4853: $56
	ld   h, h                                        ; $4854: $64
	ld   e, b                                        ; $4855: $58
	cp   [hl]                                        ; $4856: $be
	db   $fd                                         ; $4857: $fd
	cp   e                                           ; $4858: $bb
	cp   c                                           ; $4859: $b9
	ld   [hl], h                                     ; $485a: $74
	ld   b, l                                        ; $485b: $45
	ld   d, e                                        ; $485c: $53
	scf                                              ; $485d: $37
	ld   [hl], a                                     ; $485e: $77
	ld   [hl], a                                     ; $485f: $77
	cp   [hl]                                        ; $4860: $be
	db   $dd                                         ; $4861: $dd
	or   a                                           ; $4862: $b7
	adc  c                                           ; $4863: $89
	sub  a                                           ; $4864: $97
	ld   de, $8748                                   ; $4865: $11 $48 $87
	inc  [hl]                                        ; $4868: $34
	xor  [hl]                                        ; $4869: $ae
	rst  $38                                         ; $486a: $ff
	xor  b                                           ; $486b: $a8
	ld   l, d                                        ; $486c: $6a
	ret  c                                           ; $486d: $d8

	ld   b, e                                        ; $486e: $43
	dec  [hl]                                        ; $486f: $35
	ld   [hl], a                                     ; $4870: $77
	ld   h, l                                        ; $4871: $65
	ld   e, b                                        ; $4872: $58
	xor  a                                           ; $4873: $af
	db   $fd                                         ; $4874: $fd
	cp   d                                           ; $4875: $ba
	ld   [hl], a                                     ; $4876: $77
	ld   h, e                                        ; $4877: $63
	inc  hl                                          ; $4878: $23
	dec  [hl]                                        ; $4879: $35
	add  a                                           ; $487a: $87
	ld   h, a                                        ; $487b: $67
	sbc  e                                           ; $487c: $9b
	xor  $db                                         ; $487d: $ee $db
	sbc  e                                           ; $487f: $9b
	ld   h, h                                        ; $4880: $64
	ld   b, d                                        ; $4881: $42
	ld   b, a                                        ; $4882: $47
	ld   h, [hl]                                     ; $4883: $66
	ld   a, b                                        ; $4884: $78
	xor  c                                           ; $4885: $a9
	sbc  h                                           ; $4886: $9c
	call c, $aaca                                    ; $4887: $dc $ca $aa
	ld   h, h                                        ; $488a: $64
	ld   hl, $8658                                   ; $488b: $21 $58 $86
	ld   b, [hl]                                     ; $488e: $46
	cp   l                                           ; $488f: $bd
	call c, $a9cb                                    ; $4890: $dc $cb $a9
	add  a                                           ; $4893: $87
	ld   d, e                                        ; $4894: $53
	inc  sp                                          ; $4895: $33
	ld   l, c                                        ; $4896: $69
	add  a                                           ; $4897: $87
	ld   h, [hl]                                     ; $4898: $66
	cp   a                                           ; $4899: $bf
	db   $db                                         ; $489a: $db
	adc  b                                           ; $489b: $88
	cp   e                                           ; $489c: $bb
	sub  l                                           ; $489d: $95
	ld   [de], a                                     ; $489e: $12
	halt                                             ; $489f: $76
	ld   h, [hl]                                     ; $48a0: $66
	scf                                              ; $48a1: $37
	xor  h                                           ; $48a2: $ac
	call $caaa                                       ; $48a3: $cd $aa $ca
	ret                                              ; $48a6: $c9


	inc  sp                                          ; $48a7: $33
	ld   d, h                                        ; $48a8: $54
	ld   h, [hl]                                     ; $48a9: $66
	ld   b, [hl]                                     ; $48aa: $46
	adc  d                                           ; $48ab: $8a
	res  7, l                                        ; $48ac: $cb $bd
	call z, $98a8                                    ; $48ae: $cc $a8 $98
	inc  hl                                          ; $48b1: $23
	inc  sp                                          ; $48b2: $33
	ld   h, a                                        ; $48b3: $67
	ld   h, [hl]                                     ; $48b4: $66
	ld   a, c                                        ; $48b5: $79
	db   $dd                                         ; $48b6: $dd
	call z, $d8ab                                    ; $48b7: $cc $ab $d8
	ld   h, h                                        ; $48ba: $64
	inc  hl                                          ; $48bb: $23
	ld   d, l                                        ; $48bc: $55
	ld   [hl], a                                     ; $48bd: $77
	ld   l, c                                        ; $48be: $69
	sbc  d                                           ; $48bf: $9a
	db   $ed                                         ; $48c0: $ed
	cp   e                                           ; $48c1: $bb
	xor  d                                           ; $48c2: $aa
	sub  l                                           ; $48c3: $95
	dec  [hl]                                        ; $48c4: $35
	ld   b, h                                        ; $48c5: $44
	ld   h, l                                        ; $48c6: $65
	ld   h, a                                        ; $48c7: $67
	ld   [hl], a                                     ; $48c8: $77
	sbc  d                                           ; $48c9: $9a
	rst  $28                                         ; $48ca: $ef
	ret                                              ; $48cb: $c9


	ld   a, d                                        ; $48cc: $7a
	xor  b                                           ; $48cd: $a8
	ld   d, d                                        ; $48ce: $52
	scf                                              ; $48cf: $37
	sub  [hl]                                        ; $48d0: $96
	ld   b, h                                        ; $48d1: $44
	ld   e, d                                        ; $48d2: $5a
	db   $db                                         ; $48d3: $db
	cp   e                                           ; $48d4: $bb
	sbc  e                                           ; $48d5: $9b
	ret  z                                           ; $48d6: $c8

	add  [hl]                                        ; $48d7: $86
	ld   b, [hl]                                     ; $48d8: $46
	ld   d, l                                        ; $48d9: $55
	ld   h, a                                        ; $48da: $67
	halt                                             ; $48db: $76
	ld   l, d                                        ; $48dc: $6a
	cp   d                                           ; $48dd: $ba
	xor  c                                           ; $48de: $a9
	xor  h                                           ; $48df: $ac
	jp   z, Jump_0b4_4673                            ; $48e0: $ca $73 $46

	ld   d, [hl]                                     ; $48e3: $56
	ld   h, e                                        ; $48e4: $63
	ld   l, c                                        ; $48e5: $69
	adc  e                                           ; $48e6: $8b
	res  7, d                                        ; $48e7: $cb $ba
	xor  h                                           ; $48e9: $ac
	xor  b                                           ; $48ea: $a8
	add  [hl]                                        ; $48eb: $86
	ld   h, [hl]                                     ; $48ec: $66
	ld   b, l                                        ; $48ed: $45
	ld   [hl], l                                     ; $48ee: $75
	ld   e, b                                        ; $48ef: $58
	adc  e                                           ; $48f0: $8b
	call z, Call_0b4_69b9                            ; $48f1: $cc $b9 $69
	cp   c                                           ; $48f4: $b9
	add  l                                           ; $48f5: $85
	ld   b, l                                        ; $48f6: $45
	ld   h, a                                        ; $48f7: $67
	ld   h, h                                        ; $48f8: $64
	ld   b, a                                        ; $48f9: $47
	sbc  h                                           ; $48fa: $9c
	cp   d                                           ; $48fb: $ba
	cp   e                                           ; $48fc: $bb
	sbc  d                                           ; $48fd: $9a
	sub  a                                           ; $48fe: $97
	add  [hl]                                        ; $48ff: $86
	ld   b, [hl]                                     ; $4900: $46
	ld   b, l                                        ; $4901: $45
	add  a                                           ; $4902: $87
	ld   h, a                                        ; $4903: $67
	ld   a, c                                        ; $4904: $79
	cp   e                                           ; $4905: $bb
	cp   d                                           ; $4906: $ba
	call z, $55a6                                    ; $4907: $cc $a6 $55
	ld   d, [hl]                                     ; $490a: $56
	ld   h, l                                        ; $490b: $65
	ld   l, b                                        ; $490c: $68
	adc  b                                           ; $490d: $88
	adc  d                                           ; $490e: $8a
	cp   e                                           ; $490f: $bb
	xor  d                                           ; $4910: $aa
	sbc  c                                           ; $4911: $99
	xor  c                                           ; $4912: $a9
	ld   b, e                                        ; $4913: $43
	ld   d, a                                        ; $4914: $57
	ld   h, l                                        ; $4915: $65
	dec  [hl]                                        ; $4916: $35
	sbc  d                                           ; $4917: $9a
	xor  b                                           ; $4918: $a8
	adc  c                                           ; $4919: $89
	xor  e                                           ; $491a: $ab
	cp   c                                           ; $491b: $b9
	sbc  d                                           ; $491c: $9a
	add  [hl]                                        ; $491d: $86
	ld   h, [hl]                                     ; $491e: $66
	ld   h, [hl]                                     ; $491f: $66
	ld   d, l                                        ; $4920: $55
	ld   l, c                                        ; $4921: $69
	xor  d                                           ; $4922: $aa
	xor  d                                           ; $4923: $aa
	cp   h                                           ; $4924: $bc
	cp   c                                           ; $4925: $b9
	ld   [hl], a                                     ; $4926: $77
	sbc  b                                           ; $4927: $98
	ld   h, l                                        ; $4928: $65
	ld   d, [hl]                                     ; $4929: $56
	ld   [hl], a                                     ; $492a: $77
	ld   h, [hl]                                     ; $492b: $66
	ld   [hl], a                                     ; $492c: $77
	xor  h                                           ; $492d: $ac
	cp   d                                           ; $492e: $ba
	xor  c                                           ; $492f: $a9
	sbc  b                                           ; $4930: $98
	add  a                                           ; $4931: $87
	ld   h, [hl]                                     ; $4932: $66
	ld   d, [hl]                                     ; $4933: $56
	ld   a, b                                        ; $4934: $78
	add  a                                           ; $4935: $87
	ld   a, b                                        ; $4936: $78
	xor  d                                           ; $4937: $aa
	xor  d                                           ; $4938: $aa
	sbc  b                                           ; $4939: $98
	sbc  d                                           ; $493a: $9a
	sub  a                                           ; $493b: $97
	ld   d, l                                        ; $493c: $55
	ld   h, [hl]                                     ; $493d: $66
	ld   h, a                                        ; $493e: $67
	ld   h, a                                        ; $493f: $67
	sbc  c                                           ; $4940: $99
	sbc  c                                           ; $4941: $99
	adc  d                                           ; $4942: $8a
	xor  c                                           ; $4943: $a9
	sbc  b                                           ; $4944: $98
	adc  c                                           ; $4945: $89
	ld   [hl], a                                     ; $4946: $77
	ld   h, l                                        ; $4947: $65
	ld   h, a                                        ; $4948: $67
	ld   h, [hl]                                     ; $4949: $66
	ld   h, a                                        ; $494a: $67
	sbc  c                                           ; $494b: $99
	sbc  e                                           ; $494c: $9b
	cp   d                                           ; $494d: $ba
	xor  c                                           ; $494e: $a9
	sbc  b                                           ; $494f: $98
	sbc  b                                           ; $4950: $98
	halt                                             ; $4951: $76
	ld   h, [hl]                                     ; $4952: $66
	ld   [hl], a                                     ; $4953: $77
	ld   [hl], a                                     ; $4954: $77
	ld   a, c                                        ; $4955: $79
	sbc  d                                           ; $4956: $9a
	xor  e                                           ; $4957: $ab
	sbc  b                                           ; $4958: $98
	adc  b                                           ; $4959: $88
	sbc  c                                           ; $495a: $99
	halt                                             ; $495b: $76
	ld   d, l                                        ; $495c: $55
	ld   l, b                                        ; $495d: $68
	halt                                             ; $495e: $76
	ld   [hl], a                                     ; $495f: $77
	adc  c                                           ; $4960: $89
	cp   c                                           ; $4961: $b9
	add  a                                           ; $4962: $87
	sbc  c                                           ; $4963: $99
	adc  b                                           ; $4964: $88
	ld   [hl], a                                     ; $4965: $77
	halt                                             ; $4966: $76
	ld   [hl], a                                     ; $4967: $77
	ld   h, a                                        ; $4968: $67
	sbc  b                                           ; $4969: $98
	sbc  c                                           ; $496a: $99
	adc  c                                           ; $496b: $89
	xor  c                                           ; $496c: $a9
	adc  b                                           ; $496d: $88
	adc  d                                           ; $496e: $8a
	and  a                                           ; $496f: $a7
	ld   h, [hl]                                     ; $4970: $66
	ld   h, a                                        ; $4971: $67
	add  a                                           ; $4972: $87
	ld   h, [hl]                                     ; $4973: $66
	adc  e                                           ; $4974: $8b
	cp   b                                           ; $4975: $b8
	ld   [hl], a                                     ; $4976: $77
	sbc  c                                           ; $4977: $99
	xor  b                                           ; $4978: $a8
	ld   [hl], a                                     ; $4979: $77
	adc  b                                           ; $497a: $88
	add  a                                           ; $497b: $87
	ld   h, a                                        ; $497c: $67
	adc  c                                           ; $497d: $89
	xor  b                                           ; $497e: $a8
	ld   a, b                                        ; $497f: $78
	sbc  c                                           ; $4980: $99
	sbc  b                                           ; $4981: $98
	ld   [hl], a                                     ; $4982: $77
	ld   a, c                                        ; $4983: $79
	xor  b                                           ; $4984: $a8
	add  [hl]                                        ; $4985: $86
	ld   h, a                                        ; $4986: $67
	adc  b                                           ; $4987: $88
	add  a                                           ; $4988: $87
	ld   a, c                                        ; $4989: $79
	sbc  c                                           ; $498a: $99
	sub  a                                           ; $498b: $97
	ld   h, a                                        ; $498c: $67
	adc  c                                           ; $498d: $89
	adc  b                                           ; $498e: $88
	ld   [hl], a                                     ; $498f: $77
	adc  b                                           ; $4990: $88
	adc  b                                           ; $4991: $88
	ld   [hl], a                                     ; $4992: $77
	adc  c                                           ; $4993: $89
	sbc  b                                           ; $4994: $98
	ld   [hl], a                                     ; $4995: $77
	adc  b                                           ; $4996: $88
	adc  b                                           ; $4997: $88
	ld   [hl], a                                     ; $4998: $77
	ld   a, b                                        ; $4999: $78
	sub  a                                           ; $499a: $97
	ld   [hl], a                                     ; $499b: $77
	adc  b                                           ; $499c: $88
	sbc  b                                           ; $499d: $98
	adc  b                                           ; $499e: $88
	ld   a, b                                        ; $499f: $78
	adc  c                                           ; $49a0: $89
	sbc  c                                           ; $49a1: $99
	add  a                                           ; $49a2: $87
	adc  c                                           ; $49a3: $89
	sbc  c                                           ; $49a4: $99
	ld   [hl], a                                     ; $49a5: $77
	ld   [hl], a                                     ; $49a6: $77
	sbc  b                                           ; $49a7: $98
	add  a                                           ; $49a8: $87
	ld   a, b                                        ; $49a9: $78
	sbc  c                                           ; $49aa: $99
	add  a                                           ; $49ab: $87
	adc  b                                           ; $49ac: $88
	sbc  c                                           ; $49ad: $99
	add  a                                           ; $49ae: $87
	ld   a, b                                        ; $49af: $78
	add  a                                           ; $49b0: $87
	ld   [hl], a                                     ; $49b1: $77
	ld   a, b                                        ; $49b2: $78
	adc  b                                           ; $49b3: $88
	sbc  b                                           ; $49b4: $98
	adc  c                                           ; $49b5: $89
	adc  c                                           ; $49b6: $89
	add  a                                           ; $49b7: $87
	adc  c                                           ; $49b8: $89
	sbc  b                                           ; $49b9: $98
	add  a                                           ; $49ba: $87
	ld   [hl], a                                     ; $49bb: $77
	adc  b                                           ; $49bc: $88
	ld   a, b                                        ; $49bd: $78
	sbc  b                                           ; $49be: $98
	sbc  b                                           ; $49bf: $98
	add  a                                           ; $49c0: $87
	adc  c                                           ; $49c1: $89
	sbc  c                                           ; $49c2: $99
	sbc  b                                           ; $49c3: $98
	adc  b                                           ; $49c4: $88
	ld   a, b                                        ; $49c5: $78
	add  a                                           ; $49c6: $87
	ld   [hl], a                                     ; $49c7: $77
	adc  b                                           ; $49c8: $88
	sub  a                                           ; $49c9: $97
	ld   [hl], a                                     ; $49ca: $77
	sbc  d                                           ; $49cb: $9a
	xor  c                                           ; $49cc: $a9
	ld   [hl], a                                     ; $49cd: $77
	adc  b                                           ; $49ce: $88
	sub  a                                           ; $49cf: $97
	ld   h, a                                        ; $49d0: $67
	adc  b                                           ; $49d1: $88
	add  a                                           ; $49d2: $87
	ld   [hl], a                                     ; $49d3: $77
	adc  b                                           ; $49d4: $88
	adc  b                                           ; $49d5: $88
	ld   a, b                                        ; $49d6: $78
	sbc  c                                           ; $49d7: $99
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	add  a                                           ; $49da: $87
	ld   [hl], a                                     ; $49db: $77
	adc  c                                           ; $49dc: $89
	sub  a                                           ; $49dd: $97
	ld   [hl], a                                     ; $49de: $77
	adc  c                                           ; $49df: $89
	sbc  b                                           ; $49e0: $98
	ld   a, b                                        ; $49e1: $78
	sbc  c                                           ; $49e2: $99
	add  a                                           ; $49e3: $87
	ld   a, b                                        ; $49e4: $78
	sbc  c                                           ; $49e5: $99
	add  a                                           ; $49e6: $87
	ld   a, b                                        ; $49e7: $78
	adc  b                                           ; $49e8: $88
	add  a                                           ; $49e9: $87
	ld   a, b                                        ; $49ea: $78
	adc  c                                           ; $49eb: $89
	sbc  b                                           ; $49ec: $98
	adc  b                                           ; $49ed: $88
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	ld   [hl], a                                     ; $49f1: $77
	adc  b                                           ; $49f2: $88
	add  a                                           ; $49f3: $87
	ld   a, b                                        ; $49f4: $78
	adc  b                                           ; $49f5: $88
	sbc  b                                           ; $49f6: $98
	ld   a, b                                        ; $49f7: $78
	adc  b                                           ; $49f8: $88
	sbc  b                                           ; $49f9: $98
	ld   a, b                                        ; $49fa: $78
	sbc  c                                           ; $49fb: $99
	add  a                                           ; $49fc: $87
	ld   a, b                                        ; $49fd: $78
	sbc  c                                           ; $49fe: $99
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	sbc  c                                           ; $4a01: $99
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
	add  a                                           ; $4a0d: $87
	adc  b                                           ; $4a0e: $88
	adc  c                                           ; $4a0f: $89
	adc  b                                           ; $4a10: $88
	adc  b                                           ; $4a11: $88
	adc  b                                           ; $4a12: $88
	adc  c                                           ; $4a13: $89
	sbc  b                                           ; $4a14: $98
	adc  b                                           ; $4a15: $88
	adc  b                                           ; $4a16: $88
	adc  b                                           ; $4a17: $88
	adc  b                                           ; $4a18: $88
	adc  c                                           ; $4a19: $89
	sbc  b                                           ; $4a1a: $98
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  b                                           ; $4a1d: $88
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	add  a                                           ; $4a20: $87
	ld   a, b                                        ; $4a21: $78
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	sbc  c                                           ; $4a24: $99
	sbc  b                                           ; $4a25: $98
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
	sbc  b                                           ; $4a35: $98
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	adc  c                                           ; $4a38: $89
	sbc  b                                           ; $4a39: $98
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	adc  b                                           ; $4a3e: $88
	sbc  b                                           ; $4a3f: $98
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	adc  b                                           ; $4a46: $88
	adc  b                                           ; $4a47: $88
	adc  c                                           ; $4a48: $89
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
	sbc  c                                           ; $4c9d: $99
	sbc  c                                           ; $4c9e: $99
	sbc  c                                           ; $4c9f: $99
	sbc  b                                           ; $4ca0: $98
	adc  b                                           ; $4ca1: $88
	add  a                                           ; $4ca2: $87
	ld   [hl], a                                     ; $4ca3: $77
	ld   [hl], a                                     ; $4ca4: $77
	ld   [hl], a                                     ; $4ca5: $77
	ld   [hl], a                                     ; $4ca6: $77
	adc  b                                           ; $4ca7: $88
	sbc  b                                           ; $4ca8: $98
	sbc  c                                           ; $4ca9: $99
	sbc  c                                           ; $4caa: $99
	xor  d                                           ; $4cab: $aa
	sbc  c                                           ; $4cac: $99
	sbc  b                                           ; $4cad: $98
	ld   [hl], a                                     ; $4cae: $77
	halt                                             ; $4caf: $76
	ld   h, [hl]                                     ; $4cb0: $66
	ld   h, [hl]                                     ; $4cb1: $66
	ld   h, a                                        ; $4cb2: $67
	ld   a, b                                        ; $4cb3: $78
	sbc  d                                           ; $4cb4: $9a
	xor  e                                           ; $4cb5: $ab
	cp   e                                           ; $4cb6: $bb
	res  7, c                                        ; $4cb7: $cb $b9
	sbc  b                                           ; $4cb9: $98
	halt                                             ; $4cba: $76
	ld   h, l                                        ; $4cbb: $65
	ld   d, h                                        ; $4cbc: $54
	ld   b, h                                        ; $4cbd: $44
	ld   b, l                                        ; $4cbe: $45
	ld   l, b                                        ; $4cbf: $68
	sbc  d                                           ; $4cc0: $9a
	cp   e                                           ; $4cc1: $bb
	db   $dd                                         ; $4cc2: $dd
	xor  $da                                         ; $4cc3: $ee $da
	sbc  b                                           ; $4cc5: $98
	halt                                             ; $4cc6: $76
	ld   d, h                                        ; $4cc7: $54
	inc  sp                                          ; $4cc8: $33
	inc  hl                                          ; $4cc9: $23
	dec  [hl]                                        ; $4cca: $35
	ld   l, b                                        ; $4ccb: $68
	xor  h                                           ; $4ccc: $ac
	sbc  $fe                                         ; $4ccd: $de $fe
	rst  $28                                         ; $4ccf: $ef
	jp   c, Jump_0b4_5396                            ; $4cd0: $da $96 $53

	ld   de, $1211                                   ; $4cd3: $11 $11 $12
	ld   b, a                                        ; $4cd6: $47
	xor  l                                           ; $4cd7: $ad
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	db   $fc                                         ; $4cdb: $fc
	add  h                                           ; $4cdc: $84
	ld   de, $1111                                   ; $4cdd: $11 $11 $11
	ld   de, $ae48                                   ; $4ce0: $11 $48 $ae
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	rst  $38                                         ; $4ce6: $ff
	rst  ToBoot                                         ; $4ce7: $c7
	ld   de, $1111                                   ; $4ce8: $11 $11 $11
	ld   de, $df28                                   ; $4ceb: $11 $28 $df
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	db   $fd                                         ; $4cf2: $fd
	ld   h, c                                        ; $4cf3: $61
	ld   de, $1111                                   ; $4cf4: $11 $11 $11
	inc  de                                          ; $4cf7: $13
	cp   [hl]                                        ; $4cf8: $be
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	rst  $38                                         ; $4cfb: $ff
	rst  $38                                         ; $4cfc: $ff
	rst  $38                                         ; $4cfd: $ff
	ld   hl, sp+$11                                  ; $4cfe: $f8 $11
	ld   de, $1111                                   ; $4d00: $11 $11 $11
	dec  de                                          ; $4d03: $1b
	rst  $28                                         ; $4d04: $ef
	rst  $38                                         ; $4d05: $ff
	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	sub  c                                           ; $4d0a: $91
	ld   de, $1111                                   ; $4d0b: $11 $11 $11
	ld   de, $ffae                                   ; $4d0e: $11 $ae $ff
	rst  $38                                         ; $4d11: $ff
	rst  $38                                         ; $4d12: $ff
	rst  $38                                         ; $4d13: $ff
	rst  $38                                         ; $4d14: $ff
	db   $fc                                         ; $4d15: $fc
	ld   de, $1111                                   ; $4d16: $11 $11 $11
	ld   de, $ff18                                   ; $4d19: $11 $18 $ff
	rst  $38                                         ; $4d1c: $ff
	rst  $38                                         ; $4d1d: $ff
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	pop  af                                          ; $4d21: $f1
	ld   de, $1111                                   ; $4d22: $11 $11 $11
	ld   de, $ff7f                                   ; $4d25: $11 $7f $ff
	rst  $38                                         ; $4d28: $ff
	rst  $38                                         ; $4d29: $ff
	rst  $38                                         ; $4d2a: $ff
	rst  $38                                         ; $4d2b: $ff
	rst  $38                                         ; $4d2c: $ff
	ld   de, $1111                                   ; $4d2d: $11 $11 $11
	ld   de, $df16                                   ; $4d30: $11 $16 $df
	rst  $38                                         ; $4d33: $ff
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	pop  de                                          ; $4d38: $d1
	ld   de, $1111                                   ; $4d39: $11 $11 $11
	ld   de, $ff7c                                   ; $4d3c: $11 $7c $ff
	rst  $38                                         ; $4d3f: $ff
	rst  $38                                         ; $4d40: $ff
	rst  $38                                         ; $4d41: $ff
	rst  $38                                         ; $4d42: $ff
	ld   sp, hl                                      ; $4d43: $f9
	ld   de, $1111                                   ; $4d44: $11 $11 $11
	ld   de, $ff1c                                   ; $4d47: $11 $1c $ff
	rst  $38                                         ; $4d4a: $ff
	rst  $38                                         ; $4d4b: $ff
	rst  $38                                         ; $4d4c: $ff
	rst  $38                                         ; $4d4d: $ff
	rst  $38                                         ; $4d4e: $ff
	pop  de                                          ; $4d4f: $d1
	ld   de, $1111                                   ; $4d50: $11 $11 $11
	ld   de, $ff4e                                   ; $4d53: $11 $4e $ff
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	rst  $38                                         ; $4d59: $ff
	ei                                               ; $4d5a: $fb
	ld   de, $1111                                   ; $4d5b: $11 $11 $11
	ld   de, $ff1f                                   ; $4d5e: $11 $1f $ff
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	ld   h, c                                        ; $4d66: $61
	ld   de, $1111                                   ; $4d67: $11 $11 $11
	ld   de, $ffff                                   ; $4d6a: $11 $ff $ff
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	rst  $38                                         ; $4d70: $ff
	pop  af                                          ; $4d71: $f1
	ld   de, $1111                                   ; $4d72: $11 $11 $11
	ld   de, $ff8f                                   ; $4d75: $11 $8f $ff
	rst  $38                                         ; $4d78: $ff
	rst  $38                                         ; $4d79: $ff
	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	ld   sp, hl                                      ; $4d7c: $f9
	ld   de, $1111                                   ; $4d7d: $11 $11 $11
	ld   de, $ff3f                                   ; $4d80: $11 $3f $ff
	rst  $38                                         ; $4d83: $ff
	rst  $38                                         ; $4d84: $ff
	rst  $38                                         ; $4d85: $ff
	rst  $38                                         ; $4d86: $ff
	db   $fd                                         ; $4d87: $fd
	ld   de, $1111                                   ; $4d88: $11 $11 $11
	ld   de, $ff1b                                   ; $4d8b: $11 $1b $ff
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	rst  $38                                         ; $4d90: $ff
	rst  $38                                         ; $4d91: $ff
	rst  $38                                         ; $4d92: $ff
	sub  c                                           ; $4d93: $91
	ld   de, $1111                                   ; $4d94: $11 $11 $11
	ld   de, $ffff                                   ; $4d97: $11 $ff $ff
	rst  $38                                         ; $4d9a: $ff
	rst  $38                                         ; $4d9b: $ff
	rst  $38                                         ; $4d9c: $ff
	rst  $38                                         ; $4d9d: $ff
	ld   d, c                                        ; $4d9e: $51
	ld   de, $1111                                   ; $4d9f: $11 $11 $11
	ld   [de], a                                     ; $4da2: $12
	rst  $38                                         ; $4da3: $ff
	rst  $38                                         ; $4da4: $ff
	rst  $38                                         ; $4da5: $ff
	rst  $38                                         ; $4da6: $ff
	rst  $38                                         ; $4da7: $ff
	rst  $38                                         ; $4da8: $ff
	ld   b, c                                        ; $4da9: $41
	ld   de, $1111                                   ; $4daa: $11 $11 $11
	inc  d                                           ; $4dad: $14
	rst  $38                                         ; $4dae: $ff
	rst  $28                                         ; $4daf: $ef
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	db   $fd                                         ; $4db2: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4db3: $cf
	ei                                               ; $4db4: $fb
	ld   de, $1111                                   ; $4db5: $11 $11 $11
	ld   de, $ffdf                                   ; $4db8: $11 $df $ff
	rst  $30                                         ; $4dbb: $f7
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $30                                         ; $4dbf: $f7
	ld   de, $1111                                   ; $4dc0: $11 $11 $11
	ld   de, $ffaf                                   ; $4dc3: $11 $af $ff
	db   $e4                                         ; $4dc6: $e4
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	xor  $c1                                         ; $4dc9: $ee $c1
	ld   de, $1111                                   ; $4dcb: $11 $11 $11
	rla                                              ; $4dce: $17
	rst  $38                                         ; $4dcf: $ff
	rst  $38                                         ; $4dd0: $ff
	db   $fd                                         ; $4dd1: $fd
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	rst  $38                                         ; $4dd4: $ff
	and  c                                           ; $4dd5: $a1
	ld   de, $1111                                   ; $4dd6: $11 $11 $11
	ld   de, $ffef                                   ; $4dd9: $11 $ef $ff
	rst  $28                                         ; $4ddc: $ef
	rst  $38                                         ; $4ddd: $ff
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	ld   b, d                                        ; $4de0: $42
	ld   de, $1111                                   ; $4de1: $11 $11 $11
	ld   de, $ffff                                   ; $4de4: $11 $ff $ff
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	ld   [hl], c                                     ; $4deb: $71
	ld   de, $1111                                   ; $4dec: $11 $11 $11
	inc  e                                           ; $4def: $1c
	rst  $38                                         ; $4df0: $ff
	ei                                               ; $4df1: $fb
	rst  $38                                         ; $4df2: $ff
	rst  $38                                         ; $4df3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4df4: $cf
	rst  $38                                         ; $4df5: $ff
	ld   d, c                                        ; $4df6: $51
	ld   de, $1131                                   ; $4df7: $11 $31 $11
	add  hl, de                                      ; $4dfa: $19
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	adc  a                                           ; $4dfd: $8f
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	rst  $30                                         ; $4e00: $f7
	ld   sp, $1111                                   ; $4e01: $31 $11 $11
	ld   de, $ff1f                                   ; $4e04: $11 $1f $ff
	rst  $38                                         ; $4e07: $ff
	ld   e, a                                        ; $4e08: $5f
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	xor  a                                           ; $4e0b: $af
	ld   hl, $1111                                   ; $4e0c: $21 $11 $11
	ld   de, $ffdf                                   ; $4e0f: $11 $df $ff
	ld   hl, sp+$6f                                  ; $4e12: $f8 $6f
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	pop  bc                                          ; $4e16: $c1
	ld   de, $1111                                   ; $4e17: $11 $11 $11
	rla                                              ; $4e1a: $17
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	db   $ed                                         ; $4e1d: $ed
	rst  $38                                         ; $4e1e: $ff
	rst  $38                                         ; $4e1f: $ff
	rst  $28                                         ; $4e20: $ef
	ld   d, c                                        ; $4e21: $51
	ld   de, $1111                                   ; $4e22: $11 $11 $11
	rra                                              ; $4e25: $1f
	rst  $38                                         ; $4e26: $ff
	rst  $38                                         ; $4e27: $ff
	ld   l, a                                        ; $4e28: $6f
	rst  $38                                         ; $4e29: $ff
	rst  $38                                         ; $4e2a: $ff
	ei                                               ; $4e2b: $fb
	ld   de, $1116                                   ; $4e2c: $11 $16 $11
	ld   de, $fdff                                   ; $4e2f: $11 $ff $fd
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	ei                                               ; $4e34: $fb
	rst  $38                                         ; $4e35: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e36: $cf
	ld   de, $1111                                   ; $4e37: $11 $11 $11
	ld   de, $ffff                                   ; $4e3a: $11 $ff $ff
	ld   hl, sp-$01                                  ; $4e3d: $f8 $ff
	rst  JumpTable                                         ; $4e3f: $df
	ld   a, [$11f6]                                  ; $4e40: $fa $f6 $11
	ld   de, $1811                                   ; $4e43: $11 $11 $18
	rst  $38                                         ; $4e46: $ff
	rst  $38                                         ; $4e47: $ff
	ld   sp, hl                                      ; $4e48: $f9
	rst  $38                                         ; $4e49: $ff
	rst  $38                                         ; $4e4a: $ff
	db   $fc                                         ; $4e4b: $fc
	sub  c                                           ; $4e4c: $91
	inc  de                                          ; $4e4d: $13
	ld   de, $1f11                                   ; $4e4e: $11 $11 $1f
	rst  $38                                         ; $4e51: $ff
	rst  $38                                         ; $4e52: $ff
	cp   a                                           ; $4e53: $bf
	cp   $ff                                         ; $4e54: $fe $ff
	rst  $38                                         ; $4e56: $ff
	ld   de, $1111                                   ; $4e57: $11 $11 $11
	ld   de, $ff7f                                   ; $4e5a: $11 $7f $ff
	rst  $38                                         ; $4e5d: $ff
	rst  $38                                         ; $4e5e: $ff
	xor  [hl]                                        ; $4e5f: $ae
	rst  $38                                         ; $4e60: $ff
	pop  af                                          ; $4e61: $f1
	ld   de, $1111                                   ; $4e62: $11 $11 $11
	ld   de, $ffff                                   ; $4e65: $11 $ff $ff
	rst  $38                                         ; $4e68: $ff
	cp   $7f                                         ; $4e69: $fe $7f
	rst  $38                                         ; $4e6b: $ff
	and  c                                           ; $4e6c: $a1
	inc  de                                          ; $4e6d: $13
	add  c                                           ; $4e6e: $81
	ld   de, $ff1f                                   ; $4e6f: $11 $1f $ff
	rst  $38                                         ; $4e72: $ff
	rst  $38                                         ; $4e73: $ff
	adc  b                                           ; $4e74: $88
	rst  $38                                         ; $4e75: $ff
	rst  $38                                         ; $4e76: $ff
	ld   de, $1126                                   ; $4e77: $11 $26 $11
	ld   de, $cf4f                                   ; $4e7a: $11 $4f $cf
	rst  $38                                         ; $4e7d: $ff
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	cp   $f1                                         ; $4e81: $fe $f1
	inc  de                                          ; $4e83: $13
	ld   de, $1f11                                   ; $4e84: $11 $11 $1f
	ld   c, c                                        ; $4e87: $49
	rst  $38                                         ; $4e88: $ff
	rst  $38                                         ; $4e89: $ff
	ld   c, a                                        ; $4e8a: $4f
	rst  $38                                         ; $4e8b: $ff
	db   $dd                                         ; $4e8c: $dd
	ld   de, $1121                                   ; $4e8d: $11 $21 $11
	ld   de, $cf2f                                   ; $4e90: $11 $2f $cf
	rst  $38                                         ; $4e93: $ff
	cp   $df                                         ; $4e94: $fe $df
	rst  $38                                         ; $4e96: $ff
	ld   a, [$1112]                                  ; $4e97: $fa $12 $11
	ld   de, $1a11                                   ; $4e9a: $11 $11 $1a
	rst  $38                                         ; $4e9d: $ff
	rst  $38                                         ; $4e9e: $ff
	rst  JumpTable                                         ; $4e9f: $df
	rst  $38                                         ; $4ea0: $ff
	rst  $38                                         ; $4ea1: $ff
	ld   a, d                                        ; $4ea2: $7a
	ld   de, $1171                                   ; $4ea3: $11 $71 $11
	ld   de, $1ff2                                   ; $4ea6: $11 $f2 $1f
	cp   $ff                                         ; $4ea9: $fe $ff
	rst  $38                                         ; $4eab: $ff
	ld   hl, sp-$08                                  ; $4eac: $f8 $f8
	dec  d                                           ; $4eae: $15
	ld   de, $1111                                   ; $4eaf: $11 $11 $11
	rst  ToBoot                                         ; $4eb2: $c7
	rst  $28                                         ; $4eb3: $ef
	rst  $38                                         ; $4eb4: $ff
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	sbc  d                                           ; $4eb8: $9a
	ld   de, $1111                                   ; $4eb9: $11 $11 $11
	ld   de, $dff5                                   ; $4ebc: $11 $f5 $df
	cp   $ff                                         ; $4ebf: $fe $ff
	rst  $38                                         ; $4ec1: $ff
	or   $f2                                         ; $4ec2: $f6 $f2
	ld   de, $1111                                   ; $4ec4: $11 $11 $11
	inc  d                                           ; $4ec7: $14
	sbc  b                                           ; $4ec8: $98
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	rst  $38                                         ; $4ecb: $ff
	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	di                                               ; $4ece: $f3
	ld   de, $1111                                   ; $4ecf: $11 $11 $11
	jr   jr_0b4_4f4a                                 ; $4ed2: $18 $76

	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	rst  $28                                         ; $4ed6: $ef
	rst  $38                                         ; $4ed7: $ff
	db   $fc                                         ; $4ed8: $fc
	ld   b, h                                        ; $4ed9: $44
	ld   de, $1111                                   ; $4eda: $11 $11 $11
	ld   de, $ff1f                                   ; $4edd: $11 $1f $ff
	rst  $38                                         ; $4ee0: $ff
	rst  $38                                         ; $4ee1: $ff
	rst  $38                                         ; $4ee2: $ff
	rst  $38                                         ; $4ee3: $ff
	add  c                                           ; $4ee4: $81
	ld   de, $1111                                   ; $4ee5: $11 $11 $11
	ld   d, $57                                      ; $4ee8: $16 $57
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	rst  $38                                         ; $4eec: $ff
	rst  $38                                         ; $4eed: $ff
	cp   a                                           ; $4eee: $bf
	sub  c                                           ; $4eef: $91
	ld   de, $1111                                   ; $4ef0: $11 $11 $11
	ld   de, $ff5f                                   ; $4ef3: $11 $5f $ff
	rst  $38                                         ; $4ef6: $ff
	rst  $38                                         ; $4ef7: $ff
	rst  $38                                         ; $4ef8: $ff
	rst  $38                                         ; $4ef9: $ff
	or   c                                           ; $4efa: $b1
	ld   de, $1111                                   ; $4efb: $11 $11 $11
	ld   de, $ff2f                                   ; $4efe: $11 $2f $ff
	rst  $38                                         ; $4f01: $ff
	rst  $38                                         ; $4f02: $ff
	rst  $38                                         ; $4f03: $ff
	ld   hl, sp-$5d                                  ; $4f04: $f8 $a3
	ld   de, $1111                                   ; $4f06: $11 $11 $11
	ld   [de], a                                     ; $4f09: $12
	ld   e, h                                        ; $4f0a: $5c
	rst  $38                                         ; $4f0b: $ff
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	rst  $38                                         ; $4f0e: $ff
	db   $fc                                         ; $4f0f: $fc
	or   c                                           ; $4f10: $b1
	ld   de, $1111                                   ; $4f11: $11 $11 $11
	ld   de, $ff4d                                   ; $4f14: $11 $4d $ff
	rst  JumpTable                                         ; $4f17: $df
	rst  $38                                         ; $4f18: $ff
	rst  $38                                         ; $4f19: $ff
	adc  a                                           ; $4f1a: $8f
	pop  bc                                          ; $4f1b: $c1
	ld   de, $1111                                   ; $4f1c: $11 $11 $11
	ld   de, $fa1f                                   ; $4f1f: $11 $1f $fa
	rst  $38                                         ; $4f22: $ff
	rst  $38                                         ; $4f23: $ff
	rst  $38                                         ; $4f24: $ff
	cp   $36                                         ; $4f25: $fe $36
	ld   de, $1111                                   ; $4f27: $11 $11 $11
	ld   de, $df5b                                   ; $4f2a: $11 $5b $df
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	rst  $38                                         ; $4f2f: $ff
	xor  $c5                                         ; $4f30: $ee $c5
	ld   sp, $1111                                   ; $4f32: $31 $11 $11
	ld   de, $9c15                                   ; $4f35: $11 $15 $9c
	sbc  $ff                                         ; $4f38: $de $ff
	rst  $38                                         ; $4f3a: $ff
	cp   $fd                                         ; $4f3b: $fe $fd
	ld   l, e                                        ; $4f3d: $6b
	ld   h, c                                        ; $4f3e: $61
	ld   hl, $1111                                   ; $4f3f: $21 $11 $11
	ld   b, [hl]                                     ; $4f42: $46
	ld   c, b                                        ; $4f43: $48
	xor  h                                           ; $4f44: $ac
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	ret  z                                           ; $4f49: $c8

jr_0b4_4f4a:
	add  h                                           ; $4f4a: $84
	ld   de, $1111                                   ; $4f4b: $11 $11 $11
	ld   [de], a                                     ; $4f4e: $12
	ld   b, a                                        ; $4f4f: $47
	cp   [hl]                                        ; $4f50: $be
	rst  $38                                         ; $4f51: $ff
	rst  $38                                         ; $4f52: $ff
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	or   a                                           ; $4f55: $b7
	ld   h, d                                        ; $4f56: $62
	ld   de, $1111                                   ; $4f57: $11 $11 $11
	inc  de                                          ; $4f5a: $13
	ld   l, c                                        ; $4f5b: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f5c: $cf
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	rst  $38                                         ; $4f5f: $ff
	db   $ec                                         ; $4f60: $ec
	add  [hl]                                        ; $4f61: $86
	ld   hl, $1111                                   ; $4f62: $21 $11 $11
	ld   de, $ac36                                   ; $4f65: $11 $36 $ac
	rst  $38                                         ; $4f68: $ff
	rst  $38                                         ; $4f69: $ff
	rst  $38                                         ; $4f6a: $ff
	db   $fd                                         ; $4f6b: $fd
	sub  a                                           ; $4f6c: $97
	ld   b, c                                        ; $4f6d: $41
	ld   de, $1111                                   ; $4f6e: $11 $11 $11
	inc  h                                           ; $4f71: $24
	ld   a, h                                        ; $4f72: $7c
	rst  $28                                         ; $4f73: $ef
	rst  $38                                         ; $4f74: $ff
	rst  $38                                         ; $4f75: $ff
	rst  $38                                         ; $4f76: $ff
	ret  z                                           ; $4f77: $c8

	ld   h, e                                        ; $4f78: $63
	ld   de, $1111                                   ; $4f79: $11 $11 $11
	inc  hl                                          ; $4f7c: $23
	ld   l, c                                        ; $4f7d: $69
	adc  $ff                                         ; $4f7e: $ce $ff
	rst  $38                                         ; $4f80: $ff
	cp   $ba                                         ; $4f81: $fe $ba
	ld   h, e                                        ; $4f83: $63
	ld   de, $1111                                   ; $4f84: $11 $11 $11
	inc  de                                          ; $4f87: $13
	ld   l, c                                        ; $4f88: $69
	call $ffff                                       ; $4f89: $cd $ff $ff
	rst  $38                                         ; $4f8c: $ff
	reti                                             ; $4f8d: $d9


	ld   h, h                                        ; $4f8e: $64
	ld   hl, $1111                                   ; $4f8f: $21 $11 $11
	inc  d                                           ; $4f92: $14
	ld   e, c                                        ; $4f93: $59
	db   $dd                                         ; $4f94: $dd
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	cp   $b9                                         ; $4f97: $fe $b9
	ld   h, h                                        ; $4f99: $64
	ld   de, $1111                                   ; $4f9a: $11 $11 $11
	dec  [hl]                                        ; $4f9d: $35
	ld   a, e                                        ; $4f9e: $7b
	sbc  $ff                                         ; $4f9f: $de $ff
	rst  $38                                         ; $4fa1: $ff
	db   $ec                                         ; $4fa2: $ec
	sub  [hl]                                        ; $4fa3: $96
	ld   b, d                                        ; $4fa4: $42
	ld   de, $1311                                   ; $4fa5: $11 $11 $13
	ld   d, a                                        ; $4fa8: $57
	xor  e                                           ; $4fa9: $ab
	rst  JumpTable                                         ; $4faa: $df
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	ret  z                                           ; $4fad: $c8

	ld   h, h                                        ; $4fae: $64
	ld   sp, $1111                                   ; $4faf: $31 $11 $11
	dec  h                                           ; $4fb2: $25
	ld   a, d                                        ; $4fb3: $7a
	rst  JumpTable                                         ; $4fb4: $df
	rst  $38                                         ; $4fb5: $ff
	rst  $38                                         ; $4fb6: $ff
	jp   c, Jump_0b4_4296                            ; $4fb7: $da $96 $42

	ld   bc, $1311                                   ; $4fba: $01 $11 $13
	ld   l, c                                        ; $4fbd: $69
	xor  l                                           ; $4fbe: $ad
	rst  $28                                         ; $4fbf: $ef
	rst  $38                                         ; $4fc0: $ff
	cp   $a7                                         ; $4fc1: $fe $a7
	ld   d, e                                        ; $4fc3: $53
	ld   de, $1111                                   ; $4fc4: $11 $11 $11
	ld   d, a                                        ; $4fc7: $57
	xor  h                                           ; $4fc8: $ac
	rst  $28                                         ; $4fc9: $ef
	rst  $38                                         ; $4fca: $ff
	rst  $38                                         ; $4fcb: $ff
	jp   c, $2163                                    ; $4fcc: $da $63 $21

	ld   de, $1411                                   ; $4fcf: $11 $11 $14
	ld   a, d                                        ; $4fd2: $7a
	call $ffff                                       ; $4fd3: $cd $ff $ff
	db   $fd                                         ; $4fd6: $fd
	and  l                                           ; $4fd7: $a5
	ld   [hl-], a                                    ; $4fd8: $32
	ld   de, $1211                                   ; $4fd9: $11 $11 $12
	ld   e, b                                        ; $4fdc: $58
	cp   h                                           ; $4fdd: $bc
	rst  $38                                         ; $4fde: $ff
	rst  $38                                         ; $4fdf: $ff
	cp   $c8                                         ; $4fe0: $fe $c8
	ld   d, e                                        ; $4fe2: $53
	ld   de, $1111                                   ; $4fe3: $11 $11 $11
	ld   [hl], $9c                                   ; $4fe6: $36 $9c
	rst  JumpTable                                         ; $4fe8: $df
	rst  $38                                         ; $4fe9: $ff
	rst  $38                                         ; $4fea: $ff
	jp   c, $3175                                    ; $4feb: $da $75 $31

	ld   de, $2511                                   ; $4fee: $11 $11 $25
	ld   a, d                                        ; $4ff1: $7a
	adc  $ff                                         ; $4ff2: $ce $ff
	rst  $38                                         ; $4ff4: $ff
	db   $fc                                         ; $4ff5: $fc
	sub  [hl]                                        ; $4ff6: $96
	ld   b, d                                        ; $4ff7: $42
	ld   bc, $1311                                   ; $4ff8: $01 $11 $13
	ld   l, b                                        ; $4ffb: $68
	adc  $ff                                         ; $4ffc: $ce $ff
	rst  $38                                         ; $4ffe: $ff
	db   $fd                                         ; $4fff: $fd
	or   a                                           ; $5000: $b7
	ld   d, e                                        ; $5001: $53
	ld   hl, $1211                                   ; $5002: $21 $11 $12
	ld   e, b                                        ; $5005: $58
	cp   [hl]                                        ; $5006: $be
	rst  $28                                         ; $5007: $ef
	rst  $38                                         ; $5008: $ff
	rst  $38                                         ; $5009: $ff
	rst  ToBoot                                         ; $500a: $c7
	ld   d, h                                        ; $500b: $54
	ld   hl, $1111                                   ; $500c: $21 $11 $11
	ld   [hl], $9d                                   ; $500f: $36 $9d
	rst  $28                                         ; $5011: $ef
	rst  $38                                         ; $5012: $ff
	rst  $38                                         ; $5013: $ff
	ld   [$3175], a                                  ; $5014: $ea $75 $31
	ld   de, $1411                                   ; $5017: $11 $11 $14
	ld   a, e                                        ; $501a: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501b: $cf
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	db   $fd                                         ; $501e: $fd
	and  [hl]                                        ; $501f: $a6
	ld   d, e                                        ; $5020: $53
	ld   de, $1211                                   ; $5021: $11 $11 $12
	ld   e, c                                        ; $5024: $59
	call $ffff                                       ; $5025: $cd $ff $ff
	rst  $38                                         ; $5028: $ff
	ret  z                                           ; $5029: $c8

	ld   h, l                                        ; $502a: $65
	ld   sp, $1111                                   ; $502b: $31 $11 $11
	ld   [hl], $9c                                   ; $502e: $36 $9c
	rst  $28                                         ; $5030: $ef
	rst  $38                                         ; $5031: $ff
	rst  $38                                         ; $5032: $ff
	jp   c, $3175                                    ; $5033: $da $75 $31

	ld   de, $2511                                   ; $5036: $11 $11 $25
	ld   a, d                                        ; $5039: $7a
	adc  $ff                                         ; $503a: $ce $ff
	rst  $38                                         ; $503c: $ff
	db   $eb                                         ; $503d: $eb
	sub  a                                           ; $503e: $97
	ld   d, e                                        ; $503f: $53
	ld   hl, $1411                                   ; $5040: $21 $11 $14
	ld   l, d                                        ; $5043: $6a
	db   $dd                                         ; $5044: $dd
	rst  $38                                         ; $5045: $ff
	rst  $38                                         ; $5046: $ff
	db   $eb                                         ; $5047: $eb
	sub  a                                           ; $5048: $97
	ld   d, d                                        ; $5049: $52
	ld   hl, $1411                                   ; $504a: $21 $11 $14
	ld   l, b                                        ; $504d: $68
	adc  $ee                                         ; $504e: $ce $ee
	rst  $38                                         ; $5050: $ff
	db   $eb                                         ; $5051: $eb
	halt                                             ; $5052: $76
	ld   b, c                                        ; $5053: $41
	ld   [de], a                                     ; $5054: $12
	ld   de, $8a16                                   ; $5055: $11 $16 $8a
	rst  JumpTable                                         ; $5058: $df
	rst  $38                                         ; $5059: $ff
	rst  $28                                         ; $505a: $ef
	rst  $10                                         ; $505b: $d7
	ld   h, [hl]                                     ; $505c: $66
	ld   hl, $1111                                   ; $505d: $21 $11 $11
	rla                                              ; $5060: $17
	xor  e                                           ; $5061: $ab
	rst  $38                                         ; $5062: $ff
	rst  $38                                         ; $5063: $ff
	rst  $38                                         ; $5064: $ff
	reti                                             ; $5065: $d9


	ld   d, l                                        ; $5066: $55
	ld   hl, $1111                                   ; $5067: $21 $11 $11
	add  hl, sp                                      ; $506a: $39
	xor  l                                           ; $506b: $ad
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	rst  $20                                         ; $506f: $e7
	ld   b, l                                        ; $5070: $45
	ld   de, $1111                                   ; $5071: $11 $11 $11
	add  hl, hl                                      ; $5074: $29
	call $ffff                                       ; $5075: $cd $ff $ff
	rst  $38                                         ; $5078: $ff
	or   l                                           ; $5079: $b5
	inc  sp                                          ; $507a: $33
	ld   de, $1111                                   ; $507b: $11 $11 $11
	ld   c, h                                        ; $507e: $4c
	sbc  $ff                                         ; $507f: $de $ff
	rst  $38                                         ; $5081: $ff
	rst  $38                                         ; $5082: $ff
	or   e                                           ; $5083: $b3
	inc  hl                                          ; $5084: $23
	ld   de, $1111                                   ; $5085: $11 $11 $11
	ld   a, d                                        ; $5088: $7a
	rst  $28                                         ; $5089: $ef
	rst  $38                                         ; $508a: $ff
	rst  $38                                         ; $508b: $ff
	rst  $38                                         ; $508c: $ff
	ld   [hl], c                                     ; $508d: $71
	ld   hl, $1111                                   ; $508e: $21 $11 $11
	ld   de, $ef9d                                   ; $5091: $11 $9d $ef
	rst  $38                                         ; $5094: $ff
	rst  $38                                         ; $5095: $ff
	cp   $41                                         ; $5096: $fe $41
	ld   hl, $1111                                   ; $5098: $21 $11 $11
	inc  de                                          ; $509b: $13
	xor  [hl]                                        ; $509c: $ae
	rst  $38                                         ; $509d: $ff
	rst  $38                                         ; $509e: $ff
	rst  $38                                         ; $509f: $ff
	ei                                               ; $50a0: $fb
	ld   hl, $1111                                   ; $50a1: $21 $11 $11
	ld   de, $be17                                   ; $50a4: $11 $17 $be
	rst  $38                                         ; $50a7: $ff
	rst  $38                                         ; $50a8: $ff
	rst  $38                                         ; $50a9: $ff
	or   $13                                         ; $50aa: $f6 $13
	ld   de, $1111                                   ; $50ac: $11 $11 $11
	ld   e, b                                        ; $50af: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b0: $cf
	rst  $38                                         ; $50b1: $ff
	rst  $38                                         ; $50b2: $ff
	rst  $38                                         ; $50b3: $ff
	add  d                                           ; $50b4: $82
	ld   sp, $1111                                   ; $50b5: $31 $11 $11
	ld   de, $df9a                                   ; $50b8: $11 $9a $df
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
	ei                                               ; $50bd: $fb
	ld   d, d                                        ; $50be: $52
	ld   de, $1111                                   ; $50bf: $11 $11 $11
	rla                                              ; $50c2: $17
	sbc  h                                           ; $50c3: $9c
	rst  $38                                         ; $50c4: $ff
	rst  $38                                         ; $50c5: $ff
	rst  $38                                         ; $50c6: $ff
	push af                                          ; $50c7: $f5
	inc  [hl]                                        ; $50c8: $34
	ld   de, $1111                                   ; $50c9: $11 $11 $11
	ld   c, b                                        ; $50cc: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50cd: $cf
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	sub  h                                           ; $50d1: $94
	ld   sp, $1111                                   ; $50d2: $31 $11 $11
	inc  de                                          ; $50d5: $13
	ld   a, d                                        ; $50d6: $7a
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	rst  $38                                         ; $50d9: $ff
	ld   sp, hl                                      ; $50da: $f9
	ld   b, l                                        ; $50db: $45
	ld   de, $1111                                   ; $50dc: $11 $11 $11
	daa                                              ; $50df: $27
	adc  a                                           ; $50e0: $8f
	rst  $38                                         ; $50e1: $ff
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	and  h                                           ; $50e4: $a4
	ld   d, c                                        ; $50e5: $51
	ld   de, $1211                                   ; $50e6: $11 $11 $12
	ld   l, b                                        ; $50e9: $68
	rst  $38                                         ; $50ea: $ff
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	db   $fc                                         ; $50ed: $fc
	ld   h, h                                        ; $50ee: $64
	ld   de, $1111                                   ; $50ef: $11 $11 $11
	ld   [hl], $7f                                   ; $50f2: $36 $7f
	rst  $38                                         ; $50f4: $ff
	rst  $38                                         ; $50f5: $ff
	rst  $38                                         ; $50f6: $ff
	and  h                                           ; $50f7: $a4
	ld   [hl], c                                     ; $50f8: $71
	ld   de, $1211                                   ; $50f9: $11 $11 $12
	ld   e, b                                        ; $50fc: $58
	rst  JumpTable                                         ; $50fd: $df
	rst  $38                                         ; $50fe: $ff
	rst  $38                                         ; $50ff: $ff
	ei                                               ; $5100: $fb
	ld   d, [hl]                                     ; $5101: $56
	ld   de, $1111                                   ; $5102: $11 $11 $11
	ld   h, $7d                                      ; $5105: $26 $7d
	rst  $38                                         ; $5107: $ff
	rst  $38                                         ; $5108: $ff
	rst  $38                                         ; $5109: $ff
	push bc                                          ; $510a: $c5
	ld   [hl], c                                     ; $510b: $71
	ld   de, $1111                                   ; $510c: $11 $11 $11
	ld   h, a                                        ; $510f: $67
	rst  JumpTable                                         ; $5110: $df
	rst  $38                                         ; $5111: $ff
	rst  $38                                         ; $5112: $ff
	ld   sp, hl                                      ; $5113: $f9
	ld   [hl], a                                     ; $5114: $77
	ld   de, $1111                                   ; $5115: $11 $11 $11
	ld   d, $7d                                      ; $5118: $16 $7d
	rst  $38                                         ; $511a: $ff
	rst  $38                                         ; $511b: $ff
	rst  $38                                         ; $511c: $ff
	and  l                                           ; $511d: $a5
	ld   h, c                                        ; $511e: $61
	ld   de, $1211                                   ; $511f: $11 $11 $12
	ld   a, c                                        ; $5122: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5123: $cf
	rst  $38                                         ; $5124: $ff
	rst  $38                                         ; $5125: $ff
	ld   sp, hl                                      ; $5126: $f9
	halt                                             ; $5127: $76
	ld   de, $1111                                   ; $5128: $11 $11 $11
	jr   jr_0b4_51ab                                 ; $512b: $18 $7e

	rst  $38                                         ; $512d: $ff
	rst  $38                                         ; $512e: $ff
	rst  $38                                         ; $512f: $ff
	and  e                                           ; $5130: $a3
	ld   [hl], c                                     ; $5131: $71
	ld   de, $1211                                   ; $5132: $11 $11 $12
	ld   e, c                                        ; $5135: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5136: $cf
	rst  $38                                         ; $5137: $ff
	rst  $38                                         ; $5138: $ff
	ld   a, [$1146]                                  ; $5139: $fa $46 $11
	ld   de, $2811                                   ; $513c: $11 $11 $28
	adc  [hl]                                        ; $513f: $8e
	rst  $38                                         ; $5140: $ff
	rst  $38                                         ; $5141: $ff
	rst  $38                                         ; $5142: $ff
	or   e                                           ; $5143: $b3
	ld   d, c                                        ; $5144: $51
	ld   de, $1611                                   ; $5145: $11 $11 $16
	ld   [hl], l                                     ; $5148: $75
	rst  $38                                         ; $5149: $ff
	rst  $38                                         ; $514a: $ff
	rst  $38                                         ; $514b: $ff
	ld   hl, sp+$29                                  ; $514c: $f8 $29
	ld   de, $1111                                   ; $514e: $11 $11 $11
	ld   h, h                                        ; $5151: $64
	xor  a                                           ; $5152: $af
	rst  $38                                         ; $5153: $ff
	rst  $38                                         ; $5154: $ff
	rst  $38                                         ; $5155: $ff
	ld   h, a                                        ; $5156: $67
	ld   b, c                                        ; $5157: $41
	ld   de, $1511                                   ; $5158: $11 $11 $15
	sbc  b                                           ; $515b: $98
	rst  $38                                         ; $515c: $ff
	rst  $38                                         ; $515d: $ff
	rst  $38                                         ; $515e: $ff
	reti                                             ; $515f: $d9


	ld   d, d                                        ; $5160: $52
	ld   de, $1111                                   ; $5161: $11 $11 $11
	sub  [hl]                                        ; $5164: $96
	ld   l, a                                        ; $5165: $6f
	rst  $38                                         ; $5166: $ff
	rst  $38                                         ; $5167: $ff
	rst  $38                                         ; $5168: $ff
	sub  e                                           ; $5169: $93
	ld   d, c                                        ; $516a: $51
	ld   de, $1a11                                   ; $516b: $11 $11 $1a
	ld   l, c                                        ; $516e: $69
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	rst  $38                                         ; $5171: $ff
	sub  $53                                         ; $5172: $d6 $53
	ld   de, $1111                                   ; $5174: $11 $11 $11
	halt                                             ; $5177: $76
	xor  a                                           ; $5178: $af
	rst  $38                                         ; $5179: $ff
	rst  $38                                         ; $517a: $ff
	ld   a, [$1196]                                  ; $517b: $fa $96 $11
	ld   de, $1b11                                   ; $517e: $11 $11 $1b
	ld   a, c                                        ; $5181: $79
	rst  $38                                         ; $5182: $ff
	rst  $38                                         ; $5183: $ff
	rst  $38                                         ; $5184: $ff
	sub  $21                                         ; $5185: $d6 $21
	ld   de, $1111                                   ; $5187: $11 $11 $11
	sub  [hl]                                        ; $518a: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $518b: $cf
	rst  $38                                         ; $518c: $ff
	rst  $38                                         ; $518d: $ff
	db   $fc                                         ; $518e: $fc
	ld   b, l                                        ; $518f: $45
	ld   de, $1111                                   ; $5190: $11 $11 $11
	jr   z, @-$72                                    ; $5193: $28 $8c

	rst  $38                                         ; $5195: $ff
	rst  $38                                         ; $5196: $ff
	rst  $38                                         ; $5197: $ff
	call nz, $1121                                   ; $5198: $c4 $21 $11
	ld   de, $c514                                   ; $519b: $11 $14 $c5
	rst  $38                                         ; $519e: $ff
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	ld   sp, hl                                      ; $51a1: $f9
	ld   d, $11                                      ; $51a2: $16 $11
	ld   de, $3b11                                   ; $51a4: $11 $11 $3b
	ld   a, [hl]                                     ; $51a7: $7e
	rst  $38                                         ; $51a8: $ff
	rst  $38                                         ; $51a9: $ff
	rst  $38                                         ; $51aa: $ff

jr_0b4_51ab:
	and  e                                           ; $51ab: $a3
	ld   sp, $1111                                   ; $51ac: $31 $11 $11
	inc  d                                           ; $51af: $14
	or   [hl]                                        ; $51b0: $b6
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	rst  $38                                         ; $51b3: $ff
	db   $fc                                         ; $51b4: $fc
	inc  hl                                          ; $51b5: $23
	ld   de, $1111                                   ; $51b6: $11 $11 $11
	ld   a, b                                        ; $51b9: $78
	ld   l, a                                        ; $51ba: $6f
	rst  $38                                         ; $51bb: $ff
	rst  $38                                         ; $51bc: $ff
	rst  $38                                         ; $51bd: $ff
	call nz, $1111                                   ; $51be: $c4 $11 $11
	ld   de, $f812                                   ; $51c1: $11 $12 $f8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51c4: $cf
	rst  $38                                         ; $51c5: $ff
	rst  $38                                         ; $51c6: $ff
	cp   $12                                         ; $51c7: $fe $12
	ld   de, $1111                                   ; $51c9: $11 $11 $11
	dec  a                                           ; $51cc: $3d
	adc  a                                           ; $51cd: $8f
	rst  $38                                         ; $51ce: $ff
	rst  $38                                         ; $51cf: $ff
	rst  $38                                         ; $51d0: $ff
	pop  af                                          ; $51d1: $f1
	ld   de, $1111                                   ; $51d2: $11 $11 $11
	ld   de, $ffcb                                   ; $51d5: $11 $cb $ff
	rst  $38                                         ; $51d8: $ff
	rst  $38                                         ; $51d9: $ff
	ei                                               ; $51da: $fb
	ld   h, c                                        ; $51db: $61
	ld   de, $1111                                   ; $51dc: $11 $11 $11
	inc  e                                           ; $51df: $1c
	call c, $ffff                                    ; $51e0: $dc $ff $ff
	rst  $38                                         ; $51e3: $ff
	ld   hl, sp+$11                                  ; $51e4: $f8 $11
	ld   de, $1111                                   ; $51e6: $11 $11 $11
	xor  e                                           ; $51e9: $ab
	rst  $28                                         ; $51ea: $ef
	rst  $38                                         ; $51eb: $ff
	rst  $38                                         ; $51ec: $ff
	rst  $38                                         ; $51ed: $ff
	pop  bc                                          ; $51ee: $c1
	ld   de, $1111                                   ; $51ef: $11 $11 $11
	rla                                              ; $51f2: $17
	db   $db                                         ; $51f3: $db
	rst  $38                                         ; $51f4: $ff
	rst  $38                                         ; $51f5: $ff
	rst  $38                                         ; $51f6: $ff
	db   $fd                                         ; $51f7: $fd
	ld   sp, $1111                                   ; $51f8: $31 $11 $11
	ld   de, $cf1d                                   ; $51fb: $11 $1d $cf
	rst  $38                                         ; $51fe: $ff
	rst  $38                                         ; $51ff: $ff
	rst  $38                                         ; $5200: $ff
	or   $11                                         ; $5201: $f6 $11
	ld   de, $1111                                   ; $5203: $11 $11 $11
	sbc  a                                           ; $5206: $9f
	rst  $38                                         ; $5207: $ff
	rst  $38                                         ; $5208: $ff
	rst  $38                                         ; $5209: $ff
	rst  $38                                         ; $520a: $ff
	pop  de                                          ; $520b: $d1
	ld   de, $1111                                   ; $520c: $11 $11 $11
	inc  de                                          ; $520f: $13
	rst  $28                                         ; $5210: $ef
	rst  $38                                         ; $5211: $ff
	rst  $38                                         ; $5212: $ff
	rst  $38                                         ; $5213: $ff
	cp   $51                                         ; $5214: $fe $51
	ld   de, $1111                                   ; $5216: $11 $11 $11
	ld   a, [de]                                     ; $5219: $1a
	rst  $38                                         ; $521a: $ff
	rst  $38                                         ; $521b: $ff
	rst  $38                                         ; $521c: $ff
	rst  $38                                         ; $521d: $ff
	db   $fc                                         ; $521e: $fc
	ld   de, $1111                                   ; $521f: $11 $11 $11
	ld   de, $ff3e                                   ; $5222: $11 $3e $ff
	rst  $38                                         ; $5225: $ff
	rst  $38                                         ; $5226: $ff
	rst  $38                                         ; $5227: $ff
	db   $e3                                         ; $5228: $e3
	ld   de, $1111                                   ; $5229: $11 $11 $11
	ld   de, $ff9f                                   ; $522c: $11 $9f $ff
	rst  $38                                         ; $522f: $ff
	rst  $38                                         ; $5230: $ff
	db   $fd                                         ; $5231: $fd
	pop  bc                                          ; $5232: $c1
	ld   de, $1111                                   ; $5233: $11 $11 $11
	ld   d, $df                                      ; $5236: $16 $df
	rst  $38                                         ; $5238: $ff
	rst  $38                                         ; $5239: $ff
	rst  $38                                         ; $523a: $ff
	rst  $38                                         ; $523b: $ff
	ld   d, c                                        ; $523c: $51
	ld   de, $1111                                   ; $523d: $11 $11 $11
	daa                                              ; $5240: $27
	rst  $38                                         ; $5241: $ff
	rst  $38                                         ; $5242: $ff
	rst  $38                                         ; $5243: $ff
	rst  $38                                         ; $5244: $ff
	db   $fc                                         ; $5245: $fc
	ld   hl, $1111                                   ; $5246: $21 $11 $11
	ld   de, $ff29                                   ; $5249: $11 $29 $ff
	rst  $38                                         ; $524c: $ff
	rst  $38                                         ; $524d: $ff
	rst  $38                                         ; $524e: $ff
	ld   hl, sp+$11                                  ; $524f: $f8 $11
	ld   de, $1111                                   ; $5251: $11 $11 $11
	ld   a, e                                        ; $5254: $7b
	rst  $38                                         ; $5255: $ff
	rst  $38                                         ; $5256: $ff
	rst  $38                                         ; $5257: $ff
	rst  $38                                         ; $5258: $ff
	push hl                                          ; $5259: $e5
	ld   de, $1111                                   ; $525a: $11 $11 $11
	ld   de, $ff6d                                   ; $525d: $11 $6d $ff
	rst  $38                                         ; $5260: $ff
	rst  $38                                         ; $5261: $ff
	rst  $38                                         ; $5262: $ff
	db   $f4                                         ; $5263: $f4
	ld   de, $1111                                   ; $5264: $11 $11 $11
	ld   de, $ff9e                                   ; $5267: $11 $9e $ff
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	rst  $38                                         ; $526c: $ff
	ldh  a, [c]                                      ; $526d: $f2
	ld   de, $1111                                   ; $526e: $11 $11 $11
	ld   de, $ff7d                                   ; $5271: $11 $7d $ff
	rst  $38                                         ; $5274: $ff
	rst  $38                                         ; $5275: $ff
	rst  $38                                         ; $5276: $ff
	rst  $30                                         ; $5277: $f7
	ld   de, $1111                                   ; $5278: $11 $11 $11
	ld   de, $ff6f                                   ; $527b: $11 $6f $ff
	rst  $38                                         ; $527e: $ff
	rst  $38                                         ; $527f: $ff
	rst  $38                                         ; $5280: $ff
	ld   a, [$1111]                                  ; $5281: $fa $11 $11
	ld   de, $3f11                                   ; $5284: $11 $11 $3f
	rst  $38                                         ; $5287: $ff
	rst  $38                                         ; $5288: $ff
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	cp   $31                                         ; $528b: $fe $31
	ld   de, $1111                                   ; $528d: $11 $11 $11
	dec  e                                           ; $5290: $1d
	rst  $38                                         ; $5291: $ff
	rst  $38                                         ; $5292: $ff
	rst  $38                                         ; $5293: $ff
	rst  $38                                         ; $5294: $ff
	rst  $38                                         ; $5295: $ff
	ld   b, c                                        ; $5296: $41
	ld   de, $1111                                   ; $5297: $11 $11 $11
	ld   d, $ff                                      ; $529a: $16 $ff
	rst  $38                                         ; $529c: $ff
	rst  $38                                         ; $529d: $ff
	rst  $38                                         ; $529e: $ff
	rst  $38                                         ; $529f: $ff
	and  c                                           ; $52a0: $a1
	ld   de, $1111                                   ; $52a1: $11 $11 $11
	ld   de, $ffcf                                   ; $52a4: $11 $cf $ff
	rst  $38                                         ; $52a7: $ff
	rst  $38                                         ; $52a8: $ff
	rst  $38                                         ; $52a9: $ff
	di                                               ; $52aa: $f3
	ld   de, $1111                                   ; $52ab: $11 $11 $11
	ld   de, $ff1f                                   ; $52ae: $11 $1f $ff
	rst  $38                                         ; $52b1: $ff
	rst  $38                                         ; $52b2: $ff
	rst  $38                                         ; $52b3: $ff
	ld   sp, hl                                      ; $52b4: $f9
	ld   de, $1111                                   ; $52b5: $11 $11 $11
	ld   de, $ff15                                   ; $52b8: $11 $15 $ff
	rst  $38                                         ; $52bb: $ff
	rst  $38                                         ; $52bc: $ff
	rst  $38                                         ; $52bd: $ff
	rst  $38                                         ; $52be: $ff
	ld   [hl], c                                     ; $52bf: $71
	ld   de, $1111                                   ; $52c0: $11 $11 $11
	ld   de, $ff8f                                   ; $52c3: $11 $8f $ff
	rst  $38                                         ; $52c6: $ff
	rst  $38                                         ; $52c7: $ff
	rst  $38                                         ; $52c8: $ff
	rst  $30                                         ; $52c9: $f7
	ld   de, $1111                                   ; $52ca: $11 $11 $11
	ld   de, $ff1a                                   ; $52cd: $11 $1a $ff
	rst  $38                                         ; $52d0: $ff
	rst  $38                                         ; $52d1: $ff
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	or   c                                           ; $52d4: $b1
	ld   de, $1111                                   ; $52d5: $11 $11 $11
	ld   de, $ff9f                                   ; $52d8: $11 $9f $ff
	rst  $38                                         ; $52db: $ff
	rst  $38                                         ; $52dc: $ff
	rst  $38                                         ; $52dd: $ff
	db   $fd                                         ; $52de: $fd
	ld   hl, $1111                                   ; $52df: $21 $11 $11
	ld   de, $cf14                                   ; $52e2: $11 $14 $cf
	rst  $38                                         ; $52e5: $ff
	rst  $38                                         ; $52e6: $ff
	rst  $38                                         ; $52e7: $ff
	rst  $38                                         ; $52e8: $ff
	rst  $30                                         ; $52e9: $f7
	ld   de, $1111                                   ; $52ea: $11 $11 $11
	ld   de, $ff1b                                   ; $52ed: $11 $1b $ff
	rst  $38                                         ; $52f0: $ff
	rst  $38                                         ; $52f1: $ff
	rst  $38                                         ; $52f2: $ff
	rst  $38                                         ; $52f3: $ff
	ldh  a, [c]                                      ; $52f4: $f2
	ld   de, $1111                                   ; $52f5: $11 $11 $11
	ld   de, $ff4d                                   ; $52f8: $11 $4d $ff
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	rst  $38                                         ; $52fd: $ff
	rst  $38                                         ; $52fe: $ff
	add  c                                           ; $52ff: $81
	ld   de, $1111                                   ; $5300: $11 $11 $11
	ld   de, $ff7f                                   ; $5303: $11 $7f $ff
	rst  $38                                         ; $5306: $ff
	rst  $38                                         ; $5307: $ff
	rst  $38                                         ; $5308: $ff
	rst  $38                                         ; $5309: $ff
	or   c                                           ; $530a: $b1
	ld   de, $1111                                   ; $530b: $11 $11 $11
	ld   de, $ff7f                                   ; $530e: $11 $7f $ff
	rst  $38                                         ; $5311: $ff
	rst  $38                                         ; $5312: $ff
	rst  $38                                         ; $5313: $ff
	rst  $38                                         ; $5314: $ff
	ld   h, c                                        ; $5315: $61
	ld   de, $1111                                   ; $5316: $11 $11 $11
	ld   de, $ffaf                                   ; $5319: $11 $af $ff
	rst  $38                                         ; $531c: $ff
	rst  $38                                         ; $531d: $ff
	rst  $38                                         ; $531e: $ff
	rst  $38                                         ; $531f: $ff
	ld   d, c                                        ; $5320: $51
	ld   de, $1111                                   ; $5321: $11 $11 $11
	ld   de, $ffaf                                   ; $5324: $11 $af $ff
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	rst  $38                                         ; $532a: $ff
	sub  c                                           ; $532b: $91
	ld   de, $1111                                   ; $532c: $11 $11 $11
	ld   de, $ff7f                                   ; $532f: $11 $7f $ff
	rst  $38                                         ; $5332: $ff
	rst  $38                                         ; $5333: $ff
	rst  $38                                         ; $5334: $ff
	rst  $38                                         ; $5335: $ff
	db   $e3                                         ; $5336: $e3
	ld   de, $1111                                   ; $5337: $11 $11 $11
	ld   de, $ff2b                                   ; $533a: $11 $2b $ff
	rst  $38                                         ; $533d: $ff
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	rst  $38                                         ; $5340: $ff
	rst  $30                                         ; $5341: $f7
	ld   de, $1111                                   ; $5342: $11 $11 $11
	ld   de, $ff17                                   ; $5345: $11 $17 $ff
	rst  $38                                         ; $5348: $ff
	rst  $38                                         ; $5349: $ff
	rst  $38                                         ; $534a: $ff
	rst  $38                                         ; $534b: $ff
	cp   $11                                         ; $534c: $fe $11
	ld   de, $1111                                   ; $534e: $11 $11 $11
	ld   de, $ffcf                                   ; $5351: $11 $cf $ff
	rst  $38                                         ; $5354: $ff
	cp   $ff                                         ; $5355: $fe $ff
	rst  $38                                         ; $5357: $ff
	or   c                                           ; $5358: $b1
	ld   de, $1111                                   ; $5359: $11 $11 $11
	ld   de, $ff3e                                   ; $535c: $11 $3e $ff
	rst  $38                                         ; $535f: $ff
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	rst  $38                                         ; $5362: $ff
	ei                                               ; $5363: $fb
	ld   de, $1111                                   ; $5364: $11 $11 $11
	ld   de, $cf15                                   ; $5367: $11 $15 $cf
	rst  $38                                         ; $536a: $ff
	rst  $38                                         ; $536b: $ff
	xor  $ff                                         ; $536c: $ee $ff
	rst  $38                                         ; $536e: $ff
	pop  bc                                          ; $536f: $c1
	ld   de, $1111                                   ; $5370: $11 $11 $11
	ld   de, $ff3c                                   ; $5373: $11 $3c $ff
	rst  $38                                         ; $5376: $ff
	rst  $38                                         ; $5377: $ff
	rst  $38                                         ; $5378: $ff
	rst  $38                                         ; $5379: $ff
	cp   $21                                         ; $537a: $fe $21
	ld   de, $1111                                   ; $537c: $11 $11 $11
	inc  de                                          ; $537f: $13
	adc  a                                           ; $5380: $8f
	rst  $38                                         ; $5381: $ff
	rst  $38                                         ; $5382: $ff
	db   $fc                                         ; $5383: $fc
	rst  $38                                         ; $5384: $ff
	rst  $38                                         ; $5385: $ff
	rst  $30                                         ; $5386: $f7
	ld   de, $1111                                   ; $5387: $11 $11 $11
	ld   de, $ff18                                   ; $538a: $11 $18 $ff
	rst  $38                                         ; $538d: $ff
	rst  $38                                         ; $538e: $ff
	cp   l                                           ; $538f: $bd
	rst  $38                                         ; $5390: $ff
	rst  $38                                         ; $5391: $ff
	sub  c                                           ; $5392: $91
	ld   de, $1111                                   ; $5393: $11 $11 $11

Jump_0b4_5396:
	ld   de, $ff6f                                   ; $5396: $11 $6f $ff
	rst  $38                                         ; $5399: $ff
	db   $fc                                         ; $539a: $fc
	rst  JumpTable                                         ; $539b: $df
	rst  $38                                         ; $539c: $ff
	db   $fd                                         ; $539d: $fd
	ld   de, $1111                                   ; $539e: $11 $11 $11
	ld   de, $9f13                                   ; $53a1: $11 $13 $9f
	rst  $38                                         ; $53a4: $ff
	rst  $38                                         ; $53a5: $ff
	db   $dd                                         ; $53a6: $dd
	rst  JumpTable                                         ; $53a7: $df
	rst  $38                                         ; $53a8: $ff
	ei                                               ; $53a9: $fb
	ld   de, $1111                                   ; $53aa: $11 $11 $11
	ld   de, $af13                                   ; $53ad: $11 $13 $af
	rst  $38                                         ; $53b0: $ff
	rst  $38                                         ; $53b1: $ff
	ei                                               ; $53b2: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53b3: $cf
	rst  $38                                         ; $53b4: $ff
	ei                                               ; $53b5: $fb
	ld   de, $1111                                   ; $53b6: $11 $11 $11
	ld   de, $cf14                                   ; $53b9: $11 $14 $cf
	rst  $38                                         ; $53bc: $ff
	rst  $38                                         ; $53bd: $ff
	cp   $ef                                         ; $53be: $fe $ef
	rst  $38                                         ; $53c0: $ff
	ld   hl, sp+$11                                  ; $53c1: $f8 $11
	ld   de, $1111                                   ; $53c3: $11 $11 $11
	ld   de, $ff9f                                   ; $53c6: $11 $9f $ff
	rst  $38                                         ; $53c9: $ff
	ld   [$ffcf], a                                  ; $53ca: $ea $cf $ff
	ei                                               ; $53cd: $fb
	ld   de, $1111                                   ; $53ce: $11 $11 $11
	ld   de, $6f22                                   ; $53d1: $11 $22 $6f
	rst  $38                                         ; $53d4: $ff
	rst  $38                                         ; $53d5: $ff
	ei                                               ; $53d6: $fb
	sbc  a                                           ; $53d7: $9f
	rst  $38                                         ; $53d8: $ff
	cp   $11                                         ; $53d9: $fe $11
	ld   de, $1111                                   ; $53db: $11 $11 $11
	ld   de, $ff4c                                   ; $53de: $11 $4c $ff
	rst  $38                                         ; $53e1: $ff
	ld   a, [$ff8a]                                  ; $53e2: $fa $8a $ff
	rst  $38                                         ; $53e5: $ff
	ld   h, c                                        ; $53e6: $61
	ld   de, $1311                                   ; $53e7: $11 $11 $13
	ld   b, e                                        ; $53ea: $43
	ld   d, $ff                                      ; $53eb: $16 $ff
	rst  $38                                         ; $53ed: $ff
	rst  $38                                         ; $53ee: $ff
	ld   h, h                                        ; $53ef: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53f0: $cf
	rst  $38                                         ; $53f1: $ff
	pop  de                                          ; $53f2: $d1
	ld   de, $1111                                   ; $53f3: $11 $11 $11
	ld   d, e                                        ; $53f6: $53
	inc  [hl]                                        ; $53f7: $34
	cp   a                                           ; $53f8: $bf
	rst  $38                                         ; $53f9: $ff
	rst  $38                                         ; $53fa: $ff
	cp   d                                           ; $53fb: $ba
	adc  a                                           ; $53fc: $8f
	rst  $38                                         ; $53fd: $ff
	ld   hl, sp+$11                                  ; $53fe: $f8 $11
	ld   de, $2511                                   ; $5400: $11 $11 $25
	ld   sp, $ff5f                                   ; $5403: $31 $5f $ff
	rst  $38                                         ; $5406: $ff
	ld   sp, hl                                      ; $5407: $f9
	ld   e, e                                        ; $5408: $5b
	rst  $38                                         ; $5409: $ff
	rst  $38                                         ; $540a: $ff
	ld   hl, $1111                                   ; $540b: $21 $11 $11
	dec  d                                           ; $540e: $15
	ld   d, h                                        ; $540f: $54
	ld   h, $ff                                      ; $5410: $26 $ff
	rst  $38                                         ; $5412: $ff
	rst  $38                                         ; $5413: $ff
	and  [hl]                                        ; $5414: $a6
	xor  a                                           ; $5415: $af
	rst  $38                                         ; $5416: $ff
	pop  af                                          ; $5417: $f1
	ld   de, $1111                                   ; $5418: $11 $11 $11
	ld   h, [hl]                                     ; $541b: $66
	inc  sp                                          ; $541c: $33
	sbc  a                                           ; $541d: $9f
	rst  $38                                         ; $541e: $ff
	rst  $38                                         ; $541f: $ff
	rst  $30                                         ; $5420: $f7
	ld   l, e                                        ; $5421: $6b
	rst  $38                                         ; $5422: $ff
	db   $fd                                         ; $5423: $fd
	ld   de, $1111                                   ; $5424: $11 $11 $11
	ld   h, $62                                      ; $5427: $26 $62
	jr   z, @+$01                                    ; $5429: $28 $ff

	rst  $38                                         ; $542b: $ff
	rst  $38                                         ; $542c: $ff
	ld   h, l                                        ; $542d: $65
	xor  a                                           ; $542e: $af
	rst  $38                                         ; $542f: $ff
	pop  de                                          ; $5430: $d1
	ld   de, $1411                                   ; $5431: $11 $11 $14
	ld   h, l                                        ; $5434: $65
	ld   sp, $ff8f                                   ; $5435: $31 $8f $ff
	rst  $38                                         ; $5438: $ff
	push af                                          ; $5439: $f5
	add  hl, hl                                      ; $543a: $29
	rst  $38                                         ; $543b: $ff
	db   $fd                                         ; $543c: $fd
	ld   de, $1111                                   ; $543d: $11 $11 $11
	ld   [hl], $43                                   ; $5440: $36 $43
	jr   c, @+$01                                    ; $5442: $38 $ff

	rst  $38                                         ; $5444: $ff
	db   $fd                                         ; $5445: $fd
	ld   [hl], h                                     ; $5446: $74
	xor  a                                           ; $5447: $af
	rst  $38                                         ; $5448: $ff
	pop  af                                          ; $5449: $f1
	ld   de, $1211                                   ; $544a: $11 $11 $12
	ld   b, d                                        ; $544d: $42
	ld   de, $ff5f                                   ; $544e: $11 $5f $ff
	rst  $38                                         ; $5451: $ff
	or   $26                                         ; $5452: $f6 $26
	rst  $38                                         ; $5454: $ff
	rst  $38                                         ; $5455: $ff
	ld   sp, $1111                                   ; $5456: $31 $11 $11
	inc  de                                          ; $5459: $13
	ld   b, c                                        ; $545a: $41
	inc  d                                           ; $545b: $14
	rst  $28                                         ; $545c: $ef
	rst  $38                                         ; $545d: $ff
	rst  $38                                         ; $545e: $ff
	and  h                                           ; $545f: $a4
	ld   e, [hl]                                     ; $5460: $5e
	rst  $38                                         ; $5461: $ff
	ei                                               ; $5462: $fb
	ld   de, $1111                                   ; $5463: $11 $11 $11
	inc  d                                           ; $5466: $14
	ld   de, $ff19                                   ; $5467: $11 $19 $ff
	rst  $38                                         ; $546a: $ff
	cp   $55                                         ; $546b: $fe $55
	cp   a                                           ; $546d: $bf
	rst  $38                                         ; $546e: $ff
	pop  af                                          ; $546f: $f1
	ld   de, $1111                                   ; $5470: $11 $11 $11
	ld   b, d                                        ; $5473: $42
	ld   de, $ff2f                                   ; $5474: $11 $2f $ff
	rst  $38                                         ; $5477: $ff
	ld   hl, sp+$46                                  ; $5478: $f8 $46
	rst  $38                                         ; $547a: $ff
	rst  $38                                         ; $547b: $ff
	sub  c                                           ; $547c: $91
	ld   de, $1111                                   ; $547d: $11 $11 $11
	ld   d, c                                        ; $5480: $51
	ld   de, $ff8f                                   ; $5481: $11 $8f $ff
	rst  $38                                         ; $5484: $ff
	call nc, $ff59                                   ; $5485: $d4 $59 $ff
	rst  $38                                         ; $5488: $ff
	ld   de, $1111                                   ; $5489: $11 $11 $11
	ld   [de], a                                     ; $548c: $12
	ld   de, $ff16                                   ; $548d: $11 $16 $ff
	rst  $38                                         ; $5490: $ff
	rst  $38                                         ; $5491: $ff
	ld   h, h                                        ; $5492: $64
	xor  a                                           ; $5493: $af
	rst  $38                                         ; $5494: $ff
	db   $f4                                         ; $5495: $f4
	ld   de, $1111                                   ; $5496: $11 $11 $11
	ld   [de], a                                     ; $5499: $12
	ld   de, $ff2d                                   ; $549a: $11 $2d $ff
	rst  $38                                         ; $549d: $ff
	ld   hl, sp+$37                                  ; $549e: $f8 $37
	rst  $38                                         ; $54a0: $ff
	rst  $38                                         ; $54a1: $ff
	and  c                                           ; $54a2: $a1
	ld   de, $1311                                   ; $54a3: $11 $11 $13
	ld   b, c                                        ; $54a6: $41
	ld   de, $ffaf                                   ; $54a7: $11 $af $ff
	rst  $38                                         ; $54aa: $ff
	call nz, $ff4b                                   ; $54ab: $c4 $4b $ff
	rst  $38                                         ; $54ae: $ff
	ld   de, $1111                                   ; $54af: $11 $11 $11
	inc  d                                           ; $54b2: $14
	ld   hl, $ff17                                   ; $54b3: $21 $17 $ff
	rst  $38                                         ; $54b6: $ff
	rst  $38                                         ; $54b7: $ff
	ld   h, l                                        ; $54b8: $65
	adc  a                                           ; $54b9: $8f
	rst  $38                                         ; $54ba: $ff
	pop  af                                          ; $54bb: $f1
	ld   de, $1111                                   ; $54bc: $11 $11 $11
	ld   d, [hl]                                     ; $54bf: $56
	ld   b, e                                        ; $54c0: $43
	ld   a, a                                        ; $54c1: $7f
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	rst  $30                                         ; $54c4: $f7
	ld   d, [hl]                                     ; $54c5: $56
	rst  $38                                         ; $54c6: $ff
	rst  $38                                         ; $54c7: $ff
	ld   sp, $1111                                   ; $54c8: $31 $11 $11
	inc  d                                           ; $54cb: $14
	ld   h, h                                        ; $54cc: $64
	ld   c, c                                        ; $54cd: $49
	rst  $38                                         ; $54ce: $ff
	rst  $38                                         ; $54cf: $ff
	rst  $38                                         ; $54d0: $ff
	halt                                             ; $54d1: $76
	adc  a                                           ; $54d2: $8f
	rst  $38                                         ; $54d3: $ff
	ldh  a, [c]                                      ; $54d4: $f2
	ld   de, $1111                                   ; $54d5: $11 $11 $11
	ld   h, a                                        ; $54d8: $67
	ld   d, c                                        ; $54d9: $51
	ld   l, a                                        ; $54da: $6f
	rst  $38                                         ; $54db: $ff
	rst  $38                                         ; $54dc: $ff
	ld   sp, hl                                      ; $54dd: $f9
	ld   c, b                                        ; $54de: $48
	rst  $38                                         ; $54df: $ff
	rst  $38                                         ; $54e0: $ff
	ld   hl, $1111                                   ; $54e1: $21 $11 $11
	rla                                              ; $54e4: $17
	add  [hl]                                        ; $54e5: $86
	ld   l, b                                        ; $54e6: $68
	rst  $38                                         ; $54e7: $ff
	rst  $38                                         ; $54e8: $ff
	rst  $38                                         ; $54e9: $ff
	add  l                                           ; $54ea: $85
	ld   a, a                                        ; $54eb: $7f
	rst  $38                                         ; $54ec: $ff
	pop  af                                          ; $54ed: $f1
	ld   de, $1111                                   ; $54ee: $11 $11 $11
	xor  d                                           ; $54f1: $aa
	ld   [hl], a                                     ; $54f2: $77
	sbc  a                                           ; $54f3: $9f
	rst  $38                                         ; $54f4: $ff
	rst  $38                                         ; $54f5: $ff
	ld   hl, sp+$59                                  ; $54f6: $f8 $59
	rst  $38                                         ; $54f8: $ff
	ei                                               ; $54f9: $fb
	ld   de, $1111                                   ; $54fa: $11 $11 $11
	ld   c, e                                        ; $54fd: $4b
	ret  z                                           ; $54fe: $c8

	ld   a, l                                        ; $54ff: $7d
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	halt                                             ; $5503: $76
	cp   a                                           ; $5504: $bf
	rst  $38                                         ; $5505: $ff
	ld   [hl], c                                     ; $5506: $71
	ld   de, $1611                                   ; $5507: $11 $11 $16
	res  5, d                                        ; $550a: $cb $aa
	rst  $28                                         ; $550c: $ef
	rst  $38                                         ; $550d: $ff
	rst  $38                                         ; $550e: $ff
	or   a                                           ; $550f: $b7
	ld   l, [hl]                                     ; $5510: $6e
	rst  $38                                         ; $5511: $ff
	di                                               ; $5512: $f3
	ld   de, $1111                                   ; $5513: $11 $11 $11
	xor  a                                           ; $5516: $af
	reti                                             ; $5517: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5518: $cf
	rst  $38                                         ; $5519: $ff
	rst  $38                                         ; $551a: $ff
	ld   sp, hl                                      ; $551b: $f9
	ld   a, d                                        ; $551c: $7a
	rst  $38                                         ; $551d: $ff
	ld   a, [$1111]                                  ; $551e: $fa $11 $11
	ld   de, $ed5d                                   ; $5521: $11 $5d $ed
	cp   a                                           ; $5524: $bf
	rst  $38                                         ; $5525: $ff
	rst  $38                                         ; $5526: $ff
	cp   $88                                         ; $5527: $fe $88
	rst  $28                                         ; $5529: $ef
	rst  $38                                         ; $552a: $ff
	ld   de, $1111                                   ; $552b: $11 $11 $11
	add  hl, de                                      ; $552e: $19
	db   $ed                                         ; $552f: $ed
	cp   [hl]                                        ; $5530: $be
	rst  $38                                         ; $5531: $ff
	rst  $38                                         ; $5532: $ff
	rst  $38                                         ; $5533: $ff
	adc  b                                           ; $5534: $88
	cp   a                                           ; $5535: $bf
	rst  $38                                         ; $5536: $ff
	ld   h, c                                        ; $5537: $61
	ld   de, $1511                                   ; $5538: $11 $11 $15
	cp   l                                           ; $553b: $bd
	adc  $ff                                         ; $553c: $ce $ff
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff
	and  a                                           ; $5540: $a7
	cp   a                                           ; $5541: $bf
	rst  $38                                         ; $5542: $ff
	or   c                                           ; $5543: $b1
	ld   de, $1111                                   ; $5544: $11 $11 $11
	adc  h                                           ; $5547: $8c
	cp   [hl]                                        ; $5548: $be
	rst  $38                                         ; $5549: $ff
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	rst  ToBoot                                         ; $554c: $c7
	cp   a                                           ; $554d: $bf
	rst  $38                                         ; $554e: $ff
	pop  hl                                          ; $554f: $e1
	ld   de, $1111                                   ; $5550: $11 $11 $11
	adc  h                                           ; $5553: $8c
	cp   l                                           ; $5554: $bd
	rst  $38                                         ; $5555: $ff
	rst  $38                                         ; $5556: $ff
	rst  $38                                         ; $5557: $ff
	ret  c                                           ; $5558: $d8

	cp   a                                           ; $5559: $bf
	rst  $38                                         ; $555a: $ff
	ldh  [c], a                                      ; $555b: $e2
	ld   de, $1111                                   ; $555c: $11 $11 $11
	ld   c, e                                        ; $555f: $4b
	cp   l                                           ; $5560: $bd
	rst  $38                                         ; $5561: $ff
	rst  $38                                         ; $5562: $ff
	rst  $38                                         ; $5563: $ff
	jp   hl                                          ; $5564: $e9


	cp   a                                           ; $5565: $bf
	rst  $38                                         ; $5566: $ff
	db   $f4                                         ; $5567: $f4
	ld   de, $1111                                   ; $5568: $11 $11 $11
	rla                                              ; $556b: $17
	cp   h                                           ; $556c: $bc
	rst  $38                                         ; $556d: $ff
	rst  $38                                         ; $556e: $ff
	rst  $38                                         ; $556f: $ff
	ei                                               ; $5570: $fb
	xor  a                                           ; $5571: $af
	rst  $38                                         ; $5572: $ff
	or   $11                                         ; $5573: $f6 $11
	ld   de, $1711                                   ; $5575: $11 $11 $17
	cp   h                                           ; $5578: $bc
	rst  $38                                         ; $5579: $ff
	rst  $38                                         ; $557a: $ff
	rst  $38                                         ; $557b: $ff
	db   $fc                                         ; $557c: $fc
	xor  [hl]                                        ; $557d: $ae
	rst  $38                                         ; $557e: $ff
	or   $11                                         ; $557f: $f6 $11
	ld   de, $1511                                   ; $5581: $11 $11 $15
	xor  l                                           ; $5584: $ad
	rst  $38                                         ; $5585: $ff
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	db   $fd                                         ; $5588: $fd
	cp   [hl]                                        ; $5589: $be
	rst  $38                                         ; $558a: $ff
	rst  $30                                         ; $558b: $f7
	ld   de, $1111                                   ; $558c: $11 $11 $11
	dec  d                                           ; $558f: $15
	sbc  e                                           ; $5590: $9b
	rst  $38                                         ; $5591: $ff
	rst  $38                                         ; $5592: $ff
	rst  $38                                         ; $5593: $ff
	db   $fd                                         ; $5594: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5595: $cf
	rst  $38                                         ; $5596: $ff
	push hl                                          ; $5597: $e5
	ld   de, $1111                                   ; $5598: $11 $11 $11
	inc  d                                           ; $559b: $14
	sbc  h                                           ; $559c: $9c
	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	rst  $38                                         ; $559f: $ff
	db   $fd                                         ; $55a0: $fd
	rst  $28                                         ; $55a1: $ef
	rst  $38                                         ; $55a2: $ff
	and  $11                                         ; $55a3: $e6 $11
	ld   de, $1211                                   ; $55a5: $11 $11 $12
	ld   l, c                                        ; $55a8: $69
	rst  $28                                         ; $55a9: $ef
	rst  $38                                         ; $55aa: $ff
	rst  $38                                         ; $55ab: $ff
	rst  $38                                         ; $55ac: $ff
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	rst  $20                                         ; $55af: $e7
	ld   de, $1111                                   ; $55b0: $11 $11 $11
	ld   [de], a                                     ; $55b3: $12
	adc  d                                           ; $55b4: $8a
	rst  JumpTable                                         ; $55b5: $df
	rst  $38                                         ; $55b6: $ff
	rst  $38                                         ; $55b7: $ff
	rst  $38                                         ; $55b8: $ff
	rst  $28                                         ; $55b9: $ef
	rst  $38                                         ; $55ba: $ff
	and  $11                                         ; $55bb: $e6 $11
	ld   de, $1111                                   ; $55bd: $11 $11 $11
	ld   e, d                                        ; $55c0: $5a
	rst  JumpTable                                         ; $55c1: $df
	rst  $38                                         ; $55c2: $ff
	rst  $38                                         ; $55c3: $ff
	rst  $38                                         ; $55c4: $ff
	rst  $38                                         ; $55c5: $ff
	rst  $38                                         ; $55c6: $ff
	rst  $20                                         ; $55c7: $e7
	ld   de, $1111                                   ; $55c8: $11 $11 $11
	ld   de, $bf68                                   ; $55cb: $11 $68 $bf
	rst  $38                                         ; $55ce: $ff
	rst  $38                                         ; $55cf: $ff
	rst  $38                                         ; $55d0: $ff
	rst  $38                                         ; $55d1: $ff
	rst  $38                                         ; $55d2: $ff
	rst  $10                                         ; $55d3: $d7
	ld   de, $1111                                   ; $55d4: $11 $11 $11
	ld   de, $ae47                                   ; $55d7: $11 $47 $ae
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	rst  $38                                         ; $55dd: $ff
	rst  $38                                         ; $55de: $ff
	ret  c                                           ; $55df: $d8

	ld   hl, $1111                                   ; $55e0: $21 $11 $11
	ld   de, $7a46                                   ; $55e3: $11 $46 $7a
	rst  $38                                         ; $55e6: $ff
	rst  $38                                         ; $55e7: $ff
	rst  $38                                         ; $55e8: $ff
	rst  $38                                         ; $55e9: $ff
	cp   $d8                                         ; $55ea: $fe $d8
	ld   d, c                                        ; $55ec: $51
	ld   de, $1111                                   ; $55ed: $11 $11 $11
	dec  h                                           ; $55f0: $25
	ld   h, a                                        ; $55f1: $67
	adc  h                                           ; $55f2: $8c
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	db   $fc                                         ; $55f5: $fc
	db   $dd                                         ; $55f6: $dd
	cp   e                                           ; $55f7: $bb
	sub  [hl]                                        ; $55f8: $96
	ld   hl, $3511                                   ; $55f9: $21 $11 $35
	ld   h, a                                        ; $55fc: $67
	add  a                                           ; $55fd: $87
	ld   h, l                                        ; $55fe: $65
	ld   h, a                                        ; $55ff: $67
	adc  c                                           ; $5600: $89
	sbc  c                                           ; $5601: $99
	xor  d                                           ; $5602: $aa
	xor  d                                           ; $5603: $aa
	cp   h                                           ; $5604: $bc
	cp   h                                           ; $5605: $bc
	res  7, h                                        ; $5606: $cb $bc
	call z, $97aa                                    ; $5608: $cc $aa $97
	ld   h, l                                        ; $560b: $65
	ld   d, l                                        ; $560c: $55
	ld   d, l                                        ; $560d: $55
	ld   d, l                                        ; $560e: $55
	ld   d, [hl]                                     ; $560f: $56
	ld   h, a                                        ; $5610: $67
	ld   a, b                                        ; $5611: $78
	sbc  c                                           ; $5612: $99
	sbc  e                                           ; $5613: $9b
	cp   e                                           ; $5614: $bb
	res  7, d                                        ; $5615: $cb $ba
	xor  d                                           ; $5617: $aa
	sbc  d                                           ; $5618: $9a
	sbc  c                                           ; $5619: $99
	ld   [hl], a                                     ; $561a: $77
	ld   h, [hl]                                     ; $561b: $66
	ld   h, l                                        ; $561c: $65
	ld   d, [hl]                                     ; $561d: $56
	ld   h, [hl]                                     ; $561e: $66
	ld   [hl], a                                     ; $561f: $77
	adc  b                                           ; $5620: $88
	adc  c                                           ; $5621: $89
	sbc  c                                           ; $5622: $99
	sbc  c                                           ; $5623: $99
	sbc  c                                           ; $5624: $99
	xor  d                                           ; $5625: $aa
	xor  c                                           ; $5626: $a9
	sbc  b                                           ; $5627: $98
	sbc  b                                           ; $5628: $98
	adc  b                                           ; $5629: $88
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	adc  b                                           ; $562c: $88
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  b                                           ; $5631: $88
	ld   [hl], a                                     ; $5632: $77
	ld   [hl], a                                     ; $5633: $77
	ld   [hl], a                                     ; $5634: $77
	adc  b                                           ; $5635: $88
	adc  c                                           ; $5636: $89
	sbc  b                                           ; $5637: $98
	sbc  c                                           ; $5638: $99
	sbc  b                                           ; $5639: $98
	sbc  b                                           ; $563a: $98
	adc  b                                           ; $563b: $88
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	add  a                                           ; $563e: $87
	ld   [hl], a                                     ; $563f: $77
	halt                                             ; $5640: $76
	ld   h, a                                        ; $5641: $67
	ld   a, b                                        ; $5642: $78
	adc  c                                           ; $5643: $89
	adc  b                                           ; $5644: $88
	adc  c                                           ; $5645: $89
	sbc  c                                           ; $5646: $99
	adc  b                                           ; $5647: $88
	adc  b                                           ; $5648: $88
	adc  b                                           ; $5649: $88
	ld   [hl], a                                     ; $564a: $77
	ld   [hl], a                                     ; $564b: $77
	ld   a, b                                        ; $564c: $78
	adc  b                                           ; $564d: $88
	adc  b                                           ; $564e: $88
	sbc  c                                           ; $564f: $99
	adc  b                                           ; $5650: $88
	adc  b                                           ; $5651: $88
	sbc  b                                           ; $5652: $98
	ld   [hl], a                                     ; $5653: $77
	ld   a, b                                        ; $5654: $78
	adc  b                                           ; $5655: $88
	adc  b                                           ; $5656: $88
	add  a                                           ; $5657: $87
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
	add  a                                           ; $5663: $87
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	adc  b                                           ; $5666: $88
	adc  c                                           ; $5667: $89
	sbc  c                                           ; $5668: $99
	sbc  b                                           ; $5669: $98
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
	adc  c                                           ; $5680: $89
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

Call_0b4_5694:
	adc  b                                           ; $5694: $88
	adc  b                                           ; $5695: $88
	adc  b                                           ; $5696: $88
	adc  b                                           ; $5697: $88
	sbc  b                                           ; $5698: $98
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

Jump_0b4_5744:
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
	sbc  c                                           ; $57e4: $99
	sbc  c                                           ; $57e5: $99
	adc  b                                           ; $57e6: $88
	adc  b                                           ; $57e7: $88
	add  a                                           ; $57e8: $87
	ld   [hl], a                                     ; $57e9: $77
	ld   [hl], a                                     ; $57ea: $77
	ld   [hl], a                                     ; $57eb: $77
	ld   [hl], a                                     ; $57ec: $77
	adc  b                                           ; $57ed: $88
	adc  b                                           ; $57ee: $88
	adc  c                                           ; $57ef: $89
	sbc  c                                           ; $57f0: $99
	xor  d                                           ; $57f1: $aa
	sbc  c                                           ; $57f2: $99
	sub  a                                           ; $57f3: $97
	halt                                             ; $57f4: $76
	ld   d, [hl]                                     ; $57f5: $56
	ld   h, [hl]                                     ; $57f6: $66
	ld   [hl], a                                     ; $57f7: $77
	ld   a, b                                        ; $57f8: $78
	sbc  c                                           ; $57f9: $99
	xor  d                                           ; $57fa: $aa
	cp   e                                           ; $57fb: $bb
	xor  c                                           ; $57fc: $a9
	xor  d                                           ; $57fd: $aa
	sbc  c                                           ; $57fe: $99
	adc  b                                           ; $57ff: $88
	ld   h, h                                        ; $5800: $64
	inc  sp                                          ; $5801: $33
	ld   b, l                                        ; $5802: $45
	ld   h, a                                        ; $5803: $67
	adc  c                                           ; $5804: $89
	xor  e                                           ; $5805: $ab
	cp   h                                           ; $5806: $bc
	res  5, d                                        ; $5807: $cb $aa
	sbc  c                                           ; $5809: $99
	sbc  c                                           ; $580a: $99
	halt                                             ; $580b: $76
	ld   b, c                                        ; $580c: $41
	ld   de, $9936                                   ; $580d: $11 $36 $99
	xor  h                                           ; $5810: $ac
	rst  JumpTable                                         ; $5811: $df
	db   $dd                                         ; $5812: $dd
	res  5, c                                        ; $5813: $cb $a9
	sbc  b                                           ; $5815: $98
	add  a                                           ; $5816: $87
	ld   h, e                                        ; $5817: $63
	ld   de, $7a12                                   ; $5818: $11 $12 $7a
	cp   e                                           ; $581b: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $581c: $cf
	rst  $38                                         ; $581d: $ff
	res  7, c                                        ; $581e: $cb $b9
	xor  c                                           ; $5820: $a9
	adc  b                                           ; $5821: $88
	ld   [hl], l                                     ; $5822: $75
	ld   de, $3a11                                   ; $5823: $11 $11 $3a
	db   $db                                         ; $5826: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5827: $cf
	rst  $38                                         ; $5828: $ff
	ei                                               ; $5829: $fb
	xor  d                                           ; $582a: $aa
	xor  d                                           ; $582b: $aa
	sub  a                                           ; $582c: $97
	add  a                                           ; $582d: $87
	ld   sp, $1611                                   ; $582e: $31 $11 $16
	xor  $ce                                         ; $5831: $ee $ce
	rst  $38                                         ; $5833: $ff
	rst  $38                                         ; $5834: $ff
	xor  c                                           ; $5835: $a9
	sbc  d                                           ; $5836: $9a
	xor  b                                           ; $5837: $a8
	ld   [hl], a                                     ; $5838: $77
	ld   b, c                                        ; $5839: $41
	ld   de, $df13                                   ; $583a: $11 $13 $df
	cp   $ff                                         ; $583d: $fe $ff
	rst  $38                                         ; $583f: $ff
	cp   b                                           ; $5840: $b8
	adc  e                                           ; $5841: $8b
	db   $db                                         ; $5842: $db
	sub  a                                           ; $5843: $97
	ld   b, c                                        ; $5844: $41
	ld   de, $cf11                                   ; $5845: $11 $11 $cf
	rst  $38                                         ; $5848: $ff
	rst  $38                                         ; $5849: $ff
	rst  $38                                         ; $584a: $ff
	or   a                                           ; $584b: $b7
	ld   l, d                                        ; $584c: $6a
	db   $ec                                         ; $584d: $ec
	sbc  b                                           ; $584e: $98
	ld   d, c                                        ; $584f: $51
	ld   de, $af11                                   ; $5850: $11 $11 $af
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	or   [hl]                                        ; $5856: $b6
	ld   e, b                                        ; $5857: $58
	rst  $38                                         ; $5858: $ff
	ret                                              ; $5859: $c9


	ld   d, c                                        ; $585a: $51
	ld   de, $9f11                                   ; $585b: $11 $11 $9f
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	or   l                                           ; $5861: $b5
	ld   b, a                                        ; $5862: $47
	rst  $38                                         ; $5863: $ff
	ld   [$1161], a                                  ; $5864: $ea $61 $11
	ld   de, $ff8f                                   ; $5867: $11 $8f $ff
	rst  $38                                         ; $586a: $ff
	rst  $38                                         ; $586b: $ff
	and  e                                           ; $586c: $a3
	ld   d, $ff                                      ; $586d: $16 $ff
	ei                                               ; $586f: $fb
	ld   h, c                                        ; $5870: $61
	ld   de, $af11                                   ; $5871: $11 $11 $af
	rst  $38                                         ; $5874: $ff
	rst  $38                                         ; $5875: $ff
	rst  $38                                         ; $5876: $ff
	sub  c                                           ; $5877: $91
	rla                                              ; $5878: $17
	rst  $38                                         ; $5879: $ff
	db   $fc                                         ; $587a: $fc
	ld   d, c                                        ; $587b: $51
	ld   de, $bf11                                   ; $587c: $11 $11 $bf
	rst  $38                                         ; $587f: $ff
	rst  $38                                         ; $5880: $ff
	rst  $38                                         ; $5881: $ff
	add  c                                           ; $5882: $81
	dec  d                                           ; $5883: $15
	rst  $38                                         ; $5884: $ff
	rst  $38                                         ; $5885: $ff
	ld   b, c                                        ; $5886: $41
	ld   de, rAUD1LEN                                   ; $5887: $11 $11 $ff
	rst  $38                                         ; $588a: $ff
	rst  $38                                         ; $588b: $ff
	rst  $38                                         ; $588c: $ff
	ld   hl, $ff1b                                   ; $588d: $21 $1b $ff
	cp   $31                                         ; $5890: $fe $31
	ld   de, rAUD1LEN                                   ; $5892: $11 $11 $ff
	rst  $38                                         ; $5895: $ff
	rst  $38                                         ; $5896: $ff
	rst  $38                                         ; $5897: $ff
	ld   de, $ff1a                                   ; $5898: $11 $1a $ff
	rst  $38                                         ; $589b: $ff
	ld   hl, $1111                                   ; $589c: $21 $11 $11
	rst  $38                                         ; $589f: $ff
	rst  $38                                         ; $58a0: $ff
	rst  $38                                         ; $58a1: $ff
	db   $fd                                         ; $58a2: $fd
	ld   de, $ff1d                                   ; $58a3: $11 $1d $ff
	rst  $38                                         ; $58a6: $ff
	ld   de, $1111                                   ; $58a7: $11 $11 $11
	rst  $38                                         ; $58aa: $ff
	rst  $38                                         ; $58ab: $ff
	rst  $38                                         ; $58ac: $ff
	rst  $30                                         ; $58ad: $f7
	ld   de, $ff2f                                   ; $58ae: $11 $2f $ff
	cp   $11                                         ; $58b1: $fe $11
	ld   de, rAUD1LEN                                   ; $58b3: $11 $11 $ff
	rst  $38                                         ; $58b6: $ff
	rst  $38                                         ; $58b7: $ff
	rst  $30                                         ; $58b8: $f7
	ld   de, $ff1f                                   ; $58b9: $11 $1f $ff
	db   $fd                                         ; $58bc: $fd
	ld   de, $1111                                   ; $58bd: $11 $11 $11
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	rst  $38                                         ; $58c2: $ff
	di                                               ; $58c3: $f3
	ld   de, $ff2f                                   ; $58c4: $11 $2f $ff
	db   $fc                                         ; $58c7: $fc
	ld   de, $1711                                   ; $58c8: $11 $11 $17
	rst  $38                                         ; $58cb: $ff
	rst  $38                                         ; $58cc: $ff
	rst  $38                                         ; $58cd: $ff
	or   c                                           ; $58ce: $b1
	ld   de, $ff9f                                   ; $58cf: $11 $9f $ff
	rst  $30                                         ; $58d2: $f7
	ld   de, $1e11                                   ; $58d3: $11 $11 $1e
	rst  $38                                         ; $58d6: $ff
	rst  $38                                         ; $58d7: $ff
	rst  $38                                         ; $58d8: $ff
	add  c                                           ; $58d9: $81
	ld   de, $ffbf                                   ; $58da: $11 $bf $ff
	pop  af                                          ; $58dd: $f1
	ld   de, $1f11                                   ; $58de: $11 $11 $1f
	rst  $38                                         ; $58e1: $ff
	rst  $38                                         ; $58e2: $ff
	cp   $11                                         ; $58e3: $fe $11
	ld   de, $ffff                                   ; $58e5: $11 $ff $ff
	pop  af                                          ; $58e8: $f1
	ld   de, $5f11                                   ; $58e9: $11 $11 $5f
	rst  $38                                         ; $58ec: $ff
	rst  $38                                         ; $58ed: $ff
	ld   a, [$1711]                                  ; $58ee: $fa $11 $17
	rst  $38                                         ; $58f1: $ff
	rst  $38                                         ; $58f2: $ff
	ld   [hl], c                                     ; $58f3: $71
	ld   de, rAUD1LEN                                   ; $58f4: $11 $11 $ff
	rst  $38                                         ; $58f7: $ff
	rst  $38                                         ; $58f8: $ff
	pop  af                                          ; $58f9: $f1
	ld   de, $ff1f                                   ; $58fa: $11 $1f $ff
	rst  $38                                         ; $58fd: $ff
	ld   de, $1211                                   ; $58fe: $11 $11 $12
	rst  $38                                         ; $5901: $ff
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	add  c                                           ; $5904: $81
	ld   de, $ff4f                                   ; $5905: $11 $4f $ff
	ld   sp, hl                                      ; $5908: $f9
	ld   de, $1f11                                   ; $5909: $11 $11 $1f
	rst  $38                                         ; $590c: $ff
	rst  $38                                         ; $590d: $ff
	rst  $38                                         ; $590e: $ff
	ld   de, rAUD1LEN                                   ; $590f: $11 $11 $ff
	rst  $38                                         ; $5912: $ff
	pop  af                                          ; $5913: $f1
	ld   de, $cf11                                   ; $5914: $11 $11 $cf
	rst  $38                                         ; $5917: $ff
	rst  $38                                         ; $5918: $ff
	or   $11                                         ; $5919: $f6 $11
	rla                                              ; $591b: $17
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	ld   hl, $1111                                   ; $591e: $21 $11 $11
	rst  $38                                         ; $5921: $ff
	rst  $38                                         ; $5922: $ff
	rst  $38                                         ; $5923: $ff
	or   c                                           ; $5924: $b1
	ld   de, $ff1f                                   ; $5925: $11 $1f $ff
	ei                                               ; $5928: $fb
	ld   de, $1f11                                   ; $5929: $11 $11 $1f
	rst  $38                                         ; $592c: $ff
	rst  $38                                         ; $592d: $ff
	rst  $38                                         ; $592e: $ff
	ld   de, $ef11                                   ; $592f: $11 $11 $ef
	rst  $38                                         ; $5932: $ff
	pop  af                                          ; $5933: $f1
	ld   de, $af11                                   ; $5934: $11 $11 $af
	rst  $38                                         ; $5937: $ff
	rst  $38                                         ; $5938: $ff
	or   $11                                         ; $5939: $f6 $11
	dec  d                                           ; $593b: $15
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	ld   hl, $1111                                   ; $593e: $21 $11 $11
	rst  $38                                         ; $5941: $ff
	rst  $38                                         ; $5942: $ff
	rst  $38                                         ; $5943: $ff
	and  c                                           ; $5944: $a1
	ld   de, $ff1f                                   ; $5945: $11 $1f $ff
	cp   $11                                         ; $5948: $fe $11
	ld   de, $ff1f                                   ; $594a: $11 $1f $ff
	rst  $38                                         ; $594d: $ff
	cp   $11                                         ; $594e: $fe $11
	ld   de, $ffbf                                   ; $5950: $11 $bf $ff
	pop  af                                          ; $5953: $f1
	ld   de, $ef11                                   ; $5954: $11 $11 $ef
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	rst  $30                                         ; $5959: $f7
	ld   de, rAUD1HIGH                                   ; $595a: $11 $14 $ff
	rst  $38                                         ; $595d: $ff
	ld   de, $1c11                                   ; $595e: $11 $11 $1c
	rst  $38                                         ; $5961: $ff
	rst  $38                                         ; $5962: $ff
	rst  $38                                         ; $5963: $ff

Call_0b4_5964:
	sub  c                                           ; $5964: $91
	ld   de, $ff2f                                   ; $5965: $11 $2f $ff
	ldh  a, [c]                                      ; $5968: $f2
	ld   de, $2f11                                   ; $5969: $11 $11 $2f
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	ld   a, [$1111]                                  ; $596e: $fa $11 $11
	rst  $38                                         ; $5971: $ff
	rst  $38                                         ; $5972: $ff
	or   c                                           ; $5973: $b1
	ld   de, rAUD1LEN                                   ; $5974: $11 $11 $ff
	rst  $38                                         ; $5977: $ff
	rst  $38                                         ; $5978: $ff
	di                                               ; $5979: $f3
	ld   de, $ff1d                                   ; $597a: $11 $1d $ff
	rst  $38                                         ; $597d: $ff
	ld   de, $1f11                                   ; $597e: $11 $11 $1f
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	rst  $38                                         ; $5983: $ff
	ld   h, c                                        ; $5984: $61
	ld   de, $ffaf                                   ; $5985: $11 $af $ff
	pop  af                                          ; $5988: $f1
	ld   de, rAUD1LEN                                   ; $5989: $11 $11 $ff
	rst  $38                                         ; $598c: $ff
	rst  $38                                         ; $598d: $ff
	rst  $30                                         ; $598e: $f7
	ld   de, $ff18                                   ; $598f: $11 $18 $ff
	rst  $38                                         ; $5992: $ff
	ld   de, $1f11                                   ; $5993: $11 $11 $1f
	rst  $38                                         ; $5996: $ff
	rst  $38                                         ; $5997: $ff
	rst  $38                                         ; $5998: $ff
	pop  bc                                          ; $5999: $c1
	ld   de, $ff4f                                   ; $599a: $11 $4f $ff
	pop  af                                          ; $599d: $f1
	ld   de, rAUD1LEN                                   ; $599e: $11 $11 $ff
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	db   $fd                                         ; $59a3: $fd
	ld   de, rAUD1HIGH                                   ; $59a4: $11 $14 $ff
	rst  $38                                         ; $59a7: $ff
	ld   de, $1f11                                   ; $59a8: $11 $11 $1f
	rst  $38                                         ; $59ab: $ff
	rst  $38                                         ; $59ac: $ff
	rst  $38                                         ; $59ad: $ff
	pop  de                                          ; $59ae: $d1
	ld   de, $ff5f                                   ; $59af: $11 $5f $ff
	pop  af                                          ; $59b2: $f1
	ld   de, rAUD1LEN                                   ; $59b3: $11 $11 $ff
	rst  $38                                         ; $59b6: $ff
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	ld   de, rAUD1HIGH                                   ; $59b9: $11 $14 $ff
	ei                                               ; $59bc: $fb
	ld   de, $bf11                                   ; $59bd: $11 $11 $bf
	rst  $38                                         ; $59c0: $ff
	db   $fc                                         ; $59c1: $fc
	rst  $38                                         ; $59c2: $ff
	di                                               ; $59c3: $f3
	ld   de, $ff8f                                   ; $59c4: $11 $8f $ff
	ld   hl, $1f11                                   ; $59c7: $21 $11 $1f
	rst  $38                                         ; $59ca: $ff
	rst  $38                                         ; $59cb: $ff
	cp   [hl]                                        ; $59cc: $be
	rst  $38                                         ; $59cd: $ff
	ld   de, $ff1c                                   ; $59ce: $11 $1c $ff
	pop  af                                          ; $59d1: $f1
	ld   de, rAUD1LEN                                   ; $59d2: $11 $11 $ff
	rst  $38                                         ; $59d5: $ff
	rst  ToBoot                                         ; $59d6: $c7
	rst  $38                                         ; $59d7: $ff
	pop  af                                          ; $59d8: $f1
	ld   de, $ffef                                   ; $59d9: $11 $ef $ff
	ld   de, $1f11                                   ; $59dc: $11 $11 $1f
	rst  $38                                         ; $59df: $ff
	or   $4f                                         ; $59e0: $f6 $4f
	rst  $38                                         ; $59e2: $ff
	ld   sp, $ff1e                                   ; $59e3: $31 $1e $ff
	pop  af                                          ; $59e6: $f1
	ld   de, $ff1b                                   ; $59e7: $11 $1b $ff
	rst  $38                                         ; $59ea: $ff
	ld   hl, $f5ff                                   ; $59eb: $21 $ff $f5
	ld   de, $f9ef                                   ; $59ee: $11 $ef $f9
	ld   de, rAUD1LEN                                   ; $59f1: $11 $11 $ff
	rst  $38                                         ; $59f4: $ff
	pop  hl                                          ; $59f5: $e1
	rra                                              ; $59f6: $1f
	rst  $38                                         ; $59f7: $ff
	ld   d, c                                        ; $59f8: $51
	rra                                              ; $59f9: $1f
	rst  $38                                         ; $59fa: $ff
	ld   de, $1f11                                   ; $59fb: $11 $11 $1f
	rst  $38                                         ; $59fe: $ff
	ld   sp, hl                                      ; $59ff: $f9
	ld   de, $f5ff                                   ; $5a00: $11 $ff $f5
	ld   de, $f1ff                                   ; $5a03: $11 $ff $f1
	ld   de, rAUD1LEN                                   ; $5a06: $11 $11 $ff
	rst  $38                                         ; $5a09: $ff
	ld   d, c                                        ; $5a0a: $51
	cpl                                              ; $5a0b: $2f
	rst  $38                                         ; $5a0c: $ff
	add  c                                           ; $5a0d: $81
	ld   c, a                                        ; $5a0e: $4f
	db   $fd                                         ; $5a0f: $fd
	ld   de, $3f11                                   ; $5a10: $11 $11 $3f
	rst  $38                                         ; $5a13: $ff
	di                                               ; $5a14: $f3
	inc  d                                           ; $5a15: $14
	rst  $38                                         ; $5a16: $ff
	ld   sp, hl                                      ; $5a17: $f9
	dec  [hl]                                        ; $5a18: $35
	rst  $28                                         ; $5a19: $ef
	ld   h, c                                        ; $5a1a: $61
	ld   de, $ff19                                   ; $5a1b: $11 $19 $ff
	rst  $38                                         ; $5a1e: $ff
	ld   sp, $ff5f                                   ; $5a1f: $31 $5f $ff
	add  $7d                                         ; $5a22: $c6 $7d
	pop  de                                          ; $5a24: $d1
	ld   de, $af11                                   ; $5a25: $11 $11 $af
	rst  $38                                         ; $5a28: $ff
	push af                                          ; $5a29: $f5
	ld   d, $ff                                      ; $5a2a: $16 $ff
	rst  $38                                         ; $5a2c: $ff
	sub  a                                           ; $5a2d: $97
	xor  c                                           ; $5a2e: $a9
	ld   de, $1511                                   ; $5a2f: $11 $11 $15
	rst  $38                                         ; $5a32: $ff
	rst  $38                                         ; $5a33: $ff
	sub  c                                           ; $5a34: $91
	ld   l, a                                        ; $5a35: $6f
	rst  $38                                         ; $5a36: $ff
	db   $fd                                         ; $5a37: $fd
	adc  b                                           ; $5a38: $88
	ld   [hl], c                                     ; $5a39: $71
	ld   de, $1f11                                   ; $5a3a: $11 $11 $1f
	rst  $38                                         ; $5a3d: $ff
	ei                                               ; $5a3e: $fb
	dec  d                                           ; $5a3f: $15
	rst  $28                                         ; $5a40: $ef
	rst  $38                                         ; $5a41: $ff
	ld   sp, hl                                      ; $5a42: $f9
	ld   [hl], a                                     ; $5a43: $77
	ld   hl, $1111                                   ; $5a44: $21 $11 $11
	rst  JumpTable                                         ; $5a47: $df
	rst  $38                                         ; $5a48: $ff
	db   $e3                                         ; $5a49: $e3
	ld   c, h                                        ; $5a4a: $4c
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	ret  z                                           ; $5a4d: $c8

	ld   [hl], h                                     ; $5a4e: $74
	ld   de, $1411                                   ; $5a4f: $11 $11 $14
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	ld   [hl], d                                     ; $5a54: $72
	adc  a                                           ; $5a55: $8f
	rst  $38                                         ; $5a56: $ff
	cp   $87                                         ; $5a57: $fe $87
	ld   h, c                                        ; $5a59: $61
	ld   de, $1b11                                   ; $5a5a: $11 $11 $1b
	rst  $38                                         ; $5a5d: $ff
	db   $fc                                         ; $5a5e: $fc
	inc  [hl]                                        ; $5a5f: $34
	rst  $28                                         ; $5a60: $ef
	rst  $38                                         ; $5a61: $ff
	ei                                               ; $5a62: $fb
	ld   [hl], a                                     ; $5a63: $77
	ld   b, c                                        ; $5a64: $41
	ld   de, $1f11                                   ; $5a65: $11 $11 $1f
	rst  $38                                         ; $5a68: $ff
	rst  $30                                         ; $5a69: $f7
	daa                                              ; $5a6a: $27
	rst  $38                                         ; $5a6b: $ff
	rst  $38                                         ; $5a6c: $ff
	ld   hl, sp+$77                                  ; $5a6d: $f8 $77
	ld   sp, $1111                                   ; $5a6f: $31 $11 $11
	ld   l, a                                        ; $5a72: $6f
	rst  $38                                         ; $5a73: $ff
	db   $e4                                         ; $5a74: $e4
	dec  hl                                          ; $5a75: $2b
	rst  $38                                         ; $5a76: $ff
	rst  $38                                         ; $5a77: $ff
	rst  $20                                         ; $5a78: $e7
	ld   h, h                                        ; $5a79: $64
	ld   de, $1111                                   ; $5a7a: $11 $11 $11
	cp   a                                           ; $5a7d: $bf
	rst  $38                                         ; $5a7e: $ff
	and  e                                           ; $5a7f: $a3
	ld   e, a                                        ; $5a80: $5f
	rst  $38                                         ; $5a81: $ff
	rst  $38                                         ; $5a82: $ff
	and  a                                           ; $5a83: $a7
	ld   [hl], h                                     ; $5a84: $74
	ld   de, $1111                                   ; $5a85: $11 $11 $11
	rst  $38                                         ; $5a88: $ff
	rst  $38                                         ; $5a89: $ff
	ld   [hl], c                                     ; $5a8a: $71
	adc  a                                           ; $5a8b: $8f
	rst  $38                                         ; $5a8c: $ff
	rst  $38                                         ; $5a8d: $ff
	halt                                             ; $5a8e: $76
	ld   h, e                                        ; $5a8f: $63
	ld   de, $1611                                   ; $5a90: $11 $11 $16
	rst  $38                                         ; $5a93: $ff
	rst  $38                                         ; $5a94: $ff
	ld   b, d                                        ; $5a95: $42
	cp   a                                           ; $5a96: $bf
	rst  $38                                         ; $5a97: $ff
	ei                                               ; $5a98: $fb
	ld   h, a                                        ; $5a99: $67
	ld   d, c                                        ; $5a9a: $51
	ld   de, $1f11                                   ; $5a9b: $11 $11 $1f
	rst  $38                                         ; $5a9e: $ff
	db   $fc                                         ; $5a9f: $fc
	inc  d                                           ; $5aa0: $14
	rst  $38                                         ; $5aa1: $ff
	rst  $38                                         ; $5aa2: $ff
	ld   hl, sp+$77                                  ; $5aa3: $f8 $77
	ld   d, c                                        ; $5aa5: $51
	ld   de, $6f11                                   ; $5aa6: $11 $11 $6f
	rst  $38                                         ; $5aa9: $ff
	db   $f4                                         ; $5aaa: $f4
	add  hl, de                                      ; $5aab: $19
	rst  $38                                         ; $5aac: $ff
	rst  $38                                         ; $5aad: $ff
	or   [hl]                                        ; $5aae: $b6
	add  a                                           ; $5aaf: $87
	ld   hl, $1111                                   ; $5ab0: $21 $11 $11
	rst  $38                                         ; $5ab3: $ff
	rst  $38                                         ; $5ab4: $ff
	or   c                                           ; $5ab5: $b1
	ld   c, a                                        ; $5ab6: $4f
	rst  $38                                         ; $5ab7: $ff
	rst  $38                                         ; $5ab8: $ff
	ld   h, a                                        ; $5ab9: $67
	and  a                                           ; $5aba: $a7
	ld   de, $1e11                                   ; $5abb: $11 $11 $1e
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	ld   de, $ffbf                                   ; $5ac0: $11 $bf $ff
	rst  $30                                         ; $5ac3: $f7
	ld   l, e                                        ; $5ac4: $6b
	sub  c                                           ; $5ac5: $91
	ld   de, $bf11                                   ; $5ac6: $11 $11 $bf
	rst  $38                                         ; $5ac9: $ff
	ldh  a, [c]                                      ; $5aca: $f2
	rla                                              ; $5acb: $17
	rst  $38                                         ; $5acc: $ff
	cp   $64                                         ; $5acd: $fe $64
	rst  JumpTable                                         ; $5acf: $df
	ld   b, c                                        ; $5ad0: $41
	ld   de, $ff17                                   ; $5ad1: $11 $17 $ff
	rst  $38                                         ; $5ad4: $ff
	ld   sp, $ff4f                                   ; $5ad5: $31 $4f $ff
	or   h                                           ; $5ad8: $b4
	ld   c, a                                        ; $5ad9: $4f
	ei                                               ; $5ada: $fb
	ld   de, $1f11                                   ; $5adb: $11 $11 $1f
	rst  $38                                         ; $5ade: $ff
	di                                               ; $5adf: $f3
	ld   [de], a                                     ; $5ae0: $12
	rst  $38                                         ; $5ae1: $ff
	db   $f4                                         ; $5ae2: $f4
	dec  d                                           ; $5ae3: $15
	rst  $38                                         ; $5ae4: $ff
	pop  af                                          ; $5ae5: $f1
	ld   de, rAUD1LOW                                   ; $5ae6: $11 $13 $ff
	rst  $38                                         ; $5ae9: $ff
	ld   de, $ff7f                                   ; $5aea: $11 $7f $ff
	ld   de, $ff6f                                   ; $5aed: $11 $6f $ff
	ld   de, $3f11                                   ; $5af0: $11 $11 $3f
	rst  $38                                         ; $5af3: $ff
	pop  af                                          ; $5af4: $f1
	ld   a, [de]                                     ; $5af5: $1a
	rst  $38                                         ; $5af6: $ff
	and  c                                           ; $5af7: $a1
	add  hl, de                                      ; $5af8: $19
	rst  $38                                         ; $5af9: $ff
	pop  af                                          ; $5afa: $f1
	ld   de, rAUD1HIGH                                   ; $5afb: $11 $14 $ff
	rst  $38                                         ; $5afe: $ff
	ld   hl, $f3df                                   ; $5aff: $21 $df $f3
	ld   de, $ffff                                   ; $5b02: $11 $ff $ff
	ld   de, $bf11                                   ; $5b05: $11 $11 $bf
	rst  $38                                         ; $5b08: $ff
	ldh  a, [c]                                      ; $5b09: $f2
	rra                                              ; $5b0a: $1f
	ld   a, [$1f11]                                  ; $5b0b: $fa $11 $1f
	rst  $38                                         ; $5b0e: $ff
	pop  af                                          ; $5b0f: $f1
	ld   de, $ff1f                                   ; $5b10: $11 $1f $ff
	rst  $38                                         ; $5b13: $ff
	ld   d, a                                        ; $5b14: $57
	rst  $38                                         ; $5b15: $ff
	ld   sp, rAUD1HIGH                                   ; $5b16: $31 $14 $ff
	db   $f4                                         ; $5b19: $f4
	ld   de, rAUD1LEN                                   ; $5b1a: $11 $11 $ff
	rst  $38                                         ; $5b1d: $ff
	sub  h                                           ; $5b1e: $94
	xor  a                                           ; $5b1f: $af
	pop  hl                                          ; $5b20: $e1
	ld   de, $ffdf                                   ; $5b21: $11 $df $ff
	ld   de, $1f11                                   ; $5b24: $11 $11 $1f
	rst  $38                                         ; $5b27: $ff
	ld   a, [$f48f]                                  ; $5b28: $fa $8f $f4
	ld   de, $ff1f                                   ; $5b2b: $11 $1f $ff
	pop  af                                          ; $5b2e: $f1
	ld   de, $ff1f                                   ; $5b2f: $11 $1f $ff
	rst  $38                                         ; $5b32: $ff
	sbc  h                                           ; $5b33: $9c
	cp   $11                                         ; $5b34: $fe $11
	add  hl, de                                      ; $5b36: $19
	rst  $38                                         ; $5b37: $ff
	pop  af                                          ; $5b38: $f1
	ld   de, rAUD1LEN                                   ; $5b39: $11 $11 $ff
	rst  $38                                         ; $5b3c: $ff
	db   $ec                                         ; $5b3d: $ec
	rst  $28                                         ; $5b3e: $ef
	ld   b, c                                        ; $5b3f: $41
	ld   de, $ffff                                   ; $5b40: $11 $ff $ff
	ld   de, $3f11                                   ; $5b43: $11 $11 $3f
	rst  $38                                         ; $5b46: $ff
	rst  $38                                         ; $5b47: $ff
	db   $fd                                         ; $5b48: $fd
	sub  c                                           ; $5b49: $91
	ld   de, $ff8f                                   ; $5b4a: $11 $8f $ff
	sub  c                                           ; $5b4d: $91
	ld   de, $ff1f                                   ; $5b4e: $11 $1f $ff
	rst  $38                                         ; $5b51: $ff
	db   $fd                                         ; $5b52: $fd
	pop  bc                                          ; $5b53: $c1
	ld   de, $ff1f                                   ; $5b54: $11 $1f $ff
	pop  af                                          ; $5b57: $f1
	ld   de, rAUD1LEN                                   ; $5b58: $11 $11 $ff
	rst  $38                                         ; $5b5b: $ff
	cp   $b6                                         ; $5b5c: $fe $b6
	ld   de, $ff18                                   ; $5b5e: $11 $18 $ff
	db   $fc                                         ; $5b61: $fc
	ld   de, $df11                                   ; $5b62: $11 $11 $df
	rst  $38                                         ; $5b65: $ff
	rst  $38                                         ; $5b66: $ff
	and  $11                                         ; $5b67: $e6 $11
	ld   de, $ffff                                   ; $5b69: $11 $ff $ff
	ld   de, $1f11                                   ; $5b6c: $11 $11 $1f
	rst  $38                                         ; $5b6f: $ff
	rst  $38                                         ; $5b70: $ff
	ei                                               ; $5b71: $fb
	ld   de, $af11                                   ; $5b72: $11 $11 $af
	rst  $38                                         ; $5b75: $ff
	pop  af                                          ; $5b76: $f1
	ld   de, rAUD1LEN                                   ; $5b77: $11 $11 $ff
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	ld   b, c                                        ; $5b7c: $41
	ld   de, $ff1f                                   ; $5b7d: $11 $1f $ff
	di                                               ; $5b80: $f3
	ld   de, rAUD1LEN                                   ; $5b81: $11 $11 $ff
	rst  $38                                         ; $5b84: $ff
	rst  $38                                         ; $5b85: $ff
	pop  de                                          ; $5b86: $d1
	ld   de, $ff16                                   ; $5b87: $11 $16 $ff
	rst  $38                                         ; $5b8a: $ff
	ld   de, $1f11                                   ; $5b8b: $11 $11 $1f
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	db   $f4                                         ; $5b90: $f4
	ld   de, rAUD1LEN                                   ; $5b91: $11 $11 $ff
	rst  $38                                         ; $5b94: $ff
	ld   [hl], c                                     ; $5b95: $71
	ld   de, $ff18                                   ; $5b96: $11 $18 $ff
	rst  $38                                         ; $5b99: $ff
	cp   $11                                         ; $5b9a: $fe $11
	ld   de, $ff7f                                   ; $5b9c: $11 $7f $ff
	pop  af                                          ; $5b9f: $f1
	ld   de, rAUD1LEN                                   ; $5ba0: $11 $11 $ff
	rst  $38                                         ; $5ba3: $ff
	rst  $38                                         ; $5ba4: $ff
	ld   sp, $1f11                                   ; $5ba5: $31 $11 $1f
	rst  $38                                         ; $5ba8: $ff
	cp   $11                                         ; $5ba9: $fe $11
	ld   de, $ff1f                                   ; $5bab: $11 $1f $ff
	rst  $38                                         ; $5bae: $ff
	pop  af                                          ; $5baf: $f1
	ld   de, $ff15                                   ; $5bb0: $11 $15 $ff
	rst  $38                                         ; $5bb3: $ff
	ld   de, $1d11                                   ; $5bb4: $11 $11 $1d
	rst  $38                                         ; $5bb7: $ff
	rst  $38                                         ; $5bb8: $ff
	rst  $30                                         ; $5bb9: $f7
	ld   de, rAUD1LEN                                   ; $5bba: $11 $11 $ff
	rst  $38                                         ; $5bbd: $ff
	pop  af                                          ; $5bbe: $f1
	ld   de, rAUD1LEN                                   ; $5bbf: $11 $11 $ff
	rst  $38                                         ; $5bc2: $ff
	rst  $38                                         ; $5bc3: $ff
	ld   de, $6f11                                   ; $5bc4: $11 $11 $6f
	rst  $38                                         ; $5bc7: $ff
	pop  af                                          ; $5bc8: $f1
	ld   de, $df11                                   ; $5bc9: $11 $11 $df
	rst  $38                                         ; $5bcc: $ff
	rst  $38                                         ; $5bcd: $ff
	ld   d, c                                        ; $5bce: $51
	ld   de, $ff1f                                   ; $5bcf: $11 $1f $ff
	db   $fd                                         ; $5bd2: $fd
	ld   de, $1f11                                   ; $5bd3: $11 $11 $1f
	rst  $38                                         ; $5bd6: $ff
	rst  $38                                         ; $5bd7: $ff
	pop  af                                          ; $5bd8: $f1
	ld   de, $ff1c                                   ; $5bd9: $11 $1c $ff
	rst  $38                                         ; $5bdc: $ff
	ld   de, $1f11                                   ; $5bdd: $11 $11 $1f
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	pop  af                                          ; $5be2: $f1
	ld   de, rAUD1ENV                                   ; $5be3: $11 $12 $ff
	rst  $38                                         ; $5be6: $ff
	ld   de, $1811                                   ; $5be7: $11 $11 $18
	rst  $38                                         ; $5bea: $ff
	rst  $38                                         ; $5beb: $ff
	or   $11                                         ; $5bec: $f6 $11
	ld   de, $ffff                                   ; $5bee: $11 $ff $ff
	pop  af                                          ; $5bf1: $f1
	ld   de, rAUD1LEN                                   ; $5bf2: $11 $11 $ff
	rst  $38                                         ; $5bf5: $ff
	rst  $38                                         ; $5bf6: $ff
	ld   de, $af11                                   ; $5bf7: $11 $11 $af
	rst  $38                                         ; $5bfa: $ff
	pop  af                                          ; $5bfb: $f1
	ld   de, rAUD1LEN                                   ; $5bfc: $11 $11 $ff
	rst  $38                                         ; $5bff: $ff
	rst  $38                                         ; $5c00: $ff
	ld   de, $1f11                                   ; $5c01: $11 $11 $1f
	rst  $38                                         ; $5c04: $ff
	pop  af                                          ; $5c05: $f1
	ld   de, $df11                                   ; $5c06: $11 $11 $df
	rst  $38                                         ; $5c09: $ff
	rst  $38                                         ; $5c0a: $ff
	ld   sp, $1f11                                   ; $5c0b: $31 $11 $1f
	rst  $38                                         ; $5c0e: $ff
	di                                               ; $5c0f: $f3
	ld   de, $7f11                                   ; $5c10: $11 $11 $7f
	rst  $38                                         ; $5c13: $ff
	rst  $38                                         ; $5c14: $ff
	ld   [hl], c                                     ; $5c15: $71
	ld   de, $ff1f                                   ; $5c16: $11 $1f $ff
	or   $11                                         ; $5c19: $f6 $11
	ld   de, $ff5f                                   ; $5c1b: $11 $5f $ff
	rst  $38                                         ; $5c1e: $ff
	or   c                                           ; $5c1f: $b1
	ld   de, $ff1f                                   ; $5c20: $11 $1f $ff
	db   $f4                                         ; $5c23: $f4
	ld   de, $6f11                                   ; $5c24: $11 $11 $6f
	rst  $38                                         ; $5c27: $ff
	rst  $38                                         ; $5c28: $ff
	pop  af                                          ; $5c29: $f1
	ld   de, $ff1f                                   ; $5c2a: $11 $1f $ff
	pop  af                                          ; $5c2d: $f1
	ld   de, rAUD1LEN                                   ; $5c2e: $11 $11 $ff
	rst  $38                                         ; $5c31: $ff
	rst  $38                                         ; $5c32: $ff
	or   c                                           ; $5c33: $b1
	ld   de, $ff1f                                   ; $5c34: $11 $1f $ff
	pop  af                                          ; $5c37: $f1
	ld   de, rAUD1LEN                                   ; $5c38: $11 $11 $ff
	rst  $38                                         ; $5c3b: $ff
	rst  $38                                         ; $5c3c: $ff
	ld   sp, $4f11                                   ; $5c3d: $31 $11 $4f
	rst  $38                                         ; $5c40: $ff
	pop  af                                          ; $5c41: $f1
	ld   de, rAUD1LEN                                   ; $5c42: $11 $11 $ff
	rst  $38                                         ; $5c45: $ff
	rst  $38                                         ; $5c46: $ff
	ld   de, $af11                                   ; $5c47: $11 $11 $af
	rst  $38                                         ; $5c4a: $ff
	and  c                                           ; $5c4b: $a1
	ld   de, $ff15                                   ; $5c4c: $11 $15 $ff
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	ld   de, rAUD1LEN                                   ; $5c51: $11 $11 $ff
	rst  $38                                         ; $5c54: $ff
	ld   de, $1711                                   ; $5c55: $11 $11 $17
	rst  $38                                         ; $5c58: $ff
	rst  $38                                         ; $5c59: $ff
	rst  $38                                         ; $5c5a: $ff
	ld   de, rAUD1LEN                                   ; $5c5b: $11 $11 $ff
	rst  $38                                         ; $5c5e: $ff
	ld   de, $1f11                                   ; $5c5f: $11 $11 $1f
	rst  $38                                         ; $5c62: $ff
	rst  $38                                         ; $5c63: $ff
	or   $11                                         ; $5c64: $f6 $11
	rla                                              ; $5c66: $17
	rst  $38                                         ; $5c67: $ff
	ei                                               ; $5c68: $fb
	ld   de, $1f11                                   ; $5c69: $11 $11 $1f
	rst  $38                                         ; $5c6c: $ff
	rst  $38                                         ; $5c6d: $ff
	ldh  a, [c]                                      ; $5c6e: $f2
	ld   de, $ff1c                                   ; $5c6f: $11 $1c $ff
	ei                                               ; $5c72: $fb
	ld   de, $1f11                                   ; $5c73: $11 $11 $1f
	rst  $38                                         ; $5c76: $ff
	rst  $38                                         ; $5c77: $ff
	pop  af                                          ; $5c78: $f1
	ld   de, $ff1f                                   ; $5c79: $11 $1f $ff
	rst  $30                                         ; $5c7c: $f7
	ld   de, $1f11                                   ; $5c7d: $11 $11 $1f
	rst  $38                                         ; $5c80: $ff
	rst  $38                                         ; $5c81: $ff
	pop  af                                          ; $5c82: $f1
	ld   de, $ff1f                                   ; $5c83: $11 $1f $ff
	rst  $30                                         ; $5c86: $f7
	ld   de, $1f11                                   ; $5c87: $11 $11 $1f
	rst  $38                                         ; $5c8a: $ff
	rst  $38                                         ; $5c8b: $ff
	di                                               ; $5c8c: $f3
	ld   de, $ff1b                                   ; $5c8d: $11 $1b $ff
	db   $fc                                         ; $5c90: $fc
	ld   de, $1d11                                   ; $5c91: $11 $11 $1d
	rst  $38                                         ; $5c94: $ff
	rst  $38                                         ; $5c95: $ff
	or   $11                                         ; $5c96: $f6 $11
	jr   @+$01                                       ; $5c98: $18 $ff

	cp   $11                                         ; $5c9a: $fe $11
	ld   de, $ff18                                   ; $5c9c: $11 $18 $ff
	rst  $38                                         ; $5c9f: $ff
	db   $fd                                         ; $5ca0: $fd
	ld   de, rAUD1ENV                                   ; $5ca1: $11 $12 $ff
	rst  $38                                         ; $5ca4: $ff
	ld   de, $1111                                   ; $5ca5: $11 $11 $11
	rst  $28                                         ; $5ca8: $ef
	rst  $38                                         ; $5ca9: $ff
	rst  $38                                         ; $5caa: $ff
	ld   de, rAUD1LEN                                   ; $5cab: $11 $11 $ff
	rst  $38                                         ; $5cae: $ff
	or   c                                           ; $5caf: $b1
	ld   de, $af11                                   ; $5cb0: $11 $11 $af
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	pop  af                                          ; $5cb5: $f1
	ld   de, $ff1f                                   ; $5cb6: $11 $1f $ff
	or   $11                                         ; $5cb9: $f6 $11
	ld   de, $ff17                                   ; $5cbb: $11 $17 $ff
	rst  $38                                         ; $5cbe: $ff
	pop  af                                          ; $5cbf: $f1
	ld   de, $ff1a                                   ; $5cc0: $11 $1a $ff
	rst  $38                                         ; $5cc3: $ff
	ld   de, $1111                                   ; $5cc4: $11 $11 $11
	rst  $28                                         ; $5cc7: $ef
	rst  $38                                         ; $5cc8: $ff
	rst  $38                                         ; $5cc9: $ff
	ld   de, $cf11                                   ; $5cca: $11 $11 $cf
	rst  $38                                         ; $5ccd: $ff
	pop  af                                          ; $5cce: $f1
	ld   de, $af11                                   ; $5ccf: $11 $11 $af
	rst  $38                                         ; $5cd2: $ff
	rst  $38                                         ; $5cd3: $ff
	ld   sp, $cf11                                   ; $5cd4: $31 $11 $cf
	rst  $38                                         ; $5cd7: $ff
	cp   $11                                         ; $5cd8: $fe $11
	ld   de, $3b11                                   ; $5cda: $11 $11 $3b
	rst  $38                                         ; $5cdd: $ff
	rst  $38                                         ; $5cde: $ff
	ld   h, c                                        ; $5cdf: $61
	ld   de, $ff8f                                   ; $5ce0: $11 $8f $ff
	pop  af                                          ; $5ce3: $f1
	ld   de, $1211                                   ; $5ce4: $11 $11 $12
	rst  JumpTable                                         ; $5ce7: $df
	rst  $38                                         ; $5ce8: $ff
	di                                               ; $5ce9: $f3
	ld   de, $ff1b                                   ; $5cea: $11 $1b $ff
	rst  $38                                         ; $5ced: $ff
	ld   sp, $1111                                   ; $5cee: $31 $11 $11
	jr   @-$3f                                       ; $5cf1: $18 $bf

	rst  $38                                         ; $5cf3: $ff
	pop  bc                                          ; $5cf4: $c1
	ld   de, $ffac                                   ; $5cf5: $11 $ac $ff
	rst  $38                                         ; $5cf8: $ff
	sub  c                                           ; $5cf9: $91
	ld   de, $1711                                   ; $5cfa: $11 $11 $17
	rst  $38                                         ; $5cfd: $ff
	rst  $38                                         ; $5cfe: $ff
	pop  af                                          ; $5cff: $f1
	ld   de, $ff4f                                   ; $5d00: $11 $4f $ff
	db   $fd                                         ; $5d03: $fd
	ld   de, $1111                                   ; $5d04: $11 $11 $11
	ret  c                                           ; $5d07: $d8

	cp   a                                           ; $5d08: $bf
	rst  $38                                         ; $5d09: $ff
	ld   [hl], c                                     ; $5d0a: $71
	add  hl, de                                      ; $5d0b: $19
	rst  $38                                         ; $5d0c: $ff
	rst  $38                                         ; $5d0d: $ff
	cp   $41                                         ; $5d0e: $fe $41
	ld   de, $3111                                   ; $5d10: $11 $11 $31
	cp   a                                           ; $5d13: $bf
	rst  $38                                         ; $5d14: $ff
	push af                                          ; $5d15: $f5
	ld   [hl], $af                                   ; $5d16: $36 $af
	rst  $38                                         ; $5d18: $ff
	rst  $38                                         ; $5d19: $ff
	ld   h, c                                        ; $5d1a: $61
	ld   de, $1111                                   ; $5d1b: $11 $11 $11
	ld   l, [hl]                                     ; $5d1e: $6e
	rst  $38                                         ; $5d1f: $ff
	ei                                               ; $5d20: $fb
	ld   b, c                                        ; $5d21: $41
	ccf                                              ; $5d22: $3f
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	pop  hl                                          ; $5d25: $e1
	ld   de, $4411                                   ; $5d26: $11 $11 $44
	ld   h, a                                        ; $5d29: $67
	adc  a                                           ; $5d2a: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d2b: $cf
	or   c                                           ; $5d2c: $b1
	rst  $38                                         ; $5d2d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d2e: $cf
	sub  a                                           ; $5d2f: $97
	ei                                               ; $5d30: $fb
	ld   b, c                                        ; $5d31: $41
	ld   de, $7911                                   ; $5d32: $11 $11 $79
	xor  l                                           ; $5d35: $ad
	rst  $38                                         ; $5d36: $ff
	di                                               ; $5d37: $f3
	ld   e, b                                        ; $5d38: $58
	cp   a                                           ; $5d39: $bf
	rst  $38                                         ; $5d3a: $ff
	ld   sp, hl                                      ; $5d3b: $f9
	ld   d, c                                        ; $5d3c: $51
	ld   de, $1111                                   ; $5d3d: $11 $11 $11
	ccf                                              ; $5d40: $3f
	rst  $38                                         ; $5d41: $ff
	add  $11                                         ; $5d42: $c6 $11
	rst  $38                                         ; $5d44: $ff
	rst  $38                                         ; $5d45: $ff
	call $11c8                                       ; $5d46: $cd $c8 $11
	ld   de, $a611                                   ; $5d49: $11 $11 $a6
	rst  $30                                         ; $5d4c: $f7
	rst  $28                                         ; $5d4d: $ef
	sbc  a                                           ; $5d4e: $9f
	inc  a                                           ; $5d4f: $3c
	ei                                               ; $5d50: $fb
	ei                                               ; $5d51: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d52: $cf
	and  a                                           ; $5d53: $a7
	ld   de, $1111                                   ; $5d54: $11 $11 $11
	dec  sp                                          ; $5d57: $3b
	rst  $38                                         ; $5d58: $ff
	ld   a, [$1f11]                                  ; $5d59: $fa $11 $1f
	rst  $38                                         ; $5d5c: $ff
	db   $fc                                         ; $5d5d: $fc
	or   a                                           ; $5d5e: $b7
	ld   de, $5111                                   ; $5d5f: $11 $11 $51
	ld   [hl], c                                     ; $5d62: $71
	ld   a, [de]                                     ; $5d63: $1a
	rst  $38                                         ; $5d64: $ff
	add  hl, hl                                      ; $5d65: $29
	rra                                              ; $5d66: $1f
	ei                                               ; $5d67: $fb
	ld   a, [$99af]                                  ; $5d68: $fa $af $99
	ld   sp, $1511                                   ; $5d6b: $31 $11 $15
	or   l                                           ; $5d6e: $b5
	sbc  $af                                         ; $5d6f: $de $af
	pop  af                                          ; $5d71: $f1
	xor  a                                           ; $5d72: $af
	cpl                                              ; $5d73: $2f
	di                                               ; $5d74: $f3
	or   $19                                         ; $5d75: $f6 $19
	ld   de, $1991                                   ; $5d77: $11 $91 $19
	ld   de, $f7ff                                   ; $5d7a: $11 $ff $f7
	ld   b, c                                        ; $5d7d: $41
	rst  $38                                         ; $5d7e: $ff
	sbc  l                                           ; $5d7f: $9d
	rst  $30                                         ; $5d80: $f7
	rst  $38                                         ; $5d81: $ff
	dec  d                                           ; $5d82: $15
	ld   de, $3d34                                   ; $5d83: $11 $34 $3d
	add  c                                           ; $5d86: $81
	dec  [hl]                                        ; $5d87: $35
	db   $fd                                         ; $5d88: $fd
	rst  $38                                         ; $5d89: $ff
	ld   l, a                                        ; $5d8a: $6f
	ld   e, e                                        ; $5d8b: $5b
	rst  $38                                         ; $5d8c: $ff
	db   $f4                                         ; $5d8d: $f4
	ld   de, $1111                                   ; $5d8e: $11 $11 $11
	add  hl, de                                      ; $5d91: $19
	pop  de                                          ; $5d92: $d1
	rst  $38                                         ; $5d93: $ff
	adc  a                                           ; $5d94: $8f
	or   c                                           ; $5d95: $b1
	rst  $38                                         ; $5d96: $ff
	ld   e, a                                        ; $5d97: $5f
	sbc  b                                           ; $5d98: $98
	pop  af                                          ; $5d99: $f1
	ld   de, $6211                                   ; $5d9a: $11 $11 $62
	and  c                                           ; $5d9d: $a1
	rra                                              ; $5d9e: $1f
	ld   l, c                                        ; $5d9f: $69
	rst  $30                                         ; $5da0: $f7
	rst  $38                                         ; $5da1: $ff
	rst  $28                                         ; $5da2: $ef
	ld   de, $f9ff                                   ; $5da3: $11 $ff $f9
	ld   de, $1131                                   ; $5da6: $11 $31 $11
	ld   de, $ef99                                   ; $5da9: $11 $99 $ef
	pop  af                                          ; $5dac: $f1
	ld   de, $dcff                                   ; $5dad: $11 $ff $dc
	sbc  $ff                                         ; $5db0: $de $ff
	ld   de, $8111                                   ; $5db2: $11 $11 $81
	ld   de, $bc17                                   ; $5db5: $11 $17 $bc
	ld   h, h                                        ; $5db8: $64
	rst  $38                                         ; $5db9: $ff
	pop  af                                          ; $5dba: $f1
	and  h                                           ; $5dbb: $a4
	rst  $38                                         ; $5dbc: $ff
	ld   sp, hl                                      ; $5dbd: $f9
	add  hl, bc                                      ; $5dbe: $09
	ld   de, $3d11                                   ; $5dbf: $11 $11 $3d
	ld   d, c                                        ; $5dc2: $51
	db   $ed                                         ; $5dc3: $ed
	sub  c                                           ; $5dc4: $91
	dec  sp                                          ; $5dc5: $3b
	rst  $38                                         ; $5dc6: $ff
	rst  $30                                         ; $5dc7: $f7
	rra                                              ; $5dc8: $1f
	rst  $38                                         ; $5dc9: $ff
	pop  bc                                          ; $5dca: $c1
	dec  de                                          ; $5dcb: $1b
	ld   de, $3f11                                   ; $5dcc: $11 $11 $3f
	ld   [hl], c                                     ; $5dcf: $71
	adc  a                                           ; $5dd0: $8f
	ld   hl, sp-$03                                  ; $5dd1: $f8 $fd
	ld   e, a                                        ; $5dd3: $5f
	db   $f4                                         ; $5dd4: $f4
	db   $fc                                         ; $5dd5: $fc
	xor  a                                           ; $5dd6: $af
	ld   de, $1485                                   ; $5dd7: $11 $85 $14
	ld   de, $cdff                                   ; $5dda: $11 $ff $cd
	ld   de, $a1ff                                   ; $5ddd: $11 $ff $a1
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	ld   b, c                                        ; $5de2: $41
	inc  de                                          ; $5de3: $13
	ld   de, $db15                                   ; $5de4: $11 $15 $db
	ld   [hl], c                                     ; $5de7: $71
	inc  de                                          ; $5de8: $13
	ld   a, [$ffaf]                                  ; $5de9: $fa $af $ff
	ld   sp, hl                                      ; $5dec: $f9
	inc  d                                           ; $5ded: $14
	rst  $38                                         ; $5dee: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5def: $cf
	ld   sp, $1111                                   ; $5df0: $31 $11 $11
	ld   c, d                                        ; $5df3: $4a

jr_0b4_5df4:
	ldh  a, [c]                                      ; $5df4: $f2
	inc  e                                           ; $5df5: $1c
	ld   a, a                                        ; $5df6: $7f
	pop  af                                          ; $5df7: $f1
	rst  $30                                         ; $5df8: $f7
	sbc  a                                           ; $5df9: $9f
	adc  e                                           ; $5dfa: $8b
	rst  $20                                         ; $5dfb: $e7
	dec  de                                          ; $5dfc: $1b
	ld   de, $1161                                   ; $5dfd: $11 $61 $11
	jr   jr_0b4_5df4                                 ; $5e00: $18 $f2

	dec  a                                           ; $5e02: $3d
	rra                                              ; $5e03: $1f
	cp   $ff                                         ; $5e04: $fe $ff
	ld   e, $f2                                      ; $5e06: $1e $f2
	di                                               ; $5e08: $f3
	ld   [hl+], a                                    ; $5e09: $22
	ld   [de], a                                     ; $5e0a: $12
	ld   de, $1a99                                   ; $5e0b: $11 $99 $1a
	ld   d, [hl]                                     ; $5e0e: $56
	ld   c, d                                        ; $5e0f: $4a
	db   $fd                                         ; $5e10: $fd
	db   $fc                                         ; $5e11: $fc
	rst  JumpTable                                         ; $5e12: $df
	cp   a                                           ; $5e13: $bf
	push af                                          ; $5e14: $f5
	ld   c, d                                        ; $5e15: $4a
	ld   b, d                                        ; $5e16: $42
	add  c                                           ; $5e17: $81
	ld   de, $cf11                                   ; $5e18: $11 $11 $cf
	ld   a, a                                        ; $5e1b: $7f
	inc  d                                           ; $5e1c: $14
	db   $fc                                         ; $5e1d: $fc
	rst  $38                                         ; $5e1e: $ff
	ld   c, a                                        ; $5e1f: $4f
	rst  $38                                         ; $5e20: $ff
	pop  af                                          ; $5e21: $f1
	ld   de, $51c9                                   ; $5e22: $11 $c9 $51
	ld   de, $af12                                   ; $5e25: $11 $12 $af
	and  c                                           ; $5e28: $a1
	rra                                              ; $5e29: $1f
	rst  $38                                         ; $5e2a: $ff
	ei                                               ; $5e2b: $fb
	rra                                              ; $5e2c: $1f
	ret  z                                           ; $5e2d: $c8

	pop  af                                          ; $5e2e: $f1
	ld   e, $12                                      ; $5e2f: $1e $12
	pop  hl                                          ; $5e31: $e1
	ld   de, $f11f                                   ; $5e32: $11 $1f $f1
	ld   b, c                                        ; $5e35: $41
	rra                                              ; $5e36: $1f
	ld   a, [$fff7]                                  ; $5e37: $fa $f7 $ff
	xor  d                                           ; $5e3a: $aa
	pop  de                                          ; $5e3b: $d1
	sbc  a                                           ; $5e3c: $9f
	sub  c                                           ; $5e3d: $91
	ld   de, $1112                                   ; $5e3e: $11 $12 $11
	xor  a                                           ; $5e41: $af
	sbc  b                                           ; $5e42: $98
	inc  d                                           ; $5e43: $14
	rst  $38                                         ; $5e44: $ff
	rst  $38                                         ; $5e45: $ff
	push af                                          ; $5e46: $f5
	pop  af                                          ; $5e47: $f1
	rra                                              ; $5e48: $1f
	ld   a, e                                        ; $5e49: $7b
	jp   $1111                                       ; $5e4a: $c3 $11 $11


	jp   nz, $f213                                   ; $5e4d: $c2 $13 $f2

	sbc  a                                           ; $5e50: $9f
	cp   a                                           ; $5e51: $bf
	rst  $38                                         ; $5e52: $ff
	rra                                              ; $5e53: $1f
	pop  af                                          ; $5e54: $f1
	push af                                          ; $5e55: $f5
	rra                                              ; $5e56: $1f
	pop  af                                          ; $5e57: $f1
	inc  d                                           ; $5e58: $14
	ld   d, $51                                      ; $5e59: $16 $51
	inc  d                                           ; $5e5b: $14
	rra                                              ; $5e5c: $1f
	ldh  a, [c]                                      ; $5e5d: $f2
	inc  de                                          ; $5e5e: $13
	rst  $38                                         ; $5e5f: $ff
	rst  $38                                         ; $5e60: $ff
	rra                                              ; $5e61: $1f
	rst  $38                                         ; $5e62: $ff
	xor  d                                           ; $5e63: $aa
	ld   d, $a1                                      ; $5e64: $16 $a1
	ld   de, $f11f                                   ; $5e66: $11 $1f $f1
	ld   de, $ff1f                                   ; $5e69: $11 $1f $ff
	rst  $38                                         ; $5e6c: $ff
	push af                                          ; $5e6d: $f5
	ld   l, l                                        ; $5e6e: $6d
	rst  $28                                         ; $5e6f: $ef
	or   $52                                         ; $5e70: $f6 $52
	ld   de, $1111                                   ; $5e72: $11 $11 $11
	ld   h, c                                        ; $5e75: $61
	rst  JumpTable                                         ; $5e76: $df
	ld   de, $ff1f                                   ; $5e77: $11 $1f $ff
	di                                               ; $5e7a: $f3
	ld   l, c                                        ; $5e7b: $69
	cp   $cf                                         ; $5e7c: $fe $cf
	xor  l                                           ; $5e7e: $ad
	pop  bc                                          ; $5e7f: $c1
	ld   de, $7112                                   ; $5e80: $11 $12 $71
	adc  a                                           ; $5e83: $8f
	ld   h, c                                        ; $5e84: $61
	ld   e, a                                        ; $5e85: $5f
	ld   l, a                                        ; $5e86: $6f
	db   $fd                                         ; $5e87: $fd
	rst  $38                                         ; $5e88: $ff
	pop  af                                          ; $5e89: $f1
	rst  $38                                         ; $5e8a: $ff
	ld   c, a                                        ; $5e8b: $4f
	ld   de, $1574                                   ; $5e8c: $11 $74 $15
	ld   de, $1ff1                                   ; $5e8f: $11 $f1 $1f
	pop  af                                          ; $5e92: $f1
	pop  af                                          ; $5e93: $f1
	adc  a                                           ; $5e94: $8f
	cp   $f3                                         ; $5e95: $fe $f3
	rst  $38                                         ; $5e97: $ff
	ld   e, $35                                      ; $5e98: $1e $35
	ld   sp, hl                                      ; $5e9a: $f9
	ld   [de], a                                     ; $5e9b: $12
	ld   de, $2fa1                                   ; $5e9c: $11 $a1 $2f
	ld   de, $7ffc                                   ; $5e9f: $11 $fc $7f
	rst  $38                                         ; $5ea2: $ff
	rst  $28                                         ; $5ea3: $ef
	db   $fc                                         ; $5ea4: $fc
	rst  $38                                         ; $5ea5: $ff
	sub  e                                           ; $5ea6: $93
	ld   h, l                                        ; $5ea7: $65
	ld   [hl], e                                     ; $5ea8: $73
	ld   de, $2111                                   ; $5ea9: $11 $11 $21
	ld   hl, $8fcb                                   ; $5eac: $21 $cb $8f
	sbc  a                                           ; $5eaf: $9f
	cp   $ff                                         ; $5eb0: $fe $ff
	ei                                               ; $5eb2: $fb
	db   $e3                                         ; $5eb3: $e3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eb4: $cf
	ld   h, d                                        ; $5eb5: $62
	ld   de, $1112                                   ; $5eb6: $11 $12 $11
	ld   [hl-], a                                    ; $5eb9: $32
	ld   h, a                                        ; $5eba: $67
	ld   d, c                                        ; $5ebb: $51
	sbc  a                                           ; $5ebc: $9f
	rst  $38                                         ; $5ebd: $ff
	rst  JumpTable                                         ; $5ebe: $df
	ld   a, [$f7ef]                                  ; $5ebf: $fa $ef $f7
	db   $f4                                         ; $5ec2: $f4
	ld   a, [de]                                     ; $5ec3: $1a
	ld   de, $1711                                   ; $5ec4: $11 $11 $17
	ld   d, c                                        ; $5ec7: $51
	ld   a, l                                        ; $5ec8: $7d
	inc  de                                          ; $5ec9: $13
	or   $ff                                         ; $5eca: $f6 $ff
	rra                                              ; $5ecc: $1f
	ld   [$78ff], a                                  ; $5ecd: $ea $ff $78
	ldh  a, [c]                                      ; $5ed0: $f2
	ld   [hl], d                                     ; $5ed1: $72
	ld   de, $1611                                   ; $5ed2: $11 $11 $16
	ld   sp, $3239                                   ; $5ed5: $31 $39 $32
	rst  $38                                         ; $5ed8: $ff
	cp   a                                           ; $5ed9: $bf
	ldh  a, [c]                                      ; $5eda: $f2
	rst  $38                                         ; $5edb: $ff
	ld   c, d                                        ; $5edc: $4a
	cp   b                                           ; $5edd: $b8
	ei                                               ; $5ede: $fb
	ld   hl, $7113                                   ; $5edf: $21 $13 $71
	ld   de, $d61d                                   ; $5ee2: $11 $1d $d6
	sub  [hl]                                        ; $5ee5: $96
	or   c                                           ; $5ee6: $b1
	ld   e, a                                        ; $5ee7: $5f

jr_0b4_5ee8:
	rst  $38                                         ; $5ee8: $ff
	pop  de                                          ; $5ee9: $d1
	rst  $38                                         ; $5eea: $ff
	db   $fd                                         ; $5eeb: $fd
	ld   b, c                                        ; $5eec: $41
	rra                                              ; $5eed: $1f
	dec  [hl]                                        ; $5eee: $35
	ld   de, $1511                                   ; $5eef: $11 $11 $15
	jp   nc, $bf32                                   ; $5ef2: $d2 $32 $bf

	cp   $5e                                         ; $5ef5: $fe $5e
	rst  $28                                         ; $5ef7: $ef
	rst  $38                                         ; $5ef8: $ff
	db   $f4                                         ; $5ef9: $f4
	ld   [hl], d                                     ; $5efa: $72
	db   $fd                                         ; $5efb: $fd
	rl   c                                           ; $5efc: $cb $11
	ld   de, $1511                                   ; $5efe: $11 $11 $15
	ld   sp, hl                                      ; $5f01: $f9
	ld   c, [hl]                                     ; $5f02: $4e
	add  c                                           ; $5f03: $81
	rst  JumpTable                                         ; $5f04: $df
	rst  $38                                         ; $5f05: $ff
	push af                                          ; $5f06: $f5
	jp   c, Jump_0b4_7acf                            ; $5f07: $da $cf $7a

	ld   b, l                                        ; $5f0a: $45
	cp   b                                           ; $5f0b: $b8
	ld   de, $5c11                                   ; $5f0c: $11 $11 $5c
	ld   a, e                                        ; $5f0f: $7b
	ld   b, c                                        ; $5f10: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f11: $cf
	adc  $64                                         ; $5f12: $ce $64
	rst  $38                                         ; $5f14: $ff
	rst  $38                                         ; $5f15: $ff
	add  hl, sp                                      ; $5f16: $39
	sbc  l                                           ; $5f17: $9d
	or   a                                           ; $5f18: $b7
	or   [hl]                                        ; $5f19: $b6
	ld   [hl], d                                     ; $5f1a: $72
	ld   de, $2611                                   ; $5f1b: $11 $11 $26
	adc  a                                           ; $5f1e: $8f
	pop  de                                          ; $5f1f: $d1
	dec  de                                          ; $5f20: $1b
	ld   a, l                                        ; $5f21: $7d
	rst  $38                                         ; $5f22: $ff
	rst  $38                                         ; $5f23: $ff
	sub  d                                           ; $5f24: $92
	pop  af                                          ; $5f25: $f1
	sbc  $2b                                         ; $5f26: $de $2b
	rst  $30                                         ; $5f28: $f7
	ld   d, c                                        ; $5f29: $51
	ld   de, $f411                                   ; $5f2a: $11 $11 $f4
	ld   e, h                                        ; $5f2d: $5c
	sub  c                                           ; $5f2e: $91
	ld   l, e                                        ; $5f2f: $6b
	ld   e, $ff                                      ; $5f30: $1e $ff
	rst  $38                                         ; $5f32: $ff
	jr   c, jr_0b4_5ee8                              ; $5f33: $38 $b3

	cp   [hl]                                        ; $5f35: $be
	xor  a                                           ; $5f36: $af
	push bc                                          ; $5f37: $c5
	ld   de, $1211                                   ; $5f38: $11 $11 $12
	xor  l                                           ; $5f3b: $ad
	and  h                                           ; $5f3c: $a4
	ld   sp, $fe1f                                   ; $5f3d: $31 $1f $fe
	cp   l                                           ; $5f40: $bd
	rst  $38                                         ; $5f41: $ff
	ld   sp, hl                                      ; $5f42: $f9
	ld   a, [hl-]                                    ; $5f43: $3a
	rst  $38                                         ; $5f44: $ff
	pop  de                                          ; $5f45: $d1
	ld   de, $4167                                   ; $5f46: $11 $67 $41
	ld   [de], a                                     ; $5f49: $12
	ld   de, $bb27                                   ; $5f4a: $11 $27 $bb
	sbc  a                                           ; $5f4d: $9f
	db   $ed                                         ; $5f4e: $ed
	di                                               ; $5f4f: $f3
	ld   e, a                                        ; $5f50: $5f
	rst  $38                                         ; $5f51: $ff
	db   $fc                                         ; $5f52: $fc
	ld   d, c                                        ; $5f53: $51
	rla                                              ; $5f54: $17
	jp   z, $1182                                    ; $5f55: $ca $82 $11

	ld   de, $8f11                                   ; $5f58: $11 $11 $8f
	sbc  [hl]                                        ; $5f5b: $9e
	push af                                          ; $5f5c: $f5
	dec  d                                           ; $5f5d: $15
	rst  JumpTable                                         ; $5f5e: $df
	db   $fd                                         ; $5f5f: $fd
	and  c                                           ; $5f60: $a1
	rst  JumpTable                                         ; $5f61: $df
	sbc  e                                           ; $5f62: $9b
	add  c                                           ; $5f63: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f64: $cf
	ld   [hl+], a                                    ; $5f65: $22
	ld   de, $1567                                   ; $5f66: $11 $67 $15
	ld   [hl], l                                     ; $5f69: $75
	rst  $30                                         ; $5f6a: $f7
	rla                                              ; $5f6b: $17
	sbc  l                                           ; $5f6c: $9d
	ei                                               ; $5f6d: $fb
	ld   a, a                                        ; $5f6e: $7f
	xor  c                                           ; $5f6f: $a9
	ld   sp, hl                                      ; $5f70: $f9
	xor  a                                           ; $5f71: $af
	ld   d, l                                        ; $5f72: $55
	call nc, $114c                                   ; $5f73: $d4 $4c $11
	jp   nc, $1145                                   ; $5f76: $d2 $45 $11

	ld   h, [hl]                                     ; $5f79: $66
	xor  $3b                                         ; $5f7a: $ee $3b
	jp   hl                                          ; $5f7c: $e9


	cp   a                                           ; $5f7d: $bf
	adc  a                                           ; $5f7e: $8f
	ld   hl, sp-$06                                  ; $5f7f: $f8 $fa
	ld   c, a                                        ; $5f81: $4f
	and  c                                           ; $5f82: $a1
	or   [hl]                                        ; $5f83: $b6
	ld   l, a                                        ; $5f84: $6f
	ld   h, c                                        ; $5f85: $61
	ld   hl, $571a                                   ; $5f86: $21 $1a $57
	di                                               ; $5f89: $f3
	add  hl, sp                                      ; $5f8a: $39
	dec  hl                                          ; $5f8b: $2b
	ld   sp, hl                                      ; $5f8c: $f9
	rst  $38                                         ; $5f8d: $ff
	ld   l, a                                        ; $5f8e: $6f
	jp   hl                                          ; $5f8f: $e9


	sub  $5d                                         ; $5f90: $d6 $5d
	ei                                               ; $5f92: $fb
	or   e                                           ; $5f93: $b3
	rla                                              ; $5f94: $17
	ld   h, a                                        ; $5f95: $67
	ld   [hl], c                                     ; $5f96: $71
	inc  d                                           ; $5f97: $14
	inc  [hl]                                        ; $5f98: $34
	sub  [hl]                                        ; $5f99: $96
	ld   a, d                                        ; $5f9a: $7a
	sub  l                                           ; $5f9b: $95
	ld   l, d                                        ; $5f9c: $6a
	db   $fd                                         ; $5f9d: $fd
	xor  a                                           ; $5f9e: $af
	ld   a, d                                        ; $5f9f: $7a
	ld   a, [$78ab]                                  ; $5fa0: $fa $ab $78
	rst  $30                                         ; $5fa3: $f7
	dec  [hl]                                        ; $5fa4: $35
	jr   @-$4c                                       ; $5fa5: $18 $b2

	ld   d, $36                                      ; $5fa7: $16 $36
	ld   [hl], c                                     ; $5fa9: $71
	inc  [hl]                                        ; $5faa: $34
	ld   e, a                                        ; $5fab: $5f
	ld   a, [$5b7c]                                  ; $5fac: $fa $7c $5b
	and  $bf                                         ; $5faf: $e6 $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb1: $cf
	rst  $30                                         ; $5fb2: $f7
	ld   h, e                                        ; $5fb3: $63
	ld   d, $c9                                      ; $5fb4: $16 $c9
	rst  $10                                         ; $5fb6: $d7
	ld   de, $4911                                   ; $5fb7: $11 $11 $49
	ld   l, c                                        ; $5fba: $69
	adc  b                                           ; $5fbb: $88
	sbc  c                                           ; $5fbc: $99
	ld   d, a                                        ; $5fbd: $57
	cp   h                                           ; $5fbe: $bc
	ld   a, [$b9ff]                                  ; $5fbf: $fa $ff $b9
	scf                                              ; $5fc2: $37
	sbc  l                                           ; $5fc3: $9d
	ret  z                                           ; $5fc4: $c8

	halt                                             ; $5fc5: $76
	and  a                                           ; $5fc6: $a7
	ld   h, c                                        ; $5fc7: $61
	ld   de, $d84c                                   ; $5fc8: $11 $4c $d8
	ld   de, $dc46                                   ; $5fcb: $11 $46 $dc
	ld   a, e                                        ; $5fce: $7b
	rst  JumpTable                                         ; $5fcf: $df
	rst  $38                                         ; $5fd0: $ff
	ld   [hl], h                                     ; $5fd1: $74
	ld   h, [hl]                                     ; $5fd2: $66
	rst  $28                                         ; $5fd3: $ef
	ld   a, [$5a42]                                  ; $5fd4: $fa $42 $5a
	sbc  d                                           ; $5fd7: $9a
	ld   d, d                                        ; $5fd8: $52
	ld   b, l                                        ; $5fd9: $45
	ld   h, l                                        ; $5fda: $65
	ld   b, d                                        ; $5fdb: $42
	ld   h, $cc                                      ; $5fdc: $26 $cc
	db   $dd                                         ; $5fde: $dd
	ld   [hl], a                                     ; $5fdf: $77
	sbc  l                                           ; $5fe0: $9d
	cp   $a7                                         ; $5fe1: $fe $a7
	xor  b                                           ; $5fe3: $a8
	call $2744                                       ; $5fe4: $cd $44 $27
	rst  $38                                         ; $5fe7: $ff
	or   h                                           ; $5fe8: $b4
	ld   de, $aa39                                   ; $5fe9: $11 $39 $aa
	ld   b, d                                        ; $5fec: $42
	ld   b, h                                        ; $5fed: $44
	ld   e, c                                        ; $5fee: $59
	cp   h                                           ; $5fef: $bc
	xor  c                                           ; $5ff0: $a9
	cp   e                                           ; $5ff1: $bb
	ret  z                                           ; $5ff2: $c8

	ld   a, c                                        ; $5ff3: $79
	xor  h                                           ; $5ff4: $ac
	jp   c, Jump_0b4_6654                            ; $5ff5: $da $54 $66

	call Call_0b4_43a6                               ; $5ff8: $cd $a6 $43
	ld   d, [hl]                                     ; $5ffb: $56
	ld   [hl+], a                                    ; $5ffc: $22
	ld   c, b                                        ; $5ffd: $48
	call z, Call_0b4_5694                            ; $5ffe: $cc $94 $56
	adc  h                                           ; $6001: $8c
	xor  c                                           ; $6002: $a9
	cp   h                                           ; $6003: $bc
	db   $eb                                         ; $6004: $eb
	ld   d, d                                        ; $6005: $52
	ld   e, c                                        ; $6006: $59
	db   $ec                                         ; $6007: $ec
	add  a                                           ; $6008: $87
	ld   a, e                                        ; $6009: $7b
	or   a                                           ; $600a: $b7
	inc  hl                                          ; $600b: $23
	ld   l, c                                        ; $600c: $69
	or   l                                           ; $600d: $b5
	ld   b, l                                        ; $600e: $45
	ld   h, a                                        ; $600f: $67
	sub  a                                           ; $6010: $97
	ld   h, a                                        ; $6011: $67
	adc  h                                           ; $6012: $8c
	res  2, [hl]                                     ; $6013: $cb $96
	ld   l, b                                        ; $6015: $68
	xor  e                                           ; $6016: $ab
	cp   e                                           ; $6017: $bb
	ld   a, b                                        ; $6018: $78
	sub  a                                           ; $6019: $97
	sub  a                                           ; $601a: $97
	adc  b                                           ; $601b: $88
	adc  c                                           ; $601c: $89
	ld   [hl], a                                     ; $601d: $77
	ld   b, e                                        ; $601e: $43
	dec  [hl]                                        ; $601f: $35
	sbc  d                                           ; $6020: $9a
	bit  4, l                                        ; $6021: $cb $65
	inc  [hl]                                        ; $6023: $34
	adc  h                                           ; $6024: $8c
	res  4, a                                        ; $6025: $cb $a7
	ld   [hl], a                                     ; $6027: $77
	ld   [hl], a                                     ; $6028: $77
	adc  d                                           ; $6029: $8a
	cp   e                                           ; $602a: $bb
	sbc  c                                           ; $602b: $99
	ld   h, [hl]                                     ; $602c: $66
	ld   [hl], l                                     ; $602d: $75
	ld   h, a                                        ; $602e: $67
	sbc  c                                           ; $602f: $99
	sub  [hl]                                        ; $6030: $96
	ld   b, [hl]                                     ; $6031: $46
	ld   e, b                                        ; $6032: $58
	adc  b                                           ; $6033: $88
	sbc  c                                           ; $6034: $99
	xor  b                                           ; $6035: $a8
	add  [hl]                                        ; $6036: $86
	ld   d, a                                        ; $6037: $57
	sbc  c                                           ; $6038: $99
	cp   e                                           ; $6039: $bb
	xor  d                                           ; $603a: $aa
	xor  d                                           ; $603b: $aa
	sub  a                                           ; $603c: $97
	add  [hl]                                        ; $603d: $86
	ld   a, b                                        ; $603e: $78
	ld   a, b                                        ; $603f: $78
	sub  a                                           ; $6040: $97
	ld   h, [hl]                                     ; $6041: $66
	ld   h, a                                        ; $6042: $67
	add  a                                           ; $6043: $87
	sbc  b                                           ; $6044: $98
	adc  b                                           ; $6045: $88
	ld   [hl], l                                     ; $6046: $75
	ld   a, b                                        ; $6047: $78
	adc  c                                           ; $6048: $89
	ld   [hl], a                                     ; $6049: $77
	adc  b                                           ; $604a: $88
	sbc  e                                           ; $604b: $9b
	xor  e                                           ; $604c: $ab
	cp   d                                           ; $604d: $ba
	add  [hl]                                        ; $604e: $86
	ld   b, l                                        ; $604f: $45
	sbc  d                                           ; $6050: $9a
	sbc  c                                           ; $6051: $99
	ld   h, l                                        ; $6052: $65
	ld   h, a                                        ; $6053: $67
	adc  d                                           ; $6054: $8a
	sbc  c                                           ; $6055: $99
	sbc  b                                           ; $6056: $98
	ld   [hl], l                                     ; $6057: $75
	ld   d, [hl]                                     ; $6058: $56
	adc  b                                           ; $6059: $88
	add  a                                           ; $605a: $87
	ld   h, a                                        ; $605b: $67
	sbc  c                                           ; $605c: $99
	xor  c                                           ; $605d: $a9
	adc  d                                           ; $605e: $8a
	sbc  b                                           ; $605f: $98
	and  a                                           ; $6060: $a7
	ld   h, [hl]                                     ; $6061: $66
	ld   a, c                                        ; $6062: $79
	cp   c                                           ; $6063: $b9
	ld   a, b                                        ; $6064: $78
	ld   h, [hl]                                     ; $6065: $66
	ld   [hl], a                                     ; $6066: $77
	sbc  b                                           ; $6067: $98
	sub  a                                           ; $6068: $97
	adc  c                                           ; $6069: $89
	sub  a                                           ; $606a: $97
	ld   d, h                                        ; $606b: $54
	ld   l, b                                        ; $606c: $68
	sbc  d                                           ; $606d: $9a
	add  a                                           ; $606e: $87
	sbc  d                                           ; $606f: $9a
	sbc  d                                           ; $6070: $9a
	sbc  b                                           ; $6071: $98
	sub  a                                           ; $6072: $97
	halt                                             ; $6073: $76
	ld   h, [hl]                                     ; $6074: $66
	ld   a, b                                        ; $6075: $78
	ld   a, b                                        ; $6076: $78
	ld   a, b                                        ; $6077: $78
	sbc  b                                           ; $6078: $98
	sbc  b                                           ; $6079: $98
	ld   a, b                                        ; $607a: $78
	ld   [hl], a                                     ; $607b: $77
	adc  c                                           ; $607c: $89
	add  a                                           ; $607d: $87
	ld   [hl], a                                     ; $607e: $77
	ld   [hl], a                                     ; $607f: $77
	adc  d                                           ; $6080: $8a
	ret                                              ; $6081: $c9


	add  [hl]                                        ; $6082: $86
	ld   l, b                                        ; $6083: $68
	sbc  b                                           ; $6084: $98
	add  a                                           ; $6085: $87
	ld   a, b                                        ; $6086: $78
	adc  b                                           ; $6087: $88
	ld   [hl], a                                     ; $6088: $77
	ld   a, b                                        ; $6089: $78
	xor  b                                           ; $608a: $a8
	adc  b                                           ; $608b: $88
	ld   a, b                                        ; $608c: $78
	adc  b                                           ; $608d: $88
	ld   [hl], a                                     ; $608e: $77
	ld   a, b                                        ; $608f: $78
	sbc  b                                           ; $6090: $98
	add  a                                           ; $6091: $87
	ld   a, b                                        ; $6092: $78
	sbc  c                                           ; $6093: $99
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	add  a                                           ; $6096: $87
	ld   a, b                                        ; $6097: $78
	sbc  c                                           ; $6098: $99
	sbc  b                                           ; $6099: $98
	adc  c                                           ; $609a: $89
	add  a                                           ; $609b: $87
	ld   [hl], a                                     ; $609c: $77
	ld   a, c                                        ; $609d: $79
	adc  b                                           ; $609e: $88
	add  a                                           ; $609f: $87
	ld   a, b                                        ; $60a0: $78
	adc  c                                           ; $60a1: $89
	adc  b                                           ; $60a2: $88
	ld   a, b                                        ; $60a3: $78
	add  a                                           ; $60a4: $87
	ld   [hl], a                                     ; $60a5: $77
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  c                                           ; $60ab: $89
	add  a                                           ; $60ac: $87
	ld   [hl], a                                     ; $60ad: $77
	ld   a, b                                        ; $60ae: $78
	add  a                                           ; $60af: $87
	adc  b                                           ; $60b0: $88
	adc  c                                           ; $60b1: $89
	adc  c                                           ; $60b2: $89
	sbc  b                                           ; $60b3: $98
	ld   a, b                                        ; $60b4: $78
	adc  b                                           ; $60b5: $88
	add  a                                           ; $60b6: $87
	ld   a, b                                        ; $60b7: $78
	adc  c                                           ; $60b8: $89
	adc  b                                           ; $60b9: $88
	adc  c                                           ; $60ba: $89
	sbc  c                                           ; $60bb: $99
	adc  b                                           ; $60bc: $88
	adc  b                                           ; $60bd: $88
	adc  b                                           ; $60be: $88
	adc  b                                           ; $60bf: $88
	adc  b                                           ; $60c0: $88
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	adc  b                                           ; $60c3: $88
	adc  b                                           ; $60c4: $88
	adc  b                                           ; $60c5: $88
	adc  b                                           ; $60c6: $88
	adc  b                                           ; $60c7: $88
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	ld   de, $1111                                   ; $60ca: $11 $11 $11
	ld   de, $4800                                   ; $60cd: $11 $00 $48
	ld   de, $1111                                   ; $60d0: $11 $11 $11
	ld   de, $1111                                   ; $60d3: $11 $11 $11
	ld   de, $1111                                   ; $60d6: $11 $11 $11
	ld   de, $5413                                   ; $60d9: $11 $13 $54
	ld   d, h                                        ; $60dc: $54
	ld   d, h                                        ; $60dd: $54
	ld   b, c                                        ; $60de: $41
	rra                                              ; $60df: $1f
	rst  $38                                         ; $60e0: $ff
	pop  af                                          ; $60e1: $f1
	ld   de, $1511                                   ; $60e2: $11 $11 $15
	pop  af                                          ; $60e5: $f1
	ld   de, $de1c                                   ; $60e6: $11 $1c $de
	call z, $c1de                                    ; $60e9: $cc $de $c1
	ld   de, $1111                                   ; $60ec: $11 $11 $11
	ld   de, $1111                                   ; $60ef: $11 $11 $11
	ld   de, $1111                                   ; $60f2: $11 $11 $11
	ld   de, $1111                                   ; $60f5: $11 $11 $11
	ld   de, $5411                                   ; $60f8: $11 $11 $54
	ld   b, h                                        ; $60fb: $44
	push af                                          ; $60fc: $f5
	ld   de, $5454                                   ; $60fd: $11 $54 $54
	ld   h, a                                        ; $6100: $67
	ld   [hl], d                                     ; $6101: $72
	ld   de, $1111                                   ; $6102: $11 $11 $11
	ld   de, $1112                                   ; $6105: $11 $12 $11
	ld   [de], a                                     ; $6108: $12
	ld   de, $1111                                   ; $6109: $11 $11 $11
	ld   h, [hl]                                     ; $610c: $66
	halt                                             ; $610d: $76
	push bc                                          ; $610e: $c5
	ld   de, $8888                                   ; $610f: $11 $88 $88
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	add  a                                           ; $6115: $87
	ld   [hl], a                                     ; $6116: $77
	ld   [hl], a                                     ; $6117: $77
	ld   [hl], a                                     ; $6118: $77
	ld   [hl], a                                     ; $6119: $77
	ld   [hl], a                                     ; $611a: $77
	ld   [hl], a                                     ; $611b: $77
	ld   [hl], a                                     ; $611c: $77
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	sbc  d                                           ; $611f: $9a
	xor  e                                           ; $6120: $ab
	xor  e                                           ; $6121: $ab
	res  7, e                                        ; $6122: $cb $bb
	xor  d                                           ; $6124: $aa
	xor  c                                           ; $6125: $a9
	sbc  c                                           ; $6126: $99
	sbc  b                                           ; $6127: $98
	add  a                                           ; $6128: $87
	ld   [hl], a                                     ; $6129: $77
	ld   h, [hl]                                     ; $612a: $66
	ld   d, l                                        ; $612b: $55
	ld   b, h                                        ; $612c: $44
	ld   b, e                                        ; $612d: $43
	inc  sp                                          ; $612e: $33
	ld   b, c                                        ; $612f: $41
	ld   [hl], $25                                   ; $6130: $36 $25
	halt                                             ; $6132: $76
	sbc  b                                           ; $6133: $98
	xor  h                                           ; $6134: $ac
	cp   h                                           ; $6135: $bc
	sbc  $dc                                         ; $6136: $de $dc
	db   $ed                                         ; $6138: $ed
	call c, $cbcc                                    ; $6139: $dc $cc $cb
	xor  d                                           ; $613c: $aa
	xor  c                                           ; $613d: $a9
	adc  b                                           ; $613e: $88
	ld   [hl], a                                     ; $613f: $77
	ld   [hl], a                                     ; $6140: $77
	halt                                             ; $6141: $76
	ld   h, [hl]                                     ; $6142: $66
	ld   h, [hl]                                     ; $6143: $66
	ld   h, [hl]                                     ; $6144: $66
	ld   d, h                                        ; $6145: $54
	ld   b, h                                        ; $6146: $44
	ld   [hl-], a                                    ; $6147: $32
	inc  hl                                          ; $6148: $23
	ld   sp, $3645                                   ; $6149: $31 $45 $36
	ld   a, b                                        ; $614c: $78
	sbc  d                                           ; $614d: $9a
	call $dede                                       ; $614e: $cd $de $de
	db   $fd                                         ; $6151: $fd
	db   $dd                                         ; $6152: $dd
	call c, $a9ac                                    ; $6153: $dc $ac $a9
	adc  b                                           ; $6156: $88
	add  a                                           ; $6157: $87
	ld   h, [hl]                                     ; $6158: $66
	ld   h, [hl]                                     ; $6159: $66
	ld   h, [hl]                                     ; $615a: $66
	halt                                             ; $615b: $76
	ld   h, [hl]                                     ; $615c: $66
	ld   h, [hl]                                     ; $615d: $66
	ld   d, l                                        ; $615e: $55
	ld   d, e                                        ; $615f: $53
	ld   [hl+], a                                    ; $6160: $22
	ld   b, e                                        ; $6161: $43
	ld   [de], a                                     ; $6162: $12
	ld   d, h                                        ; $6163: $54
	ld   [hl], $8a                                   ; $6164: $36 $8a
	xor  e                                           ; $6166: $ab
	sbc  $ff                                         ; $6167: $de $ff
	rst  $38                                         ; $6169: $ff
	xor  $dd                                         ; $616a: $ee $dd
	jp   c, $97aa                                    ; $616c: $da $aa $97

	ld   [hl], a                                     ; $616f: $77
	ld   [hl], l                                     ; $6170: $75
	ld   d, [hl]                                     ; $6171: $56
	ld   h, [hl]                                     ; $6172: $66
	ld   h, a                                        ; $6173: $67
	ld   [hl], a                                     ; $6174: $77
	ld   h, a                                        ; $6175: $67
	ld   h, l                                        ; $6176: $65
	ld   b, h                                        ; $6177: $44
	ld   sp, $2102                                   ; $6178: $31 $02 $21
	inc  d                                           ; $617b: $14
	ld   b, h                                        ; $617c: $44
	ld   e, d                                        ; $617d: $5a
	cp   e                                           ; $617e: $bb
	rst  JumpTable                                         ; $617f: $df
	rst  $38                                         ; $6180: $ff
	rst  $38                                         ; $6181: $ff
	rst  $38                                         ; $6182: $ff
	db   $fd                                         ; $6183: $fd
	db   $db                                         ; $6184: $db
	xor  d                                           ; $6185: $aa
	sbc  b                                           ; $6186: $98
	ld   h, l                                        ; $6187: $65
	ld   h, l                                        ; $6188: $65
	ld   d, h                                        ; $6189: $54
	ld   d, [hl]                                     ; $618a: $56
	ld   h, [hl]                                     ; $618b: $66
	ld   a, b                                        ; $618c: $78
	add  a                                           ; $618d: $87
	halt                                             ; $618e: $76
	ld   d, h                                        ; $618f: $54
	ld   hl, $1111                                   ; $6190: $21 $11 $11
	inc  de                                          ; $6193: $13
	ld   b, e                                        ; $6194: $43
	ld   l, e                                        ; $6195: $6b
	call z, $ffef                                    ; $6196: $cc $ef $ff
	rst  $38                                         ; $6199: $ff
	rst  $38                                         ; $619a: $ff
	xor  $cb                                         ; $619b: $ee $cb
	sub  a                                           ; $619d: $97
	ld   h, l                                        ; $619e: $65
	ld   d, h                                        ; $619f: $54
	inc  [hl]                                        ; $61a0: $34
	ld   d, l                                        ; $61a1: $55
	ld   h, [hl]                                     ; $61a2: $66
	adc  c                                           ; $61a3: $89
	sbc  c                                           ; $61a4: $99
	adc  b                                           ; $61a5: $88
	add  [hl]                                        ; $61a6: $86
	ld   sp, $1111                                   ; $61a7: $31 $11 $11
	ld   de, $5513                                   ; $61aa: $11 $13 $55
	adc  h                                           ; $61ad: $8c
	rst  $38                                         ; $61ae: $ff
	rst  $38                                         ; $61af: $ff
	rst  $38                                         ; $61b0: $ff
	rst  $38                                         ; $61b1: $ff
	rst  $38                                         ; $61b2: $ff
	db   $ec                                         ; $61b3: $ec
	sub  a                                           ; $61b4: $97
	ld   h, l                                        ; $61b5: $65
	ld   sp, $4423                                   ; $61b6: $31 $23 $44
	ld   e, b                                        ; $61b9: $58
	sbc  c                                           ; $61ba: $99
	xor  d                                           ; $61bb: $aa
	res  2, a                                        ; $61bc: $cb $97
	ld   b, d                                        ; $61be: $42
	ld   de, $1111                                   ; $61bf: $11 $11 $11
	ld   de, $8c56                                   ; $61c2: $11 $56 $8c
	rst  $38                                         ; $61c5: $ff
	rst  $38                                         ; $61c6: $ff
	rst  $38                                         ; $61c7: $ff
	rst  $38                                         ; $61c8: $ff
	rst  $38                                         ; $61c9: $ff
	call c, Call_0b4_4296                            ; $61ca: $dc $96 $42
	ld   hl, $3512                                   ; $61cd: $21 $12 $35
	ld   a, c                                        ; $61d0: $79
	xor  e                                           ; $61d1: $ab
	call Call_0b4_74db                               ; $61d2: $cd $db $74
	ld   hl, $1111                                   ; $61d5: $21 $11 $11
	ld   de, $8b12                                   ; $61d8: $11 $12 $8b
	rst  $38                                         ; $61db: $ff
	rst  $38                                         ; $61dc: $ff
	rst  $38                                         ; $61dd: $ff
	rst  $38                                         ; $61de: $ff
	rst  $38                                         ; $61df: $ff
	db   $fd                                         ; $61e0: $fd
	add  [hl]                                        ; $61e1: $86
	ld   b, e                                        ; $61e2: $43
	ld   hl, $3611                                   ; $61e3: $21 $11 $36
	sbc  d                                           ; $61e6: $9a
	xor  l                                           ; $61e7: $ad
	cp   $ec                                         ; $61e8: $fe $ec
	and  [hl]                                        ; $61ea: $a6
	ld   sp, $1111                                   ; $61eb: $31 $11 $11
	ld   de, $6c11                                   ; $61ee: $11 $11 $6c
	rst  $38                                         ; $61f1: $ff
	rst  $38                                         ; $61f2: $ff
	rst  $38                                         ; $61f3: $ff
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	db   $ec                                         ; $61f6: $ec
	add  l                                           ; $61f7: $85
	ld   de, $1111                                   ; $61f8: $11 $11 $11
	scf                                              ; $61fb: $37
	cp   [hl]                                        ; $61fc: $be
	rst  $38                                         ; $61fd: $ff
	cp   $ee                                         ; $61fe: $fe $ee
	and  l                                           ; $6200: $a5
	ld   de, $1111                                   ; $6201: $11 $11 $11
	ld   de, $9e11                                   ; $6204: $11 $11 $9e
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	rst  $38                                         ; $6209: $ff
	rst  $38                                         ; $620a: $ff
	db   $fd                                         ; $620b: $fd
	sub  [hl]                                        ; $620c: $96
	ld   b, e                                        ; $620d: $43
	ld   de, $2511                                   ; $620e: $11 $11 $25
	sbc  h                                           ; $6211: $9c
	rst  $28                                         ; $6212: $ef
	rst  $38                                         ; $6213: $ff
	rst  $38                                         ; $6214: $ff
	jp   z, $1151                                    ; $6215: $ca $51 $11

	ld   de, $1111                                   ; $6218: $11 $11 $11
	dec  d                                           ; $621b: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $621c: $cf
	rst  $38                                         ; $621d: $ff
	rst  $38                                         ; $621e: $ff
	rst  $38                                         ; $621f: $ff
	rst  $38                                         ; $6220: $ff
	rst  $20                                         ; $6221: $e7
	ld   hl, $2112                                   ; $6222: $21 $12 $21
	ld   de, $ff39                                   ; $6225: $11 $39 $ff
	rst  $38                                         ; $6228: $ff
	rst  $38                                         ; $6229: $ff
	rst  $38                                         ; $622a: $ff
	rst  ToBoot                                         ; $622b: $c7
	ld   de, $1111                                   ; $622c: $11 $11 $11
	ld   de, $6d12                                   ; $622f: $11 $12 $6d
	rst  $38                                         ; $6232: $ff
	rst  $38                                         ; $6233: $ff
	rst  $38                                         ; $6234: $ff
	rst  $38                                         ; $6235: $ff
	db   $fd                                         ; $6236: $fd
	sub  e                                           ; $6237: $93
	ld   de, $1111                                   ; $6238: $11 $11 $11
	inc  h                                           ; $623b: $24
	ld   a, [hl]                                     ; $623c: $7e
	rst  $38                                         ; $623d: $ff
	rst  $38                                         ; $623e: $ff
	db   $fc                                         ; $623f: $fc
	xor  b                                           ; $6240: $a8
	ld   h, c                                        ; $6241: $61
	ld   de, $1111                                   ; $6242: $11 $11 $11
	dec  h                                           ; $6245: $25
	ld   a, d                                        ; $6246: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6247: $cf
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	cp   $eb                                         ; $624a: $fe $eb
	sbc  b                                           ; $624c: $98
	ld   b, c                                        ; $624d: $41
	ld   de, $6913                                   ; $624e: $11 $13 $69
	cp   h                                           ; $6251: $bc
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	cp   $94                                         ; $6254: $fe $94
	ld   de, $1111                                   ; $6256: $11 $11 $11
	ld   de, $ef17                                   ; $6259: $11 $17 $ef
	rst  $38                                         ; $625c: $ff
	rst  $38                                         ; $625d: $ff
	rst  $38                                         ; $625e: $ff
	rst  $38                                         ; $625f: $ff
	or   h                                           ; $6260: $b4
	ld   [de], a                                     ; $6261: $12
	inc  [hl]                                        ; $6262: $34
	ld   hl, $3a11                                   ; $6263: $21 $11 $3a
	rst  $38                                         ; $6266: $ff
	rst  $38                                         ; $6267: $ff
	rst  $38                                         ; $6268: $ff
	cp   $c7                                         ; $6269: $fe $c7
	ld   de, $1111                                   ; $626b: $11 $11 $11
	ld   de, $cf17                                   ; $626e: $11 $17 $cf
	rst  $38                                         ; $6271: $ff
	rst  $38                                         ; $6272: $ff
	rst  $38                                         ; $6273: $ff
	rst  $38                                         ; $6274: $ff
	sub  h                                           ; $6275: $94
	ld   de, $3133                                   ; $6276: $11 $33 $31
	inc  de                                          ; $6279: $13
	ld   l, h                                        ; $627a: $6c
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	ret                                              ; $627e: $c9


	ld   [hl], e                                     ; $627f: $73
	ld   de, $1111                                   ; $6280: $11 $11 $11
	ld   de, $ff7d                                   ; $6283: $11 $7d $ff
	rst  $38                                         ; $6286: $ff
	rst  $38                                         ; $6287: $ff
	rst  $38                                         ; $6288: $ff
	ei                                               ; $6289: $fb
	ld   b, c                                        ; $628a: $41
	ld   de, $7636                                   ; $628b: $11 $36 $76
	ld   d, h                                        ; $628e: $54
	ld   a, h                                        ; $628f: $7c
	rst  $38                                         ; $6290: $ff
	rst  $38                                         ; $6291: $ff
	db   $fc                                         ; $6292: $fc
	ld   h, d                                        ; $6293: $62
	ld   de, $1111                                   ; $6294: $11 $11 $11
	ld   de, $ef13                                   ; $6297: $11 $13 $ef
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	rst  $38                                         ; $629d: $ff
	ld   sp, hl                                      ; $629e: $f9
	ld   de, $5911                                   ; $629f: $11 $11 $59
	res  0, [hl]                                     ; $62a2: $cb $86
	sbc  a                                           ; $62a4: $9f
	rst  $38                                         ; $62a5: $ff
	rst  $38                                         ; $62a6: $ff
	push af                                          ; $62a7: $f5
	ld   de, $1111                                   ; $62a8: $11 $11 $11
	ld   de, $2d11                                   ; $62ab: $11 $11 $2d
	rst  $38                                         ; $62ae: $ff
	rst  $38                                         ; $62af: $ff
	rst  $38                                         ; $62b0: $ff
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	or   d                                           ; $62b3: $b2
	ld   de, $9e12                                   ; $62b4: $11 $12 $9e
	rst  $38                                         ; $62b7: $ff
	adc  $ef                                         ; $62b8: $ce $ef
	rst  $38                                         ; $62ba: $ff
	cp   $61                                         ; $62bb: $fe $61
	ld   de, $1111                                   ; $62bd: $11 $11 $11
	ld   de, $ff16                                   ; $62c0: $11 $16 $ff
	rst  $38                                         ; $62c3: $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	call c, $11a7                                    ; $62c6: $dc $a7 $11
	ld   de, $cf38                                   ; $62c9: $11 $38 $cf
	rst  $38                                         ; $62cc: $ff
	rst  $38                                         ; $62cd: $ff
	rst  $38                                         ; $62ce: $ff
	ei                                               ; $62cf: $fb
	ld   d, c                                        ; $62d0: $51
	ld   de, $1111                                   ; $62d1: $11 $11 $11
	ld   de, $ff4d                                   ; $62d4: $11 $4d $ff
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	cp   $d9                                         ; $62d9: $fe $d9
	ld   [hl], c                                     ; $62db: $71
	ld   de, $7e14                                   ; $62dc: $11 $14 $7e
	rst  $28                                         ; $62df: $ef
	rst  $38                                         ; $62e0: $ff
	rst  $38                                         ; $62e1: $ff
	rst  $38                                         ; $62e2: $ff
	and  $11                                         ; $62e3: $e6 $11
	ld   de, $1111                                   ; $62e5: $11 $11 $11
	ld   [de], a                                     ; $62e8: $12
	sbc  a                                           ; $62e9: $9f
	rst  $38                                         ; $62ea: $ff
	rst  $38                                         ; $62eb: $ff
	rst  $38                                         ; $62ec: $ff
	jp   z, $3165                                    ; $62ed: $ca $65 $31

	ld   [de], a                                     ; $62f0: $12
	ld   [hl], $ad                                   ; $62f1: $36 $ad
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	rst  $38                                         ; $62f5: $ff
	db   $fc                                         ; $62f6: $fc
	ld   b, c                                        ; $62f7: $41
	ld   de, $1111                                   ; $62f8: $11 $11 $11
	ld   de, $ff5c                                   ; $62fb: $11 $5c $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	ld   sp, hl                                      ; $6300: $f9
	ld   [hl], h                                     ; $6301: $74
	ld   hl, $1211                                   ; $6302: $21 $11 $12
	ld   l, d                                        ; $6305: $6a
	rst  $28                                         ; $6306: $ef
	rst  $38                                         ; $6307: $ff
	rst  $38                                         ; $6308: $ff
	db   $fd                                         ; $6309: $fd
	ld   h, c                                        ; $630a: $61
	ld   de, $1111                                   ; $630b: $11 $11 $11
	ld   de, $ff19                                   ; $630e: $11 $19 $ff
	rst  $38                                         ; $6311: $ff
	rst  $38                                         ; $6312: $ff
	ei                                               ; $6313: $fb
	add  e                                           ; $6314: $83
	ld   de, $1111                                   ; $6315: $11 $11 $11
	ld   c, c                                        ; $6318: $49
	rst  $28                                         ; $6319: $ef
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	rst  $38                                         ; $631c: $ff
	add  c                                           ; $631d: $81
	ld   de, $1111                                   ; $631e: $11 $11 $11
	ld   de, $ff18                                   ; $6321: $11 $18 $ff
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	db   $fd                                         ; $6326: $fd
	add  h                                           ; $6327: $84
	ld   hl, $1111                                   ; $6328: $21 $11 $11
	dec  d                                           ; $632b: $15
	xor  a                                           ; $632c: $af
	rst  $38                                         ; $632d: $ff
	rst  $38                                         ; $632e: $ff
	rst  $38                                         ; $632f: $ff
	ld   d, c                                        ; $6330: $51
	ld   de, $1111                                   ; $6331: $11 $11 $11
	ld   de, $ff1a                                   ; $6334: $11 $1a $ff
	rst  $38                                         ; $6337: $ff
	rst  $38                                         ; $6338: $ff
	ei                                               ; $6339: $fb
	ld   h, c                                        ; $633a: $61
	ld   de, $1111                                   ; $633b: $11 $11 $11
	dec  d                                           ; $633e: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $633f: $cf
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	ld   sp, hl                                      ; $6342: $f9
	ld   de, $1111                                   ; $6343: $11 $11 $11
	ld   de, $7f11                                   ; $6346: $11 $11 $7f
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	ld   hl, sp+$21                                  ; $634c: $f8 $21
	ld   de, $1111                                   ; $634e: $11 $11 $11
	add  hl, hl                                      ; $6351: $29
	rst  $38                                         ; $6352: $ff
	rst  $38                                         ; $6353: $ff
	rst  $38                                         ; $6354: $ff
	db   $e4                                         ; $6355: $e4
	ld   de, $1111                                   ; $6356: $11 $11 $11
	ld   de, $ff16                                   ; $6359: $11 $16 $ff
	rst  $38                                         ; $635c: $ff
	rst  $38                                         ; $635d: $ff
	rst  $38                                         ; $635e: $ff
	or   l                                           ; $635f: $b5
	ld   de, $1111                                   ; $6360: $11 $11 $11
	ld   [de], a                                     ; $6363: $12
	ld   a, a                                        ; $6364: $7f
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	cp   $21                                         ; $6367: $fe $21
	ld   de, $1111                                   ; $6369: $11 $11 $11
	ld   [de], a                                     ; $636c: $12
	rst  JumpTable                                         ; $636d: $df
	rst  $38                                         ; $636e: $ff
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	ld   sp, hl                                      ; $6371: $f9
	ld   b, d                                        ; $6372: $42
	ld   de, $1111                                   ; $6373: $11 $11 $11
	ld   c, h                                        ; $6376: $4c
	rst  $38                                         ; $6377: $ff
	rst  $38                                         ; $6378: $ff
	db   $fd                                         ; $6379: $fd
	ld   hl, $1111                                   ; $637a: $21 $11 $11
	ld   de, $cf13                                   ; $637d: $11 $13 $cf
	rst  $38                                         ; $6380: $ff
	rst  $38                                         ; $6381: $ff
	rst  $38                                         ; $6382: $ff
	ld   hl, sp+$31                                  ; $6383: $f8 $31
	ld   de, $1211                                   ; $6385: $11 $11 $12
	adc  a                                           ; $6388: $8f
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	rst  $38                                         ; $638b: $ff
	ld   sp, $1111                                   ; $638c: $31 $11 $11
	ld   de, $ff18                                   ; $638f: $11 $18 $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	rst  $38                                         ; $6394: $ff
	cp   $91                                         ; $6395: $fe $91
	ld   de, $1111                                   ; $6397: $11 $11 $11
	ld   l, a                                        ; $639a: $6f
	rst  $38                                         ; $639b: $ff
	rst  $38                                         ; $639c: $ff
	ei                                               ; $639d: $fb
	ld   de, $1111                                   ; $639e: $11 $11 $11
	ld   de, $ff1b                                   ; $63a1: $11 $1b $ff
	rst  $38                                         ; $63a4: $ff
	rst  $38                                         ; $63a5: $ff
	rst  $38                                         ; $63a6: $ff
	cp   $71                                         ; $63a7: $fe $71
	ld   de, $1111                                   ; $63a9: $11 $11 $11
	xor  a                                           ; $63ac: $af
	rst  $38                                         ; $63ad: $ff
	rst  $38                                         ; $63ae: $ff
	pop  de                                          ; $63af: $d1
	ld   de, $1111                                   ; $63b0: $11 $11 $11
	ld   de, $ff9f                                   ; $63b3: $11 $9f $ff
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	rst  $38                                         ; $63b8: $ff
	and  $11                                         ; $63b9: $e6 $11
	ld   de, $1911                                   ; $63bb: $11 $11 $19
	rst  $38                                         ; $63be: $ff
	rst  $38                                         ; $63bf: $ff
	db   $fc                                         ; $63c0: $fc
	ld   de, $1111                                   ; $63c1: $11 $11 $11
	ld   de, $cf37                                   ; $63c4: $11 $37 $cf
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	db   $fd                                         ; $63ca: $fd
	ld   d, c                                        ; $63cb: $51
	ld   de, $1511                                   ; $63cc: $11 $11 $15
	rst  JumpTable                                         ; $63cf: $df
	rst  $38                                         ; $63d0: $ff
	rst  $38                                         ; $63d1: $ff
	sub  c                                           ; $63d2: $91
	ld   de, $1111                                   ; $63d3: $11 $11 $11
	inc  d                                           ; $63d6: $14
	ld   a, l                                        ; $63d7: $7d
	rst  $38                                         ; $63d8: $ff
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	add  sp, $21                                     ; $63dc: $e8 $21
	ld   de, $9e11                                   ; $63de: $11 $11 $9e
	rst  $38                                         ; $63e1: $ff
	cp   $61                                         ; $63e2: $fe $61
	ld   de, $1111                                   ; $63e4: $11 $11 $11
	daa                                              ; $63e7: $27
	sbc  e                                           ; $63e8: $9b
	rst  JumpTable                                         ; $63e9: $df
	rst  $38                                         ; $63ea: $ff
	rst  $38                                         ; $63eb: $ff
	rst  $38                                         ; $63ec: $ff
	jp   hl                                          ; $63ed: $e9


	ld   d, c                                        ; $63ee: $51
	ld   de, $9e13                                   ; $63ef: $11 $13 $9e
	rst  $38                                         ; $63f2: $ff
	db   $fc                                         ; $63f3: $fc
	ld   d, c                                        ; $63f4: $51
	ld   de, $1211                                   ; $63f5: $11 $11 $12
	ld   d, a                                        ; $63f8: $57
	ld   a, b                                        ; $63f9: $78
	sbc  l                                           ; $63fa: $9d
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	ret  c                                           ; $63fe: $d8

	ld   sp, $2611                                   ; $63ff: $31 $11 $26
	cp   [hl]                                        ; $6402: $be
	cp   $b7                                         ; $6403: $fe $b7
	ld   hl, $1111                                   ; $6405: $21 $11 $11
	inc  hl                                          ; $6408: $23
	ld   b, [hl]                                     ; $6409: $46
	adc  b                                           ; $640a: $88
	cp   [hl]                                        ; $640b: $be
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	rst  $38                                         ; $640e: $ff
	cp   b                                           ; $640f: $b8
	ld   [hl-], a                                    ; $6410: $32
	ld   [de], a                                     ; $6411: $12
	ld   l, b                                        ; $6412: $68
	rst  JumpTable                                         ; $6413: $df
	db   $ed                                         ; $6414: $ed
	add  h                                           ; $6415: $84
	ld   de, $1311                                   ; $6416: $11 $11 $13
	ld   d, [hl]                                     ; $6419: $56
	ld   h, [hl]                                     ; $641a: $66
	ld   h, [hl]                                     ; $641b: $66
	xor  [hl]                                        ; $641c: $ae
	rst  $38                                         ; $641d: $ff
	rst  $38                                         ; $641e: $ff
	cp   $95                                         ; $641f: $fe $95
	ld   [hl+], a                                    ; $6421: $22
	inc  h                                           ; $6422: $24
	adc  d                                           ; $6423: $8a
	sbc  $b9                                         ; $6424: $de $b9
	ld   d, d                                        ; $6426: $52
	ld   de, $4512                                   ; $6427: $11 $12 $45
	ld   d, l                                        ; $642a: $55
	ld   d, [hl]                                     ; $642b: $56
	ld   l, c                                        ; $642c: $69
	adc  $ff                                         ; $642d: $ce $ff
	rst  $38                                         ; $642f: $ff
	ret                                              ; $6430: $c9


	ld   [hl], l                                     ; $6431: $75
	ld   d, l                                        ; $6432: $55
	ld   h, a                                        ; $6433: $67
	adc  d                                           ; $6434: $8a
	cp   h                                           ; $6435: $bc
	cp   c                                           ; $6436: $b9
	ld   [hl], l                                     ; $6437: $75
	ld   b, d                                        ; $6438: $42
	ld   de, $5534                                   ; $6439: $11 $34 $55
	ld   d, [hl]                                     ; $643c: $56
	ld   a, b                                        ; $643d: $78
	xor  l                                           ; $643e: $ad
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	db   $eb                                         ; $6441: $eb
	and  a                                           ; $6442: $a7
	ld   d, h                                        ; $6443: $54
	ld   d, [hl]                                     ; $6444: $56
	adc  c                                           ; $6445: $89
	cp   e                                           ; $6446: $bb
	sbc  b                                           ; $6447: $98
	ld   d, h                                        ; $6448: $54
	ld   b, h                                        ; $6449: $44
	ld   b, l                                        ; $644a: $45
	ld   h, l                                        ; $644b: $65
	ld   d, h                                        ; $644c: $54
	ld   b, l                                        ; $644d: $45
	ld   l, b                                        ; $644e: $68
	cp   h                                           ; $644f: $bc
	cp   $ed                                         ; $6450: $fe $ed
	cp   c                                           ; $6452: $b9
	sbc  b                                           ; $6453: $98
	ld   [hl], a                                     ; $6454: $77
	ld   [hl], a                                     ; $6455: $77
	ld   [hl], a                                     ; $6456: $77
	sbc  c                                           ; $6457: $99
	sbc  d                                           ; $6458: $9a
	adc  b                                           ; $6459: $88
	halt                                             ; $645a: $76
	ld   d, h                                        ; $645b: $54
	ld   b, l                                        ; $645c: $45
	ld   d, l                                        ; $645d: $55
	ld   d, [hl]                                     ; $645e: $56
	ld   h, [hl]                                     ; $645f: $66
	ld   a, c                                        ; $6460: $79
	xor  h                                           ; $6461: $ac
	call z, $bacc                                    ; $6462: $cc $cc $ba
	xor  b                                           ; $6465: $a8
	ld   [hl], a                                     ; $6466: $77
	ld   h, a                                        ; $6467: $67
	adc  d                                           ; $6468: $8a
	xor  d                                           ; $6469: $aa
	sbc  b                                           ; $646a: $98
	halt                                             ; $646b: $76
	ld   d, l                                        ; $646c: $55
	ld   h, [hl]                                     ; $646d: $66
	ld   [hl], a                                     ; $646e: $77
	ld   h, l                                        ; $646f: $65
	ld   d, l                                        ; $6470: $55
	ld   h, a                                        ; $6471: $67
	sbc  e                                           ; $6472: $9b
	cp   e                                           ; $6473: $bb
	xor  d                                           ; $6474: $aa
	xor  c                                           ; $6475: $a9
	sbc  d                                           ; $6476: $9a
	sbc  b                                           ; $6477: $98
	add  a                                           ; $6478: $87
	adc  c                                           ; $6479: $89
	xor  d                                           ; $647a: $aa
	sbc  c                                           ; $647b: $99
	adc  b                                           ; $647c: $88
	ld   [hl], a                                     ; $647d: $77
	ld   [hl], a                                     ; $647e: $77
	ld   [hl], a                                     ; $647f: $77
	ld   h, [hl]                                     ; $6480: $66
	ld   d, l                                        ; $6481: $55
	ld   d, [hl]                                     ; $6482: $56
	ld   a, b                                        ; $6483: $78
	adc  c                                           ; $6484: $89
	sbc  b                                           ; $6485: $98
	sbc  c                                           ; $6486: $99
	sbc  d                                           ; $6487: $9a
	sbc  c                                           ; $6488: $99
	sbc  c                                           ; $6489: $99
	adc  b                                           ; $648a: $88
	adc  c                                           ; $648b: $89
	xor  c                                           ; $648c: $a9
	sbc  c                                           ; $648d: $99
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	ld   [hl], a                                     ; $6491: $77
	halt                                             ; $6492: $76
	ld   h, [hl]                                     ; $6493: $66
	ld   h, [hl]                                     ; $6494: $66
	ld   h, a                                        ; $6495: $67
	ld   [hl], a                                     ; $6496: $77
	ld   [hl], a                                     ; $6497: $77
	adc  b                                           ; $6498: $88
	sbc  b                                           ; $6499: $98
	sbc  c                                           ; $649a: $99
	sbc  c                                           ; $649b: $99
	adc  c                                           ; $649c: $89
	sbc  d                                           ; $649d: $9a
	xor  c                                           ; $649e: $a9
	sbc  d                                           ; $649f: $9a
	sbc  c                                           ; $64a0: $99
	adc  c                                           ; $64a1: $89
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	ld   [hl], a                                     ; $64a4: $77
	ld   h, [hl]                                     ; $64a5: $66
	ld   h, [hl]                                     ; $64a6: $66
	ld   h, [hl]                                     ; $64a7: $66
	ld   h, a                                        ; $64a8: $67
	ld   [hl], a                                     ; $64a9: $77
	ld   [hl], a                                     ; $64aa: $77
	adc  b                                           ; $64ab: $88
	sbc  b                                           ; $64ac: $98
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	sbc  c                                           ; $64af: $99
	sbc  d                                           ; $64b0: $9a
	xor  d                                           ; $64b1: $aa
	sbc  c                                           ; $64b2: $99
	sbc  b                                           ; $64b3: $98
	adc  b                                           ; $64b4: $88
	sbc  b                                           ; $64b5: $98
	adc  b                                           ; $64b6: $88
	add  a                                           ; $64b7: $87
	ld   [hl], a                                     ; $64b8: $77
	ld   [hl], a                                     ; $64b9: $77
	ld   [hl], a                                     ; $64ba: $77
	ld   h, a                                        ; $64bb: $67
	ld   [hl], a                                     ; $64bc: $77
	ld   [hl], a                                     ; $64bd: $77
	ld   a, b                                        ; $64be: $78
	adc  b                                           ; $64bf: $88
	sbc  c                                           ; $64c0: $99
	sbc  c                                           ; $64c1: $99
	adc  b                                           ; $64c2: $88
	sbc  c                                           ; $64c3: $99
	sbc  c                                           ; $64c4: $99
	sbc  c                                           ; $64c5: $99
	sbc  b                                           ; $64c6: $98
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	sbc  b                                           ; $64c9: $98
	adc  b                                           ; $64ca: $88
	add  a                                           ; $64cb: $87
	ld   [hl], a                                     ; $64cc: $77
	ld   [hl], a                                     ; $64cd: $77
	ld   [hl], a                                     ; $64ce: $77
	ld   [hl], a                                     ; $64cf: $77
	ld   [hl], a                                     ; $64d0: $77
	ld   [hl], a                                     ; $64d1: $77
	ld   a, b                                        ; $64d2: $78
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  c                                           ; $64d6: $89
	sbc  c                                           ; $64d7: $99
	sbc  b                                           ; $64d8: $98
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  c                                           ; $64dc: $89
	sbc  b                                           ; $64dd: $98
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	ld   [hl], a                                     ; $64e2: $77
	ld   [hl], a                                     ; $64e3: $77
	ld   [hl], a                                     ; $64e4: $77
	ld   [hl], a                                     ; $64e5: $77
	ld   [hl], a                                     ; $64e6: $77
	ld   [hl], a                                     ; $64e7: $77
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  c                                           ; $64eb: $89
	sbc  c                                           ; $64ec: $99
	sbc  c                                           ; $64ed: $99
	sbc  c                                           ; $64ee: $99
	sbc  c                                           ; $64ef: $99
	sbc  c                                           ; $64f0: $99
	sbc  c                                           ; $64f1: $99
	sbc  b                                           ; $64f2: $98
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	ld   [hl], a                                     ; $64f8: $77
	ld   [hl], a                                     ; $64f9: $77
	ld   [hl], a                                     ; $64fa: $77
	ld   [hl], a                                     ; $64fb: $77
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	sbc  c                                           ; $6503: $99
	sbc  c                                           ; $6504: $99
	sbc  c                                           ; $6505: $99
	sbc  c                                           ; $6506: $99
	adc  b                                           ; $6507: $88
	adc  b                                           ; $6508: $88
	adc  b                                           ; $6509: $88
	adc  b                                           ; $650a: $88
	adc  b                                           ; $650b: $88
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	adc  b                                           ; $650e: $88
	adc  b                                           ; $650f: $88
	adc  b                                           ; $6510: $88
	adc  b                                           ; $6511: $88
	adc  b                                           ; $6512: $88
	adc  b                                           ; $6513: $88
	adc  b                                           ; $6514: $88
	adc  b                                           ; $6515: $88
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	adc  b                                           ; $6518: $88
	adc  b                                           ; $6519: $88
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	adc  b                                           ; $651d: $88
	adc  b                                           ; $651e: $88
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	adc  b                                           ; $6521: $88
	adc  b                                           ; $6522: $88
	adc  b                                           ; $6523: $88
	adc  b                                           ; $6524: $88
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	adc  b                                           ; $6527: $88
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	adc  b                                           ; $652a: $88
	adc  b                                           ; $652b: $88
	adc  b                                           ; $652c: $88
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	adc  b                                           ; $6534: $88
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	adc  b                                           ; $6537: $88
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	adc  b                                           ; $653a: $88
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	adc  b                                           ; $653f: $88
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	adc  b                                           ; $6543: $88
	adc  b                                           ; $6544: $88
	adc  b                                           ; $6545: $88
	adc  b                                           ; $6546: $88
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	adc  b                                           ; $654c: $88
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	adc  b                                           ; $6559: $88
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	adc  b                                           ; $655e: $88
	adc  b                                           ; $655f: $88
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  b                                           ; $6569: $88
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  b                                           ; $6592: $88
	adc  c                                           ; $6593: $89
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  c                                           ; $6596: $89
	sbc  b                                           ; $6597: $98

Call_0b4_6598:
	adc  b                                           ; $6598: $88
	adc  c                                           ; $6599: $89
	sbc  b                                           ; $659a: $98
	adc  b                                           ; $659b: $88
	adc  c                                           ; $659c: $89
	adc  b                                           ; $659d: $88
	sbc  c                                           ; $659e: $99
	adc  b                                           ; $659f: $88
	ld   [hl], a                                     ; $65a0: $77
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	ld   [hl], a                                     ; $65a3: $77
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	ld   [hl], a                                     ; $65a6: $77
	ld   a, c                                        ; $65a7: $79
	adc  b                                           ; $65a8: $88
	ld   [hl], a                                     ; $65a9: $77
	ld   a, c                                        ; $65aa: $79
	sbc  b                                           ; $65ab: $98
	adc  b                                           ; $65ac: $88
	sbc  c                                           ; $65ad: $99
	sbc  c                                           ; $65ae: $99
	add  a                                           ; $65af: $87
	adc  b                                           ; $65b0: $88
	add  a                                           ; $65b1: $87
	ld   [hl], a                                     ; $65b2: $77
	ld   a, b                                        ; $65b3: $78
	sbc  c                                           ; $65b4: $99
	sbc  b                                           ; $65b5: $98
	adc  c                                           ; $65b6: $89
	adc  b                                           ; $65b7: $88
	sbc  c                                           ; $65b8: $99
	xor  d                                           ; $65b9: $aa
	xor  b                                           ; $65ba: $a8
	add  a                                           ; $65bb: $87
	halt                                             ; $65bc: $76
	ld   [hl], a                                     ; $65bd: $77
	ld   [hl], l                                     ; $65be: $75
	ld   b, h                                        ; $65bf: $44
	ld   h, a                                        ; $65c0: $67
	halt                                             ; $65c1: $76
	ld   h, a                                        ; $65c2: $67
	sbc  c                                           ; $65c3: $99
	xor  d                                           ; $65c4: $aa
	sbc  c                                           ; $65c5: $99
	xor  e                                           ; $65c6: $ab
	cp   d                                           ; $65c7: $ba
	sbc  c                                           ; $65c8: $99
	sbc  b                                           ; $65c9: $98
	sbc  d                                           ; $65ca: $9a
	adc  c                                           ; $65cb: $89
	xor  d                                           ; $65cc: $aa
	sub  [hl]                                        ; $65cd: $96
	ld   b, h                                        ; $65ce: $44
	ld   d, a                                        ; $65cf: $57
	add  l                                           ; $65d0: $85
	ld   de, $9639                                   ; $65d1: $11 $39 $96
	ld   b, [hl]                                     ; $65d4: $46
	sbc  [hl]                                        ; $65d5: $9e
	db   $ec                                         ; $65d6: $ec
	call z, $cbce                                    ; $65d7: $cc $ce $cb
	ld   [hl], a                                     ; $65da: $77
	adc  d                                           ; $65db: $8a
	xor  d                                           ; $65dc: $aa
	sub  a                                           ; $65dd: $97
	ld   d, l                                        ; $65de: $55
	ld   d, h                                        ; $65df: $54
	ld   hl, $9614                                   ; $65e0: $21 $14 $96
	ld   bc, $fe6d                                   ; $65e3: $01 $6d $fe
	cp   c                                           ; $65e6: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e7: $cf
	rst  $38                                         ; $65e8: $ff
	and  l                                           ; $65e9: $a5
	ld   a, c                                        ; $65ea: $79
	call z, $8da8                                    ; $65eb: $cc $a8 $8d
	ei                                               ; $65ee: $fb
	ld   hl, $1111                                   ; $65ef: $21 $11 $11
	ld   de, $3856                                   ; $65f2: $11 $56 $38
	rst  JumpTable                                         ; $65f5: $df
	rst  $38                                         ; $65f6: $ff
	rst  $38                                         ; $65f7: $ff
	rst  $38                                         ; $65f8: $ff
	ld   hl, sp+$11                                  ; $65f9: $f8 $11
	inc  de                                          ; $65fb: $13
	rst  JumpTable                                         ; $65fc: $df
	ei                                               ; $65fd: $fb
	sbc  b                                           ; $65fe: $98
	and  [hl]                                        ; $65ff: $a6
	ld   de, $1111                                   ; $6600: $11 $11 $11
	or   [hl]                                        ; $6603: $b6
	add  hl, hl                                      ; $6604: $29
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	di                                               ; $6609: $f3
	ld   de, $ff15                                   ; $660a: $11 $15 $ff
	push af                                          ; $660d: $f5
	ld   [de], a                                     ; $660e: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $660f: $cf
	ld   [hl], c                                     ; $6610: $71
	ld   de, $ff1f                                   ; $6611: $11 $1f $ff
	and  [hl]                                        ; $6614: $a6
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	pop  af                                          ; $6617: $f1
	inc  l                                           ; $6618: $2c
	pop  de                                          ; $6619: $d1
	ld   de, $ff5f                                   ; $661a: $11 $5f $ff
	ld   sp, $f41a                                   ; $661d: $31 $1a $f4
	ld   de, rAUD1LEN                                   ; $6620: $11 $11 $ff
	ld   a, [$ff4f]                                  ; $6623: $fa $4f $ff
	pop  af                                          ; $6626: $f1
	ld   de, $1142                                   ; $6627: $11 $42 $11
	adc  a                                           ; $662a: $8f
	rst  $38                                         ; $662b: $ff
	pop  hl                                          ; $662c: $e1
	ld   [de], a                                     ; $662d: $12
	and  e                                           ; $662e: $a3
	ld   de, rAUD1LEN                                   ; $662f: $11 $11 $ff
	rst  $38                                         ; $6632: $ff
	ld   l, a                                        ; $6633: $6f
	rst  $38                                         ; $6634: $ff
	pop  af                                          ; $6635: $f1
	ld   de, $2d11                                   ; $6636: $11 $11 $2d
	rst  $38                                         ; $6639: $ff
	rst  $38                                         ; $663a: $ff
	and  c                                           ; $663b: $a1
	dec  d                                           ; $663c: $15
	ld   [hl], c                                     ; $663d: $71
	ld   de, rAUD1LEN                                   ; $663e: $11 $11 $ff
	rst  $38                                         ; $6641: $ff
	ld   l, e                                        ; $6642: $6b
	rst  $38                                         ; $6643: $ff
	pop  af                                          ; $6644: $f1
	ld   de, $9f11                                   ; $6645: $11 $11 $9f
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	pop  hl                                          ; $664a: $e1
	inc  d                                           ; $664b: $14
	ld   d, c                                        ; $664c: $51
	ld   de, rAUD1LEN                                   ; $664d: $11 $11 $ff
	rst  $38                                         ; $6650: $ff
	ld   [hl], h                                     ; $6651: $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6652: $cf
	rst  $38                                         ; $6653: $ff

Jump_0b4_6654:
	ld   de, $8f11                                   ; $6654: $11 $11 $8f
	rst  $38                                         ; $6657: $ff
	rst  $38                                         ; $6658: $ff
	ld   a, [$1211]                                  ; $6659: $fa $11 $12
	ld   de, $1f11                                   ; $665c: $11 $11 $1f
	rst  $38                                         ; $665f: $ff
	rst  $30                                         ; $6660: $f7
	rla                                              ; $6661: $17
	rst  $38                                         ; $6662: $ff
	pop  af                                          ; $6663: $f1
	ld   de, $ff1c                                   ; $6664: $11 $1c $ff
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	pop  de                                          ; $6669: $d1
	ld   de, $1111                                   ; $666a: $11 $11 $11
	ld   de, $ff5f                                   ; $666d: $11 $5f $ff
	pop  hl                                          ; $6670: $e1
	rra                                              ; $6671: $1f
	rst  $38                                         ; $6672: $ff
	ld   de, $8f11                                   ; $6673: $11 $11 $8f
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	rst  $38                                         ; $6678: $ff
	ld   de, $1111                                   ; $6679: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $667c: $11 $11 $ff
	rst  $38                                         ; $667f: $ff
	ld   de, $f56f                                   ; $6680: $11 $6f $f5
	ld   de, $ff15                                   ; $6683: $11 $15 $ff
	rst  $38                                         ; $6686: $ff
	rst  $38                                         ; $6687: $ff
	ld   hl, sp+$11                                  ; $6688: $f8 $11
	ld   de, $1111                                   ; $668a: $11 $11 $11
	rra                                              ; $668d: $1f
	rst  $38                                         ; $668e: $ff
	db   $fd                                         ; $668f: $fd
	ld   de, $f1ef                                   ; $6690: $11 $ef $f1
	ld   de, $ff18                                   ; $6693: $11 $18 $ff

Call_0b4_6696:
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	or   c                                           ; $6698: $b1
	ld   de, $1111                                   ; $6699: $11 $11 $11
	ld   de, $ff1f                                   ; $669c: $11 $1f $ff
	push af                                          ; $669f: $f5
	ld   de, $a1ff                                   ; $66a0: $11 $ff $a1
	ld   de, $ff1d                                   ; $66a3: $11 $1d $ff
	rst  $38                                         ; $66a6: $ff
	db   $fd                                         ; $66a7: $fd
	ld   h, c                                        ; $66a8: $61
	ld   de, $1111                                   ; $66a9: $11 $11 $11
	ld   de, $ffff                                   ; $66ac: $11 $ff $ff
	pop  af                                          ; $66af: $f1
	dec  de                                          ; $66b0: $1b
	cp   $11                                         ; $66b1: $fe $11
	ld   de, $ffbf                                   ; $66b3: $11 $bf $ff
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	ld   sp, $1111                                   ; $66b8: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $66bb: $11 $11 $ff
	rst  $38                                         ; $66be: $ff
	and  c                                           ; $66bf: $a1
	dec  e                                           ; $66c0: $1d
	ei                                               ; $66c1: $fb
	ld   de, $df12                                   ; $66c2: $11 $12 $df
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	ld   a, [$1111]                                  ; $66c7: $fa $11 $11
	ld   de, $1111                                   ; $66ca: $11 $11 $11
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	ld   h, c                                        ; $66cf: $61
	inc  e                                           ; $66d0: $1c
	ei                                               ; $66d1: $fb
	ld   de, $cf11                                   ; $66d2: $11 $11 $cf
	rst  $38                                         ; $66d5: $ff
	rst  $38                                         ; $66d6: $ff
	call nc, $1111                                   ; $66d7: $d4 $11 $11
	ld   de, $1311                                   ; $66da: $11 $11 $13
	rst  $38                                         ; $66dd: $ff
	rst  $38                                         ; $66de: $ff
	ld   sp, $f81b                                   ; $66df: $31 $1b $f8
	ld   de, $ef12                                   ; $66e2: $11 $12 $ef
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	ld   h, c                                        ; $66e7: $61
	ld   de, $1111                                   ; $66e8: $11 $11 $11
	ld   de, $ff1f                                   ; $66eb: $11 $1f $ff
	cp   $11                                         ; $66ee: $fe $11
	adc  a                                           ; $66f0: $8f
	db   $e3                                         ; $66f1: $e3
	ld   de, $ff19                                   ; $66f2: $11 $19 $ff
	rst  $38                                         ; $66f5: $ff
	rst  $38                                         ; $66f6: $ff
	and  d                                           ; $66f7: $a2
	ld   de, $1111                                   ; $66f8: $11 $11 $11
	ld   de, $ff1f                                   ; $66fb: $11 $1f $ff
	db   $fc                                         ; $66fe: $fc
	ld   de, $f38f                                   ; $66ff: $11 $8f $f3
	ld   de, $ff16                                   ; $6702: $11 $16 $ff
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	add  d                                           ; $6707: $82
	ld   de, $1111                                   ; $6708: $11 $11 $11
	ld   de, $ff1f                                   ; $670b: $11 $1f $ff
	db   $fc                                         ; $670e: $fc
	ld   de, $e4bf                                   ; $670f: $11 $bf $e4
	ld   de, rAUD1HIGH                                   ; $6712: $11 $14 $ff
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	sub  d                                           ; $6717: $92
	ld   de, $1111                                   ; $6718: $11 $11 $11
	ld   de, $ff1f                                   ; $671b: $11 $1f $ff
	rst  $38                                         ; $671e: $ff
	ld   de, $fabf                                   ; $671f: $11 $bf $fa
	ld   de, $ef11                                   ; $6722: $11 $11 $ef
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	add  h                                           ; $6727: $84
	ld   hl, $1111                                   ; $6728: $21 $11 $11
	ld   de, $ff1f                                   ; $672b: $11 $1f $ff
	rst  $38                                         ; $672e: $ff
	dec  h                                           ; $672f: $25
	rst  $38                                         ; $6730: $ff
	ld   a, [$1111]                                  ; $6731: $fa $11 $11
	ld   a, a                                        ; $6734: $7f
	rst  $38                                         ; $6735: $ff
	rst  $38                                         ; $6736: $ff
	rst  $20                                         ; $6737: $e7
	ld   [hl-], a                                    ; $6738: $32
	ld   de, $1111                                   ; $6739: $11 $11 $11
	ld   de, $ffff                                   ; $673c: $11 $ff $ff
	add  l                                           ; $673f: $85
	rst  JumpTable                                         ; $6740: $df
	rst  $38                                         ; $6741: $ff
	add  c                                           ; $6742: $81
	ld   de, $ff1b                                   ; $6743: $11 $1b $ff
	db   $fd                                         ; $6746: $fd
	ld   [hl], l                                     ; $6747: $75
	ld   a, c                                        ; $6748: $79
	sub  [hl]                                        ; $6749: $96
	ld   de, $1411                                   ; $674a: $11 $11 $14
	xor  a                                           ; $674d: $af
	ei                                               ; $674e: $fb
	ld   a, c                                        ; $674f: $79
	rst  JumpTable                                         ; $6750: $df
	rst  $38                                         ; $6751: $ff
	rst  ToBoot                                         ; $6752: $c7
	ld   d, l                                        ; $6753: $55
	ld   d, a                                        ; $6754: $57
	adc  c                                           ; $6755: $89
	xor  d                                           ; $6756: $aa
	sub  [hl]                                        ; $6757: $96
	ld   l, b                                        ; $6758: $68
	sbc  d                                           ; $6759: $9a
	xor  c                                           ; $675a: $a9
	ld   [hl], h                                     ; $675b: $74
	inc  sp                                          ; $675c: $33
	ld   d, [hl]                                     ; $675d: $56
	ld   [hl], a                                     ; $675e: $77
	ld   h, h                                        ; $675f: $64
	ld   b, [hl]                                     ; $6760: $46
	sbc  e                                           ; $6761: $9b
	db   $dd                                         ; $6762: $dd
	cp   d                                           ; $6763: $ba
	xor  c                                           ; $6764: $a9
	xor  c                                           ; $6765: $a9
	add  a                                           ; $6766: $87
	ld   [hl], a                                     ; $6767: $77
	ld   a, b                                        ; $6768: $78
	adc  c                                           ; $6769: $89
	sbc  d                                           ; $676a: $9a
	sbc  c                                           ; $676b: $99
	sbc  b                                           ; $676c: $98
	add  a                                           ; $676d: $87
	ld   h, [hl]                                     ; $676e: $66
	ld   h, [hl]                                     ; $676f: $66
	ld   h, [hl]                                     ; $6770: $66
	ld   h, [hl]                                     ; $6771: $66
	ld   h, a                                        ; $6772: $67
	adc  c                                           ; $6773: $89
	sbc  c                                           ; $6774: $99
	sbc  b                                           ; $6775: $98
	adc  b                                           ; $6776: $88
	adc  b                                           ; $6777: $88
	adc  b                                           ; $6778: $88
	sbc  c                                           ; $6779: $99
	xor  c                                           ; $677a: $a9
	xor  d                                           ; $677b: $aa
	sbc  d                                           ; $677c: $9a
	sbc  c                                           ; $677d: $99
	sbc  b                                           ; $677e: $98
	adc  b                                           ; $677f: $88
	ld   [hl], a                                     ; $6780: $77
	ld   [hl], a                                     ; $6781: $77
	ld   [hl], a                                     ; $6782: $77
	ld   [hl], a                                     ; $6783: $77
	ld   [hl], a                                     ; $6784: $77
	ld   [hl], a                                     ; $6785: $77
	ld   [hl], a                                     ; $6786: $77
	ld   [hl], a                                     ; $6787: $77
	ld   a, b                                        ; $6788: $78
	adc  b                                           ; $6789: $88
	sbc  b                                           ; $678a: $98
	adc  c                                           ; $678b: $89
	sbc  b                                           ; $678c: $98
	adc  b                                           ; $678d: $88
	sbc  c                                           ; $678e: $99
	sbc  c                                           ; $678f: $99
	sbc  b                                           ; $6790: $98
	adc  b                                           ; $6791: $88
	adc  b                                           ; $6792: $88
	adc  b                                           ; $6793: $88
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	ld   a, b                                        ; $6797: $78
	adc  b                                           ; $6798: $88
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
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

Call_0b4_68b8:
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

Call_0b4_69b9:
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
	ld   [hl], a                                     ; $69ce: $77
	ld   a, b                                        ; $69cf: $78
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  c                                           ; $69d5: $89
	sbc  b                                           ; $69d6: $98
	sbc  b                                           ; $69d7: $98
	sbc  b                                           ; $69d8: $98
	sbc  b                                           ; $69d9: $98
	sbc  c                                           ; $69da: $99
	sbc  b                                           ; $69db: $98
	sbc  b                                           ; $69dc: $98
	sbc  b                                           ; $69dd: $98
	add  a                                           ; $69de: $87
	adc  b                                           ; $69df: $88
	ld   a, b                                        ; $69e0: $78
	add  a                                           ; $69e1: $87
	ld   [hl], a                                     ; $69e2: $77
	ld   [hl], a                                     ; $69e3: $77
	add  a                                           ; $69e4: $87
	ld   [hl], a                                     ; $69e5: $77
	ld   a, b                                        ; $69e6: $78
	ld   [hl], a                                     ; $69e7: $77
	add  a                                           ; $69e8: $87
	ld   [hl], a                                     ; $69e9: $77
	ld   [hl], a                                     ; $69ea: $77
	ld   a, b                                        ; $69eb: $78
	sbc  b                                           ; $69ec: $98
	adc  b                                           ; $69ed: $88
	adc  b                                           ; $69ee: $88
	sbc  c                                           ; $69ef: $99
	sbc  c                                           ; $69f0: $99
	sbc  c                                           ; $69f1: $99
	sbc  c                                           ; $69f2: $99
	adc  d                                           ; $69f3: $8a
	xor  b                                           ; $69f4: $a8
	sbc  c                                           ; $69f5: $99
	ld   [hl], a                                     ; $69f6: $77
	halt                                             ; $69f7: $76
	ld   d, l                                        ; $69f8: $55
	ld   [hl], a                                     ; $69f9: $77
	ld   d, l                                        ; $69fa: $55
	ld   d, l                                        ; $69fb: $55
	ld   d, a                                        ; $69fc: $57
	adc  b                                           ; $69fd: $88
	ld   a, b                                        ; $69fe: $78
	adc  b                                           ; $69ff: $88
	adc  d                                           ; $6a00: $8a
	cp   e                                           ; $6a01: $bb
	xor  d                                           ; $6a02: $aa
	sbc  d                                           ; $6a03: $9a
	xor  d                                           ; $6a04: $aa
	cp   d                                           ; $6a05: $ba
	xor  d                                           ; $6a06: $aa
	xor  c                                           ; $6a07: $a9
	add  [hl]                                        ; $6a08: $86
	ld   b, e                                        ; $6a09: $43
	dec  h                                           ; $6a0a: $25
	add  a                                           ; $6a0b: $87
	ld   [hl], l                                     ; $6a0c: $75
	ld   sp, $ab29                                   ; $6a0d: $31 $29 $ab
	xor  c                                           ; $6a10: $a9
	ld   h, l                                        ; $6a11: $65
	cp   [hl]                                        ; $6a12: $be
	db   $fd                                         ; $6a13: $fd
	sub  a                                           ; $6a14: $97
	ld   l, c                                        ; $6a15: $69
	call z, $a8ab                                    ; $6a16: $cc $ab $a8
	sub  a                                           ; $6a19: $97
	ld   d, c                                        ; $6a1a: $51
	ld   de, $8b47                                   ; $6a1b: $11 $47 $8b
	ld   [hl], e                                     ; $6a1e: $73
	inc  b                                           ; $6a1f: $04
	call $a4fe                                       ; $6a20: $cd $fe $a4
	ld   c, l                                        ; $6a23: $4d
	rst  $38                                         ; $6a24: $ff
	reti                                             ; $6a25: $d9


	ld   hl, $ff9f                                   ; $6a26: $21 $9f $ff
	or   e                                           ; $6a29: $b3
	ld   de, $1111                                   ; $6a2a: $11 $11 $11
	ld   de, $ea7c                                   ; $6a2d: $11 $7c $ea
	cp   a                                           ; $6a30: $bf
	rst  $38                                         ; $6a31: $ff
	rst  $38                                         ; $6a32: $ff
	and  l                                           ; $6a33: $a5
	xor  d                                           ; $6a34: $aa

Jump_0b4_6a35:
	ld   [hl], a                                     ; $6a35: $77
	ld   h, c                                        ; $6a36: $61
	jr   @+$01                                       ; $6a37: $18 $ff

	rst  $38                                         ; $6a39: $ff
	ld   h, c                                        ; $6a3a: $61
	ld   de, $1111                                   ; $6a3b: $11 $11 $11
	ld   [de], a                                     ; $6a3e: $12
	adc  l                                           ; $6a3f: $8d
	rst  $28                                         ; $6a40: $ef
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	db   $e3                                         ; $6a43: $e3
	ld   l, l                                        ; $6a44: $6d
	ld   b, c                                        ; $6a45: $41
	ld   de, $ff19                                   ; $6a46: $11 $19 $ff
	rst  $38                                         ; $6a49: $ff
	pop  hl                                          ; $6a4a: $e1
	ld   de, $1111                                   ; $6a4b: $11 $11 $11
	inc  d                                           ; $6a4e: $14
	rst  JumpTable                                         ; $6a4f: $df
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	di                                               ; $6a53: $f3
	ld   de, $1211                                   ; $6a54: $11 $11 $12
	cp   a                                           ; $6a57: $bf
	rst  $38                                         ; $6a58: $ff
	db   $fc                                         ; $6a59: $fc
	ld   [hl], d                                     ; $6a5a: $72
	ld   de, $1111                                   ; $6a5b: $11 $11 $11
	ld   l, [hl]                                     ; $6a5e: $6e
	rst  $38                                         ; $6a5f: $ff
	db   $fd                                         ; $6a60: $fd
	rst  $38                                         ; $6a61: $ff
	rst  $38                                         ; $6a62: $ff
	ld   [hl], c                                     ; $6a63: $71
	ld   de, $1195                                   ; $6a64: $11 $95 $11
	sbc  c                                           ; $6a67: $99
	rst  $38                                         ; $6a68: $ff
	rst  $38                                         ; $6a69: $ff
	ld   h, c                                        ; $6a6a: $61
	ld   de, $1111                                   ; $6a6b: $11 $11 $11
	inc  e                                           ; $6a6e: $1c
	rst  $38                                         ; $6a6f: $ff
	rst  $38                                         ; $6a70: $ff
	rra                                              ; $6a71: $1f
	rst  $38                                         ; $6a72: $ff
	pop  af                                          ; $6a73: $f1
	ld   de, $ff1c                                   ; $6a74: $11 $1c $ff
	db   $fd                                         ; $6a77: $fd
	ld   e, a                                        ; $6a78: $5f
	rst  $38                                         ; $6a79: $ff
	db   $f4                                         ; $6a7a: $f4
	ld   de, $1111                                   ; $6a7b: $11 $11 $11
	ld   de, $ffaf                                   ; $6a7e: $11 $af $ff
	db   $fd                                         ; $6a81: $fd
	ld   c, a                                        ; $6a82: $4f
	rst  $38                                         ; $6a83: $ff
	ld   sp, $ab11                                   ; $6a84: $31 $11 $ab
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	rst  $38                                         ; $6a8a: $ff
	ld   b, c                                        ; $6a8b: $41
	ld   de, $1111                                   ; $6a8c: $11 $11 $11
	ld   de, $ffff                                   ; $6a8f: $11 $ff $ff
	add  d                                           ; $6a92: $82
	rra                                              ; $6a93: $1f
	db   $fd                                         ; $6a94: $fd
	ld   de, rAUD1LEN                                   ; $6a95: $11 $11 $ff
	or   $13                                         ; $6a98: $f6 $13
	rst  $28                                         ; $6a9a: $ef
	rst  $38                                         ; $6a9b: $ff
	ld   de, $a411                                   ; $6a9c: $11 $11 $a4
	ld   de, rAUD1LEN                                   ; $6a9f: $11 $11 $ff
	rst  $38                                         ; $6aa2: $ff
	ld   b, c                                        ; $6aa3: $41
	rra                                              ; $6aa4: $1f
	rst  $38                                         ; $6aa5: $ff
	ld   de, rAUD1LEN                                   ; $6aa6: $11 $11 $ff
	rst  $38                                         ; $6aa9: $ff
	ld   de, $ff5f                                   ; $6aaa: $11 $5f $ff
	ld   b, c                                        ; $6aad: $41
	ld   de, $11aa                                   ; $6aae: $11 $aa $11
	ld   de, $ff9f                                   ; $6ab1: $11 $9f $ff
	di                                               ; $6ab4: $f3
	rra                                              ; $6ab5: $1f
	rst  $38                                         ; $6ab6: $ff
	and  c                                           ; $6ab7: $a1
	ld   de, $ff9f                                   ; $6ab8: $11 $9f $ff
	ld   h, e                                        ; $6abb: $63
	rra                                              ; $6abc: $1f
	rst  $38                                         ; $6abd: $ff
	pop  de                                          ; $6abe: $d1
	ld   de, $4178                                   ; $6abf: $11 $78 $41
	ld   de, $ff1f                                   ; $6ac2: $11 $1f $ff
	db   $fc                                         ; $6ac5: $fc
	inc  de                                          ; $6ac6: $13
	rst  $38                                         ; $6ac7: $ff
	pop  de                                          ; $6ac8: $d1
	ld   de, $ff1f                                   ; $6ac9: $11 $1f $ff
	jp   c, $ff9e                                    ; $6acc: $da $9e $ff

	pop  af                                          ; $6acf: $f1
	ld   de, $3116                                   ; $6ad0: $11 $16 $31
	ld   de, rAUD1LEN                                   ; $6ad3: $11 $11 $ff
	rst  $38                                         ; $6ad6: $ff
	pop  bc                                          ; $6ad7: $c1
	sbc  a                                           ; $6ad8: $9f
	di                                               ; $6ad9: $f3
	ld   de, rAUD1LEN                                   ; $6ada: $11 $11 $ff
	db   $fc                                         ; $6add: $fc
	add  $ff                                         ; $6ade: $c6 $ff
	rst  $38                                         ; $6ae0: $ff
	ld   de, $5511                                   ; $6ae1: $11 $11 $55
	ld   de, $3f11                                   ; $6ae4: $11 $11 $3f
	rst  $38                                         ; $6ae7: $ff
	ld   sp, hl                                      ; $6ae8: $f9
	dec  de                                          ; $6ae9: $1b
	cp   $21                                         ; $6aea: $fe $21
	ld   de, $ff1f                                   ; $6aec: $11 $1f $ff
	db   $eb                                         ; $6aef: $eb
	ld   e, a                                        ; $6af0: $5f
	rst  $38                                         ; $6af1: $ff
	pop  hl                                          ; $6af2: $e1
	ld   de, $6117                                   ; $6af3: $11 $17 $61
	ld   de, $ff16                                   ; $6af6: $11 $16 $ff
	rst  $38                                         ; $6af9: $ff
	ld   [hl], c                                     ; $6afa: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6afb: $cf
	db   $e3                                         ; $6afc: $e3
	ld   de, rAUD1LEN                                   ; $6afd: $11 $11 $ff
	cp   $d5                                         ; $6b00: $fe $d5
	rst  $38                                         ; $6b02: $ff
	ei                                               ; $6b03: $fb
	ld   de, $7512                                   ; $6b04: $11 $12 $75
	ld   de, $1f11                                   ; $6b07: $11 $11 $1f
	rst  $38                                         ; $6b0a: $ff
	ld   a, [$ff17]                                  ; $6b0b: $fa $17 $ff
	ld   h, c                                        ; $6b0e: $61
	ld   de, $ff1f                                   ; $6b0f: $11 $1f $ff
	jp   c, $ff2e                                    ; $6b12: $da $2e $ff

	ldh  a, [c]                                      ; $6b15: $f2
	ld   de, $8119                                   ; $6b16: $11 $19 $81
	ld   de, rAUD1LEN                                   ; $6b19: $11 $11 $ff
	rst  $38                                         ; $6b1c: $ff
	db   $f4                                         ; $6b1d: $f4
	ccf                                              ; $6b1e: $3f
	rst  $30                                         ; $6b1f: $f7
	ld   de, rAUD1LEN                                   ; $6b20: $11 $11 $ff
	rst  $38                                         ; $6b23: $ff
	push bc                                          ; $6b24: $c5
	ld   a, a                                        ; $6b25: $7f
	rst  $38                                         ; $6b26: $ff
	ld   h, c                                        ; $6b27: $61
	ld   de, $1188                                   ; $6b28: $11 $88 $11
	ld   de, $ff1d                                   ; $6b2b: $11 $1d $ff
	rst  $38                                         ; $6b2e: $ff
	ld   h, d                                        ; $6b2f: $62
	rst  $38                                         ; $6b30: $ff
	jp   $1711                                       ; $6b31: $c3 $11 $17


	rst  $38                                         ; $6b34: $ff
	ld   a, [$ff96]                                  ; $6b35: $fa $96 $ff
	ei                                               ; $6b38: $fb
	ld   de, $a216                                   ; $6b39: $11 $16 $a2
	ld   de, $5f11                                   ; $6b3c: $11 $11 $5f
	rst  $38                                         ; $6b3f: $ff
	db   $fd                                         ; $6b40: $fd
	cpl                                              ; $6b41: $2f
	rst  $38                                         ; $6b42: $ff
	ld   h, c                                        ; $6b43: $61
	ld   de, $ff1f                                   ; $6b44: $11 $1f $ff
	jp   z, $ff2f                                    ; $6b47: $ca $2f $ff

	push af                                          ; $6b4a: $f5
	ld   de, $511a                                   ; $6b4b: $11 $1a $51
	ld   de, rAUD1LEN                                   ; $6b4e: $11 $11 $ff
	rst  $38                                         ; $6b51: $ff
	rst  $30                                         ; $6b52: $f7
	ld   e, a                                        ; $6b53: $5f
	ei                                               ; $6b54: $fb
	ld   sp, $cf11                                   ; $6b55: $31 $11 $cf
	ld   a, [$afa5]                                  ; $6b58: $fa $a5 $af
	rst  $38                                         ; $6b5b: $ff
	or   e                                           ; $6b5c: $b3
	ld   de, $1169                                   ; $6b5d: $11 $69 $11
	ld   de, rAUD1LOW                                   ; $6b60: $11 $13 $ff

Jump_0b4_6b63:
	rst  $38                                         ; $6b63: $ff
	push af                                          ; $6b64: $f5
	rst  $38                                         ; $6b65: $ff
	ld   a, [$1111]                                  ; $6b66: $fa $11 $11
	db   $ec                                         ; $6b69: $ec
	add  [hl]                                        ; $6b6a: $86
	and  h                                           ; $6b6b: $a4
	rst  $38                                         ; $6b6c: $ff
	rst  $38                                         ; $6b6d: $ff
	and  e                                           ; $6b6e: $a3
	inc  de                                          ; $6b6f: $13
	add  h                                           ; $6b70: $84
	ld   de, $1a11                                   ; $6b71: $11 $11 $1a
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	ld   a, [$fbff]                                  ; $6b76: $fa $ff $fb
	ld   hl, $8715                                   ; $6b79: $21 $15 $87
	ld   b, a                                        ; $6b7c: $47
	ld   d, h                                        ; $6b7d: $54
	rst  $38                                         ; $6b7e: $ff
	rst  $38                                         ; $6b7f: $ff
	push af                                          ; $6b80: $f5
	ld   d, $83                                      ; $6b81: $16 $83
	ld   de, $1a11                                   ; $6b83: $11 $11 $1a
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	adc  h                                           ; $6b88: $8c
	rst  $38                                         ; $6b89: $ff
	rst  $38                                         ; $6b8a: $ff
	and  c                                           ; $6b8b: $a1
	rla                                              ; $6b8c: $17
	ld   [hl], a                                     ; $6b8d: $77
	inc  [hl]                                        ; $6b8e: $34
	inc  d                                           ; $6b8f: $14
	rst  $38                                         ; $6b90: $ff
	rst  $38                                         ; $6b91: $ff
	db   $f4                                         ; $6b92: $f4
	daa                                              ; $6b93: $27
	or   h                                           ; $6b94: $b4
	ld   de, $1911                                   ; $6b95: $11 $11 $19
	db   $dd                                         ; $6b98: $dd
	cp   c                                           ; $6b99: $b9
	xor  a                                           ; $6b9a: $af
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	add  d                                           ; $6b9d: $82
	ld   a, c                                        ; $6b9e: $79
	add  e                                           ; $6b9f: $83
	ld   de, $ff1a                                   ; $6ba0: $11 $1a $ff
	rst  $38                                         ; $6ba3: $ff
	add  l                                           ; $6ba4: $85
	ld   a, e                                        ; $6ba5: $7b
	add  c                                           ; $6ba6: $81
	ld   de, $3611                                   ; $6ba7: $11 $11 $36
	ld   h, l                                        ; $6baa: $65
	ld   e, d                                        ; $6bab: $5a
	rst  $38                                         ; $6bac: $ff
	rst  $38                                         ; $6bad: $ff
	db   $fd                                         ; $6bae: $fd
	cp   e                                           ; $6baf: $bb
	cp   b                                           ; $6bb0: $b8
	ld   b, c                                        ; $6bb1: $41
	ld   [de], a                                     ; $6bb2: $12
	adc  l                                           ; $6bb3: $8d
	db   $ed                                         ; $6bb4: $ed
	cp   d                                           ; $6bb5: $ba
	sbc  d                                           ; $6bb6: $9a
	or   a                                           ; $6bb7: $b7
	ld   hl, $2211                                   ; $6bb8: $21 $11 $22
	ld   de, $8f13                                   ; $6bbb: $11 $13 $8f
	rst  $38                                         ; $6bbe: $ff
	rst  $38                                         ; $6bbf: $ff
	db   $ed                                         ; $6bc0: $ed
	xor  $b6                                         ; $6bc1: $ee $b6
	ld   sp, $dd49                                   ; $6bc3: $31 $49 $dd
	sbc  c                                           ; $6bc6: $99
	adc  d                                           ; $6bc7: $8a
	cp   h                                           ; $6bc8: $bc
	sub  h                                           ; $6bc9: $94
	ld   de, $4313                                   ; $6bca: $11 $13 $43
	ld   hl, $6c11                                   ; $6bcd: $21 $11 $6c
	rst  $38                                         ; $6bd0: $ff
	xor  $bd                                         ; $6bd1: $ee $bd
	rst  $38                                         ; $6bd3: $ff
	rst  ToBoot                                         ; $6bd4: $c7
	ld   b, h                                        ; $6bd5: $44
	ld   e, d                                        ; $6bd6: $5a
	db   $ed                                         ; $6bd7: $ed
	sbc  b                                           ; $6bd8: $98
	sbc  d                                           ; $6bd9: $9a
	db   $dd                                         ; $6bda: $dd
	and  [hl]                                        ; $6bdb: $a6
	ld   d, e                                        ; $6bdc: $53
	ld   de, $3255                                   ; $6bdd: $11 $55 $32
	ld   de, wTitleScreenCounterForResettingData                                   ; $6be0: $11 $17 $cc
	res  3, d                                        ; $6be3: $cb $9a
	rst  $28                                         ; $6be5: $ef
	db   $eb                                         ; $6be6: $eb
	ld   [hl], l                                     ; $6be7: $75
	ld   e, c                                        ; $6be8: $59
	cp   $b9                                         ; $6be9: $fe $b9
	sbc  b                                           ; $6beb: $98
	cp   l                                           ; $6bec: $bd
	ret                                              ; $6bed: $c9


	add  [hl]                                        ; $6bee: $86
	ld   b, e                                        ; $6bef: $43
	ld   [hl], $53                                   ; $6bf0: $36 $53
	ld   sp, $4811                                   ; $6bf2: $31 $11 $48
	sbc  c                                           ; $6bf5: $99
	adc  b                                           ; $6bf6: $88
	adc  e                                           ; $6bf7: $8b
	xor  $b8                                         ; $6bf8: $ee $b8
	ld   h, a                                        ; $6bfa: $67
	sbc  l                                           ; $6bfb: $9d
	db   $ec                                         ; $6bfc: $ec
	xor  d                                           ; $6bfd: $aa
	cp   e                                           ; $6bfe: $bb
	call c, $88a9                                    ; $6bff: $dc $a9 $88
	halt                                             ; $6c02: $76
	ld   d, l                                        ; $6c03: $55
	ld   b, e                                        ; $6c04: $43
	ld   [hl-], a                                    ; $6c05: $32
	ld   bc, $5624                                   ; $6c06: $01 $24 $56
	ld   [hl], a                                     ; $6c09: $77
	ld   a, c                                        ; $6c0a: $79
	xor  e                                           ; $6c0b: $ab
	xor  c                                           ; $6c0c: $a9
	xor  d                                           ; $6c0d: $aa
	cp   h                                           ; $6c0e: $bc
	call $bccc                                       ; $6c0f: $cd $cc $bc
	cp   h                                           ; $6c12: $bc
	res  7, c                                        ; $6c13: $cb $b9
	sbc  c                                           ; $6c15: $99
	ld   [hl], l                                     ; $6c16: $75
	ld   d, l                                        ; $6c17: $55
	ld   b, e                                        ; $6c18: $43
	ld   hl, $2411                                   ; $6c19: $21 $11 $24
	ld   d, l                                        ; $6c1c: $55
	ld   d, [hl]                                     ; $6c1d: $56
	ld   a, b                                        ; $6c1e: $78
	xor  h                                           ; $6c1f: $ac
	xor  d                                           ; $6c20: $aa
	cp   d                                           ; $6c21: $ba
	cp   h                                           ; $6c22: $bc
	call z, $dccc                                    ; $6c23: $cc $cc $dc
	call $aacc                                       ; $6c26: $cd $cc $aa
	sbc  c                                           ; $6c29: $99
	halt                                             ; $6c2a: $76
	ld   b, h                                        ; $6c2b: $44
	ld   d, e                                        ; $6c2c: $53
	ld   hl, $1211                                   ; $6c2d: $21 $11 $12
	ld   b, h                                        ; $6c30: $44
	ld   d, [hl]                                     ; $6c31: $56
	ld   h, a                                        ; $6c32: $67
	sbc  e                                           ; $6c33: $9b
	xor  c                                           ; $6c34: $a9
	xor  d                                           ; $6c35: $aa
	cp   e                                           ; $6c36: $bb
	call z, $eebc                                    ; $6c37: $cc $bc $ee
	xor  $dc                                         ; $6c3a: $ee $dc
	call z, $a8aa                                    ; $6c3c: $cc $aa $a8
	ld   h, h                                        ; $6c3f: $64
	ld   b, h                                        ; $6c40: $44
	ld   [hl-], a                                    ; $6c41: $32
	ld   de, $2311                                   ; $6c42: $11 $11 $23
	ld   b, h                                        ; $6c45: $44
	ld   b, [hl]                                     ; $6c46: $46
	ld   a, b                                        ; $6c47: $78
	sbc  e                                           ; $6c48: $9b
	xor  c                                           ; $6c49: $a9
	xor  e                                           ; $6c4a: $ab
	call $deec                                       ; $6c4b: $cd $ec $de
	rst  $38                                         ; $6c4e: $ff
	db   $ed                                         ; $6c4f: $ed
	db   $db                                         ; $6c50: $db
	call z, $97ba                                    ; $6c51: $cc $ba $97
	ld   d, h                                        ; $6c54: $54
	inc  [hl]                                        ; $6c55: $34
	ld   b, d                                        ; $6c56: $42
	ld   de, $1211                                   ; $6c57: $11 $11 $12
	inc  [hl]                                        ; $6c5a: $34
	ld   b, l                                        ; $6c5b: $45
	ld   l, b                                        ; $6c5c: $68
	xor  e                                           ; $6c5d: $ab
	xor  d                                           ; $6c5e: $aa
	cp   h                                           ; $6c5f: $bc
	sbc  $ee                                         ; $6c60: $de $ee
	call $fdef                                       ; $6c62: $cd $ef $fd
	call c, $aaaa                                    ; $6c65: $dc $aa $aa
	sub  a                                           ; $6c68: $97
	ld   h, l                                        ; $6c69: $65
	ld   b, e                                        ; $6c6a: $43
	inc  sp                                          ; $6c6b: $33
	ld   hl, $1111                                   ; $6c6c: $21 $11 $11
	inc  h                                           ; $6c6f: $24
	ld   b, l                                        ; $6c70: $45
	ld   d, a                                        ; $6c71: $57
	sbc  d                                           ; $6c72: $9a
	cp   e                                           ; $6c73: $bb
	cp   e                                           ; $6c74: $bb
	call $dcde                                       ; $6c75: $cd $de $dc
	call z, $dddd                                    ; $6c78: $cc $dd $dd
	cp   e                                           ; $6c7b: $bb
	xor  d                                           ; $6c7c: $aa
	sbc  b                                           ; $6c7d: $98
	halt                                             ; $6c7e: $76
	ld   d, h                                        ; $6c7f: $54
	ld   b, d                                        ; $6c80: $42
	inc  hl                                          ; $6c81: $23
	ld   sp, $0101                                   ; $6c82: $31 $01 $01
	ld   b, l                                        ; $6c85: $45
	ld   d, [hl]                                     ; $6c86: $56
	ld   a, c                                        ; $6c87: $79
	sbc  d                                           ; $6c88: $9a
	res  5, e                                        ; $6c89: $cb $ab
	call z, $dcdd                                    ; $6c8b: $cc $dd $dc
	db   $dd                                         ; $6c8e: $dd
	call c, $badb                                    ; $6c8f: $dc $db $ba
	sbc  c                                           ; $6c92: $99
	adc  b                                           ; $6c93: $88
	ld   h, [hl]                                     ; $6c94: $66
	ld   h, h                                        ; $6c95: $64
	ld   [hl-], a                                    ; $6c96: $32
	inc  h                                           ; $6c97: $24
	ld   sp, $1211                                   ; $6c98: $31 $11 $12
	ld   b, [hl]                                     ; $6c9b: $46
	ld   h, [hl]                                     ; $6c9c: $66
	ld   a, c                                        ; $6c9d: $79
	sbc  h                                           ; $6c9e: $9c
	call z, $cccb                                    ; $6c9f: $cc $cb $cc
	call c, $bbdb                                    ; $6ca2: $dc $db $bb
	call $b9cc                                       ; $6ca5: $cd $cc $b9
	adc  b                                           ; $6ca8: $88
	adc  b                                           ; $6ca9: $88
	ld   h, l                                        ; $6caa: $65
	ld   d, e                                        ; $6cab: $53
	ld   [de], a                                     ; $6cac: $12
	ld   b, e                                        ; $6cad: $43
	ld   hl, $2411                                   ; $6cae: $21 $11 $24
	ld   [hl], a                                     ; $6cb1: $77
	ld   h, a                                        ; $6cb2: $67
	sbc  e                                           ; $6cb3: $9b
	call z, $bddb                                    ; $6cb4: $cc $db $bd
	db   $ed                                         ; $6cb7: $ed
	call $cdba                                       ; $6cb8: $cd $ba $cd
	call c, $99ba                                    ; $6cbb: $dc $ba $99
	adc  b                                           ; $6cbe: $88
	ld   h, h                                        ; $6cbf: $64
	ld   [hl-], a                                    ; $6cc0: $32
	ld   de, $1144                                   ; $6cc1: $11 $44 $11
	ld   de, $9725                                   ; $6cc4: $11 $25 $97
	ld   h, a                                        ; $6cc7: $67
	xor  h                                           ; $6cc8: $ac
	db   $dd                                         ; $6cc9: $dd
	db   $ec                                         ; $6cca: $ec
	cp   [hl]                                        ; $6ccb: $be
	call c, $bbbb                                    ; $6ccc: $dc $bb $bb
	rst  $38                                         ; $6ccf: $ff
	res  5, d                                        ; $6cd0: $cb $aa
	sbc  b                                           ; $6cd2: $98
	add  l                                           ; $6cd3: $85
	ld   hl, $1411                                   ; $6cd4: $21 $11 $14
	ld   hl, $3611                                   ; $6cd7: $21 $11 $36
	sbc  c                                           ; $6cda: $99
	add  [hl]                                        ; $6cdb: $86
	xor  l                                           ; $6cdc: $ad
	xor  $dc                                         ; $6cdd: $ee $dc
	cp   [hl]                                        ; $6cdf: $be
	db   $ec                                         ; $6ce0: $ec
	add  a                                           ; $6ce1: $87
	xor  l                                           ; $6ce2: $ad
	rst  $38                                         ; $6ce3: $ff
	jp   hl                                          ; $6ce4: $e9


	sbc  e                                           ; $6ce5: $9b
	cp   c                                           ; $6ce6: $b9
	ld   b, d                                        ; $6ce7: $42
	ld   de, $2211                                   ; $6ce8: $11 $11 $22
	ld   de, $7d13                                   ; $6ceb: $11 $13 $7d
	ld   a, [$ff9c]                                  ; $6cee: $fa $9c $ff
	cp   $b9                                         ; $6cf1: $fe $b9
	sbc  l                                           ; $6cf3: $9d
	and  [hl]                                        ; $6cf4: $a6
	ld   e, d                                        ; $6cf5: $5a
	rst  $38                                         ; $6cf6: $ff
	db   $fd                                         ; $6cf7: $fd
	xor  c                                           ; $6cf8: $a9
	cp   d                                           ; $6cf9: $ba
	ld   h, c                                        ; $6cfa: $61
	ld   de, $2211                                   ; $6cfb: $11 $11 $22
	ld   de, $cf26                                   ; $6cfe: $11 $26 $cf
	cp   $bf                                         ; $6d01: $fe $bf
	rst  $38                                         ; $6d03: $ff
	db   $eb                                         ; $6d04: $eb
	ld   [hl], e                                     ; $6d05: $73
	ld   b, l                                        ; $6d06: $45
	ld   d, l                                        ; $6d07: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d08: $cf
	rst  $38                                         ; $6d09: $ff
	rst  $38                                         ; $6d0a: $ff
	jp   c, $1172                                    ; $6d0b: $da $72 $11

	ld   de, $6114                                   ; $6d0e: $11 $14 $61
	ld   [de], a                                     ; $6d11: $12
	cp   a                                           ; $6d12: $bf
	rst  $38                                         ; $6d13: $ff
	ret  z                                           ; $6d14: $c8

	rst  $38                                         ; $6d15: $ff
	db   $fc                                         ; $6d16: $fc
	ld   b, c                                        ; $6d17: $41
	inc  de                                          ; $6d18: $13
	ld   [hl], l                                     ; $6d19: $75
	ld   c, b                                        ; $6d1a: $48
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	ld   a, [$5178]                                  ; $6d1d: $fa $78 $51
	ld   de, $8611                                   ; $6d20: $11 $11 $86
	inc  d                                           ; $6d23: $14
	rst  JumpTable                                         ; $6d24: $df
	rst  $38                                         ; $6d25: $ff
	ei                                               ; $6d26: $fb
	cp   a                                           ; $6d27: $bf
	ld   hl, sp+$11                                  ; $6d28: $f8 $11
	ld   de, $bd49                                   ; $6d2a: $11 $49 $bd
	rst  $38                                         ; $6d2d: $ff
	rst  $38                                         ; $6d2e: $ff
	db   $fc                                         ; $6d2f: $fc
	ld   b, c                                        ; $6d30: $41
	ld   de, $1311                                   ; $6d31: $11 $11 $13
	ld   d, c                                        ; $6d34: $51
	ld   a, [de]                                     ; $6d35: $1a
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	cp   $ff                                         ; $6d38: $fe $ff
	sub  c                                           ; $6d3a: $91
	ld   de, $1111                                   ; $6d3b: $11 $11 $11
	ld   e, a                                        ; $6d3e: $5f
	rst  $38                                         ; $6d3f: $ff
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	and  h                                           ; $6d42: $a4
	ld   de, $1111                                   ; $6d43: $11 $11 $11
	sbc  a                                           ; $6d46: $9f
	add  c                                           ; $6d47: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d48: $cf
	rst  $38                                         ; $6d49: $ff
	or   $2f                                         ; $6d4a: $f6 $2f
	rst  $30                                         ; $6d4c: $f7
	ld   de, $7412                                   ; $6d4d: $11 $12 $74
	dec  de                                          ; $6d50: $1b
	rst  $38                                         ; $6d51: $ff
	rst  $38                                         ; $6d52: $ff
	rst  $28                                         ; $6d53: $ef
	rst  $30                                         ; $6d54: $f7
	ld   de, $1111                                   ; $6d55: $11 $11 $11
	dec  e                                           ; $6d58: $1d
	db   $fd                                         ; $6d59: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d5a: $cf
	rst  $38                                         ; $6d5b: $ff
	rst  $38                                         ; $6d5c: $ff
	ld   sp, $11aa                                   ; $6d5d: $31 $aa $11
	ld   [de], a                                     ; $6d60: $12
	ld   e, d                                        ; $6d61: $5a
	sbc  c                                           ; $6d62: $99
	rst  $38                                         ; $6d63: $ff
	rst  $38                                         ; $6d64: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d65: $cf
	ld   sp, hl                                      ; $6d66: $f9
	ld   de, $1111                                   ; $6d67: $11 $11 $11
	ld   de, $f4ff                                   ; $6d6a: $11 $ff $f4
	rst  JumpTable                                         ; $6d6d: $df
	rst  $38                                         ; $6d6e: $ff
	pop  af                                          ; $6d6f: $f1
	inc  e                                           ; $6d70: $1c
	pop  af                                          ; $6d71: $f1
	ld   de, $a88e                                   ; $6d72: $11 $8e $a8
	ld   l, a                                        ; $6d75: $6f
	rst  $38                                         ; $6d76: $ff

jr_0b4_6d77:
	rst  $30                                         ; $6d77: $f7
	rst  $28                                         ; $6d78: $ef
	pop  bc                                          ; $6d79: $c1
	ld   de, $1111                                   ; $6d7a: $11 $11 $11
	dec  d                                           ; $6d7d: $15
	rst  $38                                         ; $6d7e: $ff
	inc  d                                           ; $6d7f: $14
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	ld   de, $419f                                   ; $6d82: $11 $9f $41
	rla                                              ; $6d85: $17
	or   $58                                         ; $6d86: $f6 $58
	rst  $38                                         ; $6d88: $ff
	rst  $38                                         ; $6d89: $ff
	adc  a                                           ; $6d8a: $8f
	cp   $11                                         ; $6d8b: $fe $11
	ld   de, $1111                                   ; $6d8d: $11 $11 $11
	rra                                              ; $6d90: $1f
	pop  af                                          ; $6d91: $f1
	rra                                              ; $6d92: $1f
	rst  $38                                         ; $6d93: $ff
	xor  c                                           ; $6d94: $a9
	ld   a, [hl+]                                    ; $6d95: $2a
	rst  $10                                         ; $6d96: $d7
	ld   de, $81af                                   ; $6d97: $11 $af $81
	ld   a, a                                        ; $6d9a: $7f
	rst  $38                                         ; $6d9b: $ff
	rst  $38                                         ; $6d9c: $ff
	rst  $38                                         ; $6d9d: $ff
	or   $12                                         ; $6d9e: $f6 $12
	ld   hl, $1111                                   ; $6da0: $21 $11 $11
	rra                                              ; $6da3: $1f
	push af                                          ; $6da4: $f5
	ld   e, $ff                                      ; $6da5: $1e $ff
	ei                                               ; $6da7: $fb
	jr   c, jr_0b4_6d77                              ; $6da8: $38 $cd

	ld   de, $916f                                   ; $6daa: $11 $6f $91
	ld   l, l                                        ; $6dad: $6d
	rst  $38                                         ; $6dae: $ff
	rst  $38                                         ; $6daf: $ff
	rst  $38                                         ; $6db0: $ff
	rst  $30                                         ; $6db1: $f7
	inc  d                                           ; $6db2: $14
	ld   de, $1111                                   ; $6db3: $11 $11 $11
	ld   d, $fd                                      ; $6db6: $16 $fd
	ld   a, [de]                                     ; $6db8: $1a
	rst  $38                                         ; $6db9: $ff
	db   $fc                                         ; $6dba: $fc
	ld   [de], a                                     ; $6dbb: $12
	sbc  h                                           ; $6dbc: $9c
	ld   de, $e43f                                   ; $6dbd: $11 $3f $e4
	sbc  l                                           ; $6dc0: $9d
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  JumpTable                                         ; $6dc3: $df
	ld   sp, hl                                      ; $6dc4: $f9
	ld   [de], a                                     ; $6dc5: $12
	ld   hl, $1111                                   ; $6dc6: $21 $11 $11
	ld   de, $1bff                                   ; $6dc9: $11 $ff $1b
	rst  $38                                         ; $6dcc: $ff
	call z, Call_0b4_6696                            ; $6dcd: $cc $96 $66
	ld   de, $c14f                                   ; $6dd0: $11 $4f $c1
	xor  a                                           ; $6dd3: $af
	db   $fc                                         ; $6dd4: $fc
	xor  a                                           ; $6dd5: $af
	rst  $38                                         ; $6dd6: $ff
	and  h                                           ; $6dd7: $a4
	ld   l, h                                        ; $6dd8: $6c
	ld   [hl], c                                     ; $6dd9: $71
	ld   [de], a                                     ; $6dda: $12
	ld   sp, $1f11                                   ; $6ddb: $31 $11 $1f
	pop  af                                          ; $6dde: $f1
	ld   e, a                                        ; $6ddf: $5f
	db   $fd                                         ; $6de0: $fd
	ld   l, c                                        ; $6de1: $69
	ld   a, l                                        ; $6de2: $7d
	sub  c                                           ; $6de3: $91
	ld   [de], a                                     ; $6de4: $12
	db   $fc                                         ; $6de5: $fc
	rla                                              ; $6de6: $17
	rst  $38                                         ; $6de7: $ff
	ret  c                                           ; $6de8: $d8

	rst  JumpTable                                         ; $6de9: $df
	ld   sp, hl                                      ; $6dea: $f9
	ld   b, a                                        ; $6deb: $47
	add  $11                                         ; $6dec: $c6 $11
	dec  [hl]                                        ; $6dee: $35
	ld   de, rAUD1LEN                                   ; $6def: $11 $11 $ff
	ld   de, $e6ff                                   ; $6df2: $11 $ff $e6
	sbc  b                                           ; $6df5: $98
	jp   c, $2f11                                    ; $6df6: $da $11 $2f

	or   c                                           ; $6df9: $b1
	adc  a                                           ; $6dfa: $8f
	cp   $ab                                         ; $6dfb: $fe $ab
	rst  $38                                         ; $6dfd: $ff
	call nz, $917d                                   ; $6dfe: $c4 $7d $91
	inc  de                                          ; $6e01: $13
	ld   h, c                                        ; $6e02: $61
	ld   de, $f11c                                   ; $6e03: $11 $1c $f1
	rra                                              ; $6e06: $1f
	rst  $38                                         ; $6e07: $ff
	dec  sp                                          ; $6e08: $3b
	xor  h                                           ; $6e09: $ac
	and  d                                           ; $6e0a: $a2
	ld   de, $13ff                                   ; $6e0b: $11 $ff $13
	rst  $38                                         ; $6e0e: $ff
	db   $fd                                         ; $6e0f: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e10: $cf
	cp   $56                                         ; $6e11: $fe $56
	jp   z, $1701                                    ; $6e13: $ca $01 $17

	ld   b, c                                        ; $6e16: $41
	ld   de, $f11f                                   ; $6e17: $11 $1f $f1
	rra                                              ; $6e1a: $1f
	ei                                               ; $6e1b: $fb
	ld   c, l                                        ; $6e1c: $4d
	sbc  e                                           ; $6e1d: $9b
	ld   [hl], c                                     ; $6e1e: $71
	ld   [de], a                                     ; $6e1f: $12
	ld   sp, hl                                      ; $6e20: $f9
	ld   e, $ff                                      ; $6e21: $1e $ff
	call $f8df                                       ; $6e23: $cd $df $f8
	ld   c, c                                        ; $6e26: $49
	rst  $20                                         ; $6e27: $e7
	ld   [de], a                                     ; $6e28: $12
	ld   l, c                                        ; $6e29: $69
	ld   sp, $1f11                                   ; $6e2a: $31 $11 $1f
	pop  af                                          ; $6e2d: $f1
	rra                                              ; $6e2e: $1f
	ei                                               ; $6e2f: $fb
	ld   c, a                                        ; $6e30: $4f
	call c, $1341                                    ; $6e31: $dc $41 $13
	ld   [$ff29], a                                  ; $6e34: $ea $29 $ff
	db   $eb                                         ; $6e37: $eb
	cp   a                                           ; $6e38: $bf
	ld   a, [$c65a]                                  ; $6e39: $fa $5a $c6
	ld   [de], a                                     ; $6e3c: $12
	ld   [hl], $41                                   ; $6e3d: $36 $41
	ld   de, $f11c                                   ; $6e3f: $11 $1c $f1
	rra                                              ; $6e42: $1f
	cp   $2f                                         ; $6e43: $fe $2f
	call z, $1151                                    ; $6e45: $cc $51 $11
	ld   sp, hl                                      ; $6e48: $f9
	ld   c, c                                        ; $6e49: $49
	rst  $38                                         ; $6e4a: $ff
	xor  d                                           ; $6e4b: $aa
	xor  a                                           ; $6e4c: $af
	ld   a, [$b769]                                  ; $6e4d: $fa $69 $b7
	inc  [hl]                                        ; $6e50: $34
	ld   b, a                                        ; $6e51: $47
	ld   d, c                                        ; $6e52: $51
	ld   de, $fc11                                   ; $6e53: $11 $11 $fc
	dec  de                                          ; $6e56: $1b
	rst  $38                                         ; $6e57: $ff
	dec  a                                           ; $6e58: $3d
	db   $fc                                         ; $6e59: $fc
	ld   b, c                                        ; $6e5a: $41
	ld   de, $759d                                   ; $6e5b: $11 $9d $75
	rst  $38                                         ; $6e5e: $ff
	call c, $fddf                                    ; $6e5f: $dc $df $fd
	ld   [hl], a                                     ; $6e62: $77
	sbc  c                                           ; $6e63: $99
	ld   d, d                                        ; $6e64: $52
	ld   b, [hl]                                     ; $6e65: $46
	ld   h, d                                        ; $6e66: $62
	ld   de, rAUD1LEN                                   ; $6e67: $11 $11 $ff
	ld   de, $a5ff                                   ; $6e6a: $11 $ff $a5
	db   $fd                                         ; $6e6d: $fd
	sub  e                                           ; $6e6e: $93
	ld   de, $833f                                   ; $6e6f: $11 $3f $83
	rst  JumpTable                                         ; $6e72: $df
	ld   [$cfdf], a                                  ; $6e73: $ea $df $cf
	and  a                                           ; $6e76: $a7
	xor  e                                           ; $6e77: $ab
	ld   h, c                                        ; $6e78: $61
	ld   a, b                                        ; $6e79: $78
	ld   h, c                                        ; $6e7a: $61
	ld   de, $1f11                                   ; $6e7b: $11 $11 $1f
	pop  af                                          ; $6e7e: $f1
	ld   l, a                                        ; $6e7f: $6f
	or   $df                                         ; $6e80: $f6 $df
	and  h                                           ; $6e82: $a4
	ld   b, c                                        ; $6e83: $41
	rla                                              ; $6e84: $17
	ld   hl, sp+$4f                                  ; $6e85: $f8 $4f
	db   $fd                                         ; $6e87: $fd
	adc  $db                                         ; $6e88: $ce $db
	jp   hl                                          ; $6e8a: $e9


	ld   a, e                                        ; $6e8b: $7b
	or   e                                           ; $6e8c: $b3
	jr   z, jr_0b4_6f03                              ; $6e8d: $28 $74

	ld   de, $1111                                   ; $6e8f: $11 $11 $11
	db   $fd                                         ; $6e92: $fd
	dec  de                                          ; $6e93: $1b
	rst  $38                                         ; $6e94: $ff
	ld   l, a                                        ; $6e95: $6f
	rst  $30                                         ; $6e96: $f7
	ld   [hl], l                                     ; $6e97: $75
	ld   de, $35cf                                   ; $6e98: $11 $cf $35
	rst  $38                                         ; $6e9b: $ff
	call z, $deeb                                    ; $6e9c: $cc $eb $de
	ld   h, a                                        ; $6e9f: $67
	sla  e                                           ; $6ea0: $cb $23
	sub  a                                           ; $6ea2: $97
	ld   b, c                                        ; $6ea3: $41
	ld   de, $1f11                                   ; $6ea4: $11 $11 $1f
	ld   de, $f7ff                                   ; $6ea7: $11 $ff $f7
	ei                                               ; $6eaa: $fb
	ld   h, a                                        ; $6eab: $67
	ld   d, c                                        ; $6eac: $51
	rra                                              ; $6ead: $1f
	or   d                                           ; $6eae: $b2
	cp   a                                           ; $6eaf: $bf
	ld   a, [$bdff]                                  ; $6eb0: $fa $ff $bd
	and  h                                           ; $6eb3: $a4
	cp   a                                           ; $6eb4: $bf
	add  c                                           ; $6eb5: $81
	ld   l, e                                        ; $6eb6: $6b
	ld   h, c                                        ; $6eb7: $61
	ld   hl, $1611                                   ; $6eb8: $21 $11 $16
	pop  af                                          ; $6ebb: $f1
	rra                                              ; $6ebc: $1f
	rst  $38                                         ; $6ebd: $ff
	xor  a                                           ; $6ebe: $af
	adc  c                                           ; $6ebf: $89
	and  e                                           ; $6ec0: $a3
	ld   de, $1af9                                   ; $6ec1: $11 $f9 $1a
	rst  $38                                         ; $6ec4: $ff
	db   $ed                                         ; $6ec5: $ed
	db   $ed                                         ; $6ec6: $ed
	ret                                              ; $6ec7: $c9


	add  hl, sp                                      ; $6ec8: $39
	db   $eb                                         ; $6ec9: $eb
	inc  de                                          ; $6eca: $13
	cp   e                                           ; $6ecb: $bb
	ld   sp, $1111                                   ; $6ecc: $31 $11 $11
	rra                                              ; $6ecf: $1f
	add  c                                           ; $6ed0: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ed1: $cf
	ld   sp, hl                                      ; $6ed2: $f9
	ei                                               ; $6ed3: $fb
	ld   a, l                                        ; $6ed4: $7d
	ld   h, c                                        ; $6ed5: $61
	ld   e, $d1                                      ; $6ed6: $1e $d1
	ld   l, a                                        ; $6ed8: $6f
	db   $fc                                         ; $6ed9: $fc
	rst  $38                                         ; $6eda: $ff
	rst  JumpTable                                         ; $6edb: $df
	or   [hl]                                        ; $6edc: $b6
	sbc  [hl]                                        ; $6edd: $9e
	sub  c                                           ; $6ede: $91
	add  hl, hl                                      ; $6edf: $29
	add  c                                           ; $6ee0: $81
	ld   de, $1b11                                   ; $6ee1: $11 $11 $1b
	pop  af                                          ; $6ee4: $f1
	rra                                              ; $6ee5: $1f
	rst  $38                                         ; $6ee6: $ff
	sbc  a                                           ; $6ee7: $9f
	ld   a, c                                        ; $6ee8: $79
	and  c                                           ; $6ee9: $a1
	ld   de, $1df7                                   ; $6eea: $11 $f7 $1d
	rst  $38                                         ; $6eed: $ff
	rst  $28                                         ; $6eee: $ef
	db   $eb                                         ; $6eef: $eb
	add  $48                                         ; $6ef0: $c6 $48
	db   $db                                         ; $6ef2: $db
	ld   [hl], $ac                                   ; $6ef3: $36 $ac
	ld   d, d                                        ; $6ef5: $52
	ld   de, $1f11                                   ; $6ef6: $11 $11 $1f
	pop  af                                          ; $6ef9: $f1
	adc  a                                           ; $6efa: $8f
	ei                                               ; $6efb: $fb
	rst  $38                                         ; $6efc: $ff
	ld   a, [hl]                                     ; $6efd: $7e
	ld   [hl], c                                     ; $6efe: $71
	rla                                              ; $6eff: $17
	pop  af                                          ; $6f00: $f1
	rra                                              ; $6f01: $1f
	rst  $38                                         ; $6f02: $ff

jr_0b4_6f03:
	cp   a                                           ; $6f03: $bf
	rst  $38                                         ; $6f04: $ff
	or   e                                           ; $6f05: $b3
	adc  b                                           ; $6f06: $88
	pop  bc                                          ; $6f07: $c1
	daa                                              ; $6f08: $27
	add  $13                                         ; $6f09: $c6 $13
	ld   de, rAUD1LEN                                   ; $6f0b: $11 $11 $ff
	inc  d                                           ; $6f0e: $14
	rst  $38                                         ; $6f0f: $ff
	xor  $f4                                         ; $6f10: $ee $f4
	ld   [$1f11], a                                  ; $6f12: $ea $11 $1f
	ld   de, $fdff                                   ; $6f15: $11 $ff $fd
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	ld   [hl], $9b                                   ; $6f1a: $36 $9b
	ld   d, c                                        ; $6f1c: $51
	ld   a, d                                        ; $6f1d: $7a
	or   e                                           ; $6f1e: $b3
	ld   d, l                                        ; $6f1f: $55
	ld   de, rAUD1LEN                                   ; $6f20: $11 $11 $ff
	dec  de                                          ; $6f23: $1b
	rst  $38                                         ; $6f24: $ff
	sbc  a                                           ; $6f25: $9f
	ld   hl, sp-$0c                                  ; $6f26: $f8 $f4
	ld   de, $117c                                   ; $6f28: $11 $7c $11
	rst  $38                                         ; $6f2b: $ff
	db   $fd                                         ; $6f2c: $fd
	rst  $38                                         ; $6f2d: $ff
	jp   z, Jump_0b4_6a35                            ; $6f2e: $ca $35 $6a

	dec  [hl]                                        ; $6f31: $35
	cp   e                                           ; $6f32: $bb
	and  l                                           ; $6f33: $a5
	sub  l                                           ; $6f34: $95
	ld   de, rAUD1LEN                                   ; $6f35: $11 $11 $ff
	ld   de, $ccff                                   ; $6f38: $11 $ff $cc
	ld   sp, hl                                      ; $6f3b: $f9
	jp   z, $1f11                                    ; $6f3c: $ca $11 $1f

	ld   de, $fbff                                   ; $6f3f: $11 $ff $fb
	rst  $38                                         ; $6f42: $ff
	rst  $38                                         ; $6f43: $ff
	dec  [hl]                                        ; $6f44: $35
	ld   a, e                                        ; $6f45: $7b
	ld   sp, $c37a                                   ; $6f46: $31 $7a $c3
	ld   h, a                                        ; $6f49: $67
	ld   h, c                                        ; $6f4a: $61
	ld   de, $11cf                                   ; $6f4b: $11 $cf $11
	rst  $38                                         ; $6f4e: $ff
	db   $f4                                         ; $6f4f: $f4
	cp   $f9                                         ; $6f50: $fe $f9
	ld   de, $111f                                   ; $6f52: $11 $1f $11
	cp   a                                           ; $6f55: $bf
	ld   hl, sp-$01                                  ; $6f56: $f8 $ff
	db   $fc                                         ; $6f58: $fc
	ld   b, c                                        ; $6f59: $41
	ld   l, c                                        ; $6f5a: $69
	ld   b, d                                        ; $6f5b: $42
	sbc  h                                           ; $6f5c: $9c
	rst  ToBoot                                         ; $6f5d: $c7
	ld   l, c                                        ; $6f5e: $69
	ld   [hl], c                                     ; $6f5f: $71
	ld   de, $f11f                                   ; $6f60: $11 $1f $f1
	ld   c, a                                        ; $6f63: $4f
	ld   a, [$bedf]                                  ; $6f64: $fa $df $be
	ld   d, c                                        ; $6f67: $51
	inc  de                                          ; $6f68: $13
	pop  hl                                          ; $6f69: $e1
	rra                                              ; $6f6a: $1f
	rst  $38                                         ; $6f6b: $ff
	rst  JumpTable                                         ; $6f6c: $df
	rst  $38                                         ; $6f6d: $ff
	jp   $8247                                       ; $6f6e: $c3 $47 $82


	ld   [hl], $9a                                   ; $6f71: $36 $9a
	ld   l, c                                        ; $6f73: $69
	sub  a                                           ; $6f74: $97
	ld   de, $fb11                                   ; $6f75: $11 $11 $fb
	rla                                              ; $6f78: $17
	rst  $38                                         ; $6f79: $ff
	jp   z, $f1ff                                    ; $6f7a: $ca $ff $f1

	ld   de, $119b                                   ; $6f7d: $11 $9b $11
	rst  $38                                         ; $6f80: $ff
	db   $fc                                         ; $6f81: $fc
	rst  $38                                         ; $6f82: $ff
	ld   sp, hl                                      ; $6f83: $f9
	ld   [de], a                                     ; $6f84: $12
	add  a                                           ; $6f85: $87
	ld   [hl], $ac                                   ; $6f86: $36 $ac
	or   a                                           ; $6f88: $b7
	adc  d                                           ; $6f89: $8a
	ld   [hl], c                                     ; $6f8a: $71
	ld   de, $f11a                                   ; $6f8b: $11 $1a $f1
	rra                                              ; $6f8e: $1f
	rst  $38                                         ; $6f8f: $ff
	cp   a                                           ; $6f90: $bf
	db   $db                                         ; $6f91: $db
	ld   b, c                                        ; $6f92: $41
	ld   de, $1ec1                                   ; $6f93: $11 $c1 $1e
	rst  $38                                         ; $6f96: $ff
	cp   a                                           ; $6f97: $bf
	rst  $38                                         ; $6f98: $ff
	and  e                                           ; $6f99: $a3
	dec  h                                           ; $6f9a: $25
	ld   h, e                                        ; $6f9b: $63
	ld   l, d                                        ; $6f9c: $6a
	cp   d                                           ; $6f9d: $ba
	cp   d                                           ; $6f9e: $ba
	adc  b                                           ; $6f9f: $88
	ld   de, $1f11                                   ; $6fa0: $11 $11 $1f
	pop  hl                                          ; $6fa3: $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa4: $cf
	ld   a, [$98ff]                                  ; $6fa5: $fa $ff $98
	ld   sp, $b119                                   ; $6fa8: $31 $19 $b1
	ld   c, a                                        ; $6fab: $4f
	cp   $df                                         ; $6fac: $fe $df
	db   $ec                                         ; $6fae: $ec
	ld   h, c                                        ; $6faf: $61
	scf                                              ; $6fb0: $37
	add  l                                           ; $6fb1: $85
	sbc  d                                           ; $6fb2: $9a
	cp   e                                           ; $6fb3: $bb
	sub  a                                           ; $6fb4: $97
	add  l                                           ; $6fb5: $85
	ld   de, $1f11                                   ; $6fb6: $11 $11 $1f
	add  c                                           ; $6fb9: $81
	rst  $38                                         ; $6fba: $ff
	ld   sp, hl                                      ; $6fbb: $f9
	db   $fd                                         ; $6fbc: $fd
	sub  [hl]                                        ; $6fbd: $96
	ld   de, $711d                                   ; $6fbe: $11 $1d $71
	sbc  a                                           ; $6fc1: $9f
	db   $fc                                         ; $6fc2: $fc
	rst  $38                                         ; $6fc3: $ff
	jp   c, $2731                                    ; $6fc4: $da $31 $27

	ld   [hl], l                                     ; $6fc7: $75
	sbc  a                                           ; $6fc8: $9f
	ld   sp, hl                                      ; $6fc9: $f9
	adc  d                                           ; $6fca: $8a
	sub  h                                           ; $6fcb: $94
	ld   de, $1f11                                   ; $6fcc: $11 $11 $1f
	pop  af                                          ; $6fcf: $f1
	ld   c, a                                        ; $6fd0: $4f
	rst  $38                                         ; $6fd1: $ff
	rst  $28                                         ; $6fd2: $ef
	ld   d, a                                        ; $6fd3: $57
	ld   hl, $f411                                   ; $6fd4: $21 $11 $f4
	ld   l, $ff                                      ; $6fd7: $2e $ff
	rst  $28                                         ; $6fd9: $ef
	jp   z, $1381                                    ; $6fda: $ca $81 $13

	sub  l                                           ; $6fdd: $95
	ld   e, [hl]                                     ; $6fde: $5e
	db   $fc                                         ; $6fdf: $fc
	adc  l                                           ; $6fe0: $8d
	and  a                                           ; $6fe1: $a7
	ld   b, c                                        ; $6fe2: $41
	ld   de, rAUD1LEN                                   ; $6fe3: $11 $11 $ff
	rra                                              ; $6fe6: $1f
	rst  $38                                         ; $6fe7: $ff
	cp   a                                           ; $6fe8: $bf
	db   $e4                                         ; $6fe9: $e4
	ld   d, c                                        ; $6fea: $51
	ld   de, $17ab                                   ; $6feb: $11 $ab $17
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	db   $fd                                         ; $6ff0: $fd
	sub  e                                           ; $6ff1: $93
	ld   de, $4a36                                   ; $6ff2: $11 $36 $4a
	rst  $38                                         ; $6ff5: $ff
	cp   h                                           ; $6ff6: $bc

jr_0b4_6ff7:
	jp   hl                                          ; $6ff7: $e9


	ld   [hl], d                                     ; $6ff8: $72
	ld   de, $1f11                                   ; $6ff9: $11 $11 $1f
	pop  af                                          ; $6ffc: $f1
	rst  $28                                         ; $6ffd: $ef
	db   $fd                                         ; $6ffe: $fd
	db   $fc                                         ; $6fff: $fc
	ld   [hl], $11                                   ; $7000: $36 $11
	jr   jr_0b4_6ff7                                 ; $7002: $18 $f3

	ld   a, a                                        ; $7004: $7f
	rst  $38                                         ; $7005: $ff
	rst  $38                                         ; $7006: $ff
	sub  $11                                         ; $7007: $d6 $11
	inc  de                                          ; $7009: $13
	ld   h, l                                        ; $700a: $65
	xor  a                                           ; $700b: $af
	rst  $38                                         ; $700c: $ff
	sbc  $b6                                         ; $700d: $de $b6
	ld   de, $1111                                   ; $700f: $11 $11 $11
	sbc  a                                           ; $7012: $9f
	ld   h, c                                        ; $7013: $61
	rst  $38                                         ; $7014: $ff
	rst  $30                                         ; $7015: $f7
	ldh  [c], a                                      ; $7016: $e2
	ld   b, c                                        ; $7017: $41
	ld   de, $b51f                                   ; $7018: $11 $1f $b5
	rst  $38                                         ; $701b: $ff
	cp   $db                                         ; $701c: $fe $db
	ld   [hl], c                                     ; $701e: $71
	ld   de, $8718                                   ; $701f: $11 $18 $87
	rst  $28                                         ; $7022: $ef
	rst  $38                                         ; $7023: $ff
	call c, $1193                                    ; $7024: $dc $93 $11
	ld   de, $1f11                                   ; $7027: $11 $11 $1f
	pop  af                                          ; $702a: $f1
	rst  $28                                         ; $702b: $ef
	ldh  a, [c]                                      ; $702c: $f2
	ld   h, d                                        ; $702d: $62
	ld   hl, $1f11                                   ; $702e: $21 $11 $1f
	ld   sp, hl                                      ; $7031: $f9
	sbc  a                                           ; $7032: $9f
	cp   $98                                         ; $7033: $fe $98
	ld   [hl], c                                     ; $7035: $71
	ld   de, $b918                                   ; $7036: $11 $18 $b9
	rst  $28                                         ; $7039: $ef
	rst  $38                                         ; $703a: $ff
	cp   e                                           ; $703b: $bb
	sub  h                                           ; $703c: $94
	ld   de, $1111                                   ; $703d: $11 $11 $11
	ld   d, $ff                                      ; $7040: $16 $ff
	rra                                              ; $7042: $1f
	rst  $38                                         ; $7043: $ff
	inc  de                                          ; $7044: $13
	ld   de, $1111                                   ; $7045: $11 $11 $11
	rst  $38                                         ; $7048: $ff
	sbc  l                                           ; $7049: $9d
	rst  $38                                         ; $704a: $ff
	or   [hl]                                        ; $704b: $b6
	ld   h, [hl]                                     ; $704c: $66
	ld   de, $8b11                                   ; $704d: $11 $11 $8b
	rst  JumpTable                                         ; $7050: $df
	rst  $38                                         ; $7051: $ff
	db   $fc                                         ; $7052: $fc
	sub  a                                           ; $7053: $97
	ld   hl, $1111                                   ; $7054: $21 $11 $11
	ld   de, $fd1f                                   ; $7057: $11 $1f $fd
	rra                                              ; $705a: $1f
	db   $fd                                         ; $705b: $fd
	inc  de                                          ; $705c: $13
	dec  d                                           ; $705d: $15
	ld   de, $ff17                                   ; $705e: $11 $17 $ff
	sbc  a                                           ; $7061: $9f
	rst  $38                                         ; $7062: $ff
	ld   h, e                                        ; $7063: $63
	ld   d, d                                        ; $7064: $52
	ld   de, $cf16                                   ; $7065: $11 $16 $cf
	rst  $28                                         ; $7068: $ef
	rst  $38                                         ; $7069: $ff
	cp   c                                           ; $706a: $b9
	and  l                                           ; $706b: $a5
	ld   de, $1111                                   ; $706c: $11 $11 $11
	ld   de, $fe1f                                   ; $706f: $11 $1f $fe
	rra                                              ; $7072: $1f
	db   $fd                                         ; $7073: $fd
	ld   [de], a                                     ; $7074: $12
	inc  h                                           ; $7075: $24
	ld   [hl+], a                                    ; $7076: $22
	rla                                              ; $7077: $17
	rst  $38                                         ; $7078: $ff
	sbc  [hl]                                        ; $7079: $9e
	rst  $38                                         ; $707a: $ff
	ld   h, h                                        ; $707b: $64
	ld   b, e                                        ; $707c: $43
	ld   de, $de18                                   ; $707d: $11 $18 $de
	rst  $28                                         ; $7080: $ef
	rst  $38                                         ; $7081: $ff
	ret                                              ; $7082: $c9


	add  l                                           ; $7083: $85
	ld   de, $3111                                   ; $7084: $11 $11 $31
	ld   [de], a                                     ; $7087: $12
	ld   b, c                                        ; $7088: $41
	ld   e, a                                        ; $7089: $5f
	pop  af                                          ; $708a: $f1
	sbc  a                                           ; $708b: $9f
	pop  af                                          ; $708c: $f1
	inc  [hl]                                        ; $708d: $34
	ld   [hl], h                                     ; $708e: $74
	ld   d, e                                        ; $708f: $53
	ccf                                              ; $7090: $3f
	ei                                               ; $7091: $fb
	cp   a                                           ; $7092: $bf
	add  sp, -$7a                                    ; $7093: $e8 $86
	ld   [hl], a                                     ; $7095: $77
	ld   d, e                                        ; $7096: $53
	adc  d                                           ; $7097: $8a
	xor  d                                           ; $7098: $aa
	rst  JumpTable                                         ; $7099: $df
	call c, Call_0b4_6598                            ; $709a: $dc $98 $65
	ld   [hl-], a                                    ; $709d: $32
	inc  [hl]                                        ; $709e: $34
	ld   hl, $1123                                   ; $709f: $21 $23 $11
	rst  $28                                         ; $70a2: $ef
	ld   [hl], c                                     ; $70a3: $71
	rst  $38                                         ; $70a4: $ff
	and  h                                           ; $70a5: $a4
	add  l                                           ; $70a6: $85
	ld   h, l                                        ; $70a7: $65
	ld   d, c                                        ; $70a8: $51
	ld   l, a                                        ; $70a9: $6f
	and  a                                           ; $70aa: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ab: $cf
	db   $db                                         ; $70ac: $db
	xor  d                                           ; $70ad: $aa
	adc  b                                           ; $70ae: $88
	ld   d, d                                        ; $70af: $52
	ld   a, c                                        ; $70b0: $79
	sbc  b                                           ; $70b1: $98
	adc  $ca                                         ; $70b2: $ce $ca
	xor  d                                           ; $70b4: $aa
	halt                                             ; $70b5: $76
	ld   b, e                                        ; $70b6: $43
	ld   [hl+], a                                    ; $70b7: $22
	ld   [hl-], a                                    ; $70b8: $32
	ld   b, d                                        ; $70b9: $42
	ld   de, $d16f                                   ; $70ba: $11 $6f $d1
	xor  a                                           ; $70bd: $af
	push af                                          ; $70be: $f5
	ld   [hl], a                                     ; $70bf: $77
	add  l                                           ; $70c0: $85
	ld   b, c                                        ; $70c1: $41
	ld   a, $a6                                      ; $70c2: $3e $a6
	adc  a                                           ; $70c4: $8f
	ld   sp, hl                                      ; $70c5: $f9
	xor  e                                           ; $70c6: $ab
	rst  ToBoot                                         ; $70c7: $c7
	ld   d, d                                        ; $70c8: $52
	ld   a, b                                        ; $70c9: $78
	ld   [hl], a                                     ; $70ca: $77
	cp   [hl]                                        ; $70cb: $be
	call $96bb                                       ; $70cc: $cd $bb $96
	ld   b, h                                        ; $70cf: $44
	ld   d, e                                        ; $70d0: $53
	ld   de, $1154                                   ; $70d1: $11 $54 $11
	ld   de, $16ff                                   ; $70d4: $11 $ff $16
	rst  $38                                         ; $70d7: $ff
	ld   d, [hl]                                     ; $70d8: $56
	xor  d                                           ; $70d9: $aa
	ld   h, h                                        ; $70da: $64
	inc  sp                                          ; $70db: $33
	jp   z, $ff78                                    ; $70dc: $ca $78 $ff

	adc  c                                           ; $70df: $89
	cp   h                                           ; $70e0: $bc
	ld   [hl], h                                     ; $70e1: $74
	dec  h                                           ; $70e2: $25
	halt                                             ; $70e3: $76
	ld   a, d                                        ; $70e4: $7a
	xor  $ec                                         ; $70e5: $ee $ec
	res  2, l                                        ; $70e7: $cb $95
	inc  h                                           ; $70e9: $24
	ld   b, e                                        ; $70ea: $43
	inc  de                                          ; $70eb: $13
	ld   h, l                                        ; $70ec: $65
	ld   sp, rAUD1LEN                                   ; $70ed: $31 $11 $ff
	inc  d                                           ; $70f0: $14
	rst  $38                                         ; $70f1: $ff
	add  a                                           ; $70f2: $87
	adc  c                                           ; $70f3: $89
	add  [hl]                                        ; $70f4: $86
	ld   b, e                                        ; $70f5: $43
	bit  7, b                                        ; $70f6: $cb $78
	rst  $28                                         ; $70f8: $ef
	adc  d                                           ; $70f9: $8a
	xor  e                                           ; $70fa: $ab
	ld   [hl], l                                     ; $70fb: $75
	inc  h                                           ; $70fc: $24
	halt                                             ; $70fd: $76
	ld   l, d                                        ; $70fe: $6a
	cp   $dc                                         ; $70ff: $fe $dc
	db   $eb                                         ; $7101: $eb
	sub  [hl]                                        ; $7102: $96
	inc  [hl]                                        ; $7103: $34
	ld   b, h                                        ; $7104: $44
	inc  [hl]                                        ; $7105: $34
	ld   b, l                                        ; $7106: $45
	ld   [hl], a                                     ; $7107: $77
	ld   sp, $f619                                   ; $7108: $31 $19 $f6
	dec  de                                          ; $710b: $1b
	db   $fd                                         ; $710c: $fd
	ld   l, c                                        ; $710d: $69
	sbc  e                                           ; $710e: $9b
	ld   [hl], a                                     ; $710f: $77
	ld   b, a                                        ; $7110: $47
	cp   b                                           ; $7111: $b8
	sbc  e                                           ; $7112: $9b
	jp   hl                                          ; $7113: $e9


	sbc  c                                           ; $7114: $99
	sbc  c                                           ; $7115: $99
	ld   [hl], l                                     ; $7116: $75
	ld   c, b                                        ; $7117: $48
	ld   [hl], a                                     ; $7118: $77
	adc  h                                           ; $7119: $8c
	call c, $b8cc                                    ; $711a: $dc $cc $b8
	add  [hl]                                        ; $711d: $86
	ld   h, l                                        ; $711e: $65
	ld   d, l                                        ; $711f: $55
	ld   d, [hl]                                     ; $7120: $56
	ld   d, a                                        ; $7121: $57
	ld   h, l                                        ; $7122: $65
	ld   [hl-], a                                    ; $7123: $32
	ld   hl, $a65d                                   ; $7124: $21 $5d $a6
	xor  a                                           ; $7127: $af
	ret  c                                           ; $7128: $d8

	xor  d                                           ; $7129: $aa
	sub  a                                           ; $712a: $97
	add  [hl]                                        ; $712b: $86
	ld   l, c                                        ; $712c: $69
	sbc  c                                           ; $712d: $99
	adc  l                                           ; $712e: $8d
	cp   d                                           ; $712f: $ba
	xor  e                                           ; $7130: $ab
	sub  a                                           ; $7131: $97
	ld   [hl], l                                     ; $7132: $75
	ld   h, [hl]                                     ; $7133: $66
	adc  b                                           ; $7134: $88
	xor  e                                           ; $7135: $ab
	call z, $b9bc                                    ; $7136: $cc $bc $b9
	halt                                             ; $7139: $76
	ld   a, b                                        ; $713a: $78
	ld   d, e                                        ; $713b: $53
	ld   e, b                                        ; $713c: $58
	ld   [hl], l                                     ; $713d: $75
	ld   d, a                                        ; $713e: $57
	ld   h, l                                        ; $713f: $65
	ld   sp, $f619                                   ; $7140: $31 $19 $f6
	dec  a                                           ; $7143: $3d
	db   $fc                                         ; $7144: $fc
	sbc  c                                           ; $7145: $99
	xor  c                                           ; $7146: $a9
	ld   h, h                                        ; $7147: $64
	ld   c, b                                        ; $7148: $48
	adc  b                                           ; $7149: $88
	adc  h                                           ; $714a: $8c
	db   $eb                                         ; $714b: $eb
	xor  e                                           ; $714c: $ab
	cp   c                                           ; $714d: $b9
	ld   [hl], l                                     ; $714e: $75
	ld   h, a                                        ; $714f: $67
	ld   h, [hl]                                     ; $7150: $66
	ld   a, e                                        ; $7151: $7b
	cp   c                                           ; $7152: $b9
	sbc  h                                           ; $7153: $9c
	ret                                              ; $7154: $c9


	sbc  b                                           ; $7155: $98
	add  [hl]                                        ; $7156: $86
	ld   d, l                                        ; $7157: $55
	ld   h, [hl]                                     ; $7158: $66
	ld   [hl], a                                     ; $7159: $77
	adc  b                                           ; $715a: $88
	sbc  b                                           ; $715b: $98
	ld   d, [hl]                                     ; $715c: $56
	ld   d, h                                        ; $715d: $54
	ld   de, $b913                                   ; $715e: $11 $13 $b9
	ld   a, d                                        ; $7161: $7a
	db   $fd                                         ; $7162: $fd
	xor  d                                           ; $7163: $aa
	sub  a                                           ; $7164: $97
	ld   e, b                                        ; $7165: $58
	ld   h, a                                        ; $7166: $67
	sbc  d                                           ; $7167: $9a
	xor  e                                           ; $7168: $ab
	db   $db                                         ; $7169: $db
	xor  c                                           ; $716a: $a9
	or   a                                           ; $716b: $b7
	ld   h, a                                        ; $716c: $67
	ld   [hl], a                                     ; $716d: $77
	ld   a, c                                        ; $716e: $79
	sbc  e                                           ; $716f: $9b
	cp   e                                           ; $7170: $bb
	xor  b                                           ; $7171: $a8
	adc  c                                           ; $7172: $89
	sub  a                                           ; $7173: $97
	halt                                             ; $7174: $76
	halt                                             ; $7175: $76
	ld   l, c                                        ; $7176: $69
	halt                                             ; $7177: $76
	adc  c                                           ; $7178: $89
	ld   [hl], l                                     ; $7179: $75
	ld   h, [hl]                                     ; $717a: $66
	ld   b, d                                        ; $717b: $42
	ld   hl, $b71a                                   ; $717c: $21 $1a $b7
	adc  l                                           ; $717f: $8d
	db   $db                                         ; $7180: $db
	cp   c                                           ; $7181: $b9
	ld   [hl], a                                     ; $7182: $77
	add  a                                           ; $7183: $87
	ld   a, c                                        ; $7184: $79
	xor  d                                           ; $7185: $aa
	xor  e                                           ; $7186: $ab
	cp   h                                           ; $7187: $bc
	and  a                                           ; $7188: $a7
	adc  d                                           ; $7189: $8a
	sub  [hl]                                        ; $718a: $96
	adc  c                                           ; $718b: $89
	add  a                                           ; $718c: $87
	adc  d                                           ; $718d: $8a
	xor  d                                           ; $718e: $aa
	xor  c                                           ; $718f: $a9
	adc  d                                           ; $7190: $8a
	add  l                                           ; $7191: $85
	ld   a, b                                        ; $7192: $78
	halt                                             ; $7193: $76
	sbc  c                                           ; $7194: $99
	ld   [hl], a                                     ; $7195: $77
	add  a                                           ; $7196: $87

Call_0b4_7197:
	ld   l, b                                        ; $7197: $68
	ld   d, h                                        ; $7198: $54
	ld   [hl], l                                     ; $7199: $75
	ld   de, $5b32                                   ; $719a: $11 $32 $5b
	cp   b                                           ; $719d: $b8
	adc  l                                           ; $719e: $8d
	jp   hl                                          ; $719f: $e9


	ld   h, a                                        ; $71a0: $67
	adc  d                                           ; $71a1: $8a
	sub  [hl]                                        ; $71a2: $96
	sbc  e                                           ; $71a3: $9b
	ret  z                                           ; $71a4: $c8

	sbc  h                                           ; $71a5: $9c
	and  a                                           ; $71a6: $a7
	ld   a, e                                        ; $71a7: $7b
	xor  b                                           ; $71a8: $a8
	ld   a, b                                        ; $71a9: $78
	sbc  c                                           ; $71aa: $99
	ld   [hl], a                                     ; $71ab: $77
	xor  e                                           ; $71ac: $ab
	adc  b                                           ; $71ad: $88
	xor  d                                           ; $71ae: $aa
	sub  a                                           ; $71af: $97
	ld   h, [hl]                                     ; $71b0: $66
	ld   h, [hl]                                     ; $71b1: $66
	ld   [hl], a                                     ; $71b2: $77
	sbc  b                                           ; $71b3: $98
	ld   a, b                                        ; $71b4: $78
	sub  a                                           ; $71b5: $97
	ld   h, [hl]                                     ; $71b6: $66
	ld   [hl], a                                     ; $71b7: $77
	ld   d, l                                        ; $71b8: $55
	halt                                             ; $71b9: $76
	ld   [hl-], a                                    ; $71ba: $32
	ld   c, d                                        ; $71bb: $4a
	add  [hl]                                        ; $71bc: $86
	sbc  e                                           ; $71bd: $9b
	and  [hl]                                        ; $71be: $a6
	sbc  c                                           ; $71bf: $99
	ld   [hl], a                                     ; $71c0: $77
	cp   d                                           ; $71c1: $ba
	xor  e                                           ; $71c2: $ab
	sbc  d                                           ; $71c3: $9a
	xor  e                                           ; $71c4: $ab
	sub  a                                           ; $71c5: $97
	sbc  d                                           ; $71c6: $9a
	ld   [hl], a                                     ; $71c7: $77
	xor  c                                           ; $71c8: $a9
	sbc  b                                           ; $71c9: $98
	sbc  c                                           ; $71ca: $99
	sbc  c                                           ; $71cb: $99
	sbc  c                                           ; $71cc: $99
	sbc  d                                           ; $71cd: $9a
	halt                                             ; $71ce: $76
	add  a                                           ; $71cf: $87
	ld   h, a                                        ; $71d0: $67
	adc  b                                           ; $71d1: $88
	adc  b                                           ; $71d2: $88
	ld   a, c                                        ; $71d3: $79
	ld   [hl], h                                     ; $71d4: $74
	sbc  b                                           ; $71d5: $98
	ld   d, a                                        ; $71d6: $57
	add  l                                           ; $71d7: $85
	ld   h, a                                        ; $71d8: $67
	ld   h, [hl]                                     ; $71d9: $66
	ld   b, [hl]                                     ; $71da: $46
	add  l                                           ; $71db: $85
	ld   e, d                                        ; $71dc: $5a
	sub  h                                           ; $71dd: $94
	ld   l, e                                        ; $71de: $6b
	ld   [hl], l                                     ; $71df: $75
	sbc  h                                           ; $71e0: $9c
	sub  a                                           ; $71e1: $97
	cp   h                                           ; $71e2: $bc
	sbc  c                                           ; $71e3: $99
	xor  b                                           ; $71e4: $a8
	ld   a, d                                        ; $71e5: $7a
	sbc  b                                           ; $71e6: $98
	adc  e                                           ; $71e7: $8b
	sub  a                                           ; $71e8: $97
	xor  c                                           ; $71e9: $a9
	adc  c                                           ; $71ea: $89
	adc  c                                           ; $71eb: $89
	xor  c                                           ; $71ec: $a9
	sbc  d                                           ; $71ed: $9a
	sbc  b                                           ; $71ee: $98
	ld   a, c                                        ; $71ef: $79
	sub  a                                           ; $71f0: $97
	adc  c                                           ; $71f1: $89
	ld   d, a                                        ; $71f2: $57
	xor  h                                           ; $71f3: $ac
	ld   h, h                                        ; $71f4: $64
	xor  c                                           ; $71f5: $a9
	halt                                             ; $71f6: $76
	ld   [hl], l                                     ; $71f7: $75
	ld   [hl], l                                     ; $71f8: $75
	ld   h, [hl]                                     ; $71f9: $66
	ld   l, b                                        ; $71fa: $68
	ld   b, [hl]                                     ; $71fb: $46
	ld   h, l                                        ; $71fc: $65
	ld   a, b                                        ; $71fd: $78
	ld   a, b                                        ; $71fe: $78
	sub  a                                           ; $71ff: $97
	add  [hl]                                        ; $7200: $86
	adc  d                                           ; $7201: $8a
	adc  d                                           ; $7202: $8a
	sbc  c                                           ; $7203: $99
	sbc  h                                           ; $7204: $9c
	add  [hl]                                        ; $7205: $86
	xor  e                                           ; $7206: $ab
	sub  h                                           ; $7207: $94
	sbc  d                                           ; $7208: $9a
	sub  a                                           ; $7209: $97
	sbc  d                                           ; $720a: $9a
	adc  c                                           ; $720b: $89
	sbc  d                                           ; $720c: $9a
	ld   a, e                                        ; $720d: $7b
	sub  [hl]                                        ; $720e: $96
	adc  e                                           ; $720f: $8b
	and  [hl]                                        ; $7210: $a6
	xor  c                                           ; $7211: $a9
	sbc  c                                           ; $7212: $99
	sub  [hl]                                        ; $7213: $96
	adc  d                                           ; $7214: $8a
	ld   h, [hl]                                     ; $7215: $66
	ld   a, b                                        ; $7216: $78
	ld   [hl], a                                     ; $7217: $77
	ld   h, a                                        ; $7218: $67
	ld   [hl], a                                     ; $7219: $77
	ld   h, l                                        ; $721a: $65
	halt                                             ; $721b: $76
	ld   h, [hl]                                     ; $721c: $66
	ld   d, a                                        ; $721d: $57
	ld   h, a                                        ; $721e: $67
	ld   h, a                                        ; $721f: $67
	add  [hl]                                        ; $7220: $86
	ld   e, d                                        ; $7221: $5a
	and  l                                           ; $7222: $a5
	adc  d                                           ; $7223: $8a
	adc  c                                           ; $7224: $89
	ld   [hl], a                                     ; $7225: $77
	adc  c                                           ; $7226: $89
	sub  [hl]                                        ; $7227: $96
	xor  l                                           ; $7228: $ad
	add  a                                           ; $7229: $87
	xor  c                                           ; $722a: $a9
	ld   [hl], a                                     ; $722b: $77
	xor  e                                           ; $722c: $ab
	add  a                                           ; $722d: $87
	xor  h                                           ; $722e: $ac
	and  a                                           ; $722f: $a7
	sbc  e                                           ; $7230: $9b
	or   a                                           ; $7231: $b7
	sbc  c                                           ; $7232: $99
	add  a                                           ; $7233: $87
	adc  c                                           ; $7234: $89
	add  [hl]                                        ; $7235: $86
	ld   l, d                                        ; $7236: $6a
	sub  [hl]                                        ; $7237: $96
	adc  b                                           ; $7238: $88
	halt                                             ; $7239: $76
	ld   [hl], a                                     ; $723a: $77
	halt                                             ; $723b: $76
	ld   l, c                                        ; $723c: $69
	ld   [hl], l                                     ; $723d: $75
	ld   a, c                                        ; $723e: $79
	ld   h, [hl]                                     ; $723f: $66
	ld   a, c                                        ; $7240: $79
	sub  a                                           ; $7241: $97
	ld   d, a                                        ; $7242: $57
	add  a                                           ; $7243: $87
	halt                                             ; $7244: $76
	adc  c                                           ; $7245: $89
	adc  b                                           ; $7246: $88
	adc  c                                           ; $7247: $89
	adc  d                                           ; $7248: $8a
	ld   [hl], a                                     ; $7249: $77
	sbc  e                                           ; $724a: $9b
	ld   h, l                                        ; $724b: $65
	cp   d                                           ; $724c: $ba
	ld   a, b                                        ; $724d: $78
	cp   c                                           ; $724e: $b9
	xor  c                                           ; $724f: $a9
	ld   a, d                                        ; $7250: $7a
	or   a                                           ; $7251: $b7
	ld   l, d                                        ; $7252: $6a
	and  [hl]                                        ; $7253: $a6
	sbc  c                                           ; $7254: $99
	and  a                                           ; $7255: $a7
	adc  c                                           ; $7256: $89
	add  [hl]                                        ; $7257: $86
	sbc  d                                           ; $7258: $9a
	ld   h, a                                        ; $7259: $67
	ld   h, [hl]                                     ; $725a: $66
	halt                                             ; $725b: $76
	ld   d, [hl]                                     ; $725c: $56
	ld   h, [hl]                                     ; $725d: $66
	add  a                                           ; $725e: $87
	ld   a, b                                        ; $725f: $78
	ld   [hl], a                                     ; $7260: $77
	add  a                                           ; $7261: $87
	ld   a, b                                        ; $7262: $78
	ld   a, b                                        ; $7263: $78
	xor  c                                           ; $7264: $a9
	adc  b                                           ; $7265: $88
	ld   a, c                                        ; $7266: $79
	add  a                                           ; $7267: $87
	ld   a, e                                        ; $7268: $7b
	and  [hl]                                        ; $7269: $a6
	adc  e                                           ; $726a: $8b
	and  h                                           ; $726b: $a4
	xor  d                                           ; $726c: $aa
	add  l                                           ; $726d: $85
	adc  l                                           ; $726e: $8d
	halt                                             ; $726f: $76
	sbc  h                                           ; $7270: $9c
	ld   e, b                                        ; $7271: $58
	sbc  b                                           ; $7272: $98
	ld   a, b                                        ; $7273: $78
	and  a                                           ; $7274: $a7
	sub  a                                           ; $7275: $97
	ld   [hl], a                                     ; $7276: $77
	sub  [hl]                                        ; $7277: $96
	ld   l, c                                        ; $7278: $69
	and  a                                           ; $7279: $a7
	ld   l, c                                        ; $727a: $69
	halt                                             ; $727b: $76
	sbc  c                                           ; $727c: $99
	ld   c, b                                        ; $727d: $48
	rst  ToBoot                                         ; $727e: $c7
	ld   l, c                                        ; $727f: $69
	or   a                                           ; $7280: $b7
	ld   c, c                                        ; $7281: $49
	sub  [hl]                                        ; $7282: $96
	ld   a, d                                        ; $7283: $7a
	adc  c                                           ; $7284: $89
	and  a                                           ; $7285: $a7
	adc  c                                           ; $7286: $89
	sub  a                                           ; $7287: $97
	ld   a, d                                        ; $7288: $7a
	sub  a                                           ; $7289: $97
	adc  c                                           ; $728a: $89
	ld   [hl], a                                     ; $728b: $77
	sbc  c                                           ; $728c: $99
	ld   h, a                                        ; $728d: $67
	xor  d                                           ; $728e: $aa

Call_0b4_728f:
	sbc  b                                           ; $728f: $98
	sub  a                                           ; $7290: $97
	add  a                                           ; $7291: $87
	ld   l, b                                        ; $7292: $68
	sbc  b                                           ; $7293: $98
	ld   a, c                                        ; $7294: $79
	sub  a                                           ; $7295: $97
	ld   h, a                                        ; $7296: $67
	add  [hl]                                        ; $7297: $86
	sbc  b                                           ; $7298: $98
	add  [hl]                                        ; $7299: $86
	adc  c                                           ; $729a: $89
	ld   h, [hl]                                     ; $729b: $66
	ld   l, b                                        ; $729c: $68
	sbc  c                                           ; $729d: $99
	sbc  d                                           ; $729e: $9a
	sub  [hl]                                        ; $729f: $96
	ld   l, b                                        ; $72a0: $68
	add  a                                           ; $72a1: $87
	adc  c                                           ; $72a2: $89
	sbc  c                                           ; $72a3: $99
	xor  d                                           ; $72a4: $aa
	ld   h, [hl]                                     ; $72a5: $66
	or   a                                           ; $72a6: $b7
	ld   c, c                                        ; $72a7: $49
	ret  z                                           ; $72a8: $c8

	ld   l, c                                        ; $72a9: $69
	xor  c                                           ; $72aa: $a9
	ld   a, c                                        ; $72ab: $79
	sub  a                                           ; $72ac: $97
	ld   a, c                                        ; $72ad: $79
	sub  [hl]                                        ; $72ae: $96
	xor  d                                           ; $72af: $aa
	ld   [hl], a                                     ; $72b0: $77
	or   a                                           ; $72b1: $b7
	ld   l, c                                        ; $72b2: $69
	adc  b                                           ; $72b3: $88
	sbc  d                                           ; $72b4: $9a
	ld   a, c                                        ; $72b5: $79
	halt                                             ; $72b6: $76
	adc  b                                           ; $72b7: $88
	ld   [hl], a                                     ; $72b8: $77
	sub  [hl]                                        ; $72b9: $96
	ld   a, c                                        ; $72ba: $79
	add  l                                           ; $72bb: $85
	ld   a, d                                        ; $72bc: $7a
	ld   [hl], l                                     ; $72bd: $75
	sbc  c                                           ; $72be: $99
	ld   [hl], l                                     ; $72bf: $75
	sbc  e                                           ; $72c0: $9b
	ld   l, b                                        ; $72c1: $68
	sbc  b                                           ; $72c2: $98
	ld   e, d                                        ; $72c3: $5a
	or   a                                           ; $72c4: $b7
	ld   a, c                                        ; $72c5: $79
	and  a                                           ; $72c6: $a7
	adc  b                                           ; $72c7: $88
	sbc  b                                           ; $72c8: $98
	sub  a                                           ; $72c9: $97
	sbc  c                                           ; $72ca: $99
	ld   h, a                                        ; $72cb: $67
	xor  b                                           ; $72cc: $a8
	ld   a, b                                        ; $72cd: $78
	adc  b                                           ; $72ce: $88
	ld   [hl], a                                     ; $72cf: $77
	sbc  b                                           ; $72d0: $98
	ld   [hl], a                                     ; $72d1: $77
	and  a                                           ; $72d2: $a7
	ld   l, b                                        ; $72d3: $68
	sub  a                                           ; $72d4: $97
	ld   l, b                                        ; $72d5: $68
	sbc  b                                           ; $72d6: $98
	ld   h, a                                        ; $72d7: $67
	sbc  b                                           ; $72d8: $98
	ld   [hl], a                                     ; $72d9: $77
	xor  c                                           ; $72da: $a9
	ld   [hl], a                                     ; $72db: $77
	adc  c                                           ; $72dc: $89
	add  a                                           ; $72dd: $87
	adc  e                                           ; $72de: $8b
	and  [hl]                                        ; $72df: $a6
	ld   a, c                                        ; $72e0: $79
	add  a                                           ; $72e1: $87
	adc  b                                           ; $72e2: $88
	sbc  c                                           ; $72e3: $99
	ld   [hl], a                                     ; $72e4: $77
	sbc  c                                           ; $72e5: $99
	ld   [hl], a                                     ; $72e6: $77
	adc  b                                           ; $72e7: $88
	sbc  b                                           ; $72e8: $98
	ld   a, b                                        ; $72e9: $78
	sbc  b                                           ; $72ea: $98
	adc  b                                           ; $72eb: $88
	sbc  b                                           ; $72ec: $98
	adc  b                                           ; $72ed: $88
	add  a                                           ; $72ee: $87
	adc  c                                           ; $72ef: $89
	ld   d, a                                        ; $72f0: $57
	xor  b                                           ; $72f1: $a8
	ld   c, b                                        ; $72f2: $48
	or   a                                           ; $72f3: $b7
	ld   l, d                                        ; $72f4: $6a
	add  a                                           ; $72f5: $87
	sbc  c                                           ; $72f6: $99
	ld   [hl], a                                     ; $72f7: $77
	and  a                                           ; $72f8: $a7
	ld   a, c                                        ; $72f9: $79
	add  a                                           ; $72fa: $87
	ld   [hl], a                                     ; $72fb: $77
	ld   l, b                                        ; $72fc: $68
	adc  b                                           ; $72fd: $88
	ld   a, b                                        ; $72fe: $78
	sub  a                                           ; $72ff: $97
	adc  b                                           ; $7300: $88
	adc  b                                           ; $7301: $88
	xor  c                                           ; $7302: $a9
	ld   a, c                                        ; $7303: $79
	xor  b                                           ; $7304: $a8
	ld   e, b                                        ; $7305: $58
	sbc  b                                           ; $7306: $98
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	add  a                                           ; $7309: $87
	ld   a, c                                        ; $730a: $79
	sub  a                                           ; $730b: $97
	ld   a, d                                        ; $730c: $7a
	and  a                                           ; $730d: $a7
	ld   [hl], a                                     ; $730e: $77
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	add  a                                           ; $7311: $87
	ld   a, b                                        ; $7312: $78
	adc  b                                           ; $7313: $88
	adc  b                                           ; $7314: $88
	sbc  b                                           ; $7315: $98
	ld   a, b                                        ; $7316: $78
	adc  b                                           ; $7317: $88
	ld   a, b                                        ; $7318: $78
	adc  b                                           ; $7319: $88
	ld   a, b                                        ; $731a: $78
	add  a                                           ; $731b: $87
	ld   a, b                                        ; $731c: $78
	adc  b                                           ; $731d: $88
	adc  b                                           ; $731e: $88
	sbc  c                                           ; $731f: $99
	ld   [hl], a                                     ; $7320: $77
	adc  c                                           ; $7321: $89
	ld   a, b                                        ; $7322: $78
	sbc  c                                           ; $7323: $99
	ld   [hl], a                                     ; $7324: $77
	ld   a, b                                        ; $7325: $78
	add  a                                           ; $7326: $87
	adc  c                                           ; $7327: $89
	ld   a, b                                        ; $7328: $78
	ld   [hl], a                                     ; $7329: $77
	ld   [hl], a                                     ; $732a: $77
	adc  c                                           ; $732b: $89
	adc  b                                           ; $732c: $88
	add  a                                           ; $732d: $87
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	add  a                                           ; $7330: $87
	adc  c                                           ; $7331: $89
	add  [hl]                                        ; $7332: $86
	ld   a, b                                        ; $7333: $78
	adc  b                                           ; $7334: $88
	sbc  c                                           ; $7335: $99
	add  a                                           ; $7336: $87
	adc  d                                           ; $7337: $8a
	sub  a                                           ; $7338: $97
	adc  c                                           ; $7339: $89
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	add  a                                           ; $733c: $87
	ld   a, c                                        ; $733d: $79
	sub  a                                           ; $733e: $97
	ld   l, c                                        ; $733f: $69
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	sbc  b                                           ; $7342: $98
	ld   a, b                                        ; $7343: $78
	ld   a, b                                        ; $7344: $78
	add  a                                           ; $7345: $87
	adc  c                                           ; $7346: $89
	adc  c                                           ; $7347: $89
	add  a                                           ; $7348: $87
	ld   [hl], a                                     ; $7349: $77
	xor  c                                           ; $734a: $a9
	ld   a, c                                        ; $734b: $79
	adc  b                                           ; $734c: $88
	ld   a, b                                        ; $734d: $78
	add  a                                           ; $734e: $87
	adc  c                                           ; $734f: $89
	ld   [hl], a                                     ; $7350: $77
	sub  a                                           ; $7351: $97
	adc  b                                           ; $7352: $88
	sbc  b                                           ; $7353: $98
	adc  b                                           ; $7354: $88
	ld   [hl], a                                     ; $7355: $77
	adc  b                                           ; $7356: $88
	add  a                                           ; $7357: $87
	adc  c                                           ; $7358: $89
	add  a                                           ; $7359: $87
	adc  b                                           ; $735a: $88
	adc  c                                           ; $735b: $89
	adc  b                                           ; $735c: $88
	adc  c                                           ; $735d: $89
	ld   [hl], a                                     ; $735e: $77
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	sbc  b                                           ; $7361: $98
	add  a                                           ; $7362: $87
	ld   a, c                                        ; $7363: $79
	adc  b                                           ; $7364: $88
	ld   a, b                                        ; $7365: $78
	add  a                                           ; $7366: $87
	ld   [hl], a                                     ; $7367: $77
	add  a                                           ; $7368: $87
	ld   a, b                                        ; $7369: $78
	sbc  b                                           ; $736a: $98
	sbc  b                                           ; $736b: $98
	sbc  c                                           ; $736c: $99
	ld   a, b                                        ; $736d: $78
	sbc  b                                           ; $736e: $98
	adc  b                                           ; $736f: $88
	sbc  b                                           ; $7370: $98
	adc  b                                           ; $7371: $88
	sbc  b                                           ; $7372: $98
	ld   a, c                                        ; $7373: $79
	sbc  c                                           ; $7374: $99
	sbc  b                                           ; $7375: $98
	adc  b                                           ; $7376: $88
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	sbc  b                                           ; $7379: $98
	ld   [hl], a                                     ; $737a: $77
	sbc  b                                           ; $737b: $98
	ld   [hl], a                                     ; $737c: $77
	adc  b                                           ; $737d: $88
	sbc  b                                           ; $737e: $98
	ld   a, b                                        ; $737f: $78
	sub  a                                           ; $7380: $97
	adc  b                                           ; $7381: $88
	adc  b                                           ; $7382: $88
	adc  b                                           ; $7383: $88
	adc  c                                           ; $7384: $89
	add  a                                           ; $7385: $87
	sbc  b                                           ; $7386: $98
	sbc  c                                           ; $7387: $99
	adc  b                                           ; $7388: $88
	sbc  b                                           ; $7389: $98
	ld   a, b                                        ; $738a: $78
	adc  c                                           ; $738b: $89
	adc  b                                           ; $738c: $88
	adc  c                                           ; $738d: $89
	adc  b                                           ; $738e: $88
	ld   a, b                                        ; $738f: $78
	sbc  b                                           ; $7390: $98
	ld   a, b                                        ; $7391: $78
	adc  c                                           ; $7392: $89
	add  a                                           ; $7393: $87
	ld   a, b                                        ; $7394: $78
	add  a                                           ; $7395: $87
	adc  b                                           ; $7396: $88
	adc  b                                           ; $7397: $88
	adc  b                                           ; $7398: $88
	sbc  c                                           ; $7399: $99
	ld   a, b                                        ; $739a: $78
	sbc  c                                           ; $739b: $99
	adc  b                                           ; $739c: $88
	adc  c                                           ; $739d: $89
	adc  b                                           ; $739e: $88
	adc  c                                           ; $739f: $89
	adc  b                                           ; $73a0: $88
	adc  c                                           ; $73a1: $89
	adc  c                                           ; $73a2: $89
	sbc  b                                           ; $73a3: $98
	ld   a, b                                        ; $73a4: $78
	adc  b                                           ; $73a5: $88
	ld   a, b                                        ; $73a6: $78
	sub  a                                           ; $73a7: $97
	adc  b                                           ; $73a8: $88
	add  a                                           ; $73a9: $87
	ld   a, b                                        ; $73aa: $78
	ld   a, b                                        ; $73ab: $78
	adc  c                                           ; $73ac: $89
	add  a                                           ; $73ad: $87
	adc  b                                           ; $73ae: $88
	sbc  b                                           ; $73af: $98
	adc  c                                           ; $73b0: $89
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	sbc  b                                           ; $73b3: $98
	adc  b                                           ; $73b4: $88
	adc  c                                           ; $73b5: $89
	adc  b                                           ; $73b6: $88
	ld   a, c                                        ; $73b7: $79
	sbc  b                                           ; $73b8: $98
	adc  b                                           ; $73b9: $88
	ld   a, b                                        ; $73ba: $78
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	ld   a, b                                        ; $73bd: $78
	sbc  b                                           ; $73be: $98
	adc  b                                           ; $73bf: $88
	adc  b                                           ; $73c0: $88
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	adc  c                                           ; $73c4: $89
	sbc  b                                           ; $73c5: $98
	adc  c                                           ; $73c6: $89
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
	ld   a, b                                        ; $73d2: $78
	adc  b                                           ; $73d3: $88
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	adc  b                                           ; $73d7: $88
	adc  b                                           ; $73d8: $88
	adc  b                                           ; $73d9: $88
	adc  b                                           ; $73da: $88
	sbc  b                                           ; $73db: $98
	adc  c                                           ; $73dc: $89
	sbc  b                                           ; $73dd: $98
	adc  b                                           ; $73de: $88
	sbc  b                                           ; $73df: $98
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	adc  b                                           ; $73e2: $88
	adc  b                                           ; $73e3: $88
	adc  b                                           ; $73e4: $88
	adc  b                                           ; $73e5: $88
	adc  b                                           ; $73e6: $88
	adc  b                                           ; $73e7: $88
	adc  c                                           ; $73e8: $89
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

Call_0b4_74db:
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

Jump_0b4_7688:
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

Call_0b4_7896:
	adc  b                                           ; $7896: $88

Jump_0b4_7897:
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
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  b                                           ; $78fc: $88
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
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
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  b                                           ; $79e6: $88
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
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
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
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
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
	adc  b                                           ; $7a6e: $88
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

Jump_0b4_7acf:
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

Call_0b4_7b97:
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

Jump_0b4_7c15:
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
	sbc  c                                           ; $7c4a: $99
	sbc  b                                           ; $7c4b: $98
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
	add  a                                           ; $7c58: $87
	ld   a, b                                        ; $7c59: $78
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	adc  b                                           ; $7c5d: $88
	adc  b                                           ; $7c5e: $88
	adc  b                                           ; $7c5f: $88
	adc  b                                           ; $7c60: $88
	adc  c                                           ; $7c61: $89
	sbc  c                                           ; $7c62: $99
	sbc  c                                           ; $7c63: $99
	sbc  c                                           ; $7c64: $99
	sbc  b                                           ; $7c65: $98
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
	ld   [hl], a                                     ; $7c71: $77
	ld   a, b                                        ; $7c72: $78
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
	sbc  c                                           ; $7c85: $99
	sbc  c                                           ; $7c86: $99
	sbc  c                                           ; $7c87: $99
	sbc  c                                           ; $7c88: $99
	sbc  b                                           ; $7c89: $98
	adc  b                                           ; $7c8a: $88
	add  a                                           ; $7c8b: $87
	ld   [hl], a                                     ; $7c8c: $77
	ld   [hl], a                                     ; $7c8d: $77
	ld   h, [hl]                                     ; $7c8e: $66
	ld   h, [hl]                                     ; $7c8f: $66
	ld   h, [hl]                                     ; $7c90: $66
	ld   h, [hl]                                     ; $7c91: $66
	ld   h, [hl]                                     ; $7c92: $66
	ld   [hl], a                                     ; $7c93: $77
	adc  b                                           ; $7c94: $88
	adc  c                                           ; $7c95: $89
	adc  c                                           ; $7c96: $89
	xor  d                                           ; $7c97: $aa
	xor  e                                           ; $7c98: $ab
	cp   d                                           ; $7c99: $ba
	cp   e                                           ; $7c9a: $bb
	cp   e                                           ; $7c9b: $bb
	cp   e                                           ; $7c9c: $bb
	xor  c                                           ; $7c9d: $a9
	sbc  b                                           ; $7c9e: $98
	sbc  b                                           ; $7c9f: $98
	add  a                                           ; $7ca0: $87
	halt                                             ; $7ca1: $76
	ld   h, [hl]                                     ; $7ca2: $66
	ld   d, l                                        ; $7ca3: $55
	ld   d, l                                        ; $7ca4: $55

jr_0b4_7ca5:
	ld   b, l                                        ; $7ca5: $45
	ld   d, h                                        ; $7ca6: $54
	ld   b, l                                        ; $7ca7: $45
	ld   h, [hl]                                     ; $7ca8: $66
	ld   h, a                                        ; $7ca9: $67
	ld   a, b                                        ; $7caa: $78
	adc  b                                           ; $7cab: $88
	sbc  d                                           ; $7cac: $9a
	xor  c                                           ; $7cad: $a9
	xor  d                                           ; $7cae: $aa
	xor  d                                           ; $7caf: $aa
	cp   d                                           ; $7cb0: $ba
	xor  d                                           ; $7cb1: $aa
	xor  e                                           ; $7cb2: $ab
	cp   e                                           ; $7cb3: $bb
	cp   e                                           ; $7cb4: $bb
	cp   d                                           ; $7cb5: $ba
	xor  c                                           ; $7cb6: $a9
	sbc  c                                           ; $7cb7: $99
	adc  b                                           ; $7cb8: $88
	sub  a                                           ; $7cb9: $97
	ld   [hl], a                                     ; $7cba: $77
	ld   [hl], a                                     ; $7cbb: $77
	ld   h, [hl]                                     ; $7cbc: $66
	ld   h, [hl]                                     ; $7cbd: $66
	ld   h, l                                        ; $7cbe: $65
	ld   d, h                                        ; $7cbf: $54
	ld   sp, $1411                                   ; $7cc0: $31 $11 $14
	ld   [hl], h                                     ; $7cc3: $74
	ld   b, c                                        ; $7cc4: $41
	inc  hl                                          ; $7cc5: $23
	ld   a, [hl-]                                    ; $7cc6: $3a
	sbc  $fe                                         ; $7cc7: $de $fe
	db   $ec                                         ; $7cc9: $ec
	sbc  $ff                                         ; $7cca: $de $ff
	cp   $db                                         ; $7ccc: $fe $db
	xor  e                                           ; $7cce: $ab
	xor  d                                           ; $7ccf: $aa
	sbc  b                                           ; $7cd0: $98
	add  a                                           ; $7cd1: $87
	ld   [hl], a                                     ; $7cd2: $77
	halt                                             ; $7cd3: $76
	ld   h, [hl]                                     ; $7cd4: $66
	ld   h, a                                        ; $7cd5: $67
	ld   [hl], a                                     ; $7cd6: $77
	adc  b                                           ; $7cd7: $88
	sbc  c                                           ; $7cd8: $99
	sbc  d                                           ; $7cd9: $9a
	sbc  b                                           ; $7cda: $98
	sbc  c                                           ; $7cdb: $99
	sbc  c                                           ; $7cdc: $99
	sbc  b                                           ; $7cdd: $98
	ld   [hl], l                                     ; $7cde: $75
	ld   sp, $1411                                   ; $7cdf: $31 $11 $14
	add  a                                           ; $7ce2: $87
	ld   [hl], d                                     ; $7ce3: $72
	inc  hl                                          ; $7ce4: $23
	jr   z, jr_0b4_7ca5                              ; $7ce5: $28 $be

	db   $fd                                         ; $7ce7: $fd
	call c, $acaa                                    ; $7ce8: $dc $aa $ac
	call c, $89ba                                    ; $7ceb: $dc $ba $89
	sbc  d                                           ; $7cee: $9a
	xor  d                                           ; $7cef: $aa
	xor  c                                           ; $7cf0: $a9
	sbc  d                                           ; $7cf1: $9a
	sbc  d                                           ; $7cf2: $9a
	xor  c                                           ; $7cf3: $a9
	adc  c                                           ; $7cf4: $89
	sbc  c                                           ; $7cf5: $99
	sbc  b                                           ; $7cf6: $98
	sbc  c                                           ; $7cf7: $99
	adc  c                                           ; $7cf8: $89
	add  a                                           ; $7cf9: $87
	ld   h, l                                        ; $7cfa: $65
	ld   d, h                                        ; $7cfb: $54
	ld   [hl-], a                                    ; $7cfc: $32
	ld   de, $1811                                   ; $7cfd: $11 $11 $18
	rst  $38                                         ; $7d00: $ff
	ei                                               ; $7d01: $fb
	add  [hl]                                        ; $7d02: $86
	ld   c, d                                        ; $7d03: $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d04: $cf
	ld   a, [$48a7]                                  ; $7d05: $fa $a7 $48
	cp   l                                           ; $7d08: $bd
	db   $eb                                         ; $7d09: $eb
	and  a                                           ; $7d0a: $a7
	ld   e, b                                        ; $7d0b: $58
	sbc  h                                           ; $7d0c: $9c
	jp   z, Jump_0b4_7897                            ; $7d0d: $ca $97 $78

	sbc  d                                           ; $7d10: $9a
	jp   z, $8898                                    ; $7d11: $ca $98 $88

	adc  c                                           ; $7d14: $89
	sbc  b                                           ; $7d15: $98
	sbc  c                                           ; $7d16: $99
	ld   a, b                                        ; $7d17: $78
	halt                                             ; $7d18: $76
	ld   d, d                                        ; $7d19: $52
	ld   de, $1111                                   ; $7d1a: $11 $11 $11
	cp   a                                           ; $7d1d: $bf
	rst  $38                                         ; $7d1e: $ff
	rst  $20                                         ; $7d1f: $e7
	ld   d, c                                        ; $7d20: $51
	adc  h                                           ; $7d21: $8c
	rst  $38                                         ; $7d22: $ff
	add  [hl]                                        ; $7d23: $86
	ld   h, h                                        ; $7d24: $64
	sbc  [hl]                                        ; $7d25: $9e
	rst  $38                                         ; $7d26: $ff
	sub  a                                           ; $7d27: $97
	ld   b, e                                        ; $7d28: $43
	xor  h                                           ; $7d29: $ac
	sbc  $a6                                         ; $7d2a: $de $a6
	ld   d, [hl]                                     ; $7d2c: $56
	xor  d                                           ; $7d2d: $aa
	call $8897                                       ; $7d2e: $cd $97 $88
	xor  d                                           ; $7d31: $aa
	sbc  b                                           ; $7d32: $98
	ld   [hl], a                                     ; $7d33: $77
	ld   a, b                                        ; $7d34: $78
	xor  c                                           ; $7d35: $a9
	ld   h, e                                        ; $7d36: $63
	ld   de, $1111                                   ; $7d37: $11 $11 $11
	ccf                                              ; $7d3a: $3f
	rst  $38                                         ; $7d3b: $ff
	push af                                          ; $7d3c: $f5
	ld   d, c                                        ; $7d3d: $51
	dec  sp                                          ; $7d3e: $3b
	rst  JumpTable                                         ; $7d3f: $df
	sub  e                                           ; $7d40: $93
	ld   d, h                                        ; $7d41: $54
	xor  a                                           ; $7d42: $af
	rst  $38                                         ; $7d43: $ff
	and  d                                           ; $7d44: $a2
	ld   de, $ff9f                                   ; $7d45: $11 $9f $ff
	or   l                                           ; $7d48: $b5
	dec  [hl]                                        ; $7d49: $35
	cp   l                                           ; $7d4a: $bd
	call c, Call_0b4_5964                            ; $7d4b: $dc $64 $59
	sbc  $c8                                         ; $7d4e: $de $c8
	ld   d, l                                        ; $7d50: $55
	ld   l, c                                        ; $7d51: $69
	jp   z, $1173                                    ; $7d52: $ca $73 $11

	ld   de, $1f11                                   ; $7d55: $11 $11 $1f
	rst  $38                                         ; $7d58: $ff
	db   $fd                                         ; $7d59: $fd
	ld   de, $cf18                                   ; $7d5a: $11 $18 $cf
	di                                               ; $7d5d: $f3
	ld   d, l                                        ; $7d5e: $55
	ld   a, a                                        ; $7d5f: $7f
	rst  $38                                         ; $7d60: $ff
	and  c                                           ; $7d61: $a1
	ld   de, $ff7f                                   ; $7d62: $11 $7f $ff
	or   e                                           ; $7d65: $b3
	dec  [hl]                                        ; $7d66: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d67: $cf
	bit  0, c                                        ; $7d68: $cb $41
	ld   l, d                                        ; $7d6a: $6a
	rst  $38                                         ; $7d6b: $ff
	or   a                                           ; $7d6c: $b7
	ld   [hl], $9b                                   ; $7d6d: $36 $9b
	reti                                             ; $7d6f: $d9


	ld   b, d                                        ; $7d70: $42
	ld   de, $1111                                   ; $7d71: $11 $11 $11
	ld   de, $ffaf                                   ; $7d74: $11 $af $ff
	pop  af                                          ; $7d77: $f1
	ld   de, $ff5f                                   ; $7d78: $11 $5f $ff
	ld   hl, $ff59                                   ; $7d7b: $21 $59 $ff
	or   $11                                         ; $7d7e: $f6 $11
	dec  hl                                          ; $7d80: $2b
	rst  $38                                         ; $7d81: $ff
	rst  $10                                         ; $7d82: $d7
	inc  d                                           ; $7d83: $14
	xor  a                                           ; $7d84: $af
	ld   sp, hl                                      ; $7d85: $f9
	ld   d, c                                        ; $7d86: $51
	add  hl, de                                      ; $7d87: $19
	rst  $38                                         ; $7d88: $ff
	rst  $30                                         ; $7d89: $f7
	ld   b, d                                        ; $7d8a: $42
	ld   a, h                                        ; $7d8b: $7c
	call c, $2462                                    ; $7d8c: $dc $62 $24
	ld   [hl], l                                     ; $7d8f: $75
	ld   bc, $1111                                   ; $7d90: $01 $11 $11
	rst  $38                                         ; $7d93: $ff
	rst  $38                                         ; $7d94: $ff
	pop  de                                          ; $7d95: $d1
	ld   de, $ff9f                                   ; $7d96: $11 $9f $ff
	inc  de                                          ; $7d99: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d9a: $cf
	rst  $38                                         ; $7d9b: $ff
	add  c                                           ; $7d9c: $81
	ld   de, $ffaf                                   ; $7d9d: $11 $af $ff
	ld   [hl], h                                     ; $7da0: $74
	add  hl, sp                                      ; $7da1: $39
	rst  JumpTable                                         ; $7da2: $df
	or   h                                           ; $7da3: $b4
	inc  [hl]                                        ; $7da4: $34
	adc  a                                           ; $7da5: $8f
	cp   $83                                         ; $7da6: $fe $83
	ld   [hl], $ce                                   ; $7da8: $36 $ce
	and  a                                           ; $7daa: $a7
	ld   [hl-], a                                    ; $7dab: $32
	ld   d, a                                        ; $7dac: $57
	ld   h, c                                        ; $7dad: $61
	ld   de, $1511                                   ; $7dae: $11 $11 $15
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	ld   de, rAUD1ENV                                   ; $7db3: $11 $12 $ff
	di                                               ; $7db6: $f3
	dec  e                                           ; $7db7: $1d
	rst  $38                                         ; $7db8: $ff
	ld   sp, hl                                      ; $7db9: $f9
	ld   de, $ff19                                   ; $7dba: $11 $19 $ff
	rst  $30                                         ; $7dbd: $f7
	inc  [hl]                                        ; $7dbe: $34
	xor  l                                           ; $7dbf: $ad
	ei                                               ; $7dc0: $fb
	ld   [hl-], a                                    ; $7dc1: $32
	ld   e, d                                        ; $7dc2: $5a
	rst  $38                                         ; $7dc3: $ff
	sub  $33                                         ; $7dc4: $d6 $33
	ld   a, h                                        ; $7dc6: $7c
	ld   [$3653], a                                  ; $7dc7: $ea $53 $36
	sub  [hl]                                        ; $7dca: $96
	ld   de, $1111                                   ; $7dcb: $11 $11 $11
	cp   a                                           ; $7dce: $bf
	rst  $38                                         ; $7dcf: $ff
	pop  af                                          ; $7dd0: $f1
	ld   de, $feaf                                   ; $7dd1: $11 $af $fe
	dec  d                                           ; $7dd4: $15
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	ld   d, c                                        ; $7dd7: $51
	inc  d                                           ; $7dd8: $14
	rst  JumpTable                                         ; $7dd9: $df
	ei                                               ; $7dda: $fb
	ld   b, e                                        ; $7ddb: $43
	adc  l                                           ; $7ddc: $8d
	rst  $38                                         ; $7ddd: $ff
	ld   [hl], d                                     ; $7dde: $72
	add  hl, sp                                      ; $7ddf: $39
	rst  $28                                         ; $7de0: $ef
	add  sp, $34                                     ; $7de1: $e8 $34
	ld   a, e                                        ; $7de3: $7b
	db   $db                                         ; $7de4: $db
	ld   h, d                                        ; $7de5: $62
	dec  [hl]                                        ; $7de6: $35
	ld   [hl], a                                     ; $7de7: $77
	ld   sp, $1111                                   ; $7de8: $31 $11 $11
	ld   c, a                                        ; $7deb: $4f
	rst  $38                                         ; $7dec: $ff
	pop  af                                          ; $7ded: $f1
	ld   de, $dc6f                                   ; $7dee: $11 $6f $dc
	ld   de, $ffff                                   ; $7df1: $11 $ff $ff
	ld   b, c                                        ; $7df4: $41
	dec  d                                           ; $7df5: $15
	rst  $38                                         ; $7df6: $ff
	ld   sp, hl                                      ; $7df7: $f9
	inc  h                                           ; $7df8: $24
	xor  a                                           ; $7df9: $af
	cp   $72                                         ; $7dfa: $fe $72
	ld   e, c                                        ; $7dfc: $59
	db   $dd                                         ; $7dfd: $dd
	or   [hl]                                        ; $7dfe: $b6
	ld   [hl], $ad                                   ; $7dff: $36 $ad
	ret  c                                           ; $7e01: $d8

	ld   [hl-], a                                    ; $7e02: $32
	dec  [hl]                                        ; $7e03: $35
	ld   h, h                                        ; $7e04: $64
	ld   de, $1111                                   ; $7e05: $11 $11 $11
	rst  $38                                         ; $7e08: $ff

jr_0b4_7e09:
	rst  $38                                         ; $7e09: $ff
	ld   de, $fe16                                   ; $7e0a: $11 $16 $fe
	or   c                                           ; $7e0d: $b1
	rra                                              ; $7e0e: $1f
	rst  $38                                         ; $7e0f: $ff
	ldh  a, [c]                                      ; $7e10: $f2
	ld   de, $fe8f                                   ; $7e11: $11 $8f $fe
	ld   b, c                                        ; $7e14: $41
	ld   e, l                                        ; $7e15: $5d
	rst  $38                                         ; $7e16: $ff
	or   l                                           ; $7e17: $b5
	jr   z, jr_0b4_7e09                              ; $7e18: $28 $ef

	or   [hl]                                        ; $7e1a: $b6
	ld   d, h                                        ; $7e1b: $54
	sbc  l                                           ; $7e1c: $9d
	jp   c, $3464                                    ; $7e1d: $da $64 $34

	ld   h, e                                        ; $7e20: $63
	ld   de, $1111                                   ; $7e21: $11 $11 $11
	rra                                              ; $7e24: $1f
	rst  $38                                         ; $7e25: $ff
	pop  af                                          ; $7e26: $f1
	ld   de, $a8bf                                   ; $7e27: $11 $bf $a8
	ld   de, $faff                                   ; $7e2a: $11 $ff $fa
	ld   de, $fd1f                                   ; $7e2d: $11 $1f $fd
	ld   h, c                                        ; $7e30: $61
	ld   a, [hl-]                                    ; $7e31: $3a
	rst  $38                                         ; $7e32: $ff
	and  a                                           ; $7e33: $a7
	ld   d, a                                        ; $7e34: $57
	rst  JumpTable                                         ; $7e35: $df
	push bc                                          ; $7e36: $c5
	ld   [hl], $9d                                   ; $7e37: $36 $9d
	reti                                             ; $7e39: $d9


	ld   h, h                                        ; $7e3a: $64
	ld   h, [hl]                                     ; $7e3b: $66
	ld   h, e                                        ; $7e3c: $63
	ld   de, $1111                                   ; $7e3d: $11 $11 $11
	rra                                              ; $7e40: $1f
	rst  $38                                         ; $7e41: $ff
	pop  af                                          ; $7e42: $f1
	inc  de                                          ; $7e43: $13
	adc  a                                           ; $7e44: $8f
	ld   [hl], d                                     ; $7e45: $72
	ld   de, $f6ff                                   ; $7e46: $11 $ff $f6
	ld   de, $f93f                                   ; $7e49: $11 $3f $f9
	ld   de, $ff7f                                   ; $7e4c: $11 $7f $ff
	ld   b, d                                        ; $7e4f: $42
	adc  l                                           ; $7e50: $8d
	cp   $82                                         ; $7e51: $fe $82
	dec  hl                                          ; $7e53: $2b
	call z, Call_0b4_7896                            ; $7e54: $cc $96 $78
	and  [hl]                                        ; $7e57: $a6
	ld   de, $1111                                   ; $7e58: $11 $11 $11
	ld   de, $ff1f                                   ; $7e5b: $11 $1f $ff
	pop  af                                          ; $7e5e: $f1
	ld   a, [de]                                     ; $7e5f: $1a
	rst  $38                                         ; $7e60: $ff
	ld   de, $ff1e                                   ; $7e61: $11 $1e $ff
	pop  bc                                          ; $7e64: $c1
	rla                                              ; $7e65: $17
	rst  $38                                         ; $7e66: $ff
	pop  bc                                          ; $7e67: $c1
	rla                                              ; $7e68: $17
	rst  $38                                         ; $7e69: $ff
	jp   $ff19                                       ; $7e6a: $c3 $19 $ff


	db   $f4                                         ; $7e6d: $f4
	inc  h                                           ; $7e6e: $24
	rst  JumpTable                                         ; $7e6f: $df
	sub  e                                           ; $7e70: $93
	add  hl, sp                                      ; $7e71: $39
	db   $ed                                         ; $7e72: $ed
	add  c                                           ; $7e73: $81
	ld   de, $1111                                   ; $7e74: $11 $11 $11
	ld   de, $ffff                                   ; $7e77: $11 $ff $ff
	ld   de, $f1ff                                   ; $7e7a: $11 $ff $f1
	ld   de, $f8af                                   ; $7e7d: $11 $af $f8
	ld   de, $f6ff                                   ; $7e80: $11 $ff $f6
	ld   de, $f3df                                   ; $7e83: $11 $df $f3
	ld   de, $f8ef                                   ; $7e86: $11 $ef $f8
	rla                                              ; $7e89: $17
	adc  $d3                                         ; $7e8a: $ce $d3
	rla                                              ; $7e8c: $17
	rst  $38                                         ; $7e8d: $ff
	ld   [hl], e                                     ; $7e8e: $73
	inc  de                                          ; $7e8f: $13
	ld   d, c                                        ; $7e90: $51
	ld   de, $1f11                                   ; $7e91: $11 $11 $1f
	ld   sp, hl                                      ; $7e94: $f9
	pop  de                                          ; $7e95: $d1
	adc  a                                           ; $7e96: $8f
	reti                                             ; $7e97: $d9


	ld   de, $fbff                                   ; $7e98: $11 $ff $fb
	ld   de, $d3ef                                   ; $7e9b: $11 $ef $d3
	ld   de, $f5bf                                   ; $7e9e: $11 $bf $f5
	add  hl, de                                      ; $7ea1: $19
	rst  $28                                         ; $7ea2: $ef
	call nc, $fe5a                                   ; $7ea3: $d4 $5a $fe
	ld   h, h                                        ; $7ea6: $64
	ld   e, d                                        ; $7ea7: $5a
	bit  4, e                                        ; $7ea8: $cb $63
	ld   l, b                                        ; $7eaa: $68
	ld   d, c                                        ; $7eab: $51
	ld   de, $1a11                                   ; $7eac: $11 $11 $1a
	rst  $38                                         ; $7eaf: $ff
	xor  h                                           ; $7eb0: $ac
	rra                                              ; $7eb1: $1f
	ei                                               ; $7eb2: $fb
	ld   de, $ffec                                   ; $7eb3: $11 $ec $ff
	ld   [de], a                                     ; $7eb6: $12
	rst  $38                                         ; $7eb7: $ff
	di                                               ; $7eb8: $f3
	dec  d                                           ; $7eb9: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7eba: $cf
	and  h                                           ; $7ebb: $a4
	dec  sp                                          ; $7ebc: $3b
	db   $fd                                         ; $7ebd: $fd
	or   l                                           ; $7ebe: $b5
	ld   l, l                                        ; $7ebf: $6d
	db   $fd                                         ; $7ec0: $fd
	ld   h, [hl]                                     ; $7ec1: $66
	xor  e                                           ; $7ec2: $ab
	add  l                                           ; $7ec3: $85
	ld   b, a                                        ; $7ec4: $47
	sub  [hl]                                        ; $7ec5: $96
	ld   hl, $1111                                   ; $7ec6: $21 $11 $11
	rra                                              ; $7ec9: $1f
	pop  af                                          ; $7eca: $f1
	rst  $20                                         ; $7ecb: $e7
	xor  a                                           ; $7ecc: $af
	db   $fc                                         ; $7ecd: $fc
	inc  de                                          ; $7ece: $13
	db   $fc                                         ; $7ecf: $fc
	pop  de                                          ; $7ed0: $d1
	ld   b, [hl]                                     ; $7ed1: $46
	rst  $38                                         ; $7ed2: $ff
	ld   b, d                                        ; $7ed3: $42
	sbc  a                                           ; $7ed4: $9f
	jp   hl                                          ; $7ed5: $e9


	ld   b, h                                        ; $7ed6: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ed7: $cf
	and  [hl]                                        ; $7ed8: $a6
	ld   l, h                                        ; $7ed9: $6c
	db   $ec                                         ; $7eda: $ec
	or   a                                           ; $7edb: $b7
	sbc  h                                           ; $7edc: $9c
	or   [hl]                                        ; $7edd: $b6
	scf                                              ; $7ede: $37
	xor  b                                           ; $7edf: $a8
	ld   d, d                                        ; $7ee0: $52
	ld   de, $1111                                   ; $7ee1: $11 $11 $11
	rra                                              ; $7ee4: $1f
	pop  hl                                          ; $7ee5: $e1
	db   $eb                                         ; $7ee6: $eb
	rst  $38                                         ; $7ee7: $ff
	add  h                                           ; $7ee8: $84
	rra                                              ; $7ee9: $1f
	rst  ToBoot                                         ; $7eea: $c7
	ld   de, $e7fb                                   ; $7eeb: $11 $fb $e7
	ld   c, l                                        ; $7eee: $4d
	rst  $38                                         ; $7eef: $ff
	ld   d, h                                        ; $7ef0: $54
	cp   h                                           ; $7ef1: $bc
	ret  c                                           ; $7ef2: $d8

	adc  d                                           ; $7ef3: $8a
	adc  $8a                                         ; $7ef4: $ce $8a
	cp   l                                           ; $7ef6: $bd
	ret  z                                           ; $7ef7: $c8

	halt                                             ; $7ef8: $76
	adc  b                                           ; $7ef9: $88
	ld   h, e                                        ; $7efa: $63
	inc  sp                                          ; $7efb: $33
	ld   de, $1411                                   ; $7efc: $11 $11 $14
	db   $f4                                         ; $7eff: $f4
	rra                                              ; $7f00: $1f
	rst  $38                                         ; $7f01: $ff
	cp   e                                           ; $7f02: $bb
	ld   [hl], l                                     ; $7f03: $75
	db   $f4                                         ; $7f04: $f4
	ld   b, c                                        ; $7f05: $41
	ld   l, [hl]                                     ; $7f06: $6e
	ld   l, b                                        ; $7f07: $68
	ld   l, h                                        ; $7f08: $6c
	db   $dd                                         ; $7f09: $dd
	or   [hl]                                        ; $7f0a: $b6
	xor  l                                           ; $7f0b: $ad
	cp   b                                           ; $7f0c: $b8
	ld   a, e                                        ; $7f0d: $7b
	cp   e                                           ; $7f0e: $bb
	xor  b                                           ; $7f0f: $a8
	call z, $aaca                                    ; $7f10: $cc $ca $aa
	sub  a                                           ; $7f13: $97
	ld   h, a                                        ; $7f14: $67
	ld   h, h                                        ; $7f15: $64
	ld   de, $1111                                   ; $7f16: $11 $11 $11
	ld   c, a                                        ; $7f19: $4f
	dec  b                                           ; $7f1a: $05
	sbc  $fb                                         ; $7f1b: $de $fb
	ld   a, [$67df]                                  ; $7f1d: $fa $df $67
	jr   jr_0b4_7f95                                 ; $7f20: $18 $73

	ld   d, l                                        ; $7f22: $55
	cp   h                                           ; $7f23: $bc
	cp   c                                           ; $7f24: $b9
	sbc  [hl]                                        ; $7f25: $9e
	db   $fc                                         ; $7f26: $fc
	xor  c                                           ; $7f27: $a9
	cp   c                                           ; $7f28: $b9
	cp   b                                           ; $7f29: $b8
	sbc  h                                           ; $7f2a: $9c
	cp   d                                           ; $7f2b: $ba
	adc  e                                           ; $7f2c: $8b
	xor  d                                           ; $7f2d: $aa
	ld   [hl], a                                     ; $7f2e: $77
	add  [hl]                                        ; $7f2f: $86
	ld   h, e                                        ; $7f30: $63
	ld   de, $1411                                   ; $7f31: $11 $11 $14
	ld   sp, $ba68                                   ; $7f34: $31 $68 $ba
	sbc  l                                           ; $7f37: $9d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f38: $cf
	db   $eb                                         ; $7f39: $eb
	cp   c                                           ; $7f3a: $b9
	ret  z                                           ; $7f3b: $c8

	ld   [hl], l                                     ; $7f3c: $75
	ld   d, [hl]                                     ; $7f3d: $56
	ld   a, b                                        ; $7f3e: $78
	ld   a, b                                        ; $7f3f: $78
	xor  e                                           ; $7f40: $ab
	cp   e                                           ; $7f41: $bb
	cp   d                                           ; $7f42: $ba
	xor  e                                           ; $7f43: $ab
	xor  e                                           ; $7f44: $ab
	xor  d                                           ; $7f45: $aa
	cp   e                                           ; $7f46: $bb
	cp   d                                           ; $7f47: $ba
	cp   d                                           ; $7f48: $ba
	cp   d                                           ; $7f49: $ba
	xor  b                                           ; $7f4a: $a8
	ld   [hl], l                                     ; $7f4b: $75
	ld   hl, $1111                                   ; $7f4c: $21 $11 $11
	ld   de, $2612                                   ; $7f4f: $11 $12 $26
	sbc  e                                           ; $7f52: $9b
	rst  JumpTable                                         ; $7f53: $df
	rst  $38                                         ; $7f54: $ff
	cp   $ed                                         ; $7f55: $fe $ed
	db   $db                                         ; $7f57: $db
	xor  d                                           ; $7f58: $aa
	sbc  b                                           ; $7f59: $98
	adc  c                                           ; $7f5a: $89
	adc  b                                           ; $7f5b: $88
	sbc  c                                           ; $7f5c: $99
	sbc  c                                           ; $7f5d: $99
	adc  d                                           ; $7f5e: $8a
	cp   e                                           ; $7f5f: $bb
	xor  d                                           ; $7f60: $aa
	cp   d                                           ; $7f61: $ba
	res  5, b                                        ; $7f62: $cb $a8
	add  a                                           ; $7f64: $87
	ld   b, d                                        ; $7f65: $42
	ld   de, $1111                                   ; $7f66: $11 $11 $11
	ld   de, $8a12                                   ; $7f69: $11 $12 $8a
	call $ffff                                       ; $7f6c: $cd $ff $ff
	rst  $38                                         ; $7f6f: $ff
	db   $ed                                         ; $7f70: $ed
	res  5, c                                        ; $7f71: $cb $a9
	adc  b                                           ; $7f73: $88
	ld   [hl], a                                     ; $7f74: $77
	ld   a, b                                        ; $7f75: $78
	ld   a, b                                        ; $7f76: $78
	adc  b                                           ; $7f77: $88
	sbc  d                                           ; $7f78: $9a
	xor  e                                           ; $7f79: $ab
	cp   h                                           ; $7f7a: $bc
	cp   e                                           ; $7f7b: $bb
	xor  d                                           ; $7f7c: $aa
	sbc  b                                           ; $7f7d: $98
	ld   h, h                                        ; $7f7e: $64
	ld   hl, $1111                                   ; $7f7f: $21 $11 $11
	ld   de, $4812                                   ; $7f82: $11 $12 $48
	xor  l                                           ; $7f85: $ad
	rst  $28                                         ; $7f86: $ef
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	cp   $dd                                         ; $7f89: $fe $dd
	jp   z, Jump_0b4_7688                            ; $7f8b: $ca $88 $76

	ld   [hl], a                                     ; $7f8e: $77
	ld   [hl], a                                     ; $7f8f: $77
	ld   a, b                                        ; $7f90: $78
	adc  d                                           ; $7f91: $8a
	sbc  e                                           ; $7f92: $9b
	cp   e                                           ; $7f93: $bb
	cp   e                                           ; $7f94: $bb

jr_0b4_7f95:
	cp   e                                           ; $7f95: $bb
	xor  c                                           ; $7f96: $a9
	add  [hl]                                        ; $7f97: $86
	ld   b, c                                        ; $7f98: $41
	ld   de, $1111                                   ; $7f99: $11 $11 $11
	ld   de, $9a25                                   ; $7f9c: $11 $25 $9a
	rst  JumpTable                                         ; $7f9f: $df
	rst  $38                                         ; $7fa0: $ff
	rst  $38                                         ; $7fa1: $ff
	rst  $38                                         ; $7fa2: $ff
	db   $dd                                         ; $7fa3: $dd
	db   $db                                         ; $7fa4: $db
	xor  b                                           ; $7fa5: $a8
	add  a                                           ; $7fa6: $87
	ld   [hl], a                                     ; $7fa7: $77
	ld   [hl], a                                     ; $7fa8: $77
	ld   h, a                                        ; $7fa9: $67
	ld   a, c                                        ; $7faa: $79
	xor  d                                           ; $7fab: $aa
	xor  h                                           ; $7fac: $ac
	cp   e                                           ; $7fad: $bb
	res  7, c                                        ; $7fae: $cb $b9
	add  a                                           ; $7fb0: $87
	ld   d, e                                        ; $7fb1: $53
	ld   de, $1111                                   ; $7fb2: $11 $11 $11
	ld   de, $7914                                   ; $7fb5: $11 $14 $79
	cp   [hl]                                        ; $7fb8: $be
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	rst  $38                                         ; $7fbb: $ff
	xor  $dc                                         ; $7fbc: $ee $dc
	xor  c                                           ; $7fbe: $a9
	sbc  c                                           ; $7fbf: $99
	adc  b                                           ; $7fc0: $88
	ld   [hl], a                                     ; $7fc1: $77
	ld   [hl], a                                     ; $7fc2: $77
	ld   [hl], a                                     ; $7fc3: $77
	adc  b                                           ; $7fc4: $88
	xor  e                                           ; $7fc5: $ab
	xor  e                                           ; $7fc6: $ab
	call z, $97aa                                    ; $7fc7: $cc $aa $97
	ld   d, d                                        ; $7fca: $52
	ld   de, $1111                                   ; $7fcb: $11 $11 $11
	ld   de, $7814                                   ; $7fce: $11 $14 $78
	cp   l                                           ; $7fd1: $bd
	rst  $38                                         ; $7fd2: $ff
	rst  $38                                         ; $7fd3: $ff
	rst  $38                                         ; $7fd4: $ff
	xor  $dc                                         ; $7fd5: $ee $dc
	cp   d                                           ; $7fd7: $ba
	sbc  b                                           ; $7fd8: $98
	adc  b                                           ; $7fd9: $88
	ld   [hl], a                                     ; $7fda: $77
	ld   [hl], a                                     ; $7fdb: $77
	adc  b                                           ; $7fdc: $88
	sbc  c                                           ; $7fdd: $99
	sbc  d                                           ; $7fde: $9a
	cp   e                                           ; $7fdf: $bb
	cp   d                                           ; $7fe0: $ba
	xor  c                                           ; $7fe1: $a9
	add  [hl]                                        ; $7fe2: $86
	ld   b, d                                        ; $7fe3: $42
	ld   de, $1111                                   ; $7fe4: $11 $11 $11
	ld   de, $8a25                                   ; $7fe7: $11 $25 $8a
	rst  JumpTable                                         ; $7fea: $df
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	xor  $cb                                         ; $7fee: $ee $cb
	cp   d                                           ; $7ff0: $ba
	xor  c                                           ; $7ff1: $a9
	add  a                                           ; $7ff2: $87
	ld   [hl], a                                     ; $7ff3: $77
	ld   [hl], a                                     ; $7ff4: $77
	ld   a, b                                        ; $7ff5: $78
	sbc  b                                           ; $7ff6: $98
	xor  d                                           ; $7ff7: $aa
	cp   e                                           ; $7ff8: $bb
	xor  e                                           ; $7ff9: $ab
	sub  a                                           ; $7ffa: $97
	ld   d, d                                        ; $7ffb: $52
	ld   de, $1111                                   ; $7ffc: $11 $11 $11
	db   $11                                         ; $7fff: $11
