; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e8", ROMX[$4000], BANK[$e8]

	rst  $28                                         ; $4000: $ef
	xor  h                                           ; $4001: $ac
	rst  $38                                         ; $4002: $ff
	sbc  c                                           ; $4003: $99
	ld   sp, hl                                      ; $4004: $f9
	ld   b, a                                        ; $4005: $47
	ret                                              ; $4006: $c9


	ld   b, a                                        ; $4007: $47
	ld   d, c                                        ; $4008: $51
	ld   de, $4c71                                   ; $4009: $11 $71 $4c
	db   $fc                                         ; $400c: $fc
	xor  a                                           ; $400d: $af
	ei                                               ; $400e: $fb
	adc  [hl]                                        ; $400f: $8e
	call nz, $a46a                                   ; $4010: $c4 $6a $a4
	ld   l, b                                        ; $4013: $68
	ld   de, $4217                                   ; $4014: $11 $17 $42
	cp   a                                           ; $4017: $bf
	jp   c, $e8ff                                    ; $4018: $da $ff $e8

	cp   l                                           ; $401b: $bd
	ld   h, l                                        ; $401c: $65
	xor  h                                           ; $401d: $ac
	ld   h, l                                        ; $401e: $65
	add  e                                           ; $401f: $83
	ld   de, $1745                                   ; $4020: $11 $45 $17
	rst  $28                                         ; $4023: $ef
	xor  l                                           ; $4024: $ad
	rst  $38                                         ; $4025: $ff
	adc  c                                           ; $4026: $89
	jp   hl                                          ; $4027: $e9


	ld   c, b                                        ; $4028: $48
	ret                                              ; $4029: $c9


	ld   d, a                                        ; $402a: $57
	ld   d, c                                        ; $402b: $51
	ld   de, $6e62                                   ; $402c: $11 $62 $6e
	db   $fc                                         ; $402f: $fc
	rst  JumpTable                                         ; $4030: $df
	ld   a, [$949d]                                  ; $4031: $fa $9d $94
	ld   a, h                                        ; $4034: $7c
	and  l                                           ; $4035: $a5
	add  [hl]                                        ; $4036: $86
	ld   de, $3416                                   ; $4037: $11 $16 $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $403a: $cf
	db   $db                                         ; $403b: $db
	rst  $38                                         ; $403c: $ff
	ret  z                                           ; $403d: $c8

	jp   c, $ba57                                    ; $403e: $da $57 $ba

	ld   h, a                                        ; $4041: $67
	ld   [hl], c                                     ; $4042: $71
	ld   de, $3b53                                   ; $4043: $11 $53 $3b
	db   $ed                                         ; $4046: $ed
	xor  a                                           ; $4047: $af
	db   $fd                                         ; $4048: $fd
	sbc  h                                           ; $4049: $9c
	add  $6b                                         ; $404a: $c6 $6b
	or   [hl]                                        ; $404c: $b6
	ld   a, b                                        ; $404d: $78
	ld   hl, $4213                                   ; $404e: $21 $13 $42
	sbc  l                                           ; $4051: $9d
	ei                                               ; $4052: $fb
	rst  $38                                         ; $4053: $ff
	ld   [$86ad], a                                  ; $4054: $ea $ad $86
	sbc  e                                           ; $4057: $9b
	add  [hl]                                        ; $4058: $86
	add  h                                           ; $4059: $84
	ld   de, $2715                                   ; $405a: $11 $15 $27
	adc  $cd                                         ; $405d: $ce $cd
	rst  $38                                         ; $405f: $ff
	xor  d                                           ; $4060: $aa
	ret                                              ; $4061: $c9


	ld   e, c                                        ; $4062: $59
	cp   c                                           ; $4063: $b9
	ld   a, b                                        ; $4064: $78
	ld   h, c                                        ; $4065: $61
	ld   de, $5b52                                   ; $4066: $11 $52 $5b
	db   $ed                                         ; $4069: $ed
	cp   a                                           ; $406a: $bf
	ei                                               ; $406b: $fb
	xor  h                                           ; $406c: $ac
	and  [hl]                                        ; $406d: $a6
	adc  e                                           ; $406e: $8b
	and  a                                           ; $406f: $a7
	add  [hl]                                        ; $4070: $86
	ld   de, $3414                                   ; $4071: $11 $14 $34
	xor  l                                           ; $4074: $ad
	call c, $e9ff                                    ; $4075: $dc $ff $e9
	cp   h                                           ; $4078: $bc
	ld   [hl], a                                     ; $4079: $77
	xor  e                                           ; $407a: $ab
	ld   [hl], a                                     ; $407b: $77
	ld   [hl], d                                     ; $407c: $72
	ld   de, $3933                                   ; $407d: $11 $33 $39
	call $fecf                                       ; $4080: $cd $cf $fe
	xor  e                                           ; $4083: $ab
	or   a                                           ; $4084: $b7
	ld   a, c                                        ; $4085: $79
	xor  b                                           ; $4086: $a8
	adc  b                                           ; $4087: $88
	ld   sp, $4311                                   ; $4088: $31 $11 $43
	ld   a, e                                        ; $408b: $7b
	db   $ec                                         ; $408c: $ec
	rst  $28                                         ; $408d: $ef
	ld   a, [$96ac]                                  ; $408e: $fa $ac $96
	adc  e                                           ; $4091: $8b
	sub  a                                           ; $4092: $97
	sub  h                                           ; $4093: $94
	ld   de, $1714                                   ; $4094: $11 $14 $17
	cp   h                                           ; $4097: $bc
	db   $ed                                         ; $4098: $ed
	rst  $38                                         ; $4099: $ff
	res  5, c                                        ; $409a: $cb $a9
	ld   a, c                                        ; $409c: $79
	xor  c                                           ; $409d: $a9
	add  a                                           ; $409e: $87
	ld   d, c                                        ; $409f: $51
	ld   de, $5b32                                   ; $40a0: $11 $32 $5b
	call z, $fcdf                                    ; $40a3: $cc $df $fc
	xor  h                                           ; $40a6: $ac
	and  a                                           ; $40a7: $a7
	sbc  d                                           ; $40a8: $9a
	and  a                                           ; $40a9: $a7
	add  [hl]                                        ; $40aa: $86
	ld   de, $2413                                   ; $40ab: $11 $13 $24
	xor  h                                           ; $40ae: $ac
	call z, $caff                                    ; $40af: $cc $ff $ca
	cp   e                                           ; $40b2: $bb
	ld   a, b                                        ; $40b3: $78
	xor  d                                           ; $40b4: $aa
	ld   a, b                                        ; $40b5: $78
	ld   [hl], d                                     ; $40b6: $72
	ld   de, $3912                                   ; $40b7: $11 $12 $39
	xor  h                                           ; $40ba: $ac
	sbc  $fd                                         ; $40bb: $de $fd
	res  7, c                                        ; $40bd: $cb $b9
	adc  d                                           ; $40bf: $8a
	xor  c                                           ; $40c0: $a9
	add  a                                           ; $40c1: $87
	ld   sp, $3211                                   ; $40c2: $31 $11 $32
	adc  e                                           ; $40c5: $8b
	cp   h                                           ; $40c6: $bc
	rst  $28                                         ; $40c7: $ef
	db   $eb                                         ; $40c8: $eb
	res  3, c                                        ; $40c9: $cb $99
	xor  d                                           ; $40cb: $aa
	adc  c                                           ; $40cc: $89
	add  e                                           ; $40cd: $83
	ld   de, $2612                                   ; $40ce: $11 $12 $26
	sbc  h                                           ; $40d1: $9c
	call z, $cbff                                    ; $40d2: $cc $ff $cb
	cp   d                                           ; $40d5: $ba
	adc  d                                           ; $40d6: $8a
	xor  d                                           ; $40d7: $aa
	adc  b                                           ; $40d8: $88
	ld   d, c                                        ; $40d9: $51
	ld   de, $5931                                   ; $40da: $11 $31 $59
	cp   h                                           ; $40dd: $bc
	cp   a                                           ; $40de: $bf
	ei                                               ; $40df: $fb
	cp   e                                           ; $40e0: $bb
	xor  b                                           ; $40e1: $a8
	xor  e                                           ; $40e2: $ab
	sbc  c                                           ; $40e3: $99
	sub  [hl]                                        ; $40e4: $96
	ld   hl, $2512                                   ; $40e5: $21 $12 $25
	sbc  d                                           ; $40e8: $9a
	call c, $b8be                                    ; $40e9: $dc $be $b8
	xor  e                                           ; $40ec: $ab
	sbc  c                                           ; $40ed: $99
	cp   h                                           ; $40ee: $bc
	xor  c                                           ; $40ef: $a9
	add  [hl]                                        ; $40f0: $86
	ld   de, $3713                                   ; $40f1: $11 $13 $37
	xor  e                                           ; $40f4: $ab
	set  3, e                                        ; $40f5: $cb $db
	sbc  c                                           ; $40f7: $99
	sbc  b                                           ; $40f8: $98
	adc  d                                           ; $40f9: $8a
	res  5, d                                        ; $40fa: $cb $aa
	ld   h, e                                        ; $40fc: $63
	ld   de, $6a33                                   ; $40fd: $11 $33 $6a
	xor  h                                           ; $4100: $ac
	call $88b8                                       ; $4101: $cd $b8 $88
	add  a                                           ; $4104: $87
	xor  h                                           ; $4105: $ac
	xor  c                                           ; $4106: $a9
	and  a                                           ; $4107: $a7
	ld   sp, $3613                                   ; $4108: $31 $13 $36
	xor  c                                           ; $410b: $a9
	call z, $89dc                                    ; $410c: $cc $dc $89
	adc  c                                           ; $410f: $89
	ld   a, c                                        ; $4110: $79
	ret                                              ; $4111: $c9


	xor  d                                           ; $4112: $aa
	sub  h                                           ; $4113: $94
	ld   hl, $5923                                   ; $4114: $21 $23 $59
	sbc  e                                           ; $4117: $9b
	cp   e                                           ; $4118: $bb
	jp   z, $8898                                    ; $4119: $ca $98 $88

	adc  d                                           ; $411c: $8a
	cp   d                                           ; $411d: $ba
	sbc  c                                           ; $411e: $99
	ld   h, e                                        ; $411f: $63
	inc  de                                          ; $4120: $13
	ld   b, h                                        ; $4121: $44
	adc  d                                           ; $4122: $8a
	xor  e                                           ; $4123: $ab
	call $98a8                                       ; $4124: $cd $a8 $98
	ld   [hl], a                                     ; $4127: $77
	jp   z, $a69a                                    ; $4128: $ca $9a $a6

	ld   [hl-], a                                    ; $412b: $32
	inc  hl                                          ; $412c: $23
	ld   b, a                                        ; $412d: $47
	sbc  d                                           ; $412e: $9a
	cp   e                                           ; $412f: $bb
	cp   e                                           ; $4130: $bb
	sub  a                                           ; $4131: $97
	add  a                                           ; $4132: $87
	ld   a, c                                        ; $4133: $79
	cp   c                                           ; $4134: $b9
	xor  d                                           ; $4135: $aa
	ld   [hl], h                                     ; $4136: $74
	ld   [hl+], a                                    ; $4137: $22
	ld   b, h                                        ; $4138: $44
	ld   a, d                                        ; $4139: $7a
	xor  d                                           ; $413a: $aa
	call z, $88b9                                    ; $413b: $cc $b9 $88
	ld   [hl], a                                     ; $413e: $77
	xor  d                                           ; $413f: $aa
	sbc  c                                           ; $4140: $99
	cp   b                                           ; $4141: $b8
	ld   d, e                                        ; $4142: $53
	inc  h                                           ; $4143: $24
	ld   b, [hl]                                     ; $4144: $46
	sbc  d                                           ; $4145: $9a
	cp   d                                           ; $4146: $ba
	cp   e                                           ; $4147: $bb
	sbc  b                                           ; $4148: $98
	adc  b                                           ; $4149: $88
	ld   l, c                                        ; $414a: $69
	xor  c                                           ; $414b: $a9
	xor  d                                           ; $414c: $aa
	sub  [hl]                                        ; $414d: $96
	ld   b, d                                        ; $414e: $42
	ld   b, l                                        ; $414f: $45
	ld   e, b                                        ; $4150: $58
	adc  e                                           ; $4151: $8b
	xor  e                                           ; $4152: $ab
	ret                                              ; $4153: $c9


	add  a                                           ; $4154: $87
	add  a                                           ; $4155: $87
	ld   a, d                                        ; $4156: $7a
	xor  d                                           ; $4157: $aa
	sbc  c                                           ; $4158: $99
	ld   h, h                                        ; $4159: $64
	inc  [hl]                                        ; $415a: $34
	ld   d, l                                        ; $415b: $55
	sbc  c                                           ; $415c: $99
	sbc  d                                           ; $415d: $9a
	xor  e                                           ; $415e: $ab
	sbc  b                                           ; $415f: $98
	adc  c                                           ; $4160: $89
	halt                                             ; $4161: $76
	xor  d                                           ; $4162: $aa
	sbc  d                                           ; $4163: $9a
	xor  b                                           ; $4164: $a8
	ld   d, h                                        ; $4165: $54
	ld   b, l                                        ; $4166: $45
	ld   e, b                                        ; $4167: $58
	adc  b                                           ; $4168: $88
	sbc  d                                           ; $4169: $9a
	cp   c                                           ; $416a: $b9
	sbc  b                                           ; $416b: $98
	ld   [hl], a                                     ; $416c: $77
	ld   a, c                                        ; $416d: $79
	xor  d                                           ; $416e: $aa
	xor  d                                           ; $416f: $aa
	add  [hl]                                        ; $4170: $86
	ld   d, h                                        ; $4171: $54
	ld   h, [hl]                                     ; $4172: $66
	ld   a, b                                        ; $4173: $78
	sbc  c                                           ; $4174: $99
	adc  c                                           ; $4175: $89
	sbc  c                                           ; $4176: $99
	ld   [hl], a                                     ; $4177: $77
	add  a                                           ; $4178: $87
	adc  d                                           ; $4179: $8a
	xor  c                                           ; $417a: $a9
	xor  c                                           ; $417b: $a9
	halt                                             ; $417c: $76
	ld   d, [hl]                                     ; $417d: $56
	ld   h, [hl]                                     ; $417e: $66
	ld   a, c                                        ; $417f: $79
	adc  c                                           ; $4180: $89
	adc  c                                           ; $4181: $89
	add  a                                           ; $4182: $87
	ld   a, b                                        ; $4183: $78
	ld   [hl], a                                     ; $4184: $77
	sbc  d                                           ; $4185: $9a
	sbc  d                                           ; $4186: $9a
	cp   d                                           ; $4187: $ba
	ld   [hl], a                                     ; $4188: $77
	ld   [hl], a                                     ; $4189: $77
	ld   [hl], a                                     ; $418a: $77
	ld   [hl], a                                     ; $418b: $77
	add  a                                           ; $418c: $87
	adc  b                                           ; $418d: $88
	ld   [hl], a                                     ; $418e: $77
	ld   a, b                                        ; $418f: $78
	adc  b                                           ; $4190: $88
	sbc  c                                           ; $4191: $99
	xor  d                                           ; $4192: $aa
	xor  c                                           ; $4193: $a9
	add  a                                           ; $4194: $87
	ld   a, b                                        ; $4195: $78
	ld   [hl], a                                     ; $4196: $77
	ld   [hl], a                                     ; $4197: $77
	ld   [hl], a                                     ; $4198: $77
	ld   [hl], a                                     ; $4199: $77
	ld   h, [hl]                                     ; $419a: $66
	ld   a, b                                        ; $419b: $78
	adc  c                                           ; $419c: $89
	sbc  d                                           ; $419d: $9a
	sbc  d                                           ; $419e: $9a
	xor  c                                           ; $419f: $a9
	sbc  c                                           ; $41a0: $99
	sbc  b                                           ; $41a1: $98
	ld   [hl], a                                     ; $41a2: $77
	ld   [hl], a                                     ; $41a3: $77
	ld   h, [hl]                                     ; $41a4: $66
	ld   h, [hl]                                     ; $41a5: $66
	ld   h, [hl]                                     ; $41a6: $66
	ld   a, c                                        ; $41a7: $79
	adc  c                                           ; $41a8: $89
	xor  d                                           ; $41a9: $aa
	xor  d                                           ; $41aa: $aa
	xor  d                                           ; $41ab: $aa
	xor  b                                           ; $41ac: $a8
	sub  a                                           ; $41ad: $97
	halt                                             ; $41ae: $76
	ld   h, [hl]                                     ; $41af: $66
	ld   d, l                                        ; $41b0: $55
	ld   d, l                                        ; $41b1: $55
	ld   h, a                                        ; $41b2: $67
	adc  b                                           ; $41b3: $88
	sbc  d                                           ; $41b4: $9a
	xor  e                                           ; $41b5: $ab
	cp   e                                           ; $41b6: $bb
	cp   d                                           ; $41b7: $ba
	sbc  b                                           ; $41b8: $98
	add  a                                           ; $41b9: $87
	halt                                             ; $41ba: $76
	ld   h, l                                        ; $41bb: $65
	ld   d, l                                        ; $41bc: $55
	ld   d, [hl]                                     ; $41bd: $56
	ld   h, a                                        ; $41be: $67
	sbc  c                                           ; $41bf: $99
	sbc  d                                           ; $41c0: $9a
	cp   d                                           ; $41c1: $ba
	xor  d                                           ; $41c2: $aa
	xor  d                                           ; $41c3: $aa
	adc  b                                           ; $41c4: $88
	ld   [hl], a                                     ; $41c5: $77
	ld   h, [hl]                                     ; $41c6: $66
	ld   h, l                                        ; $41c7: $65
	ld   d, l                                        ; $41c8: $55
	ld   h, [hl]                                     ; $41c9: $66
	ld   a, b                                        ; $41ca: $78
	sbc  d                                           ; $41cb: $9a
	xor  d                                           ; $41cc: $aa
	cp   d                                           ; $41cd: $ba
	cp   d                                           ; $41ce: $ba
	sbc  c                                           ; $41cf: $99
	add  a                                           ; $41d0: $87
	halt                                             ; $41d1: $76
	ld   h, [hl]                                     ; $41d2: $66
	ld   d, l                                        ; $41d3: $55
	ld   d, [hl]                                     ; $41d4: $56
	ld   h, a                                        ; $41d5: $67
	adc  b                                           ; $41d6: $88
	sbc  c                                           ; $41d7: $99
	xor  d                                           ; $41d8: $aa
	cp   e                                           ; $41d9: $bb
	cp   d                                           ; $41da: $ba
	sbc  c                                           ; $41db: $99
	add  a                                           ; $41dc: $87
	ld   h, [hl]                                     ; $41dd: $66
	ld   h, l                                        ; $41de: $65
	ld   d, l                                        ; $41df: $55
	ld   d, [hl]                                     ; $41e0: $56
	ld   a, b                                        ; $41e1: $78
	adc  c                                           ; $41e2: $89
	sbc  d                                           ; $41e3: $9a
	cp   d                                           ; $41e4: $ba
	xor  d                                           ; $41e5: $aa
	xor  d                                           ; $41e6: $aa
	adc  b                                           ; $41e7: $88
	halt                                             ; $41e8: $76
	ld   h, l                                        ; $41e9: $65
	ld   d, l                                        ; $41ea: $55
	ld   d, [hl]                                     ; $41eb: $56
	ld   h, a                                        ; $41ec: $67
	adc  b                                           ; $41ed: $88
	sbc  c                                           ; $41ee: $99
	xor  d                                           ; $41ef: $aa
	cp   e                                           ; $41f0: $bb
	xor  d                                           ; $41f1: $aa
	xor  c                                           ; $41f2: $a9
	add  a                                           ; $41f3: $87
	ld   h, [hl]                                     ; $41f4: $66
	ld   h, [hl]                                     ; $41f5: $66
	ld   d, l                                        ; $41f6: $55
	ld   h, [hl]                                     ; $41f7: $66
	ld   a, b                                        ; $41f8: $78
	adc  c                                           ; $41f9: $89
	sbc  d                                           ; $41fa: $9a
	xor  e                                           ; $41fb: $ab
	xor  d                                           ; $41fc: $aa
	xor  d                                           ; $41fd: $aa
	sub  a                                           ; $41fe: $97
	halt                                             ; $41ff: $76
	ld   h, [hl]                                     ; $4200: $66
	ld   h, [hl]                                     ; $4201: $66
	ld   d, [hl]                                     ; $4202: $56
	ld   h, a                                        ; $4203: $67
	ld   a, c                                        ; $4204: $79
	sbc  c                                           ; $4205: $99
	xor  e                                           ; $4206: $ab
	xor  e                                           ; $4207: $ab
	xor  e                                           ; $4208: $ab
	xor  c                                           ; $4209: $a9
	ld   [hl], a                                     ; $420a: $77
	ld   h, [hl]                                     ; $420b: $66
	ld   h, [hl]                                     ; $420c: $66
	ld   h, [hl]                                     ; $420d: $66
	ld   h, [hl]                                     ; $420e: $66
	ld   [hl], a                                     ; $420f: $77
	sbc  c                                           ; $4210: $99
	sbc  d                                           ; $4211: $9a
	cp   e                                           ; $4212: $bb
	xor  d                                           ; $4213: $aa
	xor  d                                           ; $4214: $aa
	sub  a                                           ; $4215: $97
	ld   [hl], a                                     ; $4216: $77
	ld   h, [hl]                                     ; $4217: $66

Call_0e8_4218:
	ld   h, [hl]                                     ; $4218: $66
	ld   h, [hl]                                     ; $4219: $66
	ld   h, a                                        ; $421a: $67
	adc  c                                           ; $421b: $89
	sbc  c                                           ; $421c: $99
	xor  e                                           ; $421d: $ab
	cp   d                                           ; $421e: $ba
	xor  d                                           ; $421f: $aa
	xor  c                                           ; $4220: $a9
	ld   [hl], a                                     ; $4221: $77
	ld   h, [hl]                                     ; $4222: $66
	ld   h, [hl]                                     ; $4223: $66
	ld   h, [hl]                                     ; $4224: $66
	ld   h, [hl]                                     ; $4225: $66
	ld   [hl], a                                     ; $4226: $77
	sbc  c                                           ; $4227: $99
	sbc  d                                           ; $4228: $9a
	xor  e                                           ; $4229: $ab
	cp   d                                           ; $422a: $ba
	xor  d                                           ; $422b: $aa
	sub  a                                           ; $422c: $97
	ld   [hl], a                                     ; $422d: $77
	ld   h, [hl]                                     ; $422e: $66
	ld   h, [hl]                                     ; $422f: $66
	ld   h, [hl]                                     ; $4230: $66
	ld   h, a                                        ; $4231: $67
	adc  b                                           ; $4232: $88
	sbc  c                                           ; $4233: $99
	xor  e                                           ; $4234: $ab
	cp   e                                           ; $4235: $bb
	cp   d                                           ; $4236: $ba
	xor  b                                           ; $4237: $a8
	ld   [hl], a                                     ; $4238: $77
	ld   h, [hl]                                     ; $4239: $66
	ld   h, [hl]                                     ; $423a: $66
	ld   h, [hl]                                     ; $423b: $66
	ld   h, [hl]                                     ; $423c: $66
	ld   a, b                                        ; $423d: $78
	adc  c                                           ; $423e: $89
	sbc  d                                           ; $423f: $9a
	xor  e                                           ; $4240: $ab
	cp   e                                           ; $4241: $bb
	xor  c                                           ; $4242: $a9
	add  a                                           ; $4243: $87
	halt                                             ; $4244: $76
	ld   h, [hl]                                     ; $4245: $66
	ld   h, [hl]                                     ; $4246: $66
	ld   h, [hl]                                     ; $4247: $66
	ld   h, a                                        ; $4248: $67
	adc  b                                           ; $4249: $88
	sbc  c                                           ; $424a: $99
	xor  d                                           ; $424b: $aa
	cp   d                                           ; $424c: $ba
	cp   d                                           ; $424d: $ba
	sub  a                                           ; $424e: $97
	ld   [hl], a                                     ; $424f: $77
	ld   h, [hl]                                     ; $4250: $66
	ld   h, [hl]                                     ; $4251: $66
	ld   h, [hl]                                     ; $4252: $66
	ld   h, a                                        ; $4253: $67
	ld   a, b                                        ; $4254: $78
	adc  c                                           ; $4255: $89
	sbc  d                                           ; $4256: $9a
	xor  e                                           ; $4257: $ab
	xor  e                                           ; $4258: $ab
	sbc  b                                           ; $4259: $98
	ld   [hl], a                                     ; $425a: $77
	halt                                             ; $425b: $76
	ld   h, [hl]                                     ; $425c: $66
	ld   h, [hl]                                     ; $425d: $66
	ld   h, [hl]                                     ; $425e: $66
	ld   [hl], a                                     ; $425f: $77
	adc  b                                           ; $4260: $88
	sbc  c                                           ; $4261: $99
	xor  d                                           ; $4262: $aa
	xor  e                                           ; $4263: $ab
	xor  d                                           ; $4264: $aa
	sub  a                                           ; $4265: $97
	halt                                             ; $4266: $76
	ld   h, [hl]                                     ; $4267: $66
	ld   h, [hl]                                     ; $4268: $66
	ld   h, [hl]                                     ; $4269: $66
	ld   h, a                                        ; $426a: $67
	ld   a, b                                        ; $426b: $78
	adc  c                                           ; $426c: $89
	sbc  e                                           ; $426d: $9b
	xor  d                                           ; $426e: $aa
	xor  d                                           ; $426f: $aa
	sbc  b                                           ; $4270: $98
	ld   [hl], a                                     ; $4271: $77
	ld   h, [hl]                                     ; $4272: $66
	ld   h, [hl]                                     ; $4273: $66
	ld   h, [hl]                                     ; $4274: $66
	ld   h, [hl]                                     ; $4275: $66
	ld   a, b                                        ; $4276: $78
	sbc  b                                           ; $4277: $98
	xor  d                                           ; $4278: $aa
	cp   d                                           ; $4279: $ba
	xor  e                                           ; $427a: $ab
	xor  c                                           ; $427b: $a9
	add  a                                           ; $427c: $87
	halt                                             ; $427d: $76
	ld   h, [hl]                                     ; $427e: $66
	ld   h, [hl]                                     ; $427f: $66
	ld   h, [hl]                                     ; $4280: $66
	ld   h, a                                        ; $4281: $67
	adc  c                                           ; $4282: $89
	adc  d                                           ; $4283: $8a
	sbc  e                                           ; $4284: $9b
	xor  e                                           ; $4285: $ab
	xor  c                                           ; $4286: $a9
	add  a                                           ; $4287: $87
	ld   [hl], a                                     ; $4288: $77
	ld   h, [hl]                                     ; $4289: $66
	ld   h, [hl]                                     ; $428a: $66
	ld   h, [hl]                                     ; $428b: $66
	ld   h, a                                        ; $428c: $67
	ld   a, b                                        ; $428d: $78
	adc  c                                           ; $428e: $89
	sbc  d                                           ; $428f: $9a
	xor  d                                           ; $4290: $aa
	cp   d                                           ; $4291: $ba
	sbc  b                                           ; $4292: $98
	ld   [hl], a                                     ; $4293: $77
	ld   h, [hl]                                     ; $4294: $66
	ld   d, [hl]                                     ; $4295: $56
	ld   h, [hl]                                     ; $4296: $66
	ld   h, [hl]                                     ; $4297: $66
	ld   a, b                                        ; $4298: $78
	sbc  b                                           ; $4299: $98
	sbc  c                                           ; $429a: $99
	xor  d                                           ; $429b: $aa
	cp   d                                           ; $429c: $ba
	sbc  c                                           ; $429d: $99
	ld   [hl], a                                     ; $429e: $77
	halt                                             ; $429f: $76
	ld   h, l                                        ; $42a0: $65
	ld   h, [hl]                                     ; $42a1: $66
	ld   h, [hl]                                     ; $42a2: $66
	ld   [hl], a                                     ; $42a3: $77
	adc  c                                           ; $42a4: $89
	adc  d                                           ; $42a5: $8a
	xor  e                                           ; $42a6: $ab
	xor  e                                           ; $42a7: $ab
	xor  d                                           ; $42a8: $aa
	sub  a                                           ; $42a9: $97
	ld   [hl], a                                     ; $42aa: $77
	ld   h, [hl]                                     ; $42ab: $66
	ld   h, [hl]                                     ; $42ac: $66
	ld   h, [hl]                                     ; $42ad: $66
	ld   h, a                                        ; $42ae: $67
	ld   a, b                                        ; $42af: $78
	adc  c                                           ; $42b0: $89
	xor  d                                           ; $42b1: $aa
	cp   e                                           ; $42b2: $bb
	xor  d                                           ; $42b3: $aa
	sbc  b                                           ; $42b4: $98
	ld   [hl], a                                     ; $42b5: $77
	ld   h, [hl]                                     ; $42b6: $66
	ld   h, [hl]                                     ; $42b7: $66
	ld   h, [hl]                                     ; $42b8: $66
	ld   h, a                                        ; $42b9: $67
	ld   a, b                                        ; $42ba: $78
	adc  c                                           ; $42bb: $89
	sbc  c                                           ; $42bc: $99
	xor  d                                           ; $42bd: $aa
	cp   d                                           ; $42be: $ba
	xor  c                                           ; $42bf: $a9
	ld   [hl], a                                     ; $42c0: $77
	halt                                             ; $42c1: $76
	ld   h, l                                        ; $42c2: $65
	ld   h, [hl]                                     ; $42c3: $66
	ld   h, [hl]                                     ; $42c4: $66
	ld   [hl], a                                     ; $42c5: $77
	sbc  b                                           ; $42c6: $98
	sbc  d                                           ; $42c7: $9a
	xor  d                                           ; $42c8: $aa
	xor  d                                           ; $42c9: $aa
	sbc  c                                           ; $42ca: $99
	add  a                                           ; $42cb: $87
	ld   [hl], a                                     ; $42cc: $77
	ld   h, l                                        ; $42cd: $65
	ld   h, [hl]                                     ; $42ce: $66
	ld   h, a                                        ; $42cf: $67
	ld   [hl], a                                     ; $42d0: $77
	adc  c                                           ; $42d1: $89
	sbc  c                                           ; $42d2: $99
	sbc  d                                           ; $42d3: $9a
	xor  e                                           ; $42d4: $ab
	xor  d                                           ; $42d5: $aa
	sub  a                                           ; $42d6: $97
	ld   [hl], a                                     ; $42d7: $77
	ld   h, [hl]                                     ; $42d8: $66
	ld   d, [hl]                                     ; $42d9: $56
	ld   h, a                                        ; $42da: $67
	ld   [hl], a                                     ; $42db: $77
	ld   a, c                                        ; $42dc: $79
	sbc  c                                           ; $42dd: $99
	xor  d                                           ; $42de: $aa
	xor  d                                           ; $42df: $aa
	xor  c                                           ; $42e0: $a9
	sbc  b                                           ; $42e1: $98
	ld   [hl], a                                     ; $42e2: $77
	halt                                             ; $42e3: $76
	ld   h, [hl]                                     ; $42e4: $66
	ld   h, a                                        ; $42e5: $67
	ld   [hl], a                                     ; $42e6: $77
	ld   a, b                                        ; $42e7: $78
	sbc  c                                           ; $42e8: $99
	sbc  c                                           ; $42e9: $99
	cp   e                                           ; $42ea: $bb
	cp   d                                           ; $42eb: $ba
	sbc  c                                           ; $42ec: $99
	ld   [hl], a                                     ; $42ed: $77
	ld   [hl], a                                     ; $42ee: $77
	ld   h, [hl]                                     ; $42ef: $66
	ld   h, [hl]                                     ; $42f0: $66
	ld   [hl], a                                     ; $42f1: $77
	ld   a, b                                        ; $42f2: $78
	sbc  c                                           ; $42f3: $99
	xor  d                                           ; $42f4: $aa
	xor  d                                           ; $42f5: $aa
	xor  d                                           ; $42f6: $aa
	xor  c                                           ; $42f7: $a9
	ld   [hl], a                                     ; $42f8: $77
	ld   [hl], a                                     ; $42f9: $77
	ld   h, [hl]                                     ; $42fa: $66
	ld   h, [hl]                                     ; $42fb: $66
	ld   [hl], a                                     ; $42fc: $77
	ld   [hl], a                                     ; $42fd: $77
	adc  c                                           ; $42fe: $89
	sbc  d                                           ; $42ff: $9a
	sbc  e                                           ; $4300: $9b
	cp   e                                           ; $4301: $bb
	sbc  b                                           ; $4302: $98
	add  a                                           ; $4303: $87
	ld   h, a                                        ; $4304: $67
	halt                                             ; $4305: $76
	ld   [hl], a                                     ; $4306: $77
	adc  c                                           ; $4307: $89
	ld   [hl], a                                     ; $4308: $77
	ld   a, b                                        ; $4309: $78
	adc  c                                           ; $430a: $89
	xor  d                                           ; $430b: $aa
	xor  d                                           ; $430c: $aa
	add  a                                           ; $430d: $87
	ld   d, h                                        ; $430e: $54
	ld   a, b                                        ; $430f: $78
	sbc  c                                           ; $4310: $99
	xor  d                                           ; $4311: $aa
	cp   c                                           ; $4312: $b9
	adc  c                                           ; $4313: $89
	halt                                             ; $4314: $76
	ld   [hl], a                                     ; $4315: $77
	adc  b                                           ; $4316: $88
	adc  b                                           ; $4317: $88
	add  [hl]                                        ; $4318: $86
	ld   b, h                                        ; $4319: $44
	ld   l, c                                        ; $431a: $69
	sbc  c                                           ; $431b: $99
	cp   h                                           ; $431c: $bc
	db   $db                                         ; $431d: $db
	sbc  b                                           ; $431e: $98
	halt                                             ; $431f: $76
	ld   h, a                                        ; $4320: $67
	sbc  b                                           ; $4321: $98
	add  a                                           ; $4322: $87
	ld   h, l                                        ; $4323: $65
	ld   [hl+], a                                    ; $4324: $22
	ld   l, d                                        ; $4325: $6a
	cp   e                                           ; $4326: $bb
	adc  $da                                         ; $4327: $ce $da
	sub  a                                           ; $4329: $97
	halt                                             ; $432a: $76
	ld   h, a                                        ; $432b: $67
	sbc  d                                           ; $432c: $9a
	add  a                                           ; $432d: $87
	ld   h, h                                        ; $432e: $64
	ld   de, $dc6b                                   ; $432f: $11 $6b $dc
	sbc  $da                                         ; $4332: $de $da
	ld   h, a                                        ; $4334: $67
	ld   h, [hl]                                     ; $4335: $66
	ld   a, b                                        ; $4336: $78
	cp   c                                           ; $4337: $b9
	add  [hl]                                        ; $4338: $86
	ld   d, e                                        ; $4339: $53
	ld   de, $ed6c                                   ; $433a: $11 $6c $ed
	call Call_0e8_56b8                               ; $433d: $cd $b8 $56
	ld   [hl], a                                     ; $4340: $77
	adc  d                                           ; $4341: $8a
	cp   d                                           ; $4342: $ba
	ld   [hl], l                                     ; $4343: $75
	ld   b, e                                        ; $4344: $43
	ld   de, $fc7e                                   ; $4345: $11 $7e $fc
	call z, Call_0e8_56b7                            ; $4348: $cc $b7 $56
	ld   a, b                                        ; $434b: $78
	adc  d                                           ; $434c: $8a
	cp   c                                           ; $434d: $b9
	ld   h, h                                        ; $434e: $64
	ld   [hl-], a                                    ; $434f: $32
	ld   de, $fd9f                                   ; $4350: $11 $9f $fd
	xor  e                                           ; $4353: $ab
	and  [hl]                                        ; $4354: $a6
	ld   b, [hl]                                     ; $4355: $46
	sbc  c                                           ; $4356: $99
	adc  d                                           ; $4357: $8a
	cp   b                                           ; $4358: $b8
	ld   b, d                                        ; $4359: $42
	ld   b, e                                        ; $435a: $43
	inc  d                                           ; $435b: $14
	cp   a                                           ; $435c: $bf
	ld   a, [$9599]                                  ; $435d: $fa $99 $95
	ld   b, a                                        ; $4360: $47
	xor  d                                           ; $4361: $aa
	adc  d                                           ; $4362: $8a
	and  a                                           ; $4363: $a7
	ld   b, e                                        ; $4364: $43
	ld   b, d                                        ; $4365: $42
	dec  d                                           ; $4366: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4367: $cf
	ld   sp, hl                                      ; $4368: $f9
	adc  c                                           ; $4369: $89
	sub  [hl]                                        ; $436a: $96
	ld   e, b                                        ; $436b: $58
	xor  d                                           ; $436c: $aa
	adc  d                                           ; $436d: $8a
	sub  [hl]                                        ; $436e: $96
	ld   b, e                                        ; $436f: $43
	ld   b, c                                        ; $4370: $41
	rla                                              ; $4371: $17
	rst  $38                                         ; $4372: $ff
	reti                                             ; $4373: $d9


	adc  c                                           ; $4374: $89
	ld   [hl], l                                     ; $4375: $75
	ld   l, d                                        ; $4376: $6a
	xor  d                                           ; $4377: $aa
	adc  c                                           ; $4378: $89
	ld   [hl], l                                     ; $4379: $75
	inc  sp                                          ; $437a: $33
	ld   sp, $ff3a                                   ; $437b: $31 $3a $ff
	rst  ToBoot                                         ; $437e: $c7
	adc  c                                           ; $437f: $89
	ld   [hl], l                                     ; $4380: $75
	adc  d                                           ; $4381: $8a
	xor  c                                           ; $4382: $a9
	adc  c                                           ; $4383: $89
	ld   h, h                                        ; $4384: $64
	inc  hl                                          ; $4385: $23
	ld   hl, $ff6e                                   ; $4386: $21 $6e $ff
	sub  [hl]                                        ; $4389: $96
	ld   a, b                                        ; $438a: $78
	ld   h, [hl]                                     ; $438b: $66
	sbc  d                                           ; $438c: $9a
	cp   b                                           ; $438d: $b8
	add  a                                           ; $438e: $87
	ld   h, h                                        ; $438f: $64
	inc  sp                                          ; $4390: $33
	inc  de                                          ; $4391: $13
	xor  a                                           ; $4392: $af
	db   $fd                                         ; $4393: $fd
	halt                                             ; $4394: $76
	adc  c                                           ; $4395: $89
	ld   l, c                                        ; $4396: $69
	xor  e                                           ; $4397: $ab
	sub  a                                           ; $4398: $97
	halt                                             ; $4399: $76
	ld   d, e                                        ; $439a: $53

jr_0e8_439b:
	ld   [hl-], a                                    ; $439b: $32
	dec  d                                           ; $439c: $15
	rst  $28                                         ; $439d: $ef
	ld   a, [$9866]                                  ; $439e: $fa $66 $98
	ld   a, b                                        ; $43a1: $78
	xor  d                                           ; $43a2: $aa
	add  a                                           ; $43a3: $87
	ld   [hl], l                                     ; $43a4: $75
	ld   b, e                                        ; $43a5: $43
	ld   sp, $ff2a                                   ; $43a6: $31 $2a $ff
	rst  $20                                         ; $43a9: $e7
	ld   d, a                                        ; $43aa: $57
	sbc  b                                           ; $43ab: $98
	adc  d                                           ; $43ac: $8a
	cp   d                                           ; $43ad: $ba
	ld   [hl], a                                     ; $43ae: $77
	ld   d, l                                        ; $43af: $55
	ld   b, e                                        ; $43b0: $43
	ld   hl, $ff4e                                   ; $43b1: $21 $4e $ff
	and  l                                           ; $43b4: $a5
	ld   e, c                                        ; $43b5: $59
	sub  a                                           ; $43b6: $97
	xor  c                                           ; $43b7: $a9
	xor  b                                           ; $43b8: $a8
	halt                                             ; $43b9: $76
	ld   d, l                                        ; $43ba: $55
	ld   b, h                                        ; $43bb: $44
	ld   de, $fe9f                                   ; $43bc: $11 $9f $fe
	ld   h, h                                        ; $43bf: $64
	ld   a, c                                        ; $43c0: $79
	adc  c                                           ; $43c1: $89
	xor  d                                           ; $43c2: $aa
	and  a                                           ; $43c3: $a7
	ld   [hl], l                                     ; $43c4: $75
	ld   d, h                                        ; $43c5: $54
	ld   b, c                                        ; $43c6: $41
	inc  d                                           ; $43c7: $14
	rst  $28                                         ; $43c8: $ef
	ld   a, [$8b43]                                  ; $43c9: $fa $43 $8b
	sbc  c                                           ; $43cc: $99
	sbc  d                                           ; $43cd: $9a
	add  [hl]                                        ; $43ce: $86
	ld   d, h                                        ; $43cf: $54
	ld   h, h                                        ; $43d0: $64
	ld   b, c                                        ; $43d1: $41
	jr   @+$01                                       ; $43d2: $18 $ff

	or   $36                                         ; $43d4: $f6 $36
	xor  d                                           ; $43d6: $aa
	sbc  c                                           ; $43d7: $99
	sbc  d                                           ; $43d8: $9a
	sub  a                                           ; $43d9: $97
	ld   d, l                                        ; $43da: $55
	ld   h, h                                        ; $43db: $64
	ld   hl, $ff3d                                   ; $43dc: $21 $3d $ff
	or   h                                           ; $43df: $b4
	jr   c, jr_0e8_439b                              ; $43e0: $38 $b9

	sbc  c                                           ; $43e2: $99
	xor  c                                           ; $43e3: $a9
	halt                                             ; $43e4: $76
	ld   d, [hl]                                     ; $43e5: $56
	ld   d, h                                        ; $43e6: $54
	ld   de, $ff6f                                   ; $43e7: $11 $6f $ff
	ld   h, c                                        ; $43ea: $61
	ld   c, d                                        ; $43eb: $4a
	jp   z, $a989                                    ; $43ec: $ca $89 $a9

	ld   [hl], l                                     ; $43ef: $75
	ld   d, [hl]                                     ; $43f0: $56
	ld   d, d                                        ; $43f1: $52
	ld   [de], a                                     ; $43f2: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f3: $cf
	db   $fc                                         ; $43f4: $fc
	ld   [hl-], a                                    ; $43f5: $32
	ld   a, h                                        ; $43f6: $7c
	cp   d                                           ; $43f7: $ba
	ld   a, c                                        ; $43f8: $79
	xor  b                                           ; $43f9: $a8
	ld   h, h                                        ; $43fa: $64
	ld   d, l                                        ; $43fb: $55
	ld   b, c                                        ; $43fc: $41
	ld   d, $ff                                      ; $43fd: $16 $ff
	or   $14                                         ; $43ff: $f6 $14
	xor  l                                           ; $4401: $ad
	cp   b                                           ; $4402: $b8
	adc  d                                           ; $4403: $8a
	sub  a                                           ; $4404: $97
	ld   d, l                                        ; $4405: $55
	ld   h, l                                        ; $4406: $65
	ld   hl, $ff1b                                   ; $4407: $21 $1b $ff
	jp   nz, $db16                                   ; $440a: $c2 $16 $db

	sub  a                                           ; $440d: $97
	adc  c                                           ; $440e: $89
	sub  [hl]                                        ; $440f: $96
	ld   b, l                                        ; $4410: $45
	ld   h, h                                        ; $4411: $64
	ld   de, $ff5f                                   ; $4412: $11 $5f $ff
	ld   h, c                                        ; $4415: $61
	dec  hl                                          ; $4416: $2b
	db   $db                                         ; $4417: $db
	sub  a                                           ; $4418: $97
	sbc  c                                           ; $4419: $99
	ld   [hl], l                                     ; $441a: $75
	ld   d, [hl]                                     ; $441b: $56
	ld   h, e                                        ; $441c: $63

Jump_0e8_441d:
	ld   de, $feaf                                   ; $441d: $11 $af $fe
	ld   hl, $ca5c                                   ; $4420: $21 $5c $ca
	ld   l, b                                        ; $4423: $68
	sbc  b                                           ; $4424: $98
	ld   [hl], h                                     ; $4425: $74
	ld   d, l                                        ; $4426: $55
	ld   b, c                                        ; $4427: $41
	inc  d                                           ; $4428: $14
	rst  $38                                         ; $4429: $ff
	ld   hl, sp+$11                                  ; $442a: $f8 $11
	sbc  [hl]                                        ; $442c: $9e
	reti                                             ; $442d: $d9


	ld   l, c                                        ; $442e: $69
	sbc  b                                           ; $442f: $98
	ld   d, h                                        ; $4430: $54
	ld   d, [hl]                                     ; $4431: $56
	ld   b, c                                        ; $4432: $41
	rla                                              ; $4433: $17
	rst  $38                                         ; $4434: $ff
	db   $f4                                         ; $4435: $f4
	inc  de                                          ; $4436: $13
	cp   [hl]                                        ; $4437: $be
	rst  ToBoot                                         ; $4438: $c7
	ld   l, c                                        ; $4439: $69
	sbc  b                                           ; $443a: $98
	ld   b, h                                        ; $443b: $44
	ld   h, [hl]                                     ; $443c: $66
	ld   hl, $ff1c                                   ; $443d: $21 $1c $ff
	pop  bc                                          ; $4440: $c1
	ld   d, $de                                      ; $4441: $16 $de
	and  [hl]                                        ; $4443: $a6
	ld   a, d                                        ; $4444: $7a
	add  [hl]                                        ; $4445: $86
	dec  [hl]                                        ; $4446: $35
	ld   h, l                                        ; $4447: $65
	ld   de, $ff4f                                   ; $4448: $11 $4f $ff
	ld   [hl], c                                     ; $444b: $71
	ld   a, [de]                                     ; $444c: $1a
	db   $ed                                         ; $444d: $ed
	ld   [hl], l                                     ; $444e: $75
	adc  c                                           ; $444f: $89
	sub  l                                           ; $4450: $95
	ld   b, l                                        ; $4451: $45
	ld   h, h                                        ; $4452: $64
	ld   de, $feaf                                   ; $4453: $11 $af $fe
	ld   hl, $fb4d                                   ; $4456: $21 $4d $fb
	ld   h, [hl]                                     ; $4459: $66
	xor  d                                           ; $445a: $aa
	ld   [hl], h                                     ; $445b: $74
	dec  [hl]                                        ; $445c: $35
	ld   d, d                                        ; $445d: $52
	inc  de                                          ; $445e: $13
	rst  $38                                         ; $445f: $ff
	ld   sp, hl                                      ; $4460: $f9
	ld   de, $e89e                                   ; $4461: $11 $9e $e8
	ld   d, a                                        ; $4464: $57
	sbc  c                                           ; $4465: $99
	ld   d, e                                        ; $4466: $53
	ld   d, [hl]                                     ; $4467: $56
	ld   b, c                                        ; $4468: $41
	rla                                              ; $4469: $17
	rst  $38                                         ; $446a: $ff
	di                                               ; $446b: $f3
	ld   [de], a                                     ; $446c: $12
	rst  JumpTable                                         ; $446d: $df
	sub  $58                                         ; $446e: $d6 $58
	xor  b                                           ; $4470: $a8
	ld   b, e                                        ; $4471: $43
	ld   d, a                                        ; $4472: $57
	ld   sp, $ff1c                                   ; $4473: $31 $1c $ff
	pop  bc                                          ; $4476: $c1
	ld   d, $fe                                      ; $4477: $16 $fe
	and  l                                           ; $4479: $a5
	ld   l, d                                        ; $447a: $6a
	and  [hl]                                        ; $447b: $a6
	inc  [hl]                                        ; $447c: $34
	ld   h, [hl]                                     ; $447d: $66
	ld   de, $ff5f                                   ; $447e: $11 $5f $ff
	ld   [hl], c                                     ; $4481: $71
	ld   a, [de]                                     ; $4482: $1a
	db   $fc                                         ; $4483: $fc
	ld   [hl], l                                     ; $4484: $75
	sbc  e                                           ; $4485: $9b
	sub  h                                           ; $4486: $94
	dec  [hl]                                        ; $4487: $35
	ld   [hl], l                                     ; $4488: $75
	ld   de, $ff8f                                   ; $4489: $11 $8f $ff
	ld   hl, $fa4d                                   ; $448c: $21 $4d $fa
	ld   h, [hl]                                     ; $448f: $66
	xor  e                                           ; $4490: $ab
	add  e                                           ; $4491: $83
	ld   [hl], $74                                   ; $4492: $36 $74
	ld   de, $fcbf                                   ; $4494: $11 $bf $fc
	ld   de, $e97e                                   ; $4497: $11 $7e $e9
	ld   d, a                                        ; $449a: $57
	xor  d                                           ; $449b: $aa
	ld   h, e                                        ; $449c: $63
	ld   b, [hl]                                     ; $449d: $46
	ld   h, d                                        ; $449e: $62
	inc  d                                           ; $449f: $14
	rst  $38                                         ; $44a0: $ff

jr_0e8_44a1:
	ld   hl, sp+$11                                  ; $44a1: $f8 $11
	xor  a                                           ; $44a3: $af
	sub  $59                                         ; $44a4: $d6 $59
	cp   d                                           ; $44a6: $ba
	ld   b, d                                        ; $44a7: $42
	ld   b, a                                        ; $44a8: $47
	ld   [hl], c                                     ; $44a9: $71
	ld   d, $ff                                      ; $44aa: $16 $ff
	push af                                          ; $44ac: $f5
	ld   [de], a                                     ; $44ad: $12
	cp   a                                           ; $44ae: $bf
	add  $6a                                         ; $44af: $c6 $6a
	cp   b                                           ; $44b1: $b8
	ld   b, e                                        ; $44b2: $43
	ld   d, a                                        ; $44b3: $57

Call_0e8_44b4:
	ld   d, c                                        ; $44b4: $51
	add  hl, de                                      ; $44b5: $19
	rst  $38                                         ; $44b6: $ff
	ldh  [c], a                                      ; $44b7: $e2
	ld   d, $de                                      ; $44b8: $16 $de
	sub  l                                           ; $44ba: $95
	ld   a, d                                        ; $44bb: $7a
	or   a                                           ; $44bc: $b7
	ld   [hl+], a                                    ; $44bd: $22
	ld   l, b                                        ; $44be: $68
	ld   b, c                                        ; $44bf: $41
	dec  l                                           ; $44c0: $2d
	rst  $38                                         ; $44c1: $ff
	or   c                                           ; $44c2: $b1
	jr   jr_0e8_44a1                                 ; $44c3: $18 $dc

	add  l                                           ; $44c5: $85
	adc  e                                           ; $44c6: $8b
	and  l                                           ; $44c7: $a5
	inc  h                                           ; $44c8: $24
	ld   [hl], a                                     ; $44c9: $77
	ld   hl, $ff5f                                   ; $44ca: $21 $5f $ff
	ld   [hl], c                                     ; $44cd: $71
	dec  hl                                          ; $44ce: $2b
	db   $ec                                         ; $44cf: $ec
	ld   h, [hl]                                     ; $44d0: $66
	xor  h                                           ; $44d1: $ac
	and  h                                           ; $44d2: $a4
	inc  h                                           ; $44d3: $24
	halt                                             ; $44d4: $76
	ld   de, $ff8f                                   ; $44d5: $11 $8f $ff
	ld   b, c                                        ; $44d8: $41
	ld   e, h                                        ; $44d9: $5c
	ret  c                                           ; $44da: $d8

	ld   d, a                                        ; $44db: $57
	cp   l                                           ; $44dc: $bd
	ld   [hl], d                                     ; $44dd: $72
	dec  h                                           ; $44de: $25
	add  l                                           ; $44df: $85
	ld   de, $fdbf                                   ; $44e0: $11 $bf $fd
	ld   hl, $c77c                                   ; $44e3: $21 $7c $c7
	ld   e, c                                        ; $44e6: $59
	bit  4, d                                        ; $44e7: $cb $62
	ld   h, $73                                      ; $44e9: $26 $73
	inc  de                                          ; $44eb: $13
	rst  JumpTable                                         ; $44ec: $df
	ld   a, [$9c12]                                  ; $44ed: $fa $12 $9c
	and  [hl]                                        ; $44f0: $a6
	ld   e, d                                        ; $44f1: $5a
	jp   z, Jump_0e8_4742                            ; $44f2: $ca $42 $47

	ld   h, c                                        ; $44f5: $61
	rla                                              ; $44f6: $17
	rst  $38                                         ; $44f7: $ff
	or   $14                                         ; $44f8: $f6 $14
	cp   h                                           ; $44fa: $bc
	sub  l                                           ; $44fb: $95
	ld   a, e                                        ; $44fc: $7b
	reti                                             ; $44fd: $d9


	ld   [hl-], a                                    ; $44fe: $32
	ld   c, b                                        ; $44ff: $48
	ld   d, d                                        ; $4500: $52
	jr   z, @+$01                                    ; $4501: $28 $ff

	push hl                                          ; $4503: $e5
	daa                                              ; $4504: $27
	cp   d                                           ; $4505: $ba
	ld   [hl], l                                     ; $4506: $75
	ld   a, h                                        ; $4507: $7c
	ret  z                                           ; $4508: $c8

	ld   [hl-], a                                    ; $4509: $32
	ld   d, a                                        ; $450a: $57
	ld   b, c                                        ; $450b: $41
	ld   c, e                                        ; $450c: $4b
	rst  $38                                         ; $450d: $ff
	push bc                                          ; $450e: $c5
	ld   c, c                                        ; $450f: $49
	xor  c                                           ; $4510: $a9
	ld   d, l                                        ; $4511: $55
	adc  h                                           ; $4512: $8c
	add  $33                                         ; $4513: $c6 $33
	ld   h, [hl]                                     ; $4515: $66
	ld   [hl-], a                                    ; $4516: $32
	ld   l, [hl]                                     ; $4517: $6e
	rst  $38                                         ; $4518: $ff
	sub  h                                           ; $4519: $94
	ld   l, c                                        ; $451a: $69
	or   a                                           ; $451b: $b7
	ld   b, [hl]                                     ; $451c: $46
	xor  h                                           ; $451d: $ac
	sub  l                                           ; $451e: $95
	ld   b, l                                        ; $451f: $45
	ld   [hl], l                                     ; $4520: $75
	inc  sp                                          ; $4521: $33
	adc  [hl]                                        ; $4522: $8e
	db   $fd                                         ; $4523: $fd
	add  [hl]                                        ; $4524: $86
	adc  e                                           ; $4525: $8b
	sub  l                                           ; $4526: $95
	ld   b, a                                        ; $4527: $47
	xor  e                                           ; $4528: $ab
	add  l                                           ; $4529: $85
	ld   d, [hl]                                     ; $452a: $56
	ld   [hl], h                                     ; $452b: $74
	dec  [hl]                                        ; $452c: $35
	cp   [hl]                                        ; $452d: $be
	ld   [$ab78], a                                  ; $452e: $ea $78 $ab
	ld   [hl], h                                     ; $4531: $74
	ld   e, b                                        ; $4532: $58
	cp   c                                           ; $4533: $b9
	ld   [hl], l                                     ; $4534: $75
	ld   l, b                                        ; $4535: $68
	ld   [hl], l                                     ; $4536: $75
	ld   b, a                                        ; $4537: $47
	call $79b8                                       ; $4538: $cd $b8 $79
	cp   d                                           ; $453b: $ba
	ld   [hl], l                                     ; $453c: $75
	ld   e, b                                        ; $453d: $58
	sbc  b                                           ; $453e: $98
	ld   h, a                                        ; $453f: $67
	adc  c                                           ; $4540: $89
	add  l                                           ; $4541: $85
	ld   e, b                                        ; $4542: $58
	xor  d                                           ; $4543: $aa
	sub  [hl]                                        ; $4544: $96
	ld   a, d                                        ; $4545: $7a
	xor  d                                           ; $4546: $aa
	ld   h, l                                        ; $4547: $65
	ld   l, b                                        ; $4548: $68
	sbc  b                                           ; $4549: $98
	ld   a, b                                        ; $454a: $78
	sbc  c                                           ; $454b: $99
	ld   [hl], l                                     ; $454c: $75
	ld   l, b                                        ; $454d: $68
	xor  c                                           ; $454e: $a9
	ld   [hl], l                                     ; $454f: $75
	ld   l, c                                        ; $4550: $69
	xor  b                                           ; $4551: $a8
	ld   h, [hl]                                     ; $4552: $66
	adc  c                                           ; $4553: $89
	sbc  b                                           ; $4554: $98
	adc  c                                           ; $4555: $89
	xor  c                                           ; $4556: $a9
	ld   [hl], l                                     ; $4557: $75
	ld   a, c                                        ; $4558: $79
	xor  b                                           ; $4559: $a8
	ld   d, h                                        ; $455a: $54
	ld   l, c                                        ; $455b: $69
	sub  a                                           ; $455c: $97
	ld   h, a                                        ; $455d: $67
	sbc  d                                           ; $455e: $9a
	xor  c                                           ; $455f: $a9
	adc  e                                           ; $4560: $8b
	cp   d                                           ; $4561: $ba
	ld   [hl], l                                     ; $4562: $75
	ld   a, c                                        ; $4563: $79
	sub  [hl]                                        ; $4564: $96
	ld   b, h                                        ; $4565: $44
	ld   l, b                                        ; $4566: $68
	add  a                                           ; $4567: $87
	ld   a, b                                        ; $4568: $78
	xor  d                                           ; $4569: $aa
	sbc  b                                           ; $456a: $98
	xor  e                                           ; $456b: $ab
	cp   c                                           ; $456c: $b9
	ld   h, l                                        ; $456d: $65
	ld   a, c                                        ; $456e: $79
	add  [hl]                                        ; $456f: $86
	ld   b, h                                        ; $4570: $44
	ld   a, b                                        ; $4571: $78
	sub  a                                           ; $4572: $97
	ld   a, c                                        ; $4573: $79
	xor  d                                           ; $4574: $aa
	sbc  c                                           ; $4575: $99
	sbc  d                                           ; $4576: $9a
	cp   b                                           ; $4577: $b8
	ld   d, l                                        ; $4578: $55
	ld   a, b                                        ; $4579: $78
	add  l                                           ; $457a: $85
	dec  [hl]                                        ; $457b: $35
	ld   a, c                                        ; $457c: $79
	sub  a                                           ; $457d: $97
	adc  c                                           ; $457e: $89
	cp   d                                           ; $457f: $ba
	xor  c                                           ; $4580: $a9
	xor  d                                           ; $4581: $aa
	sub  a                                           ; $4582: $97
	ld   d, [hl]                                     ; $4583: $56
	adc  b                                           ; $4584: $88
	ld   h, h                                        ; $4585: $64
	ld   b, [hl]                                     ; $4586: $46
	sbc  c                                           ; $4587: $99
	add  a                                           ; $4588: $87
	adc  e                                           ; $4589: $8b
	cp   d                                           ; $458a: $ba
	xor  c                                           ; $458b: $a9
	cp   d                                           ; $458c: $ba
	add  l                                           ; $458d: $85
	ld   d, a                                        ; $458e: $57
	sub  a                                           ; $458f: $97
	ld   d, h                                        ; $4590: $54
	ld   d, a                                        ; $4591: $57
	adc  c                                           ; $4592: $89
	adc  b                                           ; $4593: $88
	sbc  e                                           ; $4594: $9b
	cp   d                                           ; $4595: $ba
	sbc  d                                           ; $4596: $9a
	xor  c                                           ; $4597: $a9
	ld   [hl], l                                     ; $4598: $75
	ld   l, b                                        ; $4599: $68
	add  a                                           ; $459a: $87
	ld   b, h                                        ; $459b: $44
	ld   l, b                                        ; $459c: $68
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	cp   e                                           ; $459f: $bb
	cp   d                                           ; $45a0: $ba
	sbc  d                                           ; $45a1: $9a
	xor  b                                           ; $45a2: $a8
	ld   h, l                                        ; $45a3: $65
	ld   l, b                                        ; $45a4: $68
	ld   [hl], l                                     ; $45a5: $75
	ld   b, h                                        ; $45a6: $44

Jump_0e8_45a7:
	ld   a, b                                        ; $45a7: $78
	adc  b                                           ; $45a8: $88
	adc  c                                           ; $45a9: $89
	cp   e                                           ; $45aa: $bb
	xor  c                                           ; $45ab: $a9
	xor  e                                           ; $45ac: $ab
	and  a                                           ; $45ad: $a7
	ld   d, [hl]                                     ; $45ae: $56
	adc  b                                           ; $45af: $88
	ld   [hl], h                                     ; $45b0: $74
	ld   b, [hl]                                     ; $45b1: $46
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	sbc  e                                           ; $45b4: $9b
	cp   e                                           ; $45b5: $bb
	xor  d                                           ; $45b6: $aa
	xor  e                                           ; $45b7: $ab
	sub  [hl]                                        ; $45b8: $96
	ld   d, a                                        ; $45b9: $57
	add  a                                           ; $45ba: $87
	ld   d, h                                        ; $45bb: $54
	ld   b, a                                        ; $45bc: $47
	sbc  c                                           ; $45bd: $99
	ld   a, b                                        ; $45be: $78
	sbc  e                                           ; $45bf: $9b
	cp   d                                           ; $45c0: $ba
	xor  e                                           ; $45c1: $ab
	xor  d                                           ; $45c2: $aa
	ld   [hl], l                                     ; $45c3: $75
	ld   h, a                                        ; $45c4: $67
	add  a                                           ; $45c5: $87
	ld   b, h                                        ; $45c6: $44
	ld   l, b                                        ; $45c7: $68
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	cp   e                                           ; $45ca: $bb
	xor  d                                           ; $45cb: $aa
	xor  e                                           ; $45cc: $ab
	xor  c                                           ; $45cd: $a9
	ld   h, l                                        ; $45ce: $65
	ld   l, b                                        ; $45cf: $68
	ld   [hl], l                                     ; $45d0: $75
	ld   b, h                                        ; $45d1: $44
	ld   a, c                                        ; $45d2: $79
	sub  a                                           ; $45d3: $97
	adc  d                                           ; $45d4: $8a
	cp   e                                           ; $45d5: $bb
	cp   d                                           ; $45d6: $ba
	cp   d                                           ; $45d7: $ba
	sub  a                                           ; $45d8: $97
	ld   d, [hl]                                     ; $45d9: $56
	ld   a, b                                        ; $45da: $78
	ld   [hl], h                                     ; $45db: $74
	ld   b, l                                        ; $45dc: $45
	ld   a, c                                        ; $45dd: $79
	adc  b                                           ; $45de: $88
	adc  d                                           ; $45df: $8a
	cp   d                                           ; $45e0: $ba
	xor  d                                           ; $45e1: $aa
	xor  e                                           ; $45e2: $ab
	add  [hl]                                        ; $45e3: $86
	ld   d, [hl]                                     ; $45e4: $56
	ld   [hl], a                                     ; $45e5: $77
	ld   h, h                                        ; $45e6: $64
	ld   b, [hl]                                     ; $45e7: $46
	adc  c                                           ; $45e8: $89
	ld   [hl], a                                     ; $45e9: $77
	sbc  d                                           ; $45ea: $9a
	cp   e                                           ; $45eb: $bb
	xor  e                                           ; $45ec: $ab
	cp   d                                           ; $45ed: $ba
	add  [hl]                                        ; $45ee: $86
	ld   d, a                                        ; $45ef: $57
	add  a                                           ; $45f0: $87
	ld   d, h                                        ; $45f1: $54
	ld   d, a                                        ; $45f2: $57
	adc  b                                           ; $45f3: $88
	ld   a, b                                        ; $45f4: $78
	xor  d                                           ; $45f5: $aa
	xor  e                                           ; $45f6: $ab
	xor  d                                           ; $45f7: $aa
	xor  d                                           ; $45f8: $aa
	ld   [hl], l                                     ; $45f9: $75
	ld   h, a                                        ; $45fa: $67
	halt                                             ; $45fb: $76
	ld   b, h                                        ; $45fc: $44
	ld   d, a                                        ; $45fd: $57
	add  a                                           ; $45fe: $87
	ld   a, b                                        ; $45ff: $78
	sbc  d                                           ; $4600: $9a
	xor  d                                           ; $4601: $aa
	cp   d                                           ; $4602: $ba
	xor  c                                           ; $4603: $a9
	ld   [hl], l                                     ; $4604: $75
	ld   h, a                                        ; $4605: $67
	halt                                             ; $4606: $76
	ld   b, h                                        ; $4607: $44
	ld   h, a                                        ; $4608: $67
	add  a                                           ; $4609: $87
	ld   a, b                                        ; $460a: $78
	xor  e                                           ; $460b: $ab
	cp   e                                           ; $460c: $bb
	cp   e                                           ; $460d: $bb
	cp   b                                           ; $460e: $b8
	ld   h, l                                        ; $460f: $65
	ld   h, a                                        ; $4610: $67
	ld   [hl], l                                     ; $4611: $75
	ld   b, h                                        ; $4612: $44
	ld   h, a                                        ; $4613: $67
	add  a                                           ; $4614: $87
	ld   a, c                                        ; $4615: $79
	cp   d                                           ; $4616: $ba
	cp   d                                           ; $4617: $ba
	xor  e                                           ; $4618: $ab
	cp   c                                           ; $4619: $b9
	ld   h, l                                        ; $461a: $65
	ld   a, b                                        ; $461b: $78
	ld   [hl], l                                     ; $461c: $75
	ld   b, h                                        ; $461d: $44
	ld   l, b                                        ; $461e: $68
	add  a                                           ; $461f: $87
	ld   a, c                                        ; $4620: $79
	cp   d                                           ; $4621: $ba
	xor  d                                           ; $4622: $aa
	xor  e                                           ; $4623: $ab
	cp   c                                           ; $4624: $b9
	ld   h, l                                        ; $4625: $65
	ld   a, b                                        ; $4626: $78
	ld   [hl], l                                     ; $4627: $75
	ld   b, h                                        ; $4628: $44
	ld   h, a                                        ; $4629: $67
	add  a                                           ; $462a: $87
	adc  c                                           ; $462b: $89
	xor  d                                           ; $462c: $aa
	cp   d                                           ; $462d: $ba
	cp   e                                           ; $462e: $bb
	xor  b                                           ; $462f: $a8
	ld   h, l                                        ; $4630: $65
	ld   h, a                                        ; $4631: $67
	halt                                             ; $4632: $76
	ld   b, h                                        ; $4633: $44
	ld   d, a                                        ; $4634: $57
	add  a                                           ; $4635: $87
	ld   a, c                                        ; $4636: $79
	sbc  d                                           ; $4637: $9a
	xor  e                                           ; $4638: $ab
	cp   e                                           ; $4639: $bb
	cp   d                                           ; $463a: $ba
	ld   [hl], l                                     ; $463b: $75
	ld   h, a                                        ; $463c: $67
	halt                                             ; $463d: $76
	ld   b, h                                        ; $463e: $44
	ld   d, a                                        ; $463f: $57
	adc  b                                           ; $4640: $88
	ld   a, b                                        ; $4641: $78
	xor  e                                           ; $4642: $ab
	xor  d                                           ; $4643: $aa
	cp   h                                           ; $4644: $bc
	cp   d                                           ; $4645: $ba
	add  [hl]                                        ; $4646: $86
	ld   h, a                                        ; $4647: $67
	ld   [hl], a                                     ; $4648: $77
	ld   d, e                                        ; $4649: $53
	ld   b, [hl]                                     ; $464a: $46
	ld   a, b                                        ; $464b: $78
	ld   [hl], a                                     ; $464c: $77
	adc  d                                           ; $464d: $8a
	xor  d                                           ; $464e: $aa
	cp   e                                           ; $464f: $bb
	cp   e                                           ; $4650: $bb
	sub  [hl]                                        ; $4651: $96
	ld   d, [hl]                                     ; $4652: $56
	add  a                                           ; $4653: $87
	ld   h, h                                        ; $4654: $64
	dec  [hl]                                        ; $4655: $35
	ld   a, b                                        ; $4656: $78
	ld   [hl], a                                     ; $4657: $77
	adc  d                                           ; $4658: $8a
	xor  d                                           ; $4659: $aa
	cp   e                                           ; $465a: $bb
	cp   e                                           ; $465b: $bb
	xor  b                                           ; $465c: $a8
	ld   h, [hl]                                     ; $465d: $66
	ld   a, b                                        ; $465e: $78
	ld   [hl], l                                     ; $465f: $75
	inc  [hl]                                        ; $4660: $34
	ld   h, a                                        ; $4661: $67
	add  a                                           ; $4662: $87
	ld   a, c                                        ; $4663: $79
	xor  d                                           ; $4664: $aa
	xor  e                                           ; $4665: $ab
	call z, Call_0e8_76c9                            ; $4666: $cc $c9 $76
	ld   h, a                                        ; $4669: $67
	add  a                                           ; $466a: $87
	ld   b, e                                        ; $466b: $43
	ld   b, [hl]                                     ; $466c: $46
	ld   a, b                                        ; $466d: $78
	ld   [hl], a                                     ; $466e: $77
	adc  d                                           ; $466f: $8a
	xor  e                                           ; $4670: $ab
	cp   h                                           ; $4671: $bc
	call z, Call_0e8_6797                            ; $4672: $cc $97 $67
	adc  b                                           ; $4675: $88
	ld   h, h                                        ; $4676: $64
	inc  [hl]                                        ; $4677: $34
	ld   h, a                                        ; $4678: $67
	ld   [hl], a                                     ; $4679: $77
	ld   a, b                                        ; $467a: $78
	xor  e                                           ; $467b: $ab
	cp   h                                           ; $467c: $bc
	call z, Call_0e8_76ca                            ; $467d: $cc $ca $76
	ld   a, b                                        ; $4680: $78
	add  [hl]                                        ; $4681: $86
	ld   b, e                                        ; $4682: $43
	ld   b, [hl]                                     ; $4683: $46
	ld   [hl], a                                     ; $4684: $77
	ld   [hl], a                                     ; $4685: $77
	sbc  c                                           ; $4686: $99
	xor  d                                           ; $4687: $aa
	cp   h                                           ; $4688: $bc
	res  5, b                                        ; $4689: $cb $a8
	ld   h, a                                        ; $468b: $67
	adc  b                                           ; $468c: $88
	ld   [hl], l                                     ; $468d: $75
	inc  sp                                          ; $468e: $33
	ld   d, a                                        ; $468f: $57
	ld   [hl], a                                     ; $4690: $77
	ld   a, b                                        ; $4691: $78
	sbc  d                                           ; $4692: $9a
	cp   e                                           ; $4693: $bb
	db   $dd                                         ; $4694: $dd
	db   $db                                         ; $4695: $db
	add  a                                           ; $4696: $87
	ld   [hl], a                                     ; $4697: $77
	sbc  b                                           ; $4698: $98
	ld   h, h                                        ; $4699: $64
	inc  [hl]                                        ; $469a: $34
	ld   h, a                                        ; $469b: $67
	ld   [hl], a                                     ; $469c: $77
	ld   a, b                                        ; $469d: $78
	sbc  d                                           ; $469e: $9a
	cp   h                                           ; $469f: $bc
	db   $dd                                         ; $46a0: $dd
	cp   d                                           ; $46a1: $ba
	add  a                                           ; $46a2: $87
	ld   a, b                                        ; $46a3: $78
	sub  a                                           ; $46a4: $97
	ld   d, e                                        ; $46a5: $53
	dec  [hl]                                        ; $46a6: $35
	ld   h, a                                        ; $46a7: $67
	ld   h, [hl]                                     ; $46a8: $66
	ld   a, c                                        ; $46a9: $79
	sbc  e                                           ; $46aa: $9b
	cp   l                                           ; $46ab: $bd
	db   $dd                                         ; $46ac: $dd
	cp   d                                           ; $46ad: $ba
	sub  a                                           ; $46ae: $97
	ld   a, c                                        ; $46af: $79
	sub  a                                           ; $46b0: $97
	ld   b, e                                        ; $46b1: $43
	dec  [hl]                                        ; $46b2: $35
	ld   h, a                                        ; $46b3: $67
	ld   h, [hl]                                     ; $46b4: $66
	ld   a, c                                        ; $46b5: $79
	sbc  e                                           ; $46b6: $9b
	cp   l                                           ; $46b7: $bd
	db   $dd                                         ; $46b8: $dd
	cp   d                                           ; $46b9: $ba
	sub  a                                           ; $46ba: $97
	ld   a, b                                        ; $46bb: $78
	add  a                                           ; $46bc: $87
	ld   d, d                                        ; $46bd: $52
	inc  h                                           ; $46be: $24
	ld   h, a                                        ; $46bf: $67
	ld   h, [hl]                                     ; $46c0: $66
	ld   a, b                                        ; $46c1: $78
	xor  e                                           ; $46c2: $ab
	call $dbed                                       ; $46c3: $cd $ed $db
	sub  a                                           ; $46c6: $97
	ld   a, b                                        ; $46c7: $78
	sub  a                                           ; $46c8: $97
	ld   d, e                                        ; $46c9: $53
	inc  hl                                          ; $46ca: $23
	ld   d, [hl]                                     ; $46cb: $56
	ld   h, [hl]                                     ; $46cc: $66
	ld   h, a                                        ; $46cd: $67
	sbc  d                                           ; $46ce: $9a
	cp   h                                           ; $46cf: $bc
	db   $dd                                         ; $46d0: $dd
	db   $db                                         ; $46d1: $db
	sbc  b                                           ; $46d2: $98
	ld   [hl], a                                     ; $46d3: $77
	adc  c                                           ; $46d4: $89
	ld   h, h                                        ; $46d5: $64

Call_0e8_46d6:
	ld   [hl+], a                                    ; $46d6: $22

Call_0e8_46d7:
	ld   b, [hl]                                     ; $46d7: $46
	halt                                             ; $46d8: $76
	ld   h, [hl]                                     ; $46d9: $66
	adc  c                                           ; $46da: $89
	xor  e                                           ; $46db: $ab
	sbc  $dc                                         ; $46dc: $de $dc
	xor  b                                           ; $46de: $a8
	ld   d, h                                        ; $46df: $54
	ld   d, a                                        ; $46e0: $57
	add  a                                           ; $46e1: $87
	ld   d, e                                        ; $46e2: $53
	ld   b, [hl]                                     ; $46e3: $46
	adc  c                                           ; $46e4: $89
	halt                                             ; $46e5: $76
	ld   l, b                                        ; $46e6: $68
	xor  d                                           ; $46e7: $aa
	cp   h                                           ; $46e8: $bc
	db   $dd                                         ; $46e9: $dd
	jp   z, $3564                                    ; $46ea: $ca $64 $35

	ld   a, b                                        ; $46ed: $78
	add  [hl]                                        ; $46ee: $86
	ld   b, l                                        ; $46ef: $45
	ld   a, b                                        ; $46f0: $78
	add  a                                           ; $46f1: $87
	ld   h, [hl]                                     ; $46f2: $66
	adc  d                                           ; $46f3: $8a
	cp   e                                           ; $46f4: $bb
	call $96ec                                       ; $46f5: $cd $ec $96
	ld   [hl-], a                                    ; $46f8: $32
	ld   b, [hl]                                     ; $46f9: $46
	adc  b                                           ; $46fa: $88
	ld   h, l                                        ; $46fb: $65
	ld   h, a                                        ; $46fc: $67
	sbc  c                                           ; $46fd: $99
	add  [hl]                                        ; $46fe: $86
	ld   h, a                                        ; $46ff: $67
	sbc  e                                           ; $4700: $9b
	cp   l                                           ; $4701: $bd
	sbc  $ca                                         ; $4702: $de $ca
	ld   d, d                                        ; $4704: $52
	ld   [de], a                                     ; $4705: $12
	ld   d, a                                        ; $4706: $57
	sub  a                                           ; $4707: $97
	ld   h, [hl]                                     ; $4708: $66
	ld   a, b                                        ; $4709: $78
	sbc  b                                           ; $470a: $98
	halt                                             ; $470b: $76
	ld   a, c                                        ; $470c: $79
	xor  e                                           ; $470d: $ab
	call $b7ed                                       ; $470e: $cd $ed $b7
	ld   b, c                                        ; $4711: $41
	ld   [de], a                                     ; $4712: $12
	ld   e, c                                        ; $4713: $59
	xor  b                                           ; $4714: $a8
	ld   h, [hl]                                     ; $4715: $66
	ld   a, c                                        ; $4716: $79
	sbc  c                                           ; $4717: $99
	ld   [hl], a                                     ; $4718: $77
	sbc  c                                           ; $4719: $99
	cp   h                                           ; $471a: $bc
	call $96ec                                       ; $471b: $cd $ec $96
	ld   hl, $6913                                   ; $471e: $21 $13 $69
	sub  a                                           ; $4721: $97
	ld   [hl], a                                     ; $4722: $77
	adc  c                                           ; $4723: $89
	sub  a                                           ; $4724: $97
	ld   [hl], a                                     ; $4725: $77
	adc  c                                           ; $4726: $89
	cp   h                                           ; $4727: $bc
	sbc  $eb                                         ; $4728: $de $eb
	sub  l                                           ; $472a: $95
	ld   sp, $6913                                   ; $472b: $31 $13 $69
	and  a                                           ; $472e: $a7
	ld   h, [hl]                                     ; $472f: $66
	ld   a, b                                        ; $4730: $78
	add  a                                           ; $4731: $87
	ld   a, b                                        ; $4732: $78
	sbc  d                                           ; $4733: $9a
	cp   h                                           ; $4734: $bc
	db   $dd                                         ; $4735: $dd
	db   $ed                                         ; $4736: $ed
	and  [hl]                                        ; $4737: $a6
	ld   sp, $5912                                   ; $4738: $31 $12 $59
	xor  c                                           ; $473b: $a9
	halt                                             ; $473c: $76
	ld   a, c                                        ; $473d: $79
	adc  b                                           ; $473e: $88
	ld   [hl], a                                     ; $473f: $77
	adc  c                                           ; $4740: $89
	cp   h                                           ; $4741: $bc

Jump_0e8_4742:
	call $b8ed                                       ; $4742: $cd $ed $b8
	ld   d, d                                        ; $4745: $52
	ld   de, $9936                                   ; $4746: $11 $36 $99
	halt                                             ; $4749: $76
	ld   h, a                                        ; $474a: $67
	ld   a, b                                        ; $474b: $78
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	sbc  e                                           ; $474e: $9b
	call $ebde                                       ; $474f: $cd $de $eb
	ld   [hl], e                                     ; $4752: $73
	ld   de, $8915                                   ; $4753: $11 $15 $89
	sub  a                                           ; $4756: $97
	ld   h, [hl]                                     ; $4757: $66
	ld   a, c                                        ; $4758: $79
	sub  a                                           ; $4759: $97
	ld   [hl], a                                     ; $475a: $77
	sbc  d                                           ; $475b: $9a
	call z, $edef                                    ; $475c: $cc $ef $ed
	and  a                                           ; $475f: $a7
	ld   b, c                                        ; $4760: $41
	ld   de, $9947                                   ; $4761: $11 $47 $99
	ld   [hl], l                                     ; $4764: $75
	ld   d, [hl]                                     ; $4765: $56
	adc  b                                           ; $4766: $88
	adc  b                                           ; $4767: $88
	adc  c                                           ; $4768: $89
	cp   e                                           ; $4769: $bb
	adc  $ee                                         ; $476a: $ce $ee
	db   $ec                                         ; $476c: $ec
	sub  h                                           ; $476d: $94
	ld   de, $6913                                   ; $476e: $11 $13 $69
	sub  a                                           ; $4771: $97
	ld   h, l                                        ; $4772: $65
	ld   h, a                                        ; $4773: $67
	adc  b                                           ; $4774: $88
	ld   a, b                                        ; $4775: $78
	adc  d                                           ; $4776: $8a
	call $fede                                       ; $4777: $cd $de $fe
	reti                                             ; $477a: $d9


	ld   h, e                                        ; $477b: $63
	ld   de, $7914                                   ; $477c: $11 $14 $79
	add  a                                           ; $477f: $87
	ld   h, [hl]                                     ; $4780: $66
	ld   [hl], a                                     ; $4781: $77
	adc  b                                           ; $4782: $88
	adc  c                                           ; $4783: $89
	xor  e                                           ; $4784: $ab
	cp   h                                           ; $4785: $bc
	db   $ed                                         ; $4786: $ed
	xor  $c9                                         ; $4787: $ee $c9
	ld   h, e                                        ; $4789: $63
	ld   de, $8925                                   ; $478a: $11 $25 $89
	sub  [hl]                                        ; $478d: $96
	ld   d, [hl]                                     ; $478e: $56
	ld   a, b                                        ; $478f: $78
	sbc  b                                           ; $4790: $98
	adc  c                                           ; $4791: $89
	sbc  e                                           ; $4792: $9b
	call $eeee                                       ; $4793: $cd $ee $ee
	ret  z                                           ; $4796: $c8

	ld   d, d                                        ; $4797: $52
	ld   de, $7824                                   ; $4798: $11 $24 $78
	add  a                                           ; $479b: $87
	ld   h, [hl]                                     ; $479c: $66
	ld   a, b                                        ; $479d: $78
	sbc  b                                           ; $479e: $98
	adc  b                                           ; $479f: $88
	sbc  d                                           ; $47a0: $9a
	call z, $edde                                    ; $47a1: $cc $de $ed
	ret                                              ; $47a4: $c9


	ld   h, e                                        ; $47a5: $63
	ld   de, $6813                                   ; $47a6: $11 $13 $68
	add  a                                           ; $47a9: $87
	ld   [hl], a                                     ; $47aa: $77
	ld   a, b                                        ; $47ab: $78
	add  a                                           ; $47ac: $87
	ld   a, b                                        ; $47ad: $78
	adc  d                                           ; $47ae: $8a
	cp   l                                           ; $47af: $bd
	db   $dd                                         ; $47b0: $dd
	xor  $ca                                         ; $47b1: $ee $ca
	ld   [hl], h                                     ; $47b3: $74
	ld   hl, $5902                                   ; $47b4: $21 $02 $59
	sbc  b                                           ; $47b7: $98
	halt                                             ; $47b8: $76
	ld   h, a                                        ; $47b9: $67
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  c                                           ; $47bc: $89
	cp   h                                           ; $47bd: $bc
	adc  $de                                         ; $47be: $ce $de
	db   $db                                         ; $47c0: $db
	sub  [hl]                                        ; $47c1: $96
	ld   sp, $2511                                   ; $47c2: $31 $11 $25
	ld   a, c                                        ; $47c5: $79
	add  a                                           ; $47c6: $87
	ld   [hl], a                                     ; $47c7: $77
	ld   a, b                                        ; $47c8: $78
	ld   [hl], a                                     ; $47c9: $77
	ld   a, c                                        ; $47ca: $79
	xor  d                                           ; $47cb: $aa
	call $edde                                       ; $47cc: $cd $de $ed
	xor  c                                           ; $47cf: $a9
	ld   h, e                                        ; $47d0: $63
	ld   de, $6913                                   ; $47d1: $11 $13 $69
	sbc  b                                           ; $47d4: $98
	ld   [hl], a                                     ; $47d5: $77
	ld   a, b                                        ; $47d6: $78
	add  a                                           ; $47d7: $87
	ld   a, b                                        ; $47d8: $78
	sbc  c                                           ; $47d9: $99
	cp   h                                           ; $47da: $bc
	sbc  $ee                                         ; $47db: $de $ee
	jp   c, $3185                                    ; $47dd: $da $85 $31

	ld   de, $8946                                   ; $47e0: $11 $46 $89
	add  a                                           ; $47e3: $87
	ld   [hl], a                                     ; $47e4: $77
	ld   [hl], a                                     ; $47e5: $77
	ld   [hl], a                                     ; $47e6: $77
	adc  b                                           ; $47e7: $88
	xor  e                                           ; $47e8: $ab
	call $eced                                       ; $47e9: $cd $ed $ec
	and  a                                           ; $47ec: $a7
	ld   d, d                                        ; $47ed: $52
	ld   de, $6913                                   ; $47ee: $11 $13 $69
	sbc  b                                           ; $47f1: $98
	ld   [hl], a                                     ; $47f2: $77
	ld   [hl], a                                     ; $47f3: $77
	ld   [hl], a                                     ; $47f4: $77
	ld   a, b                                        ; $47f5: $78
	sbc  d                                           ; $47f6: $9a
	cp   h                                           ; $47f7: $bc
	sbc  $dd                                         ; $47f8: $de $dd
	jp   z, $3175                                    ; $47fa: $ca $75 $31

	ld   [de], a                                     ; $47fd: $12
	ld   b, a                                        ; $47fe: $47
	sbc  b                                           ; $47ff: $98
	add  a                                           ; $4800: $87
	ld   [hl], a                                     ; $4801: $77
	ld   [hl], a                                     ; $4802: $77
	ld   a, b                                        ; $4803: $78
	sbc  c                                           ; $4804: $99
	xor  e                                           ; $4805: $ab
	call $dbee                                       ; $4806: $cd $ee $db
	sub  a                                           ; $4809: $97
	ld   d, e                                        ; $480a: $53
	ld   de, $7824                                   ; $480b: $11 $24 $78
	sbc  b                                           ; $480e: $98
	ld   [hl], a                                     ; $480f: $77
	ld   [hl], a                                     ; $4810: $77
	ld   [hl], a                                     ; $4811: $77
	ld   a, b                                        ; $4812: $78
	sbc  d                                           ; $4813: $9a
	cp   h                                           ; $4814: $bc
	db   $dd                                         ; $4815: $dd
	db   $dd                                         ; $4816: $dd
	jp   z, $2175                                    ; $4817: $ca $75 $21

	ld   de, $8847                                   ; $481a: $11 $47 $88
	add  a                                           ; $481d: $87
	ld   [hl], a                                     ; $481e: $77
	ld   [hl], a                                     ; $481f: $77
	ld   [hl], a                                     ; $4820: $77
	adc  c                                           ; $4821: $89
	xor  e                                           ; $4822: $ab
	db   $dd                                         ; $4823: $dd
	db   $ed                                         ; $4824: $ed
	call c, Call_0e8_53a7                            ; $4825: $dc $a7 $53
	ld   hl, $6824                                   ; $4828: $21 $24 $68
	sbc  b                                           ; $482b: $98
	ld   [hl], a                                     ; $482c: $77
	ld   h, [hl]                                     ; $482d: $66
	ld   [hl], a                                     ; $482e: $77
	sbc  c                                           ; $482f: $99
	sbc  c                                           ; $4830: $99
	xor  e                                           ; $4831: $ab
	adc  $ee                                         ; $4832: $ce $ee
	jp   c, $3286                                    ; $4834: $da $86 $32

	ld   de, $7925                                   ; $4837: $11 $25 $79
	sbc  c                                           ; $483a: $99
	add  a                                           ; $483b: $87
	halt                                             ; $483c: $76
	ld   [hl], a                                     ; $483d: $77
	sbc  c                                           ; $483e: $99
	xor  e                                           ; $483f: $ab
	call $dced                                       ; $4840: $cd $ed $dc
	cp   b                                           ; $4843: $b8
	ld   h, h                                        ; $4844: $64
	ld   hl, $5712                                   ; $4845: $21 $12 $57
	adc  c                                           ; $4848: $89
	sub  a                                           ; $4849: $97
	ld   [hl], a                                     ; $484a: $77
	ld   [hl], a                                     ; $484b: $77
	adc  b                                           ; $484c: $88
	xor  c                                           ; $484d: $a9
	cp   e                                           ; $484e: $bb
	call $dbdd                                       ; $484f: $cd $dd $db
	sub  [hl]                                        ; $4852: $96
	ld   b, d                                        ; $4853: $42
	ld   de, $8835                                   ; $4854: $11 $35 $88
	add  a                                           ; $4857: $87
	ld   [hl], a                                     ; $4858: $77
	ld   a, b                                        ; $4859: $78
	adc  b                                           ; $485a: $88
	sbc  c                                           ; $485b: $99
	xor  d                                           ; $485c: $aa
	call z, $ecdf                                    ; $485d: $cc $df $ec
	and  a                                           ; $4860: $a7
	ld   d, e                                        ; $4861: $53
	ld   de, $6924                                   ; $4862: $11 $24 $69
	sbc  b                                           ; $4865: $98
	halt                                             ; $4866: $76
	ld   h, a                                        ; $4867: $67
	ld   a, b                                        ; $4868: $78
	sbc  d                                           ; $4869: $9a
	sbc  d                                           ; $486a: $9a
	cp   e                                           ; $486b: $bb
	call $daed                                       ; $486c: $cd $ed $da
	ld   [hl], l                                     ; $486f: $75
	ld   sp, $3611                                   ; $4870: $31 $11 $36
	adc  c                                           ; $4873: $89
	add  a                                           ; $4874: $87
	ld   [hl], a                                     ; $4875: $77
	ld   [hl], a                                     ; $4876: $77
	adc  c                                           ; $4877: $89
	adc  d                                           ; $4878: $8a
	xor  e                                           ; $4879: $ab
	call $ecee                                       ; $487a: $cd $ee $ec
	and  a                                           ; $487d: $a7
	ld   d, e                                        ; $487e: $53
	ld   de, $7924                                   ; $487f: $11 $24 $79
	sbc  b                                           ; $4882: $98
	ld   [hl], a                                     ; $4883: $77
	ld   [hl], a                                     ; $4884: $77
	adc  b                                           ; $4885: $88
	sbc  c                                           ; $4886: $99
	xor  d                                           ; $4887: $aa
	cp   h                                           ; $4888: $bc
	db   $dd                                         ; $4889: $dd
	call c, Call_0e8_64b8                            ; $488a: $dc $b8 $64
	ld   hl, $5713                                   ; $488d: $21 $13 $57
	sbc  b                                           ; $4890: $98
	ld   [hl], a                                     ; $4891: $77
	ld   [hl], a                                     ; $4892: $77
	ld   a, c                                        ; $4893: $79
	sbc  d                                           ; $4894: $9a
	xor  d                                           ; $4895: $aa
	cp   e                                           ; $4896: $bb
	call $caee                                       ; $4897: $cd $ee $ca
	ld   [hl], l                                     ; $489a: $75
	ld   [hl-], a                                    ; $489b: $32
	ld   [de], a                                     ; $489c: $12
	ld   b, a                                        ; $489d: $47
	sbc  c                                           ; $489e: $99
	sub  a                                           ; $489f: $97
	ld   h, [hl]                                     ; $48a0: $66
	ld   h, a                                        ; $48a1: $67
	sbc  c                                           ; $48a2: $99
	xor  e                                           ; $48a3: $ab
	xor  d                                           ; $48a4: $aa
	call z, $dcce                                    ; $48a5: $cc $ce $dc
	sub  a                                           ; $48a8: $97
	ld   b, d                                        ; $48a9: $42
	ld   de, $7825                                   ; $48aa: $11 $25 $78
	add  a                                           ; $48ad: $87
	ld   [hl], a                                     ; $48ae: $77
	ld   a, b                                        ; $48af: $78
	adc  c                                           ; $48b0: $89
	sbc  c                                           ; $48b1: $99
	xor  d                                           ; $48b2: $aa
	xor  h                                           ; $48b3: $ac
	sbc  $fd                                         ; $48b4: $de $fd
	cp   b                                           ; $48b6: $b8
	ld   d, e                                        ; $48b7: $53
	ld   [hl+], a                                    ; $48b8: $22
	inc  h                                           ; $48b9: $24
	ld   h, a                                        ; $48ba: $67
	add  a                                           ; $48bb: $87
	ld   h, a                                        ; $48bc: $67
	ld   a, b                                        ; $48bd: $78
	adc  b                                           ; $48be: $88
	sbc  b                                           ; $48bf: $98
	adc  c                                           ; $48c0: $89
	xor  e                                           ; $48c1: $ab
	adc  $ed                                         ; $48c2: $ce $ed
	cp   c                                           ; $48c4: $b9
	ld   h, h                                        ; $48c5: $64
	ld   hl, $5713                                   ; $48c6: $21 $13 $57
	add  a                                           ; $48c9: $87
	ld   [hl], a                                     ; $48ca: $77
	ld   [hl], a                                     ; $48cb: $77
	ld   a, c                                        ; $48cc: $79
	sbc  d                                           ; $48cd: $9a
	sbc  d                                           ; $48ce: $9a
	xor  e                                           ; $48cf: $ab
	cp   l                                           ; $48d0: $bd
	db   $dd                                         ; $48d1: $dd
	db   $db                                         ; $48d2: $db
	ld   [hl], l                                     ; $48d3: $75
	ld   sp, $4612                                   ; $48d4: $31 $12 $46
	adc  b                                           ; $48d7: $88
	halt                                             ; $48d8: $76
	ld   h, a                                        ; $48d9: $67
	adc  c                                           ; $48da: $89
	sbc  c                                           ; $48db: $99
	xor  c                                           ; $48dc: $a9
	xor  d                                           ; $48dd: $aa
	cp   l                                           ; $48de: $bd
	sbc  $cb                                         ; $48df: $de $cb
	sub  l                                           ; $48e1: $95
	ld   [hl-], a                                    ; $48e2: $32
	ld   [de], a                                     ; $48e3: $12
	ld   b, l                                        ; $48e4: $45
	ld   a, b                                        ; $48e5: $78
	ld   [hl], a                                     ; $48e6: $77
	ld   h, a                                        ; $48e7: $67
	adc  c                                           ; $48e8: $89
	xor  c                                           ; $48e9: $a9
	sbc  d                                           ; $48ea: $9a
	sbc  d                                           ; $48eb: $9a
	cp   l                                           ; $48ec: $bd
	sbc  $cb                                         ; $48ed: $de $cb
	add  [hl]                                        ; $48ef: $86
	ld   b, d                                        ; $48f0: $42
	ld   [hl+], a                                    ; $48f1: $22
	inc  [hl]                                        ; $48f2: $34
	ld   h, a                                        ; $48f3: $67
	ld   [hl], a                                     ; $48f4: $77
	ld   [hl], a                                     ; $48f5: $77
	adc  c                                           ; $48f6: $89
	sbc  c                                           ; $48f7: $99
	sbc  c                                           ; $48f8: $99
	xor  e                                           ; $48f9: $ab
	cp   h                                           ; $48fa: $bc
	call $97db                                       ; $48fb: $cd $db $97
	ld   d, e                                        ; $48fe: $53
	ld   [de], a                                     ; $48ff: $12
	inc  [hl]                                        ; $4900: $34
	ld   h, [hl]                                     ; $4901: $66
	ld   h, [hl]                                     ; $4902: $66
	ld   [hl], a                                     ; $4903: $77
	adc  c                                           ; $4904: $89
	sbc  d                                           ; $4905: $9a
	xor  c                                           ; $4906: $a9
	sbc  c                                           ; $4907: $99
	cp   h                                           ; $4908: $bc
	call $97dc                                       ; $4909: $cd $dc $97
	ld   d, e                                        ; $490c: $53
	ld   [hl+], a                                    ; $490d: $22
	dec  [hl]                                        ; $490e: $35
	ld   h, a                                        ; $490f: $67
	halt                                             ; $4910: $76
	ld   h, a                                        ; $4911: $67
	adc  c                                           ; $4912: $89
	sbc  d                                           ; $4913: $9a
	xor  d                                           ; $4914: $aa
	xor  c                                           ; $4915: $a9
	xor  d                                           ; $4916: $aa
	cp   h                                           ; $4917: $bc
	call c, Call_0e8_5397                            ; $4918: $dc $97 $53
	ld   [hl+], a                                    ; $491b: $22
	inc  [hl]                                        ; $491c: $34
	ld   h, a                                        ; $491d: $67
	ld   [hl], a                                     ; $491e: $77
	ld   h, [hl]                                     ; $491f: $66
	ld   a, c                                        ; $4920: $79
	xor  e                                           ; $4921: $ab
	xor  c                                           ; $4922: $a9
	xor  c                                           ; $4923: $a9
	xor  h                                           ; $4924: $ac
	call $a7dc                                       ; $4925: $cd $dc $a7
	ld   d, e                                        ; $4928: $53
	ld   [hl+], a                                    ; $4929: $22
	inc  [hl]                                        ; $492a: $34
	ld   d, [hl]                                     ; $492b: $56
	ld   [hl], a                                     ; $492c: $77
	ld   a, b                                        ; $492d: $78
	adc  b                                           ; $492e: $88
	xor  c                                           ; $492f: $a9
	cp   e                                           ; $4930: $bb
	cp   d                                           ; $4931: $ba
	xor  e                                           ; $4932: $ab
	cp   h                                           ; $4933: $bc
	res  4, a                                        ; $4934: $cb $a7
	ld   d, e                                        ; $4936: $53
	ld   [hl+], a                                    ; $4937: $22
	dec  [hl]                                        ; $4938: $35
	ld   h, a                                        ; $4939: $67
	halt                                             ; $493a: $76
	ld   h, a                                        ; $493b: $67
	sbc  d                                           ; $493c: $9a
	cp   d                                           ; $493d: $ba
	xor  c                                           ; $493e: $a9
	xor  d                                           ; $493f: $aa
	xor  e                                           ; $4940: $ab
	call z, $86ca                                    ; $4941: $cc $ca $86
	ld   b, e                                        ; $4944: $43
	inc  hl                                          ; $4945: $23
	ld   b, [hl]                                     ; $4946: $46
	ld   [hl], a                                     ; $4947: $77
	halt                                             ; $4948: $76
	ld   h, a                                        ; $4949: $67
	adc  c                                           ; $494a: $89
	xor  d                                           ; $494b: $aa
	xor  d                                           ; $494c: $aa
	xor  d                                           ; $494d: $aa
	cp   d                                           ; $494e: $ba
	call z, $96bb                                    ; $494f: $cc $bb $96
	ld   [hl-], a                                    ; $4952: $32
	ld   [de], a                                     ; $4953: $12
	ld   b, [hl]                                     ; $4954: $46
	ld   [hl], a                                     ; $4955: $77
	ld   [hl], a                                     ; $4956: $77
	ld   a, c                                        ; $4957: $79
	sbc  d                                           ; $4958: $9a
	xor  e                                           ; $4959: $ab
	cp   d                                           ; $495a: $ba
	xor  c                                           ; $495b: $a9
	cp   e                                           ; $495c: $bb
	call Call_0e8_75ca                               ; $495d: $cd $ca $75
	inc  sp                                          ; $4960: $33
	inc  [hl]                                        ; $4961: $34
	ld   d, [hl]                                     ; $4962: $56
	ld   h, [hl]                                     ; $4963: $66
	ld   h, [hl]                                     ; $4964: $66
	ld   a, b                                        ; $4965: $78
	xor  e                                           ; $4966: $ab
	xor  e                                           ; $4967: $ab
	xor  d                                           ; $4968: $aa
	xor  e                                           ; $4969: $ab
	call z, $a8dc                                    ; $496a: $cc $dc $a8
	ld   h, h                                        ; $496d: $64
	ld   [hl-], a                                    ; $496e: $32
	inc  [hl]                                        ; $496f: $34
	ld   h, a                                        ; $4970: $67
	ld   [hl], a                                     ; $4971: $77
	ld   h, a                                        ; $4972: $67
	ld   a, b                                        ; $4973: $78
	xor  d                                           ; $4974: $aa
	xor  d                                           ; $4975: $aa
	xor  c                                           ; $4976: $a9
	xor  e                                           ; $4977: $ab
	call $97cc                                       ; $4978: $cd $cc $97
	ld   b, d                                        ; $497b: $42
	ld   [de], a                                     ; $497c: $12
	ld   b, [hl]                                     ; $497d: $46
	ld   a, b                                        ; $497e: $78
	ld   [hl], a                                     ; $497f: $77
	ld   [hl], a                                     ; $4980: $77
	adc  c                                           ; $4981: $89
	xor  e                                           ; $4982: $ab
	xor  c                                           ; $4983: $a9
	sbc  d                                           ; $4984: $9a
	cp   e                                           ; $4985: $bb
	call c, Call_0e8_75b9                            ; $4986: $dc $b9 $75
	ld   [hl-], a                                    ; $4989: $32
	inc  [hl]                                        ; $498a: $34
	ld   h, [hl]                                     ; $498b: $66
	ld   h, [hl]                                     ; $498c: $66
	ld   h, a                                        ; $498d: $67
	adc  d                                           ; $498e: $8a
	xor  d                                           ; $498f: $aa
	xor  d                                           ; $4990: $aa
	sbc  d                                           ; $4991: $9a
	cp   e                                           ; $4992: $bb
	set  1, e                                        ; $4993: $cb $cb
	xor  b                                           ; $4995: $a8
	ld   h, h                                        ; $4996: $64
	ld   [hl-], a                                    ; $4997: $32
	dec  [hl]                                        ; $4998: $35
	ld   h, a                                        ; $4999: $67
	ld   [hl], a                                     ; $499a: $77
	ld   a, b                                        ; $499b: $78
	sbc  c                                           ; $499c: $99
	xor  d                                           ; $499d: $aa
	sbc  c                                           ; $499e: $99
	xor  d                                           ; $499f: $aa
	xor  h                                           ; $49a0: $ac
	call Call_0e8_75ca                               ; $49a1: $cd $ca $75
	ld   [hl-], a                                    ; $49a4: $32
	inc  [hl]                                        ; $49a5: $34
	ld   d, [hl]                                     ; $49a6: $56
	ld   [hl], a                                     ; $49a7: $77
	ld   h, a                                        ; $49a8: $67
	adc  d                                           ; $49a9: $8a
	cp   d                                           ; $49aa: $ba
	xor  d                                           ; $49ab: $aa
	xor  d                                           ; $49ac: $aa
	xor  d                                           ; $49ad: $aa
	call z, $97db                                    ; $49ae: $cc $db $97
	ld   b, d                                        ; $49b1: $42
	ld   [de], a                                     ; $49b2: $12
	ld   b, [hl]                                     ; $49b3: $46
	ld   [hl], a                                     ; $49b4: $77
	ld   [hl], a                                     ; $49b5: $77
	ld   a, c                                        ; $49b6: $79
	sbc  e                                           ; $49b7: $9b
	cp   d                                           ; $49b8: $ba
	sbc  c                                           ; $49b9: $99
	xor  d                                           ; $49ba: $aa
	cp   h                                           ; $49bb: $bc
	call z, Call_0e8_64b9                            ; $49bc: $cc $b9 $64
	ld   [hl+], a                                    ; $49bf: $22
	inc  [hl]                                        ; $49c0: $34
	ld   h, a                                        ; $49c1: $67
	ld   [hl], a                                     ; $49c2: $77
	ld   a, b                                        ; $49c3: $78
	sbc  d                                           ; $49c4: $9a
	xor  c                                           ; $49c5: $a9
	sbc  c                                           ; $49c6: $99
	xor  d                                           ; $49c7: $aa
	xor  e                                           ; $49c8: $ab
	call Call_0e8_75ca                               ; $49c9: $cd $ca $75
	ld   [hl-], a                                    ; $49cc: $32
	inc  [hl]                                        ; $49cd: $34
	ld   d, [hl]                                     ; $49ce: $56
	ld   h, [hl]                                     ; $49cf: $66
	ld   h, a                                        ; $49d0: $67
	adc  c                                           ; $49d1: $89
	xor  d                                           ; $49d2: $aa
	xor  c                                           ; $49d3: $a9
	xor  c                                           ; $49d4: $a9
	cp   e                                           ; $49d5: $bb
	call z, $96cb                                    ; $49d6: $cc $cb $96
	ld   b, e                                        ; $49d9: $43
	inc  hl                                          ; $49da: $23
	ld   b, [hl]                                     ; $49db: $46
	ld   [hl], a                                     ; $49dc: $77
	ld   [hl], a                                     ; $49dd: $77
	adc  c                                           ; $49de: $89
	sbc  d                                           ; $49df: $9a
	sbc  c                                           ; $49e0: $99
	sbc  d                                           ; $49e1: $9a
	xor  d                                           ; $49e2: $aa
	call z, $97cc                                    ; $49e3: $cc $cc $97
	ld   b, d                                        ; $49e6: $42
	ld   [de], a                                     ; $49e7: $12
	ld   b, [hl]                                     ; $49e8: $46
	ld   [hl], a                                     ; $49e9: $77
	halt                                             ; $49ea: $76
	ld   l, b                                        ; $49eb: $68
	xor  e                                           ; $49ec: $ab
	cp   d                                           ; $49ed: $ba
	sbc  d                                           ; $49ee: $9a
	sbc  e                                           ; $49ef: $9b
	cp   h                                           ; $49f0: $bc
	res  4, a                                        ; $49f1: $cb $a7
	ld   d, d                                        ; $49f3: $52
	ld   [de], a                                     ; $49f4: $12
	ld   b, [hl]                                     ; $49f5: $46
	ld   [hl], a                                     ; $49f6: $77
	ld   [hl], a                                     ; $49f7: $77
	ld   a, b                                        ; $49f8: $78
	xor  c                                           ; $49f9: $a9
	xor  d                                           ; $49fa: $aa
	xor  c                                           ; $49fb: $a9
	xor  e                                           ; $49fc: $ab
	xor  h                                           ; $49fd: $ac
	res  2, a                                        ; $49fe: $cb $97
	ld   d, e                                        ; $4a00: $53
	ld   [hl+], a                                    ; $4a01: $22
	inc  [hl]                                        ; $4a02: $34
	ld   h, a                                        ; $4a03: $67
	adc  b                                           ; $4a04: $88
	adc  c                                           ; $4a05: $89
	sbc  c                                           ; $4a06: $99
	xor  c                                           ; $4a07: $a9
	sbc  c                                           ; $4a08: $99
	cp   e                                           ; $4a09: $bb
	res  7, e                                        ; $4a0a: $cb $bb
	sbc  b                                           ; $4a0c: $98
	ld   d, h                                        ; $4a0d: $54
	ld   [hl-], a                                    ; $4a0e: $32
	inc  [hl]                                        ; $4a0f: $34
	ld   h, a                                        ; $4a10: $67
	ld   a, b                                        ; $4a11: $78
	sbc  d                                           ; $4a12: $9a
	xor  d                                           ; $4a13: $aa
	sbc  c                                           ; $4a14: $99
	xor  c                                           ; $4a15: $a9
	cp   d                                           ; $4a16: $ba
	cp   e                                           ; $4a17: $bb
	res  4, a                                        ; $4a18: $cb $a7
	ld   b, d                                        ; $4a1a: $42
	ld   [de], a                                     ; $4a1b: $12
	ld   b, [hl]                                     ; $4a1c: $46
	ld   a, b                                        ; $4a1d: $78
	ld   [hl], a                                     ; $4a1e: $77
	adc  b                                           ; $4a1f: $88
	xor  d                                           ; $4a20: $aa
	sbc  d                                           ; $4a21: $9a
	xor  d                                           ; $4a22: $aa
	xor  e                                           ; $4a23: $ab
	cp   e                                           ; $4a24: $bb
	cp   e                                           ; $4a25: $bb
	sub  a                                           ; $4a26: $97
	ld   b, d                                        ; $4a27: $42
	ld   [de], a                                     ; $4a28: $12
	ld   b, [hl]                                     ; $4a29: $46
	ld   a, b                                        ; $4a2a: $78
	sbc  b                                           ; $4a2b: $98
	adc  c                                           ; $4a2c: $89
	sbc  c                                           ; $4a2d: $99
	sbc  d                                           ; $4a2e: $9a
	xor  d                                           ; $4a2f: $aa
	cp   d                                           ; $4a30: $ba
	call z, $86ca                                    ; $4a31: $cc $ca $86
	ld   [hl-], a                                    ; $4a34: $32
	inc  h                                           ; $4a35: $24
	ld   d, a                                        ; $4a36: $57
	ld   [hl], a                                     ; $4a37: $77
	ld   [hl], a                                     ; $4a38: $77
	sbc  d                                           ; $4a39: $9a
	cp   c                                           ; $4a3a: $b9
	adc  b                                           ; $4a3b: $88
	sbc  e                                           ; $4a3c: $9b
	call $98cb                                       ; $4a3d: $cd $cb $98
	ld   h, h                                        ; $4a40: $64
	ld   [hl-], a                                    ; $4a41: $32
	dec  [hl]                                        ; $4a42: $35
	ld   a, b                                        ; $4a43: $78
	ld   a, b                                        ; $4a44: $78
	ld   a, c                                        ; $4a45: $79
	sbc  c                                           ; $4a46: $99
	xor  c                                           ; $4a47: $a9
	xor  c                                           ; $4a48: $a9
	xor  e                                           ; $4a49: $ab
	cp   e                                           ; $4a4a: $bb
	cp   h                                           ; $4a4b: $bc
	xor  b                                           ; $4a4c: $a8
	ld   d, d                                        ; $4a4d: $52
	ld   [de], a                                     ; $4a4e: $12
	ld   b, a                                        ; $4a4f: $47
	adc  b                                           ; $4a50: $88
	adc  b                                           ; $4a51: $88
	sbc  d                                           ; $4a52: $9a
	xor  d                                           ; $4a53: $aa
	sbc  c                                           ; $4a54: $99
	sbc  c                                           ; $4a55: $99
	xor  d                                           ; $4a56: $aa
	cp   e                                           ; $4a57: $bb
	xor  d                                           ; $4a58: $aa
	ld   [hl], l                                     ; $4a59: $75
	ld   [hl-], a                                    ; $4a5a: $32
	dec  [hl]                                        ; $4a5b: $35
	ld   a, b                                        ; $4a5c: $78
	ld   [hl], a                                     ; $4a5d: $77
	ld   a, b                                        ; $4a5e: $78
	xor  d                                           ; $4a5f: $aa
	xor  b                                           ; $4a60: $a8
	adc  c                                           ; $4a61: $89
	sbc  d                                           ; $4a62: $9a
	cp   h                                           ; $4a63: $bc
	cp   d                                           ; $4a64: $ba
	xor  b                                           ; $4a65: $a8
	ld   h, e                                        ; $4a66: $63
	ld   [hl+], a                                    ; $4a67: $22
	ld   [hl], $89                                   ; $4a68: $36 $89
	sbc  c                                           ; $4a6a: $99
	adc  c                                           ; $4a6b: $89
	sbc  d                                           ; $4a6c: $9a
	sbc  c                                           ; $4a6d: $99
	sbc  c                                           ; $4a6e: $99
	xor  d                                           ; $4a6f: $aa
	cp   e                                           ; $4a70: $bb
	xor  c                                           ; $4a71: $a9
	halt                                             ; $4a72: $76
	ld   b, d                                        ; $4a73: $42
	inc  h                                           ; $4a74: $24
	ld   l, b                                        ; $4a75: $68
	sbc  b                                           ; $4a76: $98
	sbc  b                                           ; $4a77: $98
	sbc  d                                           ; $4a78: $9a
	xor  c                                           ; $4a79: $a9
	sbc  c                                           ; $4a7a: $99
	xor  d                                           ; $4a7b: $aa
	xor  e                                           ; $4a7c: $ab
	xor  c                                           ; $4a7d: $a9
	sub  a                                           ; $4a7e: $97
	ld   d, e                                        ; $4a7f: $53
	ld   [hl+], a                                    ; $4a80: $22
	ld   b, a                                        ; $4a81: $47
	sbc  c                                           ; $4a82: $99
	sbc  b                                           ; $4a83: $98
	adc  b                                           ; $4a84: $88
	xor  d                                           ; $4a85: $aa
	xor  c                                           ; $4a86: $a9
	sbc  c                                           ; $4a87: $99
	cp   e                                           ; $4a88: $bb
	cp   e                                           ; $4a89: $bb
	sbc  b                                           ; $4a8a: $98
	ld   h, h                                        ; $4a8b: $64
	ld   [hl+], a                                    ; $4a8c: $22
	ld   [hl], $88                                   ; $4a8d: $36 $88
	sbc  c                                           ; $4a8f: $99
	adc  d                                           ; $4a90: $8a
	xor  d                                           ; $4a91: $aa
	sbc  b                                           ; $4a92: $98
	xor  c                                           ; $4a93: $a9
	xor  d                                           ; $4a94: $aa
	xor  d                                           ; $4a95: $aa
	sbc  b                                           ; $4a96: $98
	halt                                             ; $4a97: $76
	ld   b, d                                        ; $4a98: $42
	inc  h                                           ; $4a99: $24
	ld   a, b                                        ; $4a9a: $78
	adc  b                                           ; $4a9b: $88
	adc  c                                           ; $4a9c: $89
	xor  d                                           ; $4a9d: $aa
	xor  b                                           ; $4a9e: $a8
	adc  b                                           ; $4a9f: $88
	xor  d                                           ; $4aa0: $aa
	cp   d                                           ; $4aa1: $ba
	xor  c                                           ; $4aa2: $a9
	ld   [hl], l                                     ; $4aa3: $75
	ld   b, d                                        ; $4aa4: $42
	inc  [hl]                                        ; $4aa5: $34
	ld   l, b                                        ; $4aa6: $68
	adc  c                                           ; $4aa7: $89
	sbc  b                                           ; $4aa8: $98
	xor  c                                           ; $4aa9: $a9
	xor  d                                           ; $4aaa: $aa
	sbc  c                                           ; $4aab: $99
	xor  e                                           ; $4aac: $ab
	cp   e                                           ; $4aad: $bb
	xor  c                                           ; $4aae: $a9
	add  l                                           ; $4aaf: $85
	ld   b, d                                        ; $4ab0: $42
	inc  hl                                          ; $4ab1: $23
	ld   l, c                                        ; $4ab2: $69
	xor  d                                           ; $4ab3: $aa
	sbc  b                                           ; $4ab4: $98
	sbc  c                                           ; $4ab5: $99
	sbc  c                                           ; $4ab6: $99
	sbc  b                                           ; $4ab7: $98
	xor  d                                           ; $4ab8: $aa
	cp   e                                           ; $4ab9: $bb
	xor  c                                           ; $4aba: $a9
	ld   [hl], l                                     ; $4abb: $75
	ld   b, e                                        ; $4abc: $43
	inc  [hl]                                        ; $4abd: $34
	ld   e, b                                        ; $4abe: $58
	sbc  d                                           ; $4abf: $9a
	xor  c                                           ; $4ac0: $a9
	xor  c                                           ; $4ac1: $a9
	adc  b                                           ; $4ac2: $88
	sbc  d                                           ; $4ac3: $9a
	cp   e                                           ; $4ac4: $bb
	cp   d                                           ; $4ac5: $ba
	sbc  b                                           ; $4ac6: $98
	ld   [hl], l                                     ; $4ac7: $75
	ld   b, e                                        ; $4ac8: $43
	inc  [hl]                                        ; $4ac9: $34
	ld   e, b                                        ; $4aca: $58
	xor  d                                           ; $4acb: $aa
	xor  c                                           ; $4acc: $a9
	xor  b                                           ; $4acd: $a8
	adc  b                                           ; $4ace: $88
	adc  c                                           ; $4acf: $89
	xor  h                                           ; $4ad0: $ac
	cp   d                                           ; $4ad1: $ba
	sbc  c                                           ; $4ad2: $99
	ld   [hl], l                                     ; $4ad3: $75
	ld   [hl-], a                                    ; $4ad4: $32
	inc  h                                           ; $4ad5: $24
	ld   l, c                                        ; $4ad6: $69
	xor  d                                           ; $4ad7: $aa
	sbc  d                                           ; $4ad8: $9a
	sbc  c                                           ; $4ad9: $99
	xor  c                                           ; $4ada: $a9
	xor  d                                           ; $4adb: $aa
	xor  e                                           ; $4adc: $ab
	xor  e                                           ; $4add: $ab
	xor  b                                           ; $4ade: $a8
	ld   [hl], h                                     ; $4adf: $74
	ld   b, d                                        ; $4ae0: $42
	dec  [hl]                                        ; $4ae1: $35
	ld   a, c                                        ; $4ae2: $79
	sbc  e                                           ; $4ae3: $9b
	xor  d                                           ; $4ae4: $aa
	sbc  b                                           ; $4ae5: $98
	adc  b                                           ; $4ae6: $88
	sbc  c                                           ; $4ae7: $99
	xor  e                                           ; $4ae8: $ab
	cp   e                                           ; $4ae9: $bb
	sub  a                                           ; $4aea: $97
	ld   d, e                                        ; $4aeb: $53
	ld   [hl+], a                                    ; $4aec: $22
	ld   b, [hl]                                     ; $4aed: $46
	adc  c                                           ; $4aee: $89
	xor  d                                           ; $4aef: $aa
	sbc  d                                           ; $4af0: $9a
	sbc  c                                           ; $4af1: $99
	adc  c                                           ; $4af2: $89
	sbc  c                                           ; $4af3: $99
	xor  e                                           ; $4af4: $ab
	xor  d                                           ; $4af5: $aa
	add  [hl]                                        ; $4af6: $86
	ld   b, e                                        ; $4af7: $43
	inc  h                                           ; $4af8: $24
	ld   d, a                                        ; $4af9: $57
	sbc  c                                           ; $4afa: $99
	xor  d                                           ; $4afb: $aa
	cp   d                                           ; $4afc: $ba
	sbc  c                                           ; $4afd: $99
	adc  c                                           ; $4afe: $89
	sbc  d                                           ; $4aff: $9a
	cp   e                                           ; $4b00: $bb
	xor  b                                           ; $4b01: $a8
	ld   h, h                                        ; $4b02: $64
	inc  sp                                          ; $4b03: $33
	inc  h                                           ; $4b04: $24
	ld   l, c                                        ; $4b05: $69
	sbc  d                                           ; $4b06: $9a
	sbc  c                                           ; $4b07: $99
	sbc  c                                           ; $4b08: $99
	sbc  c                                           ; $4b09: $99
	adc  c                                           ; $4b0a: $89
	cp   e                                           ; $4b0b: $bb
	xor  d                                           ; $4b0c: $aa
	sub  [hl]                                        ; $4b0d: $96
	ld   d, e                                        ; $4b0e: $53
	ld   b, e                                        ; $4b0f: $43
	ld   b, [hl]                                     ; $4b10: $46
	sbc  d                                           ; $4b11: $9a
	sbc  d                                           ; $4b12: $9a
	sbc  d                                           ; $4b13: $9a
	sbc  c                                           ; $4b14: $99
	sbc  c                                           ; $4b15: $99
	xor  d                                           ; $4b16: $aa
	cp   d                                           ; $4b17: $ba
	xor  c                                           ; $4b18: $a9
	ld   [hl], l                                     ; $4b19: $75
	inc  sp                                          ; $4b1a: $33
	inc  hl                                          ; $4b1b: $23
	ld   d, a                                        ; $4b1c: $57
	cp   d                                           ; $4b1d: $ba
	xor  c                                           ; $4b1e: $a9
	adc  b                                           ; $4b1f: $88
	adc  d                                           ; $4b20: $8a
	sbc  d                                           ; $4b21: $9a
	sbc  d                                           ; $4b22: $9a
	xor  d                                           ; $4b23: $aa
	and  a                                           ; $4b24: $a7
	ld   h, e                                        ; $4b25: $63
	ld   b, e                                        ; $4b26: $43
	ld   d, [hl]                                     ; $4b27: $56
	ld   a, d                                        ; $4b28: $7a
	sbc  d                                           ; $4b29: $9a
	xor  d                                           ; $4b2a: $aa
	sbc  b                                           ; $4b2b: $98
	add  a                                           ; $4b2c: $87
	xor  d                                           ; $4b2d: $aa
	cp   e                                           ; $4b2e: $bb
	sbc  b                                           ; $4b2f: $98
	halt                                             ; $4b30: $76
	ld   b, h                                        ; $4b31: $44
	inc  sp                                          ; $4b32: $33
	ld   e, b                                        ; $4b33: $58
	xor  d                                           ; $4b34: $aa
	cp   c                                           ; $4b35: $b9
	sbc  c                                           ; $4b36: $99
	adc  c                                           ; $4b37: $89
	adc  c                                           ; $4b38: $89
	sbc  d                                           ; $4b39: $9a
	xor  d                                           ; $4b3a: $aa
	sub  [hl]                                        ; $4b3b: $96
	ld   d, e                                        ; $4b3c: $53
	inc  [hl]                                        ; $4b3d: $34
	ld   d, a                                        ; $4b3e: $57
	sbc  d                                           ; $4b3f: $9a
	xor  c                                           ; $4b40: $a9
	sbc  d                                           ; $4b41: $9a
	sbc  c                                           ; $4b42: $99
	xor  b                                           ; $4b43: $a8
	sbc  c                                           ; $4b44: $99
	sbc  d                                           ; $4b45: $9a
	sbc  b                                           ; $4b46: $98
	ld   h, h                                        ; $4b47: $64
	inc  sp                                          ; $4b48: $33
	dec  [hl]                                        ; $4b49: $35
	adc  d                                           ; $4b4a: $8a
	xor  e                                           ; $4b4b: $ab
	cp   c                                           ; $4b4c: $b9
	sbc  c                                           ; $4b4d: $99
	sbc  b                                           ; $4b4e: $98
	adc  d                                           ; $4b4f: $8a
	sbc  d                                           ; $4b50: $9a
	sbc  c                                           ; $4b51: $99
	ld   [hl], l                                     ; $4b52: $75
	ld   b, e                                        ; $4b53: $43
	inc  [hl]                                        ; $4b54: $34
	ld   a, c                                        ; $4b55: $79
	cp   e                                           ; $4b56: $bb
	sbc  c                                           ; $4b57: $99
	sbc  c                                           ; $4b58: $99
	xor  c                                           ; $4b59: $a9
	sbc  c                                           ; $4b5a: $99
	sbc  c                                           ; $4b5b: $99
	xor  c                                           ; $4b5c: $a9
	add  [hl]                                        ; $4b5d: $86
	ld   b, e                                        ; $4b5e: $43
	inc  [hl]                                        ; $4b5f: $34
	ld   d, a                                        ; $4b60: $57
	xor  e                                           ; $4b61: $ab
	xor  d                                           ; $4b62: $aa
	adc  c                                           ; $4b63: $89
	sbc  d                                           ; $4b64: $9a
	xor  d                                           ; $4b65: $aa
	xor  d                                           ; $4b66: $aa
	xor  d                                           ; $4b67: $aa
	sub  [hl]                                        ; $4b68: $96
	ld   d, h                                        ; $4b69: $54
	ld   b, h                                        ; $4b6a: $44
	ld   d, [hl]                                     ; $4b6b: $56
	adc  e                                           ; $4b6c: $8b
	xor  d                                           ; $4b6d: $aa
	sbc  c                                           ; $4b6e: $99
	sbc  c                                           ; $4b6f: $99
	xor  c                                           ; $4b70: $a9
	sbc  c                                           ; $4b71: $99
	xor  d                                           ; $4b72: $aa
	sub  a                                           ; $4b73: $97
	ld   d, h                                        ; $4b74: $54
	inc  [hl]                                        ; $4b75: $34
	ld   b, a                                        ; $4b76: $47
	sbc  d                                           ; $4b77: $9a
	cp   d                                           ; $4b78: $ba
	xor  c                                           ; $4b79: $a9
	xor  d                                           ; $4b7a: $aa
	sbc  c                                           ; $4b7b: $99
	adc  c                                           ; $4b7c: $89
	xor  d                                           ; $4b7d: $aa
	add  [hl]                                        ; $4b7e: $86
	ld   d, h                                        ; $4b7f: $54
	ld   b, l                                        ; $4b80: $45
	ld   d, a                                        ; $4b81: $57
	sbc  e                                           ; $4b82: $9b
	xor  d                                           ; $4b83: $aa
	sbc  c                                           ; $4b84: $99
	sbc  d                                           ; $4b85: $9a
	sbc  c                                           ; $4b86: $99
	sbc  c                                           ; $4b87: $99
	xor  c                                           ; $4b88: $a9
	add  [hl]                                        ; $4b89: $86
	ld   d, h                                        ; $4b8a: $54
	ld   b, l                                        ; $4b8b: $45
	ld   h, [hl]                                     ; $4b8c: $66
	adc  c                                           ; $4b8d: $89
	cp   e                                           ; $4b8e: $bb
	xor  d                                           ; $4b8f: $aa
	adc  b                                           ; $4b90: $88
	sbc  d                                           ; $4b91: $9a
	xor  c                                           ; $4b92: $a9
	sbc  c                                           ; $4b93: $99
	halt                                             ; $4b94: $76
	ld   d, l                                        ; $4b95: $55
	ld   d, l                                        ; $4b96: $55
	ld   h, a                                        ; $4b97: $67
	sbc  d                                           ; $4b98: $9a
	sbc  d                                           ; $4b99: $9a
	sbc  d                                           ; $4b9a: $9a
	sbc  c                                           ; $4b9b: $99
	xor  c                                           ; $4b9c: $a9
	sbc  d                                           ; $4b9d: $9a
	sbc  b                                           ; $4b9e: $98
	halt                                             ; $4b9f: $76
	ld   b, h                                        ; $4ba0: $44
	ld   b, l                                        ; $4ba1: $45
	ld   h, a                                        ; $4ba2: $67
	sbc  d                                           ; $4ba3: $9a
	cp   d                                           ; $4ba4: $ba
	cp   d                                           ; $4ba5: $ba
	sbc  b                                           ; $4ba6: $98
	sbc  d                                           ; $4ba7: $9a
	xor  d                                           ; $4ba8: $aa
	sbc  b                                           ; $4ba9: $98
	ld   h, l                                        ; $4baa: $65
	ld   b, h                                        ; $4bab: $44
	ld   d, l                                        ; $4bac: $55
	ld   h, a                                        ; $4bad: $67
	sbc  c                                           ; $4bae: $99
	sbc  c                                           ; $4baf: $99
	sbc  d                                           ; $4bb0: $9a
	xor  c                                           ; $4bb1: $a9
	sbc  d                                           ; $4bb2: $9a
	xor  d                                           ; $4bb3: $aa
	sub  a                                           ; $4bb4: $97
	ld   d, h                                        ; $4bb5: $54
	ld   b, h                                        ; $4bb6: $44
	ld   d, l                                        ; $4bb7: $55
	ld   h, a                                        ; $4bb8: $67
	sbc  d                                           ; $4bb9: $9a
	cp   e                                           ; $4bba: $bb
	cp   c                                           ; $4bbb: $b9
	sbc  d                                           ; $4bbc: $9a
	xor  c                                           ; $4bbd: $a9
	sbc  c                                           ; $4bbe: $99
	add  [hl]                                        ; $4bbf: $86
	ld   h, l                                        ; $4bc0: $65
	ld   b, l                                        ; $4bc1: $45
	ld   d, [hl]                                     ; $4bc2: $56
	ld   a, b                                        ; $4bc3: $78
	sbc  e                                           ; $4bc4: $9b
	xor  d                                           ; $4bc5: $aa
	sbc  c                                           ; $4bc6: $99
	xor  d                                           ; $4bc7: $aa
	cp   d                                           ; $4bc8: $ba
	sbc  b                                           ; $4bc9: $98
	halt                                             ; $4bca: $76
	ld   d, h                                        ; $4bcb: $54
	ld   b, l                                        ; $4bcc: $45
	ld   d, [hl]                                     ; $4bcd: $56
	ld   a, c                                        ; $4bce: $79
	sbc  e                                           ; $4bcf: $9b
	cp   e                                           ; $4bd0: $bb
	sbc  c                                           ; $4bd1: $99
	xor  d                                           ; $4bd2: $aa
	xor  d                                           ; $4bd3: $aa
	sbc  b                                           ; $4bd4: $98
	ld   h, l                                        ; $4bd5: $65
	ld   b, h                                        ; $4bd6: $44
	ld   b, l                                        ; $4bd7: $45
	ld   h, a                                        ; $4bd8: $67
	adc  d                                           ; $4bd9: $8a
	cp   d                                           ; $4bda: $ba
	xor  d                                           ; $4bdb: $aa
	xor  d                                           ; $4bdc: $aa
	xor  e                                           ; $4bdd: $ab
	xor  d                                           ; $4bde: $aa
	sub  [hl]                                        ; $4bdf: $96
	ld   d, h                                        ; $4be0: $54
	ld   b, h                                        ; $4be1: $44
	ld   d, [hl]                                     ; $4be2: $56
	ld   h, a                                        ; $4be3: $67
	adc  c                                           ; $4be4: $89
	cp   e                                           ; $4be5: $bb
	xor  d                                           ; $4be6: $aa
	xor  d                                           ; $4be7: $aa
	xor  d                                           ; $4be8: $aa
	sbc  b                                           ; $4be9: $98
	halt                                             ; $4bea: $76
	ld   d, h                                        ; $4beb: $54
	inc  [hl]                                        ; $4bec: $34
	ld   d, a                                        ; $4bed: $57
	adc  c                                           ; $4bee: $89
	xor  e                                           ; $4bef: $ab
	cp   d                                           ; $4bf0: $ba
	xor  c                                           ; $4bf1: $a9
	xor  d                                           ; $4bf2: $aa
	xor  d                                           ; $4bf3: $aa
	add  a                                           ; $4bf4: $87
	ld   d, h                                        ; $4bf5: $54
	ld   b, h                                        ; $4bf6: $44
	ld   d, l                                        ; $4bf7: $55
	ld   l, b                                        ; $4bf8: $68
	sbc  d                                           ; $4bf9: $9a
	xor  c                                           ; $4bfa: $a9
	xor  c                                           ; $4bfb: $a9
	xor  e                                           ; $4bfc: $ab
	cp   d                                           ; $4bfd: $ba
	sbc  c                                           ; $4bfe: $99
	halt                                             ; $4bff: $76
	ld   b, h                                        ; $4c00: $44
	ld   b, h                                        ; $4c01: $44
	ld   d, [hl]                                     ; $4c02: $56
	ld   a, c                                        ; $4c03: $79
	cp   e                                           ; $4c04: $bb
	xor  e                                           ; $4c05: $ab
	xor  d                                           ; $4c06: $aa
	xor  e                                           ; $4c07: $ab
	xor  d                                           ; $4c08: $aa
	sub  a                                           ; $4c09: $97
	ld   h, h                                        ; $4c0a: $64
	inc  sp                                          ; $4c0b: $33
	ld   d, [hl]                                     ; $4c0c: $56
	ld   l, b                                        ; $4c0d: $68
	adc  c                                           ; $4c0e: $89
	xor  d                                           ; $4c0f: $aa
	cp   d                                           ; $4c10: $ba
	xor  d                                           ; $4c11: $aa
	xor  d                                           ; $4c12: $aa
	xor  b                                           ; $4c13: $a8
	ld   [hl], l                                     ; $4c14: $75
	ld   b, e                                        ; $4c15: $43
	ld   b, h                                        ; $4c16: $44
	ld   d, [hl]                                     ; $4c17: $56
	adc  d                                           ; $4c18: $8a
	cp   e                                           ; $4c19: $bb
	cp   d                                           ; $4c1a: $ba
	sbc  d                                           ; $4c1b: $9a
	xor  d                                           ; $4c1c: $aa
	xor  b                                           ; $4c1d: $a8
	add  [hl]                                        ; $4c1e: $86
	ld   d, h                                        ; $4c1f: $54
	ld   b, h                                        ; $4c20: $44
	ld   d, [hl]                                     ; $4c21: $56
	ld   h, a                                        ; $4c22: $67
	adc  c                                           ; $4c23: $89
	cp   h                                           ; $4c24: $bc
	cp   e                                           ; $4c25: $bb
	sbc  d                                           ; $4c26: $9a
	sbc  d                                           ; $4c27: $9a
	sub  a                                           ; $4c28: $97
	ld   d, l                                        ; $4c29: $55
	ld   b, h                                        ; $4c2a: $44
	ld   d, l                                        ; $4c2b: $55
	ld   d, [hl]                                     ; $4c2c: $56
	adc  d                                           ; $4c2d: $8a
	cp   h                                           ; $4c2e: $bc
	cp   d                                           ; $4c2f: $ba
	sbc  d                                           ; $4c30: $9a
	xor  d                                           ; $4c31: $aa
	sbc  b                                           ; $4c32: $98
	ld   h, l                                        ; $4c33: $65
	ld   d, h                                        ; $4c34: $54
	ld   b, h                                        ; $4c35: $44
	ld   d, l                                        ; $4c36: $55
	ld   a, c                                        ; $4c37: $79
	cp   h                                           ; $4c38: $bc
	xor  d                                           ; $4c39: $aa
	xor  d                                           ; $4c3a: $aa
	cp   e                                           ; $4c3b: $bb
	and  a                                           ; $4c3c: $a7
	ld   [hl], l                                     ; $4c3d: $75
	ld   d, h                                        ; $4c3e: $54
	ld   b, h                                        ; $4c3f: $44
	ld   d, l                                        ; $4c40: $55
	ld   l, b                                        ; $4c41: $68
	sbc  h                                           ; $4c42: $9c
	cp   h                                           ; $4c43: $bc
	xor  d                                           ; $4c44: $aa
	xor  d                                           ; $4c45: $aa
	sbc  c                                           ; $4c46: $99
	halt                                             ; $4c47: $76
	ld   d, l                                        ; $4c48: $55
	ld   b, h                                        ; $4c49: $44
	ld   b, l                                        ; $4c4a: $45
	ld   l, b                                        ; $4c4b: $68
	xor  h                                           ; $4c4c: $ac
	res  7, c                                        ; $4c4d: $cb $b9
	xor  d                                           ; $4c4f: $aa
	cp   d                                           ; $4c50: $ba
	add  [hl]                                        ; $4c51: $86
	ld   b, h                                        ; $4c52: $44
	ld   b, l                                        ; $4c53: $45
	ld   d, l                                        ; $4c54: $55
	ld   d, [hl]                                     ; $4c55: $56
	sbc  e                                           ; $4c56: $9b
	call z, $bacb                                    ; $4c57: $cc $cb $ba
	xor  d                                           ; $4c5a: $aa
	add  a                                           ; $4c5b: $87
	ld   d, h                                        ; $4c5c: $54
	ld   b, h                                        ; $4c5d: $44
	ld   b, l                                        ; $4c5e: $45
	ld   d, [hl]                                     ; $4c5f: $56
	adc  d                                           ; $4c60: $8a
	call z, $abba                                    ; $4c61: $cc $ba $ab
	cp   e                                           ; $4c64: $bb
	add  a                                           ; $4c65: $87
	ld   h, l                                        ; $4c66: $65
	ld   b, h                                        ; $4c67: $44
	ld   b, h                                        ; $4c68: $44
	ld   d, l                                        ; $4c69: $55
	adc  e                                           ; $4c6a: $8b
	call z, $abbb                                    ; $4c6b: $cc $bb $ab
	cp   d                                           ; $4c6e: $ba
	sub  [hl]                                        ; $4c6f: $96
	ld   d, h                                        ; $4c70: $54
	ld   b, h                                        ; $4c71: $44
	ld   b, h                                        ; $4c72: $44
	ld   b, l                                        ; $4c73: $45
	adc  e                                           ; $4c74: $8b
	call z, $bbba                                    ; $4c75: $cc $ba $bb
	cp   d                                           ; $4c78: $ba
	sub  [hl]                                        ; $4c79: $96
	ld   d, h                                        ; $4c7a: $54
	ld   b, h                                        ; $4c7b: $44
	ld   b, h                                        ; $4c7c: $44
	ld   b, l                                        ; $4c7d: $45
	adc  e                                           ; $4c7e: $8b
	db   $dd                                         ; $4c7f: $dd
	call z, $babb                                    ; $4c80: $cc $bb $ba
	add  [hl]                                        ; $4c83: $86
	ld   d, h                                        ; $4c84: $54
	ld   b, h                                        ; $4c85: $44
	ld   b, h                                        ; $4c86: $44
	ld   b, [hl]                                     ; $4c87: $46
	sbc  h                                           ; $4c88: $9c
	call z, $bbbc                                    ; $4c89: $cc $bc $bb
	ret                                              ; $4c8c: $c9


	add  l                                           ; $4c8d: $85
	ld   b, h                                        ; $4c8e: $44
	ld   b, h                                        ; $4c8f: $44
	ld   b, l                                        ; $4c90: $45
	ld   d, a                                        ; $4c91: $57
	sbc  e                                           ; $4c92: $9b
	call z, $cbbc                                    ; $4c93: $cc $bc $cb
	cp   d                                           ; $4c96: $ba
	ld   [hl], l                                     ; $4c97: $75
	ld   b, e                                        ; $4c98: $43
	inc  [hl]                                        ; $4c99: $34
	ld   d, l                                        ; $4c9a: $55
	ld   d, a                                        ; $4c9b: $57
	xor  h                                           ; $4c9c: $ac
	call c, $bcbb                                    ; $4c9d: $dc $bb $bc
	cp   c                                           ; $4ca0: $b9
	ld   [hl], l                                     ; $4ca1: $75
	inc  sp                                          ; $4ca2: $33
	ld   b, h                                        ; $4ca3: $44
	ld   b, h                                        ; $4ca4: $44
	ld   e, b                                        ; $4ca5: $58
	cp   l                                           ; $4ca6: $bd
	call z, $cccc                                    ; $4ca7: $cc $cc $cc
	sub  a                                           ; $4caa: $97
	ld   d, h                                        ; $4cab: $54
	ld   b, h                                        ; $4cac: $44
	ld   b, h                                        ; $4cad: $44
	ld   b, h                                        ; $4cae: $44
	ld   l, c                                        ; $4caf: $69
	call $bccc                                       ; $4cb0: $cd $cc $bc
	cp   e                                           ; $4cb3: $bb
	sub  a                                           ; $4cb4: $97
	ld   b, e                                        ; $4cb5: $43
	inc  [hl]                                        ; $4cb6: $34
	ld   b, h                                        ; $4cb7: $44
	ld   b, l                                        ; $4cb8: $45
	ld   a, e                                        ; $4cb9: $7b
	db   $dd                                         ; $4cba: $dd
	call z, $cacd                                    ; $4cbb: $cc $cd $ca
	ld   [hl], l                                     ; $4cbe: $75
	inc  sp                                          ; $4cbf: $33
	ld   b, h                                        ; $4cc0: $44
	ld   b, h                                        ; $4cc1: $44
	ld   d, a                                        ; $4cc2: $57
	xor  h                                           ; $4cc3: $ac
	call $dccc                                       ; $4cc4: $cd $cc $dc
	xor  c                                           ; $4cc7: $a9
	ld   h, h                                        ; $4cc8: $64
	inc  sp                                          ; $4cc9: $33
	inc  sp                                          ; $4cca: $33
	inc  sp                                          ; $4ccb: $33
	ld   l, d                                        ; $4ccc: $6a
	db   $dd                                         ; $4ccd: $dd
	set  1, h                                        ; $4cce: $cb $cc
	db   $db                                         ; $4cd0: $db
	and  [hl]                                        ; $4cd1: $a6
	ld   [hl-], a                                    ; $4cd2: $32
	inc  sp                                          ; $4cd3: $33
	ld   b, h                                        ; $4cd4: $44
	ld   b, [hl]                                     ; $4cd5: $46
	adc  e                                           ; $4cd6: $8b
	db   $ed                                         ; $4cd7: $ed
	call z, $c9dd                                    ; $4cd8: $cc $dd $c9
	ld   h, h                                        ; $4cdb: $64
	inc  sp                                          ; $4cdc: $33
	inc  sp                                          ; $4cdd: $33
	inc  [hl]                                        ; $4cde: $34
	ld   e, c                                        ; $4cdf: $59
	adc  $dd                                         ; $4ce0: $ce $dd
	call z, $a7cc                                    ; $4ce2: $cc $cc $a7
	ld   b, e                                        ; $4ce5: $43
	inc  sp                                          ; $4ce6: $33
	ld   b, e                                        ; $4ce7: $43
	dec  [hl]                                        ; $4ce8: $35
	sbc  h                                           ; $4ce9: $9c
	db   $dd                                         ; $4cea: $dd
	call z, $bacc                                    ; $4ceb: $cc $cc $ba
	ld   h, h                                        ; $4cee: $64
	inc  sp                                          ; $4cef: $33
	inc  sp                                          ; $4cf0: $33
	inc  sp                                          ; $4cf1: $33
	ld   e, d                                        ; $4cf2: $5a
	call $cccc                                       ; $4cf3: $cd $cc $cc
	db   $eb                                         ; $4cf6: $eb
	sub  l                                           ; $4cf7: $95
	ld   [hl-], a                                    ; $4cf8: $32
	inc  h                                           ; $4cf9: $24
	ld   b, e                                        ; $4cfa: $43
	ld   b, [hl]                                     ; $4cfb: $46
	sbc  l                                           ; $4cfc: $9d
	db   $ec                                         ; $4cfd: $ec
	call z, $b7ed                                    ; $4cfe: $cc $ed $b7
	ld   b, e                                        ; $4d01: $43
	inc  hl                                          ; $4d02: $23
	ld   b, e                                        ; $4d03: $43
	inc  [hl]                                        ; $4d04: $34
	ld   a, e                                        ; $4d05: $7b
	db   $ed                                         ; $4d06: $ed
	call z, $dacc                                    ; $4d07: $cc $cc $da
	ld   [hl], h                                     ; $4d0a: $74
	ld   [hl+], a                                    ; $4d0b: $22
	inc  [hl]                                        ; $4d0c: $34
	inc  sp                                          ; $4d0d: $33
	ld   e, b                                        ; $4d0e: $58
	adc  $ed                                         ; $4d0f: $ce $ed
	call c, $96dc                                    ; $4d11: $dc $dc $96
	ld   [hl-], a                                    ; $4d14: $32
	inc  hl                                          ; $4d15: $23
	inc  sp                                          ; $4d16: $33
	ld   [hl], $ac                                   ; $4d17: $36 $ac
	db   $ec                                         ; $4d19: $ec
	call z, $b7cd                                    ; $4d1a: $cc $cd $b7
	ld   b, e                                        ; $4d1d: $43
	inc  hl                                          ; $4d1e: $23
	inc  sp                                          ; $4d1f: $33
	dec  [hl]                                        ; $4d20: $35
	sbc  h                                           ; $4d21: $9c
	db   $ed                                         ; $4d22: $ed
	call z, $c9cd                                    ; $4d23: $cc $cd $c9
	ld   d, e                                        ; $4d26: $53
	ld   [hl+], a                                    ; $4d27: $22
	inc  sp                                          ; $4d28: $33
	inc  sp                                          ; $4d29: $33
	ld   a, d                                        ; $4d2a: $7a
	sbc  $dc                                         ; $4d2b: $de $dc
	adc  $da                                         ; $4d2d: $ce $da
	ld   h, e                                        ; $4d2f: $63
	ld   [hl+], a                                    ; $4d30: $22
	inc  sp                                          ; $4d31: $33
	inc  sp                                          ; $4d32: $33
	ld   e, c                                        ; $4d33: $59
	adc  $dc                                         ; $4d34: $ce $dc
	call c, $84db                                    ; $4d36: $dc $db $84
	ld   hl, $3323                                   ; $4d39: $21 $23 $33
	ld   e, b                                        ; $4d3c: $58
	cp   [hl]                                        ; $4d3d: $be
	db   $ec                                         ; $4d3e: $ec

Call_0e8_4d3f:
	call c, $95ec                                    ; $4d3f: $dc $ec $95
	ld   hl, $3313                                   ; $4d42: $21 $13 $33
	ld   b, a                                        ; $4d45: $47
	xor  h                                           ; $4d46: $ac
	db   $ed                                         ; $4d47: $ed
	db   $dd                                         ; $4d48: $dd
	db   $ec                                         ; $4d49: $ec
	sub  [hl]                                        ; $4d4a: $96
	ld   hl, $3312                                   ; $4d4b: $21 $12 $33
	ld   b, [hl]                                     ; $4d4e: $46
	xor  h                                           ; $4d4f: $ac
	xor  $de                                         ; $4d50: $ee $de
	db   $ed                                         ; $4d52: $ed
	and  [hl]                                        ; $4d53: $a6
	ld   hl, $2312                                   ; $4d54: $21 $12 $23
	ld   b, [hl]                                     ; $4d57: $46
	xor  l                                           ; $4d58: $ad
	cp   $ee                                         ; $4d59: $fe $ee
	db   $ed                                         ; $4d5b: $ed
	and  a                                           ; $4d5c: $a7
	ld   sp, $2202                                   ; $4d5d: $31 $02 $22
	ld   [hl], $ac                                   ; $4d60: $36 $ac
	cp   $ed                                         ; $4d62: $fe $ed
	xor  $a6                                         ; $4d64: $ee $a6
	ld   hl, $2311                                   ; $4d66: $21 $11 $23
	ld   b, [hl]                                     ; $4d69: $46
	xor  h                                           ; $4d6a: $ac
	xor  $dd                                         ; $4d6b: $ee $dd
	db   $ed                                         ; $4d6d: $ed
	or   [hl]                                        ; $4d6e: $b6
	ld   hl, $2312                                   ; $4d6f: $21 $12 $23
	ld   b, a                                        ; $4d72: $47
	xor  l                                           ; $4d73: $ad
	db   $ed                                         ; $4d74: $ed
	db   $dd                                         ; $4d75: $dd
	db   $ed                                         ; $4d76: $ed
	and  [hl]                                        ; $4d77: $a6
	ld   hl, $2302                                   ; $4d78: $21 $02 $23
	ld   b, a                                        ; $4d7b: $47
	xor  l                                           ; $4d7c: $ad
	xor  $ef                                         ; $4d7d: $ee $ef
	db   $fc                                         ; $4d7f: $fc
	sub  l                                           ; $4d80: $95
	ld   de, $2312                                   ; $4d81: $11 $12 $23
	ld   e, c                                        ; $4d84: $59
	call $efee                                       ; $4d85: $cd $ee $ef
	ei                                               ; $4d88: $fb
	ld   [hl], e                                     ; $4d89: $73
	ld   de, $2412                                   ; $4d8a: $11 $12 $24
	ld   a, d                                        ; $4d8d: $7a
	call $eeee                                       ; $4d8e: $cd $ee $ee
	db   $eb                                         ; $4d91: $eb
	ld   [hl], e                                     ; $4d92: $73
	ld   de, $2411                                   ; $4d93: $11 $11 $24
	adc  e                                           ; $4d96: $8b
	sbc  $dd                                         ; $4d97: $de $dd
	rst  $28                                         ; $4d99: $ef
	jp   c, $1152                                    ; $4d9a: $da $52 $11

	ld   de, $9d25                                   ; $4d9d: $11 $25 $9d
	xor  $de                                         ; $4da0: $ee $de
	rst  $28                                         ; $4da2: $ef
	ret  z                                           ; $4da3: $c8

	ld   sp, $1211                                   ; $4da4: $31 $11 $12
	ld   b, a                                        ; $4da7: $47
	xor  l                                           ; $4da8: $ad
	xor  $ef                                         ; $4da9: $ee $ef
	db   $ed                                         ; $4dab: $ed
	sub  l                                           ; $4dac: $95
	ld   hl, $2311                                   ; $4dad: $21 $11 $23
	ld   e, b                                        ; $4db0: $58
	cp   [hl]                                        ; $4db1: $be
	xor  $fe                                         ; $4db2: $ee $fe
	db   $eb                                         ; $4db4: $eb
	ld   [hl], e                                     ; $4db5: $73
	ld   bc, $3512                                   ; $4db6: $01 $12 $35
	ld   a, d                                        ; $4db9: $7a
	call $eeef                                       ; $4dba: $cd $ef $ee
	ret                                              ; $4dbd: $c9


	ld   d, d                                        ; $4dbe: $52
	ld   de, $3711                                   ; $4dbf: $11 $11 $37
	xor  l                                           ; $4dc2: $ad
	db   $ed                                         ; $4dc3: $ed
	sbc  $fd                                         ; $4dc4: $de $fd
	or   [hl]                                        ; $4dc6: $b6
	ld   sp, $2301                                   ; $4dc7: $31 $01 $23
	ld   e, b                                        ; $4dca: $58
	call $eeee                                       ; $4dcb: $cd $ee $ee
	db   $db                                         ; $4dce: $db
	add  h                                           ; $4dcf: $84
	ld   hl, $2411                                   ; $4dd0: $21 $11 $24
	adc  e                                           ; $4dd3: $8b
	call $eede                                       ; $4dd4: $cd $de $ee
	jp   z, $1153                                    ; $4dd7: $ca $53 $11

	ld   de, $9c36                                   ; $4dda: $11 $36 $9c
	db   $dd                                         ; $4ddd: $dd
	xor  $ed                                         ; $4dde: $ee $ed
	and  a                                           ; $4de0: $a7
	ld   [hl-], a                                    ; $4de1: $32
	ld   de, $5912                                   ; $4de2: $11 $12 $59
	call $dedc                                       ; $4de5: $cd $dc $de
	db   $eb                                         ; $4de8: $eb
	add  h                                           ; $4de9: $84
	ld   hl, $2511                                   ; $4dea: $21 $11 $25
	adc  e                                           ; $4ded: $8b
	db   $dd                                         ; $4dee: $dd
	call c, $b9ed                                    ; $4def: $dc $ed $b9
	ld   h, e                                        ; $4df2: $63
	ld   hl, $4712                                   ; $4df3: $21 $12 $47
	xor  h                                           ; $4df6: $ac
	call c, $cccc                                    ; $4df7: $dc $cc $cc
	sub  a                                           ; $4dfa: $97
	ld   b, e                                        ; $4dfb: $43
	ld   [hl+], a                                    ; $4dfc: $22
	inc  hl                                          ; $4dfd: $23
	ld   l, c                                        ; $4dfe: $69
	call z, $ccdc                                    ; $4dff: $cc $dc $cc
	jp   z, $3375                                    ; $4e02: $ca $75 $33

	ld   [hl+], a                                    ; $4e05: $22
	dec  [hl]                                        ; $4e06: $35
	adc  d                                           ; $4e07: $8a
	call z, $ddcc                                    ; $4e08: $cc $cc $dd
	cp   c                                           ; $4e0b: $b9
	ld   h, h                                        ; $4e0c: $64
	ld   [hl-], a                                    ; $4e0d: $32
	inc  hl                                          ; $4e0e: $23
	ld   e, b                                        ; $4e0f: $58
	xor  h                                           ; $4e10: $ac
	cp   e                                           ; $4e11: $bb
	cp   h                                           ; $4e12: $bc
	call z, Call_0e8_5497                            ; $4e13: $cc $97 $54
	ld   [hl-], a                                    ; $4e16: $32
	inc  h                                           ; $4e17: $24
	ld   l, c                                        ; $4e18: $69
	cp   h                                           ; $4e19: $bc
	cp   e                                           ; $4e1a: $bb
	xor  h                                           ; $4e1b: $ac
	res  2, [hl]                                     ; $4e1c: $cb $96
	ld   b, e                                        ; $4e1e: $43
	ld   [hl-], a                                    ; $4e1f: $32
	ld   [hl], $8b                                   ; $4e20: $36 $8b
	call c, $aaba                                    ; $4e22: $dc $ba $aa
	xor  c                                           ; $4e25: $a9
	ld   [hl], l                                     ; $4e26: $75
	ld   b, h                                        ; $4e27: $44
	inc  sp                                          ; $4e28: $33
	ld   b, a                                        ; $4e29: $47
	xor  e                                           ; $4e2a: $ab
	res  5, d                                        ; $4e2b: $cb $aa
	xor  d                                           ; $4e2d: $aa
	sub  a                                           ; $4e2e: $97
	ld   h, l                                        ; $4e2f: $65
	ld   b, e                                        ; $4e30: $43
	inc  [hl]                                        ; $4e31: $34
	ld   a, d                                        ; $4e32: $7a
	res  7, e                                        ; $4e33: $cb $bb
	xor  e                                           ; $4e35: $ab
	xor  d                                           ; $4e36: $aa
	add  a                                           ; $4e37: $87
	ld   d, h                                        ; $4e38: $54
	inc  sp                                          ; $4e39: $33
	ld   b, [hl]                                     ; $4e3a: $46
	adc  d                                           ; $4e3b: $8a
	cp   e                                           ; $4e3c: $bb
	cp   e                                           ; $4e3d: $bb
	xor  d                                           ; $4e3e: $aa
	sbc  b                                           ; $4e3f: $98
	halt                                             ; $4e40: $76
	ld   d, h                                        ; $4e41: $54
	inc  [hl]                                        ; $4e42: $34
	ld   e, b                                        ; $4e43: $58
	xor  h                                           ; $4e44: $ac
	jp   z, $a9aa                                    ; $4e45: $ca $aa $a9

	sub  a                                           ; $4e48: $97
	halt                                             ; $4e49: $76
	ld   d, h                                        ; $4e4a: $54
	ld   b, l                                        ; $4e4b: $45
	ld   a, d                                        ; $4e4c: $7a
	cp   e                                           ; $4e4d: $bb
	cp   d                                           ; $4e4e: $ba
	xor  c                                           ; $4e4f: $a9
	sbc  c                                           ; $4e50: $99
	ld   [hl], a                                     ; $4e51: $77
	halt                                             ; $4e52: $76
	ld   d, h                                        ; $4e53: $54
	ld   d, a                                        ; $4e54: $57
	sbc  d                                           ; $4e55: $9a
	cp   d                                           ; $4e56: $ba
	xor  d                                           ; $4e57: $aa
	sbc  c                                           ; $4e58: $99
	sbc  b                                           ; $4e59: $98
	ld   [hl], a                                     ; $4e5a: $77
	ld   h, l                                        ; $4e5b: $65
	ld   d, l                                        ; $4e5c: $55
	ld   a, b                                        ; $4e5d: $78
	xor  d                                           ; $4e5e: $aa
	cp   d                                           ; $4e5f: $ba
	sbc  d                                           ; $4e60: $9a
	sbc  b                                           ; $4e61: $98
	add  a                                           ; $4e62: $87
	halt                                             ; $4e63: $76
	ld   h, l                                        ; $4e64: $65
	ld   d, [hl]                                     ; $4e65: $56
	adc  c                                           ; $4e66: $89
	cp   e                                           ; $4e67: $bb
	xor  d                                           ; $4e68: $aa
	sbc  c                                           ; $4e69: $99
	adc  b                                           ; $4e6a: $88
	ld   [hl], a                                     ; $4e6b: $77
	halt                                             ; $4e6c: $76
	ld   d, l                                        ; $4e6d: $55
	ld   l, b                                        ; $4e6e: $68
	xor  d                                           ; $4e6f: $aa
	xor  c                                           ; $4e70: $a9
	xor  c                                           ; $4e71: $a9
	sbc  b                                           ; $4e72: $98
	adc  b                                           ; $4e73: $88
	ld   [hl], a                                     ; $4e74: $77
	ld   h, [hl]                                     ; $4e75: $66
	ld   d, [hl]                                     ; $4e76: $56
	ld   a, c                                        ; $4e77: $79
	xor  d                                           ; $4e78: $aa
	sbc  d                                           ; $4e79: $9a
	sbc  b                                           ; $4e7a: $98
	sbc  b                                           ; $4e7b: $98
	ld   [hl], a                                     ; $4e7c: $77
	ld   [hl], a                                     ; $4e7d: $77
	ld   h, [hl]                                     ; $4e7e: $66
	ld   l, b                                        ; $4e7f: $68
	sbc  d                                           ; $4e80: $9a
	xor  d                                           ; $4e81: $aa
	sbc  c                                           ; $4e82: $99
	sbc  c                                           ; $4e83: $99
	add  a                                           ; $4e84: $87
	ld   [hl], a                                     ; $4e85: $77
	halt                                             ; $4e86: $76
	ld   h, [hl]                                     ; $4e87: $66
	adc  c                                           ; $4e88: $89
	xor  c                                           ; $4e89: $a9
	sbc  b                                           ; $4e8a: $98
	adc  b                                           ; $4e8b: $88
	sbc  b                                           ; $4e8c: $98
	ld   [hl], a                                     ; $4e8d: $77
	ld   [hl], a                                     ; $4e8e: $77
	halt                                             ; $4e8f: $76
	ld   l, b                                        ; $4e90: $68
	sbc  c                                           ; $4e91: $99
	sbc  c                                           ; $4e92: $99
	adc  c                                           ; $4e93: $89
	sbc  b                                           ; $4e94: $98
	add  a                                           ; $4e95: $87
	ld   [hl], a                                     ; $4e96: $77
	ld   [hl], a                                     ; $4e97: $77
	ld   [hl], a                                     ; $4e98: $77
	adc  b                                           ; $4e99: $88
	xor  d                                           ; $4e9a: $aa
	sbc  b                                           ; $4e9b: $98
	sbc  c                                           ; $4e9c: $99
	adc  b                                           ; $4e9d: $88
	add  a                                           ; $4e9e: $87
	ld   [hl], a                                     ; $4e9f: $77
	ld   [hl], a                                     ; $4ea0: $77
	ld   a, b                                        ; $4ea1: $78
	adc  c                                           ; $4ea2: $89
	sbc  b                                           ; $4ea3: $98
	sbc  b                                           ; $4ea4: $98
	adc  b                                           ; $4ea5: $88
	add  a                                           ; $4ea6: $87
	ld   [hl], a                                     ; $4ea7: $77
	ld   [hl], a                                     ; $4ea8: $77
	ld   [hl], a                                     ; $4ea9: $77
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  c                                           ; $4eac: $89
	sbc  c                                           ; $4ead: $99
	adc  b                                           ; $4eae: $88
	ld   [hl], a                                     ; $4eaf: $77
	ld   [hl], a                                     ; $4eb0: $77
	ld   [hl], a                                     ; $4eb1: $77
	ld   a, b                                        ; $4eb2: $78
	sbc  c                                           ; $4eb3: $99
	sbc  b                                           ; $4eb4: $98
	sbc  c                                           ; $4eb5: $99
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	ld   [hl], a                                     ; $4eb8: $77
	ld   [hl], a                                     ; $4eb9: $77
	ld   a, b                                        ; $4eba: $78
	adc  c                                           ; $4ebb: $89
	sbc  c                                           ; $4ebc: $99
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	ld   [hl], a                                     ; $4ec1: $77
	ld   [hl], a                                     ; $4ec2: $77
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  c                                           ; $4ec5: $89
	sbc  b                                           ; $4ec6: $98
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	ld   a, b                                        ; $4ec9: $78
	ld   [hl], a                                     ; $4eca: $77
	adc  b                                           ; $4ecb: $88
	sbc  c                                           ; $4ecc: $99
	sbc  b                                           ; $4ecd: $98
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	add  a                                           ; $4ed1: $87
	ld   a, b                                        ; $4ed2: $78
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	sbc  c                                           ; $4ed5: $99
	sbc  b                                           ; $4ed6: $98
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	sbc  c                                           ; $4edf: $99
	sbc  b                                           ; $4ee0: $98
	adc  b                                           ; $4ee1: $88
	ld   [hl], a                                     ; $4ee2: $77
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
	sbc  b                                           ; $4eee: $98
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
	add  c                                           ; $4f22: $81
	ld   de, $1111                                   ; $4f23: $11 $11 $11
	nop                                              ; $4f26: $00
	ld   c, b                                        ; $4f27: $48
	ld   de, $1111                                   ; $4f28: $11 $11 $11
	ld   de, $1111                                   ; $4f2b: $11 $11 $11
	ld   de, $1111                                   ; $4f2e: $11 $11 $11
	ld   de, $5413                                   ; $4f31: $11 $13 $54
	ld   d, h                                        ; $4f34: $54
	ld   d, h                                        ; $4f35: $54
	ld   b, c                                        ; $4f36: $41
	rra                                              ; $4f37: $1f
	rst  $38                                         ; $4f38: $ff
	pop  af                                          ; $4f39: $f1
	ld   de, $1711                                   ; $4f3a: $11 $11 $17
	or   c                                           ; $4f3d: $b1
	ld   de, $de1c                                   ; $4f3e: $11 $1c $de
	xor  h                                           ; $4f41: $ac
	sbc  $a1                                         ; $4f42: $de $a1
	ld   de, $1111                                   ; $4f44: $11 $11 $11
	ld   de, $1111                                   ; $4f47: $11 $11 $11
	ld   de, $1111                                   ; $4f4a: $11 $11 $11
	ld   de, $1111                                   ; $4f4d: $11 $11 $11
	ld   de, $5411                                   ; $4f50: $11 $11 $54
	ld   b, h                                        ; $4f53: $44
	or   a                                           ; $4f54: $b7
	ld   de, $5454                                   ; $4f55: $11 $54 $54
	ld   h, a                                        ; $4f58: $67
	ld   [hl], d                                     ; $4f59: $72
	ld   de, $1111                                   ; $4f5a: $11 $11 $11
	ld   de, $1112                                   ; $4f5d: $11 $12 $11
	ld   [de], a                                     ; $4f60: $12
	ld   de, $1111                                   ; $4f61: $11 $11 $11
	ld   h, [hl]                                     ; $4f64: $66
	halt                                             ; $4f65: $76
	add  a                                           ; $4f66: $87
	ld   de, $8888                                   ; $4f67: $11 $88 $88
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
	adc  c                                           ; $4f78: $89
	adc  b                                           ; $4f79: $88
	adc  b                                           ; $4f7a: $88
	adc  b                                           ; $4f7b: $88
	add  a                                           ; $4f7c: $87
	halt                                             ; $4f7d: $76
	adc  l                                           ; $4f7e: $8d
	and  h                                           ; $4f7f: $a4
	ld   a, b                                        ; $4f80: $78
	ld   a, b                                        ; $4f81: $78
	sbc  b                                           ; $4f82: $98
	sbc  c                                           ; $4f83: $99
	ld   h, [hl]                                     ; $4f84: $66
	sbc  b                                           ; $4f85: $98
	sbc  c                                           ; $4f86: $99
	adc  b                                           ; $4f87: $88
	sub  a                                           ; $4f88: $97
	ld   a, b                                        ; $4f89: $78
	sbc  c                                           ; $4f8a: $99
	sbc  b                                           ; $4f8b: $98
	adc  b                                           ; $4f8c: $88
	ld   [hl], a                                     ; $4f8d: $77
	halt                                             ; $4f8e: $76
	ld   l, e                                        ; $4f8f: $6b
	rst  $30                                         ; $4f90: $f7
	add  hl, hl                                      ; $4f91: $29
	halt                                             ; $4f92: $76
	xor  c                                           ; $4f93: $a9
	ld   a, d                                        ; $4f94: $7a
	and  e                                           ; $4f95: $a3
	ld   l, b                                        ; $4f96: $68
	adc  d                                           ; $4f97: $8a
	sbc  c                                           ; $4f98: $99
	and  a                                           ; $4f99: $a7
	ld   h, a                                        ; $4f9a: $67
	adc  c                                           ; $4f9b: $89
	sub  a                                           ; $4f9c: $97
	ld   h, a                                        ; $4f9d: $67
	ld   d, e                                        ; $4f9e: $53
	sbc  a                                           ; $4f9f: $9f
	or   c                                           ; $4fa0: $b1
	adc  b                                           ; $4fa1: $88
	ld   c, d                                        ; $4fa2: $4a
	add  $ac                                         ; $4fa3: $c6 $ac
	inc  h                                           ; $4fa5: $24
	and  [hl]                                        ; $4fa6: $a6
	sbc  d                                           ; $4fa7: $9a
	sbc  e                                           ; $4fa8: $9b
	ld   [hl], l                                     ; $4fa9: $75
	ld   h, a                                        ; $4faa: $67
	adc  e                                           ; $4fab: $8b
	sub  a                                           ; $4fac: $97
	halt                                             ; $4fad: $76
	ld   b, c                                        ; $4fae: $41
	xor  a                                           ; $4faf: $af
	or   c                                           ; $4fb0: $b1
	sub  a                                           ; $4fb1: $97
	ld   a, [hl+]                                    ; $4fb2: $2a
	push de                                          ; $4fb3: $d5
	cp   [hl]                                        ; $4fb4: $be
	inc  d                                           ; $4fb5: $14
	sub  a                                           ; $4fb6: $97
	cp   c                                           ; $4fb7: $b9
	sbc  l                                           ; $4fb8: $9d
	add  h                                           ; $4fb9: $84
	ld   h, a                                        ; $4fba: $67
	adc  d                                           ; $4fbb: $8a
	add  [hl]                                        ; $4fbc: $86
	ld   [hl], l                                     ; $4fbd: $75
	inc  e                                           ; $4fbe: $1c
	or   $1c                                         ; $4fbf: $f6 $1c
	ld   h, c                                        ; $4fc1: $61
	call c, $c14d                                    ; $4fc2: $dc $4d $c1
	ld   h, a                                        ; $4fc5: $67
	ld   a, [hl]                                     ; $4fc6: $7e
	adc  c                                           ; $4fc7: $89
	rst  $10                                         ; $4fc8: $d7
	ld   d, a                                        ; $4fc9: $57
	ld   a, c                                        ; $4fca: $79
	sub  [hl]                                        ; $4fcb: $96
	ld   h, [hl]                                     ; $4fcc: $66
	ld   [hl+], a                                    ; $4fcd: $22
	rst  $38                                         ; $4fce: $ff
	inc  de                                          ; $4fcf: $13
	pop  de                                          ; $4fd0: $d1
	ld   l, a                                        ; $4fd1: $6f
	sub  [hl]                                        ; $4fd2: $96
	db   $e4                                         ; $4fd3: $e4
	add  hl, de                                      ; $4fd4: $19
	ld   c, e                                        ; $4fd5: $4b
	rst  $10                                         ; $4fd6: $d7
	bit  0, [hl]                                     ; $4fd7: $cb $46
	ld   [hl], a                                     ; $4fd9: $77
	cp   c                                           ; $4fda: $b9
	ld   d, [hl]                                     ; $4fdb: $56
	ld   sp, $11ff                                   ; $4fdc: $31 $ff $11
	ldh  a, [c]                                      ; $4fdf: $f2
	cpl                                              ; $4fe0: $2f
	add  $d5                                         ; $4fe1: $c6 $d5
	ld   a, [de]                                     ; $4fe3: $1a
	ld   c, b                                        ; $4fe4: $48
	ld   sp, hl                                      ; $4fe5: $f9
	xor  e                                           ; $4fe6: $ab
	ld   d, a                                        ; $4fe7: $57
	ld   [hl], l                                     ; $4fe8: $75
	sbc  d                                           ; $4fe9: $9a
	ld   h, l                                        ; $4fea: $65
	ld   de, $14ff                                   ; $4feb: $11 $ff $14
	pop  af                                          ; $4fee: $f1
	ld   l, a                                        ; $4fef: $6f
	xor  d                                           ; $4ff0: $aa
	pop  bc                                          ; $4ff1: $c1
	ld   c, e                                        ; $4ff2: $4b
	inc  l                                           ; $4ff3: $2c
	jp   hl                                          ; $4ff4: $e9


	rst  $10                                         ; $4ff5: $d7
	add  hl, sp                                      ; $4ff6: $39
	ld   [hl], l                                     ; $4ff7: $75
	sbc  c                                           ; $4ff8: $99
	ld   h, e                                        ; $4ff9: $63
	rra                                              ; $4ffa: $1f

jr_0e8_4ffb:
	pop  af                                          ; $4ffb: $f1
	rra                                              ; $4ffc: $1f
	ld   b, d                                        ; $4ffd: $42
	db   $fc                                         ; $4ffe: $fc
	sbc  [hl]                                        ; $4fff: $9e
	ld   hl, $7ec5                                   ; $5000: $21 $c5 $7e
	sbc  l                                           ; $5003: $9d
	or   d                                           ; $5004: $b2
	ld   a, b                                        ; $5005: $78
	ld   c, b                                        ; $5006: $48
	add  [hl]                                        ; $5007: $86
	ld   hl, $11ff                                   ; $5008: $21 $ff $11
	pop  af                                          ; $500b: $f1
	ld   e, a                                        ; $500c: $5f
	sbc  e                                           ; $500d: $9b
	pop  hl                                          ; $500e: $e1
	dec  e                                           ; $500f: $1d
	ld   c, d                                        ; $5010: $4a
	jp   z, $26f9                                    ; $5011: $ca $f9 $26

	ld   h, l                                        ; $5014: $65
	sbc  b                                           ; $5015: $98
	ld   h, c                                        ; $5016: $61
	ld   l, a                                        ; $5017: $6f
	and  c                                           ; $5018: $a1
	jp   c, $ea1e                                    ; $5019: $da $1e $ea

	push af                                          ; $501c: $f5
	dec  de                                          ; $501d: $1b
	sub  l                                           ; $501e: $95
	ld   [$23fe], a                                  ; $501f: $ea $fe $23
	ld   h, l                                        ; $5022: $65
	adc  b                                           ; $5023: $88
	ld   h, c                                        ; $5024: $61
	sbc  a                                           ; $5025: $9f
	ld   [hl], c                                     ; $5026: $71
	jp   hl                                          ; $5027: $e9


	rra                                              ; $5028: $1f
	cp   d                                           ; $5029: $ba
	ldh  a, [c]                                      ; $502a: $f2
	inc  e                                           ; $502b: $1c
	add  l                                           ; $502c: $85
	db   $fc                                         ; $502d: $fc
	ei                                               ; $502e: $fb
	inc  de                                          ; $502f: $13
	ld   h, l                                        ; $5030: $65
	sub  a                                           ; $5031: $97
	ld   hl, $11ff                                   ; $5032: $21 $ff $11
	pop  af                                          ; $5035: $f1
	adc  a                                           ; $5036: $8f
	sbc  a                                           ; $5037: $9f
	and  c                                           ; $5038: $a1
	ld   e, l                                        ; $5039: $5d
	inc  a                                           ; $503a: $3c
	call c, $16f3                                    ; $503b: $dc $f3 $16
	ld   d, a                                        ; $503e: $57
	add  d                                           ; $503f: $82
	rra                                              ; $5040: $1f
	pop  af                                          ; $5041: $f1
	rra                                              ; $5042: $1f
	ld   a, [de]                                     ; $5043: $1a
	add  sp, -$06                                    ; $5044: $e8 $fa
	ld   d, $c4                                      ; $5046: $16 $c4
	db   $ed                                         ; $5048: $ed
	cp   a                                           ; $5049: $bf
	ld   sp, $9865                                   ; $504a: $31 $65 $98
	dec  d                                           ; $504d: $15
	rst  $38                                         ; $504e: $ff
	rla                                              ; $504f: $17
	pop  bc                                          ; $5050: $c1
	db   $eb                                         ; $5051: $eb
	xor  a                                           ; $5052: $af
	ld   hl, $5fca                                   ; $5053: $21 $ca $5f
	call $16b1                                       ; $5056: $cd $b1 $16
	ld   a, d                                        ; $5059: $7a
	ld   sp, $11ff                                   ; $505a: $31 $ff $11
	pop  af                                          ; $505d: $f1
	cp   a                                           ; $505e: $bf
	adc  a                                           ; $505f: $8f
	sub  c                                           ; $5060: $91
	ld   l, h                                        ; $5061: $6c
	ld   c, a                                        ; $5062: $4f
	ld   a, [$16c1]                                  ; $5063: $fa $c1 $16
	adc  c                                           ; $5066: $89
	inc  hl                                          ; $5067: $23
	rst  $38                                         ; $5068: $ff
	ld   de, $edd1                                   ; $5069: $11 $d1 $ed
	sbc  a                                           ; $506c: $9f
	ld   b, c                                        ; $506d: $41
	sbc  e                                           ; $506e: $9b
	ld   e, a                                        ; $506f: $5f
	db   $eb                                         ; $5070: $eb
	sub  c                                           ; $5071: $91
	jr   jr_0e8_4ffb                                 ; $5072: $18 $87

	rra                                              ; $5074: $1f
	pop  af                                          ; $5075: $f1
	ld   e, $46                                      ; $5076: $1e $46
	ld   hl, sp-$03                                  ; $5078: $f8 $fd
	ld   de, $dfd5                                   ; $507a: $11 $d5 $df
	sbc  h                                           ; $507d: $9c
	ld   hl, $7157                                   ; $507e: $21 $57 $71
	rst  $28                                         ; $5081: $ef
	ld   hl, $5fc3                                   ; $5082: $21 $c3 $5f
	xor  a                                           ; $5085: $af
	pop  af                                          ; $5086: $f1
	dec  de                                          ; $5087: $1b
	ld   e, a                                        ; $5088: $5f
	ld   hl, sp-$4e                                  ; $5089: $f8 $b2
	inc  d                                           ; $508b: $14
	ld   d, h                                        ; $508c: $54
	ld   e, a                                        ; $508d: $5f
	pop  af                                          ; $508e: $f1
	ld   a, [de]                                     ; $508f: $1a
	dec  e                                           ; $5090: $1d
	xor  $f4                                         ; $5091: $ee $f4
	jr   jr_0e8_510b                                 ; $5093: $18 $76

	db   $fd                                         ; $5095: $fd
	ret  z                                           ; $5096: $c8

	ld   de, $4f42                                   ; $5097: $11 $42 $4f
	pop  af                                          ; $509a: $f1
	add  hl, de                                      ; $509b: $19
	add  hl, de                                      ; $509c: $19
	db   $fd                                         ; $509d: $fd
	ld   sp, hl                                      ; $509e: $f9
	ld   d, $54                                      ; $509f: $16 $54
	cp   $cb                                         ; $50a1: $fe $cb
	ld   de, $4f31                                   ; $50a3: $11 $31 $4f
	pop  af                                          ; $50a6: $f1
	add  hl, hl                                      ; $50a7: $29
	add  hl, de                                      ; $50a8: $19
	call c, $18f8                                    ; $50a9: $dc $f8 $18
	ld   d, e                                        ; $50ac: $53
	db   $dd                                         ; $50ad: $dd
	jp   c, $3112                                    ; $50ae: $da $12 $31

	cp   a                                           ; $50b1: $bf
	pop  bc                                          ; $50b2: $c1
	pop  bc                                          ; $50b3: $c1
	dec  e                                           ; $50b4: $1d
	xor  a                                           ; $50b5: $af
	pop  af                                          ; $50b6: $f1
	add  hl, hl                                      ; $50b7: $29
	ld   d, $ed                                      ; $50b8: $16 $ed
	add  $12                                         ; $50ba: $c6 $12
	inc  d                                           ; $50bc: $14
	rst  $38                                         ; $50bd: $ff
	add  hl, de                                      ; $50be: $19
	add  c                                           ; $50bf: $81
	sbc  e                                           ; $50c0: $9b
	rst  $28                                         ; $50c1: $ef
	ld   d, c                                        ; $50c2: $51
	and  e                                           ; $50c3: $a3
	ld   a, $cc                                      ; $50c4: $3e $cc
	add  c                                           ; $50c6: $81
	ld   sp, $f11f                                   ; $50c7: $31 $1f $f1
	ld   a, e                                        ; $50ca: $7b
	rla                                              ; $50cb: $17
	cp   [hl]                                        ; $50cc: $be
	or   $1b                                         ; $50cd: $f6 $1b
	ld   d, c                                        ; $50cf: $51
	db   $dd                                         ; $50d0: $dd
	cp   c                                           ; $50d1: $b9
	ld   [de], a                                     ; $50d2: $12

jr_0e8_50d3:
	ld   d, $fe                                      ; $50d3: $16 $fe
	dec  e                                           ; $50d5: $1d
	ld   h, c                                        ; $50d6: $61
	xor  d                                           ; $50d7: $aa
	rst  $38                                         ; $50d8: $ff
	ld   [hl-], a                                    ; $50d9: $32
	and  e                                           ; $50da: $a3
	ld   e, [hl]                                     ; $50db: $5e
	bit  4, c                                        ; $50dc: $cb $61
	ld   de, $51df                                   ; $50de: $11 $df $51
	pop  af                                          ; $50e1: $f1
	inc  e                                           ; $50e2: $1c
	xor  a                                           ; $50e3: $af
	pop  af                                          ; $50e4: $f1
	ld   e, c                                        ; $50e5: $59
	jr   jr_0e8_50d3                                 ; $50e6: $18 $eb

	or   l                                           ; $50e8: $b5
	ld   de, $f12f                                   ; $50e9: $11 $2f $f1
	cp   e                                           ; $50ec: $bb
	rla                                              ; $50ed: $17
	cp   [hl]                                        ; $50ee: $be
	or   $3a                                         ; $50ef: $f6 $3a
	ld   b, d                                        ; $50f1: $42
	cp   l                                           ; $50f2: $bd
	or   a                                           ; $50f3: $b7
	ld   de, $f11f                                   ; $50f4: $11 $1f $f1
	rra                                              ; $50f7: $1f
	ld   de, $fddb                                   ; $50f8: $11 $db $fd
	add  hl, de                                      ; $50fb: $19
	ld   h, c                                        ; $50fc: $61
	xor  [hl]                                        ; $50fd: $ae
	cp   e                                           ; $50fe: $bb
	ld   sp, $f917                                   ; $50ff: $31 $17 $f9
	rra                                              ; $5102: $1f

jr_0e8_5103:
	ld   d, c                                        ; $5103: $51
	set  7, a                                        ; $5104: $cb $ff
	daa                                              ; $5106: $27
	or   c                                           ; $5107: $b1
	ld   c, [hl]                                     ; $5108: $4e
	cp   e                                           ; $5109: $bb
	ld   d, c                                        ; $510a: $51

jr_0e8_510b:
	ld   d, $fd                                      ; $510b: $16 $fd
	rra                                              ; $510d: $1f
	add  c                                           ; $510e: $81
	xor  h                                           ; $510f: $ac
	rst  $28                                         ; $5110: $ef
	ld   b, [hl]                                     ; $5111: $46
	or   c                                           ; $5112: $b1
	dec  a                                           ; $5113: $3d
	jp   z, $1561                                    ; $5114: $ca $61 $15

	cp   $1f                                         ; $5117: $fe $1f
	sub  c                                           ; $5119: $91
	sbc  d                                           ; $511a: $9a
	rst  $38                                         ; $511b: $ff
	ld   [hl], $c1                                   ; $511c: $36 $c1
	ld   c, h                                        ; $511e: $4c
	xor  e                                           ; $511f: $ab
	ld   h, c                                        ; $5120: $61
	ld   a, [de]                                     ; $5121: $1a
	or   $1f                                         ; $5122: $f6 $1f
	ld   b, c                                        ; $5124: $41
	call z, $37ff                                    ; $5125: $cc $ff $37
	and  c                                           ; $5128: $a1
	ld   e, l                                        ; $5129: $5d
	sbc  c                                           ; $512a: $99

jr_0e8_512b:
	ld   d, c                                        ; $512b: $51
	rra                                              ; $512c: $1f
	pop  af                                          ; $512d: $f1
	rra                                              ; $512e: $1f
	ld   de, $fbfc                                   ; $512f: $11 $fc $fb
	ld   a, [hl+]                                    ; $5132: $2a
	add  c                                           ; $5133: $81
	sbc  l                                           ; $5134: $9d
	sub  a                                           ; $5135: $97
	ld   hl, $f15f                                   ; $5136: $21 $5f $f1
	ei                                               ; $5139: $fb
	add  hl, de                                      ; $513a: $19
	xor  $f4                                         ; $513b: $ee $f4
	ld   c, l                                        ; $513d: $4d
	ld   de, $96da                                   ; $513e: $11 $da $96
	ld   de, $12ff                                   ; $5141: $11 $ff $12
	pop  af                                          ; $5144: $f1
	ld   e, $df                                      ; $5145: $1e $df
	or   h                                           ; $5147: $b4
	and  l                                           ; $5148: $a5
	jr   jr_0e8_5103                                 ; $5149: $18 $b8

	sub  c                                           ; $514b: $91
	rra                                              ; $514c: $1f
	pop  af                                          ; $514d: $f1
	rra                                              ; $514e: $1f
	ld   de, $fcfc                                   ; $514f: $11 $fc $fc
	dec  sp                                          ; $5152: $3b
	add  c                                           ; $5153: $81
	ld   a, l                                        ; $5154: $7d
	ld   a, b                                        ; $5155: $78
	ld   b, c                                        ; $5156: $41
	rst  $38                                         ; $5157: $ff
	ld   de, $1ff1                                   ; $5158: $11 $f1 $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $515b: $cf
	jp   $16a8                                       ; $515c: $c3 $a8 $16


	ret  z                                           ; $515f: $c8

	ld   h, e                                        ; $5160: $63
	rra                                              ; $5161: $1f
	pop  af                                          ; $5162: $f1
	rra                                              ; $5163: $1f
	ld   de, $fcfd                                   ; $5164: $11 $fd $fc
	ld   e, e                                        ; $5167: $5b
	ld   [hl], c                                     ; $5168: $71
	ld   l, h                                        ; $5169: $6c
	ld   [hl], a                                     ; $516a: $77
	ld   sp, $15ff                                   ; $516b: $31 $ff $15
	pop  af                                          ; $516e: $f1
	cpl                                              ; $516f: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5170: $cf
	and  l                                           ; $5171: $a5
	and  l                                           ; $5172: $a5
	jr   jr_0e8_512b                                 ; $5173: $18 $b6

	ld   d, c                                        ; $5175: $51
	ld   c, a                                        ; $5176: $4f
	pop  af                                          ; $5177: $f1

jr_0e8_5178:
	db   $ec                                         ; $5178: $ec
	jr   jr_0e8_5178                                 ; $5179: $18 $fd

	ld   hl, sp+$7b                                  ; $517b: $f8 $7b
	ld   de, $66b9                                   ; $517d: $11 $b9 $66
	dec  e                                           ; $5180: $1d
	pop  af                                          ; $5181: $f1
	rra                                              ; $5182: $1f
	ld   de, $ddff                                   ; $5183: $11 $ff $dd
	ld   l, b                                        ; $5186: $68
	add  c                                           ; $5187: $81
	ld   c, e                                        ; $5188: $4b
	ld   [hl], l                                     ; $5189: $75
	inc  de                                          ; $518a: $13
	rst  $38                                         ; $518b: $ff
	rra                                              ; $518c: $1f
	pop  bc                                          ; $518d: $c1
	ld   a, a                                        ; $518e: $7f
	adc  $a9                                         ; $518f: $ce $a9
	sub  c                                           ; $5191: $91
	add  hl, de                                      ; $5192: $19
	add  [hl]                                        ; $5193: $86
	ld   [hl], c                                     ; $5194: $71
	rst  $38                                         ; $5195: $ff
	ld   de, $1ff1                                   ; $5196: $11 $f1 $1f
	xor  $b7                                         ; $5199: $ee $b7
	call nz, $9518                                   ; $519b: $c4 $18 $95
	ld   d, c                                        ; $519e: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $519f: $cf
	ld   hl, $1ef1                                   ; $51a0: $21 $f1 $1e
	db   $fd                                         ; $51a3: $fd
	jp   hl                                          ; $51a4: $e9


	or   a                                           ; $51a5: $b7
	inc  d                                           ; $51a6: $14
	and  l                                           ; $51a7: $a5
	ld   h, e                                        ; $51a8: $63
	ld   l, a                                        ; $51a9: $6f
	pop  de                                          ; $51aa: $d1
	ld   sp, hl                                      ; $51ab: $f9
	add  hl, de                                      ; $51ac: $19
	cp   $e9                                         ; $51ad: $fe $e9
	xor  c                                           ; $51af: $a9
	ld   [de], a                                     ; $51b0: $12
	sub  a                                           ; $51b1: $97
	ld   d, e                                        ; $51b2: $53
	ccf                                              ; $51b3: $3f
	pop  af                                          ; $51b4: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b5: $cf
	inc  de                                          ; $51b6: $13
	db   $fc                                         ; $51b7: $fc
	db   $ec                                         ; $51b8: $ec
	xor  e                                           ; $51b9: $ab
	ld   de, $5587                                   ; $51ba: $11 $87 $55
	cpl                                              ; $51bd: $2f
	pop  af                                          ; $51be: $f1
	ld   c, a                                        ; $51bf: $4f
	ld   de, $ddfd                                   ; $51c0: $11 $fd $dd
	cp   h                                           ; $51c3: $bc
	ld   hl, $5466                                   ; $51c4: $21 $66 $54
	cpl                                              ; $51c7: $2f
	pop  af                                          ; $51c8: $f1
	rra                                              ; $51c9: $1f
	ld   de, $dffe                                   ; $51ca: $11 $fe $df
	call z, Call_0e8_5541                            ; $51cd: $cc $41 $55
	ld   b, [hl]                                     ; $51d0: $46
	cpl                                              ; $51d1: $2f
	ldh  a, [c]                                      ; $51d2: $f2
	rra                                              ; $51d3: $1f
	ld   de, $cfed                                   ; $51d4: $11 $ed $cf
	db   $ec                                         ; $51d7: $ec
	ld   d, c                                        ; $51d8: $51
	inc  [hl]                                        ; $51d9: $34
	ld   b, l                                        ; $51da: $45
	cpl                                              ; $51db: $2f
	db   $f4                                         ; $51dc: $f4
	rra                                              ; $51dd: $1f
	ld   de, $cfcd                                   ; $51de: $11 $cd $cf
	cp   $61                                         ; $51e1: $fe $61
	inc  sp                                          ; $51e3: $33
	dec  [hl]                                        ; $51e4: $35
	dec  hl                                          ; $51e5: $2b
	ld   hl, sp+$1f                                  ; $51e6: $f8 $1f
	ld   de, $afac                                   ; $51e8: $11 $ac $af
	rst  $38                                         ; $51eb: $ff
	add  c                                           ; $51ec: $81
	ld   [hl+], a                                    ; $51ed: $22
	dec  h                                           ; $51ee: $25
	inc  l                                           ; $51ef: $2c
	ld   a, [$111f]                                  ; $51f0: $fa $1f $11
	adc  e                                           ; $51f3: $8b
	xor  a                                           ; $51f4: $af
	rst  $38                                         ; $51f5: $ff
	sub  c                                           ; $51f6: $91
	ld   de, $1c15                                   ; $51f7: $11 $15 $1c
	ld   a, [$111f]                                  ; $51fa: $fa $1f $11
	ld   a, e                                        ; $51fd: $7b
	adc  [hl]                                        ; $51fe: $8e
	rst  $38                                         ; $51ff: $ff
	or   e                                           ; $5200: $b3
	ld   de, $1d13                                   ; $5201: $11 $13 $1d
	ei                                               ; $5204: $fb
	cpl                                              ; $5205: $2f
	ld   de, $7e68                                   ; $5206: $11 $68 $7e
	rst  $38                                         ; $5209: $ff
	or   l                                           ; $520a: $b5
	ld   de, $1f12                                   ; $520b: $11 $12 $1f
	ld   a, [$117f]                                  ; $520e: $fa $7f $11
	ld   d, [hl]                                     ; $5211: $56
	ld   e, a                                        ; $5212: $5f
	rst  $38                                         ; $5213: $ff
	or   a                                           ; $5214: $b7
	ld   de, $3f11                                   ; $5215: $11 $11 $3f
	rst  $30                                         ; $5218: $f7
	db   $fd                                         ; $5219: $fd
	ld   de, $7f62                                   ; $521a: $11 $62 $7f
	rst  $38                                         ; $521d: $ff
	push bc                                          ; $521e: $c5
	ld   de, rAUD1LEN                                   ; $521f: $11 $11 $ff
	sbc  a                                           ; $5222: $9f
	pop  af                                          ; $5223: $f1
	dec  d                                           ; $5224: $15
	inc  d                                           ; $5225: $14
	xor  $ff                                         ; $5226: $ee $ff
	ld   [hl], d                                     ; $5228: $72
	ld   de, $9d3f                                   ; $5229: $11 $3f $9d
	ld   a, [$4258]                                  ; $522c: $fa $58 $42
	ld   l, d                                        ; $522f: $6a
	adc  $b7                                         ; $5230: $ce $b7
	ld   hl, $395f                                   ; $5232: $21 $5f $39
	rst  $30                                         ; $5235: $f7
	dec  a                                           ; $5236: $3d
	sub  d                                           ; $5237: $92
	ld   a, e                                        ; $5238: $7b
	adc  d                                           ; $5239: $8a
	and  a                                           ; $523a: $a7

jr_0e8_523b:
	ld   b, c                                        ; $523b: $41
	ld   l, $b2                                      ; $523c: $2e $b2
	cp   $18                                         ; $523e: $fe $18
	and  h                                           ; $5240: $a4
	ld   e, e                                        ; $5241: $5b
	sbc  e                                           ; $5242: $9b
	or   a                                           ; $5243: $b7
	ld   d, c                                        ; $5244: $51
	jr   jr_0e8_523b                                 ; $5245: $18 $f4

	xor  a                                           ; $5247: $af
	ld   d, e                                        ; $5248: $53
	or   [hl]                                        ; $5249: $b6
	add  hl, hl                                      ; $524a: $29
	cp   c                                           ; $524b: $b9
	ret                                              ; $524c: $c9


	ld   h, e                                        ; $524d: $63
	ld   [de], a                                     ; $524e: $12
	ld   sp, hl                                      ; $524f: $f9
	ld   e, a                                        ; $5250: $5f
	or   d                                           ; $5251: $b2
	xor  c                                           ; $5252: $a9
	ld   [hl], $b8                                   ; $5253: $36 $b8
	xor  d                                           ; $5255: $aa
	ld   [hl], h                                     ; $5256: $74
	ld   de, $2ffa                                   ; $5257: $11 $fa $2f
	pop  hl                                          ; $525a: $e1
	cp   d                                           ; $525b: $ba
	dec  [hl]                                        ; $525c: $35
	rst  ToBoot                                         ; $525d: $c7
	sbc  h                                           ; $525e: $9c
	ld   [hl], h                                     ; $525f: $74
	ld   hl, $2fae                                   ; $5260: $21 $ae $2f
	di                                               ; $5263: $f3
	adc  h                                           ; $5264: $8c
	ld   d, h                                        ; $5265: $54

Jump_0e8_5266:
	xor  b                                           ; $5266: $a8
	sbc  e                                           ; $5267: $9b
	add  [hl]                                        ; $5268: $86
	ld   hl, $1c8f                                   ; $5269: $21 $8f $1c
	ldh  a, [c]                                      ; $526c: $f2
	ld   a, [hl]                                     ; $526d: $7e
	ld   h, e                                        ; $526e: $63
	xor  c                                           ; $526f: $a9
	ld   l, d                                        ; $5270: $6a
	sub  l                                           ; $5271: $95
	ld   sp, $497f                                   ; $5272: $31 $7f $49
	db   $f4                                         ; $5275: $f4
	ld   l, l                                        ; $5276: $6d
	ld   [hl], l                                     ; $5277: $75
	xor  c                                           ; $5278: $a9
	ld   a, d                                        ; $5279: $7a
	add  l                                           ; $527a: $85
	ld   sp, $4a6f                                   ; $527b: $31 $6f $4a
	db   $f4                                         ; $527e: $f4
	ld   e, l                                        ; $527f: $5d
	ld   [hl], h                                     ; $5280: $74
	xor  d                                           ; $5281: $aa
	ld   a, d                                        ; $5282: $7a
	add  l                                           ; $5283: $85
	ld   hl, $496f                                   ; $5284: $21 $6f $49
	db   $f4                                         ; $5287: $f4
	ld   l, [hl]                                     ; $5288: $6e
	ld   h, e                                        ; $5289: $63
	xor  d                                           ; $528a: $aa
	ld   l, d                                        ; $528b: $6a
	and  l                                           ; $528c: $a5
	ld   [hl+], a                                    ; $528d: $22
	ld   l, [hl]                                     ; $528e: $6e
	ld   a, [hl-]                                    ; $528f: $3a
	di                                               ; $5290: $f3
	adc  [hl]                                        ; $5291: $8e
	ld   h, l                                        ; $5292: $65
	sbc  c                                           ; $5293: $99
	ld   a, d                                        ; $5294: $7a
	add  [hl]                                        ; $5295: $86
	ld   sp, $1c8e                                   ; $5296: $31 $8e $1c
	ldh  a, [c]                                      ; $5299: $f2
	xor  [hl]                                        ; $529a: $ae
	ld   d, [hl]                                     ; $529b: $56
	sub  a                                           ; $529c: $97
	ld   l, c                                        ; $529d: $69
	add  l                                           ; $529e: $85
	ld   [hl-], a                                    ; $529f: $32
	xor  l                                           ; $52a0: $ad
	ld   e, $f1                                      ; $52a1: $1e $f1
	db   $dd                                         ; $52a3: $dd
	ld   e, b                                        ; $52a4: $58
	sub  a                                           ; $52a5: $97
	adc  c                                           ; $52a6: $89
	halt                                             ; $52a7: $76
	ld   hl, $1fcb                                   ; $52a8: $21 $cb $1f
	pop  af                                          ; $52ab: $f1
	db   $fc                                         ; $52ac: $fc
	ld   e, b                                        ; $52ad: $58
	xor  b                                           ; $52ae: $a8
	ld   a, c                                        ; $52af: $79
	ld   [hl], h                                     ; $52b0: $74
	inc  de                                          ; $52b1: $13
	rst  $10                                         ; $52b2: $d7
	rra                                              ; $52b3: $1f
	or   d                                           ; $52b4: $b2
	ld   sp, hl                                      ; $52b5: $f9
	ld   e, c                                        ; $52b6: $59
	sub  [hl]                                        ; $52b7: $96
	xor  c                                           ; $52b8: $a9

Call_0e8_52b9:
	ld   h, l                                        ; $52b9: $65
	dec  d                                           ; $52ba: $15
	db   $e4                                         ; $52bb: $e4
	ld   e, a                                        ; $52bc: $5f
	ld   d, [hl]                                     ; $52bd: $56
	or   $6b                                         ; $52be: $f6 $6b
	add  [hl]                                        ; $52c0: $86
	sbc  b                                           ; $52c1: $98
	ld   d, h                                        ; $52c2: $54
	rla                                              ; $52c3: $17
	pop  de                                          ; $52c4: $d1
	xor  a                                           ; $52c5: $af
	ld   a, [de]                                     ; $52c6: $1a
	db   $f4                                         ; $52c7: $f4
	adc  d                                           ; $52c8: $8a
	ld   h, a                                        ; $52c9: $67
	and  l                                           ; $52ca: $a5
	ld   d, h                                        ; $52cb: $54
	dec  de                                          ; $52cc: $1b
	or   c                                           ; $52cd: $b1
	rst  $38                                         ; $52ce: $ff
	rra                                              ; $52cf: $1f
	db   $d3                                         ; $52d0: $d3
	cp   d                                           ; $52d1: $ba
	ld   e, b                                        ; $52d2: $58
	and  h                                           ; $52d3: $a4
	ld   h, d                                        ; $52d4: $62
	rra                                              ; $52d5: $1f
	ld   d, c                                        ; $52d6: $51
	rst  $30                                         ; $52d7: $f7
	ccf                                              ; $52d8: $3f
	ld   [hl], l                                     ; $52d9: $75
	rst  $10                                         ; $52da: $d7
	ld   l, e                                        ; $52db: $6b
	ld   [hl], l                                     ; $52dc: $75
	ld   h, c                                        ; $52dd: $61
	ld   a, [hl]                                     ; $52de: $7e
	ld   a, [de]                                     ; $52df: $1a
	pop  af                                          ; $52e0: $f1
	cp   a                                           ; $52e1: $bf
	ld   a, [hl-]                                    ; $52e2: $3a
	or   l                                           ; $52e3: $b5
	adc  d                                           ; $52e4: $8a
	ld   b, a                                        ; $52e5: $47
	ld   sp, $1fd8                                   ; $52e6: $31 $d8 $1f
	pop  de                                          ; $52e9: $d1
	db   $fc                                         ; $52ea: $fc
	ld   c, [hl]                                     ; $52eb: $4e
	sub  l                                           ; $52ec: $95
	or   a                                           ; $52ed: $b7
	ld   c, b                                        ; $52ee: $48
	inc  de                                          ; $52ef: $13
	pop  af                                          ; $52f0: $f1
	ccf                                              ; $52f1: $3f
	ld   [hl], $f4                                   ; $52f2: $36 $f4
	adc  [hl]                                        ; $52f4: $8e
	ld   e, b                                        ; $52f5: $58
	or   h                                           ; $52f6: $b4
	ld   h, l                                        ; $52f7: $65
	add  hl, de                                      ; $52f8: $19
	or   c                                           ; $52f9: $b1
	rst  $38                                         ; $52fa: $ff
	rra                                              ; $52fb: $1f
	ldh  [c], a                                      ; $52fc: $e2
	ld   sp, hl                                      ; $52fd: $f9
	ld   e, h                                        ; $52fe: $5c
	sub  h                                           ; $52ff: $94
	sub  c                                           ; $5300: $91
	ld   e, $31                                      ; $5301: $1e $31
	or   $3f                                         ; $5303: $f6 $3f
	ld   e, b                                        ; $5305: $58
	push af                                          ; $5306: $f5
	adc  l                                           ; $5307: $8d
	ld   b, [hl]                                     ; $5308: $46
	ld   [hl], c                                     ; $5309: $71
	ld   a, l                                        ; $530a: $7d
	add  hl, de                                      ; $530b: $19
	pop  af                                          ; $530c: $f1
	rst  $28                                         ; $530d: $ef
	cpl                                              ; $530e: $2f
	call nz, $39ca                                   ; $530f: $c4 $ca $39
	ld   hl, $1fc6                                   ; $5312: $21 $c6 $1f
	sub  c                                           ; $5315: $91
	rst  $30                                         ; $5316: $f7
	ld   l, a                                        ; $5317: $6f
	ld   h, a                                        ; $5318: $67
	push hl                                          ; $5319: $e5
	ld   e, c                                        ; $531a: $59
	inc  d                                           ; $531b: $14
	pop  hl                                          ; $531c: $e1
	ld   l, a                                        ; $531d: $6f
	dec  de                                          ; $531e: $1b
	pop  af                                          ; $531f: $f1
	cp   $4d                                         ; $5320: $fe $4d
	jp   $1ba4                                       ; $5322: $c3 $a4 $1b


	ld   d, c                                        ; $5325: $51
	ld   hl, sp+$1f                                  ; $5326: $f8 $1f
	halt                                             ; $5328: $76
	or   $8f                                         ; $5329: $f6 $8f
	ld   h, [hl]                                     ; $532b: $66
	sub  c                                           ; $532c: $91
	ld   c, l                                        ; $532d: $4d
	dec  d                                           ; $532e: $15
	pop  af                                          ; $532f: $f1

jr_0e8_5330:
	cp   a                                           ; $5330: $bf
	rra                                              ; $5331: $1f
	db   $e4                                         ; $5332: $e4
	db   $ec                                         ; $5333: $ec

jr_0e8_5334:
	dec  sp                                          ; $5334: $3b
	ld   b, c                                        ; $5335: $41
	or   l                                           ; $5336: $b5
	rra                                              ; $5337: $1f
	ld   [hl], c                                     ; $5338: $71
	rst  $30                                         ; $5339: $f7
	ld   l, a                                        ; $533a: $6f
	ld   a, c                                        ; $533b: $79
	or   $7b                                         ; $533c: $f6 $7b
	inc  de                                          ; $533e: $13
	pop  bc                                          ; $533f: $c1
	cpl                                              ; $5340: $2f
	jr   jr_0e8_5334                                 ; $5341: $18 $f1

	rst  $28                                         ; $5343: $ef
	ld   c, [hl]                                     ; $5344: $4e
	db   $e4                                         ; $5345: $e4
	or   a                                           ; $5346: $b7
	ld   a, [de]                                     ; $5347: $1a
	ld   h, c                                        ; $5348: $61
	ret  c                                           ; $5349: $d8

	rra                                              ; $534a: $1f
	add  h                                           ; $534b: $84
	ld   hl, sp+$7f                                  ; $534c: $f8 $7f
	sub  [hl]                                        ; $534e: $96
	pop  bc                                          ; $534f: $c1
	inc  a                                           ; $5350: $3c
	ld   de, $6ff1                                   ; $5351: $11 $f1 $6f
	inc  e                                           ; $5354: $1c
	push af                                          ; $5355: $f5
	rst  JumpTable                                         ; $5356: $df
	ld   e, e                                        ; $5357: $5b
	and  c                                           ; $5358: $a1
	sbc  b                                           ; $5359: $98
	ld   a, [de]                                     ; $535a: $1a
	and  c                                           ; $535b: $a1
	ld   [$b62f], a                                  ; $535c: $ea $2f $b6
	ei                                               ; $535f: $fb
	ld   l, l                                        ; $5360: $6d
	ld   b, d                                        ; $5361: $42
	jp   $211d                                       ; $5362: $c3 $1d $21


	di                                               ; $5365: $f3
	ld   a, a                                        ; $5366: $7f

Jump_0e8_5367:
	ld   a, e                                        ; $5367: $7b
	rst  $30                                         ; $5368: $f7
	xor  l                                           ; $5369: $ad
	rla                                              ; $536a: $17
	or   c                                           ; $536b: $b1
	ld   e, h                                        ; $536c: $5c
	jr   jr_0e8_5330                                 ; $536d: $18 $c1

	db   $dd                                         ; $536f: $dd
	ld   e, a                                        ; $5370: $5f
	and  $e9                                         ; $5371: $e6 $e9
	dec  hl                                          ; $5373: $2b
	add  c                                           ; $5374: $81
	sbc  b                                           ; $5375: $98
	dec  e                                           ; $5376: $1d
	add  d                                           ; $5377: $82
	db   $eb                                         ; $5378: $eb
	ld   l, a                                        ; $5379: $6f
	or   a                                           ; $537a: $b7
	or   $3c                                         ; $537b: $f6 $3c
	ld   d, c                                        ; $537d: $51
	call nc, $441e                                   ; $537e: $d4 $1e $44
	add  sp, $7f                                     ; $5381: $e8 $7f
	sbc  b                                           ; $5383: $98
	push hl                                          ; $5384: $e5
	ld   e, h                                        ; $5385: $5c
	ld   b, c                                        ; $5386: $41
	jp   nc, Jump_0e8_441d                           ; $5387: $d2 $1d $44

	add  sp, -$71                                    ; $538a: $e8 $8f
	xor  c                                           ; $538c: $a9
	and  $5c                                         ; $538d: $e6 $5c
	ld   b, d                                        ; $538f: $42
	jp   Jump_0e8_542c                               ; $5390: $c3 $2c $54


	ret  c                                           ; $5393: $d8

	ld   a, a                                        ; $5394: $7f
	cp   b                                           ; $5395: $b8
	rst  $10                                         ; $5396: $d7

Call_0e8_5397:
	ld   e, e                                        ; $5397: $5b
	ld   h, d                                        ; $5398: $62
	or   l                                           ; $5399: $b5
	ld   a, [de]                                     ; $539a: $1a
	ld   h, e                                        ; $539b: $63
	cp   d                                           ; $539c: $ba
	ld   a, l                                        ; $539d: $7d
	cp   b                                           ; $539e: $b8
	cp   c                                           ; $539f: $b9
	ld   l, c                                        ; $53a0: $69
	add  e                                           ; $53a1: $83
	sub  a                                           ; $53a2: $97
	add  hl, hl                                      ; $53a3: $29
	add  h                                           ; $53a4: $84
	sbc  d                                           ; $53a5: $9a
	ld   a, d                                        ; $53a6: $7a

Call_0e8_53a7:
	cp   c                                           ; $53a7: $b9
	sbc  c                                           ; $53a8: $99
	ld   a, c                                        ; $53a9: $79
	and  l                                           ; $53aa: $a5
	adc  c                                           ; $53ab: $89
	ld   b, a                                        ; $53ac: $47
	add  [hl]                                        ; $53ad: $86
	ld   a, c                                        ; $53ae: $79
	sbc  d                                           ; $53af: $9a
	xor  d                                           ; $53b0: $aa
	sbc  b                                           ; $53b1: $98
	ld   a, b                                        ; $53b2: $78
	and  a                                           ; $53b3: $a7
	ld   a, c                                        ; $53b4: $79
	halt                                             ; $53b5: $76
	ld   [hl], a                                     ; $53b6: $77
	ld   a, b                                        ; $53b7: $78
	adc  c                                           ; $53b8: $89

Call_0e8_53b9:
	sbc  b                                           ; $53b9: $98
	sbc  b                                           ; $53ba: $98
	ld   [hl], a                                     ; $53bb: $77
	xor  b                                           ; $53bc: $a8
	ld   a, b                                        ; $53bd: $78
	add  a                                           ; $53be: $87
	ld   a, b                                        ; $53bf: $78
	ld   a, b                                        ; $53c0: $78
	add  a                                           ; $53c1: $87
	sbc  c                                           ; $53c2: $99
	adc  b                                           ; $53c3: $88
	add  a                                           ; $53c4: $87
	sbc  c                                           ; $53c5: $99
	adc  c                                           ; $53c6: $89
	sub  a                                           ; $53c7: $97
	adc  b                                           ; $53c8: $88
	ld   a, b                                        ; $53c9: $78
	ld   [hl], a                                     ; $53ca: $77
	sbc  b                                           ; $53cb: $98
	adc  c                                           ; $53cc: $89
	adc  b                                           ; $53cd: $88
	sbc  c                                           ; $53ce: $99
	sbc  c                                           ; $53cf: $99
	add  a                                           ; $53d0: $87
	add  a                                           ; $53d1: $87
	ld   a, b                                        ; $53d2: $78
	ld   [hl], a                                     ; $53d3: $77
	adc  b                                           ; $53d4: $88
	adc  c                                           ; $53d5: $89
	adc  b                                           ; $53d6: $88
	sbc  b                                           ; $53d7: $98
	sbc  b                                           ; $53d8: $98
	adc  c                                           ; $53d9: $89
	add  a                                           ; $53da: $87
	add  a                                           ; $53db: $87
	ld   a, b                                        ; $53dc: $78
	ld   a, b                                        ; $53dd: $78
	adc  b                                           ; $53de: $88
	adc  c                                           ; $53df: $89
	adc  b                                           ; $53e0: $88
	xor  b                                           ; $53e1: $a8
	adc  c                                           ; $53e2: $89
	add  a                                           ; $53e3: $87
	add  a                                           ; $53e4: $87
	ld   a, b                                        ; $53e5: $78
	ld   a, b                                        ; $53e6: $78
	adc  b                                           ; $53e7: $88
	adc  c                                           ; $53e8: $89
	adc  b                                           ; $53e9: $88
	sbc  b                                           ; $53ea: $98
	sbc  c                                           ; $53eb: $99
	adc  b                                           ; $53ec: $88
	add  a                                           ; $53ed: $87
	ld   [hl], a                                     ; $53ee: $77
	ld   [hl], a                                     ; $53ef: $77
	adc  b                                           ; $53f0: $88
	adc  c                                           ; $53f1: $89
	adc  c                                           ; $53f2: $89
	adc  b                                           ; $53f3: $88
	sbc  c                                           ; $53f4: $99
	adc  c                                           ; $53f5: $89
	add  a                                           ; $53f6: $87
	ld   [hl], a                                     ; $53f7: $77
	ld   [hl], a                                     ; $53f8: $77
	ld   a, b                                        ; $53f9: $78
	adc  c                                           ; $53fa: $89
	adc  c                                           ; $53fb: $89
	sbc  b                                           ; $53fc: $98
	sbc  c                                           ; $53fd: $99
	sbc  c                                           ; $53fe: $99
	adc  b                                           ; $53ff: $88
	ld   [hl], a                                     ; $5400: $77
	ld   [hl], a                                     ; $5401: $77
	ld   [hl], a                                     ; $5402: $77
	adc  b                                           ; $5403: $88
	sbc  c                                           ; $5404: $99
	sbc  b                                           ; $5405: $98
	sbc  b                                           ; $5406: $98
	sbc  c                                           ; $5407: $99
	adc  b                                           ; $5408: $88
	ld   [hl], a                                     ; $5409: $77
	ld   [hl], a                                     ; $540a: $77
	ld   [hl], a                                     ; $540b: $77
	adc  b                                           ; $540c: $88
	adc  c                                           ; $540d: $89
	sbc  c                                           ; $540e: $99
	sbc  c                                           ; $540f: $99
	sbc  c                                           ; $5410: $99
	adc  b                                           ; $5411: $88
	add  a                                           ; $5412: $87
	ld   [hl], a                                     ; $5413: $77
	ld   [hl], a                                     ; $5414: $77
	adc  b                                           ; $5415: $88
	adc  c                                           ; $5416: $89
	sbc  c                                           ; $5417: $99
	adc  c                                           ; $5418: $89
	adc  c                                           ; $5419: $89
	sub  a                                           ; $541a: $97
	add  a                                           ; $541b: $87
	ld   [hl], a                                     ; $541c: $77
	ld   [hl], a                                     ; $541d: $77
	add  a                                           ; $541e: $87
	adc  b                                           ; $541f: $88
	sbc  c                                           ; $5420: $99
	adc  c                                           ; $5421: $89
	sbc  c                                           ; $5422: $99
	sbc  b                                           ; $5423: $98
	add  a                                           ; $5424: $87
	ld   [hl], a                                     ; $5425: $77
	ld   [hl], a                                     ; $5426: $77
	ld   [hl], a                                     ; $5427: $77
	adc  c                                           ; $5428: $89
	adc  c                                           ; $5429: $89
	adc  b                                           ; $542a: $88
	sbc  c                                           ; $542b: $99

Jump_0e8_542c:
	adc  c                                           ; $542c: $89
	add  a                                           ; $542d: $87
	ld   [hl], a                                     ; $542e: $77
	ld   [hl], a                                     ; $542f: $77
	ld   [hl], a                                     ; $5430: $77
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	sbc  c                                           ; $5433: $99
	sbc  c                                           ; $5434: $99
	sbc  b                                           ; $5435: $98
	add  a                                           ; $5436: $87
	add  a                                           ; $5437: $87
	ld   [hl], a                                     ; $5438: $77
	ld   [hl], a                                     ; $5439: $77
	adc  b                                           ; $543a: $88
	adc  b                                           ; $543b: $88
	sbc  c                                           ; $543c: $99
	sbc  c                                           ; $543d: $99
	adc  b                                           ; $543e: $88
	adc  b                                           ; $543f: $88
	add  a                                           ; $5440: $87
	ld   [hl], a                                     ; $5441: $77
	ld   [hl], a                                     ; $5442: $77
	ld   a, b                                        ; $5443: $78

jr_0e8_5444:
	adc  c                                           ; $5444: $89
	sbc  c                                           ; $5445: $99
	adc  c                                           ; $5446: $89
	sbc  c                                           ; $5447: $99
	adc  b                                           ; $5448: $88
	ld   [hl], a                                     ; $5449: $77
	ld   [hl], a                                     ; $544a: $77
	ld   [hl], a                                     ; $544b: $77
	ld   a, b                                        ; $544c: $78
	adc  b                                           ; $544d: $88
	sbc  b                                           ; $544e: $98
	adc  b                                           ; $544f: $88
	sbc  c                                           ; $5450: $99
	sbc  c                                           ; $5451: $99
	ld   a, b                                        ; $5452: $78
	ld   [hl], a                                     ; $5453: $77
	ld   [hl], a                                     ; $5454: $77
	ld   a, b                                        ; $5455: $78
	adc  b                                           ; $5456: $88
	adc  c                                           ; $5457: $89
	adc  c                                           ; $5458: $89
	sbc  c                                           ; $5459: $99
	adc  c                                           ; $545a: $89
	adc  b                                           ; $545b: $88
	ld   [hl], a                                     ; $545c: $77
	ld   [hl], a                                     ; $545d: $77
	ld   [hl], a                                     ; $545e: $77
	adc  b                                           ; $545f: $88
	sbc  c                                           ; $5460: $99
	adc  b                                           ; $5461: $88
	sbc  c                                           ; $5462: $99
	adc  b                                           ; $5463: $88
	sbc  b                                           ; $5464: $98
	ld   [hl], a                                     ; $5465: $77
	ld   [hl], a                                     ; $5466: $77
	ld   [hl], a                                     ; $5467: $77
	adc  c                                           ; $5468: $89
	sbc  c                                           ; $5469: $99
	adc  b                                           ; $546a: $88
	adc  c                                           ; $546b: $89
	sub  a                                           ; $546c: $97
	adc  b                                           ; $546d: $88
	ld   [hl], a                                     ; $546e: $77
	ld   [hl], a                                     ; $546f: $77
	ld   a, b                                        ; $5470: $78
	adc  c                                           ; $5471: $89
	adc  b                                           ; $5472: $88
	sbc  b                                           ; $5473: $98
	ld   a, b                                        ; $5474: $78
	sub  a                                           ; $5475: $97
	adc  b                                           ; $5476: $88
	ld   [hl], a                                     ; $5477: $77
	add  a                                           ; $5478: $87
	ld   a, b                                        ; $5479: $78
	ld   a, c                                        ; $547a: $79
	sbc  c                                           ; $547b: $99
	sbc  c                                           ; $547c: $99
	ld   [hl], a                                     ; $547d: $77
	xor  c                                           ; $547e: $a9
	ld   l, c                                        ; $547f: $69
	add  [hl]                                        ; $5480: $86
	add  a                                           ; $5481: $87
	ld   l, c                                        ; $5482: $69
	adc  b                                           ; $5483: $88
	sbc  c                                           ; $5484: $99
	xor  b                                           ; $5485: $a8
	halt                                             ; $5486: $76
	xor  c                                           ; $5487: $a9
	ld   e, d                                        ; $5488: $5a
	sub  h                                           ; $5489: $94
	ld   a, c                                        ; $548a: $79
	ld   e, b                                        ; $548b: $58
	and  a                                           ; $548c: $a7
	xor  e                                           ; $548d: $ab
	xor  c                                           ; $548e: $a9
	add  [hl]                                        ; $548f: $86
	adc  d                                           ; $5490: $8a
	ld   b, a                                        ; $5491: $47
	and  e                                           ; $5492: $a3
	ld   e, e                                        ; $5493: $5b
	ld   d, l                                        ; $5494: $55
	rst  ToBoot                                         ; $5495: $c7
	xor  l                                           ; $5496: $ad

Call_0e8_5497:
	cp   d                                           ; $5497: $ba
	sub  a                                           ; $5498: $97
	ld   l, e                                        ; $5499: $6b
	ld   h, e                                        ; $549a: $63
	or   l                                           ; $549b: $b5
	ld   a, [de]                                     ; $549c: $1a
	ld   h, d                                        ; $549d: $62
	cp   c                                           ; $549e: $b9
	ld   l, a                                        ; $549f: $6f
	cp   d                                           ; $54a0: $ba
	jp   z, $b15a                                    ; $54a1: $ca $5a $b1

	sbc  c                                           ; $54a4: $99
	rla                                              ; $54a5: $17

Call_0e8_54a6:
	sub  c                                           ; $54a6: $91
	adc  e                                           ; $54a7: $8b
	ld   c, l                                        ; $54a8: $4d
	jp   hl                                          ; $54a9: $e9


	db   $dd                                         ; $54aa: $dd
	halt                                             ; $54ab: $76
	push de                                          ; $54ac: $d5
	dec  e                                           ; $54ad: $1d
	ld   sp, $1ec3                                   ; $54ae: $31 $c3 $1e
	ld   h, l                                        ; $54b1: $65
	ld   a, [$a6bf]                                  ; $54b2: $fa $bf $a6
	sbc  e                                           ; $54b5: $9b
	ld   h, $c1                                      ; $54b6: $26 $c1
	inc  a                                           ; $54b8: $3c
	dec  d                                           ; $54b9: $15
	db   $e3                                         ; $54ba: $e3
	xor  a                                           ; $54bb: $af
	adc  [hl]                                        ; $54bc: $8e
	rst  $30                                         ; $54bd: $f7
	ld   a, e                                        ; $54be: $7b
	sub  c                                           ; $54bf: $91
	sbc  b                                           ; $54c0: $98
	jr   jr_0e8_5444                                 ; $54c1: $18 $81

	xor  e                                           ; $54c3: $ab
	cpl                                              ; $54c4: $2f
	rst  $30                                         ; $54c5: $f7
	db   $fc                                         ; $54c6: $fc
	ld   l, c                                        ; $54c7: $69
	add  $2b                                         ; $54c8: $c6 $2b
	ld   b, c                                        ; $54ca: $41
	and  h                                           ; $54cb: $a4
	inc  e                                           ; $54cc: $1c
	ld   [hl], h                                     ; $54cd: $74
	ei                                               ; $54ce: $fb
	sbc  a                                           ; $54cf: $9f
	sub  [hl]                                        ; $54d0: $96
	cp   d                                           ; $54d1: $ba
	ld   b, l                                        ; $54d2: $45
	or   c                                           ; $54d3: $b1
	add  hl, hl                                      ; $54d4: $29
	inc  de                                          ; $54d5: $13
	push bc                                          ; $54d6: $c5
	ld   a, a                                        ; $54d7: $7f
	sbc  l                                           ; $54d8: $9d
	rst  $30                                         ; $54d9: $f7
	adc  d                                           ; $54da: $8a
	sub  h                                           ; $54db: $94
	ld   l, b                                        ; $54dc: $68
	dec  d                                           ; $54dd: $15
	add  c                                           ; $54de: $81
	ld   l, e                                        ; $54df: $6b
	ld   c, h                                        ; $54e0: $4c
	ld   hl, sp-$02                                  ; $54e1: $f8 $fe
	ld   l, c                                        ; $54e3: $69
	and  a                                           ; $54e4: $a7
	ld   c, b                                        ; $54e5: $48
	ld   h, c                                        ; $54e6: $61
	halt                                             ; $54e7: $76
	add  hl, de                                      ; $54e8: $19
	and  h                                           ; $54e9: $a4
	db   $ed                                         ; $54ea: $ed
	sbc  a                                           ; $54eb: $9f
	or   a                                           ; $54ec: $b7
	xor  c                                           ; $54ed: $a9
	ld   h, h                                        ; $54ee: $64
	sub  e                                           ; $54ef: $93
	jr   z, jr_0e8_5525                              ; $54f0: $28 $33

	or   [hl]                                        ; $54f2: $b6
	adc  a                                           ; $54f3: $8f
	xor  l                                           ; $54f4: $ad
	rst  $30                                         ; $54f5: $f7
	sbc  d                                           ; $54f6: $9a
	add  l                                           ; $54f7: $85
	ld   h, a                                        ; $54f8: $67
	inc  d                                           ; $54f9: $14
	ld   [hl], d                                     ; $54fa: $72
	ld   a, d                                        ; $54fb: $7a
	ld   e, l                                        ; $54fc: $5d
	ld   hl, sp-$04                                  ; $54fd: $f8 $fc
	ld   a, d                                        ; $54ff: $7a
	sub  a                                           ; $5500: $97
	ld   b, a                                        ; $5501: $47
	ld   d, c                                        ; $5502: $51
	ld   h, h                                        ; $5503: $64
	ld   a, [hl-]                                    ; $5504: $3a
	add  a                                           ; $5505: $87
	ld   a, [$88bf]                                  ; $5506: $fa $bf $88
	sbc  b                                           ; $5509: $98
	ld   d, l                                        ; $550a: $55
	ld   [hl], d                                     ; $550b: $72
	ld   b, [hl]                                     ; $550c: $46
	scf                                              ; $550d: $37
	and  a                                           ; $550e: $a7
	adc  $af                                         ; $550f: $ce $af
	ret  z                                           ; $5511: $c8

	sbc  b                                           ; $5512: $98
	ld   [hl], h                                     ; $5513: $74
	ld   [hl], l                                     ; $5514: $75
	ld   d, $44                                      ; $5515: $16 $44
	xor  b                                           ; $5517: $a8
	xor  [hl]                                        ; $5518: $ae
	cp   l                                           ; $5519: $bd
	add  sp, -$77                                    ; $551a: $e8 $89
	add  h                                           ; $551c: $84
	ld   d, a                                        ; $551d: $57
	dec  d                                           ; $551e: $15
	ld   h, e                                        ; $551f: $63
	sbc  c                                           ; $5520: $99
	adc  l                                           ; $5521: $8d
	set  3, e                                        ; $5522: $cb $db
	adc  b                                           ; $5524: $88

jr_0e8_5525:
	sub  l                                           ; $5525: $95
	ld   c, b                                        ; $5526: $48
	inc  hl                                          ; $5527: $23
	ld   [hl], e                                     ; $5528: $73
	ld   a, c                                        ; $5529: $79
	adc  e                                           ; $552a: $8b
	db   $eb                                         ; $552b: $eb
	call $8688                                       ; $552c: $cd $88 $86
	scf                                              ; $552f: $37
	ld   b, d                                        ; $5530: $42
	ld   [hl], h                                     ; $5531: $74
	ld   l, c                                        ; $5532: $69
	xor  d                                           ; $5533: $aa
	db   $eb                                         ; $5534: $eb
	call $8688                                       ; $5535: $cd $88 $86
	scf                                              ; $5538: $37
	ld   b, d                                        ; $5539: $42
	ld   [hl], l                                     ; $553a: $75
	ld   e, d                                        ; $553b: $5a
	sbc  d                                           ; $553c: $9a
	db   $ec                                         ; $553d: $ec
	cp   [hl]                                        ; $553e: $be
	ld   a, b                                        ; $553f: $78
	sub  [hl]                                        ; $5540: $96

Call_0e8_5541:
	ld   b, a                                        ; $5541: $47
	inc  sp                                          ; $5542: $33
	ld   [hl], h                                     ; $5543: $74
	ld   l, c                                        ; $5544: $69
	sbc  d                                           ; $5545: $9a
	db   $db                                         ; $5546: $db
	call z, $9578                                    ; $5547: $cc $78 $95
	ld   b, a                                        ; $554a: $47
	inc  [hl]                                        ; $554b: $34
	ld   [hl], h                                     ; $554c: $74
	adc  d                                           ; $554d: $8a
	sbc  e                                           ; $554e: $9b
	set  3, e                                        ; $554f: $cb $db
	ld   a, c                                        ; $5551: $79
	ld   [hl], h                                     ; $5552: $74
	ld   h, [hl]                                     ; $5553: $66
	ld   h, $65                                      ; $5554: $26 $65
	cp   c                                           ; $5556: $b9
	xor  l                                           ; $5557: $ad
	cp   e                                           ; $5558: $bb
	or   a                                           ; $5559: $b7
	adc  b                                           ; $555a: $88
	ld   b, [hl]                                     ; $555b: $46
	ld   h, d                                        ; $555c: $62
	ld   h, [hl]                                     ; $555d: $66
	ld   e, d                                        ; $555e: $5a
	sbc  c                                           ; $555f: $99
	jp   c, $88ab                                    ; $5560: $da $ab $88

	sub  l                                           ; $5563: $95
	halt                                             ; $5564: $76
	ld   [hl], $66                                   ; $5565: $36 $66
	xor  c                                           ; $5567: $a9
	sbc  h                                           ; $5568: $9c
	sbc  c                                           ; $5569: $99
	or   a                                           ; $556a: $b7
	add  a                                           ; $556b: $87
	ld   d, a                                        ; $556c: $57
	ld   d, h                                        ; $556d: $54
	ld   [hl], a                                     ; $556e: $77
	ld   a, e                                        ; $556f: $7b
	xor  c                                           ; $5570: $a9
	cp   b                                           ; $5571: $b8
	xor  d                                           ; $5572: $aa
	ld   a, c                                        ; $5573: $79
	halt                                             ; $5574: $76
	ld   [hl], l                                     ; $5575: $75
	ld   e, b                                        ; $5576: $58
	ld   l, b                                        ; $5577: $68
	sbc  c                                           ; $5578: $99
	xor  c                                           ; $5579: $a9
	sbc  c                                           ; $557a: $99
	sbc  b                                           ; $557b: $98
	sub  a                                           ; $557c: $97
	ld   a, b                                        ; $557d: $78
	ld   h, a                                        ; $557e: $67
	halt                                             ; $557f: $76
	add  [hl]                                        ; $5580: $86
	ld   l, c                                        ; $5581: $69
	ld   l, b                                        ; $5582: $68
	sbc  b                                           ; $5583: $98
	sbc  c                                           ; $5584: $99
	sbc  e                                           ; $5585: $9b
	cp   b                                           ; $5586: $b8
	sub  a                                           ; $5587: $97
	ld   h, a                                        ; $5588: $67
	ld   h, l                                        ; $5589: $65
	ld   h, [hl]                                     ; $558a: $66
	ld   d, a                                        ; $558b: $57
	ld   h, a                                        ; $558c: $67
	sbc  d                                           ; $558d: $9a
	xor  h                                           ; $558e: $ac
	cp   d                                           ; $558f: $ba
	xor  c                                           ; $5590: $a9
	sbc  b                                           ; $5591: $98
	ld   h, [hl]                                     ; $5592: $66
	ld   d, l                                        ; $5593: $55
	ld   d, l                                        ; $5594: $55
	ld   [hl], a                                     ; $5595: $77
	adc  e                                           ; $5596: $8b
	cp   e                                           ; $5597: $bb
	cp   d                                           ; $5598: $ba
	sbc  d                                           ; $5599: $9a
	adc  b                                           ; $559a: $88
	ld   h, l                                        ; $559b: $65
	ld   h, l                                        ; $559c: $65
	ld   d, [hl]                                     ; $559d: $56
	ld   [hl], a                                     ; $559e: $77
	xor  d                                           ; $559f: $aa
	sbc  e                                           ; $55a0: $9b
	xor  c                                           ; $55a1: $a9
	sbc  c                                           ; $55a2: $99
	add  a                                           ; $55a3: $87
	ld   h, [hl]                                     ; $55a4: $66
	ld   h, l                                        ; $55a5: $65

Call_0e8_55a6:
	ld   h, a                                        ; $55a6: $67

Jump_0e8_55a7:
	ld   a, b                                        ; $55a7: $78
	sbc  d                                           ; $55a8: $9a
	xor  d                                           ; $55a9: $aa
	xor  d                                           ; $55aa: $aa
	sbc  b                                           ; $55ab: $98
	add  a                                           ; $55ac: $87
	ld   h, [hl]                                     ; $55ad: $66
	ld   h, [hl]                                     ; $55ae: $66
	ld   h, a                                        ; $55af: $67
	adc  b                                           ; $55b0: $88
	xor  c                                           ; $55b1: $a9
	xor  d                                           ; $55b2: $aa
	sbc  b                                           ; $55b3: $98
	sbc  b                                           ; $55b4: $98
	ld   a, b                                        ; $55b5: $78
	halt                                             ; $55b6: $76
	ld   h, [hl]                                     ; $55b7: $66
	ld   h, a                                        ; $55b8: $67
	ld   a, c                                        ; $55b9: $79
	xor  d                                           ; $55ba: $aa
	sbc  d                                           ; $55bb: $9a
	sbc  b                                           ; $55bc: $98
	sbc  b                                           ; $55bd: $98
	add  a                                           ; $55be: $87
	halt                                             ; $55bf: $76
	ld   h, a                                        ; $55c0: $67
	ld   h, a                                        ; $55c1: $67
	ld   a, b                                        ; $55c2: $78
	adc  c                                           ; $55c3: $89
	sbc  c                                           ; $55c4: $99
	sbc  c                                           ; $55c5: $99
	sbc  b                                           ; $55c6: $98
	adc  c                                           ; $55c7: $89
	ld   [hl], a                                     ; $55c8: $77
	halt                                             ; $55c9: $76
	ld   [hl], a                                     ; $55ca: $77
	ld   [hl], a                                     ; $55cb: $77
	adc  c                                           ; $55cc: $89
	sbc  c                                           ; $55cd: $99
	sbc  c                                           ; $55ce: $99
	sbc  b                                           ; $55cf: $98
	sbc  b                                           ; $55d0: $98
	ld   [hl], a                                     ; $55d1: $77
	ld   [hl], a                                     ; $55d2: $77
	ld   h, a                                        ; $55d3: $67
	ld   [hl], a                                     ; $55d4: $77
	ld   a, b                                        ; $55d5: $78
	adc  c                                           ; $55d6: $89
	sbc  c                                           ; $55d7: $99
	xor  c                                           ; $55d8: $a9
	sbc  c                                           ; $55d9: $99
	adc  b                                           ; $55da: $88
	add  a                                           ; $55db: $87
	ld   a, b                                        ; $55dc: $78
	ld   [hl], a                                     ; $55dd: $77
	ld   [hl], a                                     ; $55de: $77
	ld   [hl], a                                     ; $55df: $77
	adc  b                                           ; $55e0: $88
	adc  c                                           ; $55e1: $89
	sbc  b                                           ; $55e2: $98
	adc  b                                           ; $55e3: $88
	ld   a, c                                        ; $55e4: $79
	adc  b                                           ; $55e5: $88
	add  a                                           ; $55e6: $87
	add  a                                           ; $55e7: $87
	add  a                                           ; $55e8: $87
	ld   a, c                                        ; $55e9: $79
	ld   [hl], a                                     ; $55ea: $77
	sbc  b                                           ; $55eb: $98
	ld   a, c                                        ; $55ec: $79
	adc  b                                           ; $55ed: $88
	adc  c                                           ; $55ee: $89
	sub  a                                           ; $55ef: $97
	adc  b                                           ; $55f0: $88
	ld   a, b                                        ; $55f1: $78
	sub  a                                           ; $55f2: $97
	ld   a, c                                        ; $55f3: $79
	ld   [hl], a                                     ; $55f4: $77
	adc  b                                           ; $55f5: $88
	adc  b                                           ; $55f6: $88
	sbc  b                                           ; $55f7: $98
	sbc  b                                           ; $55f8: $98
	sbc  c                                           ; $55f9: $99
	ld   a, c                                        ; $55fa: $79
	add  a                                           ; $55fb: $87
	adc  b                                           ; $55fc: $88
	ld   a, c                                        ; $55fd: $79
	ld   a, b                                        ; $55fe: $78
	add  a                                           ; $55ff: $87
	adc  b                                           ; $5600: $88
	ld   a, c                                        ; $5601: $79
	sbc  b                                           ; $5602: $98
	sbc  b                                           ; $5603: $98
	sbc  b                                           ; $5604: $98
	adc  b                                           ; $5605: $88
	ld   a, b                                        ; $5606: $78
	adc  b                                           ; $5607: $88
	adc  b                                           ; $5608: $88
	ld   a, b                                        ; $5609: $78
	add  a                                           ; $560a: $87
	add  a                                           ; $560b: $87
	adc  c                                           ; $560c: $89
	ld   a, b                                        ; $560d: $78
	sbc  b                                           ; $560e: $98
	adc  b                                           ; $560f: $88
	ld   a, c                                        ; $5610: $79
	add  a                                           ; $5611: $87
	adc  b                                           ; $5612: $88
	adc  c                                           ; $5613: $89
	add  a                                           ; $5614: $87
	sbc  c                                           ; $5615: $99
	ld   a, c                                        ; $5616: $79
	adc  b                                           ; $5617: $88
	adc  c                                           ; $5618: $89
	add  a                                           ; $5619: $87
	add  a                                           ; $561a: $87
	adc  b                                           ; $561b: $88
	adc  b                                           ; $561c: $88
	ld   a, b                                        ; $561d: $78
	sbc  b                                           ; $561e: $98
	ld   a, c                                        ; $561f: $79
	adc  b                                           ; $5620: $88
	adc  b                                           ; $5621: $88
	adc  b                                           ; $5622: $88
	adc  b                                           ; $5623: $88
	add  a                                           ; $5624: $87
	sub  a                                           ; $5625: $97
	adc  b                                           ; $5626: $88
	ld   a, c                                        ; $5627: $79
	adc  b                                           ; $5628: $88
	adc  c                                           ; $5629: $89
	adc  b                                           ; $562a: $88
	adc  b                                           ; $562b: $88
	sbc  b                                           ; $562c: $98
	adc  b                                           ; $562d: $88
	adc  b                                           ; $562e: $88
	adc  b                                           ; $562f: $88
	adc  b                                           ; $5630: $88
	adc  c                                           ; $5631: $89
	adc  b                                           ; $5632: $88
	sbc  b                                           ; $5633: $98
	ld   a, b                                        ; $5634: $78
	add  a                                           ; $5635: $87
	adc  b                                           ; $5636: $88
	add  a                                           ; $5637: $87
	adc  b                                           ; $5638: $88
	adc  b                                           ; $5639: $88
	adc  c                                           ; $563a: $89
	ld   a, b                                        ; $563b: $78
	adc  b                                           ; $563c: $88
	adc  b                                           ; $563d: $88
	adc  b                                           ; $563e: $88
	sbc  b                                           ; $563f: $98
	adc  c                                           ; $5640: $89
	add  a                                           ; $5641: $87
	adc  b                                           ; $5642: $88
	adc  b                                           ; $5643: $88
	adc  b                                           ; $5644: $88
	adc  b                                           ; $5645: $88
	adc  b                                           ; $5646: $88
	adc  b                                           ; $5647: $88
	sbc  b                                           ; $5648: $98
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

Call_0e8_5686:
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

Call_0e8_56b7:
	adc  b                                           ; $56b7: $88

Call_0e8_56b8:
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

Call_0e8_56c7:
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
	sbc  b                                           ; $56d9: $98
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
	adc  c                                           ; $5714: $89
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	adc  b                                           ; $5719: $88
	adc  b                                           ; $571a: $88
	adc  b                                           ; $571b: $88
	adc  b                                           ; $571c: $88

Call_0e8_571d:
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
	ld   a, b                                        ; $572a: $78
	sbc  b                                           ; $572b: $98
	adc  b                                           ; $572c: $88
	adc  b                                           ; $572d: $88
	adc  b                                           ; $572e: $88
	sbc  b                                           ; $572f: $98
	adc  b                                           ; $5730: $88
	adc  b                                           ; $5731: $88
	adc  b                                           ; $5732: $88
	adc  b                                           ; $5733: $88
	adc  b                                           ; $5734: $88
	adc  b                                           ; $5735: $88
	adc  c                                           ; $5736: $89
	adc  b                                           ; $5737: $88
	adc  b                                           ; $5738: $88
	adc  b                                           ; $5739: $88
	adc  b                                           ; $573a: $88
	adc  b                                           ; $573b: $88
	adc  b                                           ; $573c: $88
	adc  b                                           ; $573d: $88
	adc  c                                           ; $573e: $89
	adc  b                                           ; $573f: $88
	adc  b                                           ; $5740: $88
	adc  b                                           ; $5741: $88
	adc  b                                           ; $5742: $88
	adc  b                                           ; $5743: $88
	adc  b                                           ; $5744: $88
	adc  c                                           ; $5745: $89
	adc  b                                           ; $5746: $88
	adc  b                                           ; $5747: $88
	adc  b                                           ; $5748: $88
	adc  b                                           ; $5749: $88
	sbc  b                                           ; $574a: $98
	adc  b                                           ; $574b: $88
	adc  b                                           ; $574c: $88
	adc  b                                           ; $574d: $88
	adc  c                                           ; $574e: $89
	adc  b                                           ; $574f: $88
	sub  a                                           ; $5750: $97
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
	sbc  b                                           ; $5762: $98
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
	sbc  c                                           ; $576e: $99
	sbc  c                                           ; $576f: $99
	sbc  b                                           ; $5770: $98
	sbc  b                                           ; $5771: $98
	adc  b                                           ; $5772: $88
	adc  b                                           ; $5773: $88
	add  a                                           ; $5774: $87
	ld   a, b                                        ; $5775: $78
	ld   a, b                                        ; $5776: $78
	adc  b                                           ; $5777: $88
	adc  c                                           ; $5778: $89
	adc  c                                           ; $5779: $89
	sbc  c                                           ; $577a: $99
	sbc  c                                           ; $577b: $99
	adc  b                                           ; $577c: $88
	sbc  b                                           ; $577d: $98
	add  a                                           ; $577e: $87
	ld   a, b                                        ; $577f: $78
	ld   [hl], a                                     ; $5780: $77
	ld   [hl], a                                     ; $5781: $77
	ld   [hl], a                                     ; $5782: $77
	ld   a, b                                        ; $5783: $78
	adc  c                                           ; $5784: $89
	sbc  c                                           ; $5785: $99

Call_0e8_5786:
	sbc  d                                           ; $5786: $9a
	xor  c                                           ; $5787: $a9
	sbc  c                                           ; $5788: $99
	sbc  b                                           ; $5789: $98
	ld   [hl], a                                     ; $578a: $77
	add  a                                           ; $578b: $87
	ld   [hl], a                                     ; $578c: $77
	ld   [hl], a                                     ; $578d: $77
	ld   [hl], a                                     ; $578e: $77
	ld   a, b                                        ; $578f: $78
	adc  b                                           ; $5790: $88
	sbc  d                                           ; $5791: $9a
	sbc  c                                           ; $5792: $99
	sbc  c                                           ; $5793: $99
	sbc  b                                           ; $5794: $98
	adc  b                                           ; $5795: $88
	add  a                                           ; $5796: $87
	ld   [hl], a                                     ; $5797: $77
	halt                                             ; $5798: $76
	ld   h, a                                        ; $5799: $67
	ld   [hl], a                                     ; $579a: $77
	ld   a, b                                        ; $579b: $78
	sbc  c                                           ; $579c: $99
	sbc  c                                           ; $579d: $99
	xor  c                                           ; $579e: $a9
	sbc  d                                           ; $579f: $9a
	sbc  c                                           ; $57a0: $99
	sbc  c                                           ; $57a1: $99
	add  a                                           ; $57a2: $87
	ld   [hl], a                                     ; $57a3: $77
	halt                                             ; $57a4: $76
	ld   h, a                                        ; $57a5: $67
	ld   [hl], a                                     ; $57a6: $77
	ld   [hl], a                                     ; $57a7: $77
	adc  b                                           ; $57a8: $88
	sbc  c                                           ; $57a9: $99
	xor  d                                           ; $57aa: $aa
	sbc  d                                           ; $57ab: $9a
	xor  d                                           ; $57ac: $aa
	sbc  c                                           ; $57ad: $99
	add  a                                           ; $57ae: $87
	ld   [hl], a                                     ; $57af: $77
	ld   [hl], a                                     ; $57b0: $77
	ld   h, [hl]                                     ; $57b1: $66
	halt                                             ; $57b2: $76
	ld   [hl], a                                     ; $57b3: $77
	adc  c                                           ; $57b4: $89
	sbc  c                                           ; $57b5: $99
	sbc  c                                           ; $57b6: $99
	xor  c                                           ; $57b7: $a9
	xor  c                                           ; $57b8: $a9
	sbc  c                                           ; $57b9: $99
	add  a                                           ; $57ba: $87
	ld   [hl], a                                     ; $57bb: $77
	ld   [hl], a                                     ; $57bc: $77
	ld   h, [hl]                                     ; $57bd: $66
	ld   [hl], a                                     ; $57be: $77
	ld   [hl], a                                     ; $57bf: $77
	adc  c                                           ; $57c0: $89
	adc  c                                           ; $57c1: $89
	sbc  d                                           ; $57c2: $9a
	sbc  c                                           ; $57c3: $99
	xor  d                                           ; $57c4: $aa
	sbc  c                                           ; $57c5: $99
	add  a                                           ; $57c6: $87
	halt                                             ; $57c7: $76
	halt                                             ; $57c8: $76
	ld   h, [hl]                                     ; $57c9: $66
	ld   h, a                                        ; $57ca: $67
	ld   [hl], a                                     ; $57cb: $77
	adc  b                                           ; $57cc: $88
	adc  b                                           ; $57cd: $88
	sbc  d                                           ; $57ce: $9a
	sbc  c                                           ; $57cf: $99
	xor  c                                           ; $57d0: $a9
	sbc  c                                           ; $57d1: $99
	add  a                                           ; $57d2: $87
	ld   h, [hl]                                     ; $57d3: $66
	halt                                             ; $57d4: $76
	ld   h, [hl]                                     ; $57d5: $66
	ld   h, a                                        ; $57d6: $67
	ld   [hl], a                                     ; $57d7: $77
	adc  b                                           ; $57d8: $88
	adc  b                                           ; $57d9: $88
	sbc  d                                           ; $57da: $9a
	xor  c                                           ; $57db: $a9
	sbc  c                                           ; $57dc: $99
	xor  b                                           ; $57dd: $a8
	sbc  b                                           ; $57de: $98
	halt                                             ; $57df: $76
	ld   h, a                                        ; $57e0: $67
	ld   h, [hl]                                     ; $57e1: $66
	ld   h, [hl]                                     ; $57e2: $66
	ld   [hl], a                                     ; $57e3: $77
	ld   a, b                                        ; $57e4: $78
	sbc  c                                           ; $57e5: $99
	sbc  c                                           ; $57e6: $99
	cp   d                                           ; $57e7: $ba
	sbc  c                                           ; $57e8: $99
	xor  c                                           ; $57e9: $a9
	sbc  b                                           ; $57ea: $98
	halt                                             ; $57eb: $76
	ld   d, [hl]                                     ; $57ec: $56
	halt                                             ; $57ed: $76
	ld   h, [hl]                                     ; $57ee: $66
	ld   [hl], a                                     ; $57ef: $77
	ld   a, b                                        ; $57f0: $78
	adc  d                                           ; $57f1: $8a
	sbc  c                                           ; $57f2: $99
	xor  d                                           ; $57f3: $aa
	xor  c                                           ; $57f4: $a9
	xor  d                                           ; $57f5: $aa
	sbc  b                                           ; $57f6: $98
	ld   [hl], a                                     ; $57f7: $77
	ld   h, l                                        ; $57f8: $65
	ld   h, [hl]                                     ; $57f9: $66
	ld   h, l                                        ; $57fa: $65
	ld   h, a                                        ; $57fb: $67
	ld   [hl], a                                     ; $57fc: $77
	adc  c                                           ; $57fd: $89
	sbc  c                                           ; $57fe: $99
	xor  e                                           ; $57ff: $ab
	cp   d                                           ; $5800: $ba
	sbc  d                                           ; $5801: $9a
	sbc  c                                           ; $5802: $99
	add  a                                           ; $5803: $87
	ld   [hl], l                                     ; $5804: $75
	ld   d, [hl]                                     ; $5805: $56
	ld   h, [hl]                                     ; $5806: $66
	ld   d, [hl]                                     ; $5807: $56
	ld   [hl], a                                     ; $5808: $77
	ld   a, b                                        ; $5809: $78
	sbc  c                                           ; $580a: $99
	sbc  d                                           ; $580b: $9a
	xor  e                                           ; $580c: $ab
	xor  d                                           ; $580d: $aa
	xor  d                                           ; $580e: $aa
	sbc  b                                           ; $580f: $98
	halt                                             ; $5810: $76
	ld   b, l                                        ; $5811: $45
	ld   h, [hl]                                     ; $5812: $66
	ld   h, [hl]                                     ; $5813: $66
	ld   h, a                                        ; $5814: $67
	ld   a, b                                        ; $5815: $78
	sbc  d                                           ; $5816: $9a
	sbc  d                                           ; $5817: $9a
	cp   e                                           ; $5818: $bb
	xor  c                                           ; $5819: $a9
	sbc  d                                           ; $581a: $9a
	sbc  b                                           ; $581b: $98
	ld   [hl], a                                     ; $581c: $77
	ld   h, h                                        ; $581d: $64
	ld   d, [hl]                                     ; $581e: $56
	ld   h, l                                        ; $581f: $65
	ld   d, a                                        ; $5820: $57
	ld   [hl], a                                     ; $5821: $77
	adc  d                                           ; $5822: $8a
	xor  d                                           ; $5823: $aa
	xor  d                                           ; $5824: $aa
	cp   d                                           ; $5825: $ba
	sbc  c                                           ; $5826: $99
	xor  c                                           ; $5827: $a9
	ld   [hl], a                                     ; $5828: $77
	ld   [hl], l                                     ; $5829: $75
	dec  [hl]                                        ; $582a: $35
	halt                                             ; $582b: $76
	ld   d, [hl]                                     ; $582c: $56
	ld   [hl], a                                     ; $582d: $77
	ld   a, b                                        ; $582e: $78
	xor  d                                           ; $582f: $aa
	xor  d                                           ; $5830: $aa
	cp   e                                           ; $5831: $bb
	xor  d                                           ; $5832: $aa
	sbc  d                                           ; $5833: $9a
	sub  a                                           ; $5834: $97
	ld   [hl], a                                     ; $5835: $77
	ld   d, e                                        ; $5836: $53
	ld   d, [hl]                                     ; $5837: $56
	ld   h, [hl]                                     ; $5838: $66
	ld   h, a                                        ; $5839: $67
	ld   [hl], a                                     ; $583a: $77
	sbc  d                                           ; $583b: $9a
	cp   c                                           ; $583c: $b9
	xor  e                                           ; $583d: $ab
	cp   d                                           ; $583e: $ba
	xor  c                                           ; $583f: $a9
	xor  c                                           ; $5840: $a9
	add  a                                           ; $5841: $87
	ld   h, h                                        ; $5842: $64
	ld   b, l                                        ; $5843: $45
	ld   h, [hl]                                     ; $5844: $66
	ld   d, [hl]                                     ; $5845: $56
	ld   [hl], a                                     ; $5846: $77
	adc  d                                           ; $5847: $8a
	xor  d                                           ; $5848: $aa
	xor  e                                           ; $5849: $ab
	cp   d                                           ; $584a: $ba
	xor  c                                           ; $584b: $a9
	xor  c                                           ; $584c: $a9
	sbc  b                                           ; $584d: $98
	halt                                             ; $584e: $76
	ld   b, e                                        ; $584f: $43
	ld   d, [hl]                                     ; $5850: $56
	ld   h, l                                        ; $5851: $65
	ld   h, a                                        ; $5852: $67
	ld   a, b                                        ; $5853: $78
	xor  d                                           ; $5854: $aa
	xor  d                                           ; $5855: $aa
	xor  e                                           ; $5856: $ab
	xor  d                                           ; $5857: $aa
	xor  d                                           ; $5858: $aa
	sbc  c                                           ; $5859: $99
	ld   [hl], a                                     ; $585a: $77
	ld   h, h                                        ; $585b: $64
	ld   b, l                                        ; $585c: $45
	ld   h, [hl]                                     ; $585d: $66
	ld   d, [hl]                                     ; $585e: $56
	ld   [hl], a                                     ; $585f: $77
	adc  c                                           ; $5860: $89
	cp   d                                           ; $5861: $ba
	xor  d                                           ; $5862: $aa
	cp   e                                           ; $5863: $bb
	xor  d                                           ; $5864: $aa
	sbc  c                                           ; $5865: $99
	sbc  b                                           ; $5866: $98
	halt                                             ; $5867: $76
	ld   b, h                                        ; $5868: $44
	ld   d, [hl]                                     ; $5869: $56
	ld   h, l                                        ; $586a: $65
	ld   h, a                                        ; $586b: $67
	ld   a, b                                        ; $586c: $78
	sbc  d                                           ; $586d: $9a
	xor  d                                           ; $586e: $aa
	xor  e                                           ; $586f: $ab
	cp   c                                           ; $5870: $b9
	xor  d                                           ; $5871: $aa
	sbc  c                                           ; $5872: $99
	ld   [hl], a                                     ; $5873: $77
	ld   h, h                                        ; $5874: $64
	ld   b, l                                        ; $5875: $45
	ld   h, [hl]                                     ; $5876: $66
	ld   d, [hl]                                     ; $5877: $56
	ld   [hl], a                                     ; $5878: $77
	adc  c                                           ; $5879: $89
	xor  e                                           ; $587a: $ab
	xor  d                                           ; $587b: $aa
	cp   d                                           ; $587c: $ba
	xor  d                                           ; $587d: $aa
	xor  d                                           ; $587e: $aa
	adc  b                                           ; $587f: $88
	ld   [hl], a                                     ; $5880: $77
	ld   d, h                                        ; $5881: $54
	ld   d, [hl]                                     ; $5882: $56
	ld   h, [hl]                                     ; $5883: $66
	ld   h, [hl]                                     ; $5884: $66
	ld   a, b                                        ; $5885: $78
	sbc  c                                           ; $5886: $99
	cp   d                                           ; $5887: $ba
	cp   d                                           ; $5888: $ba
	cp   e                                           ; $5889: $bb
	xor  c                                           ; $588a: $a9
	xor  c                                           ; $588b: $a9
	sbc  b                                           ; $588c: $98
	halt                                             ; $588d: $76
	ld   d, h                                        ; $588e: $54
	ld   d, [hl]                                     ; $588f: $56
	ld   h, [hl]                                     ; $5890: $66
	ld   [hl], a                                     ; $5891: $77
	ld   a, b                                        ; $5892: $78
	sbc  c                                           ; $5893: $99
	xor  d                                           ; $5894: $aa
	xor  e                                           ; $5895: $ab
	xor  c                                           ; $5896: $a9
	xor  d                                           ; $5897: $aa
	sbc  b                                           ; $5898: $98
	add  a                                           ; $5899: $87
	ld   [hl], l                                     ; $589a: $75
	ld   d, l                                        ; $589b: $55
	ld   h, [hl]                                     ; $589c: $66
	ld   h, [hl]                                     ; $589d: $66
	ld   [hl], a                                     ; $589e: $77
	ld   a, b                                        ; $589f: $78
	sbc  c                                           ; $58a0: $99
	xor  d                                           ; $58a1: $aa
	xor  d                                           ; $58a2: $aa
	xor  d                                           ; $58a3: $aa
	xor  c                                           ; $58a4: $a9
	adc  b                                           ; $58a5: $88
	add  a                                           ; $58a6: $87
	ld   h, [hl]                                     ; $58a7: $66
	ld   h, [hl]                                     ; $58a8: $66
	ld   h, a                                        ; $58a9: $67
	ld   h, [hl]                                     ; $58aa: $66
	ld   [hl], a                                     ; $58ab: $77
	adc  b                                           ; $58ac: $88
	adc  c                                           ; $58ad: $89
	sbc  c                                           ; $58ae: $99
	sbc  c                                           ; $58af: $99
	sbc  d                                           ; $58b0: $9a
	sbc  c                                           ; $58b1: $99
	adc  c                                           ; $58b2: $89
	add  a                                           ; $58b3: $87
	halt                                             ; $58b4: $76
	ld   h, [hl]                                     ; $58b5: $66
	ld   h, a                                        ; $58b6: $67
	halt                                             ; $58b7: $76
	ld   [hl], a                                     ; $58b8: $77
	ld   a, b                                        ; $58b9: $78
	adc  b                                           ; $58ba: $88
	sbc  c                                           ; $58bb: $99
	xor  d                                           ; $58bc: $aa
	xor  c                                           ; $58bd: $a9
	sbc  c                                           ; $58be: $99
	adc  b                                           ; $58bf: $88
	adc  b                                           ; $58c0: $88
	ld   [hl], a                                     ; $58c1: $77
	halt                                             ; $58c2: $76
	ld   h, a                                        ; $58c3: $67
	ld   [hl], a                                     ; $58c4: $77
	ld   [hl], a                                     ; $58c5: $77
	ld   [hl], a                                     ; $58c6: $77
	adc  b                                           ; $58c7: $88
	adc  c                                           ; $58c8: $89
	sbc  c                                           ; $58c9: $99
	sbc  c                                           ; $58ca: $99
	sbc  c                                           ; $58cb: $99
	sbc  b                                           ; $58cc: $98
	adc  c                                           ; $58cd: $89
	adc  b                                           ; $58ce: $88
	ld   [hl], a                                     ; $58cf: $77
	ld   [hl], a                                     ; $58d0: $77
	ld   [hl], a                                     ; $58d1: $77
	ld   [hl], a                                     ; $58d2: $77
	ld   [hl], a                                     ; $58d3: $77
	ld   a, b                                        ; $58d4: $78
	adc  b                                           ; $58d5: $88
	sbc  b                                           ; $58d6: $98
	sbc  c                                           ; $58d7: $99
	sbc  b                                           ; $58d8: $98
	adc  b                                           ; $58d9: $88
	adc  b                                           ; $58da: $88
	sbc  c                                           ; $58db: $99
	adc  b                                           ; $58dc: $88
	ld   [hl], a                                     ; $58dd: $77
	ld   [hl], a                                     ; $58de: $77
	ld   [hl], a                                     ; $58df: $77
	ld   [hl], a                                     ; $58e0: $77
	ld   [hl], a                                     ; $58e1: $77
	ld   [hl], a                                     ; $58e2: $77
	adc  b                                           ; $58e3: $88
	adc  c                                           ; $58e4: $89
	adc  b                                           ; $58e5: $88
	adc  b                                           ; $58e6: $88
	sbc  b                                           ; $58e7: $98
	adc  c                                           ; $58e8: $89
	sbc  c                                           ; $58e9: $99
	adc  b                                           ; $58ea: $88
	adc  b                                           ; $58eb: $88
	ld   a, b                                        ; $58ec: $78
	ld   [hl], a                                     ; $58ed: $77
	ld   [hl], a                                     ; $58ee: $77
	ld   [hl], a                                     ; $58ef: $77
	ld   a, b                                        ; $58f0: $78
	adc  b                                           ; $58f1: $88
	adc  b                                           ; $58f2: $88
	adc  c                                           ; $58f3: $89
	sbc  c                                           ; $58f4: $99
	sbc  c                                           ; $58f5: $99
	sbc  c                                           ; $58f6: $99
	sbc  c                                           ; $58f7: $99
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
	adc  c                                           ; $5943: $89
	sbc  c                                           ; $5944: $99
	sbc  c                                           ; $5945: $99
	adc  b                                           ; $5946: $88
	adc  b                                           ; $5947: $88
	adc  b                                           ; $5948: $88
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	ld   [hl], a                                     ; $594b: $77
	ld   [hl], a                                     ; $594c: $77
	ld   [hl], a                                     ; $594d: $77
	ld   a, b                                        ; $594e: $78
	adc  b                                           ; $594f: $88
	adc  b                                           ; $5950: $88
	adc  c                                           ; $5951: $89
	sbc  c                                           ; $5952: $99
	sbc  c                                           ; $5953: $99
	sbc  c                                           ; $5954: $99
	sbc  c                                           ; $5955: $99
	sbc  b                                           ; $5956: $98
	adc  b                                           ; $5957: $88
	adc  b                                           ; $5958: $88
	adc  b                                           ; $5959: $88
	ld   [hl], a                                     ; $595a: $77
	ld   [hl], a                                     ; $595b: $77
	ld   [hl], a                                     ; $595c: $77
	ld   [hl], a                                     ; $595d: $77
	ld   a, b                                        ; $595e: $78
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	sbc  c                                           ; $5961: $99
	sbc  c                                           ; $5962: $99
	sbc  c                                           ; $5963: $99
	sbc  c                                           ; $5964: $99
	sbc  c                                           ; $5965: $99
	sbc  c                                           ; $5966: $99
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	add  a                                           ; $5969: $87
	ld   [hl], a                                     ; $596a: $77
	ld   [hl], a                                     ; $596b: $77
	ld   [hl], a                                     ; $596c: $77
	ld   [hl], a                                     ; $596d: $77
	ld   a, b                                        ; $596e: $78
	adc  b                                           ; $596f: $88
	adc  c                                           ; $5970: $89
	sbc  b                                           ; $5971: $98
	adc  b                                           ; $5972: $88
	adc  b                                           ; $5973: $88
	adc  b                                           ; $5974: $88
	adc  c                                           ; $5975: $89
	sbc  b                                           ; $5976: $98
	adc  b                                           ; $5977: $88
	add  a                                           ; $5978: $87
	ld   [hl], a                                     ; $5979: $77
	ld   [hl], a                                     ; $597a: $77
	ld   [hl], a                                     ; $597b: $77
	ld   [hl], a                                     ; $597c: $77
	ld   [hl], a                                     ; $597d: $77
	adc  b                                           ; $597e: $88
	adc  c                                           ; $597f: $89
	adc  b                                           ; $5980: $88
	sbc  c                                           ; $5981: $99
	sbc  c                                           ; $5982: $99
	sbc  b                                           ; $5983: $98
	adc  b                                           ; $5984: $88
	sbc  c                                           ; $5985: $99
	adc  b                                           ; $5986: $88
	ld   [hl], a                                     ; $5987: $77
	ld   [hl], a                                     ; $5988: $77
	ld   [hl], a                                     ; $5989: $77
	ld   [hl], a                                     ; $598a: $77
	ld   [hl], a                                     ; $598b: $77
	ld   [hl], a                                     ; $598c: $77
	adc  b                                           ; $598d: $88
	sbc  b                                           ; $598e: $98
	adc  c                                           ; $598f: $89
	sbc  c                                           ; $5990: $99
	sbc  c                                           ; $5991: $99
	sbc  c                                           ; $5992: $99
	adc  c                                           ; $5993: $89
	sbc  b                                           ; $5994: $98
	add  a                                           ; $5995: $87
	ld   [hl], a                                     ; $5996: $77
	ld   [hl], a                                     ; $5997: $77
	ld   [hl], a                                     ; $5998: $77
	ld   [hl], a                                     ; $5999: $77
	ld   [hl], a                                     ; $599a: $77
	ld   a, b                                        ; $599b: $78
	adc  c                                           ; $599c: $89
	adc  c                                           ; $599d: $89
	sbc  c                                           ; $599e: $99
	xor  d                                           ; $599f: $aa
	xor  c                                           ; $59a0: $a9
	sbc  b                                           ; $59a1: $98
	sbc  b                                           ; $59a2: $98
	add  a                                           ; $59a3: $87
	ld   [hl], a                                     ; $59a4: $77
	ld   [hl], a                                     ; $59a5: $77
	ld   h, [hl]                                     ; $59a6: $66
	ld   h, a                                        ; $59a7: $67
	ld   [hl], a                                     ; $59a8: $77
	ld   a, b                                        ; $59a9: $78
	adc  c                                           ; $59aa: $89
	adc  c                                           ; $59ab: $89
	sbc  d                                           ; $59ac: $9a
	sbc  c                                           ; $59ad: $99
	xor  d                                           ; $59ae: $aa
	sbc  c                                           ; $59af: $99
	sbc  b                                           ; $59b0: $98
	add  a                                           ; $59b1: $87
	ld   [hl], a                                     ; $59b2: $77
	ld   h, [hl]                                     ; $59b3: $66
	ld   h, [hl]                                     ; $59b4: $66
	ld   h, [hl]                                     ; $59b5: $66
	ld   [hl], a                                     ; $59b6: $77
	ld   a, b                                        ; $59b7: $78
	adc  b                                           ; $59b8: $88
	sbc  c                                           ; $59b9: $99
	xor  c                                           ; $59ba: $a9
	xor  d                                           ; $59bb: $aa
	sbc  c                                           ; $59bc: $99
	sbc  c                                           ; $59bd: $99
	sbc  b                                           ; $59be: $98
	ld   [hl], a                                     ; $59bf: $77
	halt                                             ; $59c0: $76
	ld   h, [hl]                                     ; $59c1: $66
	ld   h, [hl]                                     ; $59c2: $66
	ld   h, [hl]                                     ; $59c3: $66
	ld   [hl], a                                     ; $59c4: $77
	adc  b                                           ; $59c5: $88
	adc  c                                           ; $59c6: $89
	xor  c                                           ; $59c7: $a9
	xor  d                                           ; $59c8: $aa
	xor  d                                           ; $59c9: $aa
	xor  c                                           ; $59ca: $a9
	sbc  b                                           ; $59cb: $98
	adc  b                                           ; $59cc: $88
	ld   [hl], a                                     ; $59cd: $77
	ld   h, [hl]                                     ; $59ce: $66
	ld   h, [hl]                                     ; $59cf: $66
	ld   h, [hl]                                     ; $59d0: $66
	ld   h, a                                        ; $59d1: $67
	ld   [hl], a                                     ; $59d2: $77
	adc  c                                           ; $59d3: $89
	sbc  d                                           ; $59d4: $9a
	sbc  d                                           ; $59d5: $9a
	xor  d                                           ; $59d6: $aa
	xor  d                                           ; $59d7: $aa
	xor  d                                           ; $59d8: $aa
	sbc  c                                           ; $59d9: $99
	add  a                                           ; $59da: $87
	halt                                             ; $59db: $76
	ld   h, [hl]                                     ; $59dc: $66
	ld   h, [hl]                                     ; $59dd: $66
	ld   h, [hl]                                     ; $59de: $66
	ld   h, a                                        ; $59df: $67
	ld   a, b                                        ; $59e0: $78
	sbc  b                                           ; $59e1: $98
	sbc  c                                           ; $59e2: $99
	xor  d                                           ; $59e3: $aa
	cp   e                                           ; $59e4: $bb
	cp   d                                           ; $59e5: $ba
	xor  d                                           ; $59e6: $aa
	adc  b                                           ; $59e7: $88
	ld   [hl], a                                     ; $59e8: $77
	ld   h, [hl]                                     ; $59e9: $66
	ld   h, l                                        ; $59ea: $65
	ld   d, l                                        ; $59eb: $55
	ld   h, [hl]                                     ; $59ec: $66
	ld   [hl], a                                     ; $59ed: $77
	ld   a, b                                        ; $59ee: $78
	adc  c                                           ; $59ef: $89
	sbc  d                                           ; $59f0: $9a
	xor  e                                           ; $59f1: $ab
	cp   e                                           ; $59f2: $bb
	cp   d                                           ; $59f3: $ba
	sbc  c                                           ; $59f4: $99
	add  a                                           ; $59f5: $87
	halt                                             ; $59f6: $76
	ld   h, l                                        ; $59f7: $65
	ld   d, l                                        ; $59f8: $55
	ld   d, [hl]                                     ; $59f9: $56
	ld   h, [hl]                                     ; $59fa: $66
	ld   [hl], a                                     ; $59fb: $77
	adc  c                                           ; $59fc: $89
	sbc  d                                           ; $59fd: $9a
	xor  e                                           ; $59fe: $ab
	xor  d                                           ; $59ff: $aa
	xor  d                                           ; $5a00: $aa
	cp   d                                           ; $5a01: $ba
	sbc  c                                           ; $5a02: $99
	add  a                                           ; $5a03: $87
	ld   h, [hl]                                     ; $5a04: $66
	ld   h, l                                        ; $5a05: $65
	ld   d, l                                        ; $5a06: $55
	ld   d, [hl]                                     ; $5a07: $56
	ld   h, a                                        ; $5a08: $67
	ld   [hl], a                                     ; $5a09: $77
	adc  b                                           ; $5a0a: $88
	xor  d                                           ; $5a0b: $aa
	xor  e                                           ; $5a0c: $ab
	xor  d                                           ; $5a0d: $aa
	cp   e                                           ; $5a0e: $bb
	xor  c                                           ; $5a0f: $a9
	halt                                             ; $5a10: $76
	ld   d, l                                        ; $5a11: $55
	ld   d, [hl]                                     ; $5a12: $56
	ld   h, [hl]                                     ; $5a13: $66
	ld   [hl], a                                     ; $5a14: $77
	adc  b                                           ; $5a15: $88
	adc  b                                           ; $5a16: $88
	adc  c                                           ; $5a17: $89
	adc  b                                           ; $5a18: $88
	sbc  c                                           ; $5a19: $99
	xor  d                                           ; $5a1a: $aa
	xor  e                                           ; $5a1b: $ab
	xor  d                                           ; $5a1c: $aa
	sub  a                                           ; $5a1d: $97
	ld   d, l                                        ; $5a1e: $55
	ld   b, h                                        ; $5a1f: $44
	ld   d, [hl]                                     ; $5a20: $56
	ld   [hl], a                                     ; $5a21: $77
	sbc  b                                           ; $5a22: $98
	adc  c                                           ; $5a23: $89
	adc  c                                           ; $5a24: $89
	sbc  b                                           ; $5a25: $98
	sbc  d                                           ; $5a26: $9a
	xor  d                                           ; $5a27: $aa
	xor  e                                           ; $5a28: $ab
	cp   e                                           ; $5a29: $bb
	sbc  b                                           ; $5a2a: $98
	ld   h, l                                        ; $5a2b: $65
	ld   b, e                                        ; $5a2c: $43
	ld   b, l                                        ; $5a2d: $45
	ld   h, a                                        ; $5a2e: $67
	sbc  c                                           ; $5a2f: $99
	xor  b                                           ; $5a30: $a8
	add  a                                           ; $5a31: $87
	adc  b                                           ; $5a32: $88
	adc  c                                           ; $5a33: $89
	sbc  e                                           ; $5a34: $9b
	cp   e                                           ; $5a35: $bb
	cp   e                                           ; $5a36: $bb
	xor  d                                           ; $5a37: $aa
	add  l                                           ; $5a38: $85
	ld   [hl-], a                                    ; $5a39: $32
	inc  h                                           ; $5a3a: $24
	ld   h, a                                        ; $5a3b: $67
	adc  c                                           ; $5a3c: $89
	xor  c                                           ; $5a3d: $a9
	sbc  b                                           ; $5a3e: $98
	ld   a, b                                        ; $5a3f: $78
	adc  c                                           ; $5a40: $89
	xor  d                                           ; $5a41: $aa
	cp   e                                           ; $5a42: $bb
	xor  e                                           ; $5a43: $ab
	res  3, b                                        ; $5a44: $cb $98
	ld   h, e                                        ; $5a46: $63
	ld   hl, $7825                                   ; $5a47: $21 $25 $78
	sbc  d                                           ; $5a4a: $9a
	sbc  b                                           ; $5a4b: $98
	sub  a                                           ; $5a4c: $97
	ld   a, b                                        ; $5a4d: $78
	adc  c                                           ; $5a4e: $89
	sbc  e                                           ; $5a4f: $9b
	xor  e                                           ; $5a50: $ab
	xor  e                                           ; $5a51: $ab
	cp   d                                           ; $5a52: $ba
	and  [hl]                                        ; $5a53: $a6
	ld   b, d                                        ; $5a54: $42
	ld   [de], a                                     ; $5a55: $12
	ld   b, a                                        ; $5a56: $47
	ld   a, b                                        ; $5a57: $78
	sbc  c                                           ; $5a58: $99
	sbc  b                                           ; $5a59: $98
	ld   a, b                                        ; $5a5a: $78
	adc  c                                           ; $5a5b: $89
	xor  d                                           ; $5a5c: $aa
	cp   e                                           ; $5a5d: $bb
	xor  e                                           ; $5a5e: $ab
	cp   e                                           ; $5a5f: $bb
	cp   c                                           ; $5a60: $b9
	ld   [hl], h                                     ; $5a61: $74
	ld   hl, $6813                                   ; $5a62: $21 $13 $68
	xor  c                                           ; $5a65: $a9
	xor  c                                           ; $5a66: $a9
	ld   [hl], a                                     ; $5a67: $77
	ld   a, c                                        ; $5a68: $79
	adc  d                                           ; $5a69: $8a
	cp   d                                           ; $5a6a: $ba
	xor  d                                           ; $5a6b: $aa
	cp   d                                           ; $5a6c: $ba
	cp   h                                           ; $5a6d: $bc
	cp   c                                           ; $5a6e: $b9
	ld   d, e                                        ; $5a6f: $53
	ld   de, $8935                                   ; $5a70: $11 $35 $89
	cp   d                                           ; $5a73: $ba
	adc  b                                           ; $5a74: $88
	ld   [hl], a                                     ; $5a75: $77
	ld   a, c                                        ; $5a76: $79
	sbc  d                                           ; $5a77: $9a
	cp   e                                           ; $5a78: $bb
	cp   d                                           ; $5a79: $ba
	xor  e                                           ; $5a7a: $ab
	call z, Call_0e8_52b9                            ; $5a7b: $cc $b9 $52
	ld   de, $8915                                   ; $5a7e: $11 $15 $89
	xor  d                                           ; $5a81: $aa
	sub  a                                           ; $5a82: $97
	ld   [hl], a                                     ; $5a83: $77
	ld   a, c                                        ; $5a84: $79
	sbc  e                                           ; $5a85: $9b
	xor  d                                           ; $5a86: $aa
	xor  c                                           ; $5a87: $a9
	xor  e                                           ; $5a88: $ab
	set  1, b                                        ; $5a89: $cb $c8
	ld   d, d                                        ; $5a8b: $52
	ld   de, $8a36                                   ; $5a8c: $11 $36 $8a
	sbc  d                                           ; $5a8f: $9a
	sub  a                                           ; $5a90: $97
	ld   h, [hl]                                     ; $5a91: $66
	adc  d                                           ; $5a92: $8a
	cp   h                                           ; $5a93: $bc
	xor  d                                           ; $5a94: $aa
	sbc  d                                           ; $5a95: $9a
	xor  d                                           ; $5a96: $aa
	call z, Call_0e8_73c9                            ; $5a97: $cc $c9 $73
	ld   de, $7b14                                   ; $5a9a: $11 $14 $7b
	cp   e                                           ; $5a9d: $bb
	sub  [hl]                                        ; $5a9e: $96
	ld   h, a                                        ; $5a9f: $67
	ld   a, c                                        ; $5aa0: $79
	xor  e                                           ; $5aa1: $ab
	xor  d                                           ; $5aa2: $aa
	sbc  b                                           ; $5aa3: $98
	adc  d                                           ; $5aa4: $8a
	call z, Call_0e8_73cb                            ; $5aa5: $cc $cb $73
	ld   de, $7a24                                   ; $5aa8: $11 $24 $7a
	cp   c                                           ; $5aab: $b9
	adc  b                                           ; $5aac: $88
	halt                                             ; $5aad: $76
	ld   l, c                                        ; $5aae: $69
	sbc  d                                           ; $5aaf: $9a
	xor  d                                           ; $5ab0: $aa
	sbc  c                                           ; $5ab1: $99
	xor  e                                           ; $5ab2: $ab
	cp   h                                           ; $5ab3: $bc
	res  2, l                                        ; $5ab4: $cb $95
	ld   hl, $4812                                   ; $5ab6: $21 $12 $48
	xor  e                                           ; $5ab9: $ab
	cp   b                                           ; $5aba: $b8
	ld   d, [hl]                                     ; $5abb: $56
	ld   a, b                                        ; $5abc: $78
	sbc  c                                           ; $5abd: $99
	cp   d                                           ; $5abe: $ba
	xor  d                                           ; $5abf: $aa
	sbc  c                                           ; $5ac0: $99
	xor  h                                           ; $5ac1: $ac
	db   $dd                                         ; $5ac2: $dd
	cp   b                                           ; $5ac3: $b8
	ld   d, d                                        ; $5ac4: $52
	ld   de, $9b24                                   ; $5ac5: $11 $24 $9b
	xor  d                                           ; $5ac8: $aa
	add  [hl]                                        ; $5ac9: $86
	ld   h, a                                        ; $5aca: $67
	adc  d                                           ; $5acb: $8a
	xor  e                                           ; $5acc: $ab
	xor  c                                           ; $5acd: $a9
	adc  c                                           ; $5ace: $89
	xor  d                                           ; $5acf: $aa
	call $85db                                       ; $5ad0: $cd $db $85
	ld   hl, $6913                                   ; $5ad3: $21 $13 $69
	cp   d                                           ; $5ad6: $ba
	add  a                                           ; $5ad7: $87
	halt                                             ; $5ad8: $76
	ld   h, a                                        ; $5ad9: $67
	sbc  e                                           ; $5ada: $9b
	xor  d                                           ; $5adb: $aa
	adc  c                                           ; $5adc: $89
	sbc  d                                           ; $5add: $9a
	call z, $b8dc                                    ; $5ade: $cc $dc $b8
	ld   b, e                                        ; $5ae1: $43
	ld   [hl+], a                                    ; $5ae2: $22
	inc  h                                           ; $5ae3: $24
	adc  d                                           ; $5ae4: $8a
	cp   d                                           ; $5ae5: $ba
	add  l                                           ; $5ae6: $85
	ld   d, a                                        ; $5ae7: $57
	adc  c                                           ; $5ae8: $89
	sbc  d                                           ; $5ae9: $9a
	sbc  c                                           ; $5aea: $99
	adc  c                                           ; $5aeb: $89
	adc  d                                           ; $5aec: $8a
	call $96db                                       ; $5aed: $cd $db $96
	ld   [hl-], a                                    ; $5af0: $32
	inc  hl                                          ; $5af1: $23
	ld   e, b                                        ; $5af2: $58
	xor  c                                           ; $5af3: $a9
	adc  b                                           ; $5af4: $88
	halt                                             ; $5af5: $76
	ld   h, a                                        ; $5af6: $67
	sbc  d                                           ; $5af7: $9a
	xor  d                                           ; $5af8: $aa
	adc  c                                           ; $5af9: $89
	adc  c                                           ; $5afa: $89
	cp   h                                           ; $5afb: $bc
	call c, Call_0e8_75ba                            ; $5afc: $dc $ba $75
	ld   b, e                                        ; $5aff: $43
	inc  [hl]                                        ; $5b00: $34
	ld   b, [hl]                                     ; $5b01: $46
	xor  e                                           ; $5b02: $ab
	sub  a                                           ; $5b03: $97
	ld   h, [hl]                                     ; $5b04: $66
	ld   l, b                                        ; $5b05: $68
	sbc  d                                           ; $5b06: $9a
	xor  b                                           ; $5b07: $a8
	sbc  c                                           ; $5b08: $99
	adc  c                                           ; $5b09: $89
	call z, $bacb                                    ; $5b0a: $cc $cb $ba
	ld   [hl], l                                     ; $5b0d: $75
	ld   [hl+], a                                    ; $5b0e: $22
	inc  h                                           ; $5b0f: $24
	ld   l, c                                        ; $5b10: $69
	ret                                              ; $5b11: $c9


	add  l                                           ; $5b12: $85
	ld   b, l                                        ; $5b13: $45
	adc  d                                           ; $5b14: $8a
	xor  c                                           ; $5b15: $a9
	adc  b                                           ; $5b16: $88
	sbc  c                                           ; $5b17: $99
	xor  e                                           ; $5b18: $ab
	cp   h                                           ; $5b19: $bc
	call z, Call_0e8_53b9                            ; $5b1a: $cc $b9 $53
	inc  sp                                          ; $5b1d: $33
	ld   b, l                                        ; $5b1e: $45
	ld   l, b                                        ; $5b1f: $68
	xor  c                                           ; $5b20: $a9
	sub  a                                           ; $5b21: $97
	ld   d, [hl]                                     ; $5b22: $56
	ld   a, c                                        ; $5b23: $79
	xor  c                                           ; $5b24: $a9
	sbc  c                                           ; $5b25: $99
	sbc  b                                           ; $5b26: $98
	sbc  d                                           ; $5b27: $9a
	cp   h                                           ; $5b28: $bc
	db   $db                                         ; $5b29: $db
	xor  b                                           ; $5b2a: $a8
	ld   h, l                                        ; $5b2b: $65
	ld   b, e                                        ; $5b2c: $43
	ld   b, h                                        ; $5b2d: $44
	ld   e, b                                        ; $5b2e: $58
	sbc  c                                           ; $5b2f: $99
	add  a                                           ; $5b30: $87
	ld   h, [hl]                                     ; $5b31: $66
	ld   a, c                                        ; $5b32: $79
	xor  c                                           ; $5b33: $a9
	sbc  b                                           ; $5b34: $98
	sbc  c                                           ; $5b35: $99
	xor  d                                           ; $5b36: $aa
	cp   e                                           ; $5b37: $bb
	res  7, c                                        ; $5b38: $cb $b9
	ld   h, l                                        ; $5b3a: $65
	ld   d, l                                        ; $5b3b: $55
	ld   d, l                                        ; $5b3c: $55
	ld   b, l                                        ; $5b3d: $45
	ld   a, d                                        ; $5b3e: $7a
	xor  c                                           ; $5b3f: $a9
	ld   [hl], l                                     ; $5b40: $75
	ld   e, b                                        ; $5b41: $58
	xor  c                                           ; $5b42: $a9
	add  a                                           ; $5b43: $87
	ld   a, c                                        ; $5b44: $79
	xor  e                                           ; $5b45: $ab
	cp   c                                           ; $5b46: $b9
	sbc  e                                           ; $5b47: $9b
	call c, Call_0e8_55a6                            ; $5b48: $dc $a6 $55
	ld   h, [hl]                                     ; $5b4b: $66
	ld   d, h                                        ; $5b4c: $54
	dec  [hl]                                        ; $5b4d: $35
	sbc  h                                           ; $5b4e: $9c
	ret                                              ; $5b4f: $c9


	ld   h, h                                        ; $5b50: $64
	ld   c, b                                        ; $5b51: $48
	xor  d                                           ; $5b52: $aa
	halt                                             ; $5b53: $76
	ld   a, d                                        ; $5b54: $7a
	xor  d                                           ; $5b55: $aa
	xor  d                                           ; $5b56: $aa
	cp   h                                           ; $5b57: $bc
	call z, Call_0e8_5686                            ; $5b58: $cc $86 $56
	ld   [hl], a                                     ; $5b5b: $77
	ld   h, h                                        ; $5b5c: $64
	inc  [hl]                                        ; $5b5d: $34
	ld   a, d                                        ; $5b5e: $7a
	res  0, l                                        ; $5b5f: $cb $85
	ld   b, l                                        ; $5b61: $45
	adc  c                                           ; $5b62: $89
	sub  a                                           ; $5b63: $97
	ld   h, a                                        ; $5b64: $67
	xor  e                                           ; $5b65: $ab
	cp   d                                           ; $5b66: $ba
	xor  e                                           ; $5b67: $ab
	call z, $65a8                                    ; $5b68: $cc $a8 $65
	ld   h, a                                        ; $5b6b: $67
	adc  b                                           ; $5b6c: $88
	ld   h, l                                        ; $5b6d: $65
	ld   [hl-], a                                    ; $5b6e: $32
	ld   e, d                                        ; $5b6f: $5a
	db   $ed                                         ; $5b70: $ed
	add  h                                           ; $5b71: $84
	dec  [hl]                                        ; $5b72: $35
	ld   a, c                                        ; $5b73: $79
	add  a                                           ; $5b74: $87
	ld   h, a                                        ; $5b75: $67
	xor  e                                           ; $5b76: $ab
	xor  c                                           ; $5b77: $a9
	sbc  e                                           ; $5b78: $9b
	call c, Call_0e8_76b9                            ; $5b79: $dc $b9 $76
	ld   h, a                                        ; $5b7c: $67
	adc  b                                           ; $5b7d: $88
	halt                                             ; $5b7e: $76
	ld   d, e                                        ; $5b7f: $53
	dec  [hl]                                        ; $5b80: $35
	sbc  [hl]                                        ; $5b81: $9e
	reti                                             ; $5b82: $d9


	ld   b, d                                        ; $5b83: $42
	scf                                              ; $5b84: $37
	sbc  c                                           ; $5b85: $99
	add  a                                           ; $5b86: $87
	adc  c                                           ; $5b87: $89
	xor  c                                           ; $5b88: $a9
	adc  c                                           ; $5b89: $89
	xor  l                                           ; $5b8a: $ad
	db   $db                                         ; $5b8b: $db
	sbc  b                                           ; $5b8c: $98
	ld   [hl], a                                     ; $5b8d: $77
	ld   [hl], a                                     ; $5b8e: $77
	adc  c                                           ; $5b8f: $89
	add  a                                           ; $5b90: $87
	ld   h, h                                        ; $5b91: $64
	inc  sp                                          ; $5b92: $33
	ld   a, l                                        ; $5b93: $7d
	db   $fd                                         ; $5b94: $fd
	ld   [hl], d                                     ; $5b95: $72
	inc  de                                          ; $5b96: $13
	adc  e                                           ; $5b97: $8b
	cp   c                                           ; $5b98: $b9
	ld   [hl], a                                     ; $5b99: $77
	sbc  d                                           ; $5b9a: $9a
	sbc  b                                           ; $5b9b: $98
	sbc  e                                           ; $5b9c: $9b
	db   $dd                                         ; $5b9d: $dd
	sub  a                                           ; $5b9e: $97
	ld   h, a                                        ; $5b9f: $67
	adc  c                                           ; $5ba0: $89
	adc  b                                           ; $5ba1: $88
	ld   [hl], a                                     ; $5ba2: $77
	halt                                             ; $5ba3: $76
	ld   d, h                                        ; $5ba4: $54
	inc  [hl]                                        ; $5ba5: $34
	sbc  [hl]                                        ; $5ba6: $9e
	db   $fc                                         ; $5ba7: $fc
	ld   d, c                                        ; $5ba8: $51
	dec  d                                           ; $5ba9: $15
	cp   l                                           ; $5baa: $bd
	or   a                                           ; $5bab: $b7
	ld   d, [hl]                                     ; $5bac: $56
	sbc  c                                           ; $5bad: $99
	adc  b                                           ; $5bae: $88
	xor  h                                           ; $5baf: $ac
	db   $db                                         ; $5bb0: $db
	sub  [hl]                                        ; $5bb1: $96
	ld   l, b                                        ; $5bb2: $68
	cp   e                                           ; $5bb3: $bb
	add  a                                           ; $5bb4: $87
	ld   h, a                                        ; $5bb5: $67
	adc  b                                           ; $5bb6: $88
	ld   h, h                                        ; $5bb7: $64
	ld   [hl+], a                                    ; $5bb8: $22
	ld   e, e                                        ; $5bb9: $5b
	cp   $93                                         ; $5bba: $fe $93
	ld   [de], a                                     ; $5bbc: $12
	ld   a, e                                        ; $5bbd: $7b
	jp   z, $7976                                    ; $5bbe: $ca $76 $79

	sub  a                                           ; $5bc1: $97
	adc  d                                           ; $5bc2: $8a
	sbc  $b8                                         ; $5bc3: $de $b8
	ld   h, a                                        ; $5bc5: $67
	sbc  d                                           ; $5bc6: $9a
	xor  c                                           ; $5bc7: $a9
	ld   [hl], a                                     ; $5bc8: $77
	ld   a, b                                        ; $5bc9: $78
	halt                                             ; $5bca: $76
	ld   d, h                                        ; $5bcb: $54
	inc  sp                                          ; $5bcc: $33
	ld   a, [hl]                                     ; $5bcd: $7e
	db   $fc                                         ; $5bce: $fc
	ld   d, c                                        ; $5bcf: $51
	inc  d                                           ; $5bd0: $14
	xor  l                                           ; $5bd1: $ad
	ret  z                                           ; $5bd2: $c8

	ld   d, [hl]                                     ; $5bd3: $56
	adc  c                                           ; $5bd4: $89
	add  a                                           ; $5bd5: $87
	sbc  e                                           ; $5bd6: $9b
	db   $ed                                         ; $5bd7: $ed
	sub  [hl]                                        ; $5bd8: $96
	ld   l, b                                        ; $5bd9: $68
	xor  e                                           ; $5bda: $ab
	xor  c                                           ; $5bdb: $a9
	ld   [hl], a                                     ; $5bdc: $77
	ld   [hl], a                                     ; $5bdd: $77
	halt                                             ; $5bde: $76
	ld   d, h                                        ; $5bdf: $54
	inc  hl                                          ; $5be0: $23
	sbc  a                                           ; $5be1: $9f
	ei                                               ; $5be2: $fb
	ld   d, c                                        ; $5be3: $51
	dec  b                                           ; $5be4: $05
	xor  l                                           ; $5be5: $ad
	and  a                                           ; $5be6: $a7
	ld   h, [hl]                                     ; $5be7: $66
	adc  c                                           ; $5be8: $89
	halt                                             ; $5be9: $76
	sbc  e                                           ; $5bea: $9b
	db   $dd                                         ; $5beb: $dd
	sub  [hl]                                        ; $5bec: $96
	ld   l, b                                        ; $5bed: $68
	xor  e                                           ; $5bee: $ab
	xor  c                                           ; $5bef: $a9
	sbc  b                                           ; $5bf0: $98
	add  a                                           ; $5bf1: $87
	ld   h, [hl]                                     ; $5bf2: $66
	ld   d, l                                        ; $5bf3: $55
	inc  sp                                          ; $5bf4: $33
	adc  l                                           ; $5bf5: $8d
	db   $fd                                         ; $5bf6: $fd
	ld   h, c                                        ; $5bf7: $61
	inc  d                                           ; $5bf8: $14
	xor  h                                           ; $5bf9: $ac
	cp   b                                           ; $5bfa: $b8
	ld   h, [hl]                                     ; $5bfb: $66
	ld   a, b                                        ; $5bfc: $78
	halt                                             ; $5bfd: $76
	adc  e                                           ; $5bfe: $8b
	db   $ed                                         ; $5bff: $ed
	sub  [hl]                                        ; $5c00: $96
	ld   h, a                                        ; $5c01: $67
	xor  e                                           ; $5c02: $ab
	cp   c                                           ; $5c03: $b9
	sbc  c                                           ; $5c04: $99
	add  a                                           ; $5c05: $87
	ld   h, [hl]                                     ; $5c06: $66
	ld   h, [hl]                                     ; $5c07: $66
	ld   b, d                                        ; $5c08: $42
	ld   l, h                                        ; $5c09: $6c
	rst  $38                                         ; $5c0a: $ff
	add  d                                           ; $5c0b: $82
	ld   [de], a                                     ; $5c0c: $12
	ld   a, e                                        ; $5c0d: $7b
	ret                                              ; $5c0e: $c9


	ld   h, [hl]                                     ; $5c0f: $66
	ld   a, c                                        ; $5c10: $79
	ld   [hl], l                                     ; $5c11: $75
	ld   l, d                                        ; $5c12: $6a
	call Call_0e8_56c7                               ; $5c13: $cd $c7 $56
	sbc  e                                           ; $5c16: $9b
	cp   d                                           ; $5c17: $ba
	adc  b                                           ; $5c18: $88
	adc  b                                           ; $5c19: $88
	halt                                             ; $5c1a: $76
	ld   h, [hl]                                     ; $5c1b: $66
	ld   h, e                                        ; $5c1c: $63
	ld   d, $ef                                      ; $5c1d: $16 $ef
	rst  $30                                         ; $5c1f: $f7
	ld   de, $bc28                                   ; $5c20: $11 $28 $bc
	sub  a                                           ; $5c23: $97
	ld   l, b                                        ; $5c24: $68
	add  [hl]                                        ; $5c25: $86
	ld   d, [hl]                                     ; $5c26: $56
	xor  [hl]                                        ; $5c27: $ae
	db   $db                                         ; $5c28: $db
	ld   h, l                                        ; $5c29: $65
	ld   l, d                                        ; $5c2a: $6a
	cp   e                                           ; $5c2b: $bb
	xor  c                                           ; $5c2c: $a9
	sbc  c                                           ; $5c2d: $99
	sub  a                                           ; $5c2e: $97
	ld   h, [hl]                                     ; $5c2f: $66
	halt                                             ; $5c30: $76
	ld   b, c                                        ; $5c31: $41
	dec  hl                                          ; $5c32: $2b
	rst  $38                                         ; $5c33: $ff
	jp   Jump_0e8_6b11                               ; $5c34: $c3 $11 $6b


	cp   d                                           ; $5c37: $ba
	ld   [hl], a                                     ; $5c38: $77
	adc  b                                           ; $5c39: $88
	ld   [hl], l                                     ; $5c3a: $75
	ld   d, a                                        ; $5c3b: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c3c: $cf
	reti                                             ; $5c3d: $d9


	ld   d, h                                        ; $5c3e: $54
	ld   l, d                                        ; $5c3f: $6a
	res  3, d                                        ; $5c40: $cb $9a
	xor  c                                           ; $5c42: $a9
	add  [hl]                                        ; $5c43: $86
	ld   h, [hl]                                     ; $5c44: $66
	halt                                             ; $5c45: $76
	ld   b, c                                        ; $5c46: $41
	dec  a                                           ; $5c47: $3d
	rst  $38                                         ; $5c48: $ff
	or   d                                           ; $5c49: $b2
	ld   bc, $ba6b                                   ; $5c4a: $01 $6b $ba

jr_0e8_5c4d:
	ld   [hl], a                                     ; $5c4d: $77
	sbc  d                                           ; $5c4e: $9a
	ld   [hl], l                                     ; $5c4f: $75
	ld   b, [hl]                                     ; $5c50: $46
	adc  $e9                                         ; $5c51: $ce $e9
	ld   h, h                                        ; $5c53: $64
	ld   l, d                                        ; $5c54: $6a
	xor  d                                           ; $5c55: $aa
	sbc  c                                           ; $5c56: $99
	xor  d                                           ; $5c57: $aa
	add  a                                           ; $5c58: $87
	ld   h, l                                        ; $5c59: $65
	ld   h, a                                        ; $5c5a: $67
	ld   h, d                                        ; $5c5b: $62
	jr   jr_0e8_5c4d                                 ; $5c5c: $18 $ef

	or   $21                                         ; $5c5e: $f6 $21
	add  hl, sp                                      ; $5c60: $39
	cp   e                                           ; $5c61: $bb
	adc  b                                           ; $5c62: $88
	sbc  c                                           ; $5c63: $99
	add  [hl]                                        ; $5c64: $86
	ld   d, h                                        ; $5c65: $54
	sbc  h                                           ; $5c66: $9c
	call c, Call_0e8_5786                            ; $5c67: $dc $86 $57
	sbc  c                                           ; $5c6a: $99
	sbc  c                                           ; $5c6b: $99
	xor  e                                           ; $5c6c: $ab
	xor  b                                           ; $5c6d: $a8
	ld   [hl], l                                     ; $5c6e: $75
	ld   d, a                                        ; $5c6f: $57
	ld   [hl], a                                     ; $5c70: $77
	ld   b, c                                        ; $5c71: $41
	inc  l                                           ; $5c72: $2c
	rst  $38                                         ; $5c73: $ff
	or   e                                           ; $5c74: $b3
	ld   hl, $ba6b                                   ; $5c75: $21 $6b $ba
	ld   a, b                                        ; $5c78: $78
	sbc  d                                           ; $5c79: $9a
	ld   [hl], l                                     ; $5c7a: $75
	ld   b, l                                        ; $5c7b: $45
	xor  h                                           ; $5c7c: $ac
	db   $eb                                         ; $5c7d: $eb
	ld   [hl], l                                     ; $5c7e: $75
	ld   l, b                                        ; $5c7f: $68
	sbc  c                                           ; $5c80: $99
	sbc  c                                           ; $5c81: $99
	cp   h                                           ; $5c82: $bc
	cp   b                                           ; $5c83: $b8
	ld   h, l                                        ; $5c84: $65
	ld   a, c                                        ; $5c85: $79
	sbc  c                                           ; $5c86: $99
	ld   h, h                                        ; $5c87: $64
	ld   de, $ff9e                                   ; $5c88: $11 $9e $ff
	ld   h, h                                        ; $5c8b: $64
	inc  [hl]                                        ; $5c8c: $34
	adc  b                                           ; $5c8d: $88
	sbc  b                                           ; $5c8e: $98
	adc  c                                           ; $5c8f: $89
	xor  c                                           ; $5c90: $a9
	ld   h, l                                        ; $5c91: $65
	ld   e, b                                        ; $5c92: $58
	xor  h                                           ; $5c93: $ac
	ret  z                                           ; $5c94: $c8

	halt                                             ; $5c95: $76
	ld   a, b                                        ; $5c96: $78
	ld   [hl], a                                     ; $5c97: $77
	adc  d                                           ; $5c98: $8a
	cp   e                                           ; $5c99: $bb
	and  a                                           ; $5c9a: $a7
	ld   h, a                                        ; $5c9b: $67
	adc  c                                           ; $5c9c: $89
	sbc  b                                           ; $5c9d: $98
	add  a                                           ; $5c9e: $87
	ld   h, l                                        ; $5c9f: $65
	ld   b, e                                        ; $5ca0: $43
	ld   a, [hl-]                                    ; $5ca1: $3a
	xor  $e6                                         ; $5ca2: $ee $e6
	ld   b, h                                        ; $5ca4: $44
	ld   c, c                                        ; $5ca5: $49
	sbc  c                                           ; $5ca6: $99
	sbc  c                                           ; $5ca7: $99
	sbc  c                                           ; $5ca8: $99
	add  [hl]                                        ; $5ca9: $86
	ld   d, l                                        ; $5caa: $55
	adc  e                                           ; $5cab: $8b
	call z, Call_0e8_6788                            ; $5cac: $cc $88 $67
	ld   [hl], a                                     ; $5caf: $77
	ld   [hl], a                                     ; $5cb0: $77
	sbc  d                                           ; $5cb1: $9a
	cp   d                                           ; $5cb2: $ba
	add  a                                           ; $5cb3: $87
	ld   h, a                                        ; $5cb4: $67
	adc  c                                           ; $5cb5: $89
	sbc  c                                           ; $5cb6: $99
	sbc  c                                           ; $5cb7: $99
	add  a                                           ; $5cb8: $87
	ld   [hl], a                                     ; $5cb9: $77
	ld   a, b                                        ; $5cba: $78
	sbc  c                                           ; $5cbb: $99
	add  [hl]                                        ; $5cbc: $86
	ld   d, h                                        ; $5cbd: $54
	ld   c, c                                        ; $5cbe: $49
	call $65c7                                       ; $5cbf: $cd $c7 $65
	ld   e, c                                        ; $5cc2: $59
	adc  c                                           ; $5cc3: $89
	sbc  c                                           ; $5cc4: $99
	sbc  c                                           ; $5cc5: $99
	add  a                                           ; $5cc6: $87
	ld   h, l                                        ; $5cc7: $65
	ld   a, d                                        ; $5cc8: $7a
	cp   d                                           ; $5cc9: $ba
	adc  b                                           ; $5cca: $88
	ld   a, b                                        ; $5ccb: $78
	ld   [hl], a                                     ; $5ccc: $77
	ld   [hl], a                                     ; $5ccd: $77
	adc  c                                           ; $5cce: $89
	sbc  c                                           ; $5ccf: $99
	add  a                                           ; $5cd0: $87
	ld   [hl], a                                     ; $5cd1: $77
	adc  c                                           ; $5cd2: $89
	adc  c                                           ; $5cd3: $89
	sbc  c                                           ; $5cd4: $99
	sbc  b                                           ; $5cd5: $98
	ld   [hl], a                                     ; $5cd6: $77
	ld   a, c                                        ; $5cd7: $79
	adc  c                                           ; $5cd8: $89
	sbc  b                                           ; $5cd9: $98
	sbc  b                                           ; $5cda: $98
	add  a                                           ; $5cdb: $87
	ld   a, b                                        ; $5cdc: $78
	adc  b                                           ; $5cdd: $88
	ld   [hl], a                                     ; $5cde: $77
	ld   h, [hl]                                     ; $5cdf: $66
	ld   d, l                                        ; $5ce0: $55
	sbc  e                                           ; $5ce1: $9b
	bit  4, [hl]                                     ; $5ce2: $cb $66
	ld   b, [hl]                                     ; $5ce4: $46
	adc  b                                           ; $5ce5: $88
	xor  b                                           ; $5ce6: $a8
	sbc  b                                           ; $5ce7: $98
	sbc  b                                           ; $5ce8: $98
	halt                                             ; $5ce9: $76
	ld   l, b                                        ; $5cea: $68
	xor  e                                           ; $5ceb: $ab
	sbc  b                                           ; $5cec: $98
	ld   [hl], a                                     ; $5ced: $77
	ld   [hl], a                                     ; $5cee: $77
	ld   [hl], a                                     ; $5cef: $77
	ld   a, b                                        ; $5cf0: $78
	sbc  d                                           ; $5cf1: $9a
	adc  b                                           ; $5cf2: $88
	ld   [hl], a                                     ; $5cf3: $77
	ld   a, b                                        ; $5cf4: $78
	sbc  b                                           ; $5cf5: $98
	adc  c                                           ; $5cf6: $89
	sbc  c                                           ; $5cf7: $99
	add  a                                           ; $5cf8: $87
	ld   [hl], a                                     ; $5cf9: $77
	adc  c                                           ; $5cfa: $89
	adc  c                                           ; $5cfb: $89
	adc  b                                           ; $5cfc: $88
	adc  b                                           ; $5cfd: $88
	adc  b                                           ; $5cfe: $88
	ld   a, b                                        ; $5cff: $78
	adc  b                                           ; $5d00: $88
	sbc  c                                           ; $5d01: $99
	adc  b                                           ; $5d02: $88
	adc  b                                           ; $5d03: $88
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	adc  b                                           ; $5d06: $88
	adc  b                                           ; $5d07: $88
	add  a                                           ; $5d08: $87
	ld   a, b                                        ; $5d09: $78
	adc  b                                           ; $5d0a: $88
	sbc  b                                           ; $5d0b: $98
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  c                                           ; $5d10: $89
	sbc  b                                           ; $5d11: $98
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

Call_0e8_5f9f:
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
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	adc  b                                           ; $6066: $88
	adc  b                                           ; $6067: $88
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	adc  b                                           ; $606b: $88
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	adc  b                                           ; $606e: $88
	adc  b                                           ; $606f: $88
	adc  b                                           ; $6070: $88
	adc  b                                           ; $6071: $88
	adc  b                                           ; $6072: $88
	adc  b                                           ; $6073: $88
	adc  b                                           ; $6074: $88
	adc  b                                           ; $6075: $88
	adc  b                                           ; $6076: $88
	adc  b                                           ; $6077: $88
	adc  b                                           ; $6078: $88
	adc  b                                           ; $6079: $88
	adc  b                                           ; $607a: $88
	adc  b                                           ; $607b: $88
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	adc  b                                           ; $607f: $88
	adc  b                                           ; $6080: $88
	adc  b                                           ; $6081: $88
	adc  b                                           ; $6082: $88
	adc  b                                           ; $6083: $88
	adc  b                                           ; $6084: $88
	adc  b                                           ; $6085: $88
	adc  b                                           ; $6086: $88
	adc  b                                           ; $6087: $88
	adc  b                                           ; $6088: $88
	adc  b                                           ; $6089: $88
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	adc  b                                           ; $608c: $88
	adc  b                                           ; $608d: $88
	adc  b                                           ; $608e: $88
	adc  b                                           ; $608f: $88
	adc  b                                           ; $6090: $88
	adc  b                                           ; $6091: $88
	adc  b                                           ; $6092: $88
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	adc  b                                           ; $6095: $88
	adc  b                                           ; $6096: $88
	adc  b                                           ; $6097: $88
	adc  b                                           ; $6098: $88
	adc  b                                           ; $6099: $88
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	adc  b                                           ; $609e: $88
	adc  b                                           ; $609f: $88
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	adc  b                                           ; $60a7: $88
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	adc  b                                           ; $60ab: $88
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	adc  b                                           ; $60b5: $88
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	adc  b                                           ; $60b8: $88
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
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
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  b                                           ; $60ce: $88
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	adc  b                                           ; $60d6: $88
	adc  b                                           ; $60d7: $88
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	adc  b                                           ; $60dc: $88
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	adc  b                                           ; $60e0: $88
	adc  b                                           ; $60e1: $88
	adc  b                                           ; $60e2: $88
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  b                                           ; $60e5: $88
	adc  b                                           ; $60e6: $88
	adc  b                                           ; $60e7: $88
	adc  b                                           ; $60e8: $88
	adc  b                                           ; $60e9: $88
	adc  b                                           ; $60ea: $88
	adc  b                                           ; $60eb: $88
	adc  b                                           ; $60ec: $88
	adc  b                                           ; $60ed: $88
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	adc  b                                           ; $60f3: $88
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	adc  b                                           ; $60f7: $88
	adc  b                                           ; $60f8: $88
	adc  b                                           ; $60f9: $88
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	adc  b                                           ; $60fe: $88
	adc  b                                           ; $60ff: $88
	adc  b                                           ; $6100: $88
	adc  b                                           ; $6101: $88
	adc  b                                           ; $6102: $88
	adc  b                                           ; $6103: $88
	adc  b                                           ; $6104: $88
	adc  b                                           ; $6105: $88
	adc  b                                           ; $6106: $88
	adc  b                                           ; $6107: $88
	adc  b                                           ; $6108: $88
	adc  b                                           ; $6109: $88
	adc  b                                           ; $610a: $88
	adc  b                                           ; $610b: $88
	adc  b                                           ; $610c: $88
	adc  b                                           ; $610d: $88
	adc  b                                           ; $610e: $88
	adc  b                                           ; $610f: $88
	adc  b                                           ; $6110: $88
	adc  b                                           ; $6111: $88
	adc  b                                           ; $6112: $88
	adc  b                                           ; $6113: $88
	adc  b                                           ; $6114: $88
	adc  b                                           ; $6115: $88
	adc  b                                           ; $6116: $88
	adc  b                                           ; $6117: $88
	adc  b                                           ; $6118: $88
	adc  b                                           ; $6119: $88
	adc  b                                           ; $611a: $88
	adc  b                                           ; $611b: $88
	adc  b                                           ; $611c: $88
	adc  b                                           ; $611d: $88
	adc  b                                           ; $611e: $88
	adc  b                                           ; $611f: $88
	adc  b                                           ; $6120: $88
	adc  b                                           ; $6121: $88
	adc  b                                           ; $6122: $88
	adc  b                                           ; $6123: $88
	adc  b                                           ; $6124: $88
	adc  b                                           ; $6125: $88
	adc  b                                           ; $6126: $88
	adc  b                                           ; $6127: $88
	adc  b                                           ; $6128: $88
	adc  b                                           ; $6129: $88
	adc  b                                           ; $612a: $88
	adc  b                                           ; $612b: $88
	adc  b                                           ; $612c: $88
	adc  b                                           ; $612d: $88
	adc  b                                           ; $612e: $88
	adc  b                                           ; $612f: $88
	adc  b                                           ; $6130: $88
	adc  b                                           ; $6131: $88
	adc  b                                           ; $6132: $88
	adc  b                                           ; $6133: $88
	adc  b                                           ; $6134: $88
	adc  b                                           ; $6135: $88
	adc  b                                           ; $6136: $88
	adc  b                                           ; $6137: $88
	adc  b                                           ; $6138: $88
	adc  b                                           ; $6139: $88
	adc  b                                           ; $613a: $88
	adc  b                                           ; $613b: $88
	adc  b                                           ; $613c: $88
	adc  b                                           ; $613d: $88
	adc  b                                           ; $613e: $88
	adc  b                                           ; $613f: $88
	adc  b                                           ; $6140: $88
	adc  b                                           ; $6141: $88
	adc  b                                           ; $6142: $88
	adc  b                                           ; $6143: $88
	adc  b                                           ; $6144: $88
	adc  b                                           ; $6145: $88
	adc  b                                           ; $6146: $88
	adc  b                                           ; $6147: $88
	adc  b                                           ; $6148: $88
	adc  b                                           ; $6149: $88
	adc  b                                           ; $614a: $88
	adc  b                                           ; $614b: $88
	adc  b                                           ; $614c: $88
	adc  b                                           ; $614d: $88
	adc  b                                           ; $614e: $88
	adc  b                                           ; $614f: $88
	adc  b                                           ; $6150: $88
	adc  b                                           ; $6151: $88
	adc  b                                           ; $6152: $88
	adc  b                                           ; $6153: $88
	adc  b                                           ; $6154: $88
	adc  b                                           ; $6155: $88
	adc  b                                           ; $6156: $88
	adc  b                                           ; $6157: $88
	adc  b                                           ; $6158: $88
	adc  b                                           ; $6159: $88
	adc  b                                           ; $615a: $88
	adc  b                                           ; $615b: $88
	adc  b                                           ; $615c: $88
	adc  b                                           ; $615d: $88
	adc  b                                           ; $615e: $88
	adc  b                                           ; $615f: $88
	adc  b                                           ; $6160: $88
	adc  b                                           ; $6161: $88
	adc  b                                           ; $6162: $88
	adc  b                                           ; $6163: $88
	adc  b                                           ; $6164: $88
	adc  b                                           ; $6165: $88
	adc  b                                           ; $6166: $88
	adc  b                                           ; $6167: $88
	adc  b                                           ; $6168: $88
	adc  b                                           ; $6169: $88
	adc  b                                           ; $616a: $88
	adc  b                                           ; $616b: $88
	adc  b                                           ; $616c: $88
	adc  b                                           ; $616d: $88
	adc  b                                           ; $616e: $88
	adc  b                                           ; $616f: $88
	adc  b                                           ; $6170: $88
	adc  b                                           ; $6171: $88
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	adc  b                                           ; $6176: $88
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	adc  b                                           ; $6179: $88
	adc  b                                           ; $617a: $88
	adc  b                                           ; $617b: $88
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	adc  b                                           ; $617e: $88
	adc  b                                           ; $617f: $88
	adc  b                                           ; $6180: $88
	adc  b                                           ; $6181: $88
	adc  b                                           ; $6182: $88
	adc  b                                           ; $6183: $88
	adc  b                                           ; $6184: $88
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  b                                           ; $6187: $88
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	adc  b                                           ; $618d: $88
	adc  b                                           ; $618e: $88
	adc  b                                           ; $618f: $88
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	adc  b                                           ; $6192: $88
	adc  b                                           ; $6193: $88
	adc  b                                           ; $6194: $88
	adc  b                                           ; $6195: $88
	adc  b                                           ; $6196: $88
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	adc  b                                           ; $6199: $88
	adc  b                                           ; $619a: $88
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	adc  b                                           ; $61a4: $88
	adc  b                                           ; $61a5: $88
	adc  b                                           ; $61a6: $88
	adc  b                                           ; $61a7: $88
	adc  b                                           ; $61a8: $88
	adc  b                                           ; $61a9: $88
	adc  b                                           ; $61aa: $88
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	adc  b                                           ; $61af: $88
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  b                                           ; $61b4: $88
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	adc  b                                           ; $61b7: $88
	adc  b                                           ; $61b8: $88
	adc  b                                           ; $61b9: $88
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  b                                           ; $61bc: $88
	adc  b                                           ; $61bd: $88
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  b                                           ; $61c7: $88
	adc  b                                           ; $61c8: $88
	adc  b                                           ; $61c9: $88
	adc  b                                           ; $61ca: $88
	adc  b                                           ; $61cb: $88
	adc  b                                           ; $61cc: $88
	adc  b                                           ; $61cd: $88
	adc  b                                           ; $61ce: $88
	adc  b                                           ; $61cf: $88
	adc  b                                           ; $61d0: $88
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	adc  b                                           ; $61d8: $88
	adc  b                                           ; $61d9: $88
	adc  b                                           ; $61da: $88
	adc  b                                           ; $61db: $88
	adc  b                                           ; $61dc: $88
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  b                                           ; $61e3: $88
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	adc  b                                           ; $61e8: $88
	adc  b                                           ; $61e9: $88
	adc  b                                           ; $61ea: $88
	adc  b                                           ; $61eb: $88
	adc  b                                           ; $61ec: $88
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	adc  b                                           ; $61ef: $88
	adc  b                                           ; $61f0: $88
	adc  b                                           ; $61f1: $88
	adc  b                                           ; $61f2: $88
	adc  b                                           ; $61f3: $88
	adc  b                                           ; $61f4: $88
	adc  b                                           ; $61f5: $88
	adc  b                                           ; $61f6: $88
	adc  b                                           ; $61f7: $88
	adc  b                                           ; $61f8: $88
	adc  b                                           ; $61f9: $88
	adc  b                                           ; $61fa: $88
	adc  b                                           ; $61fb: $88
	adc  b                                           ; $61fc: $88
	adc  b                                           ; $61fd: $88
	adc  b                                           ; $61fe: $88
	adc  b                                           ; $61ff: $88
	adc  b                                           ; $6200: $88
	adc  b                                           ; $6201: $88
	adc  b                                           ; $6202: $88
	adc  b                                           ; $6203: $88
	adc  b                                           ; $6204: $88
	adc  b                                           ; $6205: $88
	adc  b                                           ; $6206: $88
	adc  b                                           ; $6207: $88
	adc  b                                           ; $6208: $88
	adc  b                                           ; $6209: $88
	adc  b                                           ; $620a: $88
	adc  b                                           ; $620b: $88
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	adc  b                                           ; $6210: $88
	adc  b                                           ; $6211: $88
	adc  b                                           ; $6212: $88
	adc  b                                           ; $6213: $88
	adc  b                                           ; $6214: $88
	adc  b                                           ; $6215: $88
	adc  b                                           ; $6216: $88
	adc  b                                           ; $6217: $88
	adc  b                                           ; $6218: $88
	adc  b                                           ; $6219: $88
	adc  b                                           ; $621a: $88
	adc  b                                           ; $621b: $88
	adc  b                                           ; $621c: $88
	adc  b                                           ; $621d: $88
	adc  b                                           ; $621e: $88
	adc  b                                           ; $621f: $88
	adc  b                                           ; $6220: $88
	adc  b                                           ; $6221: $88
	adc  b                                           ; $6222: $88
	adc  b                                           ; $6223: $88
	adc  b                                           ; $6224: $88
	adc  b                                           ; $6225: $88
	adc  b                                           ; $6226: $88
	adc  b                                           ; $6227: $88
	adc  b                                           ; $6228: $88
	adc  b                                           ; $6229: $88
	adc  b                                           ; $622a: $88
	adc  b                                           ; $622b: $88
	adc  b                                           ; $622c: $88
	adc  b                                           ; $622d: $88
	adc  b                                           ; $622e: $88
	adc  b                                           ; $622f: $88
	adc  b                                           ; $6230: $88
	adc  b                                           ; $6231: $88
	adc  b                                           ; $6232: $88
	adc  b                                           ; $6233: $88
	adc  b                                           ; $6234: $88
	adc  b                                           ; $6235: $88
	adc  b                                           ; $6236: $88
	adc  b                                           ; $6237: $88
	adc  b                                           ; $6238: $88
	adc  b                                           ; $6239: $88
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	adc  b                                           ; $623c: $88
	adc  b                                           ; $623d: $88
	adc  b                                           ; $623e: $88
	adc  b                                           ; $623f: $88
	adc  b                                           ; $6240: $88
	adc  b                                           ; $6241: $88
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
	adc  b                                           ; $624c: $88
	adc  b                                           ; $624d: $88
	adc  b                                           ; $624e: $88
	adc  b                                           ; $624f: $88
	adc  b                                           ; $6250: $88
	adc  b                                           ; $6251: $88
	adc  b                                           ; $6252: $88
	adc  b                                           ; $6253: $88
	adc  b                                           ; $6254: $88
	adc  b                                           ; $6255: $88
	adc  b                                           ; $6256: $88
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
	adc  b                                           ; $6268: $88
	adc  b                                           ; $6269: $88
	adc  b                                           ; $626a: $88
	adc  b                                           ; $626b: $88
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
	adc  b                                           ; $627b: $88
	adc  b                                           ; $627c: $88
	adc  b                                           ; $627d: $88
	adc  b                                           ; $627e: $88
	adc  b                                           ; $627f: $88
	adc  b                                           ; $6280: $88
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
	adc  b                                           ; $6290: $88
	adc  b                                           ; $6291: $88
	adc  b                                           ; $6292: $88
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
	adc  b                                           ; $62b6: $88
	adc  b                                           ; $62b7: $88
	adc  b                                           ; $62b8: $88
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	adc  b                                           ; $62bb: $88
	adc  b                                           ; $62bc: $88
	adc  b                                           ; $62bd: $88
	adc  b                                           ; $62be: $88
	adc  b                                           ; $62bf: $88
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	adc  b                                           ; $62c3: $88
	adc  b                                           ; $62c4: $88
	adc  b                                           ; $62c5: $88
	adc  b                                           ; $62c6: $88
	adc  b                                           ; $62c7: $88
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	adc  b                                           ; $62ca: $88
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	adc  b                                           ; $62cd: $88
	adc  b                                           ; $62ce: $88
	adc  b                                           ; $62cf: $88
	adc  b                                           ; $62d0: $88
	adc  b                                           ; $62d1: $88
	adc  b                                           ; $62d2: $88
	adc  b                                           ; $62d3: $88
	adc  b                                           ; $62d4: $88
	adc  b                                           ; $62d5: $88
	adc  b                                           ; $62d6: $88
	adc  b                                           ; $62d7: $88
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	adc  b                                           ; $62da: $88
	adc  b                                           ; $62db: $88
	adc  b                                           ; $62dc: $88
	adc  b                                           ; $62dd: $88
	adc  b                                           ; $62de: $88
	adc  b                                           ; $62df: $88
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	adc  b                                           ; $62e2: $88
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	adc  b                                           ; $62e5: $88
	adc  b                                           ; $62e6: $88
	adc  b                                           ; $62e7: $88
	adc  b                                           ; $62e8: $88
	adc  b                                           ; $62e9: $88
	adc  b                                           ; $62ea: $88
	adc  b                                           ; $62eb: $88
	adc  b                                           ; $62ec: $88
	adc  b                                           ; $62ed: $88
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
	adc  b                                           ; $62f9: $88
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
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	adc  b                                           ; $6331: $88
	adc  b                                           ; $6332: $88
	adc  b                                           ; $6333: $88
	adc  b                                           ; $6334: $88
	adc  b                                           ; $6335: $88
	adc  b                                           ; $6336: $88
	adc  b                                           ; $6337: $88
	adc  b                                           ; $6338: $88
	adc  b                                           ; $6339: $88
	adc  b                                           ; $633a: $88
	adc  b                                           ; $633b: $88
	adc  b                                           ; $633c: $88
	adc  b                                           ; $633d: $88
	adc  b                                           ; $633e: $88
	adc  b                                           ; $633f: $88
	adc  b                                           ; $6340: $88
	adc  b                                           ; $6341: $88
	adc  b                                           ; $6342: $88
	adc  b                                           ; $6343: $88
	adc  b                                           ; $6344: $88
	adc  b                                           ; $6345: $88
	adc  b                                           ; $6346: $88
	adc  b                                           ; $6347: $88
	adc  b                                           ; $6348: $88
	adc  b                                           ; $6349: $88
	adc  b                                           ; $634a: $88
	adc  b                                           ; $634b: $88
	adc  b                                           ; $634c: $88
	adc  b                                           ; $634d: $88
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	adc  b                                           ; $6350: $88
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	adc  b                                           ; $6353: $88
	adc  b                                           ; $6354: $88
	adc  b                                           ; $6355: $88
	adc  b                                           ; $6356: $88
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  b                                           ; $635b: $88
	adc  b                                           ; $635c: $88
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	adc  b                                           ; $635f: $88
	adc  b                                           ; $6360: $88
	adc  b                                           ; $6361: $88
	adc  b                                           ; $6362: $88
	adc  b                                           ; $6363: $88
	adc  b                                           ; $6364: $88
	adc  b                                           ; $6365: $88
	adc  b                                           ; $6366: $88
	adc  b                                           ; $6367: $88
	adc  b                                           ; $6368: $88
	adc  b                                           ; $6369: $88
	adc  b                                           ; $636a: $88
	adc  b                                           ; $636b: $88
	adc  b                                           ; $636c: $88
	adc  b                                           ; $636d: $88
	adc  b                                           ; $636e: $88
	adc  b                                           ; $636f: $88
	adc  b                                           ; $6370: $88
	adc  b                                           ; $6371: $88
	adc  b                                           ; $6372: $88
	adc  b                                           ; $6373: $88
	adc  b                                           ; $6374: $88
	adc  b                                           ; $6375: $88
	adc  b                                           ; $6376: $88
	adc  b                                           ; $6377: $88
	adc  b                                           ; $6378: $88
	adc  b                                           ; $6379: $88
	adc  b                                           ; $637a: $88
	adc  b                                           ; $637b: $88
	adc  b                                           ; $637c: $88
	adc  b                                           ; $637d: $88
	adc  b                                           ; $637e: $88
	adc  b                                           ; $637f: $88
	adc  b                                           ; $6380: $88
	adc  b                                           ; $6381: $88
	adc  b                                           ; $6382: $88
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
	adc  b                                           ; $6391: $88
	adc  b                                           ; $6392: $88
	adc  b                                           ; $6393: $88
	adc  b                                           ; $6394: $88
	adc  b                                           ; $6395: $88
	adc  b                                           ; $6396: $88
	adc  b                                           ; $6397: $88
	adc  b                                           ; $6398: $88
	adc  b                                           ; $6399: $88
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	adc  b                                           ; $639f: $88
	adc  b                                           ; $63a0: $88
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88
	adc  b                                           ; $63a3: $88
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	adc  b                                           ; $63a7: $88
	adc  b                                           ; $63a8: $88
	adc  b                                           ; $63a9: $88
	adc  b                                           ; $63aa: $88
	adc  b                                           ; $63ab: $88
	adc  b                                           ; $63ac: $88
	adc  b                                           ; $63ad: $88
	adc  b                                           ; $63ae: $88
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
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
	adc  b                                           ; $63bd: $88
	adc  b                                           ; $63be: $88
	adc  b                                           ; $63bf: $88
	adc  b                                           ; $63c0: $88
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	adc  b                                           ; $63c4: $88
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  b                                           ; $63ca: $88
	adc  b                                           ; $63cb: $88
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	adc  b                                           ; $63cf: $88
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
	adc  b                                           ; $63db: $88
	adc  b                                           ; $63dc: $88
	adc  b                                           ; $63dd: $88
	adc  b                                           ; $63de: $88
	adc  b                                           ; $63df: $88
	adc  b                                           ; $63e0: $88
	adc  b                                           ; $63e1: $88
	adc  b                                           ; $63e2: $88
	adc  b                                           ; $63e3: $88
	adc  b                                           ; $63e4: $88
	adc  b                                           ; $63e5: $88
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	adc  b                                           ; $63ea: $88
	adc  b                                           ; $63eb: $88
	adc  b                                           ; $63ec: $88
	adc  b                                           ; $63ed: $88
	adc  b                                           ; $63ee: $88
	adc  b                                           ; $63ef: $88
	adc  b                                           ; $63f0: $88
	adc  b                                           ; $63f1: $88
	adc  b                                           ; $63f2: $88
	adc  b                                           ; $63f3: $88
	adc  b                                           ; $63f4: $88
	adc  b                                           ; $63f5: $88
	adc  b                                           ; $63f6: $88
	adc  b                                           ; $63f7: $88
	adc  b                                           ; $63f8: $88
	adc  b                                           ; $63f9: $88
	adc  b                                           ; $63fa: $88
	adc  b                                           ; $63fb: $88
	adc  b                                           ; $63fc: $88
	adc  b                                           ; $63fd: $88
	adc  b                                           ; $63fe: $88
	adc  b                                           ; $63ff: $88
	adc  b                                           ; $6400: $88
	adc  b                                           ; $6401: $88
	adc  b                                           ; $6402: $88
	adc  b                                           ; $6403: $88
	adc  b                                           ; $6404: $88
	adc  b                                           ; $6405: $88
	adc  b                                           ; $6406: $88
	adc  b                                           ; $6407: $88
	adc  b                                           ; $6408: $88
	adc  b                                           ; $6409: $88
	adc  b                                           ; $640a: $88
	adc  b                                           ; $640b: $88
	adc  b                                           ; $640c: $88
	adc  b                                           ; $640d: $88
	adc  b                                           ; $640e: $88
	adc  b                                           ; $640f: $88
	adc  b                                           ; $6410: $88
	adc  b                                           ; $6411: $88
	adc  b                                           ; $6412: $88
	adc  b                                           ; $6413: $88
	adc  b                                           ; $6414: $88
	adc  b                                           ; $6415: $88
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	adc  b                                           ; $6418: $88
	adc  b                                           ; $6419: $88
	adc  b                                           ; $641a: $88
	adc  b                                           ; $641b: $88
	adc  b                                           ; $641c: $88
	adc  b                                           ; $641d: $88
	adc  b                                           ; $641e: $88
	adc  b                                           ; $641f: $88
	adc  b                                           ; $6420: $88
	adc  b                                           ; $6421: $88
	adc  b                                           ; $6422: $88
	adc  b                                           ; $6423: $88
	adc  b                                           ; $6424: $88
	adc  b                                           ; $6425: $88
	adc  b                                           ; $6426: $88
	adc  b                                           ; $6427: $88
	adc  b                                           ; $6428: $88
	adc  b                                           ; $6429: $88
	adc  b                                           ; $642a: $88
	adc  b                                           ; $642b: $88
	adc  b                                           ; $642c: $88
	adc  b                                           ; $642d: $88
	adc  b                                           ; $642e: $88
	adc  b                                           ; $642f: $88
	adc  b                                           ; $6430: $88
	adc  b                                           ; $6431: $88
	adc  b                                           ; $6432: $88
	adc  b                                           ; $6433: $88
	adc  b                                           ; $6434: $88
	adc  b                                           ; $6435: $88
	adc  b                                           ; $6436: $88
	adc  b                                           ; $6437: $88
	adc  b                                           ; $6438: $88
	adc  b                                           ; $6439: $88
	adc  b                                           ; $643a: $88
	adc  b                                           ; $643b: $88
	adc  b                                           ; $643c: $88
	adc  b                                           ; $643d: $88
	adc  b                                           ; $643e: $88
	adc  b                                           ; $643f: $88
	adc  b                                           ; $6440: $88
	adc  b                                           ; $6441: $88
	adc  b                                           ; $6442: $88
	adc  b                                           ; $6443: $88
	adc  b                                           ; $6444: $88
	adc  b                                           ; $6445: $88
	adc  b                                           ; $6446: $88
	adc  b                                           ; $6447: $88
	adc  b                                           ; $6448: $88
	adc  b                                           ; $6449: $88
	adc  b                                           ; $644a: $88
	adc  b                                           ; $644b: $88
	adc  b                                           ; $644c: $88
	adc  b                                           ; $644d: $88
	adc  b                                           ; $644e: $88
	adc  b                                           ; $644f: $88
	adc  b                                           ; $6450: $88
	adc  b                                           ; $6451: $88
	adc  b                                           ; $6452: $88
	adc  b                                           ; $6453: $88
	adc  b                                           ; $6454: $88
	adc  b                                           ; $6455: $88
	adc  b                                           ; $6456: $88
	adc  b                                           ; $6457: $88
	adc  b                                           ; $6458: $88
	adc  b                                           ; $6459: $88
	adc  b                                           ; $645a: $88
	adc  b                                           ; $645b: $88
	adc  b                                           ; $645c: $88
	adc  b                                           ; $645d: $88
	adc  b                                           ; $645e: $88
	adc  b                                           ; $645f: $88
	adc  b                                           ; $6460: $88
	adc  b                                           ; $6461: $88
	adc  b                                           ; $6462: $88
	adc  b                                           ; $6463: $88
	adc  b                                           ; $6464: $88
	adc  b                                           ; $6465: $88
	adc  b                                           ; $6466: $88
	adc  b                                           ; $6467: $88
	adc  b                                           ; $6468: $88
	adc  b                                           ; $6469: $88
	adc  b                                           ; $646a: $88
	adc  b                                           ; $646b: $88
	adc  b                                           ; $646c: $88
	adc  b                                           ; $646d: $88
	adc  b                                           ; $646e: $88
	adc  b                                           ; $646f: $88
	adc  b                                           ; $6470: $88
	adc  b                                           ; $6471: $88
	adc  b                                           ; $6472: $88
	adc  b                                           ; $6473: $88
	adc  b                                           ; $6474: $88
	adc  b                                           ; $6475: $88
	adc  b                                           ; $6476: $88
	adc  b                                           ; $6477: $88
	adc  b                                           ; $6478: $88
	adc  b                                           ; $6479: $88
	adc  b                                           ; $647a: $88
	adc  b                                           ; $647b: $88
	adc  b                                           ; $647c: $88
	adc  b                                           ; $647d: $88
	adc  b                                           ; $647e: $88
	adc  b                                           ; $647f: $88
	adc  b                                           ; $6480: $88
	adc  b                                           ; $6481: $88
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	adc  b                                           ; $6484: $88
	adc  b                                           ; $6485: $88
	adc  b                                           ; $6486: $88
	adc  b                                           ; $6487: $88
	adc  b                                           ; $6488: $88
	adc  b                                           ; $6489: $88
	adc  b                                           ; $648a: $88
	adc  b                                           ; $648b: $88
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	adc  b                                           ; $648f: $88
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	adc  b                                           ; $6492: $88
	adc  b                                           ; $6493: $88
	adc  b                                           ; $6494: $88
	adc  b                                           ; $6495: $88
	adc  b                                           ; $6496: $88

Jump_0e8_6497:
	adc  b                                           ; $6497: $88
	adc  b                                           ; $6498: $88
	adc  b                                           ; $6499: $88
	adc  b                                           ; $649a: $88
	adc  b                                           ; $649b: $88
	adc  b                                           ; $649c: $88
	adc  b                                           ; $649d: $88
	adc  b                                           ; $649e: $88
	adc  b                                           ; $649f: $88
	adc  b                                           ; $64a0: $88
	adc  b                                           ; $64a1: $88
	adc  b                                           ; $64a2: $88
	adc  b                                           ; $64a3: $88
	adc  b                                           ; $64a4: $88
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  b                                           ; $64af: $88
	adc  b                                           ; $64b0: $88
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88

Call_0e8_64b8:
	adc  b                                           ; $64b8: $88

Call_0e8_64b9:
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  b                                           ; $64bc: $88
	adc  b                                           ; $64bd: $88
	adc  b                                           ; $64be: $88
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	adc  b                                           ; $64c1: $88
	adc  b                                           ; $64c2: $88
	adc  b                                           ; $64c3: $88
	adc  b                                           ; $64c4: $88
	adc  b                                           ; $64c5: $88
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	adc  b                                           ; $64c8: $88
	adc  b                                           ; $64c9: $88
	adc  b                                           ; $64ca: $88
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	adc  b                                           ; $64cd: $88
	adc  b                                           ; $64ce: $88
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	adc  b                                           ; $64d2: $88
	adc  b                                           ; $64d3: $88
	adc  b                                           ; $64d4: $88
	adc  b                                           ; $64d5: $88
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	adc  b                                           ; $64d8: $88
	adc  b                                           ; $64d9: $88
	adc  b                                           ; $64da: $88
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	adc  b                                           ; $64dd: $88
	adc  b                                           ; $64de: $88
	adc  b                                           ; $64df: $88
	adc  b                                           ; $64e0: $88
	adc  b                                           ; $64e1: $88
	adc  b                                           ; $64e2: $88
	adc  b                                           ; $64e3: $88
	adc  b                                           ; $64e4: $88
	adc  b                                           ; $64e5: $88
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  b                                           ; $64ec: $88
	adc  b                                           ; $64ed: $88
	adc  b                                           ; $64ee: $88
	adc  b                                           ; $64ef: $88
	adc  b                                           ; $64f0: $88
	adc  b                                           ; $64f1: $88
	adc  b                                           ; $64f2: $88
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  b                                           ; $64f5: $88
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	adc  b                                           ; $64fa: $88
	adc  b                                           ; $64fb: $88
	adc  b                                           ; $64fc: $88
	adc  b                                           ; $64fd: $88
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	adc  b                                           ; $6500: $88
	adc  b                                           ; $6501: $88
	adc  b                                           ; $6502: $88
	adc  b                                           ; $6503: $88
	adc  b                                           ; $6504: $88
	adc  b                                           ; $6505: $88
	adc  b                                           ; $6506: $88
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
	adc  c                                           ; $6514: $89
	sbc  b                                           ; $6515: $98
	adc  b                                           ; $6516: $88
	adc  b                                           ; $6517: $88
	add  a                                           ; $6518: $87
	ld   [hl], a                                     ; $6519: $77
	ld   [hl], a                                     ; $651a: $77
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	sbc  c                                           ; $651d: $99
	adc  b                                           ; $651e: $88
	adc  c                                           ; $651f: $89
	sbc  b                                           ; $6520: $98
	add  a                                           ; $6521: $87
	ld   [hl], a                                     ; $6522: $77
	ld   [hl], a                                     ; $6523: $77
	ld   [hl], a                                     ; $6524: $77
	adc  b                                           ; $6525: $88
	sbc  b                                           ; $6526: $98
	sbc  c                                           ; $6527: $99
	sbc  c                                           ; $6528: $99
	sbc  b                                           ; $6529: $98
	add  a                                           ; $652a: $87
	ld   [hl], a                                     ; $652b: $77
	ld   [hl], a                                     ; $652c: $77
	ld   [hl], a                                     ; $652d: $77
	adc  b                                           ; $652e: $88
	adc  c                                           ; $652f: $89
	sbc  d                                           ; $6530: $9a
	sbc  c                                           ; $6531: $99
	adc  c                                           ; $6532: $89
	add  a                                           ; $6533: $87
	ld   [hl], a                                     ; $6534: $77
	halt                                             ; $6535: $76
	ld   [hl], a                                     ; $6536: $77
	ld   a, c                                        ; $6537: $79
	adc  b                                           ; $6538: $88
	xor  c                                           ; $6539: $a9
	sbc  d                                           ; $653a: $9a
	and  a                                           ; $653b: $a7
	adc  b                                           ; $653c: $88
	ld   h, a                                        ; $653d: $67
	ld   a, b                                        ; $653e: $78
	add  [hl]                                        ; $653f: $86
	ld   a, d                                        ; $6540: $7a
	add  a                                           ; $6541: $87
	sbc  d                                           ; $6542: $9a
	adc  d                                           ; $6543: $8a
	sub  a                                           ; $6544: $97
	ld   [hl], a                                     ; $6545: $77
	halt                                             ; $6546: $76
	ld   h, [hl]                                     ; $6547: $66
	ld   a, b                                        ; $6548: $78
	ld   a, b                                        ; $6549: $78
	sbc  c                                           ; $654a: $99
	sbc  c                                           ; $654b: $99
	sub  a                                           ; $654c: $97
	ld   l, d                                        ; $654d: $6a
	push bc                                          ; $654e: $c5
	ld   d, a                                        ; $654f: $57
	ld   [hl], l                                     ; $6550: $75
	ld   e, b                                        ; $6551: $58
	add  a                                           ; $6552: $87
	ld   e, d                                        ; $6553: $5a
	res  7, h                                        ; $6554: $cb $bc
	jp   hl                                          ; $6556: $e9


	ld   h, c                                        ; $6557: $61
	ccf                                              ; $6558: $3f
	ld   b, c                                        ; $6559: $41
	ld   l, c                                        ; $655a: $69
	ld   d, c                                        ; $655b: $51
	xor  e                                           ; $655c: $ab
	or   h                                           ; $655d: $b4
	xor  a                                           ; $655e: $af
	call z, $71bf                                    ; $655f: $cc $bf $71
	ld   de, $19f1                                   ; $6562: $11 $f1 $19
	sub  $1f                                         ; $6565: $d6 $1f
	rst  $38                                         ; $6567: $ff
	ld   c, [hl]                                     ; $6568: $4e
	ld   hl, sp-$76                                  ; $6569: $f8 $8a
	pop  af                                          ; $656b: $f1
	ld   de, $17ec                                   ; $656c: $11 $ec $17
	rst  $38                                         ; $656f: $ff
	inc  e                                           ; $6570: $1c
	rst  $38                                         ; $6571: $ff
	or   c                                           ; $6572: $b1
	db   $fd                                         ; $6573: $fd
	inc  [hl]                                        ; $6574: $34
	and  l                                           ; $6575: $a5
	ld   de, $18f9                                   ; $6576: $11 $f9 $18
	rst  $38                                         ; $6579: $ff
	ccf                                              ; $657a: $3f
	rst  $38                                         ; $657b: $ff
	ld   sp, $31f9                                   ; $657c: $31 $f9 $31
	ld   [hl], c                                     ; $657f: $71
	ld   a, [de]                                     ; $6580: $1a
	push de                                          ; $6581: $d5
	ld   a, a                                        ; $6582: $7f
	ld   sp, hl                                      ; $6583: $f9
	rst  $28                                         ; $6584: $ef
	db   $fc                                         ; $6585: $fc
	dec  e                                           ; $6586: $1d
	and  a                                           ; $6587: $a7
	ld   d, h                                        ; $6588: $54
	ld   de, $451f                                   ; $6589: $11 $1f $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $658c: $cf
	di                                               ; $658d: $f3
	db   $fd                                         ; $658e: $fd
	pop  hl                                          ; $658f: $e1
	ld   c, a                                        ; $6590: $4f
	ld   l, d                                        ; $6591: $6a
	ld   e, d                                        ; $6592: $5a
	ld   de, $15af                                   ; $6593: $11 $af $15
	rst  $38                                         ; $6596: $ff
	and  l                                           ; $6597: $a5
	db   $fd                                         ; $6598: $fd
	pop  hl                                          ; $6599: $e1
	adc  $99                                         ; $659a: $ce $99
	ld   l, d                                        ; $659c: $6a
	ld   de, $17df                                   ; $659d: $11 $df $17
	rst  $38                                         ; $65a0: $ff
	ld   h, a                                        ; $65a1: $67
	db   $fd                                         ; $65a2: $fd
	or   c                                           ; $65a3: $b1
	db   $fc                                         ; $65a4: $fc
	rst  ToBoot                                         ; $65a5: $c7
	sbc  d                                           ; $65a6: $9a
	ld   de, $189f                                   ; $65a7: $11 $9f $18
	rst  $38                                         ; $65aa: $ff
	add  h                                           ; $65ab: $84
	ei                                               ; $65ac: $fb
	pop  hl                                          ; $65ad: $e1
	db   $dd                                         ; $65ae: $dd
	jp   z, $117b                                    ; $65af: $ca $7b $11

	cpl                                              ; $65b2: $2f
	rla                                              ; $65b3: $17
	rst  JumpTable                                         ; $65b4: $df
	ldh  [c], a                                      ; $65b5: $e2
	add  sp, -$0f                                    ; $65b6: $e8 $f1
	ld   a, l                                        ; $65b8: $7d
	sbc  $6e                                         ; $65b9: $de $6e
	ld   de, $921f                                   ; $65bb: $11 $1f $92
	rst  $28                                         ; $65be: $ef
	pop  af                                          ; $65bf: $f1
	sub  $f1                                         ; $65c0: $d6 $f1
	rra                                              ; $65c2: $1f
	sbc  a                                           ; $65c3: $9f
	ld   l, h                                        ; $65c4: $6c
	ld   sp, $f119                                   ; $65c5: $31 $19 $f1
	db   $ed                                         ; $65c8: $ed
	ld   sp, hl                                      ; $65c9: $f9
	ld   l, c                                        ; $65ca: $69
	ld   a, l                                        ; $65cb: $7d
	dec  de                                          ; $65cc: $1b
	xor  a                                           ; $65cd: $af
	rst  $20                                         ; $65ce: $e7
	sub  c                                           ; $65cf: $91
	ld   de, $8ff8                                   ; $65d0: $11 $f8 $8f
	rst  $38                                         ; $65d3: $ff
	dec  sp                                          ; $65d4: $3b
	ld   e, $11                                      ; $65d5: $1e $11
	db   $eb                                         ; $65d7: $eb
	ld   sp, hl                                      ; $65d8: $f9
	and  d                                           ; $65d9: $a2
	ld   de, $3f2f                                   ; $65da: $11 $2f $3f
	rst  JumpTable                                         ; $65dd: $df
	push af                                          ; $65de: $f5
	ld   [hl], d                                     ; $65df: $72
	pop  hl                                          ; $65e0: $e1
	ld   a, e                                        ; $65e1: $7b
	rst  $38                                         ; $65e2: $ff
	adc  c                                           ; $65e3: $89
	ld   de, $f71f                                   ; $65e4: $11 $1f $f7
	cp   $f8                                         ; $65e7: $fe $f8
	ld   h, c                                        ; $65e9: $61
	ld   h, a                                        ; $65ea: $67
	ld   e, $af                                      ; $65eb: $1e $af
	ld   hl, sp+$21                                  ; $65ed: $f8 $21
	ld   de, $fffc                                   ; $65ef: $11 $fc $ff
	rst  $38                                         ; $65f2: $ff
	ld   d, l                                        ; $65f3: $55
	jr   jr_0e8_6607                                 ; $65f4: $18 $11

	ei                                               ; $65f6: $fb
	db   $fd                                         ; $65f7: $fd
	add  c                                           ; $65f8: $81
	ld   de, $af1f                                   ; $65f9: $11 $1f $af
	rst  $38                                         ; $65fc: $ff
	di                                               ; $65fd: $f3
	ld   hl, $7e81                                   ; $65fe: $21 $81 $7e
	rst  $38                                         ; $6601: $ff
	and  h                                           ; $6602: $a4
	ld   de, $fd14                                   ; $6603: $11 $14 $fd
	rst  $38                                         ; $6606: $ff

jr_0e8_6607:
	cp   $21                                         ; $6607: $fe $21
	jr   @+$20                                       ; $6609: $18 $1e

	rst  $38                                         ; $660b: $ff
	rst  $30                                         ; $660c: $f7
	ld   de, $ef11                                   ; $660d: $11 $11 $ef
	rst  $38                                         ; $6610: $ff
	rst  $38                                         ; $6611: $ff
	ld   h, c                                        ; $6612: $61
	ld   de, $ff82                                   ; $6613: $11 $82 $ff
	rst  $38                                         ; $6616: $ff
	ld   sp, $1f11                                   ; $6617: $31 $11 $1f
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	ldh  a, [c]                                      ; $661c: $f2
	ld   de, $6f47                                   ; $661d: $11 $47 $6f
	rst  $38                                         ; $6620: $ff
	pop  de                                          ; $6621: $d1
	ld   de, rAUD1LEN                                   ; $6622: $11 $11 $ff
	rst  $38                                         ; $6625: $ff
	db   $fd                                         ; $6626: $fd
	ld   de, $6a17                                   ; $6627: $11 $17 $6a
	rst  $38                                         ; $662a: $ff
	ld   hl, sp+$11                                  ; $662b: $f8 $11
	ld   de, $ff0f                                   ; $662d: $11 $0f $ff
	rst  $38                                         ; $6630: $ff
	sub  c                                           ; $6631: $91
	ld   de, $ffb5                                   ; $6632: $11 $b5 $ff
	rst  $38                                         ; $6635: $ff
	ld   hl, $1f11                                   ; $6636: $21 $11 $1f
	rst  $38                                         ; $6639: $ff
	cp   $f2                                         ; $663a: $fe $f2
	ld   de, $8f3a                                   ; $663c: $11 $3a $8f
	rst  $38                                         ; $663f: $ff
	and  c                                           ; $6640: $a1
	ld   de, rAUD1HIGH                                   ; $6641: $11 $14 $ff
	rst  $38                                         ; $6644: $ff
	jp   hl                                          ; $6645: $e9


	ld   de, $7f1a                                   ; $6646: $11 $1a $7f
	rst  $38                                         ; $6649: $ff
	pop  af                                          ; $664a: $f1
	ld   de, rAUD1LEN                                   ; $664b: $11 $11 $ff
	rst  $38                                         ; $664e: $ff
	db   $db                                         ; $664f: $db
	ld   hl, $8f19                                   ; $6650: $21 $19 $8f
	rst  $38                                         ; $6653: $ff
	push af                                          ; $6654: $f5
	ld   de, rAUD1LEN                                   ; $6655: $11 $11 $ff
	rst  $38                                         ; $6658: $ff
	call c, $1442                                    ; $6659: $dc $42 $14
	sbc  e                                           ; $665c: $9b
	db   $fd                                         ; $665d: $fd
	ld   a, [$1121]                                  ; $665e: $fa $21 $11
	rra                                              ; $6661: $1f
	rst  $38                                         ; $6662: $ff
	db   $fc                                         ; $6663: $fc
	add  e                                           ; $6664: $83
	ld   de, $ef87                                   ; $6665: $11 $87 $ef
	rst  $38                                         ; $6668: $ff
	ld   [hl], c                                     ; $6669: $71
	ld   de, rAUD1LEN                                   ; $666a: $11 $11 $ff
	rst  $38                                         ; $666d: $ff
	push bc                                          ; $666e: $c5
	ld   b, c                                        ; $666f: $41
	jr   @+$71                                       ; $6670: $18 $6f

	rst  $38                                         ; $6672: $ff
	or   $11                                         ; $6673: $f6 $11
	ld   de, $ff5f                                   ; $6675: $11 $5f $ff
	ei                                               ; $6678: $fb
	ld   b, [hl]                                     ; $6679: $46
	ld   de, $fd77                                   ; $667a: $11 $77 $fd
	ei                                               ; $667d: $fb
	ld   b, c                                        ; $667e: $41
	ld   de, $ff1f                                   ; $667f: $11 $1f $ff
	db   $fd                                         ; $6682: $fd
	sub  l                                           ; $6683: $95
	ld   d, c                                        ; $6684: $51
	ld   d, l                                        ; $6685: $55
	rst  JumpTable                                         ; $6686: $df
	rst  JumpTable                                         ; $6687: $df
	ld   h, d                                        ; $6688: $62
	ld   de, $ff15                                   ; $6689: $11 $15 $ff
	cp   $b6                                         ; $668c: $fe $b6
	ld   [hl], c                                     ; $668e: $71
	ld   d, $7f                                      ; $668f: $16 $7f
	rst  JumpTable                                         ; $6691: $df
	sub  h                                           ; $6692: $94
	ld   de, rAUD1LEN                                   ; $6693: $11 $11 $ff
	rst  $38                                         ; $6696: $ff
	ret                                              ; $6697: $c9


	halt                                             ; $6698: $76
	dec  d                                           ; $6699: $15
	ld   c, l                                        ; $669a: $4d
	db   $fd                                         ; $669b: $fd
	rst  $10                                         ; $669c: $d7
	ld   sp, $2f11                                   ; $669d: $31 $11 $2f
	rst  $38                                         ; $66a0: $ff
	db   $fc                                         ; $66a1: $fc
	ld   a, c                                        ; $66a2: $79
	ld   [hl-], a                                    ; $66a3: $32
	ld   d, l                                        ; $66a4: $55
	db   $fd                                         ; $66a5: $fd
	db   $eb                                         ; $66a6: $eb
	ld   h, c                                        ; $66a7: $61
	ld   de, $ff17                                   ; $66a8: $11 $17 $ff
	cp   $a8                                         ; $66ab: $fe $a8
	and  d                                           ; $66ad: $a2
	ld   b, h                                        ; $66ae: $44
	ld   a, [hl]                                     ; $66af: $7e
	adc  $a6                                         ; $66b0: $ce $a6
	ld   de, $df11                                   ; $66b2: $11 $11 $df
	rst  $38                                         ; $66b5: $ff
	jp   z, $25a9                                    ; $66b6: $ca $a9 $25

	ld   a, [hl-]                                    ; $66b9: $3a
	db   $ed                                         ; $66ba: $ed
	or   a                                           ; $66bb: $b7
	ld   d, c                                        ; $66bc: $51
	ld   de, $ff3f                                   ; $66bd: $11 $3f $ff
	db   $eb                                         ; $66c0: $eb
	sbc  h                                           ; $66c1: $9c
	ld   h, e                                        ; $66c2: $63
	ld   b, l                                        ; $66c3: $45
	db   $dd                                         ; $66c4: $dd
	ret                                              ; $66c5: $c9


	add  e                                           ; $66c6: $83
	ld   de, $ff16                                   ; $66c7: $11 $16 $ff
	db   $fc                                         ; $66ca: $fc
	cp   d                                           ; $66cb: $ba
	call nz, Call_0e8_6d34                           ; $66cc: $c4 $34 $6d
	call z, $21a9                                    ; $66cf: $cc $a9 $21
	ld   de, $ff7f                                   ; $66d2: $11 $7f $ff
	db   $db                                         ; $66d5: $db
	cp   h                                           ; $66d6: $bc
	ld   b, h                                        ; $66d7: $44
	ld   b, a                                        ; $66d8: $47
	call z, $83b8                                    ; $66d9: $cc $b8 $83
	ld   de, $ff19                                   ; $66dc: $11 $19 $ff
	db   $ed                                         ; $66df: $ed
	call z, Call_0e8_44b4                            ; $66e0: $cc $b4 $44
	adc  h                                           ; $66e3: $8c
	cp   d                                           ; $66e4: $ba
	adc  d                                           ; $66e5: $8a
	ld   sp, $7f11                                   ; $66e6: $31 $11 $7f
	cp   $cb                                         ; $66e9: $fe $cb
	db   $ec                                         ; $66eb: $ec
	ld   d, h                                        ; $66ec: $54
	ld   d, a                                        ; $66ed: $57
	jp   z, $96a9                                    ; $66ee: $ca $a9 $96

	ld   de, rAUD1LOW                                   ; $66f1: $11 $13 $ff
	ei                                               ; $66f4: $fb
	call Call_0e8_46d6                               ; $66f5: $cd $d6 $46
	ld   a, e                                        ; $66f8: $7b
	xor  c                                           ; $66f9: $a9
	sbc  c                                           ; $66fa: $99
	add  d                                           ; $66fb: $82
	ld   de, $fe1a                                   ; $66fc: $11 $1a $fe
	call z, $95dd                                    ; $66ff: $cc $dd $95
	ld   [hl], a                                     ; $6702: $77
	xor  d                                           ; $6703: $aa
	sbc  c                                           ; $6704: $99
	adc  d                                           ; $6705: $8a
	ld   d, c                                        ; $6706: $51
	ld   de, $eb5e                                   ; $6707: $11 $5e $eb
	xor  h                                           ; $670a: $ac
	db   $db                                         ; $670b: $db
	add  [hl]                                        ; $670c: $86
	adc  b                                           ; $670d: $88
	xor  b                                           ; $670e: $a8
	sub  a                                           ; $670f: $97
	adc  b                                           ; $6710: $88
	ld   b, c                                        ; $6711: $41
	ld   de, $ba8e                                   ; $6712: $11 $8e $ba
	xor  l                                           ; $6715: $ad
	bit  7, b                                        ; $6716: $cb $78
	sbc  b                                           ; $6718: $98
	and  a                                           ; $6719: $a7
	add  [hl]                                        ; $671a: $86
	sub  a                                           ; $671b: $97
	ld   b, c                                        ; $671c: $41
	ld   [de], a                                     ; $671d: $12
	cp   l                                           ; $671e: $bd
	xor  c                                           ; $671f: $a9
	cp   l                                           ; $6720: $bd
	res  1, d                                        ; $6721: $cb $8a
	adc  d                                           ; $6723: $8a
	add  a                                           ; $6724: $87
	ld   [hl], a                                     ; $6725: $77
	sub  a                                           ; $6726: $97
	ld   d, c                                        ; $6727: $51
	inc  de                                          ; $6728: $13
	xor  d                                           ; $6729: $aa
	xor  c                                           ; $672a: $a9
	cp   l                                           ; $672b: $bd
	db   $db                                         ; $672c: $db
	adc  d                                           ; $672d: $8a
	sbc  c                                           ; $672e: $99
	ld   a, b                                        ; $672f: $78
	ld   [hl], a                                     ; $6730: $77
	add  a                                           ; $6731: $87
	ld   d, c                                        ; $6732: $51
	inc  de                                          ; $6733: $13
	cp   d                                           ; $6734: $ba
	sbc  b                                           ; $6735: $98
	call z, $aadb                                    ; $6736: $cc $db $aa
	sbc  d                                           ; $6739: $9a
	ld   a, b                                        ; $673a: $78
	ld   [hl], a                                     ; $673b: $77
	ld   [hl], a                                     ; $673c: $77
	ld   d, c                                        ; $673d: $51
	inc  de                                          ; $673e: $13
	xor  c                                           ; $673f: $a9
	xor  b                                           ; $6740: $a8
	call $9bdb                                       ; $6741: $cd $db $9b
	sbc  d                                           ; $6744: $9a
	adc  c                                           ; $6745: $89
	ld   [hl], a                                     ; $6746: $77
	ld   h, [hl]                                     ; $6747: $66
	ld   d, c                                        ; $6748: $51
	inc  d                                           ; $6749: $14
	sbc  c                                           ; $674a: $99
	sbc  b                                           ; $674b: $98
	cp   h                                           ; $674c: $bc
	jp   c, $99ab                                    ; $674d: $da $ab $99

	sbc  c                                           ; $6750: $99
	halt                                             ; $6751: $76
	ld   d, [hl]                                     ; $6752: $56
	ld   b, c                                        ; $6753: $41
	dec  d                                           ; $6754: $15
	sbc  b                                           ; $6755: $98
	adc  b                                           ; $6756: $88
	cp   h                                           ; $6757: $bc
	cp   d                                           ; $6758: $ba
	res  7, d                                        ; $6759: $cb $ba
	xor  d                                           ; $675b: $aa
	halt                                             ; $675c: $76
	ld   d, [hl]                                     ; $675d: $56
	ld   b, c                                        ; $675e: $41
	daa                                              ; $675f: $27
	sub  a                                           ; $6760: $97
	ld   a, b                                        ; $6761: $78
	xor  e                                           ; $6762: $ab
	xor  d                                           ; $6763: $aa
	call z, $a9ba                                    ; $6764: $cc $ba $a9
	halt                                             ; $6767: $76
	ld   d, a                                        ; $6768: $57
	ld   d, e                                        ; $6769: $53
	ld   b, a                                        ; $676a: $47
	add  a                                           ; $676b: $87
	ld   h, a                                        ; $676c: $67
	sbc  d                                           ; $676d: $9a
	xor  d                                           ; $676e: $aa
	xor  e                                           ; $676f: $ab
	cp   d                                           ; $6770: $ba
	sbc  c                                           ; $6771: $99
	ld   [hl], a                                     ; $6772: $77
	ld   a, c                                        ; $6773: $79
	add  a                                           ; $6774: $87
	ld   d, [hl]                                     ; $6775: $56
	sbc  b                                           ; $6776: $98
	ld   h, l                                        ; $6777: $65
	ld   h, a                                        ; $6778: $67
	add  a                                           ; $6779: $87
	ld   a, c                                        ; $677a: $79
	sbc  c                                           ; $677b: $99
	sbc  b                                           ; $677c: $98
	adc  b                                           ; $677d: $88
	xor  d                                           ; $677e: $aa
	xor  c                                           ; $677f: $a9
	adc  b                                           ; $6780: $88
	adc  c                                           ; $6781: $89
	ld   [hl], a                                     ; $6782: $77
	ld   [hl], a                                     ; $6783: $77
	halt                                             ; $6784: $76
	ld   h, [hl]                                     ; $6785: $66
	ld   h, [hl]                                     ; $6786: $66
	ld   [hl], a                                     ; $6787: $77

Call_0e8_6788:
	ld   a, c                                        ; $6788: $79
	sbc  d                                           ; $6789: $9a
	xor  d                                           ; $678a: $aa
	xor  c                                           ; $678b: $a9
	sbc  d                                           ; $678c: $9a
	sbc  c                                           ; $678d: $99
	adc  c                                           ; $678e: $89
	adc  b                                           ; $678f: $88
	ld   [hl], a                                     ; $6790: $77
	halt                                             ; $6791: $76
	ld   h, [hl]                                     ; $6792: $66
	ld   h, [hl]                                     ; $6793: $66
	ld   [hl], a                                     ; $6794: $77
	ld   [hl], a                                     ; $6795: $77
	adc  b                                           ; $6796: $88

Call_0e8_6797:
	sbc  d                                           ; $6797: $9a
	sbc  c                                           ; $6798: $99
	sbc  c                                           ; $6799: $99
	sbc  c                                           ; $679a: $99
	sbc  c                                           ; $679b: $99
	sbc  c                                           ; $679c: $99
	add  a                                           ; $679d: $87
	ld   [hl], a                                     ; $679e: $77
	ld   [hl], a                                     ; $679f: $77
	ld   h, [hl]                                     ; $67a0: $66
	ld   h, a                                        ; $67a1: $67
	ld   [hl], a                                     ; $67a2: $77
	ld   [hl], a                                     ; $67a3: $77
	adc  c                                           ; $67a4: $89
	sbc  c                                           ; $67a5: $99
	xor  d                                           ; $67a6: $aa
	sbc  c                                           ; $67a7: $99
	sbc  b                                           ; $67a8: $98
	sbc  c                                           ; $67a9: $99
	sbc  b                                           ; $67aa: $98
	adc  b                                           ; $67ab: $88
	adc  b                                           ; $67ac: $88
	ld   [hl], a                                     ; $67ad: $77
	ld   [hl], a                                     ; $67ae: $77
	ld   [hl], a                                     ; $67af: $77
	ld   [hl], a                                     ; $67b0: $77
	adc  b                                           ; $67b1: $88
	adc  b                                           ; $67b2: $88
	sbc  c                                           ; $67b3: $99
	sbc  b                                           ; $67b4: $98
	adc  c                                           ; $67b5: $89
	adc  c                                           ; $67b6: $89
	sbc  c                                           ; $67b7: $99
	adc  b                                           ; $67b8: $88
	adc  b                                           ; $67b9: $88
	adc  b                                           ; $67ba: $88
	adc  b                                           ; $67bb: $88
	ld   [hl], a                                     ; $67bc: $77
	ld   [hl], a                                     ; $67bd: $77
	ld   [hl], a                                     ; $67be: $77
	ld   [hl], a                                     ; $67bf: $77
	ld   a, b                                        ; $67c0: $78
	adc  b                                           ; $67c1: $88
	adc  b                                           ; $67c2: $88
	adc  b                                           ; $67c3: $88
	adc  b                                           ; $67c4: $88
	adc  c                                           ; $67c5: $89
	sbc  c                                           ; $67c6: $99
	adc  b                                           ; $67c7: $88
	adc  b                                           ; $67c8: $88
	ld   [hl], a                                     ; $67c9: $77
	ld   [hl], a                                     ; $67ca: $77
	ld   [hl], a                                     ; $67cb: $77
	ld   [hl], a                                     ; $67cc: $77
	ld   [hl], a                                     ; $67cd: $77
	ld   a, b                                        ; $67ce: $78
	adc  c                                           ; $67cf: $89
	adc  c                                           ; $67d0: $89
	sbc  c                                           ; $67d1: $99
	sbc  b                                           ; $67d2: $98
	adc  b                                           ; $67d3: $88
	sbc  b                                           ; $67d4: $98
	adc  b                                           ; $67d5: $88
	adc  b                                           ; $67d6: $88
	ld   [hl], a                                     ; $67d7: $77
	ld   [hl], a                                     ; $67d8: $77
	ld   [hl], a                                     ; $67d9: $77
	ld   [hl], a                                     ; $67da: $77
	ld   a, b                                        ; $67db: $78
	adc  b                                           ; $67dc: $88
	adc  b                                           ; $67dd: $88
	sbc  b                                           ; $67de: $98
	sbc  c                                           ; $67df: $99
	adc  b                                           ; $67e0: $88
	sbc  c                                           ; $67e1: $99
	sbc  b                                           ; $67e2: $98
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	ld   [hl], a                                     ; $67e5: $77
	ld   [hl], a                                     ; $67e6: $77
	ld   [hl], a                                     ; $67e7: $77
	ld   [hl], a                                     ; $67e8: $77
	ld   [hl], a                                     ; $67e9: $77
	ld   a, b                                        ; $67ea: $78
	adc  c                                           ; $67eb: $89
	sbc  c                                           ; $67ec: $99
	sbc  c                                           ; $67ed: $99
	adc  b                                           ; $67ee: $88
	sbc  c                                           ; $67ef: $99
	sbc  b                                           ; $67f0: $98
	adc  b                                           ; $67f1: $88
	adc  b                                           ; $67f2: $88
	ld   [hl], a                                     ; $67f3: $77
	ld   [hl], a                                     ; $67f4: $77
	ld   [hl], a                                     ; $67f5: $77
	ld   a, b                                        ; $67f6: $78
	add  a                                           ; $67f7: $87
	ld   a, b                                        ; $67f8: $78
	adc  b                                           ; $67f9: $88
	adc  b                                           ; $67fa: $88
	sbc  c                                           ; $67fb: $99
	adc  b                                           ; $67fc: $88
	sbc  b                                           ; $67fd: $98
	adc  b                                           ; $67fe: $88
	adc  b                                           ; $67ff: $88
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	add  a                                           ; $6802: $87
	ld   a, b                                        ; $6803: $78
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
	adc  c                                           ; $695e: $89
	sub  [hl]                                        ; $695f: $96
	adc  c                                           ; $6960: $89
	ld   l, c                                        ; $6961: $69
	ld   [hl], a                                     ; $6962: $77
	adc  b                                           ; $6963: $88
	ld   a, b                                        ; $6964: $78
	adc  b                                           ; $6965: $88
	adc  b                                           ; $6966: $88
	ld   a, c                                        ; $6967: $79
	ld   [hl], a                                     ; $6968: $77
	and  [hl]                                        ; $6969: $a6
	adc  b                                           ; $696a: $88
	ld   a, b                                        ; $696b: $78
	ld   a, d                                        ; $696c: $7a
	add  a                                           ; $696d: $87
	add  a                                           ; $696e: $87
	adc  b                                           ; $696f: $88
	ld   a, b                                        ; $6970: $78
	ld   a, b                                        ; $6971: $78
	sub  a                                           ; $6972: $97
	sub  a                                           ; $6973: $97
	ld   a, d                                        ; $6974: $7a
	add  [hl]                                        ; $6975: $86
	and  a                                           ; $6976: $a7
	adc  b                                           ; $6977: $88
	ld   a, h                                        ; $6978: $7c
	ld   c, b                                        ; $6979: $48
	and  [hl]                                        ; $697a: $a6
	and  [hl]                                        ; $697b: $a6
	add  a                                           ; $697c: $87
	ld   a, b                                        ; $697d: $78
	ld   [hl], a                                     ; $697e: $77
	ld   a, b                                        ; $697f: $78
	ld   a, d                                        ; $6980: $7a
	ld   l, b                                        ; $6981: $68
	sub  a                                           ; $6982: $97
	sub  a                                           ; $6983: $97
	sbc  c                                           ; $6984: $99
	ld   a, c                                        ; $6985: $79
	sub  a                                           ; $6986: $97
	sbc  c                                           ; $6987: $99
	ld   a, c                                        ; $6988: $79
	adc  b                                           ; $6989: $88
	adc  b                                           ; $698a: $88
	sub  a                                           ; $698b: $97
	ld   a, b                                        ; $698c: $78
	sub  a                                           ; $698d: $97
	sub  a                                           ; $698e: $97
	adc  b                                           ; $698f: $88
	sbc  b                                           ; $6990: $98
	ld   a, c                                        ; $6991: $79
	ld   [hl], a                                     ; $6992: $77
	adc  b                                           ; $6993: $88
	ld   [hl], a                                     ; $6994: $77
	ld   a, b                                        ; $6995: $78
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	sbc  b                                           ; $6998: $98
	sbc  b                                           ; $6999: $98
	sbc  c                                           ; $699a: $99
	sbc  c                                           ; $699b: $99
	adc  b                                           ; $699c: $88
	add  a                                           ; $699d: $87
	add  a                                           ; $699e: $87
	adc  b                                           ; $699f: $88
	sbc  b                                           ; $69a0: $98
	sbc  c                                           ; $69a1: $99
	sbc  b                                           ; $69a2: $98
	sbc  c                                           ; $69a3: $99
	adc  b                                           ; $69a4: $88
	sub  a                                           ; $69a5: $97
	ld   a, b                                        ; $69a6: $78
	ld   a, b                                        ; $69a7: $78
	ld   [hl], a                                     ; $69a8: $77
	add  a                                           ; $69a9: $87
	sbc  b                                           ; $69aa: $98
	adc  b                                           ; $69ab: $88
	ld   a, d                                        ; $69ac: $7a
	adc  b                                           ; $69ad: $88
	sub  a                                           ; $69ae: $97
	add  a                                           ; $69af: $87
	ld   a, b                                        ; $69b0: $78
	ld   a, b                                        ; $69b1: $78
	adc  b                                           ; $69b2: $88
	sbc  c                                           ; $69b3: $99
	sbc  c                                           ; $69b4: $99
	sbc  c                                           ; $69b5: $99
	sbc  c                                           ; $69b6: $99
	ld   a, b                                        ; $69b7: $78
	add  [hl]                                        ; $69b8: $86
	add  [hl]                                        ; $69b9: $86
	ld   a, b                                        ; $69ba: $78
	ld   l, b                                        ; $69bb: $68
	ld   a, c                                        ; $69bc: $79
	xor  c                                           ; $69bd: $a9
	xor  d                                           ; $69be: $aa
	adc  b                                           ; $69bf: $88
	adc  d                                           ; $69c0: $8a
	ld   [hl], a                                     ; $69c1: $77
	sub  l                                           ; $69c2: $95
	add  [hl]                                        ; $69c3: $86
	ld   l, b                                        ; $69c4: $68
	ld   e, c                                        ; $69c5: $59
	ld   [hl], a                                     ; $69c6: $77
	xor  b                                           ; $69c7: $a8
	xor  c                                           ; $69c8: $a9
	sbc  d                                           ; $69c9: $9a
	adc  c                                           ; $69ca: $89
	sbc  c                                           ; $69cb: $99
	ld   l, d                                        ; $69cc: $6a
	ld   d, [hl]                                     ; $69cd: $56
	sub  e                                           ; $69ce: $93
	sub  l                                           ; $69cf: $95
	ld   l, d                                        ; $69d0: $6a
	ld   e, e                                        ; $69d1: $5b
	sbc  d                                           ; $69d2: $9a
	cp   b                                           ; $69d3: $b8
	cp   d                                           ; $69d4: $ba
	ld   a, c                                        ; $69d5: $79
	and  l                                           ; $69d6: $a5
	sbc  b                                           ; $69d7: $98
	ld   a, [hl+]                                    ; $69d8: $2a
	ld   [hl], $a2                                   ; $69d9: $36 $a2
	add  $8c                                         ; $69db: $c6 $8c
	ld   a, l                                        ; $69dd: $7d
	xor  c                                           ; $69de: $a9
	or   a                                           ; $69df: $b7
	ld   a, d                                        ; $69e0: $7a
	ld   [hl], l                                     ; $69e1: $75
	and  d                                           ; $69e2: $a2
	ld   e, c                                        ; $69e3: $59
	dec  de                                          ; $69e4: $1b
	ld   b, l                                        ; $69e5: $45
	call nz, $9eda                                   ; $69e6: $c4 $da $9e
	sbc  e                                           ; $69e9: $9b
	or   [hl]                                        ; $69ea: $b6
	sbc  d                                           ; $69eb: $9a
	ld   b, [hl]                                     ; $69ec: $46
	or   c                                           ; $69ed: $b1
	and  l                                           ; $69ee: $a5
	ld   e, $1a                                      ; $69ef: $1e $1a
	and  l                                           ; $69f1: $a5
	ld   hl, sp-$42                                  ; $69f2: $f8 $be
	sbc  h                                           ; $69f4: $9c
	or   l                                           ; $69f5: $b5
	xor  c                                           ; $69f6: $a9
	scf                                              ; $69f7: $37
	sub  c                                           ; $69f8: $91
	or   e                                           ; $69f9: $b3
	dec  l                                           ; $69fa: $2d
	inc  e                                           ; $69fb: $1c
	add  [hl]                                        ; $69fc: $86
	ld   hl, sp-$42                                  ; $69fd: $f8 $be
	adc  l                                           ; $69ff: $8d
	or   h                                           ; $6a00: $b4
	xor  c                                           ; $6a01: $a9
	add  hl, hl                                      ; $6a02: $29
	ld   [hl], c                                     ; $6a03: $71
	pop  de                                          ; $6a04: $d1
	ld   e, h                                        ; $6a05: $5c
	rra                                              ; $6a06: $1f
	ld   a, b                                        ; $6a07: $78
	add  sp, -$22                                    ; $6a08: $e8 $de
	sbc  [hl]                                        ; $6a0a: $9e
	add  h                                           ; $6a0b: $84
	push bc                                          ; $6a0c: $c5
	ld   e, $13                                      ; $6a0d: $1e $13
	pop  de                                          ; $6a0f: $d1
	call nc, Call_0e8_4d3f                           ; $6a10: $d4 $3f $4d
	jp   c, $9efb                                    ; $6a13: $da $fb $9e

	ld   c, b                                        ; $6a16: $48
	pop  bc                                          ; $6a17: $c1
	and  a                                           ; $6a18: $a7
	rra                                              ; $6a19: $1f
	inc  de                                          ; $6a1a: $13
	pop  hl                                          ; $6a1b: $e1
	add  sp, -$61                                    ; $6a1c: $e8 $9f
	cp   l                                           ; $6a1e: $bd
	ld   [$4ec9], a                                  ; $6a1f: $ea $c9 $4e
	dec  d                                           ; $6a22: $15
	pop  bc                                          ; $6a23: $c1
	ldh  [c], a                                      ; $6a24: $e2
	rra                                              ; $6a25: $1f
	dec  de                                          ; $6a26: $1b
	sbc  b                                           ; $6a27: $98
	db   $eb                                         ; $6a28: $eb
	sbc  $ba                                         ; $6a29: $de $ba
	sub  h                                           ; $6a2b: $94
	pop  hl                                          ; $6a2c: $e1
	ld   l, d                                        ; $6a2d: $6a
	ld   e, $12                                      ; $6a2e: $1e $12
	pop  de                                          ; $6a30: $d1
	add  sp, -$62                                    ; $6a31: $e8 $9e
	call $98db                                       ; $6a33: $cd $db $98
	ld   e, l                                        ; $6a36: $5d
	dec  de                                          ; $6a37: $1b
	ld   d, c                                        ; $6a38: $51
	pop  af                                          ; $6a39: $f1
	sbc  c                                           ; $6a3a: $99
	rra                                              ; $6a3b: $1f
	ld   l, h                                        ; $6a3c: $6c
	adc  $de                                         ; $6a3d: $ce $de
	xor  d                                           ; $6a3f: $aa
	ld   l, c                                        ; $6a40: $69
	add  c                                           ; $6a41: $81
	pop  af                                          ; $6a42: $f1
	ld   l, d                                        ; $6a43: $6a
	rra                                              ; $6a44: $1f
	ld   a, [de]                                     ; $6a45: $1a
	or   a                                           ; $6a46: $b7
	db   $eb                                         ; $6a47: $eb
	db   $fc                                         ; $6a48: $fc
	add  sp, -$5c                                    ; $6a49: $e8 $a4
	pop  bc                                          ; $6a4b: $c1
	ld   l, c                                        ; $6a4c: $69
	rra                                              ; $6a4d: $1f
	ld   d, $b1                                      ; $6a4e: $16 $b1
	push af                                          ; $6a50: $f5
	db   $eb                                         ; $6a51: $eb
	db   $fd                                         ; $6a52: $fd
	db   $ec                                         ; $6a53: $ec
	adc  b                                           ; $6a54: $88
	ld   [hl], a                                     ; $6a55: $77
	rra                                              ; $6a56: $1f
	rla                                              ; $6a57: $17
	add  c                                           ; $6a58: $81
	pop  af                                          ; $6a59: $f1
	ret                                              ; $6a5a: $c9


	sbc  l                                           ; $6a5b: $9d
	sbc  $bf                                         ; $6a5c: $de $bf
	ld   l, d                                        ; $6a5e: $6a
	ld   e, e                                        ; $6a5f: $5b
	ld   a, [de]                                     ; $6a60: $1a
	ld   sp, $d4f1                                   ; $6a61: $31 $f1 $d4
	ld   c, l                                        ; $6a64: $4d
	ld   e, a                                        ; $6a65: $5f
	xor  a                                           ; $6a66: $af
	sbc  a                                           ; $6a67: $9f
	ld   a, c                                        ; $6a68: $79
	ld   a, c                                        ; $6a69: $79
	inc  sp                                          ; $6a6a: $33
	or   c                                           ; $6a6b: $b1
	pop  af                                          ; $6a6c: $f1
	ld   e, e                                        ; $6a6d: $5b
	rra                                              ; $6a6e: $1f
	ld   c, a                                        ; $6a6f: $4f
	adc  a                                           ; $6a70: $8f
	cp   [hl]                                        ; $6a71: $be
	push bc                                          ; $6a72: $c5
	and  [hl]                                        ; $6a73: $a6
	ld   h, c                                        ; $6a74: $61
	pop  hl                                          ; $6a75: $e1
	jp   nz, $1f1f                                   ; $6a76: $c2 $1f $1f

	ld   c, a                                        ; $6a79: $4f
	xor  a                                           ; $6a7a: $af
	db   $ec                                         ; $6a7b: $ec
	di                                               ; $6a7c: $f3
	push de                                          ; $6a7d: $d5
	add  c                                           ; $6a7e: $81
	pop  de                                          ; $6a7f: $d1
	add  a                                           ; $6a80: $87
	rra                                              ; $6a81: $1f
	rra                                              ; $6a82: $1f
	ld   e, l                                        ; $6a83: $5d
	cp   [hl]                                        ; $6a84: $be
	ld   [$e4f1], a                                  ; $6a85: $ea $f1 $e4
	add  c                                           ; $6a88: $81
	pop  de                                          ; $6a89: $d1

Call_0e8_6a8a:
	ld   e, c                                        ; $6a8a: $59
	rra                                              ; $6a8b: $1f
	rra                                              ; $6a8c: $1f
	ld   l, [hl]                                     ; $6a8d: $6e
	xor  [hl]                                        ; $6a8e: $ae
	ld   sp, hl                                      ; $6a8f: $f9
	pop  af                                          ; $6a90: $f1
	db   $f4                                         ; $6a91: $f4
	ld   [hl], c                                     ; $6a92: $71
	pop  bc                                          ; $6a93: $c1
	ld   e, d                                        ; $6a94: $5a
	rra                                              ; $6a95: $1f
	ld   e, $6d                                      ; $6a96: $1e $6d
	cp   [hl]                                        ; $6a98: $be
	ld   sp, hl                                      ; $6a99: $f9
	pop  af                                          ; $6a9a: $f1
	db   $f4                                         ; $6a9b: $f4
	ld   [hl], d                                     ; $6a9c: $72
	and  c                                           ; $6a9d: $a1
	ld   h, a                                        ; $6a9e: $67
	rra                                              ; $6a9f: $1f
	ld   e, $5f                                      ; $6aa0: $1e $5f
	sbc  a                                           ; $6aa2: $9f
	jp   c, $f4f1                                    ; $6aa3: $da $f1 $f4

	ld   h, h                                        ; $6aa6: $64
	sub  c                                           ; $6aa7: $91
	add  l                                           ; $6aa8: $85
	ld   e, $1d                                      ; $6aa9: $1e $1d
	ld   e, a                                        ; $6aab: $5f
	ld   a, a                                        ; $6aac: $7f
	cp   l                                           ; $6aad: $bd
	pop  af                                          ; $6aae: $f1
	di                                               ; $6aaf: $f3
	ld   [hl], e                                     ; $6ab0: $73
	and  c                                           ; $6ab1: $a1
	and  d                                           ; $6ab2: $a2
	dec  de                                          ; $6ab3: $1b
	inc  l                                           ; $6ab4: $2c
	ld   l, a                                        ; $6ab5: $6f
	ld   e, a                                        ; $6ab6: $5f
	adc  a                                           ; $6ab7: $8f
	jp   nc, $66f2                                   ; $6ab8: $d2 $f2 $66

	ld   h, c                                        ; $6abb: $61
	pop  bc                                          ; $6abc: $c1
	ld   h, a                                        ; $6abd: $67
	ld   e, c                                        ; $6abe: $59
	adc  a                                           ; $6abf: $8f
	ld   a, a                                        ; $6ac0: $7f
	ld   e, a                                        ; $6ac1: $5f
	halt                                             ; $6ac2: $76
	db   $d3                                         ; $6ac3: $d3
	ld   d, a                                        ; $6ac4: $57
	ld   d, c                                        ; $6ac5: $51
	pop  bc                                          ; $6ac6: $c1
	sub  h                                           ; $6ac7: $94
	add  a                                           ; $6ac8: $87
	call z, Call_0e8_5f9f                            ; $6ac9: $cc $9f $5f
	ld   a, [hl-]                                    ; $6acc: $3a
	and  h                                           ; $6acd: $a4
	ld   e, b                                        ; $6ace: $58
	ld   hl, $9391                                   ; $6acf: $21 $91 $93
	and  h                                           ; $6ad2: $a4
	ld   hl, sp-$11                                  ; $6ad3: $f8 $ef
	ld   a, a                                        ; $6ad5: $7f
	dec  l                                           ; $6ad6: $2d
	halt                                             ; $6ad7: $76
	ld   e, c                                        ; $6ad8: $59
	ld   d, $51                                      ; $6ad9: $16 $51
	sub  e                                           ; $6adb: $93
	or   h                                           ; $6adc: $b4
	push af                                          ; $6add: $f5
	db   $fc                                         ; $6ade: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6adf: $cf
	ld   c, [hl]                                     ; $6ae0: $4e
	ld   h, [hl]                                     ; $6ae1: $66
	ld   e, b                                        ; $6ae2: $58
	add  hl, de                                      ; $6ae3: $19
	inc  h                                           ; $6ae4: $24
	ld   h, [hl]                                     ; $6ae5: $66
	sub  l                                           ; $6ae6: $95
	db   $f4                                         ; $6ae7: $f4
	ld   hl, sp-$06                                  ; $6ae8: $f8 $fa
	ld   l, l                                        ; $6aea: $6d
	ld   h, [hl]                                     ; $6aeb: $66
	ld   h, a                                        ; $6aec: $67
	ld   a, [de]                                     ; $6aed: $1a
	rla                                              ; $6aee: $17
	jr   c, jr_0e8_6b5a                              ; $6aef: $38 $69

	or   $f8                                         ; $6af1: $f6 $f8
	ld   hl, sp-$66                                  ; $6af3: $f8 $9a
	ld   [hl], l                                     ; $6af5: $75
	add  h                                           ; $6af6: $84
	add  hl, de                                      ; $6af7: $19
	jr   jr_0e8_6b24                                 ; $6af8: $18 $2a

	ld   c, d                                        ; $6afa: $4a
	cp   b                                           ; $6afb: $b8
	ld   hl, sp-$0a                                  ; $6afc: $f8 $f6
	xor  d                                           ; $6afe: $aa
	ld   [hl], l                                     ; $6aff: $75
	sub  e                                           ; $6b00: $93
	ld   c, c                                        ; $6b01: $49
	jr   jr_0e8_6b3e                                 ; $6b02: $18 $3a

	dec  sp                                          ; $6b04: $3b
	sbc  d                                           ; $6b05: $9a
	add  sp, -$3a                                    ; $6b06: $e8 $c6
	cp   b                                           ; $6b08: $b8
	add  [hl]                                        ; $6b09: $86
	and  d                                           ; $6b0a: $a2
	ld   h, a                                        ; $6b0b: $67
	add  hl, hl                                      ; $6b0c: $29
	ld   c, c                                        ; $6b0d: $49
	ld   c, h                                        ; $6b0e: $4c
	sbc  d                                           ; $6b0f: $9a
	ret                                              ; $6b10: $c9


Jump_0e8_6b11:
	and  a                                           ; $6b11: $a7
	xor  b                                           ; $6b12: $a8
	sub  a                                           ; $6b13: $97
	or   e                                           ; $6b14: $b3
	ld   [hl], a                                     ; $6b15: $77
	ld   c, b                                        ; $6b16: $48
	ld   e, b                                        ; $6b17: $58
	ld   e, d                                        ; $6b18: $5a
	sbc  c                                           ; $6b19: $99
	xor  c                                           ; $6b1a: $a9
	sub  a                                           ; $6b1b: $97
	xor  d                                           ; $6b1c: $aa
	adc  c                                           ; $6b1d: $89
	and  l                                           ; $6b1e: $a5
	add  a                                           ; $6b1f: $87
	ld   h, a                                        ; $6b20: $67
	ld   l, b                                        ; $6b21: $68
	ld   l, b                                        ; $6b22: $68
	adc  b                                           ; $6b23: $88

jr_0e8_6b24:
	sbc  c                                           ; $6b24: $99
	adc  c                                           ; $6b25: $89
	cp   d                                           ; $6b26: $ba
	adc  c                                           ; $6b27: $89
	add  [hl]                                        ; $6b28: $86
	add  a                                           ; $6b29: $87
	ld   h, [hl]                                     ; $6b2a: $66
	ld   h, a                                        ; $6b2b: $67
	ld   a, b                                        ; $6b2c: $78
	sbc  c                                           ; $6b2d: $99
	adc  d                                           ; $6b2e: $8a
	sbc  c                                           ; $6b2f: $99
	cp   b                                           ; $6b30: $b8
	sbc  d                                           ; $6b31: $9a
	ld   [hl], a                                     ; $6b32: $77
	ld   [hl], a                                     ; $6b33: $77
	ld   h, [hl]                                     ; $6b34: $66
	ld   [hl], a                                     ; $6b35: $77
	ld   a, b                                        ; $6b36: $78
	sbc  b                                           ; $6b37: $98
	sbc  d                                           ; $6b38: $9a
	sbc  d                                           ; $6b39: $9a
	xor  b                                           ; $6b3a: $a8
	sbc  b                                           ; $6b3b: $98
	ld   h, a                                        ; $6b3c: $67
	ld   [hl], a                                     ; $6b3d: $77

jr_0e8_6b3e:
	ld   h, a                                        ; $6b3e: $67
	ld   h, a                                        ; $6b3f: $67
	adc  b                                           ; $6b40: $88
	sbc  b                                           ; $6b41: $98
	xor  c                                           ; $6b42: $a9
	sbc  d                                           ; $6b43: $9a
	xor  b                                           ; $6b44: $a8
	and  a                                           ; $6b45: $a7
	ld   [hl], a                                     ; $6b46: $77
	halt                                             ; $6b47: $76
	ld   h, a                                        ; $6b48: $67
	ld   l, b                                        ; $6b49: $68
	adc  b                                           ; $6b4a: $88
	adc  b                                           ; $6b4b: $88
	sbc  c                                           ; $6b4c: $99
	xor  c                                           ; $6b4d: $a9
	sbc  c                                           ; $6b4e: $99
	add  a                                           ; $6b4f: $87
	ld   [hl], a                                     ; $6b50: $77
	halt                                             ; $6b51: $76
	ld   h, a                                        ; $6b52: $67
	ld   l, b                                        ; $6b53: $68
	adc  b                                           ; $6b54: $88
	adc  c                                           ; $6b55: $89
	adc  d                                           ; $6b56: $8a
	xor  c                                           ; $6b57: $a9
	sbc  c                                           ; $6b58: $99
	add  a                                           ; $6b59: $87

jr_0e8_6b5a:
	ld   [hl], a                                     ; $6b5a: $77
	halt                                             ; $6b5b: $76
	ld   [hl], a                                     ; $6b5c: $77
	ld   a, c                                        ; $6b5d: $79
	adc  b                                           ; $6b5e: $88
	sbc  c                                           ; $6b5f: $99
	adc  d                                           ; $6b60: $8a
	xor  b                                           ; $6b61: $a8
	sbc  b                                           ; $6b62: $98
	ld   [hl], a                                     ; $6b63: $77
	halt                                             ; $6b64: $76
	ld   h, [hl]                                     ; $6b65: $66
	ld   [hl], a                                     ; $6b66: $77
	ld   a, c                                        ; $6b67: $79
	adc  b                                           ; $6b68: $88
	sbc  c                                           ; $6b69: $99
	sbc  d                                           ; $6b6a: $9a
	adc  c                                           ; $6b6b: $89
	sub  a                                           ; $6b6c: $97
	add  a                                           ; $6b6d: $87
	halt                                             ; $6b6e: $76
	ld   h, a                                        ; $6b6f: $67
	ld   [hl], a                                     ; $6b70: $77
	adc  b                                           ; $6b71: $88
	adc  c                                           ; $6b72: $89
	adc  c                                           ; $6b73: $89
	sbc  d                                           ; $6b74: $9a
	sbc  c                                           ; $6b75: $99
	add  a                                           ; $6b76: $87
	ld   [hl], a                                     ; $6b77: $77
	halt                                             ; $6b78: $76
	ld   [hl], a                                     ; $6b79: $77
	ld   a, b                                        ; $6b7a: $78
	adc  b                                           ; $6b7b: $88
	adc  c                                           ; $6b7c: $89
	adc  d                                           ; $6b7d: $8a
	xor  c                                           ; $6b7e: $a9
	sbc  b                                           ; $6b7f: $98
	add  a                                           ; $6b80: $87
	ld   [hl], a                                     ; $6b81: $77
	halt                                             ; $6b82: $76
	ld   [hl], a                                     ; $6b83: $77
	ld   a, b                                        ; $6b84: $78
	adc  b                                           ; $6b85: $88
	sbc  c                                           ; $6b86: $99
	sbc  d                                           ; $6b87: $9a
	sbc  c                                           ; $6b88: $99
	sbc  b                                           ; $6b89: $98
	add  a                                           ; $6b8a: $87
	halt                                             ; $6b8b: $76
	ld   h, a                                        ; $6b8c: $67
	ld   [hl], a                                     ; $6b8d: $77
	adc  b                                           ; $6b8e: $88
	adc  c                                           ; $6b8f: $89
	sbc  c                                           ; $6b90: $99
	xor  d                                           ; $6b91: $aa
	sbc  c                                           ; $6b92: $99
	sbc  b                                           ; $6b93: $98
	ld   [hl], a                                     ; $6b94: $77
	halt                                             ; $6b95: $76
	ld   [hl], a                                     ; $6b96: $77
	ld   [hl], a                                     ; $6b97: $77
	adc  b                                           ; $6b98: $88
	sbc  b                                           ; $6b99: $98
	sbc  c                                           ; $6b9a: $99
	xor  c                                           ; $6b9b: $a9
	sbc  b                                           ; $6b9c: $98
	add  a                                           ; $6b9d: $87
	ld   [hl], a                                     ; $6b9e: $77
	ld   h, a                                        ; $6b9f: $67
	ld   [hl], a                                     ; $6ba0: $77
	ld   a, b                                        ; $6ba1: $78
	adc  b                                           ; $6ba2: $88
	adc  b                                           ; $6ba3: $88
	xor  c                                           ; $6ba4: $a9
	sbc  c                                           ; $6ba5: $99
	adc  b                                           ; $6ba6: $88
	add  a                                           ; $6ba7: $87
	ld   [hl], a                                     ; $6ba8: $77
	ld   h, a                                        ; $6ba9: $67
	ld   [hl], a                                     ; $6baa: $77
	adc  b                                           ; $6bab: $88
	adc  b                                           ; $6bac: $88
	adc  c                                           ; $6bad: $89
	xor  b                                           ; $6bae: $a8
	sbc  b                                           ; $6baf: $98
	adc  b                                           ; $6bb0: $88
	ld   [hl], a                                     ; $6bb1: $77
	ld   [hl], a                                     ; $6bb2: $77
	ld   [hl], a                                     ; $6bb3: $77
	ld   a, b                                        ; $6bb4: $78
	adc  b                                           ; $6bb5: $88
	sbc  b                                           ; $6bb6: $98
	sbc  d                                           ; $6bb7: $9a
	sbc  c                                           ; $6bb8: $99
	sbc  b                                           ; $6bb9: $98
	add  a                                           ; $6bba: $87
	ld   [hl], a                                     ; $6bbb: $77
	ld   [hl], a                                     ; $6bbc: $77
	ld   [hl], a                                     ; $6bbd: $77
	ld   a, b                                        ; $6bbe: $78
	adc  c                                           ; $6bbf: $89
	adc  c                                           ; $6bc0: $89
	sbc  c                                           ; $6bc1: $99
	sbc  c                                           ; $6bc2: $99
	adc  b                                           ; $6bc3: $88
	add  a                                           ; $6bc4: $87
	ld   [hl], a                                     ; $6bc5: $77
	ld   [hl], a                                     ; $6bc6: $77
	ld   a, b                                        ; $6bc7: $78
	adc  b                                           ; $6bc8: $88
	adc  b                                           ; $6bc9: $88
	adc  c                                           ; $6bca: $89
	sbc  c                                           ; $6bcb: $99
	sbc  b                                           ; $6bcc: $98
	add  a                                           ; $6bcd: $87
	ld   [hl], a                                     ; $6bce: $77
	ld   [hl], a                                     ; $6bcf: $77
	ld   [hl], a                                     ; $6bd0: $77
	adc  b                                           ; $6bd1: $88
	adc  c                                           ; $6bd2: $89
	sbc  c                                           ; $6bd3: $99
	sbc  c                                           ; $6bd4: $99
	adc  c                                           ; $6bd5: $89
	adc  b                                           ; $6bd6: $88
	add  a                                           ; $6bd7: $87
	ld   [hl], a                                     ; $6bd8: $77
	ld   [hl], a                                     ; $6bd9: $77
	ld   [hl], a                                     ; $6bda: $77
	adc  b                                           ; $6bdb: $88
	sbc  b                                           ; $6bdc: $98
	adc  c                                           ; $6bdd: $89
	adc  b                                           ; $6bde: $88
	sbc  b                                           ; $6bdf: $98
	adc  b                                           ; $6be0: $88
	ld   [hl], a                                     ; $6be1: $77
	ld   [hl], a                                     ; $6be2: $77
	ld   [hl], a                                     ; $6be3: $77
	adc  b                                           ; $6be4: $88
	adc  b                                           ; $6be5: $88
	adc  c                                           ; $6be6: $89
	sbc  b                                           ; $6be7: $98
	adc  b                                           ; $6be8: $88
	adc  b                                           ; $6be9: $88
	ld   [hl], a                                     ; $6bea: $77
	ld   [hl], a                                     ; $6beb: $77
	ld   [hl], a                                     ; $6bec: $77
	ld   a, b                                        ; $6bed: $78
	adc  b                                           ; $6bee: $88
	sbc  c                                           ; $6bef: $99
	sbc  c                                           ; $6bf0: $99
	sbc  b                                           ; $6bf1: $98
	adc  b                                           ; $6bf2: $88
	add  a                                           ; $6bf3: $87
	ld   [hl], a                                     ; $6bf4: $77
	ld   [hl], a                                     ; $6bf5: $77
	add  a                                           ; $6bf6: $87
	adc  c                                           ; $6bf7: $89
	sbc  c                                           ; $6bf8: $99
	adc  c                                           ; $6bf9: $89
	sbc  c                                           ; $6bfa: $99
	adc  c                                           ; $6bfb: $89
	add  a                                           ; $6bfc: $87
	ld   [hl], a                                     ; $6bfd: $77
	ld   [hl], a                                     ; $6bfe: $77
	ld   a, b                                        ; $6bff: $78
	adc  b                                           ; $6c00: $88
	sbc  c                                           ; $6c01: $99
	sbc  b                                           ; $6c02: $98
	sbc  b                                           ; $6c03: $98
	sbc  b                                           ; $6c04: $98
	adc  b                                           ; $6c05: $88
	ld   [hl], a                                     ; $6c06: $77
	ld   [hl], a                                     ; $6c07: $77
	ld   a, b                                        ; $6c08: $78
	adc  b                                           ; $6c09: $88
	adc  c                                           ; $6c0a: $89
	adc  c                                           ; $6c0b: $89
	adc  c                                           ; $6c0c: $89
	adc  c                                           ; $6c0d: $89
	adc  b                                           ; $6c0e: $88
	ld   [hl], a                                     ; $6c0f: $77
	ld   [hl], a                                     ; $6c10: $77
	ld   [hl], a                                     ; $6c11: $77
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  c                                           ; $6c14: $89
	adc  c                                           ; $6c15: $89
	sbc  c                                           ; $6c16: $99
	adc  c                                           ; $6c17: $89
	add  a                                           ; $6c18: $87
	ld   [hl], a                                     ; $6c19: $77
	ld   [hl], a                                     ; $6c1a: $77
	ld   a, b                                        ; $6c1b: $78
	adc  b                                           ; $6c1c: $88
	sbc  c                                           ; $6c1d: $99
	adc  b                                           ; $6c1e: $88
	sbc  b                                           ; $6c1f: $98
	sbc  c                                           ; $6c20: $99
	adc  b                                           ; $6c21: $88
	ld   [hl], a                                     ; $6c22: $77
	ld   [hl], a                                     ; $6c23: $77
	ld   [hl], a                                     ; $6c24: $77
	adc  b                                           ; $6c25: $88
	adc  c                                           ; $6c26: $89
	adc  b                                           ; $6c27: $88
	sbc  c                                           ; $6c28: $99
	sbc  c                                           ; $6c29: $99
	adc  b                                           ; $6c2a: $88
	ld   [hl], a                                     ; $6c2b: $77
	ld   [hl], a                                     ; $6c2c: $77
	ld   [hl], a                                     ; $6c2d: $77
	adc  b                                           ; $6c2e: $88
	adc  c                                           ; $6c2f: $89
	sbc  b                                           ; $6c30: $98
	sbc  b                                           ; $6c31: $98
	sbc  b                                           ; $6c32: $98
	adc  b                                           ; $6c33: $88
	ld   [hl], a                                     ; $6c34: $77
	ld   [hl], a                                     ; $6c35: $77
	ld   [hl], a                                     ; $6c36: $77
	adc  b                                           ; $6c37: $88
	adc  c                                           ; $6c38: $89
	sbc  c                                           ; $6c39: $99
	sbc  c                                           ; $6c3a: $99
	sbc  c                                           ; $6c3b: $99
	adc  b                                           ; $6c3c: $88
	ld   [hl], a                                     ; $6c3d: $77
	ld   [hl], a                                     ; $6c3e: $77
	ld   a, b                                        ; $6c3f: $78
	adc  b                                           ; $6c40: $88
	sbc  c                                           ; $6c41: $99
	adc  c                                           ; $6c42: $89
	adc  c                                           ; $6c43: $89
	adc  b                                           ; $6c44: $88
	add  a                                           ; $6c45: $87
	add  a                                           ; $6c46: $87
	ld   [hl], a                                     ; $6c47: $77
	adc  b                                           ; $6c48: $88
	adc  b                                           ; $6c49: $88
	sbc  b                                           ; $6c4a: $98
	sbc  c                                           ; $6c4b: $99
	sbc  b                                           ; $6c4c: $98
	adc  b                                           ; $6c4d: $88
	ld   a, b                                        ; $6c4e: $78
	ld   [hl], a                                     ; $6c4f: $77
	ld   a, b                                        ; $6c50: $78
	adc  b                                           ; $6c51: $88
	adc  c                                           ; $6c52: $89
	adc  c                                           ; $6c53: $89
	adc  c                                           ; $6c54: $89
	adc  b                                           ; $6c55: $88
	ld   [hl], a                                     ; $6c56: $77
	add  a                                           ; $6c57: $87
	ld   [hl], a                                     ; $6c58: $77
	adc  b                                           ; $6c59: $88
	ld   a, b                                        ; $6c5a: $78
	sbc  c                                           ; $6c5b: $99
	sbc  b                                           ; $6c5c: $98
	sbc  c                                           ; $6c5d: $99
	add  a                                           ; $6c5e: $87
	ld   a, c                                        ; $6c5f: $79
	add  a                                           ; $6c60: $87
	ld   a, b                                        ; $6c61: $78
	sub  a                                           ; $6c62: $97
	adc  c                                           ; $6c63: $89
	adc  c                                           ; $6c64: $89
	ld   a, b                                        ; $6c65: $78
	sbc  b                                           ; $6c66: $98
	ld   [hl], a                                     ; $6c67: $77
	add  a                                           ; $6c68: $87
	ld   a, b                                        ; $6c69: $78
	adc  b                                           ; $6c6a: $88
	ld   h, [hl]                                     ; $6c6b: $66
	sbc  e                                           ; $6c6c: $9b
	ld   h, a                                        ; $6c6d: $67
	xor  b                                           ; $6c6e: $a8
	add  [hl]                                        ; $6c6f: $86
	xor  b                                           ; $6c70: $a8
	ld   a, c                                        ; $6c71: $79
	adc  d                                           ; $6c72: $8a
	ld   h, l                                        ; $6c73: $65
	ld   l, h                                        ; $6c74: $6c
	sub  e                                           ; $6c75: $93
	cp   c                                           ; $6c76: $b9
	add  [hl]                                        ; $6c77: $86
	ld   a, e                                        ; $6c78: $7b
	ld   l, b                                        ; $6c79: $68
	sbc  h                                           ; $6c7a: $9c
	add  h                                           ; $6c7b: $84
	ld   d, a                                        ; $6c7c: $57
	db   $e3                                         ; $6c7d: $e3
	ld   e, l                                        ; $6c7e: $5d
	ld   [hl], a                                     ; $6c7f: $77
	ld   c, e                                        ; $6c80: $4b
	and  l                                           ; $6c81: $a5
	sbc  h                                           ; $6c82: $9c
	db   $e4                                         ; $6c83: $e4
	ld   b, h                                        ; $6c84: $44
	ld   l, [hl]                                     ; $6c85: $6e
	ld   [hl], $d7                                   ; $6c86: $36 $d7
	ld   d, [hl]                                     ; $6c88: $56
	ret                                              ; $6c89: $c9


	ld   l, d                                        ; $6c8a: $6a
	adc  $44                                         ; $6c8b: $ce $44
	inc  [hl]                                        ; $6c8d: $34
	db   $e3                                         ; $6c8e: $e3
	ld   e, l                                        ; $6c8f: $5d
	add  [hl]                                        ; $6c90: $86
	ld   l, l                                        ; $6c91: $6d
	or   [hl]                                        ; $6c92: $b6
	sbc  h                                           ; $6c93: $9c
	db   $f4                                         ; $6c94: $f4
	ld   [hl-], a                                    ; $6c95: $32
	dec  e                                           ; $6c96: $1d
	ld   [hl-], a                                    ; $6c97: $32
	ld   [$ed76], a                                  ; $6c98: $ea $76 $ed
	ld   l, c                                        ; $6c9b: $69
	cp   a                                           ; $6c9c: $bf
	ld   d, c                                        ; $6c9d: $51
	ld   de, $1fe1                                   ; $6c9e: $11 $e1 $1f
	cp   c                                           ; $6ca1: $b9
	ld   e, a                                        ; $6ca2: $5f
	push af                                          ; $6ca3: $f5
	adc  e                                           ; $6ca4: $8b
	di                                               ; $6ca5: $f3
	ld   de, $164f                                   ; $6ca6: $11 $4f $16
	db   $fc                                         ; $6ca9: $fc
	ld   [hl], h                                     ; $6caa: $74
	db   $fc                                         ; $6cab: $fc
	ld   b, a                                        ; $6cac: $47
	rst  $28                                         ; $6cad: $ef
	ld   de, $c11a                                   ; $6cae: $11 $1a $c1
	rst  JumpTable                                         ; $6cb1: $df
	call nc, $847f                                   ; $6cb2: $d4 $7f $84
	ld   l, a                                        ; $6cb5: $6f
	pop  af                                          ; $6cb6: $f1
	ld   de, $1ff7                                   ; $6cb7: $11 $f7 $1f
	db   $fd                                         ; $6cba: $fd
	dec  de                                          ; $6cbb: $1b
	push af                                          ; $6cbc: $f5
	scf                                              ; $6cbd: $37
	ei                                               ; $6cbe: $fb
	ld   de, $111f                                   ; $6cbf: $11 $1f $11
	rst  $38                                         ; $6cc2: $ff
	or   c                                           ; $6cc3: $b1
	rst  $38                                         ; $6cc4: $ff
	ld   [hl-], a                                    ; $6cc5: $32
	sbc  a                                           ; $6cc6: $9f
	ld   b, c                                        ; $6cc7: $41
	ld   d, $f1                                      ; $6cc8: $16 $f1
	ld   c, a                                        ; $6cca: $4f
	rst  $30                                         ; $6ccb: $f7
	rra                                              ; $6ccc: $1f
	ldh  a, [c]                                      ; $6ccd: $f2
	dec  e                                           ; $6cce: $1d
	pop  af                                          ; $6ccf: $f1
	ld   de, $19df                                   ; $6cd0: $11 $df $19
	rst  $38                                         ; $6cd3: $ff
	ld   b, c                                        ; $6cd4: $41
	db   $fc                                         ; $6cd5: $fc
	ld   hl, $11ff                                   ; $6cd6: $21 $ff $11
	rra                                              ; $6cd9: $1f
	pop  af                                          ; $6cda: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cdb: $cf
	pop  af                                          ; $6cdc: $f1
	rra                                              ; $6cdd: $1f
	and  e                                           ; $6cde: $a3
	rra                                              ; $6cdf: $1f
	pop  af                                          ; $6ce0: $f1
	ld   de, $1efc                                   ; $6ce1: $11 $fc $1e
	rst  $38                                         ; $6ce4: $ff
	inc  de                                          ; $6ce5: $13
	ld   a, [$ff21]                                  ; $6ce6: $fa $21 $ff
	ld   de, $911f                                   ; $6ce9: $11 $1f $91
	rst  $28                                         ; $6cec: $ef
	pop  af                                          ; $6ced: $f1
	ld   e, a                                        ; $6cee: $5f
	sub  d                                           ; $6cef: $92
	cpl                                              ; $6cf0: $2f
	pop  af                                          ; $6cf1: $f1
	ld   de, $1ef6                                   ; $6cf2: $11 $f6 $1e
	rst  $38                                         ; $6cf5: $ff
	ld   d, $fa                                      ; $6cf6: $16 $fa
	ld   [hl+], a                                    ; $6cf8: $22
	rst  $38                                         ; $6cf9: $ff
	ld   de, $412f                                   ; $6cfa: $11 $2f $41
	rst  $28                                         ; $6cfd: $ef
	pop  af                                          ; $6cfe: $f1
	ld   a, [hl]                                     ; $6cff: $7e
	jp   nz, $e14f                                   ; $6d00: $c2 $4f $e1

	rla                                              ; $6d03: $17
	di                                               ; $6d04: $f3
	ld   l, $fd                                      ; $6d05: $2e $fd
	rla                                              ; $6d07: $17
	call c, $fb17                                    ; $6d08: $dc $17 $fb
	ld   de, $25cf                                   ; $6d0b: $11 $cf $25
	rst  JumpTable                                         ; $6d0e: $df
	and  c                                           ; $6d0f: $a1
	ld   a, e                                        ; $6d10: $7b
	pop  de                                          ; $6d11: $d1
	cp   a                                           ; $6d12: $bf
	add  c                                           ; $6d13: $81
	rra                                              ; $6d14: $1f
	ldh  a, [c]                                      ; $6d15: $f2
	ld   l, h                                        ; $6d16: $6c
	rst  $30                                         ; $6d17: $f7
	rla                                              ; $6d18: $17
	xor  [hl]                                        ; $6d19: $ae
	ld   e, $f6                                      ; $6d1a: $1e $f6
	ld   de, $47ff                                   ; $6d1c: $11 $ff $47
	rst  $28                                         ; $6d1f: $ef
	ld   sp, $d26b                                   ; $6d20: $31 $6b $d2
	rst  $38                                         ; $6d23: $ff
	ld   sp, $c61f                                   ; $6d24: $31 $1f $c6
	adc  a                                           ; $6d27: $8f
	pop  af                                          ; $6d28: $f1
	dec  [hl]                                        ; $6d29: $35
	jp   c, $e14f                                    ; $6d2a: $da $4f $e1

	ld   de, $88f9                                   ; $6d2d: $11 $f9 $88
	rst  $38                                         ; $6d30: $ff
	inc  d                                           ; $6d31: $14
	ld   c, [hl]                                     ; $6d32: $4e
	adc  b                                           ; $6d33: $88

Call_0e8_6d34:
	ei                                               ; $6d34: $fb
	ld   de, $796f                                   ; $6d35: $11 $6f $79
	adc  a                                           ; $6d38: $8f
	pop  bc                                          ; $6d39: $c1
	ld   d, l                                        ; $6d3a: $55
	or   $cf                                         ; $6d3b: $f6 $cf
	ld   [hl], c                                     ; $6d3d: $71
	rra                                              ; $6d3e: $1f
	rst  $30                                         ; $6d3f: $f7
	xor  c                                           ; $6d40: $a9
	rst  $30                                         ; $6d41: $f7
	dec  d                                           ; $6d42: $15
	ld   a, a                                        ; $6d43: $7f
	ld   c, a                                        ; $6d44: $4f
	db   $f4                                         ; $6d45: $f4
	ld   de, $88fe                                   ; $6d46: $11 $fe $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d49: $cf
	inc  hl                                          ; $6d4a: $23
	ld   c, e                                        ; $6d4b: $4b
	push de                                          ; $6d4c: $d5
	db   $fd                                         ; $6d4d: $fd
	ld   bc, $a91f                                   ; $6d4e: $01 $1f $a9
	adc  a                                           ; $6d51: $8f
	pop  af                                          ; $6d52: $f1
	ld   d, h                                        ; $6d53: $54
	jp   c, $a18f                                    ; $6d54: $da $8f $a1

	rla                                              ; $6d57: $17
	rst  $30                                         ; $6d58: $f7
	cp   b                                           ; $6d59: $b8
	db   $fc                                         ; $6d5a: $fc
	ld   d, $5f                                      ; $6d5b: $16 $5f
	ld   l, l                                        ; $6d5d: $6d
	push af                                          ; $6d5e: $f5
	ld   de, $7aff                                   ; $6d5f: $11 $ff $7a
	xor  a                                           ; $6d62: $af
	ld   b, e                                        ; $6d63: $43
	ld   e, c                                        ; $6d64: $59
	push hl                                          ; $6d65: $e5
	cp   $11                                         ; $6d66: $fe $11
	rra                                              ; $6d68: $1f
	cp   c                                           ; $6d69: $b9
	sbc  a                                           ; $6d6a: $9f
	pop  af                                          ; $6d6b: $f1
	ld   d, h                                        ; $6d6c: $54
	jp   c, $917f                                    ; $6d6d: $da $7f $91

	rla                                              ; $6d70: $17
	rst  $30                                         ; $6d71: $f7
	cp   b                                           ; $6d72: $b8
	ei                                               ; $6d73: $fb
	ld   d, $6f                                      ; $6d74: $16 $6f
	ld   l, l                                        ; $6d76: $6d
	db   $f4                                         ; $6d77: $f4
	ld   de, $8bfd                                   ; $6d78: $11 $fd $8b
	cp   a                                           ; $6d7b: $bf
	dec  h                                           ; $6d7c: $25
	ld   e, e                                        ; $6d7d: $5b
	add  $fa                                         ; $6d7e: $c6 $fa
	ld   de, $5c4f                                   ; $6d80: $11 $4f $5c
	adc  a                                           ; $6d83: $8f
	pop  bc                                          ; $6d84: $c1
	add  l                                           ; $6d85: $85
	and  $cf                                         ; $6d86: $e6 $cf
	ld   b, c                                        ; $6d88: $41
	rra                                              ; $6d89: $1f
	sub  $bb                                         ; $6d8a: $d6 $bb
	ldh  a, [c]                                      ; $6d8c: $f2
	ld   d, [hl]                                     ; $6d8d: $56
	xor  h                                           ; $6d8e: $ac
	ld   e, a                                        ; $6d8f: $5f
	or   c                                           ; $6d90: $b1
	inc  de                                          ; $6d91: $13
	db   $f4                                         ; $6d92: $f4
	cp   c                                           ; $6d93: $b9
	db   $fd                                         ; $6d94: $fd
	add  hl, de                                      ; $6d95: $19
	ld   l, [hl]                                     ; $6d96: $6e
	ld   l, e                                        ; $6d97: $6b
	di                                               ; $6d98: $f3
	ld   de, $6bfa                                   ; $6d99: $11 $fa $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d9c: $cf
	ld   h, $8b                                      ; $6d9d: $26 $8b
	or   l                                           ; $6d9f: $b5
	ld   sp, hl                                      ; $6da0: $f9
	ld   de, $2dbf                                   ; $6da1: $11 $bf $2d
	xor  a                                           ; $6da4: $af
	ld   [hl], e                                     ; $6da5: $73
	cp   b                                           ; $6da6: $b8
	call nc, $11ff                                   ; $6da7: $d4 $ff $11
	cpl                                              ; $6daa: $2f
	add  hl, sp                                      ; $6dab: $39
	xor  a                                           ; $6dac: $af
	pop  hl                                          ; $6dad: $e1
	xor  b                                           ; $6dae: $a8
	push de                                          ; $6daf: $d5
	xor  a                                           ; $6db0: $af
	ld   b, c                                        ; $6db1: $41
	rra                                              ; $6db2: $1f
	ld   [hl], h                                     ; $6db3: $74
	cp   [hl]                                        ; $6db4: $be
	ldh  a, [c]                                      ; $6db5: $f2
	sbc  d                                           ; $6db6: $9a
	cp   c                                           ; $6db7: $b9
	ld   e, a                                        ; $6db8: $5f
	and  c                                           ; $6db9: $a1
	rra                                              ; $6dba: $1f
	jp   nz, $f6cb                                   ; $6dbb: $c2 $cb $f6

	ld   l, h                                        ; $6dbe: $6c
	sbc  e                                           ; $6dbf: $9b
	ld   c, a                                        ; $6dc0: $4f
	pop  bc                                          ; $6dc1: $c1
	ld   a, [de]                                     ; $6dc2: $1a
	pop  af                                          ; $6dc3: $f1
	cp   c                                           ; $6dc4: $b9
	ld   sp, hl                                      ; $6dc5: $f9
	ld   e, l                                        ; $6dc6: $5d
	sbc  h                                           ; $6dc7: $9c
	ld   e, h                                        ; $6dc8: $5c
	pop  de                                          ; $6dc9: $d1
	rla                                              ; $6dca: $17
	pop  af                                          ; $6dcb: $f1
	xor  e                                           ; $6dcc: $ab
	ei                                               ; $6dcd: $fb
	ld   e, a                                        ; $6dce: $5f
	xor  h                                           ; $6dcf: $ac
	ld   l, d                                        ; $6dd0: $6a
	pop  hl                                          ; $6dd1: $e1
	ld   d, $f1                                      ; $6dd2: $16 $f1
	ld   a, e                                        ; $6dd4: $7b
	db   $ec                                         ; $6dd5: $ec
	ld   e, [hl]                                     ; $6dd6: $5e
	bit  5, b                                        ; $6dd7: $cb $68
	ldh  [c], a                                      ; $6dd9: $e2
	dec  d                                           ; $6dda: $15
	pop  de                                          ; $6ddb: $d1
	ld   l, d                                        ; $6ddc: $6a
	call $dd6d                                       ; $6ddd: $cd $6d $dd
	add  a                                           ; $6de0: $87
	jp   $b116                                       ; $6de1: $c3 $16 $b1


	ld   l, b                                        ; $6de4: $68
	bit  7, h                                        ; $6de5: $cb $7c
	call c, $c487                                    ; $6de7: $dc $87 $c4
	ld   d, $a1                                      ; $6dea: $16 $a1
	ld   l, c                                        ; $6dec: $69
	cp   d                                           ; $6ded: $ba
	ld   a, h                                        ; $6dee: $7c
	call c, $b4a9                                    ; $6def: $dc $a9 $b4
	rla                                              ; $6df2: $17
	sub  d                                           ; $6df3: $92
	ld   e, c                                        ; $6df4: $59
	xor  b                                           ; $6df5: $a8
	ld   a, l                                        ; $6df6: $7d
	call z, $a499                                    ; $6df7: $cc $99 $a4
	rla                                              ; $6dfa: $17
	or   e                                           ; $6dfb: $b3
	ld   c, c                                        ; $6dfc: $49
	sbc  b                                           ; $6dfd: $98
	ld   l, e                                        ; $6dfe: $6b
	res  5, c                                        ; $6dff: $cb $a9
	or   [hl]                                        ; $6e01: $b6
	ld   [hl], $a6                                   ; $6e02: $36 $a6
	scf                                              ; $6e04: $37
	sbc  b                                           ; $6e05: $98
	ld   l, c                                        ; $6e06: $69
	cp   c                                           ; $6e07: $b9
	sbc  d                                           ; $6e08: $9a
	cp   c                                           ; $6e09: $b9
	ld   d, [hl]                                     ; $6e0a: $56
	sbc  c                                           ; $6e0b: $99
	ld   d, l                                        ; $6e0c: $55
	adc  b                                           ; $6e0d: $88
	ld   h, a                                        ; $6e0e: $67
	sbc  c                                           ; $6e0f: $99
	adc  c                                           ; $6e10: $89
	sbc  d                                           ; $6e11: $9a
	add  a                                           ; $6e12: $87
	adc  c                                           ; $6e13: $89
	add  a                                           ; $6e14: $87
	ld   a, b                                        ; $6e15: $78
	halt                                             ; $6e16: $76
	ld   a, b                                        ; $6e17: $78
	add  a                                           ; $6e18: $87
	ld   a, c                                        ; $6e19: $79
	xor  b                                           ; $6e1a: $a8
	adc  c                                           ; $6e1b: $89
	sbc  c                                           ; $6e1c: $99
	sbc  c                                           ; $6e1d: $99
	add  a                                           ; $6e1e: $87
	ld   h, a                                        ; $6e1f: $67
	ld   [hl], a                                     ; $6e20: $77
	ld   h, a                                        ; $6e21: $67
	sbc  b                                           ; $6e22: $98
	adc  b                                           ; $6e23: $88
	xor  c                                           ; $6e24: $a9
	sbc  c                                           ; $6e25: $99
	sbc  b                                           ; $6e26: $98
	ld   [hl], a                                     ; $6e27: $77
	ld   [hl], a                                     ; $6e28: $77
	ld   h, [hl]                                     ; $6e29: $66
	ld   [hl], a                                     ; $6e2a: $77
	ld   a, b                                        ; $6e2b: $78
	sbc  c                                           ; $6e2c: $99
	sbc  c                                           ; $6e2d: $99
	xor  c                                           ; $6e2e: $a9
	sbc  b                                           ; $6e2f: $98
	add  a                                           ; $6e30: $87
	halt                                             ; $6e31: $76
	ld   [hl], a                                     ; $6e32: $77
	ld   [hl], a                                     ; $6e33: $77
	adc  b                                           ; $6e34: $88
	adc  c                                           ; $6e35: $89
	xor  c                                           ; $6e36: $a9
	xor  c                                           ; $6e37: $a9
	adc  c                                           ; $6e38: $89
	ld   [hl], a                                     ; $6e39: $77
	ld   [hl], a                                     ; $6e3a: $77
	halt                                             ; $6e3b: $76
	ld   a, b                                        ; $6e3c: $78
	adc  c                                           ; $6e3d: $89
	sbc  c                                           ; $6e3e: $99
	xor  c                                           ; $6e3f: $a9
	adc  c                                           ; $6e40: $89
	add  a                                           ; $6e41: $87
	ld   [hl], a                                     ; $6e42: $77
	ld   [hl], a                                     ; $6e43: $77
	ld   [hl], a                                     ; $6e44: $77
	adc  b                                           ; $6e45: $88
	sbc  b                                           ; $6e46: $98
	sbc  c                                           ; $6e47: $99
	adc  c                                           ; $6e48: $89
	sub  a                                           ; $6e49: $97
	ld   [hl], a                                     ; $6e4a: $77
	ld   [hl], a                                     ; $6e4b: $77
	ld   a, b                                        ; $6e4c: $78
	adc  b                                           ; $6e4d: $88
	adc  c                                           ; $6e4e: $89
	sbc  b                                           ; $6e4f: $98
	sbc  c                                           ; $6e50: $99
	sbc  b                                           ; $6e51: $98
	add  a                                           ; $6e52: $87
	ld   [hl], a                                     ; $6e53: $77
	ld   a, c                                        ; $6e54: $79
	sbc  c                                           ; $6e55: $99
	sbc  c                                           ; $6e56: $99
	sbc  b                                           ; $6e57: $98
	adc  b                                           ; $6e58: $88
	add  a                                           ; $6e59: $87
	ld   [hl], a                                     ; $6e5a: $77
	ld   a, b                                        ; $6e5b: $78
	adc  c                                           ; $6e5c: $89
	adc  b                                           ; $6e5d: $88
	sbc  b                                           ; $6e5e: $98
	adc  b                                           ; $6e5f: $88
	add  a                                           ; $6e60: $87
	add  a                                           ; $6e61: $87
	adc  b                                           ; $6e62: $88
	ld   a, b                                        ; $6e63: $78
	adc  c                                           ; $6e64: $89
	sbc  b                                           ; $6e65: $98
	sbc  b                                           ; $6e66: $98
	adc  b                                           ; $6e67: $88
	add  a                                           ; $6e68: $87
	ld   a, b                                        ; $6e69: $78
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	sbc  c                                           ; $6e6c: $99
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	ld   a, b                                        ; $6e6f: $78
	add  a                                           ; $6e70: $87
	ld   a, b                                        ; $6e71: $78
	adc  c                                           ; $6e72: $89
	adc  b                                           ; $6e73: $88
	sbc  b                                           ; $6e74: $98
	adc  c                                           ; $6e75: $89
	adc  b                                           ; $6e76: $88
	ld   [hl], a                                     ; $6e77: $77
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	adc  b                                           ; $6e7b: $88
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	adc  b                                           ; $6e7e: $88
	add  a                                           ; $6e7f: $87
	adc  b                                           ; $6e80: $88
	adc  b                                           ; $6e81: $88
	adc  c                                           ; $6e82: $89
	adc  b                                           ; $6e83: $88
	adc  b                                           ; $6e84: $88
	adc  b                                           ; $6e85: $88
	adc  b                                           ; $6e86: $88
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	adc  b                                           ; $6e89: $88
	adc  c                                           ; $6e8a: $89
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
	sub  [hl]                                        ; $6fc9: $96
	adc  c                                           ; $6fca: $89
	ld   a, c                                        ; $6fcb: $79
	ld   a, b                                        ; $6fcc: $78
	ld   a, b                                        ; $6fcd: $78
	adc  b                                           ; $6fce: $88
	sub  a                                           ; $6fcf: $97
	adc  c                                           ; $6fd0: $89
	adc  b                                           ; $6fd1: $88
	adc  b                                           ; $6fd2: $88
	adc  b                                           ; $6fd3: $88
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	adc  b                                           ; $6fd6: $88
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	sbc  b                                           ; $6fd9: $98
	adc  b                                           ; $6fda: $88
	ld   a, b                                        ; $6fdb: $78
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	add  a                                           ; $6fde: $87
	add  a                                           ; $6fdf: $87
	ld   a, b                                        ; $6fe0: $78
	adc  b                                           ; $6fe1: $88
	sbc  b                                           ; $6fe2: $98
	sbc  c                                           ; $6fe3: $99
	ld   l, b                                        ; $6fe4: $68
	sub  a                                           ; $6fe5: $97
	adc  b                                           ; $6fe6: $88
	add  a                                           ; $6fe7: $87
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	ld   a, c                                        ; $6fec: $79
	adc  b                                           ; $6fed: $88
	sbc  b                                           ; $6fee: $98
	ld   a, b                                        ; $6fef: $78
	sub  a                                           ; $6ff0: $97
	ld   l, h                                        ; $6ff1: $6c
	ld   [hl], h                                     ; $6ff2: $74
	call nc, Call_0e8_6a8a                           ; $6ff3: $d4 $8a $6a
	ld   e, d                                        ; $6ff6: $5a
	ld   l, d                                        ; $6ff7: $6a
	and  h                                           ; $6ff8: $a4
	sub  a                                           ; $6ff9: $97
	sbc  b                                           ; $6ffa: $98
	sbc  b                                           ; $6ffb: $98
	ld   l, b                                        ; $6ffc: $68
	ld   a, c                                        ; $6ffd: $79
	adc  b                                           ; $6ffe: $88
	add  a                                           ; $6fff: $87
	add  a                                           ; $7000: $87
	sbc  b                                           ; $7001: $98
	sbc  b                                           ; $7002: $98
	sbc  b                                           ; $7003: $98
	adc  c                                           ; $7004: $89
	ld   a, c                                        ; $7005: $79
	ld   a, b                                        ; $7006: $78
	adc  b                                           ; $7007: $88
	sbc  b                                           ; $7008: $98
	ld   [hl], a                                     ; $7009: $77
	sbc  b                                           ; $700a: $98
	adc  b                                           ; $700b: $88
	add  a                                           ; $700c: $87
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  b                                           ; $700f: $88
	ld   a, b                                        ; $7010: $78
	ld   [hl], a                                     ; $7011: $77
	add  a                                           ; $7012: $87
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	add  a                                           ; $7015: $87
	add  a                                           ; $7016: $87
	adc  b                                           ; $7017: $88
	adc  c                                           ; $7018: $89
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	sbc  b                                           ; $701b: $98
	ld   a, b                                        ; $701c: $78
	ld   a, c                                        ; $701d: $79
	sub  a                                           ; $701e: $97
	sbc  b                                           ; $701f: $98
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  c                                           ; $7024: $89
	ld   a, c                                        ; $7025: $79
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	add  a                                           ; $7029: $87
	adc  c                                           ; $702a: $89
	adc  b                                           ; $702b: $88
	sub  a                                           ; $702c: $97
	adc  b                                           ; $702d: $88
	ld   a, b                                        ; $702e: $78
	ld   a, b                                        ; $702f: $78
	sbc  b                                           ; $7030: $98
	add  a                                           ; $7031: $87
	sub  a                                           ; $7032: $97
	adc  c                                           ; $7033: $89
	ld   l, c                                        ; $7034: $69
	ld   [hl], a                                     ; $7035: $77
	and  a                                           ; $7036: $a7
	adc  c                                           ; $7037: $89
	ld   [hl], a                                     ; $7038: $77
	sbc  b                                           ; $7039: $98
	ld   l, d                                        ; $703a: $6a
	ld   h, a                                        ; $703b: $67
	sub  [hl]                                        ; $703c: $96
	sub  a                                           ; $703d: $97
	adc  b                                           ; $703e: $88
	adc  c                                           ; $703f: $89
	ld   l, d                                        ; $7040: $6a
	add  l                                           ; $7041: $85
	add  $6a                                         ; $7042: $c6 $6a
	ld   c, d                                        ; $7044: $4a
	add  a                                           ; $7045: $87
	cp   c                                           ; $7046: $b9
	sbc  b                                           ; $7047: $98
	ld   l, c                                        ; $7048: $69
	and  h                                           ; $7049: $a4
	push bc                                          ; $704a: $c5
	ld   e, e                                        ; $704b: $5b
	add  hl, sp                                      ; $704c: $39
	halt                                             ; $704d: $76
	sbc  c                                           ; $704e: $99
	xor  d                                           ; $704f: $aa
	sub  [hl]                                        ; $7050: $96
	or   a                                           ; $7051: $b7
	ld   e, h                                        ; $7052: $5c
	ld   d, l                                        ; $7053: $55
	or   e                                           ; $7054: $b3
	adc  c                                           ; $7055: $89
	ld   e, e                                        ; $7056: $5b
	xor  d                                           ; $7057: $aa
	xor  b                                           ; $7058: $a8
	ld   l, e                                        ; $7059: $6b
	halt                                             ; $705a: $76
	call nz, $386b                                   ; $705b: $c4 $6b $38
	add  l                                           ; $705e: $85
	xor  d                                           ; $705f: $aa
	xor  h                                           ; $7060: $ac
	add  l                                           ; $7061: $85
	sub  $5d                                         ; $7062: $d6 $5d
	ld   d, $a1                                      ; $7064: $16 $a1
	and  a                                           ; $7066: $a7
	ld   e, h                                        ; $7067: $5c
	cp   c                                           ; $7068: $b9
	rst  $10                                         ; $7069: $d7
	ld   l, [hl]                                     ; $706a: $6e
	scf                                              ; $706b: $37
	pop  bc                                          ; $706c: $c1
	sub  a                                           ; $706d: $97
	ld   a, [de]                                     ; $706e: $1a
	ld   h, [hl]                                     ; $706f: $66
	res  5, l                                        ; $7070: $cb $ad
	ld   h, a                                        ; $7072: $67
	jp   nc, $1b8c                                   ; $7073: $d2 $8c $1b

	ld   h, c                                        ; $7076: $61
	push bc                                          ; $7077: $c5
	ld   a, l                                        ; $7078: $7d
	jp   z, $8ee6                                    ; $7079: $ca $e6 $8e

	add  hl, de                                      ; $707c: $19
	or   c                                           ; $707d: $b1
	and  [hl]                                        ; $707e: $a6
	inc  e                                           ; $707f: $1c
	ld   d, a                                        ; $7080: $57
	db   $ec                                         ; $7081: $ec
	cp   [hl]                                        ; $7082: $be
	ld   e, c                                        ; $7083: $59
	pop  af                                          ; $7084: $f1
	sbc  d                                           ; $7085: $9a
	dec  de                                          ; $7086: $1b
	ld   d, c                                        ; $7087: $51
	push bc                                          ; $7088: $c5
	ld   a, a                                        ; $7089: $7f
	cp   d                                           ; $708a: $ba
	push af                                          ; $708b: $f5
	sbc  a                                           ; $708c: $9f
	dec  de                                          ; $708d: $1b
	and  c                                           ; $708e: $a1
	call nz, Call_0e8_571d                           ; $708f: $c4 $1d $57
	db   $fc                                         ; $7092: $fc
	xor  a                                           ; $7093: $af
	ld   c, c                                        ; $7094: $49
	pop  af                                          ; $7095: $f1
	sbc  d                                           ; $7096: $9a
	dec  de                                          ; $7097: $1b
	ld   d, c                                        ; $7098: $51
	push de                                          ; $7099: $d5
	ld   a, a                                        ; $709a: $7f
	ret                                              ; $709b: $c9


	db   $f4                                         ; $709c: $f4
	adc  a                                           ; $709d: $8f
	ld   a, [de]                                     ; $709e: $1a
	and  c                                           ; $709f: $a1
	or   l                                           ; $70a0: $b5
	dec  e                                           ; $70a1: $1d
	ld   h, [hl]                                     ; $70a2: $66
	db   $fd                                         ; $70a3: $fd
	sbc  a                                           ; $70a4: $9f
	ld   d, a                                        ; $70a5: $57
	pop  af                                          ; $70a6: $f1
	sbc  h                                           ; $70a7: $9c
	ld   a, [de]                                     ; $70a8: $1a
	ld   [hl], c                                     ; $70a9: $71
	sub  $6f                                         ; $70aa: $d6 $6f
	jp   hl                                          ; $70ac: $e9


	or   $5f                                         ; $70ad: $f6 $5f
	ld   d, $d1                                      ; $70af: $16 $d1
	adc  c                                           ; $70b1: $89
	dec  e                                           ; $70b2: $1d
	add  l                                           ; $70b3: $85
	rst  $38                                         ; $70b4: $ff
	adc  a                                           ; $70b5: $8f
	ld   [hl], h                                     ; $70b6: $74
	pop  af                                          ; $70b7: $f1
	ld   e, a                                        ; $70b8: $5f
	ld   d, $b1                                      ; $70b9: $16 $b1
	ret                                              ; $70bb: $c9


	ld   c, a                                        ; $70bc: $4f
	rst  $30                                         ; $70bd: $f7
	ld   hl, sp+$3f                                  ; $70be: $f8 $3f
	inc  d                                           ; $70c0: $14
	pop  af                                          ; $70c1: $f1
	ld   l, e                                        ; $70c2: $6b
	dec  de                                          ; $70c3: $1b
	and  h                                           ; $70c4: $a4
	rst  $38                                         ; $70c5: $ff
	ld   a, a                                        ; $70c6: $7f
	sub  d                                           ; $70c7: $92
	pop  af                                          ; $70c8: $f1
	ccf                                              ; $70c9: $3f
	dec  d                                           ; $70ca: $15
	or   c                                           ; $70cb: $b1
	sbc  h                                           ; $70cc: $9c
	ld   c, [hl]                                     ; $70cd: $4e
	or   $f9                                         ; $70ce: $f6 $f9
	rra                                              ; $70d0: $1f
	ld   [de], a                                     ; $70d1: $12
	pop  af                                          ; $70d2: $f1
	ld   c, h                                        ; $70d3: $4c
	add  hl, de                                      ; $70d4: $19
	call nz, Call_0e8_7fff                           ; $70d5: $c4 $ff $7f
	and  c                                           ; $70d8: $a1
	pop  af                                          ; $70d9: $f1
	rra                                              ; $70da: $1f
	inc  de                                          ; $70db: $13
	pop  bc                                          ; $70dc: $c1
	sbc  h                                           ; $70dd: $9c
	ld   c, l                                        ; $70de: $4d
	or   $fb                                         ; $70df: $f6 $fb
	rra                                              ; $70e1: $1f
	ld   de, $3df1                                   ; $70e2: $11 $f1 $3d
	rla                                              ; $70e5: $17
	call nc, $7fef                                   ; $70e6: $d4 $ef $7f
	pop  bc                                          ; $70e9: $c1
	pop  af                                          ; $70ea: $f1
	rra                                              ; $70eb: $1f
	inc  de                                          ; $70ec: $13
	pop  bc                                          ; $70ed: $c1
	ld   a, l                                        ; $70ee: $7d
	ld   e, h                                        ; $70ef: $5c
	or   $fb                                         ; $70f0: $f6 $fb
	rra                                              ; $70f2: $1f
	ld   bc, $2bf1                                   ; $70f3: $01 $f1 $2b
	ld   d, $d6                                      ; $70f6: $16 $d6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70f8: $cf
	ld   l, a                                        ; $70f9: $6f
	or   c                                           ; $70fa: $b1
	pop  af                                          ; $70fb: $f1
	rra                                              ; $70fc: $1f
	ld   [de], a                                     ; $70fd: $12
	pop  bc                                          ; $70fe: $c1
	ld   l, l                                        ; $70ff: $6d
	ld   l, h                                        ; $7100: $6c
	or   $fc                                         ; $7101: $f6 $fc
	rra                                              ; $7103: $1f
	ld   de, $2bf1                                   ; $7104: $11 $f1 $2b
	ld   d, $e6                                      ; $7107: $16 $e6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7109: $cf
	ld   a, a                                        ; $710a: $7f
	pop  bc                                          ; $710b: $c1
	pop  af                                          ; $710c: $f1
	rrca                                             ; $710d: $0f
	ld   [de], a                                     ; $710e: $12
	or   c                                           ; $710f: $b1
	ld   l, l                                        ; $7110: $6d
	ld   l, h                                        ; $7111: $6c
	rst  $30                                         ; $7112: $f7
	ei                                               ; $7113: $fb
	rra                                              ; $7114: $1f
	ld   de, $2bd1                                   ; $7115: $11 $d1 $2b
	dec  d                                           ; $7118: $15
	sub  $bf                                         ; $7119: $d6 $bf
	ld   a, a                                        ; $711b: $7f
	pop  bc                                          ; $711c: $c1
	pop  af                                          ; $711d: $f1
	dec  l                                           ; $711e: $2d
	inc  de                                          ; $711f: $13
	and  c                                           ; $7120: $a1
	ld   e, l                                        ; $7121: $5d
	ld   a, e                                        ; $7122: $7b
	rst  $30                                         ; $7123: $f7
	ei                                               ; $7124: $fb
	rra                                              ; $7125: $1f
	inc  de                                          ; $7126: $13
	pop  bc                                          ; $7127: $c1
	add  hl, sp                                      ; $7128: $39
	dec  d                                           ; $7129: $15
	rst  ToBoot                                         ; $712a: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $712b: $cf
	ld   a, a                                        ; $712c: $7f
	and  d                                           ; $712d: $a2
	pop  af                                          ; $712e: $f1
	inc  a                                           ; $712f: $3c
	inc  de                                          ; $7130: $13
	and  c                                           ; $7131: $a1
	ld   e, h                                        ; $7132: $5c
	ld   a, e                                        ; $7133: $7b
	rst  $30                                         ; $7134: $f7
	ld   a, [$131f]                                  ; $7135: $fa $1f $13
	pop  bc                                          ; $7138: $c1
	jr   c, jr_0e8_7150                              ; $7139: $38 $15

	rst  $10                                         ; $713b: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $713c: $cf
	ld   a, a                                        ; $713d: $7f
	and  e                                           ; $713e: $a3
	pop  af                                          ; $713f: $f1
	ld   c, e                                        ; $7140: $4b
	inc  de                                          ; $7141: $13
	add  c                                           ; $7142: $81
	ld   e, h                                        ; $7143: $5c
	ld   a, h                                        ; $7144: $7c
	rst  $30                                         ; $7145: $f7
	ld   sp, hl                                      ; $7146: $f9
	ccf                                              ; $7147: $3f
	inc  d                                           ; $7148: $14
	pop  bc                                          ; $7149: $c1
	ld   c, b                                        ; $714a: $48
	dec  d                                           ; $714b: $15
	rst  ToBoot                                         ; $714c: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $714d: $cf
	ld   a, a                                        ; $714e: $7f
	and  e                                           ; $714f: $a3

jr_0e8_7150:
	pop  af                                          ; $7150: $f1
	ld   e, e                                        ; $7151: $5b
	inc  d                                           ; $7152: $14
	add  c                                           ; $7153: $81
	ld   e, e                                        ; $7154: $5b
	ld   a, h                                        ; $7155: $7c
	rst  $30                                         ; $7156: $f7
	ld   sp, hl                                      ; $7157: $f9
	ld   c, a                                        ; $7158: $4f
	inc  d                                           ; $7159: $14
	pop  bc                                          ; $715a: $c1
	ld   c, b                                        ; $715b: $48
	dec  d                                           ; $715c: $15
	or   a                                           ; $715d: $b7
	cp   a                                           ; $715e: $bf
	ld   a, a                                        ; $715f: $7f
	sub  e                                           ; $7160: $93
	pop  af                                          ; $7161: $f1
	ld   c, e                                        ; $7162: $4b
	inc  de                                          ; $7163: $13
	sub  c                                           ; $7164: $91
	ld   e, e                                        ; $7165: $5b
	ld   a, d                                        ; $7166: $7a
	rst  $30                                         ; $7167: $f7
	ld   a, [$243f]                                  ; $7168: $fa $3f $24
	pop  bc                                          ; $716b: $c1
	add  hl, sp                                      ; $716c: $39
	inc  h                                           ; $716d: $24
	or   a                                           ; $716e: $b7
	xor  a                                           ; $716f: $af
	adc  a                                           ; $7170: $8f
	jp   $3cf3                                       ; $7171: $c3 $f3 $3c


	ld   [de], a                                     ; $7174: $12
	add  d                                           ; $7175: $82
	ld   a, [hl-]                                    ; $7176: $3a
	adc  b                                           ; $7177: $88
	ld   sp, hl                                      ; $7178: $f9
	db   $ec                                         ; $7179: $ec
	cpl                                              ; $717a: $2f
	ld   b, e                                        ; $717b: $43
	pop  bc                                          ; $717c: $c1
	jr   jr_0e8_71a2                                 ; $717d: $18 $23

	xor  b                                           ; $717f: $a8
	adc  a                                           ; $7180: $8f
	sbc  l                                           ; $7181: $9d
	ldh  [c], a                                      ; $7182: $e2
	or   $2d                                         ; $7183: $f6 $2d
	ld   hl, $2983                                   ; $7185: $21 $83 $29
	sub  [hl]                                        ; $7188: $96
	ld   sp, hl                                      ; $7189: $f9
	cp   a                                           ; $718a: $bf
	cpl                                              ; $718b: $2f
	add  c                                           ; $718c: $81
	call nz, Call_0e8_4218                           ; $718d: $c4 $18 $42
	adc  c                                           ; $7190: $89
	ld   l, a                                        ; $7191: $6f
	cp   d                                           ; $7192: $ba
	ldh  a, [c]                                      ; $7193: $f2
	ld   [$511c], a                                  ; $7194: $ea $1c $51
	add  l                                           ; $7197: $85
	daa                                              ; $7198: $27
	sub  l                                           ; $7199: $95
	db   $fc                                         ; $719a: $fc
	sbc  a                                           ; $719b: $9f
	ld   c, h                                        ; $719c: $4c
	pop  de                                          ; $719d: $d1
	or   a                                           ; $719e: $b7
	rla                                              ; $719f: $17
	ld   h, d                                        ; $71a0: $62
	ld   l, d                                        ; $71a1: $6a

jr_0e8_71a2:
	ld   e, [hl]                                     ; $71a2: $5e
	rst  $20                                         ; $71a3: $e7
	push af                                          ; $71a4: $f5
	xor  [hl]                                        ; $71a5: $ae
	add  hl, de                                      ; $71a6: $19
	sub  c                                           ; $71a7: $91
	ld   [hl], a                                     ; $71a8: $77
	dec  h                                           ; $71a9: $25
	and  l                                           ; $71aa: $a5
	cp   a                                           ; $71ab: $bf
	ld   l, a                                        ; $71ac: $6f
	ld   [hl], a                                     ; $71ad: $77
	di                                               ; $71ae: $f3
	ld   a, h                                        ; $71af: $7c
	dec  d                                           ; $71b0: $15
	add  d                                           ; $71b1: $82
	ld   c, c                                        ; $71b2: $49
	ld   l, b                                        ; $71b3: $68
	or   $ea                                         ; $71b4: $f6 $ea
	ld   e, a                                        ; $71b6: $5f
	ld   h, l                                        ; $71b7: $65
	db   $d3                                         ; $71b8: $d3
	add  hl, hl                                      ; $71b9: $29
	inc  sp                                          ; $71ba: $33
	sub  a                                           ; $71bb: $97
	ld   l, a                                        ; $71bc: $6f
	adc  e                                           ; $71bd: $8b
	call nc, $3cf9                                   ; $71be: $d4 $f9 $3c
	ld   d, c                                        ; $71c1: $51
	and  h                                           ; $71c2: $a4
	scf                                              ; $71c3: $37
	add  l                                           ; $71c4: $85
	db   $eb                                         ; $71c5: $eb
	sbc  [hl]                                        ; $71c6: $9e
	ld   c, e                                        ; $71c7: $4b
	jp   nc, $19b9                                   ; $71c8: $d2 $b9 $19

	ld   h, e                                        ; $71cb: $63
	ld   l, b                                        ; $71cc: $68
	ld   e, e                                        ; $71cd: $5b
	sub  $d7                                         ; $71ce: $d6 $d7
	adc  a                                           ; $71d0: $8f
	ld   c, c                                        ; $71d1: $49
	pop  bc                                          ; $71d2: $c1
	ld   a, c                                        ; $71d3: $79
	dec  [hl]                                        ; $71d4: $35
	sub  [hl]                                        ; $71d5: $96
	adc  l                                           ; $71d6: $8d
	ld   l, e                                        ; $71d7: $6b
	and  [hl]                                        ; $71d8: $a6
	rst  $20                                         ; $71d9: $e7
	ld   l, l                                        ; $71da: $6d
	ld   b, l                                        ; $71db: $45
	sub  h                                           ; $71dc: $94
	ld   e, b                                        ; $71dd: $58
	add  [hl]                                        ; $71de: $86
	reti                                             ; $71df: $d9


	adc  d                                           ; $71e0: $8a
	ld   l, h                                        ; $71e1: $6c
	and  l                                           ; $71e2: $a5
	rst  $10                                         ; $71e3: $d7
	ld   c, c                                        ; $71e4: $49
	ld   h, h                                        ; $71e5: $64
	ld   a, c                                        ; $71e6: $79
	ld   l, d                                        ; $71e7: $6a
	and  a                                           ; $71e8: $a7
	and  a                                           ; $71e9: $a7
	xor  e                                           ; $71ea: $ab
	ld   l, e                                        ; $71eb: $6b
	sub  h                                           ; $71ec: $94
	sub  a                                           ; $71ed: $97
	ld   d, [hl]                                     ; $71ee: $56
	sub  [hl]                                        ; $71ef: $96
	sbc  e                                           ; $71f0: $9b
	ld   a, c                                        ; $71f1: $79
	adc  c                                           ; $71f2: $89
	and  a                                           ; $71f3: $a7
	xor  d                                           ; $71f4: $aa
	ld   e, b                                        ; $71f5: $58
	add  [hl]                                        ; $71f6: $86
	ld   l, b                                        ; $71f7: $68
	ld   [hl], a                                     ; $71f8: $77
	and  a                                           ; $71f9: $a7
	ld   a, b                                        ; $71fa: $78
	adc  d                                           ; $71fb: $8a
	ld   a, c                                        ; $71fc: $79
	or   [hl]                                        ; $71fd: $b6
	ld   a, c                                        ; $71fe: $79
	ld   h, [hl]                                     ; $71ff: $66
	ld   a, b                                        ; $7200: $78
	ld   a, c                                        ; $7201: $79
	add  a                                           ; $7202: $87
	adc  b                                           ; $7203: $88
	cp   c                                           ; $7204: $b9
	adc  e                                           ; $7205: $8b
	ld   [hl], a                                     ; $7206: $77
	sub  a                                           ; $7207: $97
	ld   h, a                                        ; $7208: $67
	add  a                                           ; $7209: $87
	adc  c                                           ; $720a: $89
	ld   a, b                                        ; $720b: $78
	sbc  d                                           ; $720c: $9a
	sub  a                                           ; $720d: $97
	cp   c                                           ; $720e: $b9
	ld   l, c                                        ; $720f: $69
	add  [hl]                                        ; $7210: $86
	ld   l, b                                        ; $7211: $68
	ld   [hl], a                                     ; $7212: $77
	add  a                                           ; $7213: $87
	adc  b                                           ; $7214: $88
	sbc  d                                           ; $7215: $9a
	ld   a, d                                        ; $7216: $7a
	and  [hl]                                        ; $7217: $a6
	adc  b                                           ; $7218: $88
	ld   h, [hl]                                     ; $7219: $66
	ld   [hl], a                                     ; $721a: $77
	ld   a, b                                        ; $721b: $78
	ld   a, b                                        ; $721c: $78
	adc  c                                           ; $721d: $89
	xor  b                                           ; $721e: $a8
	sbc  e                                           ; $721f: $9b
	ld   [hl], a                                     ; $7220: $77
	sub  a                                           ; $7221: $97
	ld   h, a                                        ; $7222: $67
	add  a                                           ; $7223: $87
	ld   [hl], a                                     ; $7224: $77
	adc  b                                           ; $7225: $88
	adc  d                                           ; $7226: $8a
	and  a                                           ; $7227: $a7
	cp   c                                           ; $7228: $b9
	ld   l, b                                        ; $7229: $68
	add  a                                           ; $722a: $87
	ld   h, a                                        ; $722b: $67
	ld   [hl], a                                     ; $722c: $77
	ld   a, b                                        ; $722d: $78
	adc  b                                           ; $722e: $88
	sbc  d                                           ; $722f: $9a
	adc  b                                           ; $7230: $88
	or   a                                           ; $7231: $b7
	ld   a, c                                        ; $7232: $79
	ld   [hl], a                                     ; $7233: $77
	ld   h, a                                        ; $7234: $67
	ld   [hl], a                                     ; $7235: $77
	ld   a, b                                        ; $7236: $78
	adc  b                                           ; $7237: $88
	xor  c                                           ; $7238: $a9

jr_0e8_7239:
	ld   a, d                                        ; $7239: $7a
	sub  a                                           ; $723a: $97
	adc  b                                           ; $723b: $88
	halt                                             ; $723c: $76
	ld   [hl], a                                     ; $723d: $77
	ld   [hl], a                                     ; $723e: $77
	ld   a, b                                        ; $723f: $78
	adc  c                                           ; $7240: $89
	cp   b                                           ; $7241: $b8
	ld   a, e                                        ; $7242: $7b
	add  [hl]                                        ; $7243: $86
	adc  b                                           ; $7244: $88
	ld   h, a                                        ; $7245: $67
	ld   [hl], a                                     ; $7246: $77
	add  a                                           ; $7247: $87
	adc  c                                           ; $7248: $89
	ld   a, d                                        ; $7249: $7a
	or   [hl]                                        ; $724a: $b6
	adc  e                                           ; $724b: $8b
	ld   h, a                                        ; $724c: $67
	and  a                                           ; $724d: $a7
	ld   h, a                                        ; $724e: $67
	ld   a, b                                        ; $724f: $78
	ld   [hl], a                                     ; $7250: $77
	add  a                                           ; $7251: $87
	ld   a, e                                        ; $7252: $7b
	sub  l                                           ; $7253: $95
	jp   z, $9649                                    ; $7254: $ca $49 $96

	ld   h, a                                        ; $7257: $67
	adc  b                                           ; $7258: $88
	ld   [hl], a                                     ; $7259: $77
	sub  [hl]                                        ; $725a: $96
	sbc  h                                           ; $725b: $9c
	halt                                             ; $725c: $76
	sub  $5b                                         ; $725d: $d6 $5b
	add  [hl]                                        ; $725f: $86
	ld   a, c                                        ; $7260: $79
	ld   a, b                                        ; $7261: $78
	adc  b                                           ; $7262: $88
	halt                                             ; $7263: $76
	sbc  h                                           ; $7264: $9c
	jr   c, jr_0e8_7239                              ; $7265: $38 $d2

	sbc  e                                           ; $7267: $9b
	ld   h, l                                        ; $7268: $65
	xor  c                                           ; $7269: $a9
	ld   l, h                                        ; $726a: $6c
	add  [hl]                                        ; $726b: $86
	ld   h, a                                        ; $726c: $67
	add  $3f                                         ; $726d: $c6 $3f
	ld   b, e                                        ; $726f: $43
	add  sp, $49                                     ; $7270: $e8 $49
	push hl                                          ; $7272: $e5
	bit  0, [hl]                                     ; $7273: $cb $46
	ld   e, h                                        ; $7275: $5c
	ld   [hl], c                                     ; $7276: $71
	or   $1e                                         ; $7277: $f6 $1e
	sub  e                                           ; $7279: $93
	adc  a                                           ; $727a: $8f
	ld   l, h                                        ; $727b: $6c
	di                                               ; $727c: $f3
	ld   h, h                                        ; $727d: $64
	xor  b                                           ; $727e: $a8
	rra                                              ; $727f: $1f
	ld   [hl], c                                     ; $7280: $71
	jp   c, $f739                                    ; $7281: $da $39 $f7

	cp   a                                           ; $7284: $bf
	ld   [hl], $47                                   ; $7285: $36 $47
	add  c                                           ; $7287: $81
	ret                                              ; $7288: $c9


	dec  e                                           ; $7289: $1d
	jp   $9c8f                                       ; $728a: $c3 $8f $9c


	db   $f4                                         ; $728d: $f4
	ld   h, h                                        ; $728e: $64
	ld   e, c                                        ; $728f: $59
	ld   a, [de]                                     ; $7290: $1a
	and  c                                           ; $7291: $a1
	adc  $49                                         ; $7292: $ce $49
	ld   a, [$36bf]                                  ; $7294: $fa $bf $36
	ld   b, d                                        ; $7297: $42
	sub  c                                           ; $7298: $91
	adc  e                                           ; $7299: $8b
	ld   e, $f4                                      ; $729a: $1e $f4
	cp   a                                           ; $729c: $bf
	xor  h                                           ; $729d: $ac
	pop  af                                          ; $729e: $f1
	ld   d, e                                        ; $729f: $53
	daa                                              ; $72a0: $27
	inc  e                                           ; $72a1: $1c
	sub  c                                           ; $72a2: $91
	rst  $38                                         ; $72a3: $ff
	ld   c, l                                        ; $72a4: $4d
	ld   hl, sp-$11                                  ; $72a5: $f8 $ef
	inc  d                                           ; $72a7: $14
	inc  de                                          ; $72a8: $13
	ld   sp, $1ff3                                   ; $72a9: $31 $f3 $1f
	push de                                          ; $72ac: $d5
	rst  $38                                         ; $72ad: $ff

jr_0e8_72ae:
	ld   c, a                                        ; $72ae: $4f
	pop  af                                          ; $72af: $f1
	ld   b, c                                        ; $72b0: $41
	ld   d, c                                        ; $72b1: $51
	rra                                              ; $72b2: $1f
	jr   jr_0e8_72ae                                 ; $72b3: $18 $f9

	ld   a, a                                        ; $72b5: $7f
	ldh  a, [c]                                      ; $72b6: $f2
	push af                                          ; $72b7: $f5
	dec  d                                           ; $72b8: $15
	dec  d                                           ; $72b9: $15
	rra                                              ; $72ba: $1f
	pop  bc                                          ; $72bb: $c1
	rst  $38                                         ; $72bc: $ff
	ld   l, e                                        ; $72bd: $6b
	push af                                          ; $72be: $f5
	sbc  a                                           ; $72bf: $9f
	ld   de, $1124                                   ; $72c0: $11 $24 $11
	pop  af                                          ; $72c3: $f1
	ld   c, a                                        ; $72c4: $4f
	or   l                                           ; $72c5: $b5
	rst  $38                                         ; $72c6: $ff
	rra                                              ; $72c7: $1f
	and  c                                           ; $72c8: $a1
	ld   b, c                                        ; $72c9: $41

jr_0e8_72ca:
	ld   h, c                                        ; $72ca: $61
	rst  JumpTable                                         ; $72cb: $df
	rra                                              ; $72cc: $1f
	or   $8f                                         ; $72cd: $f6 $8f
	ld   [hl], e                                     ; $72cf: $73
	pop  af                                          ; $72d0: $f1
	inc  de                                          ; $72d1: $13
	inc  [hl]                                        ; $72d2: $34
	rra                                              ; $72d3: $1f
	ld   h, c                                        ; $72d4: $61
	rst  $38                                         ; $72d5: $ff
	ld   c, l                                        ; $72d6: $4d
	pop  af                                          ; $72d7: $f1
	rst  $38                                         ; $72d8: $ff
	inc  d                                           ; $72d9: $14
	rla                                              ; $72da: $17
	ld   [de], a                                     ; $72db: $12
	pop  af                                          ; $72dc: $f1
	sbc  a                                           ; $72dd: $9f
	and  e                                           ; $72de: $a3
	rst  $38                                         ; $72df: $ff
	rra                                              ; $72e0: $1f
	ld   d, c                                        ; $72e1: $51
	ld   [hl], c                                     ; $72e2: $71
	or   c                                           ; $72e3: $b1
	sbc  a                                           ; $72e4: $9f
	ld   e, $f7                                      ; $72e5: $1e $f7
	ccf                                              ; $72e7: $3f
	sub  c                                           ; $72e8: $91
	pop  af                                          ; $72e9: $f1
	dec  d                                           ; $72ea: $15
	dec  e                                           ; $72eb: $1d
	dec  e                                           ; $72ec: $1d
	pop  af                                          ; $72ed: $f1
	rst  $38                                         ; $72ee: $ff
	ld   d, e                                        ; $72ef: $53
	push af                                          ; $72f0: $f5
	cpl                                              ; $72f1: $2f
	ld   de, $d131                                   ; $72f2: $11 $31 $d1
	rst  $38                                         ; $72f5: $ff
	rra                                              ; $72f6: $1f
	db   $f4                                         ; $72f7: $f4
	ld   c, a                                        ; $72f8: $4f
	ld   h, $f1                                      ; $72f9: $26 $f1
	ld   hl, $1f2d                                   ; $72fb: $21 $2d $1f
	pop  af                                          ; $72fe: $f1
	rst  $38                                         ; $72ff: $ff
	ld   h, $f1                                      ; $7300: $26 $f1
	sbc  a                                           ; $7302: $9f
	inc  d                                           ; $7303: $14
	inc  de                                          ; $7304: $13
	pop  bc                                          ; $7305: $c1
	db   $fd                                         ; $7306: $fd
	rra                                              ; $7307: $1f
	pop  af                                          ; $7308: $f1
	ld   a, a                                        ; $7309: $7f
	inc  e                                           ; $730a: $1c
	pop  af                                          ; $730b: $f1
	ld   h, c                                        ; $730c: $61
	ld   e, l                                        ; $730d: $5d
	rra                                              ; $730e: $1f
	pop  hl                                          ; $730f: $e1
	rst  $38                                         ; $7310: $ff
	rla                                              ; $7311: $17
	pop  af                                          ; $7312: $f1
	rst  JumpTable                                         ; $7313: $df
	ld   d, $15                                      ; $7314: $16 $15
	pop  bc                                          ; $7316: $c1
	db   $fd                                         ; $7317: $fd
	rra                                              ; $7318: $1f
	pop  af                                          ; $7319: $f1
	adc  a                                           ; $731a: $8f
	rra                                              ; $731b: $1f
	pop  af                                          ; $731c: $f1
	ld   h, c                                        ; $731d: $61
	ld   a, d                                        ; $731e: $7a
	rra                                              ; $731f: $1f
	or   c                                           ; $7320: $b1
	cp   $19                                         ; $7321: $fe $19
	pop  af                                          ; $7323: $f1
	rst  $38                                         ; $7324: $ff
	rla                                              ; $7325: $17
	rla                                              ; $7326: $17
	or   c                                           ; $7327: $b1
	ld   a, [$d11f]                                  ; $7328: $fa $1f $d1
	xor  a                                           ; $732b: $af
	rra                                              ; $732c: $1f
	pop  af                                          ; $732d: $f1
	ld   [hl], c                                     ; $732e: $71
	adc  d                                           ; $732f: $8a
	rra                                              ; $7330: $1f
	add  c                                           ; $7331: $81
	db   $fd                                         ; $7332: $fd
	ld   a, [de]                                     ; $7333: $1a
	pop  af                                          ; $7334: $f1
	db   $fd                                         ; $7335: $fd
	rla                                              ; $7336: $17
	jr   jr_0e8_72ca                                 ; $7337: $18 $91

	ld   sp, hl                                      ; $7339: $f9
	rra                                              ; $733a: $1f
	or   c                                           ; $733b: $b1
	cp   a                                           ; $733c: $bf
	rra                                              ; $733d: $1f
	pop  bc                                          ; $733e: $c1
	ld   [hl], c                                     ; $733f: $71
	cp   b                                           ; $7340: $b8
	rra                                              ; $7341: $1f
	ld   h, e                                        ; $7342: $63
	ld   a, [$f11c]                                  ; $7343: $fa $1c $f1
	ld   sp, hl                                      ; $7346: $f9
	rla                                              ; $7347: $17
	dec  de                                          ; $7348: $1b
	ld   [hl], c                                     ; $7349: $71
	or   $3f                                         ; $734a: $f6 $3f
	and  c                                           ; $734c: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $734d: $cf
	rra                                              ; $734e: $1f
	sub  c                                           ; $734f: $91
	ld   h, c                                        ; $7350: $61
	add  $2f                                         ; $7351: $c6 $2f
	ld   b, l                                        ; $7353: $45
	ld   sp, hl                                      ; $7354: $f9
	dec  e                                           ; $7355: $1d
	pop  hl                                          ; $7356: $e1
	or   $16                                         ; $7357: $f6 $16
	dec  e                                           ; $7359: $1d
	ld   h, d                                        ; $735a: $62
	push af                                          ; $735b: $f5
	ld   c, a                                        ; $735c: $4f
	sub  c                                           ; $735d: $91
	rst  JumpTable                                         ; $735e: $df
	rra                                              ; $735f: $1f
	ld   h, c                                        ; $7360: $61
	ld   h, c                                        ; $7361: $61
	push hl                                          ; $7362: $e5
	ld   c, a                                        ; $7363: $4f
	ld   b, l                                        ; $7364: $45
	ld   hl, sp+$1e                                  ; $7365: $f8 $1e
	pop  hl                                          ; $7367: $e1
	push af                                          ; $7368: $f5
	dec  d                                           ; $7369: $15
	ld   e, $46                                      ; $736a: $1e $46
	di                                               ; $736c: $f3
	ld   l, a                                        ; $736d: $6f
	add  c                                           ; $736e: $81
	xor  $1f                                         ; $736f: $ee $1f
	ld   sp, $f351                                   ; $7371: $31 $51 $f3
	adc  a                                           ; $7374: $8f
	add  hl, de                                      ; $7375: $19
	or   $1f                                         ; $7376: $f6 $1f
	pop  bc                                          ; $7378: $c1
	pop  af                                          ; $7379: $f1
	dec  d                                           ; $737a: $15
	rra                                              ; $737b: $1f
	scf                                              ; $737c: $37
	ldh  a, [c]                                      ; $737d: $f2
	adc  a                                           ; $737e: $8f
	ld   h, c                                        ; $737f: $61
	ei                                               ; $7380: $fb
	cpl                                              ; $7381: $2f
	ld   de, $f241                                   ; $7382: $11 $41 $f2
	sbc  a                                           ; $7385: $9f
	add  hl, de                                      ; $7386: $19
	push af                                          ; $7387: $f5
	rra                                              ; $7388: $1f
	and  d                                           ; $7389: $a2
	pop  af                                          ; $738a: $f1
	inc  de                                          ; $738b: $13
	rra                                              ; $738c: $1f
	dec  e                                           ; $738d: $1d
	pop  af                                          ; $738e: $f1
	cp   a                                           ; $738f: $bf
	ld   b, c                                        ; $7390: $41
	ld   hl, sp+$4f                                  ; $7391: $f8 $4f
	ld   de, $f121                                   ; $7393: $11 $21 $f1
	rst  JumpTable                                         ; $7396: $df
	inc  e                                           ; $7397: $1c
	di                                               ; $7398: $f3
	rra                                              ; $7399: $1f
	add  h                                           ; $739a: $84
	pop  af                                          ; $739b: $f1
	ld   [de], a                                     ; $739c: $12
	rra                                              ; $739d: $1f
	rra                                              ; $739e: $1f
	pop  af                                          ; $739f: $f1
	rst  $28                                         ; $73a0: $ef
	ld   [hl-], a                                    ; $73a1: $32
	or   $7f                                         ; $73a2: $f6 $7f
	ld   de, $f113                                   ; $73a4: $11 $13 $f1
	rst  $38                                         ; $73a7: $ff
	rra                                              ; $73a8: $1f
	pop  af                                          ; $73a9: $f1
	ccf                                              ; $73aa: $3f
	ld   a, [hl-]                                    ; $73ab: $3a
	pop  af                                          ; $73ac: $f1
	ld   hl, $1f6c                                   ; $73ad: $21 $6c $1f
	pop  hl                                          ; $73b0: $e1
	db   $fd                                         ; $73b1: $fd
	ld   d, $f1                                      ; $73b2: $16 $f1
	rst  $38                                         ; $73b4: $ff
	inc  d                                           ; $73b5: $14
	add  hl, de                                      ; $73b6: $19
	or   c                                           ; $73b7: $b1
	db   $fc                                         ; $73b8: $fc
	rra                                              ; $73b9: $1f
	pop  bc                                          ; $73ba: $c1
	sbc  a                                           ; $73bb: $9f
	rra                                              ; $73bc: $1f
	pop  de                                          ; $73bd: $d1
	ld   b, c                                        ; $73be: $41
	rst  ToBoot                                         ; $73bf: $c7
	cpl                                              ; $73c0: $2f
	ld   h, h                                        ; $73c1: $64
	ld   sp, hl                                      ; $73c2: $f9
	inc  e                                           ; $73c3: $1c
	pop  af                                          ; $73c4: $f1
	or   $14                                         ; $73c5: $f6 $14
	rra                                              ; $73c7: $1f
	ld   a, [hl+]                                    ; $73c8: $2a

Call_0e8_73c9:
	pop  af                                          ; $73c9: $f1
	sbc  a                                           ; $73ca: $9f

Call_0e8_73cb:
	ld   [hl], c                                     ; $73cb: $71
	db   $fc                                         ; $73cc: $fc
	cpl                                              ; $73cd: $2f
	ld   de, $f121                                   ; $73ce: $11 $21 $f1
	rst  $38                                         ; $73d1: $ff
	ld   e, $f4                                      ; $73d2: $1e $f4
	rra                                              ; $73d4: $1f
	ld   h, a                                        ; $73d5: $67
	pop  af                                          ; $73d6: $f1
	ld   de, $1f5d                                   ; $73d7: $11 $5d $1f
	pop  hl                                          ; $73da: $e1
	cp   $14                                         ; $73db: $fe $14
	ldh  a, [c]                                      ; $73dd: $f2
	rst  JumpTable                                         ; $73de: $df
	ld   [de], a                                     ; $73df: $12
	inc  e                                           ; $73e0: $1c
	ld   d, e                                        ; $73e1: $53
	push af                                          ; $73e2: $f5
	ld   e, a                                        ; $73e3: $5f
	or   c                                           ; $73e4: $b1
	cp   a                                           ; $73e5: $bf
	rra                                              ; $73e6: $1f
	ld   h, c                                        ; $73e7: $61
	ld   sp, $cfe1                                   ; $73e8: $31 $e1 $cf
	inc  e                                           ; $73eb: $1c
	rst  $30                                         ; $73ec: $f7
	rra                                              ; $73ed: $1f
	and  e                                           ; $73ee: $a3
	pop  af                                          ; $73ef: $f1
	ld   de, $1f4d                                   ; $73f0: $11 $4d $1f
	pop  af                                          ; $73f3: $f1
	rst  $38                                         ; $73f4: $ff
	ld   [hl-], a                                    ; $73f5: $32
	di                                               ; $73f6: $f3
	cp   a                                           ; $73f7: $bf
	ld   de, $621a                                   ; $73f8: $11 $1a $62
	push af                                          ; $73fb: $f5
	ld   e, a                                        ; $73fc: $5f
	and  c                                           ; $73fd: $a1
	sbc  a                                           ; $73fe: $9f
	rra                                              ; $73ff: $1f
	ld   h, c                                        ; $7400: $61
	ld   hl, $ffe1                                   ; $7401: $21 $e1 $ff
	rra                                              ; $7404: $1f
	or   $1f                                         ; $7405: $f6 $1f
	sub  l                                           ; $7407: $95
	pop  af                                          ; $7408: $f1
	ld   de, $1f79                                   ; $7409: $11 $79 $1f
	add  h                                           ; $740c: $84
	ld   a, [$f236]                                  ; $740d: $fa $36 $f2
	ld   sp, hl                                      ; $7410: $f9
	ld   [de], a                                     ; $7411: $12
	dec  c                                           ; $7412: $0d
	rra                                              ; $7413: $1f
	pop  af                                          ; $7414: $f1
	rst  $38                                         ; $7415: $ff
	ld   h, d                                        ; $7416: $62
	ld   a, [$115f]                                  ; $7417: $fa $5f $11
	jr   jr_0e8_747d                                 ; $741a: $18 $61

	or   $5f                                         ; $741c: $f6 $5f
	add  h                                           ; $741e: $84
	adc  a                                           ; $741f: $8f
	cpl                                              ; $7420: $2f
	ld   [hl], c                                     ; $7421: $71
	ld   [hl+], a                                    ; $7422: $22
	pop  bc                                          ; $7423: $c1
	rst  $38                                         ; $7424: $ff
	rra                                              ; $7425: $1f

jr_0e8_7426:
	push af                                          ; $7426: $f5
	ld   c, a                                        ; $7427: $4f
	ld   a, b                                        ; $7428: $78
	pop  af                                          ; $7429: $f1
	ld   de, $4f93                                   ; $742a: $11 $93 $4f
	jr   jr_0e8_7426                                 ; $742d: $18 $f7

	ld   a, [hl-]                                    ; $742f: $3a
	ldh  [c], a                                      ; $7430: $e2
	ldh  a, [c]                                      ; $7431: $f2
	ld   [de], a                                     ; $7432: $12
	ld   e, c                                        ; $7433: $59
	rra                                              ; $7434: $1f
	pop  de                                          ; $7435: $d1
	db   $fc                                         ; $7436: $fc
	ld   b, [hl]                                     ; $7437: $46
	di                                               ; $7438: $f3
	db   $dd                                         ; $7439: $dd
	ld   de, $1f4a                                   ; $743a: $11 $4a $1f
	pop  af                                          ; $743d: $f1
	cp   $64                                         ; $743e: $fe $64
	rst  $30                                         ; $7440: $f7
	ld   a, a                                        ; $7441: $7f
	ld   de, $183b                                   ; $7442: $11 $3b $18
	pop  af                                          ; $7445: $f1
	rst  $28                                         ; $7446: $ef
	ld   h, l                                        ; $7447: $65
	db   $db                                         ; $7448: $db
	ccf                                              ; $7449: $3f
	ld   de, $3129                                   ; $744a: $11 $29 $31
	di                                               ; $744d: $f3
	ld   l, a                                        ; $744e: $6f
	add  l                                           ; $744f: $85
	xor  a                                           ; $7450: $af
	rra                                              ; $7451: $1f
	ld   b, c                                        ; $7452: $41
	jr   c, jr_0e8_74a6                              ; $7453: $38 $51

	ld   hl, sp+$2f                                  ; $7455: $f8 $2f
	and  l                                           ; $7457: $a5
	adc  a                                           ; $7458: $8f
	rra                                              ; $7459: $1f
	add  c                                           ; $745a: $81
	scf                                              ; $745b: $37
	ld   h, c                                        ; $745c: $61
	db   $fc                                         ; $745d: $fc
	rra                                              ; $745e: $1f
	and  [hl]                                        ; $745f: $a6
	adc  a                                           ; $7460: $8f
	rra                                              ; $7461: $1f
	or   c                                           ; $7462: $b1
	jr   jr_0e8_74c6                                 ; $7463: $18 $61

	db   $fd                                         ; $7465: $fd
	rra                                              ; $7466: $1f
	or   l                                           ; $7467: $b5
	sbc  a                                           ; $7468: $9f
	inc  e                                           ; $7469: $1c
	pop  de                                          ; $746a: $d1
	add  hl, de                                      ; $746b: $19
	ld   d, c                                        ; $746c: $51
	cp   $1f                                         ; $746d: $fe $1f
	push bc                                          ; $746f: $c5
	xor  a                                           ; $7470: $af
	inc  e                                           ; $7471: $1c
	or   c                                           ; $7472: $b1
	ld   a, [de]                                     ; $7473: $1a
	ld   b, c                                        ; $7474: $41
	ld   sp, hl                                      ; $7475: $f9
	rra                                              ; $7476: $1f
	add  a                                           ; $7477: $87
	xor  a                                           ; $7478: $af
	cpl                                              ; $7479: $2f
	ld   [hl], c                                     ; $747a: $71
	ld   c, b                                        ; $747b: $48
	ld   b, c                                        ; $747c: $41

jr_0e8_747d:
	ld   hl, sp+$2f                                  ; $747d: $f8 $2f
	adc  b                                           ; $747f: $88
	xor  a                                           ; $7480: $af
	cpl                                              ; $7481: $2f
	ld   d, c                                        ; $7482: $51
	ld   e, c                                        ; $7483: $59
	ld   de, $6ff3                                   ; $7484: $11 $f3 $6f
	ld   a, c                                        ; $7487: $79
	adc  $2f                                         ; $7488: $ce $2f
	ld   de, $1898                                   ; $748a: $11 $98 $18
	pop  af                                          ; $748d: $f1
	rst  $28                                         ; $748e: $ef
	ld   c, d                                        ; $748f: $4a
	jp   hl                                          ; $7490: $e9


	ld   e, a                                        ; $7491: $5f
	ld   de, $1fd4                                   ; $7492: $11 $d4 $1f
	pop  af                                          ; $7495: $f1
	cp   $6c                                         ; $7496: $fe $6c
	db   $e4                                         ; $7498: $e4
	xor  d                                           ; $7499: $aa
	inc  d                                           ; $749a: $14
	or   c                                           ; $749b: $b1
	cpl                                              ; $749c: $2f
	ld   b, l                                        ; $749d: $45
	rst  $30                                         ; $749e: $f7
	cp   l                                           ; $749f: $bd
	jp   $1cf1                                       ; $74a0: $c3 $f1 $1c


	ld   h, c                                        ; $74a3: $61
	rst  $38                                         ; $74a4: $ff
	rra                                              ; $74a5: $1f

jr_0e8_74a6:
	push af                                          ; $74a6: $f5
	sbc  $58                                         ; $74a7: $de $58

Call_0e8_74a9:
	or   c                                           ; $74a9: $b1
	ld   c, l                                        ; $74aa: $4d
	ld   d, $f3                                      ; $74ab: $16 $f3
	ld   a, a                                        ; $74ad: $7f
	ld   l, e                                        ; $74ae: $6b
	ld   sp, hl                                      ; $74af: $f9
	ld   c, [hl]                                     ; $74b0: $4e
	ld   de, $1ff1                                   ; $74b1: $11 $f1 $1f
	add  d                                           ; $74b4: $82
	ld   a, [$a47f]                                  ; $74b5: $fa $7f $a4
	pop  bc                                          ; $74b8: $c1
	rra                                              ; $74b9: $1f
	ld   de, CheckIfAnimatedSpriteSpecIsAnimating                                   ; $74ba: $11 $f9 $2f
	ret  z                                           ; $74bd: $c8

	ei                                               ; $74be: $fb
	ld   c, e                                        ; $74bf: $4b
	ld   de, $1ff1                                   ; $74c0: $11 $f1 $1f
	and  e                                           ; $74c3: $a3
	db   $fd                                         ; $74c4: $fd
	sbc  a                                           ; $74c5: $9f

jr_0e8_74c6:
	or   h                                           ; $74c6: $b4
	pop  bc                                          ; $74c7: $c1
	rra                                              ; $74c8: $1f
	ld   de, $5ff6                                   ; $74c9: $11 $f6 $5f
	xor  c                                           ; $74cc: $a9
	ld   sp, hl                                      ; $74cd: $f9

jr_0e8_74ce:
	ld   e, e                                        ; $74ce: $5b
	ld   de, $3ff1                                   ; $74cf: $11 $f1 $3f
	jr   c, jr_0e8_74ce                              ; $74d2: $38 $fa

	xor  a                                           ; $74d4: $af
	add  l                                           ; $74d5: $85
	add  c                                           ; $74d6: $81
	ld   c, c                                        ; $74d7: $49
	inc  e                                           ; $74d8: $1c
	db   $e4                                         ; $74d9: $e4
	rst  $38                                         ; $74da: $ff
	xor  [hl]                                        ; $74db: $ae
	push af                                          ; $74dc: $f5
	sub  c                                           ; $74dd: $91
	dec  de                                          ; $74de: $1b
	ld   de, $8ff7                                   ; $74df: $11 $f7 $8f
	db   $db                                         ; $74e2: $db
	ld   sp, hl                                      ; $74e3: $f9
	ld   b, a                                        ; $74e4: $47
	inc  d                                           ; $74e5: $14
	ld   [hl], c                                     ; $74e6: $71
	cp   e                                           ; $74e7: $bb
	ld   l, a                                        ; $74e8: $6f
	db   $fc                                         ; $74e9: $fc
	xor  $46                                         ; $74ea: $ee $46
	ld   de, $7c71                                   ; $74ec: $11 $71 $7c
	ld   a, l                                        ; $74ef: $7d
	db   $fd                                         ; $74f0: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74f1: $cf
	ld   b, l                                        ; $74f2: $45
	ld   de, $4b61                                   ; $74f3: $11 $61 $4b
	sbc  l                                           ; $74f6: $9d
	rst  $38                                         ; $74f7: $ff
	sbc  $74                                         ; $74f8: $de $74
	ld   de, $6a31                                   ; $74fa: $11 $31 $6a
	sbc  a                                           ; $74fd: $9f
	rst  $38                                         ; $74fe: $ff
	jp   z, $2262                                    ; $74ff: $ca $62 $22

	ld   [hl+], a                                    ; $7502: $22
	adc  c                                           ; $7503: $89
	rst  JumpTable                                         ; $7504: $df
	cp   $aa                                         ; $7505: $fe $aa
	inc  sp                                          ; $7507: $33
	ld   sp, $8b26                                   ; $7508: $31 $26 $8b
	cp   $eb                                         ; $750b: $fe $eb
	and  h                                           ; $750d: $a4
	ld   b, h                                        ; $750e: $44
	ld   hl, $9e59                                   ; $750f: $21 $59 $9e
	db   $ed                                         ; $7512: $ed
	bit  2, h                                        ; $7513: $cb $54
	ld   d, e                                        ; $7515: $53
	inc  d                                           ; $7516: $14
	ld   a, b                                        ; $7517: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7518: $cf
	db   $db                                         ; $7519: $db
	add  $55                                         ; $751a: $c6 $55
	ld   [hl-], a                                    ; $751c: $32
	ld   b, a                                        ; $751d: $47
	ld   a, h                                        ; $751e: $7c
	db   $ed                                         ; $751f: $ed
	cp   h                                           ; $7520: $bc
	ld   [hl], l                                     ; $7521: $75
	ld   h, h                                        ; $7522: $64
	inc  [hl]                                        ; $7523: $34
	halt                                             ; $7524: $76
	call $a7bc                                       ; $7525: $cd $bc $a7
	ld   h, [hl]                                     ; $7528: $66
	ld   d, h                                        ; $7529: $54
	ld   d, a                                        ; $752a: $57
	ld   a, c                                        ; $752b: $79
	call c, Call_0e8_75ab                            ; $752c: $dc $ab $75
	ld   h, l                                        ; $752f: $65
	ld   b, l                                        ; $7530: $45
	ld   [hl], a                                     ; $7531: $77
	cp   h                                           ; $7532: $bc
	cp   h                                           ; $7533: $bc
	xor  b                                           ; $7534: $a8
	ld   d, l                                        ; $7535: $55
	ld   h, h                                        ; $7536: $64
	ld   l, b                                        ; $7537: $68
	ld   a, d                                        ; $7538: $7a
	res  7, d                                        ; $7539: $cb $ba
	ld   [hl], l                                     ; $753b: $75
	ld   h, [hl]                                     ; $753c: $66
	ld   b, [hl]                                     ; $753d: $46
	add  a                                           ; $753e: $87
	xor  h                                           ; $753f: $ac
	cp   d                                           ; $7540: $ba
	or   a                                           ; $7541: $b7
	ld   h, a                                        ; $7542: $67
	ld   d, l                                        ; $7543: $55
	ld   [hl], a                                     ; $7544: $77
	ld   a, e                                        ; $7545: $7b
	cp   e                                           ; $7546: $bb
	jp   z, Jump_0e8_7667                            ; $7547: $ca $67 $76

	ld   h, a                                        ; $754a: $67
	ld   [hl], a                                     ; $754b: $77
	sbc  e                                           ; $754c: $9b
	sbc  d                                           ; $754d: $9a
	sub  a                                           ; $754e: $97
	halt                                             ; $754f: $76
	ld   h, [hl]                                     ; $7550: $66
	ld   [hl], a                                     ; $7551: $77
	adc  e                                           ; $7552: $8b
	sbc  e                                           ; $7553: $9b
	cp   c                                           ; $7554: $b9
	ld   h, [hl]                                     ; $7555: $66
	halt                                             ; $7556: $76
	ld   h, a                                        ; $7557: $67
	ld   a, c                                        ; $7558: $79
	cp   e                                           ; $7559: $bb
	sbc  d                                           ; $755a: $9a
	add  a                                           ; $755b: $87
	halt                                             ; $755c: $76
	ld   h, a                                        ; $755d: $67
	ld   [hl], a                                     ; $755e: $77
	adc  d                                           ; $755f: $8a
	xor  d                                           ; $7560: $aa
	xor  c                                           ; $7561: $a9
	halt                                             ; $7562: $76
	ld   [hl], a                                     ; $7563: $77
	ld   l, b                                        ; $7564: $68
	ld   a, c                                        ; $7565: $79
	xor  d                                           ; $7566: $aa
	xor  c                                           ; $7567: $a9
	halt                                             ; $7568: $76
	halt                                             ; $7569: $76
	ld   l, b                                        ; $756a: $68
	add  a                                           ; $756b: $87
	sbc  d                                           ; $756c: $9a
	adc  d                                           ; $756d: $8a
	sub  a                                           ; $756e: $97
	ld   [hl], a                                     ; $756f: $77
	ld   [hl], a                                     ; $7570: $77
	add  a                                           ; $7571: $87
	sbc  d                                           ; $7572: $9a
	adc  d                                           ; $7573: $8a
	sub  a                                           ; $7574: $97
	ld   h, a                                        ; $7575: $67
	ld   [hl], a                                     ; $7576: $77
	adc  b                                           ; $7577: $88
	sbc  c                                           ; $7578: $99
	sbc  c                                           ; $7579: $99
	adc  b                                           ; $757a: $88
	ld   [hl], a                                     ; $757b: $77
	ld   a, b                                        ; $757c: $78
	ld   a, b                                        ; $757d: $78
	adc  b                                           ; $757e: $88
	sbc  c                                           ; $757f: $99
	sbc  b                                           ; $7580: $98
	sub  a                                           ; $7581: $97
	ld   [hl], a                                     ; $7582: $77
	ld   a, b                                        ; $7583: $78
	sbc  b                                           ; $7584: $98
	sbc  c                                           ; $7585: $99
	adc  c                                           ; $7586: $89
	add  a                                           ; $7587: $87
	ld   h, a                                        ; $7588: $67
	ld   [hl], a                                     ; $7589: $77
	adc  b                                           ; $758a: $88
	sbc  b                                           ; $758b: $98
	sbc  c                                           ; $758c: $99
	sbc  c                                           ; $758d: $99
	ld   [hl], a                                     ; $758e: $77
	ld   [hl], a                                     ; $758f: $77
	ld   h, a                                        ; $7590: $67
	add  a                                           ; $7591: $87
	adc  c                                           ; $7592: $89
	sbc  c                                           ; $7593: $99
	sub  a                                           ; $7594: $97
	ld   [hl], a                                     ; $7595: $77
	ld   a, b                                        ; $7596: $78
	ld   a, b                                        ; $7597: $78
	adc  b                                           ; $7598: $88
	sbc  c                                           ; $7599: $99
	xor  c                                           ; $759a: $a9
	sub  a                                           ; $759b: $97
	ld   [hl], a                                     ; $759c: $77
	ld   [hl], a                                     ; $759d: $77
	ld   a, b                                        ; $759e: $78
	ld   a, c                                        ; $759f: $79
	sbc  b                                           ; $75a0: $98
	adc  b                                           ; $75a1: $88
	ld   [hl], a                                     ; $75a2: $77
	sbc  b                                           ; $75a3: $98
	ld   a, b                                        ; $75a4: $78
	adc  b                                           ; $75a5: $88
	adc  b                                           ; $75a6: $88
	sbc  c                                           ; $75a7: $99
	sub  a                                           ; $75a8: $97

Call_0e8_75a9:
	ld   [hl], a                                     ; $75a9: $77
	adc  b                                           ; $75aa: $88

Call_0e8_75ab:
	adc  c                                           ; $75ab: $89
	adc  b                                           ; $75ac: $88
	sbc  b                                           ; $75ad: $98
	adc  b                                           ; $75ae: $88
	ld   [hl], a                                     ; $75af: $77
	ld   a, b                                        ; $75b0: $78
	ld   a, b                                        ; $75b1: $78
	adc  c                                           ; $75b2: $89
	sbc  b                                           ; $75b3: $98
	sbc  b                                           ; $75b4: $98
	adc  b                                           ; $75b5: $88
	add  a                                           ; $75b6: $87
	ld   a, b                                        ; $75b7: $78
	adc  b                                           ; $75b8: $88

Call_0e8_75b9:
	sbc  b                                           ; $75b9: $98

Call_0e8_75ba:
	adc  c                                           ; $75ba: $89
	adc  b                                           ; $75bb: $88
	add  a                                           ; $75bc: $87
	ld   [hl], a                                     ; $75bd: $77
	ld   a, b                                        ; $75be: $78
	adc  b                                           ; $75bf: $88
	sbc  b                                           ; $75c0: $98
	adc  b                                           ; $75c1: $88
	sub  a                                           ; $75c2: $97
	ld   a, b                                        ; $75c3: $78
	ld   [hl], a                                     ; $75c4: $77
	sbc  b                                           ; $75c5: $98
	sbc  b                                           ; $75c6: $98
	sbc  b                                           ; $75c7: $98
	sbc  b                                           ; $75c8: $98
	ld   a, b                                        ; $75c9: $78

Call_0e8_75ca:
	ld   [hl], a                                     ; $75ca: $77
	add  a                                           ; $75cb: $87
	ld   a, c                                        ; $75cc: $79
	sbc  c                                           ; $75cd: $99
	adc  b                                           ; $75ce: $88
	adc  b                                           ; $75cf: $88
	ld   [hl], a                                     ; $75d0: $77
	add  a                                           ; $75d1: $87
	adc  b                                           ; $75d2: $88
	sbc  b                                           ; $75d3: $98
	adc  b                                           ; $75d4: $88
	add  a                                           ; $75d5: $87
	adc  b                                           ; $75d6: $88
	ld   a, b                                        ; $75d7: $78
	sub  a                                           ; $75d8: $97
	ld   a, c                                        ; $75d9: $79
	sub  a                                           ; $75da: $97
	sbc  b                                           ; $75db: $98
	ld   a, b                                        ; $75dc: $78
	sub  a                                           ; $75dd: $97
	adc  c                                           ; $75de: $89
	adc  b                                           ; $75df: $88
	sbc  b                                           ; $75e0: $98
	adc  c                                           ; $75e1: $89
	adc  b                                           ; $75e2: $88
	sbc  b                                           ; $75e3: $98
	adc  b                                           ; $75e4: $88
	sbc  b                                           ; $75e5: $98
	adc  c                                           ; $75e6: $89
	add  a                                           ; $75e7: $87
	sbc  b                                           ; $75e8: $98
	ld   a, b                                        ; $75e9: $78
	add  a                                           ; $75ea: $87
	adc  b                                           ; $75eb: $88
	adc  b                                           ; $75ec: $88
	sbc  b                                           ; $75ed: $98
	adc  b                                           ; $75ee: $88
	adc  b                                           ; $75ef: $88
	ld   a, b                                        ; $75f0: $78
	add  a                                           ; $75f1: $87
	sbc  c                                           ; $75f2: $99
	adc  c                                           ; $75f3: $89
	sbc  b                                           ; $75f4: $98
	adc  b                                           ; $75f5: $88
	adc  b                                           ; $75f6: $88
	ld   a, b                                        ; $75f7: $78
	adc  b                                           ; $75f8: $88
	sbc  c                                           ; $75f9: $99
	adc  b                                           ; $75fa: $88
	ld   a, b                                        ; $75fb: $78
	add  a                                           ; $75fc: $87
	adc  b                                           ; $75fd: $88
	adc  b                                           ; $75fe: $88
	adc  b                                           ; $75ff: $88
	adc  b                                           ; $7600: $88
	adc  b                                           ; $7601: $88
	ld   a, b                                        ; $7602: $78
	adc  b                                           ; $7603: $88
	adc  b                                           ; $7604: $88
	ld   a, b                                        ; $7605: $78
	sbc  b                                           ; $7606: $98
	sbc  b                                           ; $7607: $98
	add  a                                           ; $7608: $87
	adc  b                                           ; $7609: $88
	ld   a, c                                        ; $760a: $79
	adc  b                                           ; $760b: $88
	adc  b                                           ; $760c: $88
	adc  c                                           ; $760d: $89
	adc  b                                           ; $760e: $88
	adc  b                                           ; $760f: $88
	add  a                                           ; $7610: $87
	adc  b                                           ; $7611: $88
	adc  b                                           ; $7612: $88
	sbc  b                                           ; $7613: $98
	adc  b                                           ; $7614: $88
	adc  b                                           ; $7615: $88
	adc  b                                           ; $7616: $88
	adc  b                                           ; $7617: $88
	adc  b                                           ; $7618: $88
	adc  c                                           ; $7619: $89
	adc  b                                           ; $761a: $88
	adc  c                                           ; $761b: $89
	adc  b                                           ; $761c: $88
	adc  b                                           ; $761d: $88
	adc  c                                           ; $761e: $89
	ld   a, b                                        ; $761f: $78
	sbc  b                                           ; $7620: $98
	adc  b                                           ; $7621: $88
	adc  b                                           ; $7622: $88
	adc  c                                           ; $7623: $89
	add  a                                           ; $7624: $87
	adc  c                                           ; $7625: $89
	adc  b                                           ; $7626: $88
	sbc  b                                           ; $7627: $98
	adc  b                                           ; $7628: $88
	adc  b                                           ; $7629: $88
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  c                                           ; $762c: $89
	add  a                                           ; $762d: $87
	sbc  b                                           ; $762e: $98
	ld   a, c                                        ; $762f: $79
	add  a                                           ; $7630: $87
	adc  b                                           ; $7631: $88
	adc  b                                           ; $7632: $88
	adc  b                                           ; $7633: $88
	adc  b                                           ; $7634: $88
	add  a                                           ; $7635: $87
	adc  b                                           ; $7636: $88
	add  a                                           ; $7637: $87
	adc  c                                           ; $7638: $89
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
	add  a                                           ; $7644: $87
	sbc  b                                           ; $7645: $98
	add  a                                           ; $7646: $87
	sbc  b                                           ; $7647: $98
	ld   a, b                                        ; $7648: $78
	add  a                                           ; $7649: $87
	adc  b                                           ; $764a: $88
	adc  c                                           ; $764b: $89
	ld   a, b                                        ; $764c: $78
	sbc  b                                           ; $764d: $98
	adc  b                                           ; $764e: $88
	adc  b                                           ; $764f: $88
	adc  b                                           ; $7650: $88
	adc  b                                           ; $7651: $88
	adc  b                                           ; $7652: $88
	adc  b                                           ; $7653: $88
	adc  c                                           ; $7654: $89
	ld   a, b                                        ; $7655: $78
	adc  b                                           ; $7656: $88
	sbc  b                                           ; $7657: $98
	ld   a, c                                        ; $7658: $79
	adc  b                                           ; $7659: $88
	adc  b                                           ; $765a: $88
	adc  b                                           ; $765b: $88
	adc  b                                           ; $765c: $88
	adc  b                                           ; $765d: $88
	add  a                                           ; $765e: $87
	adc  b                                           ; $765f: $88
	adc  b                                           ; $7660: $88
	adc  b                                           ; $7661: $88
	adc  b                                           ; $7662: $88
	adc  b                                           ; $7663: $88
	ld   a, b                                        ; $7664: $78
	adc  b                                           ; $7665: $88
	adc  b                                           ; $7666: $88

Jump_0e8_7667:
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  b                                           ; $7669: $88
	adc  b                                           ; $766a: $88
	adc  b                                           ; $766b: $88
	adc  b                                           ; $766c: $88
	ld   a, b                                        ; $766d: $78
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
	ld   a, b                                        ; $7688: $78
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

Call_0e8_7695:
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

Call_0e8_76b9:
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

Call_0e8_76c9:
	adc  b                                           ; $76c9: $88

Call_0e8_76ca:
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
	adc  c                                           ; $7792: $89
	adc  b                                           ; $7793: $88
	adc  b                                           ; $7794: $88
	adc  b                                           ; $7795: $88
	sbc  b                                           ; $7796: $98
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
	adc  c                                           ; $77a9: $89
	adc  b                                           ; $77aa: $88
	adc  b                                           ; $77ab: $88
	adc  b                                           ; $77ac: $88
	adc  b                                           ; $77ad: $88
	adc  b                                           ; $77ae: $88
	adc  b                                           ; $77af: $88
	adc  b                                           ; $77b0: $88
	adc  b                                           ; $77b1: $88
	sbc  b                                           ; $77b2: $98
	adc  b                                           ; $77b3: $88
	adc  b                                           ; $77b4: $88
	adc  c                                           ; $77b5: $89
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
	sbc  b                                           ; $77c4: $98
	adc  b                                           ; $77c5: $88
	adc  b                                           ; $77c6: $88
	adc  b                                           ; $77c7: $88
	adc  b                                           ; $77c8: $88
	adc  b                                           ; $77c9: $88
	add  a                                           ; $77ca: $87
	adc  c                                           ; $77cb: $89
	adc  b                                           ; $77cc: $88
	adc  b                                           ; $77cd: $88
	ld   a, b                                        ; $77ce: $78
	adc  b                                           ; $77cf: $88
	sbc  b                                           ; $77d0: $98
	adc  b                                           ; $77d1: $88
	adc  b                                           ; $77d2: $88
	adc  b                                           ; $77d3: $88
	adc  b                                           ; $77d4: $88
	adc  b                                           ; $77d5: $88
	sbc  b                                           ; $77d6: $98
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
	ld   a, b                                        ; $77ee: $78
	adc  b                                           ; $77ef: $88
	adc  b                                           ; $77f0: $88
	adc  b                                           ; $77f1: $88
	adc  b                                           ; $77f2: $88
	add  a                                           ; $77f3: $87
	sbc  b                                           ; $77f4: $98
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
	ld   a, b                                        ; $7800: $78
	adc  d                                           ; $7801: $8a
	add  a                                           ; $7802: $87
	add  a                                           ; $7803: $87
	adc  b                                           ; $7804: $88
	adc  b                                           ; $7805: $88
	adc  c                                           ; $7806: $89
	ld   a, b                                        ; $7807: $78
	ld   [hl], a                                     ; $7808: $77
	adc  b                                           ; $7809: $88
	add  a                                           ; $780a: $87
	sbc  c                                           ; $780b: $99
	sbc  b                                           ; $780c: $98
	add  a                                           ; $780d: $87
	ld   a, b                                        ; $780e: $78
	add  a                                           ; $780f: $87
	adc  b                                           ; $7810: $88
	sbc  b                                           ; $7811: $98
	sbc  c                                           ; $7812: $99
	adc  c                                           ; $7813: $89
	ld   a, b                                        ; $7814: $78
	ld   [hl], a                                     ; $7815: $77
	add  a                                           ; $7816: $87
	adc  b                                           ; $7817: $88
	sbc  b                                           ; $7818: $98
	adc  b                                           ; $7819: $88
	sbc  c                                           ; $781a: $99
	adc  b                                           ; $781b: $88
	add  a                                           ; $781c: $87
	ld   h, a                                        ; $781d: $67
	ld   a, b                                        ; $781e: $78
	adc  b                                           ; $781f: $88
	adc  b                                           ; $7820: $88
	adc  c                                           ; $7821: $89
	adc  c                                           ; $7822: $89
	add  a                                           ; $7823: $87
	ld   [hl], a                                     ; $7824: $77
	ld   h, a                                        ; $7825: $67
	ld   [hl], a                                     ; $7826: $77
	adc  c                                           ; $7827: $89
	sbc  c                                           ; $7828: $99
	sbc  c                                           ; $7829: $99
	sbc  c                                           ; $782a: $99
	sub  a                                           ; $782b: $97
	halt                                             ; $782c: $76
	ld   h, a                                        ; $782d: $67
	ld   [hl], a                                     ; $782e: $77
	adc  c                                           ; $782f: $89
	sbc  b                                           ; $7830: $98
	sbc  e                                           ; $7831: $9b
	sbc  b                                           ; $7832: $98
	adc  b                                           ; $7833: $88
	ld   h, l                                        ; $7834: $65
	ld   [hl], a                                     ; $7835: $77
	ld   h, a                                        ; $7836: $67
	adc  c                                           ; $7837: $89
	sbc  c                                           ; $7838: $99
	cp   e                                           ; $7839: $bb
	sub  a                                           ; $783a: $97
	add  a                                           ; $783b: $87
	ld   b, l                                        ; $783c: $45
	ld   [hl], a                                     ; $783d: $77
	ld   h, [hl]                                     ; $783e: $66
	sbc  d                                           ; $783f: $9a
	sbc  h                                           ; $7840: $9c
	bit  6, a                                        ; $7841: $cb $77
	sub  l                                           ; $7843: $95
	ld   [hl], $76                                   ; $7844: $36 $76
	ld   e, b                                        ; $7846: $58
	xor  d                                           ; $7847: $aa
	cp   l                                           ; $7848: $bd
	ret                                              ; $7849: $c9


	ld   l, c                                        ; $784a: $69
	ld   h, d                                        ; $784b: $62
	ld   d, a                                        ; $784c: $57
	ld   d, h                                        ; $784d: $54
	ld   l, d                                        ; $784e: $6a
	xor  d                                           ; $784f: $aa
	rst  $28                                         ; $7850: $ef
	or   [hl]                                        ; $7851: $b6
	ld   [hl], a                                     ; $7852: $77
	ld   b, d                                        ; $7853: $42
	ld   d, [hl]                                     ; $7854: $56
	ld   b, e                                        ; $7855: $43
	sbc  h                                           ; $7856: $9c
	cp   [hl]                                        ; $7857: $be
	cp   $85                                         ; $7858: $fe $85
	ld   [hl], h                                     ; $785a: $74
	inc  hl                                          ; $785b: $23
	ld   d, h                                        ; $785c: $54
	ld   h, $cc                                      ; $785d: $26 $cc
	rst  $28                                         ; $785f: $ef
	ei                                               ; $7860: $fb
	ld   h, [hl]                                     ; $7861: $66
	ld   [hl-], a                                    ; $7862: $32
	inc  sp                                          ; $7863: $33
	ld   b, e                                        ; $7864: $43
	ld   e, e                                        ; $7865: $5b
	rst  $28                                         ; $7866: $ef
	rst  $38                                         ; $7867: $ff
	rst  $10                                         ; $7868: $d7
	ld   h, e                                        ; $7869: $63
	ld   [de], a                                     ; $786a: $12
	inc  de                                          ; $786b: $13
	inc  [hl]                                        ; $786c: $34
	cp   [hl]                                        ; $786d: $be
	rst  $38                                         ; $786e: $ff
	rst  $38                                         ; $786f: $ff
	add  [hl]                                        ; $7870: $86
	ld   sp, $2211                                   ; $7871: $31 $11 $22
	ld   a, [hl-]                                    ; $7874: $3a
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	ld   hl, sp+$74                                  ; $7877: $f8 $74
	ld   de, $1211                                   ; $7879: $11 $11 $12
	xor  a                                           ; $787c: $af
	rst  $38                                         ; $787d: $ff
	rst  $38                                         ; $787e: $ff
	add  [hl]                                        ; $787f: $86
	ld   d, c                                        ; $7880: $51
	ld   de, $1a11                                   ; $7881: $11 $11 $1a
	rst  $38                                         ; $7884: $ff
	rst  $38                                         ; $7885: $ff
	ld   a, [$1164]                                  ; $7886: $fa $64 $11
	ld   de, $9f11                                   ; $7889: $11 $11 $9f
	rst  $38                                         ; $788c: $ff
	rst  $38                                         ; $788d: $ff
	and  l                                           ; $788e: $a5
	ld   b, c                                        ; $788f: $41
	ld   de, $1912                                   ; $7890: $11 $12 $19
	rst  $38                                         ; $7893: $ff
	rst  $38                                         ; $7894: $ff
	ld   a, [$1153]                                  ; $7895: $fa $53 $11
	ld   de, $9f12                                   ; $7898: $11 $12 $9f
	rst  $38                                         ; $789b: $ff
	rst  $38                                         ; $789c: $ff
	and  l                                           ; $789d: $a5
	ld   sp, $1211                                   ; $789e: $31 $11 $12
	ld   a, [hl+]                                    ; $78a1: $2a
	rst  $38                                         ; $78a2: $ff
	rst  $38                                         ; $78a3: $ff
	ld   a, [$1153]                                  ; $78a4: $fa $53 $11
	ld   de, $bf23                                   ; $78a7: $11 $23 $bf
	rst  $38                                         ; $78aa: $ff
	rst  $38                                         ; $78ab: $ff
	and  h                                           ; $78ac: $a4
	ld   hl, $1311                                   ; $78ad: $21 $11 $13
	ld   c, h                                        ; $78b0: $4c
	rst  $38                                         ; $78b1: $ff
	rst  $38                                         ; $78b2: $ff
	ld   sp, hl                                      ; $78b3: $f9
	ld   sp, $1111                                   ; $78b4: $31 $11 $11
	ld   [hl], $bf                                   ; $78b7: $36 $bf
	rst  $38                                         ; $78b9: $ff
	rst  $38                                         ; $78ba: $ff
	and  e                                           ; $78bb: $a3
	ld   de, $1311                                   ; $78bc: $11 $11 $13
	ld   a, l                                        ; $78bf: $7d
	rst  $38                                         ; $78c0: $ff
	rst  $38                                         ; $78c1: $ff
	ld   a, [$1141]                                  ; $78c2: $fa $41 $11
	ld   de, $df37                                   ; $78c5: $11 $37 $df
	rst  $38                                         ; $78c8: $ff
	rst  $38                                         ; $78c9: $ff
	sub  e                                           ; $78ca: $93
	ld   de, $1411                                   ; $78cb: $11 $11 $14
	ld   a, l                                        ; $78ce: $7d
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	ld   sp, hl                                      ; $78d1: $f9
	ld   sp, $1111                                   ; $78d2: $31 $11 $11
	ld   b, a                                        ; $78d5: $47
	rst  $28                                         ; $78d6: $ef
	rst  $38                                         ; $78d7: $ff
	rst  $38                                         ; $78d8: $ff
	sub  h                                           ; $78d9: $94
	ld   hl, $1411                                   ; $78da: $21 $11 $14
	ld   a, l                                        ; $78dd: $7d
	rst  $38                                         ; $78de: $ff
	rst  $38                                         ; $78df: $ff
	ei                                               ; $78e0: $fb
	inc  sp                                          ; $78e1: $33
	ld   de, $4711                                   ; $78e2: $11 $11 $47
	cp   a                                           ; $78e5: $bf
	rst  $38                                         ; $78e6: $ff
	rst  $38                                         ; $78e7: $ff
	call nc, $1131                                   ; $78e8: $d4 $31 $11
	inc  de                                          ; $78eb: $13
	ld   l, e                                        ; $78ec: $6b
	rst  $38                                         ; $78ed: $ff
	rst  $38                                         ; $78ee: $ff
	cp   $53                                         ; $78ef: $fe $53
	ld   de, $3611                                   ; $78f1: $11 $11 $36
	sbc  a                                           ; $78f4: $9f
	rst  $38                                         ; $78f5: $ff
	rst  $38                                         ; $78f6: $ff
	rst  $30                                         ; $78f7: $f7
	ld   hl, $1111                                   ; $78f8: $21 $11 $11
	ld   l, d                                        ; $78fb: $6a
	rst  $38                                         ; $78fc: $ff
	rst  $38                                         ; $78fd: $ff
	rst  $38                                         ; $78fe: $ff
	sub  d                                           ; $78ff: $92
	ld   hl, $1511                                   ; $7900: $21 $11 $15
	sbc  l                                           ; $7903: $9d
	rst  $38                                         ; $7904: $ff
	rst  $38                                         ; $7905: $ff
	db   $fd                                         ; $7906: $fd
	inc  sp                                          ; $7907: $33
	ld   de, $4811                                   ; $7908: $11 $11 $48
	cp   a                                           ; $790b: $bf
	rst  $38                                         ; $790c: $ff
	rst  $38                                         ; $790d: $ff
	push af                                          ; $790e: $f5
	ld   hl, $1311                                   ; $790f: $21 $11 $13
	ld   a, d                                        ; $7912: $7a
	rst  $38                                         ; $7913: $ff
	rst  $38                                         ; $7914: $ff
	rst  $38                                         ; $7915: $ff
	add  d                                           ; $7916: $82
	ld   hl, $1511                                   ; $7917: $21 $11 $15
	sbc  l                                           ; $791a: $9d
	rst  $38                                         ; $791b: $ff
	rst  $38                                         ; $791c: $ff
	db   $fc                                         ; $791d: $fc
	inc  sp                                          ; $791e: $33
	ld   de, $4811                                   ; $791f: $11 $11 $48
	cp   a                                           ; $7922: $bf
	rst  $38                                         ; $7923: $ff
	rst  $38                                         ; $7924: $ff
	or   $21                                         ; $7925: $f6 $21
	ld   de, $6b12                                   ; $7927: $11 $12 $6b
	rst  $28                                         ; $792a: $ef
	rst  $38                                         ; $792b: $ff
	rst  $38                                         ; $792c: $ff
	or   d                                           ; $792d: $b2
	ld   sp, $1511                                   ; $792e: $31 $11 $15
	sbc  e                                           ; $7931: $9b
	rst  $38                                         ; $7932: $ff
	rst  $38                                         ; $7933: $ff
	cp   $42                                         ; $7934: $fe $42
	ld   de, $3711                                   ; $7936: $11 $11 $37
	cp   [hl]                                        ; $7939: $be
	rst  $38                                         ; $793a: $ff
	rst  $38                                         ; $793b: $ff
	ld   a, [$1112]                                  ; $793c: $fa $12 $11
	ld   de, $cf59                                   ; $793f: $11 $59 $cf
	rst  $38                                         ; $7942: $ff
	rst  $38                                         ; $7943: $ff
	db   $e4                                         ; $7944: $e4
	ld   hl, $1311                                   ; $7945: $21 $11 $13
	ld   a, e                                        ; $7948: $7b
	rst  JumpTable                                         ; $7949: $df
	rst  $38                                         ; $794a: $ff
	rst  $38                                         ; $794b: $ff
	or   d                                           ; $794c: $b2
	ld   sp, $1411                                   ; $794d: $31 $11 $14
	xor  e                                           ; $7950: $ab
	rst  $38                                         ; $7951: $ff
	rst  $38                                         ; $7952: $ff
	rst  $38                                         ; $7953: $ff
	ld   [hl], d                                     ; $7954: $72
	ld   de, $1511                                   ; $7955: $11 $11 $15
	xor  h                                           ; $7958: $ac
	rst  $38                                         ; $7959: $ff
	rst  $38                                         ; $795a: $ff
	db   $fd                                         ; $795b: $fd
	ld   b, e                                        ; $795c: $43
	ld   de, $2611                                   ; $795d: $11 $11 $26
	cp   l                                           ; $7960: $bd
	rst  $38                                         ; $7961: $ff
	rst  $38                                         ; $7962: $ff
	db   $fc                                         ; $7963: $fc
	inc  sp                                          ; $7964: $33
	ld   de, $3711                                   ; $7965: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7968: $cf
	rst  $38                                         ; $7969: $ff
	rst  $38                                         ; $796a: $ff
	ld   a, [$1122]                                  ; $796b: $fa $22 $11
	ld   de, $bf48                                   ; $796e: $11 $48 $bf
	rst  $38                                         ; $7971: $ff
	rst  $38                                         ; $7972: $ff
	ld   hl, sp+$21                                  ; $7973: $f8 $21
	ld   de, $3a11                                   ; $7975: $11 $11 $3a
	cp   a                                           ; $7978: $bf
	rst  $38                                         ; $7979: $ff
	rst  $38                                         ; $797a: $ff
	ld   hl, sp+$21                                  ; $797b: $f8 $21
	ld   de, $4911                                   ; $797d: $11 $11 $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7980: $cf
	rst  $38                                         ; $7981: $ff
	rst  $38                                         ; $7982: $ff
	ld   hl, sp+$11                                  ; $7983: $f8 $11
	ld   de, $3911                                   ; $7985: $11 $11 $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7988: $cf
	rst  $38                                         ; $7989: $ff
	rst  $38                                         ; $798a: $ff
	ld   sp, hl                                      ; $798b: $f9
	ld   hl, $1111                                   ; $798c: $21 $11 $11
	jr   c, @-$40                                    ; $798f: $38 $be

	rst  $38                                         ; $7991: $ff
	rst  $38                                         ; $7992: $ff
	db   $fc                                         ; $7993: $fc
	ld   sp, $1111                                   ; $7994: $31 $11 $11
	ld   h, $cd                                      ; $7997: $26 $cd
	rst  $38                                         ; $7999: $ff
	rst  $38                                         ; $799a: $ff
	cp   $51                                         ; $799b: $fe $51
	ld   de, $1511                                   ; $799d: $11 $11 $15
	sbc  l                                           ; $79a0: $9d
	rst  $38                                         ; $79a1: $ff
	rst  $38                                         ; $79a2: $ff
	cp   $91                                         ; $79a3: $fe $91
	ld   de, $1311                                   ; $79a5: $11 $11 $13
	ld   a, e                                        ; $79a8: $7b
	rst  JumpTable                                         ; $79a9: $df
	rst  $38                                         ; $79aa: $ff
	cp   $e5                                         ; $79ab: $fe $e5
	ld   de, $1111                                   ; $79ad: $11 $11 $11
	ld   c, c                                        ; $79b0: $49
	cp   l                                           ; $79b1: $bd
	rst  $38                                         ; $79b2: $ff
	rst  $38                                         ; $79b3: $ff
	db   $ec                                         ; $79b4: $ec
	ld   b, d                                        ; $79b5: $42
	ld   de, $1511                                   ; $79b6: $11 $11 $15
	xor  e                                           ; $79b9: $ab
	rst  $28                                         ; $79ba: $ef
	rst  $38                                         ; $79bb: $ff
	cp   $a3                                         ; $79bc: $fe $a3
	ld   hl, $1111                                   ; $79be: $21 $11 $11
	ld   e, c                                        ; $79c1: $59
	cp   [hl]                                        ; $79c2: $be
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	jp   c, $1143                                    ; $79c5: $da $43 $11

	ld   de, $9b15                                   ; $79c8: $11 $15 $9b
	rst  $28                                         ; $79cb: $ef
	rst  $38                                         ; $79cc: $ff
	cp   $b4                                         ; $79cd: $fe $b4
	ld   sp, $1111                                   ; $79cf: $31 $11 $11
	ld   a, e                                        ; $79d2: $7b
	cp   h                                           ; $79d3: $bc
	rst  $38                                         ; $79d4: $ff
	cp   $cb                                         ; $79d5: $fe $cb
	ld   d, e                                        ; $79d7: $53
	ld   de, $1811                                   ; $79d8: $11 $11 $18
	cp   e                                           ; $79db: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79dc: $cf
	rst  $38                                         ; $79dd: $ff
	db   $eb                                         ; $79de: $eb
	or   [hl]                                        ; $79df: $b6
	ld   [hl-], a                                    ; $79e0: $32
	ld   hl, $6a11                                   ; $79e1: $21 $11 $6a
	call z, $fedf                                    ; $79e4: $cc $df $fe
	cp   d                                           ; $79e7: $ba
	sub  h                                           ; $79e8: $94
	inc  sp                                          ; $79e9: $33
	ld   [hl-], a                                    ; $79ea: $32
	ld   [de], a                                     ; $79eb: $12
	adc  e                                           ; $79ec: $8b
	cp   h                                           ; $79ed: $bc
	rst  JumpTable                                         ; $79ee: $df
	db   $fd                                         ; $79ef: $fd
	cp   d                                           ; $79f0: $ba
	ld   [hl], e                                     ; $79f1: $73
	ld   b, e                                        ; $79f2: $43
	ld   sp, $9a13                                   ; $79f3: $31 $13 $9a
	cp   e                                           ; $79f6: $bb
	rst  JumpTable                                         ; $79f7: $df
	db   $ec                                         ; $79f8: $ec
	cp   d                                           ; $79f9: $ba
	ld   [hl], h                                     ; $79fa: $74
	ld   b, h                                        ; $79fb: $44
	ld   hl, $8a14                                   ; $79fc: $21 $14 $8a
	xor  e                                           ; $79ff: $ab
	rst  $28                                         ; $7a00: $ef
	db   $ed                                         ; $7a01: $ed
	cp   d                                           ; $7a02: $ba
	ld   h, l                                        ; $7a03: $65
	ld   b, h                                        ; $7a04: $44
	ld   hl, $9a04                                   ; $7a05: $21 $04 $9a
	xor  h                                           ; $7a08: $ac
	rst  $28                                         ; $7a09: $ef
	db   $ed                                         ; $7a0a: $ed
	cp   d                                           ; $7a0b: $ba
	ld   h, l                                        ; $7a0c: $65
	ld   d, h                                        ; $7a0d: $54
	ld   sp, $8914                                   ; $7a0e: $31 $14 $89
	cp   h                                           ; $7a11: $bc
	rst  JumpTable                                         ; $7a12: $df
	db   $ed                                         ; $7a13: $ed
	xor  d                                           ; $7a14: $aa
	ld   [hl], l                                     ; $7a15: $75
	ld   d, h                                        ; $7a16: $54
	ld   [hl-], a                                    ; $7a17: $32
	inc  d                                           ; $7a18: $14
	ld   a, c                                        ; $7a19: $79
	xor  e                                           ; $7a1a: $ab
	sbc  $ed                                         ; $7a1b: $de $ed
	cp   d                                           ; $7a1d: $ba
	halt                                             ; $7a1e: $76
	ld   h, l                                        ; $7a1f: $65
	ld   b, e                                        ; $7a20: $43
	inc  hl                                          ; $7a21: $23
	ld   l, c                                        ; $7a22: $69
	sbc  d                                           ; $7a23: $9a
	xor  h                                           ; $7a24: $ac
	call c, $97b9                                    ; $7a25: $dc $b9 $97
	ld   h, [hl]                                     ; $7a28: $66
	ld   d, l                                        ; $7a29: $55
	inc  sp                                          ; $7a2a: $33
	ld   d, a                                        ; $7a2b: $57
	adc  c                                           ; $7a2c: $89
	xor  e                                           ; $7a2d: $ab
	call c, $a8ca                                    ; $7a2e: $dc $ca $a8
	ld   [hl], a                                     ; $7a31: $77
	halt                                             ; $7a32: $76
	ld   d, h                                        ; $7a33: $54
	ld   b, [hl]                                     ; $7a34: $46
	adc  b                                           ; $7a35: $88
	sbc  c                                           ; $7a36: $99
	cp   h                                           ; $7a37: $bc
	cp   e                                           ; $7a38: $bb
	xor  c                                           ; $7a39: $a9
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	halt                                             ; $7a3c: $76
	ld   d, l                                        ; $7a3d: $55
	ld   h, a                                        ; $7a3e: $67
	adc  b                                           ; $7a3f: $88
	sbc  c                                           ; $7a40: $99
	xor  d                                           ; $7a41: $aa
	sbc  b                                           ; $7a42: $98
	sbc  c                                           ; $7a43: $99
	sbc  c                                           ; $7a44: $99
	sbc  c                                           ; $7a45: $99
	add  [hl]                                        ; $7a46: $86
	ld   h, a                                        ; $7a47: $67
	add  a                                           ; $7a48: $87
	ld   [hl], a                                     ; $7a49: $77
	ld   a, b                                        ; $7a4a: $78
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	xor  d                                           ; $7a4d: $aa
	xor  c                                           ; $7a4e: $a9
	sbc  c                                           ; $7a4f: $99
	add  a                                           ; $7a50: $87
	ld   [hl], a                                     ; $7a51: $77
	halt                                             ; $7a52: $76
	ld   h, [hl]                                     ; $7a53: $66
	ld   h, a                                        ; $7a54: $67
	ld   a, b                                        ; $7a55: $78
	adc  c                                           ; $7a56: $89
	xor  e                                           ; $7a57: $ab
	xor  e                                           ; $7a58: $ab
	xor  d                                           ; $7a59: $aa
	add  a                                           ; $7a5a: $87
	ld   [hl], a                                     ; $7a5b: $77
	ld   h, l                                        ; $7a5c: $65
	ld   d, l                                        ; $7a5d: $55
	ld   d, [hl]                                     ; $7a5e: $56
	ld   a, c                                        ; $7a5f: $79
	sbc  d                                           ; $7a60: $9a
	cp   e                                           ; $7a61: $bb
	cp   h                                           ; $7a62: $bc
	cp   c                                           ; $7a63: $b9
	sub  a                                           ; $7a64: $97
	halt                                             ; $7a65: $76
	ld   b, h                                        ; $7a66: $44
	ld   b, l                                        ; $7a67: $45
	ld   h, [hl]                                     ; $7a68: $66
	ld   a, c                                        ; $7a69: $79
	cp   h                                           ; $7a6a: $bc
	cp   e                                           ; $7a6b: $bb
	call z, $86a9                                    ; $7a6c: $cc $a9 $86
	ld   h, h                                        ; $7a6f: $64
	inc  sp                                          ; $7a70: $33
	ld   b, l                                        ; $7a71: $45
	ld   h, a                                        ; $7a72: $67
	adc  d                                           ; $7a73: $8a
	cp   h                                           ; $7a74: $bc
	call z, $a8dc                                    ; $7a75: $cc $dc $a8
	halt                                             ; $7a78: $76
	ld   d, e                                        ; $7a79: $53
	inc  [hl]                                        ; $7a7a: $34
	ld   b, l                                        ; $7a7b: $45
	ld   l, b                                        ; $7a7c: $68
	sbc  e                                           ; $7a7d: $9b
	cp   h                                           ; $7a7e: $bc
	call z, $97ba                                    ; $7a7f: $cc $ba $97
	ld   h, l                                        ; $7a82: $65
	ld   b, e                                        ; $7a83: $43
	ld   b, h                                        ; $7a84: $44
	ld   d, [hl]                                     ; $7a85: $56
	ld   a, c                                        ; $7a86: $79
	xor  e                                           ; $7a87: $ab
	call z, $c9cc                                    ; $7a88: $cc $cc $c9
	sub  a                                           ; $7a8b: $97
	ld   h, l                                        ; $7a8c: $65
	ld   b, e                                        ; $7a8d: $43
	ld   b, h                                        ; $7a8e: $44
	ld   d, [hl]                                     ; $7a8f: $56
	ld   a, c                                        ; $7a90: $79
	xor  e                                           ; $7a91: $ab
	call z, $b9dc                                    ; $7a92: $cc $dc $b9
	add  [hl]                                        ; $7a95: $86
	ld   h, l                                        ; $7a96: $65
	inc  sp                                          ; $7a97: $33
	ld   b, h                                        ; $7a98: $44
	ld   d, [hl]                                     ; $7a99: $56
	ld   a, d                                        ; $7a9a: $7a
	xor  e                                           ; $7a9b: $ab
	call z, $a9dc                                    ; $7a9c: $cc $dc $a9
	halt                                             ; $7a9f: $76
	ld   d, h                                        ; $7aa0: $54
	inc  [hl]                                        ; $7aa1: $34
	ld   b, l                                        ; $7aa2: $45
	ld   d, a                                        ; $7aa3: $57
	adc  c                                           ; $7aa4: $89
	xor  h                                           ; $7aa5: $ac
	call z, $b9cc                                    ; $7aa6: $cc $cc $b9
	halt                                             ; $7aa9: $76
	ld   d, h                                        ; $7aaa: $54
	ld   b, h                                        ; $7aab: $44
	ld   b, l                                        ; $7aac: $45
	ld   h, a                                        ; $7aad: $67
	adc  d                                           ; $7aae: $8a
	xor  h                                           ; $7aaf: $ac
	cp   h                                           ; $7ab0: $bc
	db   $db                                         ; $7ab1: $db
	xor  c                                           ; $7ab2: $a9
	halt                                             ; $7ab3: $76
	ld   d, h                                        ; $7ab4: $54
	ld   b, h                                        ; $7ab5: $44
	ld   b, h                                        ; $7ab6: $44
	ld   d, [hl]                                     ; $7ab7: $56

Jump_0e8_7ab8:
	adc  d                                           ; $7ab8: $8a
	cp   h                                           ; $7ab9: $bc
	call $b9dc                                       ; $7aba: $cd $dc $b9
	halt                                             ; $7abd: $76
	ld   d, h                                        ; $7abe: $54
	inc  [hl]                                        ; $7abf: $34
	ld   b, h                                        ; $7ac0: $44
	ld   d, [hl]                                     ; $7ac1: $56
	adc  c                                           ; $7ac2: $89
	xor  e                                           ; $7ac3: $ab
	call c, $b9dc                                    ; $7ac4: $dc $dc $b9
	halt                                             ; $7ac7: $76
	ld   d, h                                        ; $7ac8: $54
	inc  sp                                          ; $7ac9: $33
	inc  [hl]                                        ; $7aca: $34
	ld   d, [hl]                                     ; $7acb: $56
	adc  d                                           ; $7acc: $8a
	cp   h                                           ; $7acd: $bc
	call $b9dc                                       ; $7ace: $cd $dc $b9
	halt                                             ; $7ad1: $76
	ld   d, h                                        ; $7ad2: $54
	inc  sp                                          ; $7ad3: $33
	ld   b, h                                        ; $7ad4: $44
	ld   d, a                                        ; $7ad5: $57
	sbc  d                                           ; $7ad6: $9a
	cp   h                                           ; $7ad7: $bc
	db   $dd                                         ; $7ad8: $dd
	call z, Call_0e8_75a9                            ; $7ad9: $cc $a9 $75
	ld   d, h                                        ; $7adc: $54
	inc  sp                                          ; $7add: $33
	ld   b, l                                        ; $7ade: $45
	ld   h, [hl]                                     ; $7adf: $66
	sbc  d                                           ; $7ae0: $9a
	cp   e                                           ; $7ae1: $bb
	call $badc                                       ; $7ae2: $cd $dc $ba
	halt                                             ; $7ae5: $76
	ld   d, h                                        ; $7ae6: $54
	inc  [hl]                                        ; $7ae7: $34
	ld   b, l                                        ; $7ae8: $45
	ld   d, [hl]                                     ; $7ae9: $56
	ld   a, c                                        ; $7aea: $79
	xor  e                                           ; $7aeb: $ab
	call $cadc                                       ; $7aec: $cd $dc $ca
	sub  [hl]                                        ; $7aef: $96
	ld   h, l                                        ; $7af0: $65
	ld   b, e                                        ; $7af1: $43
	ld   b, h                                        ; $7af2: $44
	ld   d, l                                        ; $7af3: $55
	ld   a, c                                        ; $7af4: $79
	xor  d                                           ; $7af5: $aa
	cp   l                                           ; $7af6: $bd
	call z, $a7cb                                    ; $7af7: $cc $cb $a7
	ld   h, l                                        ; $7afa: $65
	ld   b, e                                        ; $7afb: $43
	inc  [hl]                                        ; $7afc: $34
	ld   b, l                                        ; $7afd: $45
	ld   l, b                                        ; $7afe: $68
	xor  e                                           ; $7aff: $ab
	call $cbcc                                       ; $7b00: $cd $cc $cb
	xor  b                                           ; $7b03: $a8
	ld   h, l                                        ; $7b04: $65
	ld   b, e                                        ; $7b05: $43
	inc  [hl]                                        ; $7b06: $34
	ld   b, l                                        ; $7b07: $45
	ld   d, a                                        ; $7b08: $57
	sbc  d                                           ; $7b09: $9a
	cp   h                                           ; $7b0a: $bc
	call c, $badc                                    ; $7b0b: $dc $dc $ba
	halt                                             ; $7b0e: $76
	ld   d, h                                        ; $7b0f: $54
	inc  sp                                          ; $7b10: $33
	ld   b, h                                        ; $7b11: $44
	ld   d, [hl]                                     ; $7b12: $56
	adc  c                                           ; $7b13: $89
	cp   e                                           ; $7b14: $bb
	call z, $bacc                                    ; $7b15: $cc $cc $ba
	add  a                                           ; $7b18: $87
	ld   d, h                                        ; $7b19: $54
	inc  sp                                          ; $7b1a: $33
	ld   b, h                                        ; $7b1b: $44
	ld   d, l                                        ; $7b1c: $55
	ld   l, b                                        ; $7b1d: $68
	sbc  e                                           ; $7b1e: $9b
	call z, $ccdc                                    ; $7b1f: $cc $dc $cc
	xor  b                                           ; $7b22: $a8
	ld   h, l                                        ; $7b23: $65
	ld   d, h                                        ; $7b24: $54
	inc  [hl]                                        ; $7b25: $34
	ld   b, h                                        ; $7b26: $44
	ld   d, a                                        ; $7b27: $57
	sbc  d                                           ; $7b28: $9a
	cp   e                                           ; $7b29: $bb
	call z, $bbcc                                    ; $7b2a: $cc $cc $bb
	add  a                                           ; $7b2d: $87
	ld   h, l                                        ; $7b2e: $65
	ld   b, e                                        ; $7b2f: $43
	ld   b, h                                        ; $7b30: $44
	ld   b, l                                        ; $7b31: $45
	ld   l, b                                        ; $7b32: $68
	sbc  d                                           ; $7b33: $9a
	cp   h                                           ; $7b34: $bc
	call z, $b9cc                                    ; $7b35: $cc $cc $b9
	halt                                             ; $7b38: $76
	ld   d, h                                        ; $7b39: $54
	inc  [hl]                                        ; $7b3a: $34
	ld   b, h                                        ; $7b3b: $44
	ld   d, [hl]                                     ; $7b3c: $56
	ld   a, c                                        ; $7b3d: $79
	xor  e                                           ; $7b3e: $ab
	cp   h                                           ; $7b3f: $bc
	call z, $98cb                                    ; $7b40: $cc $cb $98
	ld   h, l                                        ; $7b43: $65
	ld   b, e                                        ; $7b44: $43
	ld   b, h                                        ; $7b45: $44
	ld   b, h                                        ; $7b46: $44
	ld   d, a                                        ; $7b47: $57
	adc  d                                           ; $7b48: $8a
	cp   e                                           ; $7b49: $bb
	cp   e                                           ; $7b4a: $bb
	call z, $97ba                                    ; $7b4b: $cc $ba $97
	ld   h, l                                        ; $7b4e: $65
	ld   b, e                                        ; $7b4f: $43
	ld   b, h                                        ; $7b50: $44
	ld   b, l                                        ; $7b51: $45
	ld   h, a                                        ; $7b52: $67
	sbc  c                                           ; $7b53: $99
	xor  h                                           ; $7b54: $ac
	call z, $bbdd                                    ; $7b55: $cc $dd $bb
	sub  a                                           ; $7b58: $97
	ld   h, l                                        ; $7b59: $65
	ld   b, h                                        ; $7b5a: $44
	ld   b, h                                        ; $7b5b: $44
	ld   b, l                                        ; $7b5c: $45
	ld   h, a                                        ; $7b5d: $67
	adc  c                                           ; $7b5e: $89
	xor  h                                           ; $7b5f: $ac
	call z, $badc                                    ; $7b60: $cc $dc $ba
	sub  a                                           ; $7b63: $97
	ld   h, l                                        ; $7b64: $65
	ld   b, h                                        ; $7b65: $44
	ld   b, h                                        ; $7b66: $44
	ld   b, h                                        ; $7b67: $44
	ld   d, a                                        ; $7b68: $57
	sbc  d                                           ; $7b69: $9a
	cp   e                                           ; $7b6a: $bb
	cp   h                                           ; $7b6b: $bc
	db   $dd                                         ; $7b6c: $dd
	res  5, b                                        ; $7b6d: $cb $a8
	ld   h, l                                        ; $7b6f: $65
	ld   b, h                                        ; $7b70: $44
	ld   b, h                                        ; $7b71: $44
	inc  [hl]                                        ; $7b72: $34
	ld   d, [hl]                                     ; $7b73: $56
	adc  c                                           ; $7b74: $89
	xor  e                                           ; $7b75: $ab
	call z, $dccd                                    ; $7b76: $cc $cd $dc
	xor  c                                           ; $7b79: $a9
	ld   [hl], l                                     ; $7b7a: $75
	ld   b, h                                        ; $7b7b: $44
	ld   b, h                                        ; $7b7c: $44
	inc  sp                                          ; $7b7d: $33
	ld   b, [hl]                                     ; $7b7e: $46
	ld   a, c                                        ; $7b7f: $79
	xor  e                                           ; $7b80: $ab
	cp   h                                           ; $7b81: $bc
	call $bacc                                       ; $7b82: $cd $cc $ba
	halt                                             ; $7b85: $76
	ld   d, h                                        ; $7b86: $54
	ld   b, h                                        ; $7b87: $44
	inc  sp                                          ; $7b88: $33
	ld   b, l                                        ; $7b89: $45
	ld   l, b                                        ; $7b8a: $68
	xor  e                                           ; $7b8b: $ab
	cp   h                                           ; $7b8c: $bc
	call c, $bbdd                                    ; $7b8d: $dc $dd $bb
	add  a                                           ; $7b90: $87
	ld   d, l                                        ; $7b91: $55
	ld   b, h                                        ; $7b92: $44
	ld   b, e                                        ; $7b93: $43
	inc  [hl]                                        ; $7b94: $34
	ld   d, [hl]                                     ; $7b95: $56
	adc  d                                           ; $7b96: $8a
	cp   e                                           ; $7b97: $bb
	call $dcdd                                       ; $7b98: $cd $dd $dc
	xor  c                                           ; $7b9b: $a9
	ld   [hl], l                                     ; $7b9c: $75
	ld   d, h                                        ; $7b9d: $54
	ld   b, h                                        ; $7b9e: $44
	inc  sp                                          ; $7b9f: $33
	ld   b, l                                        ; $7ba0: $45
	ld   l, b                                        ; $7ba1: $68
	xor  e                                           ; $7ba2: $ab
	cp   h                                           ; $7ba3: $bc
	call c, $bbdd                                    ; $7ba4: $dc $dd $bb
	sub  a                                           ; $7ba7: $97
	ld   h, l                                        ; $7ba8: $65
	ld   b, h                                        ; $7ba9: $44
	ld   b, h                                        ; $7baa: $44
	inc  [hl]                                        ; $7bab: $34
	ld   d, [hl]                                     ; $7bac: $56
	ld   a, c                                        ; $7bad: $79
	xor  d                                           ; $7bae: $aa
	cp   h                                           ; $7baf: $bc
	call $badc                                       ; $7bb0: $cd $dc $ba
	halt                                             ; $7bb3: $76
	ld   d, l                                        ; $7bb4: $55
	ld   b, h                                        ; $7bb5: $44
	ld   b, e                                        ; $7bb6: $43
	inc  [hl]                                        ; $7bb7: $34
	ld   d, a                                        ; $7bb8: $57
	adc  d                                           ; $7bb9: $8a
	xor  e                                           ; $7bba: $ab
	call $cbdd                                       ; $7bbb: $cd $dd $cb
	cp   b                                           ; $7bbe: $b8
	halt                                             ; $7bbf: $76
	ld   h, l                                        ; $7bc0: $65
	ld   b, h                                        ; $7bc1: $44
	inc  sp                                          ; $7bc2: $33
	inc  [hl]                                        ; $7bc3: $34
	ld   d, a                                        ; $7bc4: $57
	adc  d                                           ; $7bc5: $8a
	cp   e                                           ; $7bc6: $bb
	call z, $dbdd                                    ; $7bc7: $cc $dd $db
	xor  c                                           ; $7bca: $a9
	halt                                             ; $7bcb: $76
	ld   h, l                                        ; $7bcc: $65
	ld   b, h                                        ; $7bcd: $44
	inc  sp                                          ; $7bce: $33
	inc  [hl]                                        ; $7bcf: $34
	ld   d, a                                        ; $7bd0: $57
	adc  c                                           ; $7bd1: $89
	xor  e                                           ; $7bd2: $ab
	call z, $dcdd                                    ; $7bd3: $cc $dd $dc
	xor  b                                           ; $7bd6: $a8
	add  a                                           ; $7bd7: $87
	ld   h, [hl]                                     ; $7bd8: $66
	ld   d, h                                        ; $7bd9: $54
	inc  sp                                          ; $7bda: $33
	inc  [hl]                                        ; $7bdb: $34
	ld   d, [hl]                                     ; $7bdc: $56
	ld   a, c                                        ; $7bdd: $79
	xor  d                                           ; $7bde: $aa
	call $dbcc                                       ; $7bdf: $cd $cc $db
	cp   d                                           ; $7be2: $ba
	sbc  c                                           ; $7be3: $99
	add  [hl]                                        ; $7be4: $86
	ld   d, l                                        ; $7be5: $55
	ld   b, e                                        ; $7be6: $43
	inc  sp                                          ; $7be7: $33
	ld   b, l                                        ; $7be8: $45
	ld   h, a                                        ; $7be9: $67
	adc  c                                           ; $7bea: $89
	xor  h                                           ; $7beb: $ac
	call z, $bbcb                                    ; $7bec: $cc $cb $bb
	xor  c                                           ; $7bef: $a9
	sbc  b                                           ; $7bf0: $98
	halt                                             ; $7bf1: $76
	ld   d, l                                        ; $7bf2: $55
	ld   b, h                                        ; $7bf3: $44
	ld   b, h                                        ; $7bf4: $44
	ld   b, l                                        ; $7bf5: $45
	ld   h, a                                        ; $7bf6: $67
	adc  c                                           ; $7bf7: $89
	xor  d                                           ; $7bf8: $aa
	cp   h                                           ; $7bf9: $bc
	call z, $bbcb                                    ; $7bfa: $cc $cb $bb
	sbc  c                                           ; $7bfd: $99
	add  a                                           ; $7bfe: $87
	ld   h, l                                        ; $7bff: $65
	ld   d, h                                        ; $7c00: $54
	ld   b, h                                        ; $7c01: $44
	ld   b, l                                        ; $7c02: $45
	ld   h, [hl]                                     ; $7c03: $66
	ld   a, c                                        ; $7c04: $79
	sbc  d                                           ; $7c05: $9a
	xor  e                                           ; $7c06: $ab
	xor  d                                           ; $7c07: $aa
	cp   e                                           ; $7c08: $bb
	xor  e                                           ; $7c09: $ab
	xor  c                                           ; $7c0a: $a9
	sbc  b                                           ; $7c0b: $98
	add  a                                           ; $7c0c: $87
	halt                                             ; $7c0d: $76
	ld   h, [hl]                                     ; $7c0e: $66
	ld   d, l                                        ; $7c0f: $55
	ld   d, l                                        ; $7c10: $55
	ld   h, [hl]                                     ; $7c11: $66
	ld   [hl], a                                     ; $7c12: $77
	adc  b                                           ; $7c13: $88
	sbc  c                                           ; $7c14: $99
	sbc  d                                           ; $7c15: $9a
	sbc  d                                           ; $7c16: $9a
	xor  d                                           ; $7c17: $aa
	xor  d                                           ; $7c18: $aa
	xor  d                                           ; $7c19: $aa
	sbc  c                                           ; $7c1a: $99
	sbc  c                                           ; $7c1b: $99
	add  a                                           ; $7c1c: $87
	halt                                             ; $7c1d: $76
	ld   h, [hl]                                     ; $7c1e: $66
	ld   h, [hl]                                     ; $7c1f: $66
	ld   h, [hl]                                     ; $7c20: $66
	ld   h, [hl]                                     ; $7c21: $66
	ld   [hl], a                                     ; $7c22: $77
	adc  b                                           ; $7c23: $88
	adc  c                                           ; $7c24: $89
	sbc  d                                           ; $7c25: $9a
	xor  d                                           ; $7c26: $aa
	xor  d                                           ; $7c27: $aa
	xor  c                                           ; $7c28: $a9
	xor  d                                           ; $7c29: $aa
	sbc  b                                           ; $7c2a: $98
	sbc  b                                           ; $7c2b: $98
	ld   [hl], a                                     ; $7c2c: $77
	halt                                             ; $7c2d: $76
	ld   h, [hl]                                     ; $7c2e: $66
	ld   h, [hl]                                     ; $7c2f: $66
	ld   h, [hl]                                     ; $7c30: $66
	ld   [hl], a                                     ; $7c31: $77
	ld   a, b                                        ; $7c32: $78
	adc  c                                           ; $7c33: $89
	adc  c                                           ; $7c34: $89
	sbc  c                                           ; $7c35: $99
	xor  d                                           ; $7c36: $aa
	xor  c                                           ; $7c37: $a9
	xor  c                                           ; $7c38: $a9
	sbc  b                                           ; $7c39: $98
	sbc  c                                           ; $7c3a: $99
	adc  c                                           ; $7c3b: $89
	add  a                                           ; $7c3c: $87
	ld   [hl], a                                     ; $7c3d: $77
	ld   [hl], a                                     ; $7c3e: $77
	ld   [hl], a                                     ; $7c3f: $77
	ld   [hl], a                                     ; $7c40: $77
	ld   [hl], a                                     ; $7c41: $77
	ld   [hl], a                                     ; $7c42: $77
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	sbc  b                                           ; $7c45: $98
	sbc  c                                           ; $7c46: $99
	sbc  d                                           ; $7c47: $9a
	xor  d                                           ; $7c48: $aa
	xor  d                                           ; $7c49: $aa
	sbc  b                                           ; $7c4a: $98
	sbc  b                                           ; $7c4b: $98
	ld   a, b                                        ; $7c4c: $78
	add  a                                           ; $7c4d: $87
	ld   a, b                                        ; $7c4e: $78
	ld   h, a                                        ; $7c4f: $67
	halt                                             ; $7c50: $76
	ld   h, a                                        ; $7c51: $67
	adc  b                                           ; $7c52: $88
	sbc  c                                           ; $7c53: $99
	sbc  c                                           ; $7c54: $99
	xor  d                                           ; $7c55: $aa
	cp   c                                           ; $7c56: $b9
	xor  c                                           ; $7c57: $a9
	xor  c                                           ; $7c58: $a9
	halt                                             ; $7c59: $76
	ld   d, e                                        ; $7c5a: $53
	inc  h                                           ; $7c5b: $24
	ld   b, d                                        ; $7c5c: $42
	inc  [hl]                                        ; $7c5d: $34
	ld   h, [hl]                                     ; $7c5e: $66
	ld   a, h                                        ; $7c5f: $7c
	call z, $ecde                                    ; $7c60: $cc $de $ec
	cp   l                                           ; $7c63: $bd
	cp   c                                           ; $7c64: $b9
	sbc  c                                           ; $7c65: $99
	ld   [hl], h                                     ; $7c66: $74
	ld   sp, $3311                                   ; $7c67: $31 $11 $33
	dec  [hl]                                        ; $7c6a: $35
	sbc  e                                           ; $7c6b: $9b
	cp   [hl]                                        ; $7c6c: $be
	rst  $38                                         ; $7c6d: $ff
	xor  $db                                         ; $7c6e: $ee $db
	ld   a, b                                        ; $7c70: $78
	sbc  b                                           ; $7c71: $98
	ld   [hl], a                                     ; $7c72: $77
	ld   h, c                                        ; $7c73: $61
	ld   de, $1411                                   ; $7c74: $11 $11 $14
	adc  h                                           ; $7c77: $8c
	rst  $28                                         ; $7c78: $ef
	rst  $38                                         ; $7c79: $ff
	cp   $eb                                         ; $7c7a: $fe $eb
	halt                                             ; $7c7c: $76
	halt                                             ; $7c7d: $76
	ld   d, a                                        ; $7c7e: $57
	ld   d, c                                        ; $7c7f: $51
	ld   de, $1513                                   ; $7c80: $11 $13 $15
	rst  JumpTable                                         ; $7c83: $df
	rst  $28                                         ; $7c84: $ef
	rst  $38                                         ; $7c85: $ff
	call Call_0e8_46d7                               ; $7c86: $cd $d7 $46
	sub  [hl]                                        ; $7c89: $96
	ld   l, c                                        ; $7c8a: $69
	ld   h, c                                        ; $7c8b: $61
	ld   de, $3931                                   ; $7c8c: $11 $31 $39
	xor  $ff                                         ; $7c8f: $ee $ff
	rst  $38                                         ; $7c91: $ff
	cp   h                                           ; $7c92: $bc
	and  l                                           ; $7c93: $a5
	ld   h, a                                        ; $7c94: $67
	sub  a                                           ; $7c95: $97
	adc  c                                           ; $7c96: $89
	ld   hl, $1111                                   ; $7c97: $21 $11 $11
	ld   e, h                                        ; $7c9a: $5c
	rst  $38                                         ; $7c9b: $ff
	rst  $38                                         ; $7c9c: $ff
	ei                                               ; $7c9d: $fb
	sbc  e                                           ; $7c9e: $9b
	ld   d, h                                        ; $7c9f: $54
	ld   l, c                                        ; $7ca0: $69
	xor  b                                           ; $7ca1: $a8
	or   [hl]                                        ; $7ca2: $b6
	ld   de, $1411                                   ; $7ca3: $11 $11 $14
	adc  a                                           ; $7ca6: $8f
	rst  $38                                         ; $7ca7: $ff
	rst  $38                                         ; $7ca8: $ff
	ld   sp, hl                                      ; $7ca9: $f9
	ld   l, b                                        ; $7caa: $68
	ld   d, a                                        ; $7cab: $57
	adc  e                                           ; $7cac: $8b
	cp   c                                           ; $7cad: $b9
	sub  d                                           ; $7cae: $92
	ld   de, $1711                                   ; $7caf: $11 $11 $17
	cp   a                                           ; $7cb2: $bf
	rst  $38                                         ; $7cb3: $ff
	cp   $d6                                         ; $7cb4: $fe $d6
	ld   h, [hl]                                     ; $7cb6: $66
	ld   l, c                                        ; $7cb7: $69
	sbc  l                                           ; $7cb8: $9d
	jp   z, $1171                                    ; $7cb9: $ca $71 $11

	ld   de, $cf38                                   ; $7cbc: $11 $38 $cf
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	or   e                                           ; $7cc1: $b3
	ld   e, b                                        ; $7cc2: $58
	ld   a, b                                        ; $7cc3: $78
	adc  $a7                                         ; $7cc4: $ce $a7
	ld   d, c                                        ; $7cc6: $51
	ld   de, $3b11                                   ; $7cc7: $11 $11 $3b
	rst  $28                                         ; $7cca: $ef
	rst  $38                                         ; $7ccb: $ff
	jp   hl                                          ; $7ccc: $e9


	sub  [hl]                                        ; $7ccd: $96
	ld   b, [hl]                                     ; $7cce: $46
	call z, $c8ad                                    ; $7ccf: $cc $ad $c8
	ld   sp, $1111                                   ; $7cd2: $31 $11 $11
	ld   a, [hl+]                                    ; $7cd5: $2a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cd6: $cf
	rst  $38                                         ; $7cd7: $ff
	ld   sp, hl                                      ; $7cd8: $f9
	and  a                                           ; $7cd9: $a7
	ld   b, a                                        ; $7cda: $47
	call $c7cc                                       ; $7cdb: $cd $cc $c7
	ld   b, d                                        ; $7cde: $42
	ld   de, $1a11                                   ; $7cdf: $11 $11 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce2: $cf
	rst  $38                                         ; $7ce3: $ff
	ld   sp, hl                                      ; $7ce4: $f9
	xor  b                                           ; $7ce5: $a8
	add  hl, sp                                      ; $7ce6: $39
	call $c5bc                                       ; $7ce7: $cd $bc $c5
	ld   d, h                                        ; $7cea: $54
	ld   sp, $1211                                   ; $7ceb: $31 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cee: $cf
	rst  $38                                         ; $7cef: $ff
	cp   $8a                                         ; $7cf0: $fe $8a
	add  [hl]                                        ; $7cf2: $86
	ld   a, h                                        ; $7cf3: $7c
	db   $ec                                         ; $7cf4: $ec
	xor  b                                           ; $7cf5: $a8
	ld   h, e                                        ; $7cf6: $63
	inc  hl                                          ; $7cf7: $23
	ld   de, $7e11                                   ; $7cf8: $11 $11 $7e
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	sbc  c                                           ; $7cfd: $99
	add  $8b                                         ; $7cfe: $c6 $8b
	db   $fc                                         ; $7d00: $fc
	xor  e                                           ; $7d01: $ab
	ld   h, l                                        ; $7d02: $65
	inc  [hl]                                        ; $7d03: $34
	ld   sp, $1611                                   ; $7d04: $31 $11 $16
	rst  $38                                         ; $7d07: $ff
	rst  $38                                         ; $7d08: $ff
	ld   sp, hl                                      ; $7d09: $f9
	ld   l, d                                        ; $7d0a: $6a
	sbc  b                                           ; $7d0b: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d0c: $cf
	db   $db                                         ; $7d0d: $db
	add  l                                           ; $7d0e: $85
	ld   b, h                                        ; $7d0f: $44
	inc  sp                                          ; $7d10: $33
	ld   de, $8f13                                   ; $7d11: $11 $13 $8f
	rst  $38                                         ; $7d14: $ff
	db   $ec                                         ; $7d15: $ec
	sub  a                                           ; $7d16: $97
	ld   a, b                                        ; $7d17: $78
	xor  l                                           ; $7d18: $ad
	db   $eb                                         ; $7d19: $eb
	or   a                                           ; $7d1a: $b7
	ld   b, h                                        ; $7d1b: $44
	ld   d, h                                        ; $7d1c: $54
	ld   b, c                                        ; $7d1d: $41
	ld   de, $cf28                                   ; $7d1e: $11 $28 $cf
	rst  $38                                         ; $7d21: $ff
	cp   d                                           ; $7d22: $ba
	sub  a                                           ; $7d23: $97
	ld   e, d                                        ; $7d24: $5a
	db   $ed                                         ; $7d25: $ed
	bit  6, e                                        ; $7d26: $cb $73
	dec  [hl]                                        ; $7d28: $35
	ld   d, h                                        ; $7d29: $54
	ld   hl, $7c12                                   ; $7d2a: $21 $12 $7c
	rst  JumpTable                                         ; $7d2d: $df
	ei                                               ; $7d2e: $fb
	cp   c                                           ; $7d2f: $b9
	sub  [hl]                                        ; $7d30: $96
	cp   l                                           ; $7d31: $bd
	cp   h                                           ; $7d32: $bc
	xor  b                                           ; $7d33: $a8
	ld   d, l                                        ; $7d34: $55
	ld   d, l                                        ; $7d35: $55
	ld   b, c                                        ; $7d36: $41
	ld   de, $ed1b                                   ; $7d37: $11 $1b $ed
	rst  $38                                         ; $7d3a: $ff
	ret  c                                           ; $7d3b: $d8

	cp   d                                           ; $7d3c: $ba
	ld   e, c                                        ; $7d3d: $59
	call c, Call_0e8_74a9                            ; $7d3e: $dc $a9 $74
	ld   d, [hl]                                     ; $7d41: $56
	ld   [hl], l                                     ; $7d42: $75
	ld   de, $8c11                                   ; $7d43: $11 $11 $8c
	rst  $38                                         ; $7d46: $ff
	db   $ec                                         ; $7d47: $ec
	sbc  e                                           ; $7d48: $9b
	halt                                             ; $7d49: $76
	cp   e                                           ; $7d4a: $bb
	jp   z, Jump_0e8_45a7                            ; $7d4b: $ca $a7 $45

	ld   h, a                                        ; $7d4e: $67
	ld   h, h                                        ; $7d4f: $64
	ld   de, wResetDataBaseAnimSpriteSpecIdxUsed                                   ; $7d50: $11 $16 $c9
	rst  $38                                         ; $7d53: $ff
	jp   z, $28bb                                    ; $7d54: $ca $bb $28

	ld   [$a5cb], a                                  ; $7d57: $ea $cb $a5
	ld   b, [hl]                                     ; $7d5a: $46
	ld   h, l                                        ; $7d5b: $65
	ld   hl, $6e11                                   ; $7d5c: $21 $11 $6e
	rst  JumpTable                                         ; $7d5f: $df
	db   $fd                                         ; $7d60: $fd
	xor  d                                           ; $7d61: $aa
	and  l                                           ; $7d62: $a5
	ld   l, h                                        ; $7d63: $6c
	set  1, c                                        ; $7d64: $cb $c9
	ld   d, h                                        ; $7d66: $54
	ld   h, [hl]                                     ; $7d67: $66
	ld   h, e                                        ; $7d68: $63
	ld   de, $ae14                                   ; $7d69: $11 $14 $ae
	rst  $38                                         ; $7d6c: $ff
	db   $db                                         ; $7d6d: $db
	and  a                                           ; $7d6e: $a7
	ld   c, b                                        ; $7d6f: $48
	cp   d                                           ; $7d70: $ba
	call Call_0e8_54a6                               ; $7d71: $cd $a6 $54
	ld   b, l                                        ; $7d74: $45
	ld   b, c                                        ; $7d75: $41
	ld   de, $ff29                                   ; $7d76: $11 $29 $ff
	cp   $d9                                         ; $7d79: $fe $d9
	sub  a                                           ; $7d7b: $97
	ld   a, d                                        ; $7d7c: $7a
	cp   h                                           ; $7d7d: $bc
	cp   d                                           ; $7d7e: $ba
	ld   [hl], l                                     ; $7d7f: $75
	ld   h, l                                        ; $7d80: $65
	ld   d, e                                        ; $7d81: $53
	ld   de, $9b14                                   ; $7d82: $11 $14 $9b
	rst  $38                                         ; $7d85: $ff
	db   $fc                                         ; $7d86: $fc
	jp   z, $aa59                                    ; $7d87: $ca $59 $aa

	xor  e                                           ; $7d8a: $ab
	and  [hl]                                        ; $7d8b: $a6
	ld   h, l                                        ; $7d8c: $65
	ld   d, h                                        ; $7d8d: $54
	ld   sp, $4b11                                   ; $7d8e: $31 $11 $4b
	cp   a                                           ; $7d91: $bf
	db   $fc                                         ; $7d92: $fc
	call z, $8db5                                    ; $7d93: $cc $b5 $8d
	adc  h                                           ; $7d96: $8c
	ret  z                                           ; $7d97: $c8

	ld   h, l                                        ; $7d98: $65
	ld   [hl], l                                     ; $7d99: $75
	ld   d, e                                        ; $7d9a: $53
	ld   de, $ac12                                   ; $7d9b: $11 $12 $ac
	rst  $38                                         ; $7d9e: $ff
	db   $fd                                         ; $7d9f: $fd
	cp   e                                           ; $7da0: $bb
	ld   h, a                                        ; $7da1: $67
	cp   c                                           ; $7da2: $b9
	xor  l                                           ; $7da3: $ad
	xor  b                                           ; $7da4: $a8
	ld   [hl], l                                     ; $7da5: $75
	ld   b, e                                        ; $7da6: $43
	ld   sp, $3811                                   ; $7da7: $31 $11 $38
	cp   a                                           ; $7daa: $bf
	cp   $dd                                         ; $7dab: $fe $dd
	or   l                                           ; $7dad: $b5
	sbc  d                                           ; $7dae: $9a
	adc  d                                           ; $7daf: $8a
	jp   z, Jump_0e8_5266                            ; $7db0: $ca $66 $52

	ld   b, d                                        ; $7db3: $42
	ld   de, $aa17                                   ; $7db4: $11 $17 $aa
	rst  $38                                         ; $7db7: $ff
	call c, $3be9                                    ; $7db8: $dc $e9 $3b
	or   a                                           ; $7dbb: $b7
	call z, Call_0e8_7695                            ; $7dbc: $cc $95 $76
	inc  hl                                          ; $7dbf: $23
	ld   de, $8811                                   ; $7dc0: $11 $11 $88
	rst  JumpTable                                         ; $7dc3: $df
	cp   $ee                                         ; $7dc4: $fe $ee
	ld   [hl], h                                     ; $7dc6: $74
	cp   b                                           ; $7dc7: $b8
	sbc  e                                           ; $7dc8: $9b
	jp   z, Jump_0e8_5367                            ; $7dc9: $ca $67 $53

	ld   sp, $1911                                   ; $7dcc: $31 $11 $19
	sbc  d                                           ; $7dcf: $9a
	rst  $38                                         ; $7dd0: $ff
	rst  JumpTable                                         ; $7dd1: $df
	add  sp, $4d                                     ; $7dd2: $e8 $4d
	sub  a                                           ; $7dd4: $97
	jp   c, Jump_0e8_6497                            ; $7dd5: $da $97 $64

	inc  h                                           ; $7dd8: $24
	ld   de, $6a12                                   ; $7dd9: $11 $12 $6a
	rst  $38                                         ; $7ddc: $ff
	cp   $fc                                         ; $7ddd: $fe $fc
	ld   a, b                                        ; $7ddf: $78
	adc  b                                           ; $7de0: $88
	sbc  e                                           ; $7de1: $9b
	cp   c                                           ; $7de2: $b9
	add  [hl]                                        ; $7de3: $86
	ld   b, h                                        ; $7de4: $44
	ld   sp, $2611                                   ; $7de5: $31 $11 $26
	adc  a                                           ; $7de8: $8f
	rst  $38                                         ; $7de9: $ff
	rst  $28                                         ; $7dea: $ef
	add  $8a                                         ; $7deb: $c6 $8a
	adc  b                                           ; $7ded: $88
	res  1, b                                        ; $7dee: $cb $88
	ld   h, e                                        ; $7df0: $63
	ld   [hl+], a                                    ; $7df1: $22
	ld   de, $6b11                                   ; $7df2: $11 $11 $6b
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	db   $db                                         ; $7df7: $db
	add  [hl]                                        ; $7df8: $86
	sbc  b                                           ; $7df9: $98
	sbc  e                                           ; $7dfa: $9b
	cp   c                                           ; $7dfb: $b9
	add  a                                           ; $7dfc: $87
	ld   b, e                                        ; $7dfd: $43
	ld   hl, $3711                                   ; $7dfe: $21 $11 $37
	ld   a, a                                        ; $7e01: $7f
	rst  $38                                         ; $7e02: $ff
	rst  $38                                         ; $7e03: $ff
	or   a                                           ; $7e04: $b7
	sbc  c                                           ; $7e05: $99
	ld   a, c                                        ; $7e06: $79
	xor  c                                           ; $7e07: $a9
	sbc  b                                           ; $7e08: $98
	ld   h, h                                        ; $7e09: $64
	ld   sp, $1411                                   ; $7e0a: $31 $11 $14
	ld   a, c                                        ; $7e0d: $79
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	ei                                               ; $7e10: $fb
	ld   a, b                                        ; $7e11: $78
	add  a                                           ; $7e12: $87
	cp   e                                           ; $7e13: $bb
	xor  e                                           ; $7e14: $ab
	add  [hl]                                        ; $7e15: $86
	ld   b, e                                        ; $7e16: $43
	ld   de, $2711                                   ; $7e17: $11 $11 $27
	ld   a, a                                        ; $7e1a: $7f
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	ret  z                                           ; $7e1d: $c8

	adc  b                                           ; $7e1e: $88
	ld   l, c                                        ; $7e1f: $69
	cp   d                                           ; $7e20: $ba
	xor  c                                           ; $7e21: $a9
	ld   h, h                                        ; $7e22: $64
	ld   hl, $1111                                   ; $7e23: $21 $11 $11
	adc  d                                           ; $7e26: $8a
	rst  $38                                         ; $7e27: $ff
	rst  $38                                         ; $7e28: $ff
	db   $fc                                         ; $7e29: $fc
	sbc  c                                           ; $7e2a: $99
	sub  a                                           ; $7e2b: $97
	sbc  d                                           ; $7e2c: $9a
	sbc  c                                           ; $7e2d: $99
	add  a                                           ; $7e2e: $87
	ld   d, h                                        ; $7e2f: $54
	ld   de, $2611                                   ; $7e30: $11 $11 $26
	ld   l, a                                        ; $7e33: $6f
	rst  $38                                         ; $7e34: $ff
	rst  $38                                         ; $7e35: $ff
	jp   z, Jump_0e8_7ab8                            ; $7e36: $ca $b8 $7a

	sbc  c                                           ; $7e39: $99
	xor  c                                           ; $7e3a: $a9
	ld   h, l                                        ; $7e3b: $65
	ld   b, c                                        ; $7e3c: $41
	ld   de, $6511                                   ; $7e3d: $11 $11 $65
	rst  JumpTable                                         ; $7e40: $df
	rst  $38                                         ; $7e41: $ff
	cp   $ba                                         ; $7e42: $fe $ba
	sub  [hl]                                        ; $7e44: $96
	sbc  d                                           ; $7e45: $9a
	adc  d                                           ; $7e46: $8a
	xor  b                                           ; $7e47: $a8
	ld   d, l                                        ; $7e48: $55
	ld   sp, $1411                                   ; $7e49: $31 $11 $14
	ld   l, b                                        ; $7e4c: $68
	rst  $38                                         ; $7e4d: $ff
	rst  $38                                         ; $7e4e: $ff
	db   $fc                                         ; $7e4f: $fc
	cp   d                                           ; $7e50: $ba
	add  a                                           ; $7e51: $87
	xor  c                                           ; $7e52: $a9
	adc  c                                           ; $7e53: $89
	add  a                                           ; $7e54: $87
	ld   d, h                                        ; $7e55: $54
	ld   de, $3311                                   ; $7e56: $11 $11 $33
	ld   e, a                                        ; $7e59: $5f
	xor  $ff                                         ; $7e5a: $ee $ff
	call z, $79c7                                    ; $7e5c: $cc $c7 $79
	ld   a, c                                        ; $7e5f: $79
	sub  a                                           ; $7e60: $97
	halt                                             ; $7e61: $76
	ld   d, e                                        ; $7e62: $53
	ld   hl, $4411                                   ; $7e63: $21 $11 $44
	adc  a                                           ; $7e66: $8f
	rst  $38                                         ; $7e67: $ff
	rst  $38                                         ; $7e68: $ff
	cp   h                                           ; $7e69: $bc
	cp   b                                           ; $7e6a: $b8
	adc  c                                           ; $7e6b: $89
	adc  c                                           ; $7e6c: $89
	xor  b                                           ; $7e6d: $a8
	ld   h, [hl]                                     ; $7e6e: $66
	ld   b, c                                        ; $7e6f: $41
	ld   de, $3412                                   ; $7e70: $11 $12 $34
	adc  $ef                                         ; $7e73: $ce $ef
	cp   $dc                                         ; $7e75: $fe $dc
	sbc  b                                           ; $7e77: $98
	sub  a                                           ; $7e78: $97
	ld   a, c                                        ; $7e79: $79
	add  a                                           ; $7e7a: $87
	ld   [hl], l                                     ; $7e7b: $75
	ld   b, d                                        ; $7e7c: $42
	ld   de, $2614                                   ; $7e7d: $11 $14 $26
	xor  $ef                                         ; $7e80: $ee $ef
	db   $fc                                         ; $7e82: $fc
	call c, $9789                                    ; $7e83: $dc $89 $97
	adc  c                                           ; $7e86: $89
	ld   [hl], a                                     ; $7e87: $77
	ld   [hl], l                                     ; $7e88: $75
	ld   hl, $1211                                   ; $7e89: $21 $11 $12
	add  hl, sp                                      ; $7e8c: $39
	rst  JumpTable                                         ; $7e8d: $df
	rst  $38                                         ; $7e8e: $ff
	cp   $d9                                         ; $7e8f: $fe $d9
	sbc  b                                           ; $7e91: $98
	add  a                                           ; $7e92: $87
	adc  c                                           ; $7e93: $89
	adc  c                                           ; $7e94: $89
	ld   [hl], l                                     ; $7e95: $75
	ld   b, d                                        ; $7e96: $42
	ld   de, $1a13                                   ; $7e97: $11 $13 $1a
	call c, $ffff                                    ; $7e9a: $dc $ff $ff
	reti                                             ; $7e9d: $d9


	adc  c                                           ; $7e9e: $89
	ld   [hl], a                                     ; $7e9f: $77
	sub  a                                           ; $7ea0: $97
	ld   a, c                                        ; $7ea1: $79
	ld   h, l                                        ; $7ea2: $65
	ld   b, d                                        ; $7ea3: $42
	ld   de, $2a12                                   ; $7ea4: $11 $12 $2a
	call $ffff                                       ; $7ea7: $cd $ff $ff
	ret                                              ; $7eaa: $c9


	sbc  c                                           ; $7eab: $99
	ld   l, b                                        ; $7eac: $68
	xor  b                                           ; $7ead: $a8
	sbc  c                                           ; $7eae: $99
	ld   [hl], l                                     ; $7eaf: $75
	ld   b, d                                        ; $7eb0: $42
	ld   de, $3611                                   ; $7eb1: $11 $11 $36
	cp   l                                           ; $7eb4: $bd
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	db   $ec                                         ; $7eb7: $ec
	sbc  b                                           ; $7eb8: $98
	sub  a                                           ; $7eb9: $97
	adc  c                                           ; $7eba: $89
	adc  c                                           ; $7ebb: $89
	add  [hl]                                        ; $7ebc: $86
	ld   d, d                                        ; $7ebd: $52
	ld   de, $3411                                   ; $7ebe: $11 $11 $34
	sbc  h                                           ; $7ec1: $9c
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	db   $ec                                         ; $7ec4: $ec
	xor  b                                           ; $7ec5: $a8
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	sbc  c                                           ; $7ec8: $99
	sub  a                                           ; $7ec9: $97
	ld   h, h                                        ; $7eca: $64
	ld   sp, $2111                                   ; $7ecb: $31 $11 $21
	ld   l, d                                        ; $7ece: $6a
	adc  $ff                                         ; $7ecf: $ce $ff
	rst  $28                                         ; $7ed1: $ef
	jp   z, $98a8                                    ; $7ed2: $ca $a8 $98

	sbc  b                                           ; $7ed5: $98
	add  a                                           ; $7ed6: $87
	ld   d, h                                        ; $7ed7: $54
	ld   hl, $2311                                   ; $7ed8: $21 $11 $23
	dec  sp                                          ; $7edb: $3b
	set  7, a                                        ; $7edc: $cb $ff
	xor  $ca                                         ; $7ede: $ee $ca
	xor  d                                           ; $7ee0: $aa
	adc  c                                           ; $7ee1: $89
	xor  b                                           ; $7ee2: $a8
	sbc  c                                           ; $7ee3: $99
	ld   h, l                                        ; $7ee4: $65
	ld   d, c                                        ; $7ee5: $51
	ld   de, $4511                                   ; $7ee6: $11 $11 $45
	sbc  h                                           ; $7ee9: $9c
	rst  $28                                         ; $7eea: $ef
	rst  $38                                         ; $7eeb: $ff
	xor  $a9                                         ; $7eec: $ee $a9
	xor  c                                           ; $7eee: $a9
	adc  b                                           ; $7eef: $88
	add  a                                           ; $7ef0: $87
	ld   h, [hl]                                     ; $7ef1: $66
	ld   d, h                                        ; $7ef2: $54
	ld   [hl-], a                                    ; $7ef3: $32
	ld   de, $3b25                                   ; $7ef4: $11 $25 $3b
	cp   h                                           ; $7ef7: $bc
	rst  $38                                         ; $7ef8: $ff
	cp   $cb                                         ; $7ef9: $fe $cb
	cp   e                                           ; $7efb: $bb
	sbc  c                                           ; $7efc: $99
	and  a                                           ; $7efd: $a7
	halt                                             ; $7efe: $76
	ld   d, l                                        ; $7eff: $55
	ld   b, e                                        ; $7f00: $43
	ld   de, $3711                                   ; $7f01: $11 $11 $37
	ld   a, l                                        ; $7f04: $7d
	xor  $ff                                         ; $7f05: $ee $ff
	db   $fd                                         ; $7f07: $fd
	cp   d                                           ; $7f08: $ba
	sbc  d                                           ; $7f09: $9a
	adc  b                                           ; $7f0a: $88
	sub  a                                           ; $7f0b: $97
	ld   h, [hl]                                     ; $7f0c: $66
	ld   d, h                                        ; $7f0d: $54
	ld   [hl-], a                                    ; $7f0e: $32
	ld   de, $5a12                                   ; $7f0f: $11 $12 $5a
	xor  [hl]                                        ; $7f12: $ae
	rst  $38                                         ; $7f13: $ff
	rst  $38                                         ; $7f14: $ff
	jp   c, $88a9                                    ; $7f15: $da $a9 $88

	ld   a, b                                        ; $7f18: $78
	ld   [hl], a                                     ; $7f19: $77
	ld   [hl], a                                     ; $7f1a: $77
	ld   d, d                                        ; $7f1b: $52
	ld   hl, $3312                                   ; $7f1c: $21 $12 $33
	cp   e                                           ; $7f1f: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f20: $cf
	rst  $38                                         ; $7f21: $ff
	cp   $a9                                         ; $7f22: $fe $a9
	sub  a                                           ; $7f24: $97
	adc  c                                           ; $7f25: $89
	ld   [hl], a                                     ; $7f26: $77
	add  a                                           ; $7f27: $87
	ld   h, l                                        ; $7f28: $65
	ld   [hl-], a                                    ; $7f29: $32
	ld   de, $3a12                                   ; $7f2a: $11 $12 $3a
	cp   e                                           ; $7f2d: $bb
	rst  $38                                         ; $7f2e: $ff
	xor  $da                                         ; $7f2f: $ee $da
	adc  c                                           ; $7f31: $89
	add  a                                           ; $7f32: $87
	adc  b                                           ; $7f33: $88
	sub  a                                           ; $7f34: $97
	ld   h, [hl]                                     ; $7f35: $66
	ld   h, e                                        ; $7f36: $63
	ld   [de], a                                     ; $7f37: $12
	ld   de, $9c33                                   ; $7f38: $11 $33 $9c
	cp   a                                           ; $7f3b: $bf
	cp   $ed                                         ; $7f3c: $fe $ed
	xor  b                                           ; $7f3e: $a8
	sbc  c                                           ; $7f3f: $99
	adc  c                                           ; $7f40: $89
	sbc  b                                           ; $7f41: $98
	add  a                                           ; $7f42: $87
	ld   h, l                                        ; $7f43: $65
	ld   b, c                                        ; $7f44: $41
	ld   de, $5613                                   ; $7f45: $11 $13 $56
	cp   [hl]                                        ; $7f48: $be
	rst  $28                                         ; $7f49: $ef
	rst  $38                                         ; $7f4a: $ff
	db   $db                                         ; $7f4b: $db
	xor  c                                           ; $7f4c: $a9
	xor  b                                           ; $7f4d: $a8
	adc  b                                           ; $7f4e: $88
	add  a                                           ; $7f4f: $87
	ld   [hl], a                                     ; $7f50: $77
	ld   d, l                                        ; $7f51: $55
	ld   b, e                                        ; $7f52: $43
	ld   bc, $5a24                                   ; $7f53: $01 $24 $5a
	cp   h                                           ; $7f56: $bc
	rst  $38                                         ; $7f57: $ff
	db   $ed                                         ; $7f58: $ed
	reti                                             ; $7f59: $d9


	sbc  d                                           ; $7f5a: $9a
	sbc  b                                           ; $7f5b: $98
	adc  c                                           ; $7f5c: $89
	halt                                             ; $7f5d: $76
	ld   h, a                                        ; $7f5e: $67
	ld   h, h                                        ; $7f5f: $64
	inc  sp                                          ; $7f60: $33
	ld   de, $6b55                                   ; $7f61: $11 $55 $6b
	call c, $dcff                                    ; $7f64: $dc $ff $dc
	ret                                              ; $7f67: $c9


	adc  d                                           ; $7f68: $8a
	sbc  c                                           ; $7f69: $99
	sbc  b                                           ; $7f6a: $98
	ld   [hl], a                                     ; $7f6b: $77
	ld   h, [hl]                                     ; $7f6c: $66
	ld   d, d                                        ; $7f6d: $52
	ld   hl, $5513                                   ; $7f6e: $21 $13 $55
	xor  l                                           ; $7f71: $ad
	rst  JumpTable                                         ; $7f72: $df
	cp   $cc                                         ; $7f73: $fe $cc
	xor  b                                           ; $7f75: $a8
	adc  c                                           ; $7f76: $89
	sbc  b                                           ; $7f77: $98
	sbc  b                                           ; $7f78: $98
	halt                                             ; $7f79: $76
	halt                                             ; $7f7a: $76
	ld   b, e                                        ; $7f7b: $43
	ld   hl, $4814                                   ; $7f7c: $21 $14 $48
	db   $dd                                         ; $7f7f: $dd
	rst  $28                                         ; $7f80: $ef
	ld   a, [$98ca]                                  ; $7f81: $fa $ca $98
	sbc  e                                           ; $7f84: $9b
	ld   a, b                                        ; $7f85: $78
	add  a                                           ; $7f86: $87
	ld   h, [hl]                                     ; $7f87: $66
	ld   [hl], l                                     ; $7f88: $75
	inc  sp                                          ; $7f89: $33
	ld   de, $7e53                                   ; $7f8a: $11 $53 $7e
	cp   l                                           ; $7f8d: $bd
	rst  $38                                         ; $7f8e: $ff
	jp   z, $89ba                                    ; $7f8f: $ca $ba $89

	xor  d                                           ; $7f92: $aa
	add  a                                           ; $7f93: $87
	add  a                                           ; $7f94: $87
	ld   h, [hl]                                     ; $7f95: $66
	ld   h, l                                        ; $7f96: $65
	ld   sp, $5611                                   ; $7f97: $31 $11 $56
	xor  h                                           ; $7f9a: $ac
	rst  JumpTable                                         ; $7f9b: $df
	cp   $cb                                         ; $7f9c: $fe $cb
	xor  c                                           ; $7f9e: $a9
	sbc  d                                           ; $7f9f: $9a
	xor  c                                           ; $7fa0: $a9
	ld   [hl], a                                     ; $7fa1: $77
	halt                                             ; $7fa2: $76
	ld   [hl], a                                     ; $7fa3: $77
	ld   d, e                                        ; $7fa4: $53
	ld   sp, $3902                                   ; $7fa5: $31 $02 $39
	set  3, a                                        ; $7fa8: $cb $df
	ld   a, [$99ac]                                  ; $7faa: $fa $ac $99
	sbc  e                                           ; $7fad: $9b
	sub  a                                           ; $7fae: $97
	halt                                             ; $7faf: $76
	ld   h, l                                        ; $7fb0: $65
	ld   [hl], a                                     ; $7fb1: $77
	ld   b, h                                        ; $7fb2: $44
	ld   de, $7815                                   ; $7fb3: $11 $15 $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fb6: $cf
	db   $dd                                         ; $7fb7: $dd
	db   $ec                                         ; $7fb8: $ec
	sbc  b                                           ; $7fb9: $98
	cp   c                                           ; $7fba: $b9
	adc  d                                           ; $7fbb: $8a
	sbc  b                                           ; $7fbc: $98
	ld   h, [hl]                                     ; $7fbd: $66
	halt                                             ; $7fbe: $76
	halt                                             ; $7fbf: $76
	ld   [hl-], a                                    ; $7fc0: $32
	ld   de, $b838                                   ; $7fc1: $11 $38 $b8
	rst  JumpTable                                         ; $7fc4: $df
	db   $ed                                         ; $7fc5: $ed
	cp   e                                           ; $7fc6: $bb
	sbc  b                                           ; $7fc7: $98
	cp   c                                           ; $7fc8: $b9
	sbc  b                                           ; $7fc9: $98
	halt                                             ; $7fca: $76
	ld   d, a                                        ; $7fcb: $57
	sub  [hl]                                        ; $7fcc: $96
	ld   [hl], l                                     ; $7fcd: $75
	ld   sp, $3812                                   ; $7fce: $31 $12 $38
	xor  h                                           ; $7fd1: $ac
	db   $fd                                         ; $7fd2: $fd
	db   $fd                                         ; $7fd3: $fd
	xor  c                                           ; $7fd4: $a9
	adc  d                                           ; $7fd5: $8a
	adc  d                                           ; $7fd6: $8a
	cp   b                                           ; $7fd7: $b8
	ld   [hl], l                                     ; $7fd8: $75
	ld   h, [hl]                                     ; $7fd9: $66
	halt                                             ; $7fda: $76
	ld   h, h                                        ; $7fdb: $64
	ld   de, $7b13                                   ; $7fdc: $11 $13 $7b
	cp   l                                           ; $7fdf: $bd
	cp   $e9                                         ; $7fe0: $fe $e9
	sbc  b                                           ; $7fe2: $98
	adc  c                                           ; $7fe3: $89
	xor  e                                           ; $7fe4: $ab
	sub  a                                           ; $7fe5: $97
	ld   d, l                                        ; $7fe6: $55
	adc  c                                           ; $7fe7: $89
	sub  a                                           ; $7fe8: $97
	ld   b, d                                        ; $7fe9: $42
	ld   de, $7b25                                   ; $7fea: $11 $25 $7b
	rst  JumpTable                                         ; $7fed: $df
	cp   $b9                                         ; $7fee: $fe $b9
	sbc  c                                           ; $7ff0: $99
	cp   c                                           ; $7ff1: $b9
	xor  c                                           ; $7ff2: $a9
	ld   h, [hl]                                     ; $7ff3: $66
	ld   d, a                                        ; $7ff4: $57
	adc  c                                           ; $7ff5: $89
	add  [hl]                                        ; $7ff6: $86
	ld   b, c                                        ; $7ff7: $41
	ld   de, $bc38                                   ; $7ff8: $11 $38 $bc
	rst  JumpTable                                         ; $7ffb: $df
	db   $fd                                         ; $7ffc: $fd
	add  a                                           ; $7ffd: $87
	xor  e                                           ; $7ffe: $ab

Call_0e8_7fff:
	db   $ca                                         ; $7fff: $ca
