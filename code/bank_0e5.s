; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0e5", ROMX[$4000], BANK[$e5]

	xor  d                                           ; $4000: $aa
	xor  e                                           ; $4001: $ab
	xor  c                                           ; $4002: $a9
	sbc  c                                           ; $4003: $99
	ld   [hl], a                                     ; $4004: $77
	ld   [hl], l                                     ; $4005: $75
	ld   d, [hl]                                     ; $4006: $56
	ld   d, [hl]                                     ; $4007: $56
	ld   a, b                                        ; $4008: $78
	sbc  c                                           ; $4009: $99
	xor  c                                           ; $400a: $a9
	xor  d                                           ; $400b: $aa
	sbc  d                                           ; $400c: $9a
	sbc  b                                           ; $400d: $98
	ld   [hl], a                                     ; $400e: $77
	ld   h, l                                        ; $400f: $65
	ld   h, [hl]                                     ; $4010: $66
	ld   h, a                                        ; $4011: $67
	adc  b                                           ; $4012: $88
	sbc  d                                           ; $4013: $9a
	xor  c                                           ; $4014: $a9
	xor  d                                           ; $4015: $aa
	sbc  d                                           ; $4016: $9a
	add  [hl]                                        ; $4017: $86
	ld   [hl], a                                     ; $4018: $77
	ld   d, [hl]                                     ; $4019: $56
	halt                                             ; $401a: $76
	ld   l, b                                        ; $401b: $68
	adc  c                                           ; $401c: $89
	xor  d                                           ; $401d: $aa
	sbc  d                                           ; $401e: $9a
	sbc  b                                           ; $401f: $98
	sbc  d                                           ; $4020: $9a
	halt                                             ; $4021: $76
	add  l                                           ; $4022: $85
	ld   d, a                                        ; $4023: $57
	ld   h, [hl]                                     ; $4024: $66
	adc  b                                           ; $4025: $88
	adc  c                                           ; $4026: $89
	xor  c                                           ; $4027: $a9
	sbc  d                                           ; $4028: $9a
	sbc  c                                           ; $4029: $99
	xor  b                                           ; $402a: $a8
	ld   d, a                                        ; $402b: $57
	ld   h, h                                        ; $402c: $64
	ld   [hl], a                                     ; $402d: $77
	ld   h, a                                        ; $402e: $67
	sbc  c                                           ; $402f: $99
	adc  d                                           ; $4030: $8a
	xor  c                                           ; $4031: $a9
	xor  c                                           ; $4032: $a9
	ld   a, b                                        ; $4033: $78
	sub  [hl]                                        ; $4034: $96
	ld   l, b                                        ; $4035: $68
	ld   b, l                                        ; $4036: $45
	sub  a                                           ; $4037: $97
	ld   l, d                                        ; $4038: $6a
	xor  b                                           ; $4039: $a8
	cp   e                                           ; $403a: $bb
	sbc  c                                           ; $403b: $99
	sub  a                                           ; $403c: $97
	ld   a, c                                        ; $403d: $79
	ld   [hl], h                                     ; $403e: $74
	add  a                                           ; $403f: $87
	scf                                              ; $4040: $37
	add  [hl]                                        ; $4041: $86
	adc  e                                           ; $4042: $8b
	sbc  c                                           ; $4043: $99
	ret                                              ; $4044: $c9


	adc  d                                           ; $4045: $8a
	add  [hl]                                        ; $4046: $86
	sbc  b                                           ; $4047: $98
	ld   b, l                                        ; $4048: $45
	add  e                                           ; $4049: $83
	ld   e, c                                        ; $404a: $59
	ld   [hl], a                                     ; $404b: $77
	cp   e                                           ; $404c: $bb
	ld   a, h                                        ; $404d: $7c
	cp   b                                           ; $404e: $b8
	xor  c                                           ; $404f: $a9
	ld   d, [hl]                                     ; $4050: $56
	sub  l                                           ; $4051: $95
	jr   c, jr_0e5_40a7                              ; $4052: $38 $53

	sbc  c                                           ; $4054: $99
	ld   a, d                                        ; $4055: $7a
	reti                                             ; $4056: $d9


	cp   [hl]                                        ; $4057: $be
	adc  c                                           ; $4058: $89
	and  l                                           ; $4059: $a5
	ld   c, b                                        ; $405a: $48
	ld   [hl], c                                     ; $405b: $71
	ld   a, b                                        ; $405c: $78
	rla                                              ; $405d: $17
	and  a                                           ; $405e: $a7
	adc  [hl]                                        ; $405f: $8e
	cp   b                                           ; $4060: $b8
	ld   a, [$628a]                                  ; $4061: $fa $8a $62
	ld   a, c                                        ; $4064: $79
	inc  d                                           ; $4065: $14
	and  d                                           ; $4066: $a2
	ld   e, e                                        ; $4067: $5b
	sbc  b                                           ; $4068: $98
	db   $ec                                         ; $4069: $ec
	adc  a                                           ; $406a: $8f
	rst  ToBoot                                         ; $406b: $c7
	and  a                                           ; $406c: $a7
	inc  h                                           ; $406d: $24
	add  d                                           ; $406e: $82
	ld   a, [hl+]                                    ; $406f: $2a
	inc  sp                                          ; $4070: $33
	ret                                              ; $4071: $c9


	adc  l                                           ; $4072: $8d
	ld   hl, sp-$23                                  ; $4073: $f8 $dd
	ld   a, d                                        ; $4075: $7a
	sub  c                                           ; $4076: $91
	jr   c, jr_0e5_409a                              ; $4077: $38 $21

	or   h                                           ; $4079: $b4
	dec  l                                           ; $407a: $2d
	cp   b                                           ; $407b: $b8
	rst  JumpTable                                         ; $407c: $df
	sbc  h                                           ; $407d: $9c
	and  $98                                         ; $407e: $e6 $98
	ld   de, $1b83                                   ; $4080: $11 $83 $1b
	ld   d, d                                        ; $4083: $52
	res  3, [hl]                                     ; $4084: $cb $9e
	ld   sp, hl                                      ; $4086: $f9
	rst  JumpTable                                         ; $4087: $df
	ld   l, d                                        ; $4088: $6a
	sub  c                                           ; $4089: $91
	ld   a, [de]                                     ; $408a: $1a
	ld   de, $3ec3                                   ; $408b: $11 $c3 $3e
	cp   c                                           ; $408e: $b9
	rst  $28                                         ; $408f: $ef
	ld   a, [hl]                                     ; $4090: $7e
	sub  $a7                                         ; $4091: $d6 $a7
	ld   [de], a                                     ; $4093: $12
	and  c                                           ; $4094: $a1
	inc  e                                           ; $4095: $1c
	dec  d                                           ; $4096: $15
	db   $eb                                         ; $4097: $eb
	adc  a                                           ; $4098: $8f
	rst  $30                                         ; $4099: $f7

jr_0e5_409a:
	db   $fc                                         ; $409a: $fc
	ld   e, d                                        ; $409b: $5a
	ld   d, c                                        ; $409c: $51
	add  hl, sp                                      ; $409d: $39
	inc  d                                           ; $409e: $14
	pop  bc                                          ; $409f: $c1
	ld   a, [hl]                                     ; $40a0: $7e
	xor  d                                           ; $40a1: $aa
	db   $fd                                         ; $40a2: $fd
	adc  a                                           ; $40a3: $8f
	sub  [hl]                                        ; $40a4: $96
	and  e                                           ; $40a5: $a3
	dec  d                                           ; $40a6: $15

jr_0e5_40a7:
	ld   [hl], c                                     ; $40a7: $71
	sbc  c                                           ; $40a8: $99
	dec  de                                          ; $40a9: $1b
	ld   [$babf], a                                  ; $40aa: $ea $bf $ba
	rst  $30                                         ; $40ad: $f7
	sbc  b                                           ; $40ae: $98
	ld   de, $1b74                                   ; $40af: $11 $74 $1b
	ld   h, c                                        ; $40b2: $61
	db   $ed                                         ; $40b3: $ed
	xor  l                                           ; $40b4: $ad
	ld   sp, hl                                      ; $40b5: $f9
	cp   a                                           ; $40b6: $bf
	ld   e, c                                        ; $40b7: $59
	ld   h, c                                        ; $40b8: $61
	jr   jr_0e5_40cc                                 ; $40b9: $18 $11

	ldh  [c], a                                      ; $40bb: $e2
	ld   e, a                                        ; $40bc: $5f
	cp   d                                           ; $40bd: $ba
	rst  $28                                         ; $40be: $ef
	ld   a, a                                        ; $40bf: $7f
	add  $a4                                         ; $40c0: $c6 $a4
	ld   de, $3d81                                   ; $40c2: $11 $81 $3d
	add  hl, de                                      ; $40c5: $19
	db   $eb                                         ; $40c6: $eb
	cp   a                                           ; $40c7: $bf
	rst  $30                                         ; $40c8: $f7
	ld   a, [$2179]                                  ; $40c9: $fa $79 $21

jr_0e5_40cc:
	ld   c, b                                        ; $40cc: $48
	add  hl, de                                      ; $40cd: $19
	and  c                                           ; $40ce: $a1
	call $fccb                                       ; $40cf: $cd $cb $fc
	sbc  a                                           ; $40d2: $9f
	ld   l, c                                        ; $40d3: $69
	ld   [hl], c                                     ; $40d4: $71
	ld   d, $51                                      ; $40d5: $16 $51
	sub  $3e                                         ; $40d7: $d6 $3e
	cp   h                                           ; $40d9: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40da: $cf
	sbc  e                                           ; $40db: $9b
	push hl                                          ; $40dc: $e5
	and  l                                           ; $40dd: $a5
	ld   de, $1e91                                   ; $40de: $11 $91 $1e
	rla                                              ; $40e1: $17
	db   $ec                                         ; $40e2: $ec
	cp   l                                           ; $40e3: $bd
	rst  $30                                         ; $40e4: $f7
	db   $eb                                         ; $40e5: $eb
	ld   l, d                                        ; $40e6: $6a
	ld   sp, $1419                                   ; $40e7: $31 $19 $14
	pop  hl                                          ; $40ea: $e1
	cp   h                                           ; $40eb: $bc
	set  7, [hl]                                     ; $40ec: $cb $fe
	ld   l, a                                        ; $40ee: $6f
	ld   [hl], a                                     ; $40ef: $77
	sub  d                                           ; $40f0: $92
	inc  de                                          ; $40f1: $13
	add  c                                           ; $40f2: $81
	sbc  d                                           ; $40f3: $9a
	ld   e, $cd                                      ; $40f4: $1e $cd
	cp   a                                           ; $40f6: $bf
	ret  z                                           ; $40f7: $c8

	push af                                          ; $40f8: $f5
	sub  a                                           ; $40f9: $97
	ld   hl, $1c56                                   ; $40fa: $21 $56 $1c
	ld   h, e                                        ; $40fd: $63
	ld   [$f9cb], a                                  ; $40fe: $ea $cb $f9
	cp   a                                           ; $4101: $bf
	ld   c, e                                        ; $4102: $4b
	ld   d, d                                        ; $4103: $52
	rla                                              ; $4104: $17
	ld   sp, $6de2                                   ; $4105: $31 $e2 $6d
	cp   h                                           ; $4108: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4109: $cf
	ld   a, [hl]                                     ; $410a: $7e
	push de                                          ; $410b: $d5
	or   h                                           ; $410c: $b4
	ld   hl, $1e91                                   ; $410d: $21 $91 $1e
	add  hl, de                                      ; $4110: $19
	cp   e                                           ; $4111: $bb
	call $f9f6                                       ; $4112: $cd $f6 $f9
	ld   a, d                                        ; $4115: $7a
	ld   sp, $1419                                   ; $4116: $31 $19 $14
	pop  bc                                          ; $4119: $c1
	cp   e                                           ; $411a: $bb
	jp   z, Jump_0e5_7ffe                            ; $411b: $ca $fe $7f

	ld   a, c                                        ; $411e: $79
	add  e                                           ; $411f: $83
	ld   bc, $7aa1                                   ; $4120: $01 $a1 $7a
	dec  de                                          ; $4123: $1b
	xor  l                                           ; $4124: $ad
	xor  a                                           ; $4125: $af
	ret                                              ; $4126: $c9


	or   $b7                                         ; $4127: $f6 $b7
	ld   b, c                                        ; $4129: $41
	jr   c, jr_0e5_4145                              ; $412a: $38 $19

	ld   [hl], e                                     ; $412c: $73
	cp   c                                           ; $412d: $b9
	reti                                             ; $412e: $d9


	db   $fc                                         ; $412f: $fc
	sbc  a                                           ; $4130: $9f
	ld   l, e                                        ; $4131: $6b
	ld   h, l                                        ; $4132: $65
	inc  de                                          ; $4133: $13
	add  c                                           ; $4134: $81
	and  [hl]                                        ; $4135: $a6
	ld   c, d                                        ; $4136: $4a
	cp   l                                           ; $4137: $bd
	adc  a                                           ; $4138: $8f
	cp   d                                           ; $4139: $ba
	rst  $30                                         ; $413a: $f7
	or   [hl]                                        ; $413b: $b6
	ld   d, c                                        ; $413c: $51
	ld   d, [hl]                                     ; $413d: $56
	ld   a, [de]                                     ; $413e: $1a
	ld   h, h                                        ; $413f: $64
	sbc  e                                           ; $4140: $9b
	ret  c                                           ; $4141: $d8

	ld   a, [$7baf]                                  ; $4142: $fa $af $7b

jr_0e5_4145:
	ld   [hl], l                                     ; $4145: $75
	ld   d, $51                                      ; $4146: $16 $51
	and  l                                           ; $4148: $a5
	ld   e, c                                        ; $4149: $59
	call z, $9caf                                    ; $414a: $cc $af $9c
	rst  $30                                         ; $414d: $f7
	and  a                                           ; $414e: $a7
	ld   b, c                                        ; $414f: $41
	ld   h, l                                        ; $4150: $65
	add  hl, de                                      ; $4151: $19
	ld   h, l                                        ; $4152: $65
	adc  e                                           ; $4153: $8b
	ret                                              ; $4154: $c9


	ld   a, [$7abf]                                  ; $4155: $fa $bf $7a
	ld   [hl], l                                     ; $4158: $75
	dec  d                                           ; $4159: $15
	ld   d, c                                        ; $415a: $51
	halt                                             ; $415b: $76
	ld   e, b                                        ; $415c: $58
	xor  e                                           ; $415d: $ab
	xor  a                                           ; $415e: $af
	cp   d                                           ; $415f: $ba
	add  sp, -$48                                    ; $4160: $e8 $b8
	ld   d, c                                        ; $4162: $51
	ld   b, [hl]                                     ; $4163: $46

Jump_0e5_4164:
	ld   d, $74                                      ; $4164: $16 $74
	ld   a, d                                        ; $4166: $7a
	jp   z, $aefc                                    ; $4167: $ca $fc $ae

	adc  e                                           ; $416a: $8b
	sub  l                                           ; $416b: $95
	inc  d                                           ; $416c: $14
	ld   h, c                                        ; $416d: $61
	ld   d, a                                        ; $416e: $57
	ld   b, a                                        ; $416f: $47
	xor  h                                           ; $4170: $ac
	xor  l                                           ; $4171: $ad
	reti                                             ; $4172: $d9


	add  sp, -$48                                    ; $4173: $e8 $b8
	ld   h, d                                        ; $4175: $62
	ld   [hl], $14                                   ; $4176: $36 $14
	ld   [hl], h                                     ; $4178: $74
	ld   l, d                                        ; $4179: $6a
	xor  c                                           ; $417a: $a9
	db   $dd                                         ; $417b: $dd
	sbc  a                                           ; $417c: $9f
	xor  e                                           ; $417d: $ab
	sub  [hl]                                        ; $417e: $96
	ld   [hl-], a                                    ; $417f: $32
	ld   [hl], d                                     ; $4180: $72
	scf                                              ; $4181: $37
	ld   b, [hl]                                     ; $4182: $46
	sbc  c                                           ; $4183: $99
	cp   e                                           ; $4184: $bb
	ld   [$a9dc], a                                  ; $4185: $ea $dc $a9
	ld   [hl], h                                     ; $4188: $74
	ld   [hl], $43                                   ; $4189: $36 $43
	ld   h, l                                        ; $418b: $65
	ld   e, c                                        ; $418c: $59
	sbc  e                                           ; $418d: $9b
	xor  a                                           ; $418e: $af
	xor  h                                           ; $418f: $ac
	reti                                             ; $4190: $d9


	cp   b                                           ; $4191: $b8
	ld   d, e                                        ; $4192: $53
	ld   d, l                                        ; $4193: $55
	ld   h, $64                                      ; $4194: $26 $64
	adc  b                                           ; $4196: $88
	rst  ToBoot                                         ; $4197: $c7
	ld   [$8cad], a                                  ; $4198: $ea $ad $8c
	add  a                                           ; $419b: $87
	ld   h, $54                                      ; $419c: $26 $54
	ld   b, a                                        ; $419e: $47
	ld   b, a                                        ; $419f: $47
	adc  d                                           ; $41a0: $8a
	sbc  e                                           ; $41a1: $9b
	ret  c                                           ; $41a2: $d8

	jp   hl                                          ; $41a3: $e9


	cp   c                                           ; $41a4: $b9
	add  l                                           ; $41a5: $85
	ld   b, [hl]                                     ; $41a6: $46
	ld   d, h                                        ; $41a7: $54
	ld   h, [hl]                                     ; $41a8: $66
	ld   d, a                                        ; $41a9: $57
	adc  e                                           ; $41aa: $8b
	ld   a, a                                        ; $41ab: $7f
	adc  l                                           ; $41ac: $8d
	ret                                              ; $41ad: $c9


	xor  b                                           ; $41ae: $a8
	ld   [hl], h                                     ; $41af: $74
	ld   h, l                                        ; $41b0: $65
	ld   d, h                                        ; $41b1: $54
	ld   [hl], h                                     ; $41b2: $74
	halt                                             ; $41b3: $76
	or   [hl]                                        ; $41b4: $b6
	call c, $8c9e                                    ; $41b5: $dc $9e $8c
	adc  d                                           ; $41b8: $8a
	ld   d, [hl]                                     ; $41b9: $56
	ld   d, a                                        ; $41ba: $57
	ld   b, [hl]                                     ; $41bb: $46
	ld   h, h                                        ; $41bc: $64
	ld   a, b                                        ; $41bd: $78
	and  [hl]                                        ; $41be: $a6
	ret  c                                           ; $41bf: $d8

	jp   z, $a9ba                                    ; $41c0: $ca $ba $a9

	ld   h, a                                        ; $41c3: $67
	ld   l, b                                        ; $41c4: $68
	jr   c, jr_0e5_420d                              ; $41c5: $38 $46

	ld   l, c                                        ; $41c7: $69
	ld   a, b                                        ; $41c8: $78
	rst  ToBoot                                         ; $41c9: $c7
	jp   z, $b8b9                                    ; $41ca: $ca $b9 $b8

	add  a                                           ; $41cd: $87
	ld   [hl], a                                     ; $41ce: $77
	ld   c, b                                        ; $41cf: $48
	ld   b, [hl]                                     ; $41d0: $46
	ld   e, c                                        ; $41d1: $59
	ld   e, d                                        ; $41d2: $5a
	xor  b                                           ; $41d3: $a8
	jp   z, $c7ca                                    ; $41d4: $ca $ca $c7

	sub  a                                           ; $41d7: $97
	ld   a, b                                        ; $41d8: $78
	ld   c, b                                        ; $41d9: $48
	ld   b, [hl]                                     ; $41da: $46
	ld   e, b                                        ; $41db: $58
	ld   l, c                                        ; $41dc: $69
	sbc  b                                           ; $41dd: $98
	jp   z, $b9ba                                    ; $41de: $ca $ba $b9

	sub  a                                           ; $41e1: $97
	ld   a, c                                        ; $41e2: $79
	ld   d, a                                        ; $41e3: $57
	ld   d, l                                        ; $41e4: $55
	ld   d, a                                        ; $41e5: $57
	ld   h, a                                        ; $41e6: $67
	sbc  b                                           ; $41e7: $98
	xor  d                                           ; $41e8: $aa
	cp   c                                           ; $41e9: $b9
	jp   z, $79a8                                    ; $41ea: $ca $a8 $79

	ld   d, a                                        ; $41ed: $57
	ld   h, l                                        ; $41ee: $65
	ld   d, [hl]                                     ; $41ef: $56
	ld   h, [hl]                                     ; $41f0: $66
	sub  a                                           ; $41f1: $97
	sbc  d                                           ; $41f2: $9a
	cp   d                                           ; $41f3: $ba
	cp   d                                           ; $41f4: $ba
	xor  c                                           ; $41f5: $a9
	ld   a, b                                        ; $41f6: $78
	halt                                             ; $41f7: $76
	ld   h, l                                        ; $41f8: $65
	ld   d, [hl]                                     ; $41f9: $56
	ld   h, [hl]                                     ; $41fa: $66
	ld   a, b                                        ; $41fb: $78
	sbc  c                                           ; $41fc: $99
	cp   e                                           ; $41fd: $bb
	cp   e                                           ; $41fe: $bb
	xor  c                                           ; $41ff: $a9
	sbc  c                                           ; $4200: $99
	add  [hl]                                        ; $4201: $86
	ld   h, [hl]                                     ; $4202: $66
	ld   d, l                                        ; $4203: $55
	ld   h, l                                        ; $4204: $65
	ld   [hl], a                                     ; $4205: $77
	sbc  d                                           ; $4206: $9a
	xor  d                                           ; $4207: $aa
	cp   h                                           ; $4208: $bc
	xor  d                                           ; $4209: $aa
	sbc  b                                           ; $420a: $98
	sub  a                                           ; $420b: $97
	ld   h, [hl]                                     ; $420c: $66

jr_0e5_420d:
	ld   d, l                                        ; $420d: $55
	ld   h, [hl]                                     ; $420e: $66
	ld   h, a                                        ; $420f: $67
	adc  c                                           ; $4210: $89
	xor  d                                           ; $4211: $aa
	cp   d                                           ; $4212: $ba
	cp   d                                           ; $4213: $ba
	sbc  c                                           ; $4214: $99
	adc  b                                           ; $4215: $88
	ld   h, [hl]                                     ; $4216: $66
	ld   h, l                                        ; $4217: $65
	ld   h, [hl]                                     ; $4218: $66
	ld   h, a                                        ; $4219: $67
	adc  b                                           ; $421a: $88
	xor  d                                           ; $421b: $aa
	cp   d                                           ; $421c: $ba
	cp   e                                           ; $421d: $bb
	xor  c                                           ; $421e: $a9
	adc  b                                           ; $421f: $88
	halt                                             ; $4220: $76
	ld   h, l                                        ; $4221: $65
	ld   d, [hl]                                     ; $4222: $56
	ld   d, [hl]                                     ; $4223: $56
	ld   a, b                                        ; $4224: $78
	sbc  c                                           ; $4225: $99
	cp   e                                           ; $4226: $bb
	cp   d                                           ; $4227: $ba
	xor  c                                           ; $4228: $a9
	adc  b                                           ; $4229: $88
	halt                                             ; $422a: $76
	ld   h, [hl]                                     ; $422b: $66
	ld   d, l                                        ; $422c: $55
	ld   h, [hl]                                     ; $422d: $66
	ld   a, b                                        ; $422e: $78
	adc  c                                           ; $422f: $89
	xor  d                                           ; $4230: $aa
	xor  e                                           ; $4231: $ab
	cp   d                                           ; $4232: $ba
	sbc  b                                           ; $4233: $98
	add  [hl]                                        ; $4234: $86
	ld   h, [hl]                                     ; $4235: $66
	ld   d, l                                        ; $4236: $55
	ld   h, l                                        ; $4237: $65
	ld   [hl], a                                     ; $4238: $77
	sbc  d                                           ; $4239: $9a
	xor  d                                           ; $423a: $aa
	xor  e                                           ; $423b: $ab
	xor  d                                           ; $423c: $aa
	xor  c                                           ; $423d: $a9
	add  a                                           ; $423e: $87
	ld   h, [hl]                                     ; $423f: $66
	ld   d, l                                        ; $4240: $55
	ld   h, l                                        ; $4241: $65
	ld   h, a                                        ; $4242: $67
	adc  c                                           ; $4243: $89
	xor  e                                           ; $4244: $ab
	xor  e                                           ; $4245: $ab
	cp   e                                           ; $4246: $bb
	xor  b                                           ; $4247: $a8
	add  a                                           ; $4248: $87
	ld   h, [hl]                                     ; $4249: $66
	ld   h, l                                        ; $424a: $65
	ld   d, l                                        ; $424b: $55
	ld   d, a                                        ; $424c: $57
	ld   a, b                                        ; $424d: $78
	sbc  d                                           ; $424e: $9a
	xor  d                                           ; $424f: $aa
	cp   d                                           ; $4250: $ba
	xor  c                                           ; $4251: $a9
	adc  b                                           ; $4252: $88
	ld   h, [hl]                                     ; $4253: $66
	ld   h, l                                        ; $4254: $65
	ld   d, [hl]                                     ; $4255: $56
	ld   d, [hl]                                     ; $4256: $56
	ld   a, c                                        ; $4257: $79
	xor  d                                           ; $4258: $aa
	xor  e                                           ; $4259: $ab
	cp   e                                           ; $425a: $bb
	xor  d                                           ; $425b: $aa
	adc  b                                           ; $425c: $88
	ld   [hl], l                                     ; $425d: $75
	ld   h, l                                        ; $425e: $65
	ld   b, l                                        ; $425f: $45
	ld   d, [hl]                                     ; $4260: $56
	ld   a, b                                        ; $4261: $78
	sbc  d                                           ; $4262: $9a
	xor  e                                           ; $4263: $ab
	cp   e                                           ; $4264: $bb
	cp   d                                           ; $4265: $ba
	adc  b                                           ; $4266: $88
	halt                                             ; $4267: $76
	ld   h, l                                        ; $4268: $65
	ld   b, l                                        ; $4269: $45
	ld   d, l                                        ; $426a: $55
	ld   a, b                                        ; $426b: $78
	sbc  d                                           ; $426c: $9a
	xor  e                                           ; $426d: $ab
	cp   e                                           ; $426e: $bb
	xor  d                                           ; $426f: $aa
	sbc  b                                           ; $4270: $98
	halt                                             ; $4271: $76
	ld   d, [hl]                                     ; $4272: $56
	ld   b, l                                        ; $4273: $45
	ld   d, l                                        ; $4274: $55
	ld   h, a                                        ; $4275: $67
	adc  c                                           ; $4276: $89

Jump_0e5_4277:
	cp   e                                           ; $4277: $bb
	cp   e                                           ; $4278: $bb
	cp   d                                           ; $4279: $ba
	xor  b                                           ; $427a: $a8
	add  [hl]                                        ; $427b: $86
	ld   d, [hl]                                     ; $427c: $56
	ld   d, l                                        ; $427d: $55
	ld   d, l                                        ; $427e: $55
	ld   h, a                                        ; $427f: $67
	sbc  c                                           ; $4280: $99
	cp   e                                           ; $4281: $bb
	cp   e                                           ; $4282: $bb
	cp   e                                           ; $4283: $bb
	sbc  c                                           ; $4284: $99
	add  [hl]                                        ; $4285: $86
	ld   d, l                                        ; $4286: $55
	ld   d, h                                        ; $4287: $54
	ld   d, l                                        ; $4288: $55
	ld   h, a                                        ; $4289: $67
	adc  d                                           ; $428a: $8a
	xor  e                                           ; $428b: $ab
	cp   e                                           ; $428c: $bb
	cp   e                                           ; $428d: $bb
	xor  b                                           ; $428e: $a8
	add  a                                           ; $428f: $87
	ld   d, [hl]                                     ; $4290: $56
	ld   d, h                                        ; $4291: $54
	ld   d, l                                        ; $4292: $55
	ld   d, a                                        ; $4293: $57
	adc  c                                           ; $4294: $89
	xor  d                                           ; $4295: $aa
	cp   e                                           ; $4296: $bb
	cp   d                                           ; $4297: $ba
	xor  c                                           ; $4298: $a9
	add  a                                           ; $4299: $87
	ld   d, l                                        ; $429a: $55
	ld   d, h                                        ; $429b: $54
	ld   d, l                                        ; $429c: $55
	ld   d, [hl]                                     ; $429d: $56
	adc  c                                           ; $429e: $89
	xor  d                                           ; $429f: $aa
	cp   e                                           ; $42a0: $bb
	cp   e                                           ; $42a1: $bb
	xor  c                                           ; $42a2: $a9
	adc  b                                           ; $42a3: $88
	ld   h, l                                        ; $42a4: $65
	ld   d, h                                        ; $42a5: $54
	ld   d, l                                        ; $42a6: $55

Call_0e5_42a7:
	ld   d, [hl]                                     ; $42a7: $56
	ld   a, b                                        ; $42a8: $78
	sbc  d                                           ; $42a9: $9a
	cp   e                                           ; $42aa: $bb
	cp   e                                           ; $42ab: $bb
	cp   d                                           ; $42ac: $ba
	sbc  b                                           ; $42ad: $98
	ld   h, l                                        ; $42ae: $65
	ld   d, h                                        ; $42af: $54
	ld   b, l                                        ; $42b0: $45
	ld   d, [hl]                                     ; $42b1: $56
	ld   a, c                                        ; $42b2: $79
	xor  e                                           ; $42b3: $ab
	cp   h                                           ; $42b4: $bc
	cp   e                                           ; $42b5: $bb
	xor  c                                           ; $42b6: $a9
	sbc  b                                           ; $42b7: $98
	ld   h, l                                        ; $42b8: $65
	ld   d, l                                        ; $42b9: $55
	ld   b, l                                        ; $42ba: $45
	ld   d, [hl]                                     ; $42bb: $56
	ld   a, b                                        ; $42bc: $78
	xor  d                                           ; $42bd: $aa
	cp   h                                           ; $42be: $bc
	cp   e                                           ; $42bf: $bb
	xor  d                                           ; $42c0: $aa
	adc  c                                           ; $42c1: $89
	ld   [hl], l                                     ; $42c2: $75
	ld   d, l                                        ; $42c3: $55
	ld   b, l                                        ; $42c4: $45
	ld   d, l                                        ; $42c5: $55
	ld   a, b                                        ; $42c6: $78
	sbc  d                                           ; $42c7: $9a
	cp   h                                           ; $42c8: $bc
	res  7, d                                        ; $42c9: $cb $ba
	adc  c                                           ; $42cb: $89
	ld   [hl], l                                     ; $42cc: $75
	ld   d, l                                        ; $42cd: $55
	ld   b, l                                        ; $42ce: $45
	ld   d, l                                        ; $42cf: $55
	ld   l, b                                        ; $42d0: $68
	sbc  d                                           ; $42d1: $9a
	cp   h                                           ; $42d2: $bc
	res  7, e                                        ; $42d3: $cb $bb
	sbc  c                                           ; $42d5: $99
	add  l                                           ; $42d6: $85
	ld   d, l                                        ; $42d7: $55
	ld   b, h                                        ; $42d8: $44
	ld   d, l                                        ; $42d9: $55
	ld   h, a                                        ; $42da: $67
	sbc  d                                           ; $42db: $9a
	cp   h                                           ; $42dc: $bc
	cp   h                                           ; $42dd: $bc
	cp   d                                           ; $42de: $ba
	sbc  c                                           ; $42df: $99
	add  l                                           ; $42e0: $85
	ld   d, l                                        ; $42e1: $55
	ld   b, h                                        ; $42e2: $44
	ld   d, l                                        ; $42e3: $55
	ld   h, a                                        ; $42e4: $67
	adc  c                                           ; $42e5: $89
	cp   h                                           ; $42e6: $bc
	cp   h                                           ; $42e7: $bc
	cp   e                                           ; $42e8: $bb
	xor  c                                           ; $42e9: $a9
	sub  [hl]                                        ; $42ea: $96
	ld   d, l                                        ; $42eb: $55
	ld   b, h                                        ; $42ec: $44
	ld   d, l                                        ; $42ed: $55
	ld   h, a                                        ; $42ee: $67
	sbc  c                                           ; $42ef: $99
	cp   h                                           ; $42f0: $bc
	cp   e                                           ; $42f1: $bb
	xor  d                                           ; $42f2: $aa
	xor  c                                           ; $42f3: $a9
	add  [hl]                                        ; $42f4: $86
	ld   d, l                                        ; $42f5: $55
	ld   b, h                                        ; $42f6: $44
	ld   d, l                                        ; $42f7: $55
	ld   h, a                                        ; $42f8: $67
	sbc  e                                           ; $42f9: $9b
	cp   e                                           ; $42fa: $bb
	cp   h                                           ; $42fb: $bc
	xor  d                                           ; $42fc: $aa
	ld   [hl], a                                     ; $42fd: $77
	and  h                                           ; $42fe: $a4
	ld   d, a                                        ; $42ff: $57
	ld   b, h                                        ; $4300: $44
	ld   l, c                                        ; $4301: $69
	ld   l, b                                        ; $4302: $68
	jp   z, $caab                                    ; $4303: $ca $ab $ca

	adc  b                                           ; $4306: $88
	ld   b, l                                        ; $4307: $45
	sub  c                                           ; $4308: $91
	ld   c, d                                        ; $4309: $4a
	ld   d, l                                        ; $430a: $55
	sbc  [hl]                                        ; $430b: $9e
	ld   a, d                                        ; $430c: $7a
	ld   sp, hl                                      ; $430d: $f9
	cp   d                                           ; $430e: $ba
	push bc                                          ; $430f: $c5
	ld   d, h                                        ; $4310: $54
	jr   jr_0e5_4374                                 ; $4311: $18 $61

	xor  d                                           ; $4313: $aa
	ld   [hl], a                                     ; $4314: $77
	rst  $38                                         ; $4315: $ff
	ld   c, a                                        ; $4316: $4f
	rst  ToBoot                                         ; $4317: $c7

jr_0e5_4318:
	adc  e                                           ; $4318: $8b
	ld   [hl], c                                     ; $4319: $71
	ld   sp, $1d78                                   ; $431a: $31 $78 $1d
	ret                                              ; $431d: $c9


	sbc  a                                           ; $431e: $9f
	pop  af                                          ; $431f: $f1
	db   $fd                                         ; $4320: $fd
	ld   b, [hl]                                     ; $4321: $46
	sub  h                                           ; $4322: $94
	ld   [de], a                                     ; $4323: $12
	dec  e                                           ; $4324: $1d
	ld   h, c                                        ; $4325: $61
	db   $fc                                         ; $4326: $fc
	reti                                             ; $4327: $d9


	ei                                               ; $4328: $fb
	rra                                              ; $4329: $1f
	ld   b, c                                        ; $432a: $41
	inc  a                                           ; $432b: $3c
	ld   de, $f152                                   ; $432c: $11 $52 $f1
	rst  $38                                         ; $432f: $ff
	xor  [hl]                                        ; $4330: $ae
	rst  JumpTable                                         ; $4331: $df
	ld   a, [de]                                     ; $4332: $1a
	pop  hl                                          ; $4333: $e1
	scf                                              ; $4334: $37
	ld   [hl], c                                     ; $4335: $71
	ld   [hl], $e7                                   ; $4336: $36 $e7
	ld   a, a                                        ; $4338: $7f
	sbc  h                                           ; $4339: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $433a: $cf
	ld   de, $17f1                                   ; $433b: $11 $f1 $17
	and  c                                           ; $433e: $a1
	add  hl, de                                      ; $433f: $19
	call z, $ca3f                                    ; $4340: $cc $3f $ca
	cp   a                                           ; $4343: $bf
	add  c                                           ; $4344: $81
	ldh  a, [c]                                      ; $4345: $f2
	rla                                              ; $4346: $17
	or   c                                           ; $4347: $b1
	jr   jr_0e5_4318                                 ; $4348: $18 $ce

	rra                                              ; $434a: $1f
	rst  $30                                         ; $434b: $f7
	cp   a                                           ; $434c: $bf
	pop  de                                          ; $434d: $d1
	ld   hl, sp+$15                                  ; $434e: $f8 $15
	pop  bc                                          ; $4350: $c1
	dec  d                                           ; $4351: $15
	rst  $28                                         ; $4352: $ef
	rra                                              ; $4353: $1f
	push af                                          ; $4354: $f5
	sbc  a                                           ; $4355: $9f
	pop  af                                          ; $4356: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4357: $cf
	inc  de                                          ; $4358: $13
	sub  $12                                         ; $4359: $d6 $12
	cp   a                                           ; $435b: $bf
	dec  l                                           ; $435c: $2d
	rst  $30                                         ; $435d: $f7
	adc  h                                           ; $435e: $8c
	pop  af                                          ; $435f: $f1
	rra                                              ; $4360: $1f
	ld   de, $11bb                                   ; $4361: $11 $bb $11
	adc  a                                           ; $4364: $8f
	sub  l                                           ; $4365: $95
	ei                                               ; $4366: $fb
	ld   a, c                                        ; $4367: $79
	ldh  a, [c]                                      ; $4368: $f2
	rra                                              ; $4369: $1f
	ld   sp, $117e                                   ; $436a: $31 $7e $11
	ld   a, a                                        ; $436d: $7f
	pop  af                                          ; $436e: $f1
	rst  $38                                         ; $436f: $ff
	ld   d, [hl]                                     ; $4370: $56
	db   $fc                                         ; $4371: $fc
	rra                                              ; $4372: $1f
	or   c                                           ; $4373: $b1

jr_0e5_4374:
	ld   e, [hl]                                     ; $4374: $5e
	ld   de, $f12f                                   ; $4375: $11 $2f $f1
	rst  $38                                         ; $4378: $ff
	ld   h, h                                        ; $4379: $64
	rst  $38                                         ; $437a: $ff
	rla                                              ; $437b: $17
	pop  af                                          ; $437c: $f1
	dec  l                                           ; $437d: $2d
	add  c                                           ; $437e: $81
	ld   e, $f2                                      ; $437f: $1e $f2
	cp   a                                           ; $4381: $bf
	add  d                                           ; $4382: $82
	xor  a                                           ; $4383: $af
	ld   de, $1af2                                   ; $4384: $11 $f2 $1a
	pop  de                                          ; $4387: $d1
	rla                                              ; $4388: $17
	ei                                               ; $4389: $fb
	cpl                                              ; $438a: $2f
	di                                               ; $438b: $f3
	cpl                                              ; $438c: $2f
	ld   hl, $15f9                                   ; $438d: $21 $f9 $15
	pop  af                                          ; $4390: $f1
	ld   de, $1fff                                   ; $4391: $11 $ff $1f
	push af                                          ; $4394: $f5
	ld   e, $f1                                      ; $4395: $1e $f1
	cp   a                                           ; $4397: $bf
	inc  sp                                          ; $4398: $33
	ret  c                                           ; $4399: $d8

	ld   de, $779f                                   ; $439a: $11 $9f $77
	db   $fc                                         ; $439d: $fc
	ld   de, $1ff1                                   ; $439e: $11 $f1 $1f
	call nz, $114f                                   ; $43a1: $c4 $4f $11
	rra                                              ; $43a4: $1f
	pop  af                                          ; $43a5: $f1
	rst  $38                                         ; $43a6: $ff
	ld   b, c                                        ; $43a7: $41
	ld   e, a                                        ; $43a8: $5f
	rla                                              ; $43a9: $17
	ld   a, [$e136]                                  ; $43aa: $fa $36 $e1
	ld   de, $1fff                                   ; $43ad: $11 $ff $1f
	di                                               ; $43b0: $f3
	inc  d                                           ; $43b1: $14
	pop  af                                          ; $43b2: $f1
	cp   a                                           ; $43b3: $bf
	di                                               ; $43b4: $f3
	ld   e, d                                        ; $43b5: $5a
	ld   de, $f51f                                   ; $43b6: $11 $1f $f5
	rst  $38                                         ; $43b9: $ff
	ld   b, c                                        ; $43ba: $41
	rra                                              ; $43bb: $1f
	ld   d, $ff                                      ; $43bc: $16 $ff
	ld   d, c                                        ; $43be: $51
	and  c                                           ; $43bf: $a1
	ld   de, $f44f                                   ; $43c0: $11 $4f $f4
	db   $fc                                         ; $43c3: $fc
	ld   de, $1fff                                   ; $43c4: $11 $ff $1f
	db   $fc                                         ; $43c7: $fc
	inc  d                                           ; $43c8: $14
	ld   de, $df11                                   ; $43c9: $11 $11 $df
	pop  af                                          ; $43cc: $f1
	or   $11                                         ; $43cd: $f6 $11
	rst  $38                                         ; $43cf: $ff
	ccf                                              ; $43d0: $3f
	rst  $30                                         ; $43d1: $f7
	inc  de                                          ; $43d2: $13
	ld   hl, rAUD1LEN                                   ; $43d3: $21 $11 $ff
	or   c                                           ; $43d6: $b1
	di                                               ; $43d7: $f3
	ld   de, $6fff                                   ; $43d8: $11 $ff $6f
	push hl                                          ; $43db: $e5
	inc  d                                           ; $43dc: $14
	ld   hl, rAUD1LEN                                   ; $43dd: $21 $11 $ff
	pop  bc                                          ; $43e0: $c1
	or   $11                                         ; $43e1: $f6 $11
	rst  $38                                         ; $43e3: $ff
	ccf                                              ; $43e4: $3f
	or   e                                           ; $43e5: $b3
	ld   d, $63                                      ; $43e6: $16 $63
	ld   de, $a1ef                                   ; $43e8: $11 $ef $a1
	rst  $30                                         ; $43eb: $f7
	ld   de, $1fff                                   ; $43ec: $11 $ff $1f
	add  h                                           ; $43ef: $84
	ld   d, $72                                      ; $43f0: $16 $72
	ld   de, $71ff                                   ; $43f2: $11 $ff $71
	rst  $30                                         ; $43f5: $f7
	ld   de, $2fff                                   ; $43f6: $11 $ff $2f
	ld   [hl], e                                     ; $43f9: $73
	rla                                              ; $43fa: $17
	ld   [hl], e                                     ; $43fb: $73
	ld   de, $11ff                                   ; $43fc: $11 $ff $11
	db   $f4                                         ; $43ff: $f4
	ld   de, $5ffd                                   ; $4400: $11 $fd $5f
	ld   d, e                                        ; $4403: $53
	add  hl, de                                      ; $4404: $19
	ld   [hl], h                                     ; $4405: $74
	ld   de, $11ff                                   ; $4406: $11 $ff $11
	ldh  a, [c]                                      ; $4409: $f2
	dec  d                                           ; $440a: $15
	ld   sp, hl                                      ; $440b: $f9
	adc  a                                           ; $440c: $8f
	ld   [hl], c                                     ; $440d: $71
	dec  de                                          ; $440e: $1b
	ld   h, e                                        ; $440f: $63
	ld   de, $14ff                                   ; $4410: $11 $ff $14
	pop  af                                          ; $4413: $f1
	rra                                              ; $4414: $1f
	db   $f4                                         ; $4415: $f4
	adc  $71                                         ; $4416: $ce $71
	dec  de                                          ; $4418: $1b
	ld   [hl], d                                     ; $4419: $72
	ld   [de], a                                     ; $441a: $12
	rst  $38                                         ; $441b: $ff
	dec  de                                          ; $441c: $1b
	pop  af                                          ; $441d: $f1
	rra                                              ; $441e: $1f
	pop  af                                          ; $441f: $f1
	db   $eb                                         ; $4420: $eb
	ld   [hl], c                                     ; $4421: $71
	dec  e                                           ; $4422: $1d
	ld   h, c                                        ; $4423: $61
	rra                                              ; $4424: $1f
	ld   hl, sp+$1f                                  ; $4425: $f8 $1f
	and  c                                           ; $4427: $a1
	rra                                              ; $4428: $1f
	ldh  a, [c]                                      ; $4429: $f2
	ei                                               ; $442a: $fb
	ld   d, c                                        ; $442b: $51
	ld   e, h                                        ; $442c: $5c
	ld   b, c                                        ; $442d: $41
	rra                                              ; $442e: $1f
	pop  af                                          ; $442f: $f1
	rra                                              ; $4430: $1f
	ld   de, $b79f                                   ; $4431: $11 $9f $b7
	jp   z, $bb11                                    ; $4434: $ca $11 $bb

	ld   de, $f15f                                   ; $4437: $11 $5f $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $443a: $cf
	ld   de, $4aff                                   ; $443b: $11 $ff $4a
	xor  d                                           ; $443e: $aa
	ld   de, $11e8                                   ; $443f: $11 $e8 $11
	rst  $38                                         ; $4442: $ff
	ld   de, $11f7                                   ; $4443: $11 $f7 $11
	rst  $38                                         ; $4446: $ff
	ld   e, e                                        ; $4447: $5b
	or   l                                           ; $4448: $b5
	rla                                              ; $4449: $17
	jp   nc, rAUD1LEN                                   ; $444a: $d2 $11 $ff

	rla                                              ; $444d: $17
	pop  af                                          ; $444e: $f1
	rra                                              ; $444f: $1f
	rst  $30                                         ; $4450: $f7
	adc  d                                           ; $4451: $8a
	pop  bc                                          ; $4452: $c1

jr_0e5_4453:
	inc  e                                           ; $4453: $1c
	or   c                                           ; $4454: $b1
	rra                                              ; $4455: $1f
	pop  af                                          ; $4456: $f1
	rra                                              ; $4457: $1f
	ld   h, c                                        ; $4458: $61
	cpl                                              ; $4459: $2f
	push af                                          ; $445a: $f5
	sbc  e                                           ; $445b: $9b
	ld   d, c                                        ; $445c: $51
	ld   e, a                                        ; $445d: $5f
	ld   sp, $f16f                                   ; $445e: $31 $6f $f1
	xor  a                                           ; $4461: $af
	ld   de, $88ff                                   ; $4462: $11 $ff $88
	sbc  e                                           ; $4465: $9b
	ld   de, $11ba                                   ; $4466: $11 $ba $11
	rst  $38                                         ; $4469: $ff
	ld   de, $1df1                                   ; $446a: $11 $f1 $1d
	cp   $87                                         ; $446d: $fe $87
	pop  de                                          ; $446f: $d1
	jr   jr_0e5_4453                                 ; $4470: $18 $e1

	rra                                              ; $4472: $1f
	db   $f4                                         ; $4473: $f4
	rra                                              ; $4474: $1f
	pop  bc                                          ; $4475: $c1
	rra                                              ; $4476: $1f
	rst  $30                                         ; $4477: $f7
	sbc  d                                           ; $4478: $9a
	ld   [hl], c                                     ; $4479: $71
	ld   e, $71                                      ; $447a: $1e $71
	rra                                              ; $447c: $1f
	pop  af                                          ; $447d: $f1
	ld   l, a                                        ; $447e: $6f
	ld   de, $a7ff                                   ; $447f: $11 $ff $a7
	sbc  l                                           ; $4482: $9d
	ld   de, $11bc                                   ; $4483: $11 $bc $11
	rst  $38                                         ; $4486: $ff
	ld   de, $1af2                                   ; $4487: $11 $f2 $1a
	rst  $38                                         ; $448a: $ff
	sub  a                                           ; $448b: $97
	pop  de                                          ; $448c: $d1
	dec  d                                           ; $448d: $15
	pop  hl                                          ; $448e: $e1
	rra                                              ; $448f: $1f
	ldh  a, [c]                                      ; $4490: $f2
	rra                                              ; $4491: $1f
	sub  c                                           ; $4492: $91
	rra                                              ; $4493: $1f
	ld   a, [$716b]                                  ; $4494: $fa $6b $71

Jump_0e5_4497:
	dec  e                                           ; $4497: $1d
	ld   [hl], c                                     ; $4498: $71
	xor  a                                           ; $4499: $af
	pop  af                                          ; $449a: $f1
	ld   a, [hl]                                     ; $449b: $7e
	ld   de, $e8ff                                   ; $449c: $11 $ff $e8
	adc  d                                           ; $449f: $8a
	ld   de, $1189                                   ; $44a0: $11 $89 $11
	rst  $38                                         ; $44a3: $ff
	ld   [de], a                                     ; $44a4: $12
	pop  hl                                          ; $44a5: $e1
	rra                                              ; $44a6: $1f

Call_0e5_44a7:
	rst  $38                                         ; $44a7: $ff
	or   a                                           ; $44a8: $b7
	pop  de                                          ; $44a9: $d1
	ld   d, $b1                                      ; $44aa: $16 $b1
	rra                                              ; $44ac: $1f
	pop  af                                          ; $44ad: $f1
	rra                                              ; $44ae: $1f
	ld   de, $fcbf                                   ; $44af: $11 $bf $fc
	sbc  h                                           ; $44b2: $9c
	ld   de, $113a                                   ; $44b3: $11 $3a $11
	rst  $38                                         ; $44b6: $ff

Call_0e5_44b7:
	ld   de, $13e3                                   ; $44b7: $11 $e3 $13
	rst  $38                                         ; $44ba: $ff
	jp   hl                                          ; $44bb: $e9


	db   $d3                                         ; $44bc: $d3
	ld   de, $1fb1                                   ; $44bd: $11 $b1 $1f
	ld   sp, hl                                      ; $44c0: $f9
	inc  e                                           ; $44c1: $1c
	add  c                                           ; $44c2: $81
	rra                                              ; $44c3: $1f
	rst  $38                                         ; $44c4: $ff
	cp   h                                           ; $44c5: $bc
	ld   [hl], c                                     ; $44c6: $71
	ld   a, [de]                                     ; $44c7: $1a
	ld   d, c                                        ; $44c8: $51
	cp   a                                           ; $44c9: $bf
	pop  af                                          ; $44ca: $f1
	adc  h                                           ; $44cb: $8c
	ld   de, $fdff                                   ; $44cc: $11 $ff $fd
	rl   c                                           ; $44cf: $cb $11
	ld   h, a                                        ; $44d1: $67
	ld   [de], a                                     ; $44d2: $12
	rst  $38                                         ; $44d3: $ff
	inc  d                                           ; $44d4: $14
	pop  de                                          ; $44d5: $d1
	rra                                              ; $44d6: $1f
	rst  $38                                         ; $44d7: $ff
	db   $ed                                         ; $44d8: $ed
	pop  de                                          ; $44d9: $d1
	dec  d                                           ; $44da: $15
	add  c                                           ; $44db: $81
	rra                                              ; $44dc: $1f
	pop  af                                          ; $44dd: $f1
	ld   l, $11                                      ; $44de: $2e $11
	rst  JumpTable                                         ; $44e0: $df
	rst  $38                                         ; $44e1: $ff
	xor  $11                                         ; $44e2: $ee $11
	ld   d, $11                                      ; $44e4: $16 $11
	rst  $38                                         ; $44e6: $ff
	ld   bc, $17d1                                   ; $44e7: $01 $d1 $17
	rst  $38                                         ; $44ea: $ff
	rst  $38                                         ; $44eb: $ff
	pop  af                                          ; $44ec: $f1
	ld   de, $1f61                                   ; $44ed: $11 $61 $1f
	rst  $30                                         ; $44f0: $f7
	dec  e                                           ; $44f1: $1d
	ld   de, $ff1f                                   ; $44f2: $11 $1f $ff
	rst  $38                                         ; $44f5: $ff
	ld   hl, $1114                                   ; $44f6: $21 $14 $11
	rst  $38                                         ; $44f9: $ff
	jp   nz, $11b1                                   ; $44fa: $c2 $b1 $11

	rst  $38                                         ; $44fd: $ff
	rst  $38                                         ; $44fe: $ff
	ldh  a, [c]                                      ; $44ff: $f2
	ld   de, $1f31                                   ; $4500: $11 $31 $1f
	rst  $38                                         ; $4503: $ff
	ld   c, e                                        ; $4504: $4b
	ld   hl, $ff1f                                   ; $4505: $21 $1f $ff
	rst  $38                                         ; $4508: $ff
	ld   b, c                                        ; $4509: $41
	ld   de, rAUD1LEN                                   ; $450a: $11 $11 $ff
	ld   hl, sp-$4f                                  ; $450d: $f8 $b1
	ld   de, $ffff                                   ; $450f: $11 $ff $ff
	di                                               ; $4512: $f3
	ld   de, $4f11                                   ; $4513: $11 $11 $4f
	rst  $38                                         ; $4516: $ff
	jp   c, $4f11                                    ; $4517: $da $11 $4f

	rst  $28                                         ; $451a: $ef
	rst  $38                                         ; $451b: $ff
	ld   de, $1f11                                   ; $451c: $11 $11 $1f
	rst  $38                                         ; $451f: $ff
	db   $fd                                         ; $4520: $fd
	ld   hl, $ac39                                   ; $4521: $21 $39 $ac
	rst  $38                                         ; $4524: $ff
	ld   hl, $af11                                   ; $4525: $21 $11 $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4528: $cf
	ld   sp, hl                                      ; $4529: $f9
	ld   a, [hl-]                                    ; $452a: $3a
	ld   [hl], c                                     ; $452b: $71
	adc  l                                           ; $452c: $8d
	push de                                          ; $452d: $d5
	ld   sp, $f81a                                   ; $452e: $31 $1a $f8
	cp   a                                           ; $4531: $bf
	or   l                                           ; $4532: $b5
	call c, Call_0e5_7925                            ; $4533: $dc $25 $79
	ld   b, d                                        ; $4536: $42
	ld   hl, $c96f                                   ; $4537: $21 $6f $c9
	db   $fc                                         ; $453a: $fc
	ld   c, d                                        ; $453b: $4a
	and  $69                                         ; $453c: $e6 $69
	ld   h, e                                        ; $453e: $63
	ld   de, $fc18                                   ; $453f: $11 $18 $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4542: $cf
	call nz, Call_0e5_58ac                           ; $4543: $c4 $ac $58
	add  [hl]                                        ; $4546: $86
	ld   b, c                                        ; $4547: $41
	ld   de, $9daf                                   ; $4548: $11 $af $9d
	ei                                               ; $454b: $fb
	ld   e, h                                        ; $454c: $5c
	jp   Jump_0e5_7468                               ; $454d: $c3 $68 $74


	ld   de, $f91a                                   ; $4550: $11 $1a $f9
	rst  JumpTable                                         ; $4553: $df
	and  a                                           ; $4554: $a7
	db   $eb                                         ; $4555: $eb
	ld   d, a                                        ; $4556: $57
	ld   h, l                                        ; $4557: $65
	ld   [hl-], a                                    ; $4558: $32
	ld   de, $8ddf                                   ; $4559: $11 $df $8d
	ld   a, [$b57f]                                  ; $455c: $fa $7f $b5
	add  a                                           ; $455f: $87
	ld   h, d                                        ; $4560: $62
	ld   de, $e91e                                   ; $4561: $11 $1e $e9
	rst  $38                                         ; $4564: $ff
	sbc  b                                           ; $4565: $98
	ld   sp, hl                                      ; $4566: $f9
	ld   e, b                                        ; $4567: $58
	halt                                             ; $4568: $76
	ld   hl, $eb11                                   ; $4569: $21 $11 $eb
	sbc  a                                           ; $456c: $9f
	ld   a, [$75cd]                                  ; $456d: $fa $cd $75
	halt                                             ; $4570: $76
	ld   d, c                                        ; $4571: $51
	ld   de, $994d                                   ; $4572: $11 $4d $99
	cp   $ce                                         ; $4575: $fe $ce
	reti                                             ; $4577: $d9


	ld   h, l                                        ; $4578: $65
	ld   d, h                                        ; $4579: $54
	ld   de, $c719                                   ; $457a: $11 $19 $c7
	rst  JumpTable                                         ; $457d: $df
	set  5, l                                        ; $457e: $cb $ed
	halt                                             ; $4580: $76
	ld   h, [hl]                                     ; $4581: $66
	ld   de, $a814                                   ; $4582: $11 $14 $a8
	xor  [hl]                                        ; $4585: $ae
	db   $ec                                         ; $4586: $ec
	cp   e                                           ; $4587: $bb
	halt                                             ; $4588: $76
	ld   a, b                                        ; $4589: $78
	ld   [hl], l                                     ; $458a: $75
	ld   b, h                                        ; $458b: $44
	ld   l, c                                        ; $458c: $69
	adc  c                                           ; $458d: $89
	cp   d                                           ; $458e: $ba
	sbc  b                                           ; $458f: $98
	add  [hl]                                        ; $4590: $86
	ld   [hl], a                                     ; $4591: $77
	sbc  c                                           ; $4592: $99
	sbc  c                                           ; $4593: $99
	adc  c                                           ; $4594: $89
	adc  b                                           ; $4595: $88
	sbc  c                                           ; $4596: $99
	add  a                                           ; $4597: $87
	ld   [hl], a                                     ; $4598: $77
	ld   h, a                                        ; $4599: $67
	ld   [hl], a                                     ; $459a: $77
	ld   a, c                                        ; $459b: $79
	xor  c                                           ; $459c: $a9
	xor  c                                           ; $459d: $a9
	sbc  b                                           ; $459e: $98
	ld   [hl], a                                     ; $459f: $77
	ld   [hl], a                                     ; $45a0: $77
	ld   h, a                                        ; $45a1: $67
	ld   a, b                                        ; $45a2: $78
	ld   [hl], a                                     ; $45a3: $77
	sbc  c                                           ; $45a4: $99
	sbc  c                                           ; $45a5: $99
	xor  d                                           ; $45a6: $aa
	adc  b                                           ; $45a7: $88
	add  a                                           ; $45a8: $87
	ld   [hl], a                                     ; $45a9: $77
	ld   [hl], a                                     ; $45aa: $77
	ld   a, b                                        ; $45ab: $78
	sbc  c                                           ; $45ac: $99
	adc  c                                           ; $45ad: $89
	adc  c                                           ; $45ae: $89
	sbc  d                                           ; $45af: $9a
	sbc  b                                           ; $45b0: $98
	ld   [hl], a                                     ; $45b1: $77
	ld   [hl], a                                     ; $45b2: $77
	ld   a, b                                        ; $45b3: $78
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	sbc  b                                           ; $45b6: $98
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	sbc  c                                           ; $45b9: $99
	ld   [hl], a                                     ; $45ba: $77
	ld   [hl], a                                     ; $45bb: $77
	ld   [hl], a                                     ; $45bc: $77
	sbc  b                                           ; $45bd: $98
	sbc  b                                           ; $45be: $98
	sbc  b                                           ; $45bf: $98
	ld   a, b                                        ; $45c0: $78
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	sbc  b                                           ; $45c3: $98
	add  a                                           ; $45c4: $87
	ld   a, b                                        ; $45c5: $78
	adc  c                                           ; $45c6: $89
	sbc  c                                           ; $45c7: $99
	add  a                                           ; $45c8: $87
	adc  b                                           ; $45c9: $88
	ld   a, b                                        ; $45ca: $78
	adc  b                                           ; $45cb: $88
	adc  c                                           ; $45cc: $89
	add  a                                           ; $45cd: $87
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	sbc  c                                           ; $45d0: $99
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	sbc  c                                           ; $45da: $99
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	ld   a, b                                        ; $45dd: $78
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	sbc  c                                           ; $45e3: $99
	sbc  c                                           ; $45e4: $99
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	ld   a, b                                        ; $45e7: $78
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	sbc  b                                           ; $45ed: $98
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	add  a                                           ; $45f0: $87
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
	add  a                                           ; $4603: $87
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

Call_0e5_4612:
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

Jump_0e5_4643:
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

Jump_0e5_4744:
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

Jump_0e5_4763:
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
	adc  c                                           ; $47b6: $89
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	sbc  c                                           ; $47ba: $99
	adc  b                                           ; $47bb: $88
	add  a                                           ; $47bc: $87
	adc  c                                           ; $47bd: $89
	add  a                                           ; $47be: $87
	sbc  b                                           ; $47bf: $98
	ld   a, b                                        ; $47c0: $78
	adc  b                                           ; $47c1: $88
	adc  b                                           ; $47c2: $88
	ld   [hl], a                                     ; $47c3: $77
	adc  b                                           ; $47c4: $88
	adc  b                                           ; $47c5: $88
	adc  b                                           ; $47c6: $88
	adc  c                                           ; $47c7: $89
	ld   a, b                                        ; $47c8: $78
	sbc  b                                           ; $47c9: $98
	ld   [hl], a                                     ; $47ca: $77
	ld   [hl], a                                     ; $47cb: $77
	ld   [hl], a                                     ; $47cc: $77
	sbc  b                                           ; $47cd: $98
	sbc  d                                           ; $47ce: $9a
	xor  c                                           ; $47cf: $a9
	adc  b                                           ; $47d0: $88
	ld   h, l                                        ; $47d1: $65
	ld   d, [hl]                                     ; $47d2: $56
	ld   b, [hl]                                     ; $47d3: $46
	ld   h, [hl]                                     ; $47d4: $66
	adc  d                                           ; $47d5: $8a
	cp   h                                           ; $47d6: $bc
	sbc  $bb                                         ; $47d7: $de $bb
	xor  b                                           ; $47d9: $a8
	ld   h, e                                        ; $47da: $63
	ld   [de], a                                     ; $47db: $12
	ld   hl, $7c56                                   ; $47dc: $21 $56 $7c
	rst  $38                                         ; $47df: $ff
	rst  $38                                         ; $47e0: $ff
	db   $ed                                         ; $47e1: $ed
	add  sp, $41                                     ; $47e2: $e8 $41
	ld   de, $1911                                   ; $47e4: $11 $11 $19
	adc  d                                           ; $47e7: $8a
	rst  $38                                         ; $47e8: $ff
	rst  $38                                         ; $47e9: $ff
	ei                                               ; $47ea: $fb
	jp   z, $1141                                    ; $47eb: $ca $41 $11

	ld   [de], a                                     ; $47ee: $12
	ld   d, $eb                                      ; $47ef: $16 $eb
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	ld   l, e                                        ; $47f4: $6b
	ld   b, c                                        ; $47f5: $41
	ld   de, $1413                                   ; $47f6: $11 $13 $14
	db   $fc                                         ; $47f9: $fc
	rst  $38                                         ; $47fa: $ff
	cp   $ff                                         ; $47fb: $fe $ff
	dec  hl                                          ; $47fd: $2b
	ld   b, c                                        ; $47fe: $41
	ld   de, $1613                                   ; $47ff: $11 $13 $16
	cp   $ff                                         ; $4802: $fe $ff
	db   $fd                                         ; $4804: $fd
	rst  $38                                         ; $4805: $ff
	add  hl, de                                      ; $4806: $19
	ld   hl, $1311                                   ; $4807: $21 $11 $13
	inc  e                                           ; $480a: $1c
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	ei                                               ; $480d: $fb
	db   $fc                                         ; $480e: $fc
	add  hl, de                                      ; $480f: $19
	ld   de, $1111                                   ; $4810: $11 $11 $11
	rra                                              ; $4813: $1f
	rst  $38                                         ; $4814: $ff
	rst  $38                                         ; $4815: $ff
	ei                                               ; $4816: $fb
	di                                               ; $4817: $f3
	rla                                              ; $4818: $17
	ld   de, $4111                                   ; $4819: $11 $11 $41
	cp   a                                           ; $481c: $bf
	rst  $38                                         ; $481d: $ff
	rst  $38                                         ; $481e: $ff
	sbc  $f1                                         ; $481f: $de $f1
	ld   b, c                                        ; $4821: $41
	ld   de, $3511                                   ; $4822: $11 $11 $35
	rst  $38                                         ; $4825: $ff
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	adc  a                                           ; $4828: $8f
	ld   b, c                                        ; $4829: $41
	ld   b, c                                        ; $482a: $41
	ld   de, $3f12                                   ; $482b: $11 $12 $3f
	rst  $38                                         ; $482e: $ff
	rst  $38                                         ; $482f: $ff
	db   $fd                                         ; $4830: $fd
	reti                                             ; $4831: $d9


	ld   [de], a                                     ; $4832: $12
	ld   de, $2611                                   ; $4833: $11 $11 $26
	sbc  a                                           ; $4836: $9f
	rst  $38                                         ; $4837: $ff
	rst  $38                                         ; $4838: $ff
	ld   hl, sp-$0f                                  ; $4839: $f8 $f1
	ld   [de], a                                     ; $483b: $12
	ld   de, $7611                                   ; $483c: $11 $11 $76
	rst  $38                                         ; $483f: $ff
	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	cp   e                                           ; $4842: $bb
	ld   [hl], c                                     ; $4843: $71
	ld   hl, $1511                                   ; $4844: $21 $11 $15
	ld   a, [hl]                                     ; $4847: $7e
	rst  $38                                         ; $4848: $ff
	rst  $38                                         ; $4849: $ff
	rst  $38                                         ; $484a: $ff
	sbc  d                                           ; $484b: $9a
	ld   de, $1111                                   ; $484c: $11 $11 $11
	jr   c, @-$5f                                    ; $484f: $38 $9f

	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	ld   hl, sp-$4d                                  ; $4853: $f8 $b3
	ld   de, $1111                                   ; $4855: $11 $11 $11
	ld   [hl], a                                     ; $4858: $77
	rst  $38                                         ; $4859: $ff
	rst  $38                                         ; $485a: $ff
	rst  $38                                         ; $485b: $ff
	ret  z                                           ; $485c: $c8

	sub  c                                           ; $485d: $91
	ld   de, $1311                                   ; $485e: $11 $11 $13
	sbc  e                                           ; $4861: $9b
	rst  $38                                         ; $4862: $ff
	rst  $38                                         ; $4863: $ff
	rst  $38                                         ; $4864: $ff
	adc  c                                           ; $4865: $89
	ld   d, c                                        ; $4866: $51
	ld   de, $1511                                   ; $4867: $11 $11 $15
	xor  h                                           ; $486a: $ac
	rst  $38                                         ; $486b: $ff
	rst  $38                                         ; $486c: $ff
	cp   $8b                                         ; $486d: $fe $8b
	ld   hl, $1131                                   ; $486f: $21 $31 $11
	ld   d, $a9                                      ; $4872: $16 $a9
	rst  $38                                         ; $4874: $ff
	rst  $28                                         ; $4875: $ef
	db   $fd                                         ; $4876: $fd
	xor  l                                           ; $4877: $ad
	ld   de, $1141                                   ; $4878: $11 $41 $11
	ld   d, $e6                                      ; $487b: $16 $e6
	rst  $38                                         ; $487d: $ff
	rst  JumpTable                                         ; $487e: $df
	rst  $38                                         ; $487f: $ff
	ld   l, h                                        ; $4880: $6c
	ld   b, c                                        ; $4881: $41
	ld   d, c                                        ; $4882: $51
	ld   de, $c614                                   ; $4883: $11 $14 $c6
	rst  $38                                         ; $4886: $ff
	rst  $28                                         ; $4887: $ef
	rst  $38                                         ; $4888: $ff
	sbc  [hl]                                        ; $4889: $9e
	ld   [hl], c                                     ; $488a: $71
	ld   b, c                                        ; $488b: $41
	ld   de, $8a11                                   ; $488c: $11 $11 $8a
	ld   l, a                                        ; $488f: $6f
	cp   $ff                                         ; $4890: $fe $ff
	db   $db                                         ; $4892: $db
	jp   nz, $1113                                   ; $4893: $c2 $13 $11

	ld   de, $991c                                   ; $4896: $11 $1c $99
	rst  $38                                         ; $4899: $ff
	rst  $38                                         ; $489a: $ff
	ld   a, [$11ab]                                  ; $489b: $fa $ab $11
	ld   hl, $1112                                   ; $489e: $21 $12 $11
	ret  c                                           ; $48a1: $d8

	sbc  a                                           ; $48a2: $9f
	cp   $ff                                         ; $48a3: $fe $ff
	xor  e                                           ; $48a5: $ab
	or   c                                           ; $48a6: $b1
	ld   [de], a                                     ; $48a7: $12
	ld   de, $1d11                                   ; $48a8: $11 $11 $1d
	ld   a, e                                        ; $48ab: $7b
	rst  $38                                         ; $48ac: $ff
	rst  JumpTable                                         ; $48ad: $df
	ld   sp, hl                                      ; $48ae: $f9
	jp   z, $2111                                    ; $48af: $ca $11 $21

	inc  de                                          ; $48b2: $13
	ld   de, $9fd8                                   ; $48b3: $11 $d8 $9f
	db   $fd                                         ; $48b6: $fd
	rst  $38                                         ; $48b7: $ff
	xor  d                                           ; $48b8: $aa
	pop  bc                                          ; $48b9: $c1
	inc  hl                                          ; $48ba: $23
	ld   de, $1931                                   ; $48bb: $11 $31 $19
	and  a                                           ; $48be: $a7
	rst  $38                                         ; $48bf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48c0: $cf
	db   $fc                                         ; $48c1: $fc
	xor  h                                           ; $48c2: $ac
	ld   h, d                                        ; $48c3: $62
	ld   d, c                                        ; $48c4: $51
	inc  de                                          ; $48c5: $13
	ld   b, c                                        ; $48c6: $41
	ld   a, [hl+]                                    ; $48c7: $2a
	ld   a, b                                        ; $48c8: $78
	rst  $38                                         ; $48c9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ca: $cf
	ld   a, [$43bb]                                  ; $48cb: $fa $bb $43
	ld   b, c                                        ; $48ce: $41
	ld   d, $41                                      ; $48cf: $16 $41
	ld   c, c                                        ; $48d1: $49
	ld   e, b                                        ; $48d2: $58
	cp   $df                                         ; $48d3: $fe $df
	ei                                               ; $48d5: $fb
	xor  h                                           ; $48d6: $ac
	ld   d, h                                        ; $48d7: $54
	ld   d, c                                        ; $48d8: $51
	dec  [hl]                                        ; $48d9: $35
	ld   sp, $4836                                   ; $48da: $31 $36 $48
	db   $fc                                         ; $48dd: $fc
	rst  JumpTable                                         ; $48de: $df
	db   $fd                                         ; $48df: $fd
	call c, Call_0e5_5166                            ; $48e0: $dc $66 $51
	inc  [hl]                                        ; $48e3: $34
	ld   hl, $4715                                   ; $48e4: $21 $15 $47
	cp   $ef                                         ; $48e7: $fe $ef
	db   $fd                                         ; $48e9: $fd
	db   $dd                                         ; $48ea: $dd
	ld   d, [hl]                                     ; $48eb: $56
	ld   d, c                                        ; $48ec: $51
	ld   [de], a                                     ; $48ed: $12
	ld   hl, $5715                                   ; $48ee: $21 $15 $57
	rst  $38                                         ; $48f1: $ff
	rst  $28                                         ; $48f2: $ef
	rst  $38                                         ; $48f3: $ff
	sbc  $64                                         ; $48f4: $de $64
	ld   b, c                                        ; $48f6: $41
	ld   [de], a                                     ; $48f7: $12
	ld   de, $7714                                   ; $48f8: $11 $14 $77
	rst  $38                                         ; $48fb: $ff
	rst  $28                                         ; $48fc: $ef
	cp   $bd                                         ; $48fd: $fe $bd
	ld   h, e                                        ; $48ff: $63
	ld   d, c                                        ; $4900: $51
	inc  de                                          ; $4901: $13
	ld   sp, $7514                                   ; $4902: $31 $14 $75
	rst  JumpTable                                         ; $4905: $df
	rst  JumpTable                                         ; $4906: $df
	cp   $be                                         ; $4907: $fe $be
	add  h                                           ; $4909: $84
	ld   [hl], e                                     ; $490a: $73
	inc  de                                          ; $490b: $13
	ld   sp, $5412                                   ; $490c: $31 $12 $54
	sbc  a                                           ; $490f: $9f
	rst  JumpTable                                         ; $4910: $df
	rst  $38                                         ; $4911: $ff
	adc  $c3                                         ; $4912: $ce $c3
	ld   [hl], h                                     ; $4914: $74
	ld   [de], a                                     ; $4915: $12
	ld   hl, $5611                                   ; $4916: $21 $11 $56
	ld   l, [hl]                                     ; $4919: $6e
	db   $fc                                         ; $491a: $fc
	rst  $38                                         ; $491b: $ff
	db   $ed                                         ; $491c: $ed
	rst  $30                                         ; $491d: $f7
	ld   d, [hl]                                     ; $491e: $56
	ld   de, $1132                                   ; $491f: $11 $32 $11
	dec  [hl]                                        ; $4922: $35
	ld   c, d                                        ; $4923: $4a
	ei                                               ; $4924: $fb
	rst  $38                                         ; $4925: $ff
	db   $fd                                         ; $4926: $fd
	ei                                               ; $4927: $fb
	ld   e, b                                        ; $4928: $58
	ld   b, c                                        ; $4929: $41
	ld   b, d                                        ; $492a: $42
	ld   de, $4513                                   ; $492b: $11 $13 $45
	sbc  $df                                         ; $492e: $de $df
	rst  $38                                         ; $4930: $ff
	rst  $28                                         ; $4931: $ef
	add  a                                           ; $4932: $87
	ld   [hl], c                                     ; $4933: $71
	ld   [hl+], a                                    ; $4934: $22
	ld   de, $3511                                   ; $4935: $11 $11 $35
	cp   [hl]                                        ; $4938: $be
	rst  JumpTable                                         ; $4939: $df
	rst  $38                                         ; $493a: $ff
	rst  $38                                         ; $493b: $ff
	or   a                                           ; $493c: $b7
	add  e                                           ; $493d: $83
	inc  hl                                          ; $493e: $23
	ld   de, $3411                                   ; $493f: $11 $11 $34
	ld   l, h                                        ; $4942: $6c
	call c, $eeff                                    ; $4943: $dc $ff $ee
	ld   [$3497], a                                  ; $4946: $ea $97 $34
	ld   sp, $1311                                   ; $4949: $31 $11 $13
	ld   d, [hl]                                     ; $494c: $56
	cp   l                                           ; $494d: $bd
	rst  JumpTable                                         ; $494e: $df
	cp   $ee                                         ; $494f: $fe $ee
	xor  b                                           ; $4951: $a8
	ld   [hl], l                                     ; $4952: $75
	ld   b, h                                        ; $4953: $44
	ld   hl, $3411                                   ; $4954: $21 $11 $34
	ld   l, e                                        ; $4957: $6b
	cp   l                                           ; $4958: $bd
	rst  $38                                         ; $4959: $ff
	rst  $38                                         ; $495a: $ff
	ld   [$5598], a                                  ; $495b: $ea $98 $55
	ld   b, e                                        ; $495e: $43
	ld   sp, $4513                                   ; $495f: $31 $13 $45
	sbc  e                                           ; $4962: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4963: $cf
	cp   $fe                                         ; $4964: $fe $fe
	sbc  c                                           ; $4966: $99
	add  [hl]                                        ; $4967: $86
	ld   h, [hl]                                     ; $4968: $66
	ld   b, h                                        ; $4969: $44
	ld   [hl-], a                                    ; $496a: $32
	ld   [hl], $58                                   ; $496b: $36 $58
	cp   c                                           ; $496d: $b9
	cp   l                                           ; $496e: $bd
	set  1, d                                        ; $496f: $cb $ca
	sbc  b                                           ; $4971: $98
	halt                                             ; $4972: $76
	halt                                             ; $4973: $76
	ld   d, [hl]                                     ; $4974: $56
	ld   d, h                                        ; $4975: $54
	ld   [hl], a                                     ; $4976: $77
	ld   e, d                                        ; $4977: $5a
	cp   c                                           ; $4978: $b9
	cp   h                                           ; $4979: $bc
	cp   c                                           ; $497a: $b9
	xor  b                                           ; $497b: $a8
	adc  b                                           ; $497c: $88
	ld   [hl], a                                     ; $497d: $77
	add  a                                           ; $497e: $87
	ld   h, a                                        ; $497f: $67
	ld   d, l                                        ; $4980: $55
	ld   [hl], a                                     ; $4981: $77
	ld   l, c                                        ; $4982: $69
	and  a                                           ; $4983: $a7
	sbc  e                                           ; $4984: $9b
	sbc  b                                           ; $4985: $98
	xor  b                                           ; $4986: $a8
	adc  b                                           ; $4987: $88
	sbc  b                                           ; $4988: $98
	sbc  b                                           ; $4989: $98
	ld   a, b                                        ; $498a: $78
	halt                                             ; $498b: $76
	ld   a, b                                        ; $498c: $78
	ld   h, a                                        ; $498d: $67
	sub  a                                           ; $498e: $97
	adc  d                                           ; $498f: $8a
	sub  a                                           ; $4990: $97
	sbc  c                                           ; $4991: $99
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	adc  c                                           ; $4994: $89
	adc  b                                           ; $4995: $88
	sub  a                                           ; $4996: $97
	ld   a, b                                        ; $4997: $78
	halt                                             ; $4998: $76
	ld   [hl], a                                     ; $4999: $77
	ld   h, a                                        ; $499a: $67
	add  [hl]                                        ; $499b: $86
	ld   a, c                                        ; $499c: $79
	adc  b                                           ; $499d: $88
	sbc  c                                           ; $499e: $99
	adc  c                                           ; $499f: $89
	sbc  c                                           ; $49a0: $99
	xor  c                                           ; $49a1: $a9
	adc  b                                           ; $49a2: $88
	add  a                                           ; $49a3: $87
	ld   h, [hl]                                     ; $49a4: $66
	halt                                             ; $49a5: $76
	ld   h, a                                        ; $49a6: $67
	ld   [hl], a                                     ; $49a7: $77
	adc  c                                           ; $49a8: $89
	adc  c                                           ; $49a9: $89
	sbc  c                                           ; $49aa: $99
	xor  e                                           ; $49ab: $ab
	xor  e                                           ; $49ac: $ab
	xor  d                                           ; $49ad: $aa
	sub  a                                           ; $49ae: $97
	halt                                             ; $49af: $76
	ld   h, [hl]                                     ; $49b0: $66
	ld   h, l                                        ; $49b1: $65
	ld   h, [hl]                                     ; $49b2: $66
	ld   h, [hl]                                     ; $49b3: $66
	ld   a, b                                        ; $49b4: $78
	sbc  c                                           ; $49b5: $99
	sbc  d                                           ; $49b6: $9a
	cp   d                                           ; $49b7: $ba
	cp   d                                           ; $49b8: $ba
	xor  c                                           ; $49b9: $a9
	sbc  b                                           ; $49ba: $98
	add  a                                           ; $49bb: $87
	ld   h, [hl]                                     ; $49bc: $66
	ld   h, l                                        ; $49bd: $65
	ld   d, l                                        ; $49be: $55
	ld   d, [hl]                                     ; $49bf: $56
	ld   a, b                                        ; $49c0: $78
	adc  c                                           ; $49c1: $89
	xor  e                                           ; $49c2: $ab
	cp   d                                           ; $49c3: $ba
	cp   e                                           ; $49c4: $bb
	cp   d                                           ; $49c5: $ba
	sbc  c                                           ; $49c6: $99
	add  a                                           ; $49c7: $87
	ld   h, [hl]                                     ; $49c8: $66
	ld   d, l                                        ; $49c9: $55
	ld   b, l                                        ; $49ca: $45
	ld   d, l                                        ; $49cb: $55
	ld   h, a                                        ; $49cc: $67
	sbc  c                                           ; $49cd: $99
	xor  d                                           ; $49ce: $aa
	cp   e                                           ; $49cf: $bb
	res  7, d                                        ; $49d0: $cb $ba
	sbc  b                                           ; $49d2: $98
	add  a                                           ; $49d3: $87
	ld   h, l                                        ; $49d4: $65
	ld   d, h                                        ; $49d5: $54
	ld   b, h                                        ; $49d6: $44
	ld   b, l                                        ; $49d7: $45
	ld   h, a                                        ; $49d8: $67
	sbc  c                                           ; $49d9: $99
	xor  d                                           ; $49da: $aa
	res  7, e                                        ; $49db: $cb $bb
	cp   d                                           ; $49dd: $ba
	sbc  b                                           ; $49de: $98
	add  a                                           ; $49df: $87
	ld   h, l                                        ; $49e0: $65
	ld   d, h                                        ; $49e1: $54
	ld   b, h                                        ; $49e2: $44
	ld   b, l                                        ; $49e3: $45
	ld   h, a                                        ; $49e4: $67
	adc  c                                           ; $49e5: $89
	sbc  e                                           ; $49e6: $9b
	cp   h                                           ; $49e7: $bc
	set  1, e                                        ; $49e8: $cb $cb
	cp   d                                           ; $49ea: $ba
	sub  a                                           ; $49eb: $97
	halt                                             ; $49ec: $76
	ld   d, l                                        ; $49ed: $55
	ld   b, h                                        ; $49ee: $44
	ld   b, h                                        ; $49ef: $44
	ld   d, [hl]                                     ; $49f0: $56
	ld   a, c                                        ; $49f1: $79
	sbc  d                                           ; $49f2: $9a
	cp   e                                           ; $49f3: $bb
	call z, $aacb                                    ; $49f4: $cc $cb $aa
	sbc  b                                           ; $49f7: $98
	halt                                             ; $49f8: $76
	ld   d, h                                        ; $49f9: $54
	ld   b, h                                        ; $49fa: $44
	inc  [hl]                                        ; $49fb: $34
	ld   d, l                                        ; $49fc: $55
	ld   a, b                                        ; $49fd: $78
	sbc  d                                           ; $49fe: $9a
	cp   h                                           ; $49ff: $bc
	call c, $bacb                                    ; $4a00: $dc $cb $ba
	sbc  b                                           ; $4a03: $98
	halt                                             ; $4a04: $76
	ld   d, h                                        ; $4a05: $54
	ld   b, h                                        ; $4a06: $44
	ld   b, h                                        ; $4a07: $44
	ld   d, l                                        ; $4a08: $55
	ld   h, a                                        ; $4a09: $67
	adc  c                                           ; $4a0a: $89
	xor  h                                           ; $4a0b: $ac
	db   $dd                                         ; $4a0c: $dd
	call c, $98ba                                    ; $4a0d: $dc $ba $98
	ld   [hl], a                                     ; $4a10: $77
	ld   d, l                                        ; $4a11: $55
	ld   b, h                                        ; $4a12: $44
	ld   b, h                                        ; $4a13: $44
	ld   b, l                                        ; $4a14: $45
	ld   h, a                                        ; $4a15: $67
	adc  c                                           ; $4a16: $89
	xor  e                                           ; $4a17: $ab
	call z, $bbcc                                    ; $4a18: $cc $cc $bb
	xor  c                                           ; $4a1b: $a9
	add  a                                           ; $4a1c: $87
	ld   h, l                                        ; $4a1d: $65
	ld   b, h                                        ; $4a1e: $44
	ld   b, h                                        ; $4a1f: $44
	ld   b, l                                        ; $4a20: $45
	ld   d, a                                        ; $4a21: $57
	adc  b                                           ; $4a22: $88
	sbc  e                                           ; $4a23: $9b
	call z, $cbcd                                    ; $4a24: $cc $cd $cb
	xor  d                                           ; $4a27: $aa
	add  a                                           ; $4a28: $87
	ld   h, l                                        ; $4a29: $65
	ld   b, h                                        ; $4a2a: $44
	ld   b, e                                        ; $4a2b: $43
	ld   b, h                                        ; $4a2c: $44
	ld   d, [hl]                                     ; $4a2d: $56
	ld   a, b                                        ; $4a2e: $78
	sbc  d                                           ; $4a2f: $9a
	cp   h                                           ; $4a30: $bc
	call c, $bbcd                                    ; $4a31: $dc $cd $bb
	xor  b                                           ; $4a34: $a8
	halt                                             ; $4a35: $76
	ld   d, h                                        ; $4a36: $54
	inc  sp                                          ; $4a37: $33
	inc  sp                                          ; $4a38: $33
	ld   b, l                                        ; $4a39: $45
	ld   h, a                                        ; $4a3a: $67
	adc  c                                           ; $4a3b: $89
	cp   h                                           ; $4a3c: $bc
	call c, $cbcd                                    ; $4a3d: $dc $cd $cb
	xor  b                                           ; $4a40: $a8
	halt                                             ; $4a41: $76
	ld   d, h                                        ; $4a42: $54
	inc  sp                                          ; $4a43: $33
	inc  sp                                          ; $4a44: $33
	ld   b, l                                        ; $4a45: $45
	ld   h, a                                        ; $4a46: $67
	sbc  c                                           ; $4a47: $99
	xor  e                                           ; $4a48: $ab
	call $cccc                                       ; $4a49: $cd $cc $cc
	cp   c                                           ; $4a4c: $b9
	sub  a                                           ; $4a4d: $97
	ld   h, l                                        ; $4a4e: $65
	ld   b, e                                        ; $4a4f: $43
	inc  sp                                          ; $4a50: $33
	inc  [hl]                                        ; $4a51: $34
	ld   d, [hl]                                     ; $4a52: $56
	ld   a, c                                        ; $4a53: $79
	sbc  e                                           ; $4a54: $9b
	call z, $ccdc                                    ; $4a55: $cc $dc $cc
	cp   d                                           ; $4a58: $ba
	xor  b                                           ; $4a59: $a8
	halt                                             ; $4a5a: $76
	ld   d, e                                        ; $4a5b: $53
	inc  sp                                          ; $4a5c: $33
	inc  sp                                          ; $4a5d: $33
	ld   b, l                                        ; $4a5e: $45
	ld   h, a                                        ; $4a5f: $67
	adc  d                                           ; $4a60: $8a
	xor  e                                           ; $4a61: $ab
	call c, $dccd                                    ; $4a62: $dc $cd $dc
	cp   d                                           ; $4a65: $ba
	sub  a                                           ; $4a66: $97
	ld   h, h                                        ; $4a67: $64
	inc  sp                                          ; $4a68: $33
	inc  sp                                          ; $4a69: $33
	inc  [hl]                                        ; $4a6a: $34
	ld   d, [hl]                                     ; $4a6b: $56
	ld   a, c                                        ; $4a6c: $79
	xor  e                                           ; $4a6d: $ab
	call z, $cddc                                    ; $4a6e: $cc $dc $cd
	res  5, b                                        ; $4a71: $cb $a8
	halt                                             ; $4a73: $76
	ld   d, h                                        ; $4a74: $54
	inc  sp                                          ; $4a75: $33
	inc  sp                                          ; $4a76: $33
	ld   b, l                                        ; $4a77: $45
	ld   h, a                                        ; $4a78: $67
	sbc  c                                           ; $4a79: $99
	xor  h                                           ; $4a7a: $ac
	call $dddd                                       ; $4a7b: $cd $dd $dd
	jp   z, Jump_0e5_6587                            ; $4a7e: $ca $87 $65

	ld   b, e                                        ; $4a81: $43
	inc  sp                                          ; $4a82: $33
	inc  [hl]                                        ; $4a83: $34
	ld   d, [hl]                                     ; $4a84: $56
	ld   a, b                                        ; $4a85: $78
	sbc  d                                           ; $4a86: $9a
	cp   h                                           ; $4a87: $bc
	db   $dd                                         ; $4a88: $dd
	db   $dd                                         ; $4a89: $dd
	db   $db                                         ; $4a8a: $db
	cp   c                                           ; $4a8b: $b9
	add  [hl]                                        ; $4a8c: $86
	ld   d, h                                        ; $4a8d: $54
	inc  sp                                          ; $4a8e: $33
	inc  sp                                          ; $4a8f: $33
	ld   b, h                                        ; $4a90: $44
	ld   d, a                                        ; $4a91: $57
	ld   a, b                                        ; $4a92: $78
	xor  d                                           ; $4a93: $aa
	call z, $dccd                                    ; $4a94: $cc $cd $dc
	res  5, b                                        ; $4a97: $cb $a8
	ld   h, l                                        ; $4a99: $65
	ld   b, e                                        ; $4a9a: $43
	inc  sp                                          ; $4a9b: $33
	inc  sp                                          ; $4a9c: $33
	ld   b, l                                        ; $4a9d: $45
	ld   h, a                                        ; $4a9e: $67
	sbc  c                                           ; $4a9f: $99
	cp   h                                           ; $4aa0: $bc
	call z, $dddd                                    ; $4aa1: $cc $dd $dd
	cp   d                                           ; $4aa4: $ba
	add  a                                           ; $4aa5: $87
	ld   h, l                                        ; $4aa6: $65
	ld   b, e                                        ; $4aa7: $43
	inc  sp                                          ; $4aa8: $33
	inc  [hl]                                        ; $4aa9: $34
	ld   b, [hl]                                     ; $4aaa: $46
	ld   [hl], a                                     ; $4aab: $77
	adc  d                                           ; $4aac: $8a
	xor  h                                           ; $4aad: $ac
	call z, $cccd                                    ; $4aae: $cc $cd $cc
	cp   d                                           ; $4ab1: $ba
	add  [hl]                                        ; $4ab2: $86
	ld   d, h                                        ; $4ab3: $54
	inc  sp                                          ; $4ab4: $33
	inc  sp                                          ; $4ab5: $33
	inc  [hl]                                        ; $4ab6: $34
	ld   d, [hl]                                     ; $4ab7: $56
	ld   a, b                                        ; $4ab8: $78
	sbc  d                                           ; $4ab9: $9a
	cp   e                                           ; $4aba: $bb
	call $ccdd                                       ; $4abb: $cd $dd $cc
	xor  c                                           ; $4abe: $a9
	halt                                             ; $4abf: $76
	ld   d, h                                        ; $4ac0: $54
	inc  sp                                          ; $4ac1: $33
	inc  sp                                          ; $4ac2: $33
	inc  [hl]                                        ; $4ac3: $34
	ld   d, [hl]                                     ; $4ac4: $56
	ld   a, b                                        ; $4ac5: $78
	sbc  d                                           ; $4ac6: $9a
	cp   h                                           ; $4ac7: $bc
	call $cbde                                       ; $4ac8: $cd $de $cb
	cp   c                                           ; $4acb: $b9
	add  [hl]                                        ; $4acc: $86
	ld   d, h                                        ; $4acd: $54
	inc  sp                                          ; $4ace: $33
	inc  sp                                          ; $4acf: $33
	inc  [hl]                                        ; $4ad0: $34
	ld   d, [hl]                                     ; $4ad1: $56
	ld   a, b                                        ; $4ad2: $78
	sbc  d                                           ; $4ad3: $9a
	cp   h                                           ; $4ad4: $bc
	call $dbed                                       ; $4ad5: $cd $ed $db
	cp   c                                           ; $4ad8: $b9
	halt                                             ; $4ad9: $76
	ld   d, h                                        ; $4ada: $54
	inc  sp                                          ; $4adb: $33
	inc  sp                                          ; $4adc: $33
	ld   b, h                                        ; $4add: $44
	ld   d, [hl]                                     ; $4ade: $56
	ld   a, b                                        ; $4adf: $78
	sbc  d                                           ; $4ae0: $9a
	xor  e                                           ; $4ae1: $ab
	call $dbdc                                       ; $4ae2: $cd $dc $db
	cp   c                                           ; $4ae5: $b9
	add  [hl]                                        ; $4ae6: $86
	ld   d, l                                        ; $4ae7: $55
	ld   b, e                                        ; $4ae8: $43
	ld   b, h                                        ; $4ae9: $44
	ld   b, l                                        ; $4aea: $45
	ld   h, [hl]                                     ; $4aeb: $66
	ld   l, b                                        ; $4aec: $68
	adc  b                                           ; $4aed: $88
	xor  d                                           ; $4aee: $aa
	set  1, l                                        ; $4aef: $cb $cd
	res  7, d                                        ; $4af1: $cb $ba
	add  [hl]                                        ; $4af3: $86
	ld   d, l                                        ; $4af4: $55
	ld   b, h                                        ; $4af5: $44
	ld   b, h                                        ; $4af6: $44
	ld   d, l                                        ; $4af7: $55
	ld   d, [hl]                                     ; $4af8: $56
	ld   [hl], a                                     ; $4af9: $77
	adc  c                                           ; $4afa: $89
	sbc  d                                           ; $4afb: $9a
	cp   e                                           ; $4afc: $bb
	call $bacc                                       ; $4afd: $cd $cc $ba
	add  [hl]                                        ; $4b00: $86
	ld   d, h                                        ; $4b01: $54
	ld   b, h                                        ; $4b02: $44
	ld   b, l                                        ; $4b03: $45
	ld   d, [hl]                                     ; $4b04: $56
	ld   h, [hl]                                     ; $4b05: $66
	ld   [hl], a                                     ; $4b06: $77
	adc  c                                           ; $4b07: $89
	sbc  c                                           ; $4b08: $99
	cp   h                                           ; $4b09: $bc
	call z, $cadc                                    ; $4b0a: $cc $dc $ca
	add  [hl]                                        ; $4b0d: $86
	ld   d, h                                        ; $4b0e: $54
	inc  [hl]                                        ; $4b0f: $34
	ld   b, h                                        ; $4b10: $44
	ld   d, [hl]                                     ; $4b11: $56
	ld   h, [hl]                                     ; $4b12: $66
	ld   a, b                                        ; $4b13: $78
	ld   a, b                                        ; $4b14: $78
	sbc  c                                           ; $4b15: $99
	xor  e                                           ; $4b16: $ab
	call $dacd                                       ; $4b17: $cd $cd $da
	sub  a                                           ; $4b1a: $97
	ld   d, h                                        ; $4b1b: $54
	inc  sp                                          ; $4b1c: $33
	ld   b, h                                        ; $4b1d: $44
	ld   d, [hl]                                     ; $4b1e: $56
	ld   [hl], a                                     ; $4b1f: $77
	ld   a, b                                        ; $4b20: $78
	ld   [hl], a                                     ; $4b21: $77
	adc  b                                           ; $4b22: $88
	xor  e                                           ; $4b23: $ab
	call $dbdd                                       ; $4b24: $cd $dd $db
	xor  b                                           ; $4b27: $a8
	ld   d, h                                        ; $4b28: $54
	ld   [hl-], a                                    ; $4b29: $32
	dec  [hl]                                        ; $4b2a: $35
	ld   b, [hl]                                     ; $4b2b: $46
	ld   [hl], a                                     ; $4b2c: $77
	ld   [hl], a                                     ; $4b2d: $77
	add  a                                           ; $4b2e: $87
	ld   a, c                                        ; $4b2f: $79
	xor  d                                           ; $4b30: $aa
	cp   h                                           ; $4b31: $bc
	db   $dd                                         ; $4b32: $dd
	db   $dd                                         ; $4b33: $dd
	xor  c                                           ; $4b34: $a9
	ld   [hl], l                                     ; $4b35: $75
	ld   [hl-], a                                    ; $4b36: $32
	inc  sp                                          ; $4b37: $33
	ld   [hl], $67                                   ; $4b38: $36 $67
	adc  b                                           ; $4b3a: $88
	sbc  b                                           ; $4b3b: $98
	adc  c                                           ; $4b3c: $89
	sbc  d                                           ; $4b3d: $9a
	xor  d                                           ; $4b3e: $aa
	call $cbdd                                       ; $4b3f: $cd $dd $cb
	add  [hl]                                        ; $4b42: $86
	ld   b, d                                        ; $4b43: $42
	ld   [de], a                                     ; $4b44: $12
	ld   b, h                                        ; $4b45: $44
	ld   d, a                                        ; $4b46: $57
	ld   a, b                                        ; $4b47: $78
	ld   a, b                                        ; $4b48: $78
	sbc  b                                           ; $4b49: $98
	sbc  d                                           ; $4b4a: $9a
	xor  h                                           ; $4b4b: $ac
	cp   h                                           ; $4b4c: $bc
	call c, $a7db                                    ; $4b4d: $dc $db $a7
	ld   b, e                                        ; $4b50: $43
	ld   hl, $4635                                   ; $4b51: $21 $35 $46
	ld   a, b                                        ; $4b54: $78
	ld   [hl], a                                     ; $4b55: $77
	xor  b                                           ; $4b56: $a8
	adc  d                                           ; $4b57: $8a
	xor  e                                           ; $4b58: $ab
	call $dcdd                                       ; $4b59: $cd $dd $dc
	xor  d                                           ; $4b5c: $aa
	ld   h, e                                        ; $4b5d: $63
	ld   hl, $5513                                   ; $4b5e: $21 $13 $55
	ld   a, c                                        ; $4b61: $79
	ld   [hl], a                                     ; $4b62: $77
	adc  c                                           ; $4b63: $89
	adc  c                                           ; $4b64: $89
	cp   e                                           ; $4b65: $bb
	xor  h                                           ; $4b66: $ac
	db   $dd                                         ; $4b67: $dd
	call c, $85b9                                    ; $4b68: $dc $b9 $85
	ld   [hl-], a                                    ; $4b6b: $32
	inc  de                                          ; $4b6c: $13
	ld   d, h                                        ; $4b6d: $54
	ld   h, [hl]                                     ; $4b6e: $66
	ld   a, b                                        ; $4b6f: $78
	adc  c                                           ; $4b70: $89
	sbc  b                                           ; $4b71: $98
	sbc  d                                           ; $4b72: $9a
	xor  e                                           ; $4b73: $ab
	cp   h                                           ; $4b74: $bc
	call z, $96cb                                    ; $4b75: $cc $cb $96
	ld   b, e                                        ; $4b78: $43
	ld   hl, $5744                                   ; $4b79: $21 $44 $57
	ld   [hl], a                                     ; $4b7c: $77
	ld   a, c                                        ; $4b7d: $79
	ld   a, c                                        ; $4b7e: $79
	xor  c                                           ; $4b7f: $a9
	sbc  h                                           ; $4b80: $9c
	cp   h                                           ; $4b81: $bc
	call $c9dc                                       ; $4b82: $cd $dc $c9
	ld   d, h                                        ; $4b85: $54
	ld   [hl-], a                                    ; $4b86: $32
	inc  d                                           ; $4b87: $14
	ld   d, [hl]                                     ; $4b88: $56
	ld   [hl], a                                     ; $4b89: $77
	adc  b                                           ; $4b8a: $88
	ld   a, c                                        ; $4b8b: $79
	sbc  b                                           ; $4b8c: $98
	xor  e                                           ; $4b8d: $ab
	call z, $cccc                                    ; $4b8e: $cc $cc $cc
	jp   z, $3385                                    ; $4b91: $ca $85 $33

	ld   [de], a                                     ; $4b94: $12
	ld   b, h                                        ; $4b95: $44
	ld   h, a                                        ; $4b96: $67
	add  a                                           ; $4b97: $87
	adc  c                                           ; $4b98: $89
	adc  c                                           ; $4b99: $89
	xor  c                                           ; $4b9a: $a9
	cp   e                                           ; $4b9b: $bb
	cp   h                                           ; $4b9c: $bc
	call z, $b7ba                                    ; $4b9d: $cc $ba $b7
	ld   b, e                                        ; $4ba0: $43
	ld   hl, $4635                                   ; $4ba1: $21 $35 $46
	add  a                                           ; $4ba4: $87
	sbc  c                                           ; $4ba5: $99
	sbc  c                                           ; $4ba6: $99
	sbc  d                                           ; $4ba7: $9a
	sbc  e                                           ; $4ba8: $9b
	jp   z, $cbcd                                    ; $4ba9: $ca $cd $cb

	cp   d                                           ; $4bac: $ba
	ld   h, h                                        ; $4bad: $64
	ld   [hl-], a                                    ; $4bae: $32
	inc  d                                           ; $4baf: $14
	ld   h, h                                        ; $4bb0: $64
	ld   a, c                                        ; $4bb1: $79
	ld   d, a                                        ; $4bb2: $57
	xor  c                                           ; $4bb3: $a9
	sbc  e                                           ; $4bb4: $9b
	cp   c                                           ; $4bb5: $b9
	cp   l                                           ; $4bb6: $bd
	xor  h                                           ; $4bb7: $ac
	db   $db                                         ; $4bb8: $db
	res  2, [hl]                                     ; $4bb9: $cb $96
	ld   b, e                                        ; $4bbb: $43
	ld   [hl+], a                                    ; $4bbc: $22
	ld   b, [hl]                                     ; $4bbd: $46
	ld   h, a                                        ; $4bbe: $67
	add  a                                           ; $4bbf: $87
	ld   a, b                                        ; $4bc0: $78
	sbc  b                                           ; $4bc1: $98
	sbc  d                                           ; $4bc2: $9a
	cp   d                                           ; $4bc3: $ba
	cp   e                                           ; $4bc4: $bb
	xor  e                                           ; $4bc5: $ab
	res  5, c                                        ; $4bc6: $cb $a9
	ld   h, h                                        ; $4bc8: $64
	ld   [hl-], a                                    ; $4bc9: $32
	inc  d                                           ; $4bca: $14
	ld   h, l                                        ; $4bcb: $65
	ld   h, a                                        ; $4bcc: $67
	ld   [hl], a                                     ; $4bcd: $77
	sbc  c                                           ; $4bce: $99
	xor  c                                           ; $4bcf: $a9
	xor  d                                           ; $4bd0: $aa
	xor  d                                           ; $4bd1: $aa
	cp   e                                           ; $4bd2: $bb
	call z, $96ba                                    ; $4bd3: $cc $ba $96
	inc  sp                                          ; $4bd6: $33
	ld   sp, $4747                                   ; $4bd7: $31 $47 $47
	sub  [hl]                                        ; $4bda: $96
	adc  b                                           ; $4bdb: $88
	ld   a, b                                        ; $4bdc: $78
	sbc  d                                           ; $4bdd: $9a
	sbc  h                                           ; $4bde: $9c
	cp   d                                           ; $4bdf: $ba
	call z, $b8bb                                    ; $4be0: $cc $bb $b8
	ld   h, h                                        ; $4be3: $64
	inc  hl                                          ; $4be4: $23
	ld   [hl+], a                                    ; $4be5: $22
	halt                                             ; $4be6: $76
	ld   a, c                                        ; $4be7: $79
	ld   [hl], a                                     ; $4be8: $77
	ld   a, b                                        ; $4be9: $78
	adc  d                                           ; $4bea: $8a
	cp   d                                           ; $4beb: $ba
	cp   d                                           ; $4bec: $ba
	xor  h                                           ; $4bed: $ac
	cp   e                                           ; $4bee: $bb
	res  2, a                                        ; $4bef: $cb $97
	ld   d, d                                        ; $4bf1: $52
	ld   [hl-], a                                    ; $4bf2: $32
	rla                                              ; $4bf3: $17
	ld   h, a                                        ; $4bf4: $67
	xor  b                                           ; $4bf5: $a8
	adc  c                                           ; $4bf6: $89
	sub  a                                           ; $4bf7: $97
	adc  c                                           ; $4bf8: $89
	sbc  e                                           ; $4bf9: $9b
	res  7, e                                        ; $4bfa: $cb $bb
	xor  e                                           ; $4bfc: $ab
	cp   d                                           ; $4bfd: $ba
	halt                                             ; $4bfe: $76
	inc  sp                                          ; $4bff: $33
	ld   b, c                                        ; $4c00: $41
	ld   b, [hl]                                     ; $4c01: $46
	adc  b                                           ; $4c02: $88
	sbc  c                                           ; $4c03: $99
	ld   a, c                                        ; $4c04: $79
	sbc  c                                           ; $4c05: $99
	xor  d                                           ; $4c06: $aa
	xor  e                                           ; $4c07: $ab
	cp   e                                           ; $4c08: $bb
	cp   e                                           ; $4c09: $bb
	xor  d                                           ; $4c0a: $aa
	xor  c                                           ; $4c0b: $a9
	ld   h, h                                        ; $4c0c: $64
	inc  sp                                          ; $4c0d: $33
	inc  hl                                          ; $4c0e: $23
	ld   [hl], a                                     ; $4c0f: $77
	ld   a, d                                        ; $4c10: $7a
	xor  b                                           ; $4c11: $a8
	adc  d                                           ; $4c12: $8a
	add  a                                           ; $4c13: $87
	xor  c                                           ; $4c14: $a9
	sbc  h                                           ; $4c15: $9c
	cp   d                                           ; $4c16: $ba
	cp   e                                           ; $4c17: $bb
	xor  c                                           ; $4c18: $a9
	sub  l                                           ; $4c19: $95
	inc  sp                                          ; $4c1a: $33
	ld   sp, $5a57                                   ; $4c1b: $31 $57 $5a
	and  [hl]                                        ; $4c1e: $a6
	sbc  c                                           ; $4c1f: $99
	ld   a, d                                        ; $4c20: $7a
	xor  b                                           ; $4c21: $a8
	sbc  d                                           ; $4c22: $9a
	sbc  c                                           ; $4c23: $99
	jp   z, $a7ab                                    ; $4c24: $ca $ab $a7

	add  l                                           ; $4c27: $85
	dec  h                                           ; $4c28: $25
	inc  hl                                          ; $4c29: $23
	ld   [hl], l                                     ; $4c2a: $75
	ld   a, d                                        ; $4c2b: $7a
	ld   a, c                                        ; $4c2c: $79
	sbc  c                                           ; $4c2d: $99
	xor  c                                           ; $4c2e: $a9
	xor  c                                           ; $4c2f: $a9
	xor  e                                           ; $4c30: $ab
	sbc  e                                           ; $4c31: $9b
	cp   d                                           ; $4c32: $ba
	sbc  c                                           ; $4c33: $99
	halt                                             ; $4c34: $76
	ld   b, h                                        ; $4c35: $44
	ld   d, e                                        ; $4c36: $53
	ld   [hl], $68                                   ; $4c37: $36 $68
	cp   c                                           ; $4c39: $b9
	xor  b                                           ; $4c3a: $a8
	adc  c                                           ; $4c3b: $89
	adc  d                                           ; $4c3c: $8a
	xor  e                                           ; $4c3d: $ab
	xor  d                                           ; $4c3e: $aa
	res  7, d                                        ; $4c3f: $cb $ba
	sub  a                                           ; $4c41: $97
	ld   d, h                                        ; $4c42: $54
	ld   b, l                                        ; $4c43: $45
	inc  sp                                          ; $4c44: $33
	ld   h, l                                        ; $4c45: $65
	ld   a, e                                        ; $4c46: $7b
	ld   a, c                                        ; $4c47: $79
	and  a                                           ; $4c48: $a7
	xor  d                                           ; $4c49: $aa
	adc  d                                           ; $4c4a: $8a
	cp   c                                           ; $4c4b: $b9
	sbc  e                                           ; $4c4c: $9b
	xor  b                                           ; $4c4d: $a8
	ret                                              ; $4c4e: $c9


	ld   [hl], a                                     ; $4c4f: $77
	ld   d, e                                        ; $4c50: $53
	ld   d, e                                        ; $4c51: $53
	dec  [hl]                                        ; $4c52: $35
	ld   l, b                                        ; $4c53: $68
	sbc  c                                           ; $4c54: $99
	sbc  d                                           ; $4c55: $9a
	xor  c                                           ; $4c56: $a9
	sbc  d                                           ; $4c57: $9a
	xor  c                                           ; $4c58: $a9
	sbc  d                                           ; $4c59: $9a
	xor  d                                           ; $4c5a: $aa
	sbc  e                                           ; $4c5b: $9b
	add  a                                           ; $4c5c: $87
	ld   h, e                                        ; $4c5d: $63
	ld   b, l                                        ; $4c5e: $45
	inc  [hl]                                        ; $4c5f: $34
	ld   h, h                                        ; $4c60: $64
	adc  e                                           ; $4c61: $8b
	adc  b                                           ; $4c62: $88
	xor  d                                           ; $4c63: $aa
	sbc  h                                           ; $4c64: $9c
	cp   b                                           ; $4c65: $b8
	cp   c                                           ; $4c66: $b9
	sbc  d                                           ; $4c67: $9a
	sbc  b                                           ; $4c68: $98
	sbc  c                                           ; $4c69: $99
	halt                                             ; $4c6a: $76
	ld   d, h                                        ; $4c6b: $54
	ld   b, d                                        ; $4c6c: $42
	ld   [hl], $68                                   ; $4c6d: $36 $68
	xor  c                                           ; $4c6f: $a9
	xor  b                                           ; $4c70: $a8
	xor  d                                           ; $4c71: $aa
	adc  h                                           ; $4c72: $8c
	xor  c                                           ; $4c73: $a9
	xor  d                                           ; $4c74: $aa
	xor  c                                           ; $4c75: $a9
	and  a                                           ; $4c76: $a7
	ld   [hl], a                                     ; $4c77: $77
	ld   b, h                                        ; $4c78: $44
	ld   h, e                                        ; $4c79: $63
	dec  h                                           ; $4c7a: $25
	ld   b, [hl]                                     ; $4c7b: $46
	or   a                                           ; $4c7c: $b7
	sbc  e                                           ; $4c7d: $9b
	sbc  d                                           ; $4c7e: $9a
	res  5, e                                        ; $4c7f: $cb $ab
	cp   b                                           ; $4c81: $b8
	xor  d                                           ; $4c82: $aa
	adc  d                                           ; $4c83: $8a
	sub  a                                           ; $4c84: $97
	ld   h, h                                        ; $4c85: $64
	inc  hl                                          ; $4c86: $23
	ld   [hl+], a                                    ; $4c87: $22
	ld   h, [hl]                                     ; $4c88: $66
	adc  d                                           ; $4c89: $8a
	xor  c                                           ; $4c8a: $a9
	xor  d                                           ; $4c8b: $aa
	sbc  e                                           ; $4c8c: $9b
	xor  d                                           ; $4c8d: $aa
	cp   d                                           ; $4c8e: $ba
	sbc  c                                           ; $4c8f: $99
	xor  b                                           ; $4c90: $a8
	sbc  b                                           ; $4c91: $98
	ld   [hl], l                                     ; $4c92: $75
	dec  [hl]                                        ; $4c93: $35
	ld   [hl-], a                                    ; $4c94: $32
	ld   d, h                                        ; $4c95: $54
	ld   a, c                                        ; $4c96: $79
	sbc  d                                           ; $4c97: $9a
	cp   h                                           ; $4c98: $bc
	sbc  e                                           ; $4c99: $9b
	cp   c                                           ; $4c9a: $b9
	cp   d                                           ; $4c9b: $ba
	adc  c                                           ; $4c9c: $89
	cp   c                                           ; $4c9d: $b9
	sbc  b                                           ; $4c9e: $98
	ld   d, l                                        ; $4c9f: $55
	ld   b, e                                        ; $4ca0: $43
	ld   [hl-], a                                    ; $4ca1: $32
	ld   b, h                                        ; $4ca2: $44
	sbc  e                                           ; $4ca3: $9b
	ld   a, [hl]                                     ; $4ca4: $7e
	sbc  b                                           ; $4ca5: $98
	jp   hl                                          ; $4ca6: $e9


	xor  e                                           ; $4ca7: $ab
	xor  c                                           ; $4ca8: $a9
	sbc  e                                           ; $4ca9: $9b
	ld   a, c                                        ; $4caa: $79
	add  [hl]                                        ; $4cab: $86
	ld   [hl], a                                     ; $4cac: $77
	ld   d, h                                        ; $4cad: $54
	ld   d, c                                        ; $4cae: $51
	ld   h, $69                                      ; $4caf: $26 $69
	sbc  d                                           ; $4cb1: $9a
	cp   d                                           ; $4cb2: $ba
	ret                                              ; $4cb3: $c9


	cp   d                                           ; $4cb4: $ba
	xor  e                                           ; $4cb5: $ab
	sbc  e                                           ; $4cb6: $9b
	xor  c                                           ; $4cb7: $a9
	sub  a                                           ; $4cb8: $97
	halt                                             ; $4cb9: $76
	ld   b, d                                        ; $4cba: $42
	ld   d, e                                        ; $4cbb: $53
	rla                                              ; $4cbc: $17
	ld   h, a                                        ; $4cbd: $67
	xor  d                                           ; $4cbe: $aa
	cp   d                                           ; $4cbf: $ba
	cp   d                                           ; $4cc0: $ba
	xor  e                                           ; $4cc1: $ab
	xor  e                                           ; $4cc2: $ab
	sbc  c                                           ; $4cc3: $99
	sbc  c                                           ; $4cc4: $99
	sub  a                                           ; $4cc5: $97
	ld   [hl], l                                     ; $4cc6: $75
	inc  [hl]                                        ; $4cc7: $34
	ld   b, d                                        ; $4cc8: $42
	ld   b, [hl]                                     ; $4cc9: $46
	ld   d, a                                        ; $4cca: $57
	sbc  c                                           ; $4ccb: $99
	sbc  h                                           ; $4ccc: $9c
	set  3, e                                        ; $4ccd: $cb $db
	adc  d                                           ; $4ccf: $8a
	add  a                                           ; $4cd0: $87
	sbc  c                                           ; $4cd1: $99
	adc  c                                           ; $4cd2: $89
	add  h                                           ; $4cd3: $84
	inc  [hl]                                        ; $4cd4: $34
	ld   hl, $7a55                                   ; $4cd5: $21 $55 $7a
	ld   l, e                                        ; $4cd8: $6b
	ret  z                                           ; $4cd9: $c8

	ei                                               ; $4cda: $fb
	call z, $89aa                                    ; $4cdb: $cc $aa $89
	add  a                                           ; $4cde: $87
	and  l                                           ; $4cdf: $a5
	ld   h, h                                        ; $4ce0: $64
	inc  h                                           ; $4ce1: $24
	ld   [hl-], a                                    ; $4ce2: $32
	ld   c, c                                        ; $4ce3: $49
	sbc  c                                           ; $4ce4: $99
	jp   c, $9bab                                    ; $4ce5: $da $ab $9b

	xor  c                                           ; $4ce8: $a9
	cp   e                                           ; $4ce9: $bb
	xor  h                                           ; $4cea: $ac
	sbc  c                                           ; $4ceb: $99
	halt                                             ; $4cec: $76
	ld   b, e                                        ; $4ced: $43
	ld   [hl-], a                                    ; $4cee: $32
	inc  hl                                          ; $4cef: $23
	ld   e, c                                        ; $4cf0: $59
	cp   e                                           ; $4cf1: $bb
	sbc  e                                           ; $4cf2: $9b
	sbc  e                                           ; $4cf3: $9b
	res  5, e                                        ; $4cf4: $cb $ab
	cp   d                                           ; $4cf6: $ba
	sbc  b                                           ; $4cf7: $98
	ld   [hl], a                                     ; $4cf8: $77
	ld   h, h                                        ; $4cf9: $64
	inc  sp                                          ; $4cfa: $33
	ld   b, c                                        ; $4cfb: $41
	ld   [hl], $5a                                   ; $4cfc: $36 $5a
	sbc  e                                           ; $4cfe: $9b
	cp   d                                           ; $4cff: $ba
	ei                                               ; $4d00: $fb
	cp   h                                           ; $4d01: $bc
	sbc  d                                           ; $4d02: $9a
	adc  d                                           ; $4d03: $8a
	sbc  c                                           ; $4d04: $99
	sub  a                                           ; $4d05: $97
	ld   h, d                                        ; $4d06: $62
	inc  [hl]                                        ; $4d07: $34
	inc  hl                                          ; $4d08: $23
	ld   d, [hl]                                     ; $4d09: $56
	ld   a, c                                        ; $4d0a: $79
	res  5, [hl]                                     ; $4d0b: $cb $ae
	cp   e                                           ; $4d0d: $bb
	reti                                             ; $4d0e: $d9


	sbc  c                                           ; $4d0f: $99
	adc  b                                           ; $4d10: $88
	ld   a, c                                        ; $4d11: $79
	ld   h, [hl]                                     ; $4d12: $66
	ld   b, e                                        ; $4d13: $43
	ld   d, c                                        ; $4d14: $51
	ld   [hl], $58                                   ; $4d15: $36 $58
	xor  h                                           ; $4d17: $ac
	call z, $bbcc                                    ; $4d18: $cc $cc $bb
	cp   d                                           ; $4d1b: $ba
	sbc  e                                           ; $4d1c: $9b
	adc  b                                           ; $4d1d: $88
	add  [hl]                                        ; $4d1e: $86
	ld   b, d                                        ; $4d1f: $42
	ld   b, e                                        ; $4d20: $43
	dec  d                                           ; $4d21: $15
	ld   l, b                                        ; $4d22: $68
	xor  b                                           ; $4d23: $a8
	jp   c, $bbbe                                    ; $4d24: $da $be $bb

	res  3, c                                        ; $4d27: $cb $99
	and  a                                           ; $4d29: $a7
	add  a                                           ; $4d2a: $87
	ld   b, e                                        ; $4d2b: $43
	inc  hl                                          ; $4d2c: $23
	ld   [hl+], a                                    ; $4d2d: $22
	ld   b, [hl]                                     ; $4d2e: $46
	xor  d                                           ; $4d2f: $aa
	call c, $baac                                    ; $4d30: $dc $ac $ba
	jp   z, $9899                                    ; $4d33: $ca $99 $98

	halt                                             ; $4d36: $76
	ld   b, e                                        ; $4d37: $43
	dec  [hl]                                        ; $4d38: $35
	ld   b, d                                        ; $4d39: $42
	ld   d, h                                        ; $4d3a: $54
	ld   c, b                                        ; $4d3b: $48
	call z, $aade                                    ; $4d3c: $cc $de $aa
	ld   [$789a], a                                  ; $4d3f: $ea $9a $78
	sub  a                                           ; $4d42: $97
	ld   [hl], l                                     ; $4d43: $75
	inc  de                                          ; $4d44: $13
	ld   sp, $5a55                                   ; $4d45: $31 $55 $5a
	sbc  [hl]                                        ; $4d48: $9e
	db   $dd                                         ; $4d49: $dd
	ld   [$99bb], a                                  ; $4d4a: $ea $bb $99
	sbc  c                                           ; $4d4d: $99
	ld   [hl], a                                     ; $4d4e: $77
	ld   h, e                                        ; $4d4f: $63
	inc  hl                                          ; $4d50: $23
	ld   b, c                                        ; $4d51: $41
	ld   d, [hl]                                     ; $4d52: $56
	ld   c, b                                        ; $4d53: $48
	xor  l                                           ; $4d54: $ad
	db   $dd                                         ; $4d55: $dd
	db   $db                                         ; $4d56: $db
	cp   d                                           ; $4d57: $ba
	cp   c                                           ; $4d58: $b9
	sbc  b                                           ; $4d59: $98
	ld   h, a                                        ; $4d5a: $67
	ld   h, h                                        ; $4d5b: $64
	ld   [de], a                                     ; $4d5c: $12
	ld   sp, $9b47                                   ; $4d5d: $31 $47 $9b
	xor  l                                           ; $4d60: $ad
	xor  [hl]                                        ; $4d61: $ae
	db   $eb                                         ; $4d62: $eb
	reti                                             ; $4d63: $d9


	adc  d                                           ; $4d64: $8a
	sbc  b                                           ; $4d65: $98
	ld   [hl], a                                     ; $4d66: $77
	ld   d, e                                        ; $4d67: $53
	inc  hl                                          ; $4d68: $23
	ld   sp, $5b57                                   ; $4d69: $31 $57 $5b
	call c, $bbef                                    ; $4d6c: $dc $ef $bb
	cp   c                                           ; $4d6f: $b9
	xor  b                                           ; $4d70: $a8
	adc  c                                           ; $4d71: $89
	halt                                             ; $4d72: $76
	ld   d, c                                        ; $4d73: $51
	inc  d                                           ; $4d74: $14
	inc  d                                           ; $4d75: $14
	xor  b                                           ; $4d76: $a8
	adc  e                                           ; $4d77: $8b
	cp   e                                           ; $4d78: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d79: $cf
	cp   e                                           ; $4d7a: $bb
	jp   c, $86aa                                    ; $4d7b: $da $aa $86

	ld   h, [hl]                                     ; $4d7e: $66
	ld   [hl-], a                                    ; $4d7f: $32
	inc  sp                                          ; $4d80: $33
	inc  d                                           ; $4d81: $14
	halt                                             ; $4d82: $76
	xor  h                                           ; $4d83: $ac
	xor  l                                           ; $4d84: $ad
	db   $fd                                         ; $4d85: $fd
	db   $ed                                         ; $4d86: $ed
	sbc  b                                           ; $4d87: $98
	sub  a                                           ; $4d88: $97
	ld   h, a                                        ; $4d89: $67
	ld   h, l                                        ; $4d8a: $65
	ld   [hl+], a                                    ; $4d8b: $22
	ld   b, c                                        ; $4d8c: $41
	add  hl, sp                                      ; $4d8d: $39
	ld   h, [hl]                                     ; $4d8e: $66
	cp   h                                           ; $4d8f: $bc
	rst  JumpTable                                         ; $4d90: $df
	db   $ed                                         ; $4d91: $ed
	ret                                              ; $4d92: $c9


	adc  b                                           ; $4d93: $88
	ld   h, [hl]                                     ; $4d94: $66
	ld   [hl], a                                     ; $4d95: $77
	ld   [hl], e                                     ; $4d96: $73
	inc  h                                           ; $4d97: $24
	ld   [de], a                                     ; $4d98: $12
	ld   [hl], l                                     ; $4d99: $75
	ld   a, [hl]                                     ; $4d9a: $7e
	db   $fc                                         ; $4d9b: $fc
	db   $fd                                         ; $4d9c: $fd
	ld   a, e                                        ; $4d9d: $7b
	xor  b                                           ; $4d9e: $a8
	cp   e                                           ; $4d9f: $bb
	sbc  c                                           ; $4da0: $99
	ld   h, e                                        ; $4da1: $63
	ld   de, $5944                                   ; $4da2: $11 $44 $59
	halt                                             ; $4da5: $76
	ld   a, d                                        ; $4da6: $7a
	adc  $fd                                         ; $4da7: $ce $fd
	db   $dd                                         ; $4da9: $dd
	sbc  c                                           ; $4daa: $99
	add  [hl]                                        ; $4dab: $86
	halt                                             ; $4dac: $76
	ld   [hl], e                                     ; $4dad: $73
	inc  d                                           ; $4dae: $14
	ld   de, $6d87                                   ; $4daf: $11 $87 $6d
	cp   h                                           ; $4db2: $bc
	db   $fd                                         ; $4db3: $fd
	call $9797                                       ; $4db4: $cd $97 $97
	ld   a, c                                        ; $4db7: $79
	add  [hl]                                        ; $4db8: $86
	ld   b, c                                        ; $4db9: $41
	ld   sp, $4629                                   ; $4dba: $31 $29 $46
	rst  JumpTable                                         ; $4dbd: $df
	rst  $28                                         ; $4dbe: $ef
	jp   hl                                          ; $4dbf: $e9


	sbc  c                                           ; $4dc0: $99
	adc  d                                           ; $4dc1: $8a
	sbc  c                                           ; $4dc2: $99
	halt                                             ; $4dc3: $76
	ld   d, c                                        ; $4dc4: $51
	ld   b, [hl]                                     ; $4dc5: $46
	inc  d                                           ; $4dc6: $14
	ld   [hl], l                                     ; $4dc7: $75
	xor  h                                           ; $4dc8: $ac
	call z, $bdfc                                    ; $4dc9: $cc $fc $bd
	sbc  b                                           ; $4dcc: $98
	add  a                                           ; $4dcd: $87
	halt                                             ; $4dce: $76
	ld   [hl], e                                     ; $4dcf: $73
	ld   h, $22                                      ; $4dd0: $26 $22
	ld   h, h                                        ; $4dd2: $64
	ld   e, h                                        ; $4dd3: $5c
	jp   c, $adfd                                    ; $4dd4: $da $fd $ad

	xor  c                                           ; $4dd7: $a9
	cp   b                                           ; $4dd8: $b8
	ld   [hl], a                                     ; $4dd9: $77
	ld   d, e                                        ; $4dda: $53
	inc  de                                          ; $4ddb: $13
	ld   h, d                                        ; $4ddc: $62
	ld   e, c                                        ; $4ddd: $59
	ld   l, b                                        ; $4dde: $68
	call c, $c9af                                    ; $4ddf: $dc $af $c9
	ret                                              ; $4de2: $c9


	ld   a, d                                        ; $4de3: $7a
	halt                                             ; $4de4: $76
	add  [hl]                                        ; $4de5: $86
	ld   [hl-], a                                    ; $4de6: $32
	ld   h, d                                        ; $4de7: $62
	add  hl, hl                                      ; $4de8: $29
	ld   b, l                                        ; $4de9: $45
	set  5, a                                        ; $4dea: $cb $ef
	db   $ec                                         ; $4dec: $ec
	cp   b                                           ; $4ded: $b8
	ld   [hl], a                                     ; $4dee: $77
	ld   l, b                                        ; $4def: $68
	sub  a                                           ; $4df0: $97
	ld   [hl], c                                     ; $4df1: $71
	inc  h                                           ; $4df2: $24
	ld   d, $76                                      ; $4df3: $16 $76
	xor  h                                           ; $4df5: $ac
	rst  JumpTable                                         ; $4df6: $df
	db   $fc                                         ; $4df7: $fc
	ret                                              ; $4df8: $c9


	adc  c                                           ; $4df9: $89
	halt                                             ; $4dfa: $76
	sub  a                                           ; $4dfb: $97
	ld   d, e                                        ; $4dfc: $53
	inc  h                                           ; $4dfd: $24
	inc  h                                           ; $4dfe: $24
	add  [hl]                                        ; $4dff: $86
	ld   l, [hl]                                     ; $4e00: $6e
	call $b9fb                                       ; $4e01: $cd $fb $b9
	add  a                                           ; $4e04: $87
	sbc  b                                           ; $4e05: $98
	ld   a, b                                        ; $4e06: $78
	ld   [hl], e                                     ; $4e07: $73
	inc  hl                                          ; $4e08: $23
	inc  de                                          ; $4e09: $13
	ld   [hl], a                                     ; $4e0a: $77
	ld   l, a                                        ; $4e0b: $6f
	call c, $cafc                                    ; $4e0c: $dc $fc $ca
	add  a                                           ; $4e0f: $87
	ld   h, [hl]                                     ; $4e10: $66

jr_0e5_4e11:
	ld   [hl], a                                     ; $4e11: $77
	add  h                                           ; $4e12: $84
	dec  h                                           ; $4e13: $25
	inc  de                                          ; $4e14: $13
	sub  l                                           ; $4e15: $95
	sbc  a                                           ; $4e16: $9f
	cp   [hl]                                        ; $4e17: $be
	ei                                               ; $4e18: $fb
	cp   d                                           ; $4e19: $ba
	ld   h, a                                        ; $4e1a: $67
	halt                                             ; $4e1b: $76
	sbc  b                                           ; $4e1c: $98
	ld   d, h                                        ; $4e1d: $54
	inc  sp                                          ; $4e1e: $33
	ld   d, $86                                      ; $4e1f: $16 $86
	cp   l                                           ; $4e21: $bd
	call z, $a9eb                                    ; $4e22: $cc $eb $a9
	xor  b                                           ; $4e25: $a8
	add  a                                           ; $4e26: $87
	ld   h, [hl]                                     ; $4e27: $66
	ld   b, c                                        ; $4e28: $41
	inc  [hl]                                        ; $4e29: $34
	rla                                              ; $4e2a: $17
	add  a                                           ; $4e2b: $87
	cp   $be                                         ; $4e2c: $fe $be
	ret                                              ; $4e2e: $c9


	ret  z                                           ; $4e2f: $c8

	ld   a, c                                        ; $4e30: $79
	ld   [hl], a                                     ; $4e31: $77
	add  [hl]                                        ; $4e32: $86
	ld   b, d                                        ; $4e33: $42
	ld   [hl-], a                                    ; $4e34: $32
	add  hl, sp                                      ; $4e35: $39
	ld   h, [hl]                                     ; $4e36: $66
	xor  $bf                                         ; $4e37: $ee $bf
	add  sp, -$19                                    ; $4e39: $e8 $e7
	ld   e, b                                        ; $4e3b: $58
	ld   b, h                                        ; $4e3c: $44
	add  l                                           ; $4e3d: $85
	dec  [hl]                                        ; $4e3e: $35
	ld   b, c                                        ; $4e3f: $41
	ld   a, c                                        ; $4e40: $79
	ld   c, e                                        ; $4e41: $4b
	db   $fc                                         ; $4e42: $fc
	rst  $38                                         ; $4e43: $ff
	sbc  e                                           ; $4e44: $9b

jr_0e5_4e45:
	sub  [hl]                                        ; $4e45: $96
	sub  a                                           ; $4e46: $97
	ld   h, a                                        ; $4e47: $67
	ld   h, e                                        ; $4e48: $63
	inc  hl                                          ; $4e49: $23
	inc  d                                           ; $4e4a: $14
	and  a                                           ; $4e4b: $a7
	xor  a                                           ; $4e4c: $af
	call $9cf9                                       ; $4e4d: $cd $f9 $9c
	ld   a, b                                        ; $4e50: $78
	sub  [hl]                                        ; $4e51: $96
	ld   h, [hl]                                     ; $4e52: $66
	ld   [hl-], a                                    ; $4e53: $32
	ld   [hl-], a                                    ; $4e54: $32
	ld   c, c                                        ; $4e55: $49
	adc  b                                           ; $4e56: $88
	db   $eb                                         ; $4e57: $eb
	sbc  a                                           ; $4e58: $9f
	db   $db                                         ; $4e59: $db
	reti                                             ; $4e5a: $d9


	ld   h, a                                        ; $4e5b: $67
	ld   d, h                                        ; $4e5c: $54
	ld   d, h                                        ; $4e5d: $54
	inc  h                                           ; $4e5e: $24
	ld   d, e                                        ; $4e5f: $53
	sbc  h                                           ; $4e60: $9c
	ld   l, d                                        ; $4e61: $6a
	cp   c                                           ; $4e62: $b9
	cp   $ac                                         ; $4e63: $fe $ac
	ld   h, [hl]                                     ; $4e65: $66
	add  l                                           ; $4e66: $85
	ld   [hl], a                                     ; $4e67: $77
	ld   b, e                                        ; $4e68: $43
	ld   [hl-], a                                    ; $4e69: $32
	jr   z, jr_0e5_4e11                              ; $4e6a: $28 $a5

	rst  JumpTable                                         ; $4e6c: $df
	cp   a                                           ; $4e6d: $bf
	add  sp, -$67                                    ; $4e6e: $e8 $99
	ld   h, a                                        ; $4e70: $67
	add  a                                           ; $4e71: $87
	ld   h, l                                        ; $4e72: $65
	ld   [de], a                                     ; $4e73: $12
	ld   b, e                                        ; $4e74: $43
	sbc  c                                           ; $4e75: $99
	ld   l, h                                        ; $4e76: $6c
	db   $ed                                         ; $4e77: $ed
	db   $fd                                         ; $4e78: $fd
	adc  c                                           ; $4e79: $89
	add  a                                           ; $4e7a: $87
	add  a                                           ; $4e7b: $87
	ld   d, l                                        ; $4e7c: $55
	ld   sp, $2a43                                   ; $4e7d: $31 $43 $2a
	add  l                                           ; $4e80: $85
	cp   $cf                                         ; $4e81: $fe $cf
	xor  b                                           ; $4e83: $a8
	and  a                                           ; $4e84: $a7
	ld   l, c                                        ; $4e85: $69
	ld   [hl], l                                     ; $4e86: $75
	ld   h, h                                        ; $4e87: $64
	inc  de                                          ; $4e88: $13
	ld   b, e                                        ; $4e89: $43
	xor  c                                           ; $4e8a: $a9
	ld   a, a                                        ; $4e8b: $7f
	db   $fc                                         ; $4e8c: $fc
	db   $fc                                         ; $4e8d: $fc
	ld   a, d                                        ; $4e8e: $7a
	add  l                                           ; $4e8f: $85
	add  a                                           ; $4e90: $87
	ld   b, [hl]                                     ; $4e91: $46
	ld   hl, $5d52                                   ; $4e92: $21 $52 $5d
	ld   a, e                                        ; $4e95: $7b
	ei                                               ; $4e96: $fb
	rst  $38                                         ; $4e97: $ff
	ld   e, c                                        ; $4e98: $59
	add  h                                           ; $4e99: $84
	sbc  c                                           ; $4e9a: $99
	ld   l, b                                        ; $4e9b: $68
	ld   b, d                                        ; $4e9c: $42
	ld   b, h                                        ; $4e9d: $44
	jr   c, jr_0e5_4e45                              ; $4e9e: $38 $a5

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ea0: $cf
	cp   a                                           ; $4ea1: $bf
	rst  ToBoot                                         ; $4ea2: $c7
	or   a                                           ; $4ea3: $b7
	ld   a, d                                        ; $4ea4: $7a
	add  a                                           ; $4ea5: $87
	ld   h, e                                        ; $4ea6: $63
	ld   [de], a                                     ; $4ea7: $12
	inc  sp                                          ; $4ea8: $33
	sbc  c                                           ; $4ea9: $99
	sbc  a                                           ; $4eaa: $9f
	rst  $38                                         ; $4eab: $ff
	ld   a, [$5676]                                  ; $4eac: $fa $76 $56
	ld   a, b                                        ; $4eaf: $78
	ld   [hl], a                                     ; $4eb0: $77
	ld   d, e                                        ; $4eb1: $53
	ld   d, c                                        ; $4eb2: $51
	ld   c, c                                        ; $4eb3: $49
	ld   e, d                                        ; $4eb4: $5a
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	halt                                             ; $4eb7: $76
	ld   h, l                                        ; $4eb8: $65
	ld   l, b                                        ; $4eb9: $68
	halt                                             ; $4eba: $76
	ld   h, e                                        ; $4ebb: $63
	inc  [hl]                                        ; $4ebc: $34
	ld   d, $78                                      ; $4ebd: $16 $78
	rst  $38                                         ; $4ebf: $ff
	rst  $38                                         ; $4ec0: $ff
	sub  [hl]                                        ; $4ec1: $96
	ld   [hl], e                                     ; $4ec2: $73
	ld   b, a                                        ; $4ec3: $47
	add  a                                           ; $4ec4: $87
	add  [hl]                                        ; $4ec5: $86
	inc  d                                           ; $4ec6: $14
	inc  sp                                          ; $4ec7: $33
	and  [hl]                                        ; $4ec8: $a6
	sbc  a                                           ; $4ec9: $9f
	rst  $38                                         ; $4eca: $ff
	rst  $30                                         ; $4ecb: $f7
	ld   d, l                                        ; $4ecc: $55
	ld   d, [hl]                                     ; $4ecd: $56
	sbc  b                                           ; $4ece: $98
	ld   h, a                                        ; $4ecf: $67
	ld   b, d                                        ; $4ed0: $42
	ld   b, e                                        ; $4ed1: $43
	ld   [hl], a                                     ; $4ed2: $77
	ld   a, a                                        ; $4ed3: $7f
	rst  $38                                         ; $4ed4: $ff
	ei                                               ; $4ed5: $fb
	halt                                             ; $4ed6: $76
	dec  [hl]                                        ; $4ed7: $35
	ld   a, b                                        ; $4ed8: $78
	add  [hl]                                        ; $4ed9: $86
	ld   b, d                                        ; $4eda: $42
	inc  sp                                          ; $4edb: $33
	ld   c, d                                        ; $4edc: $4a
	ld   l, l                                        ; $4edd: $6d
	db   $fd                                         ; $4ede: $fd
	cp   $56                                         ; $4edf: $fe $56
	inc  sp                                          ; $4ee1: $33
	ld   h, a                                        ; $4ee2: $67
	ld   [hl], a                                     ; $4ee3: $77
	add  h                                           ; $4ee4: $84
	inc  hl                                          ; $4ee5: $23
	daa                                              ; $4ee6: $27
	adc  d                                           ; $4ee7: $8a
	rst  $38                                         ; $4ee8: $ff
	rst  $38                                         ; $4ee9: $ff
	sub  [hl]                                        ; $4eea: $96
	ld   b, e                                        ; $4eeb: $43
	ld   d, [hl]                                     ; $4eec: $56
	ld   [hl], a                                     ; $4eed: $77
	add  [hl]                                        ; $4eee: $86
	inc  sp                                          ; $4eef: $33
	dec  d                                           ; $4ef0: $15
	adc  e                                           ; $4ef1: $8b
	rst  $38                                         ; $4ef2: $ff
	rst  $38                                         ; $4ef3: $ff
	ld   [hl], a                                     ; $4ef4: $77
	ld   d, d                                        ; $4ef5: $52
	ld   d, [hl]                                     ; $4ef6: $56
	ld   a, c                                        ; $4ef7: $79
	add  l                                           ; $4ef8: $85
	ld   sp, $6b37                                   ; $4ef9: $31 $37 $6b
	rst  $38                                         ; $4efc: $ff
	rst  $38                                         ; $4efd: $ff
	adc  b                                           ; $4efe: $88
	ld   b, c                                        ; $4eff: $41
	ld   d, [hl]                                     ; $4f00: $56
	ld   b, a                                        ; $4f01: $47
	sub  a                                           ; $4f02: $97
	ld   h, h                                        ; $4f03: $64
	scf                                              ; $4f04: $37
	ld   l, c                                        ; $4f05: $69
	db   $fc                                         ; $4f06: $fc
	rst  $28                                         ; $4f07: $ef
	res  2, h                                        ; $4f08: $cb $94
	ld   b, l                                        ; $4f0a: $45
	ld   b, l                                        ; $4f0b: $45
	halt                                             ; $4f0c: $76
	inc  [hl]                                        ; $4f0d: $34
	ld   [hl], $9a                                   ; $4f0e: $36 $9a
	cp   $ef                                         ; $4f10: $fe $ef
	xor  b                                           ; $4f12: $a8
	ld   [hl], l                                     ; $4f13: $75
	ld   b, [hl]                                     ; $4f14: $46
	ld   b, h                                        ; $4f15: $44
	ld   h, l                                        ; $4f16: $65
	ld   b, [hl]                                     ; $4f17: $46
	ld   c, b                                        ; $4f18: $48
	sbc  c                                           ; $4f19: $99
	db   $fc                                         ; $4f1a: $fc
	xor  $99                                         ; $4f1b: $ee $99
	ld   [hl], h                                     ; $4f1d: $74
	ld   d, l                                        ; $4f1e: $55
	ld   d, a                                        ; $4f1f: $57
	halt                                             ; $4f20: $76
	ld   [hl-], a                                    ; $4f21: $32
	ld   b, a                                        ; $4f22: $47
	ld   a, h                                        ; $4f23: $7c
	cp   $ff                                         ; $4f24: $fe $ff
	adc  b                                           ; $4f26: $88
	ld   h, e                                        ; $4f27: $63
	ld   d, [hl]                                     ; $4f28: $56
	ld   d, [hl]                                     ; $4f29: $56
	ld   h, h                                        ; $4f2a: $64
	ld   b, e                                        ; $4f2b: $43
	ld   c, c                                        ; $4f2c: $49
	adc  [hl]                                        ; $4f2d: $8e
	db   $fd                                         ; $4f2e: $fd
	db   $fd                                         ; $4f2f: $fd
	sbc  b                                           ; $4f30: $98
	ld   d, e                                        ; $4f31: $53
	ld   d, a                                        ; $4f32: $57
	ld   d, [hl]                                     ; $4f33: $56
	ld   [hl], e                                     ; $4f34: $73
	inc  h                                           ; $4f35: $24
	ld   e, b                                        ; $4f36: $58
	xor  [hl]                                        ; $4f37: $ae
	db   $fd                                         ; $4f38: $fd
	db   $db                                         ; $4f39: $db
	sub  a                                           ; $4f3a: $97
	ld   [hl], l                                     ; $4f3b: $75
	ld   b, l                                        ; $4f3c: $45
	inc  [hl]                                        ; $4f3d: $34
	ld   h, h                                        ; $4f3e: $64
	ld   b, [hl]                                     ; $4f3f: $46
	adc  c                                           ; $4f40: $89
	cp   a                                           ; $4f41: $bf
	call $88d9                                       ; $4f42: $cd $d9 $88
	ld   h, [hl]                                     ; $4f45: $66
	ld   [hl], l                                     ; $4f46: $75
	ld   b, h                                        ; $4f47: $44
	ld   b, e                                        ; $4f48: $43
	ld   h, [hl]                                     ; $4f49: $66
	sbc  b                                           ; $4f4a: $98
	rst  JumpTable                                         ; $4f4b: $df
	sbc  $b8                                         ; $4f4c: $de $b8
	halt                                             ; $4f4e: $76
	halt                                             ; $4f4f: $76
	ld   h, l                                        ; $4f50: $65
	ld   d, a                                        ; $4f51: $57
	ld   [hl-], a                                    ; $4f52: $32
	ld   d, a                                        ; $4f53: $57
	ld   a, c                                        ; $4f54: $79
	ei                                               ; $4f55: $fb
	rst  $28                                         ; $4f56: $ef
	xor  d                                           ; $4f57: $aa
	add  h                                           ; $4f58: $84
	ld   d, h                                        ; $4f59: $54
	inc  [hl]                                        ; $4f5a: $34
	ld   h, [hl]                                     ; $4f5b: $66
	ld   [hl], $76                                   ; $4f5c: $36 $76
	xor  l                                           ; $4f5e: $ad
	call $d8fa                                       ; $4f5f: $cd $fa $d8
	ld   b, [hl]                                     ; $4f62: $46
	inc  sp                                          ; $4f63: $33
	ld   d, l                                        ; $4f64: $55
	ld   d, h                                        ; $4f65: $54
	ld   d, a                                        ; $4f66: $57
	adc  b                                           ; $4f67: $88
	xor  [hl]                                        ; $4f68: $ae
	adc  $ea                                         ; $4f69: $ce $ea
	sub  a                                           ; $4f6b: $97
	ld   b, d                                        ; $4f6c: $42
	inc  sp                                          ; $4f6d: $33
	ld   e, b                                        ; $4f6e: $58
	halt                                             ; $4f6f: $76
	ld   [hl], a                                     ; $4f70: $77
	ld   e, d                                        ; $4f71: $5a
	ld   [$ccef], a                                  ; $4f72: $ea $ef $cc
	add  e                                           ; $4f75: $83
	ld   de, $9727                                   ; $4f76: $11 $27 $97
	ld   h, a                                        ; $4f79: $67
	add  a                                           ; $4f7a: $87
	cp   h                                           ; $4f7b: $bc
	cp   l                                           ; $4f7c: $bd
	db   $dd                                         ; $4f7d: $dd
	reti                                             ; $4f7e: $d9


	ld   h, e                                        ; $4f7f: $63
	ld   de, $5736                                   ; $4f80: $11 $36 $57
	xor  c                                           ; $4f83: $a9
	xor  l                                           ; $4f84: $ad
	cp   l                                           ; $4f85: $bd
	db   $eb                                         ; $4f86: $eb
	reti                                             ; $4f87: $d9


	ld   h, l                                        ; $4f88: $65
	ld   [hl+], a                                    ; $4f89: $22
	dec  h                                           ; $4f8a: $25
	ld   h, l                                        ; $4f8b: $65
	sbc  e                                           ; $4f8c: $9b
	adc  c                                           ; $4f8d: $89
	ld   [$9abd], a                                  ; $4f8e: $ea $bd $9a
	sub  [hl]                                        ; $4f91: $96
	ld   d, l                                        ; $4f92: $55
	ld   b, h                                        ; $4f93: $44
	ld   d, l                                        ; $4f94: $55
	ld   b, a                                        ; $4f95: $47
	sbc  c                                           ; $4f96: $99
	set  1, l                                        ; $4f97: $cb $cd
	cp   l                                           ; $4f99: $bd
	cp   b                                           ; $4f9a: $b8
	ld   [hl], e                                     ; $4f9b: $73
	inc  sp                                          ; $4f9c: $33
	inc  [hl]                                        ; $4f9d: $34
	ld   b, a                                        ; $4f9e: $47
	sbc  d                                           ; $4f9f: $9a
	xor  l                                           ; $4fa0: $ad
	call c, $99cb                                    ; $4fa1: $dc $cb $99
	add  l                                           ; $4fa4: $85
	ld   b, c                                        ; $4fa5: $41
	dec  h                                           ; $4fa6: $25
	ld   [hl], $98                                   ; $4fa7: $36 $98
	sbc  [hl]                                        ; $4fa9: $9e
	db   $dd                                         ; $4faa: $dd
	ld   [$649b], a                                  ; $4fab: $ea $9b $64
	ld   b, c                                        ; $4fae: $41
	dec  h                                           ; $4faf: $25
	ld   d, a                                        ; $4fb0: $57
	xor  e                                           ; $4fb1: $ab
	xor  d                                           ; $4fb2: $aa
	jp   z, $89dc                                    ; $4fb3: $ca $dc $89

	sub  l                                           ; $4fb6: $95
	ld   d, l                                        ; $4fb7: $55
	dec  h                                           ; $4fb8: $25
	ld   d, e                                        ; $4fb9: $53
	adc  e                                           ; $4fba: $8b
	ld   a, e                                        ; $4fbb: $7b
	db   $eb                                         ; $4fbc: $eb
	db   $fd                                         ; $4fbd: $fd
	sbc  d                                           ; $4fbe: $9a
	ld   [hl], h                                     ; $4fbf: $74
	ld   d, h                                        ; $4fc0: $54
	dec  h                                           ; $4fc1: $25
	ld   b, e                                        ; $4fc2: $43
	ld   a, d                                        ; $4fc3: $7a
	sbc  h                                           ; $4fc4: $9c
	db   $fd                                         ; $4fc5: $fd
	db   $ed                                         ; $4fc6: $ed
	adc  b                                           ; $4fc7: $88
	ld   [hl], l                                     ; $4fc8: $75
	ld   d, l                                        ; $4fc9: $55
	ld   b, d                                        ; $4fca: $42
	ld   b, e                                        ; $4fcb: $43
	ld   e, e                                        ; $4fcc: $5b
	sbc  h                                           ; $4fcd: $9c
	db   $fd                                         ; $4fce: $fd
	db   $ec                                         ; $4fcf: $ec
	sbc  c                                           ; $4fd0: $99
	ld   h, h                                        ; $4fd1: $64
	ld   d, h                                        ; $4fd2: $54
	dec  h                                           ; $4fd3: $25
	ld   b, e                                        ; $4fd4: $43
	sbc  c                                           ; $4fd5: $99
	sbc  [hl]                                        ; $4fd6: $9e
	call z, $99fc                                    ; $4fd7: $cc $fc $99
	ld   [hl], l                                     ; $4fda: $75
	ld   d, h                                        ; $4fdb: $54
	inc  de                                          ; $4fdc: $13
	inc  hl                                          ; $4fdd: $23
	sbc  c                                           ; $4fde: $99
	cp   a                                           ; $4fdf: $bf
	xor  $fb                                         ; $4fe0: $ee $fb
	sub  [hl]                                        ; $4fe2: $96
	ld   d, h                                        ; $4fe3: $54
	ld   b, h                                        ; $4fe4: $44
	inc  hl                                          ; $4fe5: $23
	dec  d                                           ; $4fe6: $15
	ret                                              ; $4fe7: $c9


	rst  JumpTable                                         ; $4fe8: $df
	db   $dd                                         ; $4fe9: $dd
	reti                                             ; $4fea: $d9


	sub  a                                           ; $4feb: $97
	ld   b, h                                        ; $4fec: $44
	ld   b, c                                        ; $4fed: $41
	inc  hl                                          ; $4fee: $23
	ld   c, c                                        ; $4fef: $49
	cp   h                                           ; $4ff0: $bc
	db   $dd                                         ; $4ff1: $dd
	xor  $a9                                         ; $4ff2: $ee $a9
	ld   [hl], l                                     ; $4ff4: $75
	ld   d, e                                        ; $4ff5: $53
	ld   [hl-], a                                    ; $4ff6: $32
	ld   [hl+], a                                    ; $4ff7: $22
	ld   a, e                                        ; $4ff8: $7b
	xor  [hl]                                        ; $4ff9: $ae
	cp   $fb                                         ; $4ffa: $fe $fb
	sub  a                                           ; $4ffc: $97
	ld   b, h                                        ; $4ffd: $44
	ld   b, e                                        ; $4ffe: $43
	inc  sp                                          ; $4fff: $33
	dec  h                                           ; $5000: $25
	sbc  c                                           ; $5001: $99
	rst  JumpTable                                         ; $5002: $df
	rst  JumpTable                                         ; $5003: $df
	jp   z, $4396                                    ; $5004: $ca $96 $43

	ld   sp, $4922                                   ; $5007: $31 $22 $49
	sbc  l                                           ; $500a: $9d
	cp   $fd                                         ; $500b: $fe $fd
	xor  c                                           ; $500d: $a9
	ld   d, e                                        ; $500e: $53
	inc  hl                                          ; $500f: $23
	ld   de, $a935                                   ; $5010: $11 $35 $a9
	rst  JumpTable                                         ; $5013: $df
	rst  $38                                         ; $5014: $ff
	jp   z, $3174                                    ; $5015: $ca $74 $31

	ld   [hl+], a                                    ; $5018: $22
	inc  h                                           ; $5019: $24
	ld   a, c                                        ; $501a: $79
	xor  [hl]                                        ; $501b: $ae
	rst  $28                                         ; $501c: $ef
	ei                                               ; $501d: $fb
	and  a                                           ; $501e: $a7
	inc  sp                                          ; $501f: $33
	ld   de, $4812                                   ; $5020: $11 $12 $48
	xor  e                                           ; $5023: $ab
	cp   $ff                                         ; $5024: $fe $ff
	xor  d                                           ; $5026: $aa
	ld   [hl], d                                     ; $5027: $72
	ld   [de], a                                     ; $5028: $12
	ld   [de], a                                     ; $5029: $12
	ld   b, a                                        ; $502a: $47
	xor  d                                           ; $502b: $aa
	sbc  $ff                                         ; $502c: $de $ff
	db   $db                                         ; $502e: $db
	add  h                                           ; $502f: $84
	ld   [hl-], a                                    ; $5030: $32
	ld   hl, $7915                                   ; $5031: $21 $15 $79
	db   $dd                                         ; $5034: $dd
	rst  $28                                         ; $5035: $ef
	res  2, l                                        ; $5036: $cb $95
	ld   b, e                                        ; $5038: $43
	ld   de, $6912                                   ; $5039: $11 $12 $69
	rst  JumpTable                                         ; $503c: $df
	rst  $38                                         ; $503d: $ff
	db   $fc                                         ; $503e: $fc
	and  [hl]                                        ; $503f: $a6
	ld   [hl-], a                                    ; $5040: $32
	ld   de, $6923                                   ; $5041: $11 $23 $69
	sbc  l                                           ; $5044: $9d
	rst  $28                                         ; $5045: $ef
	cp   $a8                                         ; $5046: $fe $a8
	ld   b, d                                        ; $5048: $42
	ld   sp, $4812                                   ; $5049: $31 $12 $48
	sbc  l                                           ; $504c: $9d
	xor  $fd                                         ; $504d: $ee $fd
	cp   d                                           ; $504f: $ba
	ld   [hl-], a                                    ; $5050: $32
	ld   sp, $5823                                   ; $5051: $31 $23 $58
	sbc  d                                           ; $5054: $9a
	rst  JumpTable                                         ; $5055: $df
	rst  $38                                         ; $5056: $ff
	reti                                             ; $5057: $d9


	ld   d, d                                        ; $5058: $52
	ld   [hl+], a                                    ; $5059: $22
	ld   [de], a                                     ; $505a: $12
	ld   b, a                                        ; $505b: $47
	cp   h                                           ; $505c: $bc
	xor  $ed                                         ; $505d: $ee $ed
	ret                                              ; $505f: $c9


	ld   h, h                                        ; $5060: $64
	ld   [hl-], a                                    ; $5061: $32
	ld   de, $8c37                                   ; $5062: $11 $37 $8c
	rst  $28                                         ; $5065: $ef
	rst  $38                                         ; $5066: $ff
	bit  4, h                                        ; $5067: $cb $64
	ld   hl, $5711                                   ; $5069: $21 $11 $57
	sbc  h                                           ; $506c: $9c
	adc  $fe                                         ; $506d: $ce $fe
	ld   [$2275], a                                  ; $506f: $ea $75 $22
	ld   de, $9a56                                   ; $5072: $11 $56 $9a
	adc  $ed                                         ; $5075: $ce $ed
	db   $db                                         ; $5077: $db
	add  [hl]                                        ; $5078: $86
	ld   b, c                                        ; $5079: $41
	ld   de, $9b26                                   ; $507a: $11 $26 $9b
	rst  JumpTable                                         ; $507d: $df
	db   $ec                                         ; $507e: $ec
	reti                                             ; $507f: $d9


	ld   h, a                                        ; $5080: $67
	ld   b, h                                        ; $5081: $44
	ld   hl, $9b35                                   ; $5082: $21 $35 $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5085: $cf
	db   $ec                                         ; $5086: $ec
	res  0, l                                        ; $5087: $cb $85
	ld   [hl-], a                                    ; $5089: $32
	inc  h                                           ; $508a: $24
	ld   d, [hl]                                     ; $508b: $56
	sbc  e                                           ; $508c: $9b
	cp   l                                           ; $508d: $bd
	call c, $86cb                                    ; $508e: $dc $cb $86
	ld   d, e                                        ; $5091: $53
	ld   [hl+], a                                    ; $5092: $22
	dec  [hl]                                        ; $5093: $35
	sbc  e                                           ; $5094: $9b
	cp   l                                           ; $5095: $bd
	ei                                               ; $5096: $fb
	jp   z, Jump_0e5_5266                            ; $5097: $ca $66 $52

	inc  hl                                          ; $509a: $23
	dec  [hl]                                        ; $509b: $35
	xor  d                                           ; $509c: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $509d: $cf
	call c, Call_0e5_76b8                            ; $509e: $dc $b8 $76
	ld   b, h                                        ; $50a1: $44
	inc  sp                                          ; $50a2: $33
	ld   b, [hl]                                     ; $50a3: $46
	adc  e                                           ; $50a4: $8b
	call $b9ec                                       ; $50a5: $cd $ec $b9
	add  [hl]                                        ; $50a8: $86
	ld   b, e                                        ; $50a9: $43
	inc  hl                                          ; $50aa: $23
	ld   d, [hl]                                     ; $50ab: $56
	xor  e                                           ; $50ac: $ab
	xor  l                                           ; $50ad: $ad
	db   $db                                         ; $50ae: $db
	jp   c, Jump_0e5_4277                            ; $50af: $da $77 $42

	inc  hl                                          ; $50b2: $23
	ld   b, a                                        ; $50b3: $47
	xor  e                                           ; $50b4: $ab
	sbc  $db                                         ; $50b5: $de $db
	cp   c                                           ; $50b7: $b9
	ld   [hl], a                                     ; $50b8: $77
	ld   b, e                                        ; $50b9: $43
	inc  hl                                          ; $50ba: $23
	ld   b, [hl]                                     ; $50bb: $46
	xor  h                                           ; $50bc: $ac
	sbc  $cb                                         ; $50bd: $de $cb
	ret  z                                           ; $50bf: $c8

	ld   h, l                                        ; $50c0: $65
	inc  sp                                          ; $50c1: $33
	inc  [hl]                                        ; $50c2: $34
	ld   l, b                                        ; $50c3: $68
	xor  e                                           ; $50c4: $ab
	cp   h                                           ; $50c5: $bc
	cp   d                                           ; $50c6: $ba
	cp   c                                           ; $50c7: $b9
	sub  a                                           ; $50c8: $97
	ld   b, e                                        ; $50c9: $43
	inc  hl                                          ; $50ca: $23
	ld   e, b                                        ; $50cb: $58
	xor  h                                           ; $50cc: $ac
	xor  $cc                                         ; $50cd: $ee $cc
	sub  a                                           ; $50cf: $97
	ld   h, l                                        ; $50d0: $65
	ld   b, h                                        ; $50d1: $44
	ld   b, l                                        ; $50d2: $45
	ld   l, c                                        ; $50d3: $69
	xor  e                                           ; $50d4: $ab
	call c, $a7aa                                    ; $50d5: $dc $aa $a7
	halt                                             ; $50d8: $76
	inc  sp                                          ; $50d9: $33
	inc  [hl]                                        ; $50da: $34
	ld   a, d                                        ; $50db: $7a
	cp   e                                           ; $50dc: $bb
	call c, $879a                                    ; $50dd: $dc $9a $87
	halt                                             ; $50e0: $76
	ld   b, l                                        ; $50e1: $45
	ld   b, l                                        ; $50e2: $45
	ld   a, c                                        ; $50e3: $79
	xor  h                                           ; $50e4: $ac
	res  7, c                                        ; $50e5: $cb $b9
	sub  a                                           ; $50e7: $97
	ld   h, l                                        ; $50e8: $65
	ld   b, h                                        ; $50e9: $44
	ld   d, [hl]                                     ; $50ea: $56
	sbc  d                                           ; $50eb: $9a
	xor  e                                           ; $50ec: $ab
	cp   e                                           ; $50ed: $bb
	xor  d                                           ; $50ee: $aa
	sub  a                                           ; $50ef: $97
	ld   h, l                                        ; $50f0: $65
	dec  [hl]                                        ; $50f1: $35
	ld   h, [hl]                                     ; $50f2: $66
	sbc  d                                           ; $50f3: $9a
	sbc  e                                           ; $50f4: $9b
	cp   d                                           ; $50f5: $ba
	sbc  c                                           ; $50f6: $99
	ld   [hl], a                                     ; $50f7: $77
	ld   [hl], l                                     ; $50f8: $75
	ld   b, l                                        ; $50f9: $45
	ld   d, a                                        ; $50fa: $57
	xor  d                                           ; $50fb: $aa
	cp   h                                           ; $50fc: $bc
	xor  d                                           ; $50fd: $aa
	sbc  b                                           ; $50fe: $98
	ld   [hl], a                                     ; $50ff: $77
	ld   h, l                                        ; $5100: $65
	ld   h, [hl]                                     ; $5101: $66
	ld   h, a                                        ; $5102: $67
	adc  c                                           ; $5103: $89
	cp   e                                           ; $5104: $bb
	sbc  c                                           ; $5105: $99
	sbc  c                                           ; $5106: $99
	add  a                                           ; $5107: $87
	ld   h, l                                        ; $5108: $65
	ld   d, l                                        ; $5109: $55
	ld   l, b                                        ; $510a: $68
	sbc  c                                           ; $510b: $99
	xor  e                                           ; $510c: $ab
	xor  c                                           ; $510d: $a9
	sub  a                                           ; $510e: $97
	ld   [hl], a                                     ; $510f: $77
	ld   h, [hl]                                     ; $5110: $66
	ld   h, [hl]                                     ; $5111: $66
	ld   a, b                                        ; $5112: $78
	adc  d                                           ; $5113: $8a
	cp   d                                           ; $5114: $ba
	xor  c                                           ; $5115: $a9
	sbc  b                                           ; $5116: $98
	ld   [hl], a                                     ; $5117: $77
	ld   h, [hl]                                     ; $5118: $66
	ld   h, a                                        ; $5119: $67
	ld   a, c                                        ; $511a: $79
	sbc  d                                           ; $511b: $9a
	xor  c                                           ; $511c: $a9
	adc  c                                           ; $511d: $89
	add  a                                           ; $511e: $87
	ld   a, b                                        ; $511f: $78
	halt                                             ; $5120: $76
	halt                                             ; $5121: $76
	ld   a, b                                        ; $5122: $78
	sbc  d                                           ; $5123: $9a
	cp   c                                           ; $5124: $b9
	sbc  c                                           ; $5125: $99
	ld   [hl], a                                     ; $5126: $77
	halt                                             ; $5127: $76
	ld   h, a                                        ; $5128: $67
	ld   a, b                                        ; $5129: $78
	sbc  b                                           ; $512a: $98
	sbc  b                                           ; $512b: $98
	sbc  c                                           ; $512c: $99
	sbc  c                                           ; $512d: $99
	sub  a                                           ; $512e: $97
	ld   [hl], a                                     ; $512f: $77
	ld   h, a                                        ; $5130: $67
	ld   a, b                                        ; $5131: $78
	adc  d                                           ; $5132: $8a
	xor  c                                           ; $5133: $a9
	sbc  c                                           ; $5134: $99
	adc  b                                           ; $5135: $88
	add  a                                           ; $5136: $87
	ld   [hl], a                                     ; $5137: $77
	ld   [hl], a                                     ; $5138: $77
	adc  b                                           ; $5139: $88
	sbc  b                                           ; $513a: $98
	adc  b                                           ; $513b: $88
	sbc  b                                           ; $513c: $98
	add  a                                           ; $513d: $87
	add  a                                           ; $513e: $87
	ld   a, b                                        ; $513f: $78
	add  a                                           ; $5140: $87
	adc  c                                           ; $5141: $89
	adc  b                                           ; $5142: $88
	sbc  b                                           ; $5143: $98
	adc  c                                           ; $5144: $89
	adc  b                                           ; $5145: $88
	add  a                                           ; $5146: $87
	ld   [hl], a                                     ; $5147: $77
	add  a                                           ; $5148: $87
	adc  b                                           ; $5149: $88
	adc  b                                           ; $514a: $88
	sbc  c                                           ; $514b: $99
	adc  b                                           ; $514c: $88
	add  a                                           ; $514d: $87
	ld   [hl], a                                     ; $514e: $77
	adc  b                                           ; $514f: $88
	adc  b                                           ; $5150: $88
	sbc  b                                           ; $5151: $98
	sbc  b                                           ; $5152: $98
	adc  c                                           ; $5153: $89
	sub  a                                           ; $5154: $97
	ld   a, b                                        ; $5155: $78
	ld   a, b                                        ; $5156: $78
	adc  b                                           ; $5157: $88
	sbc  c                                           ; $5158: $99
	adc  b                                           ; $5159: $88
	sbc  b                                           ; $515a: $98
	sbc  b                                           ; $515b: $98
	ld   a, b                                        ; $515c: $78
	adc  b                                           ; $515d: $88
	adc  b                                           ; $515e: $88
	adc  b                                           ; $515f: $88
	adc  c                                           ; $5160: $89
	adc  b                                           ; $5161: $88
	adc  b                                           ; $5162: $88
	adc  b                                           ; $5163: $88
	adc  b                                           ; $5164: $88
	ld   a, b                                        ; $5165: $78

Call_0e5_5166:
	add  a                                           ; $5166: $87
	adc  b                                           ; $5167: $88
	adc  b                                           ; $5168: $88
	adc  b                                           ; $5169: $88
	adc  b                                           ; $516a: $88
	adc  b                                           ; $516b: $88
	ld   [hl], a                                     ; $516c: $77
	adc  b                                           ; $516d: $88
	adc  b                                           ; $516e: $88
	sbc  b                                           ; $516f: $98
	adc  c                                           ; $5170: $89
	adc  c                                           ; $5171: $89
	adc  c                                           ; $5172: $89
	adc  b                                           ; $5173: $88
	adc  b                                           ; $5174: $88
	add  a                                           ; $5175: $87
	ld   a, b                                        ; $5176: $78
	ld   a, b                                        ; $5177: $78
	sbc  c                                           ; $5178: $99
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
	adc  b                                           ; $517c: $88
	sbc  b                                           ; $517d: $98
	ld   a, b                                        ; $517e: $78
	ld   [hl], a                                     ; $517f: $77
	adc  b                                           ; $5180: $88
	adc  c                                           ; $5181: $89
	sbc  c                                           ; $5182: $99
	sbc  b                                           ; $5183: $98
	adc  b                                           ; $5184: $88

Jump_0e5_5185:
	adc  b                                           ; $5185: $88
	adc  b                                           ; $5186: $88
	adc  b                                           ; $5187: $88
	adc  b                                           ; $5188: $88
	ld   a, b                                        ; $5189: $78
	adc  b                                           ; $518a: $88
	sbc  c                                           ; $518b: $99
	adc  c                                           ; $518c: $89
	sbc  b                                           ; $518d: $98
	adc  b                                           ; $518e: $88
	ld   [hl], a                                     ; $518f: $77
	add  a                                           ; $5190: $87
	adc  b                                           ; $5191: $88
	adc  b                                           ; $5192: $88
	sbc  c                                           ; $5193: $99
	sbc  c                                           ; $5194: $99
	sbc  b                                           ; $5195: $98
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
	add  c                                           ; $51c4: $81
	ld   de, $1111                                   ; $51c5: $11 $11 $11
	ld   de, $1111                                   ; $51c8: $11 $11 $11
	ld   de, $1111                                   ; $51cb: $11 $11 $11
	ld   de, $1111                                   ; $51ce: $11 $11 $11
	ld   de, $1111                                   ; $51d1: $11 $11 $11
	ld   de, $1111                                   ; $51d4: $11 $11 $11
	ld   de, $1111                                   ; $51d7: $11 $11 $11
	ld   de, $1111                                   ; $51da: $11 $11 $11
	ld   de, $1111                                   ; $51dd: $11 $11 $11
	ld   de, $1111                                   ; $51e0: $11 $11 $11
	ld   de, $1111                                   ; $51e3: $11 $11 $11
	ld   de, $1111                                   ; $51e6: $11 $11 $11
	ld   de, $1111                                   ; $51e9: $11 $11 $11
	ld   de, $1111                                   ; $51ec: $11 $11 $11
	ld   de, $1111                                   ; $51ef: $11 $11 $11
	ld   de, $1111                                   ; $51f2: $11 $11 $11
	ld   de, $4800                                   ; $51f5: $11 $00 $48
	ld   de, $1111                                   ; $51f8: $11 $11 $11
	ld   de, $1111                                   ; $51fb: $11 $11 $11
	ld   de, $1111                                   ; $51fe: $11 $11 $11
	ld   de, $5413                                   ; $5201: $11 $13 $54
	ld   d, h                                        ; $5204: $54
	ld   d, h                                        ; $5205: $54
	ld   b, c                                        ; $5206: $41
	rra                                              ; $5207: $1f
	rst  $38                                         ; $5208: $ff
	pop  af                                          ; $5209: $f1
	ld   de, $1511                                   ; $520a: $11 $11 $15
	pop  hl                                          ; $520d: $e1
	ld   de, $de1c                                   ; $520e: $11 $1c $de
	cp   h                                           ; $5211: $bc
	sbc  $b1                                         ; $5212: $de $b1
	ld   de, $1111                                   ; $5214: $11 $11 $11
	ld   de, $1111                                   ; $5217: $11 $11 $11
	ld   de, $1111                                   ; $521a: $11 $11 $11
	ld   de, $1111                                   ; $521d: $11 $11 $11
	ld   de, $5411                                   ; $5220: $11 $11 $54
	ld   b, h                                        ; $5223: $44
	push de                                          ; $5224: $d5
	ld   de, $5454                                   ; $5225: $11 $54 $54
	ld   h, a                                        ; $5228: $67
	ld   [hl], d                                     ; $5229: $72
	ld   de, $1111                                   ; $522a: $11 $11 $11
	ld   de, $1112                                   ; $522d: $11 $12 $11
	ld   [de], a                                     ; $5230: $12
	ld   de, $1111                                   ; $5231: $11 $11 $11
	ld   h, [hl]                                     ; $5234: $66
	halt                                             ; $5235: $76
	and  l                                           ; $5236: $a5
	ld   de, $8888                                   ; $5237: $11 $88 $88
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

Jump_0e5_5266:
	adc  b                                           ; $5266: $88
	sbc  b                                           ; $5267: $98
	adc  b                                           ; $5268: $88
	adc  b                                           ; $5269: $88
	sbc  c                                           ; $526a: $99
	add  a                                           ; $526b: $87
	ld   a, b                                        ; $526c: $78
	adc  b                                           ; $526d: $88
	sbc  b                                           ; $526e: $98
	adc  b                                           ; $526f: $88
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	adc  b                                           ; $5273: $88
	adc  b                                           ; $5274: $88
	adc  b                                           ; $5275: $88
	adc  c                                           ; $5276: $89
	adc  b                                           ; $5277: $88
	add  a                                           ; $5278: $87
	adc  b                                           ; $5279: $88
	sbc  b                                           ; $527a: $98
	adc  b                                           ; $527b: $88
	add  a                                           ; $527c: $87
	adc  c                                           ; $527d: $89
	add  a                                           ; $527e: $87
	ld   a, b                                        ; $527f: $78
	sbc  b                                           ; $5280: $98
	adc  c                                           ; $5281: $89
	adc  b                                           ; $5282: $88
	ld   a, b                                        ; $5283: $78
	sbc  b                                           ; $5284: $98
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	sbc  b                                           ; $5287: $98
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	sbc  b                                           ; $528b: $98
	ld   a, b                                        ; $528c: $78
	adc  b                                           ; $528d: $88
	adc  c                                           ; $528e: $89
	adc  b                                           ; $528f: $88
	add  a                                           ; $5290: $87
	adc  c                                           ; $5291: $89
	add  a                                           ; $5292: $87
	ld   a, b                                        ; $5293: $78
	adc  b                                           ; $5294: $88
	sbc  c                                           ; $5295: $99

Jump_0e5_5296:
	add  a                                           ; $5296: $87
	ld   a, b                                        ; $5297: $78
	sbc  b                                           ; $5298: $98
	add  a                                           ; $5299: $87
	adc  b                                           ; $529a: $88
	adc  b                                           ; $529b: $88
	sbc  b                                           ; $529c: $98
	ld   a, b                                        ; $529d: $78
	adc  c                                           ; $529e: $89
	ld   [hl], a                                     ; $529f: $77
	adc  b                                           ; $52a0: $88
	ld   a, b                                        ; $52a1: $78
	adc  b                                           ; $52a2: $88
	add  a                                           ; $52a3: $87
	ld   a, c                                        ; $52a4: $79
	adc  c                                           ; $52a5: $89
	add  a                                           ; $52a6: $87
	add  a                                           ; $52a7: $87
	ld   a, b                                        ; $52a8: $78
	adc  b                                           ; $52a9: $88
	adc  b                                           ; $52aa: $88
	ld   a, b                                        ; $52ab: $78
	sbc  c                                           ; $52ac: $99
	add  a                                           ; $52ad: $87
	sbc  b                                           ; $52ae: $98
	ld   [hl], a                                     ; $52af: $77
	sbc  c                                           ; $52b0: $99
	add  a                                           ; $52b1: $87
	adc  d                                           ; $52b2: $8a
	add  a                                           ; $52b3: $87
	ld   a, b                                        ; $52b4: $78
	ld   a, b                                        ; $52b5: $78
	add  a                                           ; $52b6: $87
	sbc  b                                           ; $52b7: $98
	ld   a, b                                        ; $52b8: $78
	sbc  c                                           ; $52b9: $99
	adc  c                                           ; $52ba: $89
	ld   [hl], a                                     ; $52bb: $77
	ld   a, b                                        ; $52bc: $78
	adc  b                                           ; $52bd: $88
	add  a                                           ; $52be: $87
	adc  b                                           ; $52bf: $88
	adc  b                                           ; $52c0: $88
	xor  d                                           ; $52c1: $aa
	add  [hl]                                        ; $52c2: $86
	ld   a, b                                        ; $52c3: $78
	add  a                                           ; $52c4: $87
	ld   l, b                                        ; $52c5: $68
	sbc  b                                           ; $52c6: $98
	ld   a, b                                        ; $52c7: $78
	xor  b                                           ; $52c8: $a8
	ld   h, [hl]                                     ; $52c9: $66
	sbc  d                                           ; $52ca: $9a
	sbc  b                                           ; $52cb: $98
	adc  b                                           ; $52cc: $88
	ld   [hl], a                                     ; $52cd: $77
	adc  e                                           ; $52ce: $8b
	and  a                                           ; $52cf: $a7
	ld   [hl], a                                     ; $52d0: $77
	add  a                                           ; $52d1: $87
	adc  d                                           ; $52d2: $8a
	sbc  b                                           ; $52d3: $98
	ld   [hl], a                                     ; $52d4: $77
	adc  c                                           ; $52d5: $89
	sbc  b                                           ; $52d6: $98
	ld   h, a                                        ; $52d7: $67
	halt                                             ; $52d8: $76
	ld   a, b                                        ; $52d9: $78
	sub  a                                           ; $52da: $97
	ld   [hl], a                                     ; $52db: $77
	adc  d                                           ; $52dc: $8a
	sbc  b                                           ; $52dd: $98
	sbc  b                                           ; $52de: $98
	ld   a, c                                        ; $52df: $79
	cp   b                                           ; $52e0: $b8
	ld   [hl], a                                     ; $52e1: $77
	adc  d                                           ; $52e2: $8a
	xor  d                                           ; $52e3: $aa
	sub  a                                           ; $52e4: $97
	ld   h, [hl]                                     ; $52e5: $66
	ld   a, b                                        ; $52e6: $78
	add  a                                           ; $52e7: $87
	ld   h, l                                        ; $52e8: $65
	ld   d, [hl]                                     ; $52e9: $56
	ld   e, b                                        ; $52ea: $58
	xor  $83                                         ; $52eb: $ee $83
	ld   d, a                                        ; $52ed: $57
	sbc  e                                           ; $52ee: $9b
	xor  e                                           ; $52ef: $ab
	and  [hl]                                        ; $52f0: $a6
	ld   l, d                                        ; $52f1: $6a
	cp   c                                           ; $52f2: $b9
	sbc  c                                           ; $52f3: $99
	add  [hl]                                        ; $52f4: $86
	ld   l, c                                        ; $52f5: $69
	add  [hl]                                        ; $52f6: $86
	ld   d, l                                        ; $52f7: $55
	ld   d, l                                        ; $52f8: $55
	inc  h                                           ; $52f9: $24
	adc  $b6                                         ; $52fa: $ce $b6
	adc  b                                           ; $52fc: $88
	ld   l, b                                        ; $52fd: $68
	sbc  h                                           ; $52fe: $9c
	cp   c                                           ; $52ff: $b9
	add  [hl]                                        ; $5300: $86
	adc  c                                           ; $5301: $89
	cp   h                                           ; $5302: $bc
	ret                                              ; $5303: $c9


	ld   [hl], a                                     ; $5304: $77
	ld   d, h                                        ; $5305: $54
	ld   d, a                                        ; $5306: $57
	add  [hl]                                        ; $5307: $86
	ld   hl, $ff1a                                   ; $5308: $21 $1a $ff
	ret                                              ; $530b: $c9


	ld   d, d                                        ; $530c: $52
	ld   e, b                                        ; $530d: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $530e: $cf
	or   [hl]                                        ; $530f: $b6
	ld   b, [hl]                                     ; $5310: $46
	adc  d                                           ; $5311: $8a
	cp   $c7                                         ; $5312: $fe $c7
	ld   d, h                                        ; $5314: $54
	ld   e, b                                        ; $5315: $58
	and  a                                           ; $5316: $a7
	ld   b, h                                        ; $5317: $44
	ld   de, $ff1a                                   ; $5318: $11 $1a $ff
	or   $21                                         ; $531b: $f6 $21
	scf                                              ; $531d: $37
	cp   a                                           ; $531e: $bf
	db   $fc                                         ; $531f: $fc
	ld   sp, $ff4c                                   ; $5320: $31 $4c $ff
	ei                                               ; $5323: $fb
	ld   d, c                                        ; $5324: $51
	ld   [hl], $aa                                   ; $5325: $36 $aa
	add  h                                           ; $5327: $84
	ld   de, $ef11                                   ; $5328: $11 $11 $ef
	ld   sp, hl                                      ; $532b: $f9
	ld   de, $9d25                                   ; $532c: $11 $25 $9d
	rst  $38                                         ; $532f: $ff
	or   e                                           ; $5330: $b3
	dec  d                                           ; $5331: $15
	xor  a                                           ; $5332: $af
	rst  $38                                         ; $5333: $ff
	and  e                                           ; $5334: $a3
	ld   de, $ca6a                                   ; $5335: $11 $6a $ca
	ld   b, c                                        ; $5338: $41
	ld   de, $ff1f                                   ; $5339: $11 $1f $ff
	ld   b, c                                        ; $533c: $41
	ld   de, $ff5b                                   ; $533d: $11 $5b $ff
	ld   hl, sp+$11                                  ; $5340: $f8 $11
	ld   e, d                                        ; $5342: $5a
	rst  $38                                         ; $5343: $ff
	ld   sp, hl                                      ; $5344: $f9
	ld   sp, $ad15                                   ; $5345: $31 $15 $ad
	sub  $11                                         ; $5348: $d6 $11
	ld   de, $f1ff                                   ; $534a: $11 $ff $f1
	ld   de, $cf14                                   ; $534d: $11 $14 $cf
	db   $fc                                         ; $5350: $fc
	ld   d, c                                        ; $5351: $51
	dec  d                                           ; $5352: $15
	xor  a                                           ; $5353: $af
	rst  $38                                         ; $5354: $ff
	and  c                                           ; $5355: $a1
	ld   de, $fd5d                                   ; $5356: $11 $5d $fd
	ld   h, c                                        ; $5359: $61
	ld   de, $ff1f                                   ; $535a: $11 $1f $ff
	ld   de, $3c11                                   ; $535d: $11 $11 $3c
	rst  $38                                         ; $5360: $ff
	jp   $6812                                       ; $5361: $c3 $12 $68


	rst  $38                                         ; $5364: $ff
	rst  $30                                         ; $5365: $f7
	ld   de, $ad37                                   ; $5366: $11 $37 $ad
	ret  c                                           ; $5369: $d8

	ld   de, rAUD1LEN                                   ; $536a: $11 $11 $ff
	pop  af                                          ; $536d: $f1
	ld   de, $cf11                                   ; $536e: $11 $11 $cf
	rst  $38                                         ; $5371: $ff
	ld   sp, $7f18                                   ; $5372: $31 $18 $7f
	rst  $38                                         ; $5375: $ff
	or   d                                           ; $5376: $b2
	ld   de, $dc59                                   ; $5377: $11 $59 $dc
	and  d                                           ; $537a: $a2
	ld   de, rAUD1LEN                                   ; $537b: $11 $11 $ff
	sub  c                                           ; $537e: $91
	ld   de, $bf17                                   ; $537f: $11 $17 $bf
	rst  $30                                         ; $5382: $f7
	ld   de, $af77                                   ; $5383: $11 $77 $af
	rst  $38                                         ; $5386: $ff
	ld   d, c                                        ; $5387: $51
	dec  d                                           ; $5388: $15
	ld   a, e                                        ; $5389: $7b
	call c, $1151                                    ; $538a: $dc $51 $11
	rra                                              ; $538d: $1f
	rst  $38                                         ; $538e: $ff
	ld   de, $2911                                   ; $538f: $11 $11 $29
	rst  $38                                         ; $5392: $ff
	pop  af                                          ; $5393: $f1
	inc  de                                          ; $5394: $13
	xor  b                                           ; $5395: $a8
	rst  $38                                         ; $5396: $ff
	db   $fd                                         ; $5397: $fd

Jump_0e5_5398:
	ld   sp, $8c26                                   ; $5398: $31 $26 $8c
	rst  ToBoot                                         ; $539b: $c7
	ld   hl, $bf11                                   ; $539c: $21 $11 $bf
	pop  af                                          ; $539f: $f1
	ld   [de], a                                     ; $53a0: $12
	ld   de, $ff6d                                   ; $53a1: $11 $6d $ff
	add  c                                           ; $53a4: $81
	inc  de                                          ; $53a5: $13
	ld   c, [hl]                                     ; $53a6: $4e
	rst  $38                                         ; $53a7: $ff
	ei                                               ; $53a8: $fb
	ld   d, c                                        ; $53a9: $51
	ld   [de], a                                     ; $53aa: $12
	cp   a                                           ; $53ab: $bf
	push de                                          ; $53ac: $d5
	ld   de, rAUD1LEN                                   ; $53ad: $11 $11 $ff
	pop  af                                          ; $53b0: $f1
	inc  h                                           ; $53b1: $24
	ld   de, $ff6f                                   ; $53b2: $11 $6f $ff
	ld   b, d                                        ; $53b5: $42
	ld   b, e                                        ; $53b6: $43
	ld   e, a                                        ; $53b7: $5f
	rst  $38                                         ; $53b8: $ff
	db   $fc                                         ; $53b9: $fc
	ld   b, e                                        ; $53ba: $43
	inc  d                                           ; $53bb: $14
	sbc  e                                           ; $53bc: $9b
	or   a                                           ; $53bd: $b7
	ld   sp, $ef11                                   ; $53be: $31 $11 $ef
	pop  af                                          ; $53c1: $f1
	ld   c, e                                        ; $53c2: $4b
	ld   de, $ff6e                                   ; $53c3: $11 $6e $ff
	ld   d, [hl]                                     ; $53c6: $56
	sub  d                                           ; $53c7: $92
	dec  e                                           ; $53c8: $1d
	rst  $38                                         ; $53c9: $ff
	db   $fd                                         ; $53ca: $fd
	adc  b                                           ; $53cb: $88
	ld   sp, $a858                                   ; $53cc: $31 $58 $a8
	ld   d, c                                        ; $53cf: $51
	ld   de, $f1ff                                   ; $53d0: $11 $ff $f1
	adc  e                                           ; $53d3: $8b
	ld   de, $fe8c                                   ; $53d4: $11 $8c $fe
	ld   c, e                                        ; $53d7: $4b
	or   c                                           ; $53d8: $b1
	rra                                              ; $53d9: $1f
	rst  $38                                         ; $53da: $ff
	cp   $99                                         ; $53db: $fe $99
	ld   [hl+], a                                    ; $53dd: $22
	ld   h, l                                        ; $53de: $65
	sbc  b                                           ; $53df: $98
	ld   h, c                                        ; $53e0: $61
	ld   de, $f1ff                                   ; $53e1: $11 $ff $f1
	call c, $8c11                                    ; $53e4: $dc $11 $8c
	ei                                               ; $53e7: $fb
	ld   c, [hl]                                     ; $53e8: $4e
	pop  bc                                          ; $53e9: $c1
	rra                                              ; $53ea: $1f
	rst  $38                                         ; $53eb: $ff
	rst  $38                                         ; $53ec: $ff
	db   $db                                         ; $53ed: $db
	inc  hl                                          ; $53ee: $23
	ld   b, e                                        ; $53ef: $43
	add  a                                           ; $53f0: $87
	ld   [hl], c                                     ; $53f1: $71
	ld   de, $f1ff                                   ; $53f2: $11 $ff $f1
	db   $fd                                         ; $53f5: $fd
	ld   de, $fa99                                   ; $53f6: $11 $99 $fa
	ld   l, a                                        ; $53f9: $6f
	and  c                                           ; $53fa: $a1
	ccf                                              ; $53fb: $3f
	adc  $ff                                         ; $53fc: $ce $ff
	ld   a, [$3315]                                  ; $53fe: $fa $15 $33
	halt                                             ; $5401: $76
	ld   h, c                                        ; $5402: $61
	ld   de, $f1ff                                   ; $5403: $11 $ff $f1
	db   $fd                                         ; $5406: $fd
	ld   de, $f787                                   ; $5407: $11 $87 $f7
	ld   a, a                                        ; $540a: $7f
	add  c                                           ; $540b: $81
	ld   a, a                                        ; $540c: $7f
	sbc  [hl]                                        ; $540d: $9e
	rst  $38                                         ; $540e: $ff
	ld   sp, hl                                      ; $540f: $f9
	ld   d, [hl]                                     ; $5410: $56
	ld   de, $7165                                   ; $5411: $11 $65 $71
	ld   de, $a1ff                                   ; $5414: $11 $ff $a1
	ld   hl, sp+$13                                  ; $5417: $f8 $13
	ld   [hl], a                                     ; $5419: $77
	di                                               ; $541a: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $541b: $cf
	ld   de, $8dcf                                   ; $541c: $11 $cf $8d
	rst  $38                                         ; $541f: $ff
	rst  $30                                         ; $5420: $f7
	halt                                             ; $5421: $76
	ld   [de], a                                     ; $5422: $12
	ld   b, l                                        ; $5423: $45
	ld   d, c                                        ; $5424: $51
	ld   de, $14ff                                   ; $5425: $11 $ff $14
	pop  af                                          ; $5428: $f1
	ld   a, [de]                                     ; $5429: $1a
	add  hl, de                                      ; $542a: $19
	di                                               ; $542b: $f3
	rst  $38                                         ; $542c: $ff
	ld   de, $7df8                                   ; $542d: $11 $f8 $7d
	rst  $38                                         ; $5430: $ff
	ret  c                                           ; $5431: $d8

	sub  c                                           ; $5432: $91
	inc  de                                          ; $5433: $13
	ld   [hl], $11                                   ; $5434: $36 $11
	ld   [de], a                                     ; $5436: $12
	rst  $38                                         ; $5437: $ff
	rra                                              ; $5438: $1f
	pop  af                                          ; $5439: $f1
	dec  de                                          ; $543a: $1b
	rra                                              ; $543b: $1f
	adc  b                                           ; $543c: $88
	push af                                          ; $543d: $f5
	ld   e, $d4                                      ; $543e: $1e $d4
	sbc  l                                           ; $5440: $9d
	rst  $38                                         ; $5441: $ff
	sbc  h                                           ; $5442: $9c
	sub  c                                           ; $5443: $91
	ld   de, $1145                                   ; $5444: $11 $45 $11
	rra                                              ; $5447: $1f
	ld   sp, hl                                      ; $5448: $f9
	rra                                              ; $5449: $1f
	ld   de, $1fa1                                   ; $544a: $11 $a1 $1f
	cpl                                              ; $544d: $2f
	pop  af                                          ; $544e: $f1
	ld   l, a                                        ; $544f: $6f
	ld   d, h                                        ; $5450: $54
	xor  a                                           ; $5451: $af
	cp   $ce                                         ; $5452: $fe $ce
	ld   sp, $4111                                   ; $5454: $31 $11 $41
	ld   de, $f12f                                   ; $5457: $11 $2f $f1
	rst  $38                                         ; $545a: $ff
	ld   de, $b771                                   ; $545b: $11 $71 $b7
	rst  JumpTable                                         ; $545e: $df
	ld   hl, $18fa                                   ; $545f: $21 $fa $18
	rst  $28                                         ; $5462: $ef
	ei                                               ; $5463: $fb
	rst  $30                                         ; $5464: $f7
	ld   de, $1113                                   ; $5465: $11 $13 $11
	ld   de, $1fff                                   ; $5468: $11 $ff $1f
	pop  af                                          ; $546b: $f1
	dec  de                                          ; $546c: $1b
	ld   [de], a                                     ; $546d: $12
	ld   a, d                                        ; $546e: $7a
	rst  $30                                         ; $546f: $f7
	rra                                              ; $5470: $1f
	pop  af                                          ; $5471: $f1
	ld   l, h                                        ; $5472: $6c
	rst  $38                                         ; $5473: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5474: $cf
	and  c                                           ; $5475: $a1
	ld   de, $1111                                   ; $5476: $11 $11 $11
	rra                                              ; $5479: $1f
	pop  af                                          ; $547a: $f1
	rst  $38                                         ; $547b: $ff
	ld   de, $1171                                   ; $547c: $11 $71 $11
	rst  $28                                         ; $547f: $ef
	dec  sp                                          ; $5480: $3b
	db   $fd                                         ; $5481: $fd
	daa                                              ; $5482: $27
	rst  $28                                         ; $5483: $ef
	cp   h                                           ; $5484: $bc
	ld   sp, hl                                      ; $5485: $f9
	ld   de, $1111                                   ; $5486: $11 $11 $11
	add  hl, de                                      ; $5489: $19
	rst  $38                                         ; $548a: $ff
	adc  a                                           ; $548b: $8f
	pop  af                                          ; $548c: $f1
	add  c                                           ; $548d: $81
	ld   de, $f21f                                   ; $548e: $11 $1f $f2
	rst  $38                                         ; $5491: $ff
	rst  ToBoot                                         ; $5492: $c7
	cp   [hl]                                        ; $5493: $be
	rst  $30                                         ; $5494: $f7
	rst  JumpTable                                         ; $5495: $df
	add  d                                           ; $5496: $82
	ld   de, $1111                                   ; $5497: $11 $11 $11
	rst  $38                                         ; $549a: $ff
	sbc  a                                           ; $549b: $9f
	or   $1d                                         ; $549c: $f6 $1d
	ld   de, $e711                                   ; $549e: $11 $11 $e7
	ld   l, a                                        ; $54a1: $6f
	db   $fd                                         ; $54a2: $fd
	rst  $38                                         ; $54a3: $ff
	ei                                               ; $54a4: $fb
	ld   a, l                                        ; $54a5: $7d
	and  h                                           ; $54a6: $a4
	ld   sp, $1111                                   ; $54a7: $31 $11 $11
	rra                                              ; $54aa: $1f
	or   $ff                                         ; $54ab: $f6 $ff
	dec  sp                                          ; $54ad: $3b
	add  c                                           ; $54ae: $81
	ld   de, $1f16                                   ; $54af: $11 $16 $1f
	rst  $38                                         ; $54b2: $ff
	rst  $38                                         ; $54b3: $ff
	rst  $38                                         ; $54b4: $ff
	sbc  d                                           ; $54b5: $9a
	call nc, $1122                                   ; $54b6: $d4 $22 $11
	ld   de, $fd15                                   ; $54b9: $11 $15 $fd
	sbc  a                                           ; $54bc: $9f
	rst  $30                                         ; $54bd: $f7
	di                                               ; $54be: $f3
	ld   de, $0111                                   ; $54bf: $11 $11 $01
	rst  $38                                         ; $54c2: $ff
	rst  JumpTable                                         ; $54c3: $df
	rst  $38                                         ; $54c4: $ff
	ld   a, [$21dc]                                  ; $54c5: $fa $dc $21
	ld   de, $1111                                   ; $54c8: $11 $11 $11
	ld   c, a                                        ; $54cb: $4f
	rst  ToBoot                                         ; $54cc: $c7
	rst  $38                                         ; $54cd: $ff
	xor  a                                           ; $54ce: $af
	ld   h, c                                        ; $54cf: $61
	ld   de, $1b11                                   ; $54d0: $11 $11 $1b
	ei                                               ; $54d3: $fb
	rst  $38                                         ; $54d4: $ff
	rst  $38                                         ; $54d5: $ff
	rst  JumpTable                                         ; $54d6: $df
	call nc, $1111                                   ; $54d7: $d4 $11 $11
	ld   de, $fd11                                   ; $54da: $11 $11 $fd
	ld   c, a                                        ; $54dd: $4f
	cp   $fc                                         ; $54de: $fe $fc
	inc  [hl]                                        ; $54e0: $34
	ld   de, $4c11                                   ; $54e1: $11 $11 $4c
	sbc  e                                           ; $54e4: $9b
	rst  $38                                         ; $54e5: $ff
	rst  $38                                         ; $54e6: $ff
	rst  $38                                         ; $54e7: $ff
	and  l                                           ; $54e8: $a5
	ld   b, e                                        ; $54e9: $43
	ld   de, $1a11                                   ; $54ea: $11 $11 $1a
	pop  de                                          ; $54ed: $d1
	adc  a                                           ; $54ee: $8f
	sbc  $e9                                         ; $54ef: $de $e9
	ld   [hl], a                                     ; $54f1: $77
	ld   d, h                                        ; $54f2: $54
	ld   [de], a                                     ; $54f3: $12
	sbc  b                                           ; $54f4: $98
	ld   l, c                                        ; $54f5: $69
	rst  JumpTable                                         ; $54f6: $df
	rst  $38                                         ; $54f7: $ff
	db   $ed                                         ; $54f8: $ed
	xor  d                                           ; $54f9: $aa
	xor  c                                           ; $54fa: $a9
	sub  a                                           ; $54fb: $97
	ld   b, c                                        ; $54fc: $41
	daa                                              ; $54fd: $27
	ld   b, c                                        ; $54fe: $41
	ld   b, [hl]                                     ; $54ff: $46
	ld   d, a                                        ; $5500: $57
	ld   h, h                                        ; $5501: $64
	ld   a, b                                        ; $5502: $78
	add  a                                           ; $5503: $87
	ld   l, d                                        ; $5504: $6a
	jp   z, $bc99                                    ; $5505: $ca $99 $bc

	cp   c                                           ; $5508: $b9
	xor  e                                           ; $5509: $ab
	call c, $dacd                                    ; $550a: $dc $cd $da
	add  [hl]                                        ; $550d: $86
	ld   h, h                                        ; $550e: $64
	ld   de, $2211                                   ; $550f: $11 $11 $22
	inc  de                                          ; $5512: $13
	ld   h, a                                        ; $5513: $67
	adc  b                                           ; $5514: $88
	sbc  h                                           ; $5515: $9c
	call z, $dccb                                    ; $5516: $cc $cb $dc
	xor  d                                           ; $5519: $aa
	cp   l                                           ; $551a: $bd
	db   $ec                                         ; $551b: $ec
	db   $dd                                         ; $551c: $dd
	jp   z, Jump_0e5_4164                            ; $551d: $ca $64 $41

	ld   de, $1111                                   ; $5520: $11 $11 $11
	ld   [hl], $88                                   ; $5523: $36 $88
	sbc  d                                           ; $5525: $9a
	db   $dd                                         ; $5526: $dd
	db   $db                                         ; $5527: $db
	call $abba                                       ; $5528: $cd $ba $ab
	sbc  $cd                                         ; $552b: $de $cd
	call c, Call_0e5_44a7                            ; $552d: $dc $a7 $44
	ld   hl, $1111                                   ; $5530: $21 $11 $11
	ld   [de], a                                     ; $5533: $12
	ld   d, a                                        ; $5534: $57
	sbc  b                                           ; $5535: $98
	xor  h                                           ; $5536: $ac
	call $dccc                                       ; $5537: $cd $cc $dc
	xor  d                                           ; $553a: $aa
	cp   l                                           ; $553b: $bd
	db   $dd                                         ; $553c: $dd
	call z, $85cb                                    ; $553d: $cc $cb $85
	ld   b, d                                        ; $5540: $42
	ld   de, $1111                                   ; $5541: $11 $11 $11
	inc  h                                           ; $5544: $24
	ld   a, b                                        ; $5545: $78
	adc  d                                           ; $5546: $8a
	cp   h                                           ; $5547: $bc
	set  1, h                                        ; $5548: $cb $cc
	res  7, e                                        ; $554a: $cb $bb
	db   $dd                                         ; $554c: $dd
	call z, $b8cc                                    ; $554d: $cc $cc $b8
	ld   h, h                                        ; $5550: $64
	ld   sp, $1111                                   ; $5551: $31 $11 $11
	ld   de, $7846                                   ; $5554: $11 $46 $78
	sbc  d                                           ; $5557: $9a
	call z, $cccc                                    ; $5558: $cc $cc $cc
	cp   d                                           ; $555b: $ba
	cp   l                                           ; $555c: $bd
	db   $dd                                         ; $555d: $dd
	call c, $a7dc                                    ; $555e: $dc $dc $a7
	ld   d, e                                        ; $5561: $53
	ld   hl, $1111                                   ; $5562: $21 $11 $11
	inc  de                                          ; $5565: $13
	ld   h, a                                        ; $5566: $67
	adc  c                                           ; $5567: $89
	sbc  e                                           ; $5568: $9b
	call z, $ccbc                                    ; $5569: $cc $bc $cc
	cp   e                                           ; $556c: $bb
	adc  $cd                                         ; $556d: $ce $cd
	call $86db                                       ; $556f: $cd $db $86
	ld   b, e                                        ; $5572: $43
	ld   de, $1111                                   ; $5573: $11 $11 $11
	dec  h                                           ; $5576: $25
	ld   l, b                                        ; $5577: $68
	sbc  d                                           ; $5578: $9a
	cp   h                                           ; $5579: $bc
	cp   e                                           ; $557a: $bb
	cp   h                                           ; $557b: $bc
	cp   d                                           ; $557c: $ba
	cp   h                                           ; $557d: $bc
	db   $dd                                         ; $557e: $dd
	call z, $a9dd                                    ; $557f: $cc $dd $a9
	ld   h, l                                        ; $5582: $65
	ld   sp, $1111                                   ; $5583: $31 $11 $11
	ld   [de], a                                     ; $5586: $12
	ld   b, [hl]                                     ; $5587: $46
	sbc  b                                           ; $5588: $98
	sbc  e                                           ; $5589: $9b
	call z, $cbcc                                    ; $558a: $cc $cc $cb
	xor  d                                           ; $558d: $aa
	cp   h                                           ; $558e: $bc
	call c, $cbcd                                    ; $558f: $dc $cd $cb
	sub  a                                           ; $5592: $97
	ld   d, h                                        ; $5593: $54
	ld   de, $1111                                   ; $5594: $11 $11 $11
	inc  de                                          ; $5597: $13
	ld   l, b                                        ; $5598: $68
	sbc  c                                           ; $5599: $99
	xor  e                                           ; $559a: $ab
	res  7, h                                        ; $559b: $cb $bc
	res  7, e                                        ; $559d: $cb $bb
	call $cccd                                       ; $559f: $cd $cd $cc
	cp   d                                           ; $55a2: $ba
	add  [hl]                                        ; $55a3: $86
	ld   d, e                                        ; $55a4: $53
	ld   de, $1111                                   ; $55a5: $11 $11 $11
	dec  h                                           ; $55a8: $25
	ld   a, b                                        ; $55a9: $78
	sbc  d                                           ; $55aa: $9a
	call z, $bcbb                                    ; $55ab: $cc $bb $bc
	cp   d                                           ; $55ae: $ba
	xor  h                                           ; $55af: $ac
	call z, $dccc                                    ; $55b0: $cc $cc $dc
	xor  c                                           ; $55b3: $a9
	ld   h, l                                        ; $55b4: $65
	ld   b, c                                        ; $55b5: $41
	ld   de, $1111                                   ; $55b6: $11 $11 $11
	ld   b, [hl]                                     ; $55b9: $46
	ld   a, b                                        ; $55ba: $78
	sbc  d                                           ; $55bb: $9a
	call z, $ccbc                                    ; $55bc: $cc $bc $cc
	cp   d                                           ; $55bf: $ba
	cp   h                                           ; $55c0: $bc
	call z, $cacc                                    ; $55c1: $cc $cc $ca
	add  a                                           ; $55c4: $87
	ld   d, h                                        ; $55c5: $54
	ld   hl, $0111                                   ; $55c6: $21 $11 $01
	inc  de                                          ; $55c9: $13
	ld   h, a                                        ; $55ca: $67
	adc  c                                           ; $55cb: $89
	xor  e                                           ; $55cc: $ab
	res  7, h                                        ; $55cd: $cb $bc
	call c, $ccab                                    ; $55cf: $dc $ab $cc
	call c, $c9cd                                    ; $55d2: $dc $cd $c9
	halt                                             ; $55d5: $76
	ld   d, e                                        ; $55d6: $53
	ld   de, $1111                                   ; $55d7: $11 $11 $11
	inc  h                                           ; $55da: $24
	ld   l, b                                        ; $55db: $68
	adc  d                                           ; $55dc: $8a
	cp   h                                           ; $55dd: $bc
	cp   e                                           ; $55de: $bb
	cp   h                                           ; $55df: $bc
	res  5, e                                        ; $55e0: $cb $ab
	call z, $dccc                                    ; $55e2: $cc $cc $dc
	cp   c                                           ; $55e5: $b9
	ld   h, l                                        ; $55e6: $65
	ld   b, d                                        ; $55e7: $42
	ld   de, $1111                                   ; $55e8: $11 $11 $11
	ld   [hl], $78                                   ; $55eb: $36 $78
	adc  d                                           ; $55ed: $8a
	cp   h                                           ; $55ee: $bc
	cp   e                                           ; $55ef: $bb
	cp   h                                           ; $55f0: $bc
	cp   d                                           ; $55f1: $ba
	cp   h                                           ; $55f2: $bc
	db   $dd                                         ; $55f3: $dd
	call z, $98cc                                    ; $55f4: $cc $cc $98
	ld   h, l                                        ; $55f7: $65
	ld   b, d                                        ; $55f8: $42
	ld   de, $0111                                   ; $55f9: $11 $11 $01
	ld   b, [hl]                                     ; $55fc: $46
	ld   a, b                                        ; $55fd: $78
	sbc  d                                           ; $55fe: $9a
	res  7, h                                        ; $55ff: $cb $bc
	call z, $bdca                                    ; $5601: $cc $ca $bd
	call z, $cbcc                                    ; $5604: $cc $cc $cb
	and  a                                           ; $5607: $a7
	ld   h, l                                        ; $5608: $65
	ld   b, c                                        ; $5609: $41
	ld   de, $1211                                   ; $560a: $11 $11 $12
	ld   b, [hl]                                     ; $560d: $46
	ld   a, b                                        ; $560e: $78
	sbc  e                                           ; $560f: $9b
	cp   e                                           ; $5610: $bb
	cp   h                                           ; $5611: $bc
	call z, $ccba                                    ; $5612: $cc $ba $cc
	call $cbcc                                       ; $5615: $cd $cc $cb
	and  a                                           ; $5618: $a7
	ld   h, l                                        ; $5619: $65
	ld   b, c                                        ; $561a: $41
	ld   de, $1111                                   ; $561b: $11 $11 $11
	ld   b, [hl]                                     ; $561e: $46
	ld   a, b                                        ; $561f: $78
	sbc  d                                           ; $5620: $9a
	res  7, e                                        ; $5621: $cb $bb
	call $cdcb                                       ; $5623: $cd $cb $cd
	call c, $babc                                    ; $5626: $dc $bc $ba
	sub  [hl]                                        ; $5629: $96
	ld   d, l                                        ; $562a: $55
	ld   sp, $2212                                   ; $562b: $31 $12 $22
	inc  de                                          ; $562e: $13
	ld   e, b                                        ; $562f: $58
	sbc  b                                           ; $5630: $98
	sbc  d                                           ; $5631: $9a
	cp   e                                           ; $5632: $bb
	xor  e                                           ; $5633: $ab
	call z, $cdba                                    ; $5634: $cc $ba $cd
	db   $db                                         ; $5637: $db
	res  7, c                                        ; $5638: $cb $b9
	ld   d, c                                        ; $563a: $51
	ld   d, $31                                      ; $563b: $16 $31
	scf                                              ; $563d: $37
	ld   [hl], a                                     ; $563e: $77
	ld   a, b                                        ; $563f: $78
	xor  d                                           ; $5640: $aa
	and  a                                           ; $5641: $a7
	ld   h, a                                        ; $5642: $67
	sub  a                                           ; $5643: $97
	ld   c, b                                        ; $5644: $48
	call c, $ffbe                                    ; $5645: $dc $be $ff
	res  2, [hl]                                     ; $5648: $cb $96
	ld   d, h                                        ; $564a: $54
	ld   de, $b611                                   ; $564b: $11 $11 $b6
	ld   e, a                                        ; $564e: $5f
	db   $fd                                         ; $564f: $fd
	xor  $84                                         ; $5650: $ee $84
	ld   h, l                                        ; $5652: $65
	ld   de, $7769                                   ; $5653: $11 $69 $77
	rst  $38                                         ; $5656: $ff
	rst  $38                                         ; $5657: $ff
	rst  $38                                         ; $5658: $ff
	rst  ToBoot                                         ; $5659: $c7
	ld   [hl], e                                     ; $565a: $73
	ld   de, $1111                                   ; $565b: $11 $11 $11
	ld   a, a                                        ; $565e: $7f
	xor  d                                           ; $565f: $aa
	rst  $38                                         ; $5660: $ff
	sbc  h                                           ; $5661: $9c
	sub  c                                           ; $5662: $91
	ld   [de], a                                     ; $5663: $12
	ld   hl, $fd2d                                   ; $5664: $21 $2d $fd
	rst  $28                                         ; $5667: $ef
	rst  $38                                         ; $5668: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5669: $cf
	call nz, $1146                                   ; $566a: $c4 $46 $11
	ld   b, e                                        ; $566d: $43
	ld   de, $f81d                                   ; $566e: $11 $1d $f8
	rst  $28                                         ; $5671: $ef
	push de                                          ; $5672: $d5
	sub  l                                           ; $5673: $95
	ld   de, $1933                                   ; $5674: $11 $33 $19
	rst  $38                                         ; $5677: $ff
	rst  JumpTable                                         ; $5678: $df
	rst  $38                                         ; $5679: $ff
	sbc  c                                           ; $567a: $99
	jp   c, $9457                                    ; $567b: $da $57 $94

	ld   [hl], $31                                   ; $567e: $36 $31
	ld   de, $bc8f                                   ; $5680: $11 $8f $bc
	rst  $38                                         ; $5683: $ff
	ld   b, a                                        ; $5684: $47

Jump_0e5_5685:
	ld   d, c                                        ; $5685: $51
	ld   [de], a                                     ; $5686: $12
	ld   h, e                                        ; $5687: $63
	adc  a                                           ; $5688: $8f
	rst  $38                                         ; $5689: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $568a: $cf
	ld   hl, sp+$5b                                  ; $568b: $f8 $5b
	cp   b                                           ; $568d: $b8
	ld   a, c                                        ; $568e: $79
	ld   h, e                                        ; $568f: $63
	ld   d, l                                        ; $5690: $55
	ld   de, rAUD1LEN                                   ; $5691: $11 $11 $ff
	adc  a                                           ; $5694: $8f
	di                                               ; $5695: $f3
	ld   [hl], $11                                   ; $5696: $36 $11
	add  hl, de                                      ; $5698: $19
	ld   [hl], a                                     ; $5699: $77
	rst  $38                                         ; $569a: $ff
	ld   hl, sp-$32                                  ; $569b: $f8 $ce
	sub  e                                           ; $569d: $93
	sbc  [hl]                                        ; $569e: $9e
	cp   b                                           ; $569f: $b8
	xor  c                                           ; $56a0: $a9
	inc  sp                                          ; $56a1: $33
	ld   d, d                                        ; $56a2: $52
	ld   de, $f71f                                   ; $56a3: $11 $1f $f7
	rst  $38                                         ; $56a6: $ff
	ld   h, c                                        ; $56a7: $61

Call_0e5_56a8:
	ld   h, c                                        ; $56a8: $61
	ld   de, $7d8d                                   ; $56a9: $11 $8d $7d
	rst  $38                                         ; $56ac: $ff
	ld   [hl], l                                     ; $56ad: $75
	call $fe47                                       ; $56ae: $cd $47 $fe
	add  a                                           ; $56b1: $87
	sub  d                                           ; $56b2: $92
	inc  d                                           ; $56b3: $14
	ld   b, c                                        ; $56b4: $41
	ld   de, $7dff                                   ; $56b5: $11 $ff $7d
	rst  $30                                         ; $56b8: $f7
	inc  de                                          ; $56b9: $13
	ld   de, $f919                                   ; $56ba: $11 $19 $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56bd: $cf
	push af                                          ; $56be: $f5
	inc  l                                           ; $56bf: $2c
	or   $7f                                         ; $56c0: $f6 $7f
	ld   hl, sp+$57                                  ; $56c2: $f8 $57
	ld   sp, $1145                                   ; $56c4: $31 $45 $11
	rra                                              ; $56c7: $1f
	ld   hl, sp-$31                                  ; $56c8: $f8 $cf
	ld   [hl], c                                     ; $56ca: $71
	ld   [hl+], a                                    ; $56cb: $22
	ld   de, $bb9f                                   ; $56cc: $11 $9f $bb
	rst  $38                                         ; $56cf: $ff
	ld   sp, $98af                                   ; $56d0: $31 $af $98
	rst  $38                                         ; $56d3: $ff
	sub  h                                           ; $56d4: $94
	ld   d, h                                        ; $56d5: $54
	ld   [de], a                                     ; $56d6: $12
	ld   hl, rAUD1LEN                                   ; $56d7: $21 $11 $ff
	ld   e, d                                        ; $56da: $5a
	db   $f4                                         ; $56db: $f4
	ld   de, $1b31                                   ; $56dc: $11 $31 $1b
	db   $fd                                         ; $56df: $fd
	xor  a                                           ; $56e0: $af
	di                                               ; $56e1: $f3
	ld   a, [de]                                     ; $56e2: $1a
	ei                                               ; $56e3: $fb
	adc  a                                           ; $56e4: $8f
	or   $14                                         ; $56e5: $f6 $14
	ld   b, d                                        ; $56e7: $42
	inc  hl                                          ; $56e8: $23
	ld   de, $f31f                                   ; $56e9: $11 $1f $f3
	rst  $28                                         ; $56ec: $ef
	ld   de, $3213                                   ; $56ed: $11 $13 $32
	rst  $28                                         ; $56f0: $ef
	call z, $21fc                                    ; $56f1: $cc $fc $21
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f4: $cf
	xor  d                                           ; $56f5: $aa
	cp   $51                                         ; $56f6: $fe $51
	inc  [hl]                                        ; $56f8: $34
	inc  sp                                          ; $56f9: $33
	ld   sp, $ff16                                   ; $56fa: $31 $16 $ff
	rra                                              ; $56fd: $1f
	pop  af                                          ; $56fe: $f1
	ld   [de], a                                     ; $56ff: $12
	inc  [hl]                                        ; $5700: $34
	ld   e, a                                        ; $5701: $5f
	db   $fc                                         ; $5702: $fc
	rst  $28                                         ; $5703: $ef
	sub  d                                           ; $5704: $92
	ld   a, $fb                                      ; $5705: $3e $fb
	xor  a                                           ; $5707: $af
	push de                                          ; $5708: $d5
	ld   [de], a                                     ; $5709: $12
	ld   h, l                                        ; $570a: $65
	ld   de, rAUD1LEN                                   ; $570b: $11 $11 $ff
	ld   a, c                                        ; $570e: $79
	ldh  a, [c]                                      ; $570f: $f2
	ld   de, $6d15                                   ; $5710: $11 $15 $6d
	db   $fd                                         ; $5713: $fd
	rst  JumpTable                                         ; $5714: $df
	or   h                                           ; $5715: $b4
	ld   a, [de]                                     ; $5716: $1a
	cp   $ac                                         ; $5717: $fe $ac
	or   [hl]                                        ; $5719: $b6
	ld   de, $4167                                   ; $571a: $11 $67 $41
	ld   de, $c4ff                                   ; $571d: $11 $ff $c4
	ld   hl, sp+$11                                  ; $5720: $f8 $11
	inc  d                                           ; $5722: $14
	ld   a, d                                        ; $5723: $7a
	cp   $dd                                         ; $5724: $fe $dd
	cp   b                                           ; $5726: $b8
	dec  d                                           ; $5727: $15
	rst  $38                                         ; $5728: $ff
	xor  d                                           ; $5729: $aa
	cp   d                                           ; $572a: $ba
	ld   sp, $3115                                   ; $572b: $31 $15 $31
	ld   de, $f5ff                                   ; $572e: $11 $ff $f5
	or   $11                                         ; $5731: $f6 $11
	inc  d                                           ; $5733: $14
	ld   a, e                                        ; $5734: $7b
	rst  $38                                         ; $5735: $ff
	db   $dd                                         ; $5736: $dd
	xor  b                                           ; $5737: $a8
	dec  h                                           ; $5738: $25
	rst  $38                                         ; $5739: $ff
	cp   b                                           ; $573a: $b8
	adc  b                                           ; $573b: $88
	ld   hl, $6115                                   ; $573c: $21 $15 $61
	ld   de, $98ff                                   ; $573f: $11 $ff $98
	ldh  a, [c]                                      ; $5742: $f2
	ld   de, $6d16                                   ; $5743: $11 $16 $6d
	rst  $38                                         ; $5746: $ff
	jp   z, $17ba                                    ; $5747: $ca $ba $17

	rst  $38                                         ; $574a: $ff
	and  a                                           ; $574b: $a7
	adc  c                                           ; $574c: $89
	ld   de, $1114                                   ; $574d: $11 $14 $11
	rra                                              ; $5750: $1f
	rst  $38                                         ; $5751: $ff
	adc  a                                           ; $5752: $8f
	ld   [hl], c                                     ; $5753: $71
	ld   de, $8f44                                   ; $5754: $11 $44 $8f
	cp   $99                                         ; $5757: $fe $99
	or   l                                           ; $5759: $b5
	ccf                                              ; $575a: $3f
	cp   $85                                         ; $575b: $fe $85
	ld   h, d                                        ; $575d: $62
	ld   de, $1153                                   ; $575e: $11 $53 $11
	rra                                              ; $5761: $1f
	ld   hl, sp-$01                                  ; $5762: $f8 $ff
	ld   de, $4311                                   ; $5764: $11 $11 $43
	rst  $28                                         ; $5767: $ef
	db   $fd                                         ; $5768: $fd
	xor  h                                           ; $5769: $ac
	add  d                                           ; $576a: $82
	xor  a                                           ; $576b: $af
	ei                                               ; $576c: $fb
	ld   [hl], a                                     ; $576d: $77
	ld   d, c                                        ; $576e: $51
	ld   [de], a                                     ; $576f: $12
	ld   b, c                                        ; $5770: $41
	ld   de, $eeff                                   ; $5771: $11 $ff $ee
	di                                               ; $5774: $f3

Jump_0e5_5775:
	ld   de, $3a14                                   ; $5775: $11 $14 $3a
	rst  $38                                         ; $5778: $ff
	ld   a, [$26ca]                                  ; $5779: $fa $ca $26
	rst  $38                                         ; $577c: $ff
	ret  c                                           ; $577d: $d8

	ld   h, a                                        ; $577e: $67
	ld   de, $1114                                   ; $577f: $11 $14 $11
	rra                                              ; $5782: $1f
	rst  $38                                         ; $5783: $ff
	cp   a                                           ; $5784: $bf
	ld   [hl], c                                     ; $5785: $71
	ld   de, $7f44                                   ; $5786: $11 $44 $7f
	rst  $38                                         ; $5789: $ff
	cp   d                                           ; $578a: $ba
	push bc                                          ; $578b: $c5
	ld   e, [hl]                                     ; $578c: $5e
	rst  $38                                         ; $578d: $ff
	sub  [hl]                                        ; $578e: $96
	ld   [hl], e                                     ; $578f: $73
	ld   de, $1121                                   ; $5790: $11 $21 $11
	rst  JumpTable                                         ; $5793: $df
	db   $fc                                         ; $5794: $fc
	ld   sp, hl                                      ; $5795: $f9
	ld   de, $3513                                   ; $5796: $11 $13 $35
	rst  $38                                         ; $5799: $ff
	db   $fd                                         ; $579a: $fd
	xor  l                                           ; $579b: $ad
	add  l                                           ; $579c: $85
	cp   a                                           ; $579d: $bf
	ei                                               ; $579e: $fb
	adc  b                                           ; $579f: $88
	ld   d, c                                        ; $57a0: $51
	ld   de, $1511                                   ; $57a1: $11 $11 $15
	rst  $38                                         ; $57a4: $ff
	rst  $28                                         ; $57a5: $ef
	push bc                                          ; $57a6: $c5
	ld   de, $3c12                                   ; $57a7: $11 $12 $3c
	rst  $38                                         ; $57aa: $ff
	db   $fc                                         ; $57ab: $fc
	reti                                             ; $57ac: $d9


	ld   l, c                                        ; $57ad: $69
	rst  $28                                         ; $57ae: $ef
	ret                                              ; $57af: $c9


	add  [hl]                                        ; $57b0: $86
	ld   de, $1111                                   ; $57b1: $11 $11 $11
	cp   a                                           ; $57b4: $bf
	rst  $38                                         ; $57b5: $ff
	db   $fc                                         ; $57b6: $fc
	ld   h, c                                        ; $57b7: $61
	ld   de, $bf13                                   ; $57b8: $11 $13 $bf
	rst  $38                                         ; $57bb: $ff
	db   $dd                                         ; $57bc: $dd
	sbc  b                                           ; $57bd: $98
	sbc  h                                           ; $57be: $9c
	db   $ec                                         ; $57bf: $ec
	sbc  c                                           ; $57c0: $99
	ld   [hl], c                                     ; $57c1: $71
	ld   de, $1311                                   ; $57c2: $11 $11 $13
	rst  $38                                         ; $57c5: $ff
	rst  $38                                         ; $57c6: $ff
	ei                                               ; $57c7: $fb
	ld   hl, $0611                                   ; $57c8: $21 $11 $06
	rst  JumpTable                                         ; $57cb: $df
	rst  $38                                         ; $57cc: $ff
	db   $fd                                         ; $57cd: $fd
	sbc  c                                           ; $57ce: $99
	xor  h                                           ; $57cf: $ac
	cp   b                                           ; $57d0: $b8
	sbc  b                                           ; $57d1: $98
	ld   hl, $1111                                   ; $57d2: $21 $11 $11
	rra                                              ; $57d5: $1f
	rst  $38                                         ; $57d6: $ff
	rst  $38                                         ; $57d7: $ff
	rst  $30                                         ; $57d8: $f7
	ld   de, $2711                                   ; $57d9: $11 $11 $27
	rst  $38                                         ; $57dc: $ff
	rst  $38                                         ; $57dd: $ff
	db   $fd                                         ; $57de: $fd
	cp   d                                           ; $57df: $ba
	cp   d                                           ; $57e0: $ba
	adc  b                                           ; $57e1: $88
	and  l                                           ; $57e2: $a5
	ld   de, $1111                                   ; $57e3: $11 $11 $11
	rst  $38                                         ; $57e6: $ff
	rst  $38                                         ; $57e7: $ff
	rst  $38                                         ; $57e8: $ff
	jp   nz, $1121                                   ; $57e9: $c2 $21 $11

	add  hl, sp                                      ; $57ec: $39
	rst  JumpTable                                         ; $57ed: $df
	rst  $38                                         ; $57ee: $ff
	rst  $38                                         ; $57ef: $ff
	jp   z, $79a8                                    ; $57f0: $ca $a8 $79

	ld   h, e                                        ; $57f3: $63
	ld   de, $1a11                                   ; $57f4: $11 $11 $1a
	cp   $ff                                         ; $57f7: $fe $ff
	rst  $38                                         ; $57f9: $ff
	sub  h                                           ; $57fa: $94
	ld   hl, $3811                                   ; $57fb: $21 $11 $38
	cp   a                                           ; $57fe: $bf
	rst  $38                                         ; $57ff: $ff
	rst  $38                                         ; $5800: $ff
	call c, $87a8                                    ; $5801: $dc $a8 $87
	ld   b, c                                        ; $5804: $41
	ld   de, $1e11                                   ; $5805: $11 $11 $1e
	db   $ed                                         ; $5808: $ed
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	add  [hl]                                        ; $580b: $86
	ld   sp, $2711                                   ; $580c: $31 $11 $27
	xor  l                                           ; $580f: $ad
	rst  $38                                         ; $5810: $ff
	rst  $38                                         ; $5811: $ff
	db   $ed                                         ; $5812: $ed
	xor  c                                           ; $5813: $a9
	and  [hl]                                        ; $5814: $a6
	ld   sp, $1111                                   ; $5815: $31 $11 $11
	dec  e                                           ; $5818: $1d
	cp   [hl]                                        ; $5819: $be
	rst  $38                                         ; $581a: $ff
	rst  $38                                         ; $581b: $ff
	xor  b                                           ; $581c: $a8
	ld   d, c                                        ; $581d: $51
	ld   de, $7a14                                   ; $581e: $11 $14 $7a
	rst  JumpTable                                         ; $5821: $df
	rst  $38                                         ; $5822: $ff
	cp   $dc                                         ; $5823: $fe $dc
	sub  l                                           ; $5825: $95
	ld   b, d                                        ; $5826: $42
	ld   de, $1b11                                   ; $5827: $11 $11 $1b
	xor  e                                           ; $582a: $ab
	rst  $38                                         ; $582b: $ff
	rst  $38                                         ; $582c: $ff
	call c, $1195                                    ; $582d: $dc $95 $11
	ld   [de], a                                     ; $5830: $12
	ld   b, [hl]                                     ; $5831: $46
	xor  [hl]                                        ; $5832: $ae
	rst  $38                                         ; $5833: $ff
	rst  $38                                         ; $5834: $ff
	rst  $38                                         ; $5835: $ff
	cp   b                                           ; $5836: $b8
	ld   h, h                                        ; $5837: $64
	ld   de, $1211                                   ; $5838: $11 $11 $12
	sub  a                                           ; $583b: $97
	cp   a                                           ; $583c: $bf
	rst  $38                                         ; $583d: $ff
	cp   $fb                                         ; $583e: $fe $fb
	ld   h, d                                        ; $5840: $62
	ld   [de], a                                     ; $5841: $12
	ld   [hl+], a                                    ; $5842: $22
	ld   b, a                                        ; $5843: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5844: $cf
	rst  $38                                         ; $5845: $ff
	rst  $38                                         ; $5846: $ff
	db   $fd                                         ; $5847: $fd
	sub  a                                           ; $5848: $97
	ld   d, d                                        ; $5849: $52
	ld   de, $1611                                   ; $584a: $11 $11 $16
	ld   e, b                                        ; $584d: $58
	rst  JumpTable                                         ; $584e: $df
	rst  $38                                         ; $584f: $ff
	rst  $38                                         ; $5850: $ff
	jp   hl                                          ; $5851: $e9


	ld   h, l                                        ; $5852: $65
	ld   b, e                                        ; $5853: $43
	ld   [hl+], a                                    ; $5854: $22
	scf                                              ; $5855: $37
	call $ffff                                       ; $5856: $cd $ff $ff
	db   $db                                         ; $5859: $db
	and  a                                           ; $585a: $a7
	ld   b, c                                        ; $585b: $41
	ld   de, $3211                                   ; $585c: $11 $11 $32
	ld   e, b                                        ; $585f: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5860: $cf
	rst  $38                                         ; $5861: $ff
	rst  $38                                         ; $5862: $ff
	db   $db                                         ; $5863: $db
	add  a                                           ; $5864: $87
	ld   d, e                                        ; $5865: $53
	inc  hl                                          ; $5866: $23
	ld   d, a                                        ; $5867: $57
	xor  h                                           ; $5868: $ac
	rst  JumpTable                                         ; $5869: $df
	db   $fd                                         ; $586a: $fd
	jp   z, Jump_0e5_5296                            ; $586b: $ca $96 $52

	ld   de, $1212                                   ; $586e: $11 $12 $12
	ld   e, b                                        ; $5871: $58
	cp   l                                           ; $5872: $bd
	rst  JumpTable                                         ; $5873: $df
	cp   $ca                                         ; $5874: $fe $ca
	xor  b                                           ; $5876: $a8
	ld   h, l                                        ; $5877: $65
	ld   d, l                                        ; $5878: $55
	ld   h, a                                        ; $5879: $67
	sbc  d                                           ; $587a: $9a
	call $b9cb                                       ; $587b: $cd $cb $b9
	add  a                                           ; $587e: $87
	ld   d, h                                        ; $587f: $54
	ld   [hl+], a                                    ; $5880: $22
	ld   [hl-], a                                    ; $5881: $32
	inc  h                                           ; $5882: $24
	ld   l, b                                        ; $5883: $68
	xor  d                                           ; $5884: $aa
	call $bacb                                       ; $5885: $cd $cb $ba
	xor  c                                           ; $5888: $a9
	add  a                                           ; $5889: $87
	ld   [hl], a                                     ; $588a: $77
	ld   [hl], a                                     ; $588b: $77
	adc  c                                           ; $588c: $89
	sbc  c                                           ; $588d: $99
	sbc  d                                           ; $588e: $9a
	xor  c                                           ; $588f: $a9
	xor  b                                           ; $5890: $a8
	halt                                             ; $5891: $76
	ld   b, h                                        ; $5892: $44
	ld   d, h                                        ; $5893: $54
	ld   b, l                                        ; $5894: $45
	ld   h, a                                        ; $5895: $67
	adc  b                                           ; $5896: $88
	sbc  c                                           ; $5897: $99
	xor  d                                           ; $5898: $aa
	xor  e                                           ; $5899: $ab
	xor  c                                           ; $589a: $a9
	sbc  c                                           ; $589b: $99
	add  a                                           ; $589c: $87
	ld   [hl], a                                     ; $589d: $77
	ld   a, b                                        ; $589e: $78
	sbc  c                                           ; $589f: $99
	xor  d                                           ; $58a0: $aa
	xor  d                                           ; $58a1: $aa
	sbc  b                                           ; $58a2: $98
	add  a                                           ; $58a3: $87
	ld   d, l                                        ; $58a4: $55
	ld   h, l                                        ; $58a5: $65
	ld   d, l                                        ; $58a6: $55
	ld   d, [hl]                                     ; $58a7: $56
	ld   h, a                                        ; $58a8: $67
	adc  b                                           ; $58a9: $88
	xor  d                                           ; $58aa: $aa
	xor  d                                           ; $58ab: $aa

Call_0e5_58ac:
	xor  d                                           ; $58ac: $aa
	xor  c                                           ; $58ad: $a9
	ld   [hl], a                                     ; $58ae: $77
	ld   [hl], a                                     ; $58af: $77
	adc  b                                           ; $58b0: $88
	sbc  d                                           ; $58b1: $9a
	sbc  d                                           ; $58b2: $9a
	xor  d                                           ; $58b3: $aa
	xor  c                                           ; $58b4: $a9
	sbc  c                                           ; $58b5: $99
	add  [hl]                                        ; $58b6: $86
	ld   h, [hl]                                     ; $58b7: $66
	ld   h, l                                        ; $58b8: $65
	ld   d, l                                        ; $58b9: $55
	ld   h, [hl]                                     ; $58ba: $66
	ld   h, a                                        ; $58bb: $67
	sbc  c                                           ; $58bc: $99
	sbc  d                                           ; $58bd: $9a
	xor  c                                           ; $58be: $a9
	sbc  c                                           ; $58bf: $99
	adc  b                                           ; $58c0: $88
	sbc  c                                           ; $58c1: $99
	sbc  b                                           ; $58c2: $98
	adc  c                                           ; $58c3: $89
	xor  c                                           ; $58c4: $a9
	sbc  d                                           ; $58c5: $9a
	xor  c                                           ; $58c6: $a9
	xor  c                                           ; $58c7: $a9
	sbc  b                                           ; $58c8: $98
	ld   [hl], a                                     ; $58c9: $77
	halt                                             ; $58ca: $76
	ld   h, l                                        ; $58cb: $65
	ld   h, [hl]                                     ; $58cc: $66
	ld   h, [hl]                                     ; $58cd: $66
	ld   [hl], a                                     ; $58ce: $77
	ld   a, b                                        ; $58cf: $78
	sbc  b                                           ; $58d0: $98
	adc  c                                           ; $58d1: $89
	sbc  c                                           ; $58d2: $99
	adc  c                                           ; $58d3: $89
	sbc  c                                           ; $58d4: $99
	sbc  c                                           ; $58d5: $99
	adc  c                                           ; $58d6: $89
	sbc  c                                           ; $58d7: $99
	sbc  c                                           ; $58d8: $99
	xor  c                                           ; $58d9: $a9
	adc  c                                           ; $58da: $89
	adc  b                                           ; $58db: $88
	ld   [hl], a                                     ; $58dc: $77
	ld   [hl], a                                     ; $58dd: $77
	halt                                             ; $58de: $76
	ld   h, [hl]                                     ; $58df: $66
	ld   h, [hl]                                     ; $58e0: $66
	ld   h, a                                        ; $58e1: $67
	ld   a, b                                        ; $58e2: $78
	adc  c                                           ; $58e3: $89
	adc  c                                           ; $58e4: $89
	xor  c                                           ; $58e5: $a9
	sbc  c                                           ; $58e6: $99
	sbc  c                                           ; $58e7: $99
	adc  b                                           ; $58e8: $88
	sbc  d                                           ; $58e9: $9a
	sbc  b                                           ; $58ea: $98
	sbc  b                                           ; $58eb: $98
	sbc  b                                           ; $58ec: $98
	adc  b                                           ; $58ed: $88
	sbc  b                                           ; $58ee: $98
	ld   a, b                                        ; $58ef: $78
	add  a                                           ; $58f0: $87
	ld   h, [hl]                                     ; $58f1: $66
	ld   h, [hl]                                     ; $58f2: $66
	ld   h, [hl]                                     ; $58f3: $66
	ld   h, a                                        ; $58f4: $67
	ld   a, b                                        ; $58f5: $78
	adc  c                                           ; $58f6: $89
	sbc  d                                           ; $58f7: $9a
	sbc  c                                           ; $58f8: $99
	sbc  d                                           ; $58f9: $9a
	xor  c                                           ; $58fa: $a9
	sbc  c                                           ; $58fb: $99
	adc  c                                           ; $58fc: $89
	adc  c                                           ; $58fd: $89
	sbc  c                                           ; $58fe: $99
	adc  b                                           ; $58ff: $88
	adc  c                                           ; $5900: $89
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	ld   [hl], a                                     ; $5903: $77
	ld   h, [hl]                                     ; $5904: $66
	ld   h, [hl]                                     ; $5905: $66
	ld   h, [hl]                                     ; $5906: $66
	ld   [hl], a                                     ; $5907: $77
	adc  b                                           ; $5908: $88
	sbc  c                                           ; $5909: $99
	sbc  d                                           ; $590a: $9a
	sbc  d                                           ; $590b: $9a
	xor  d                                           ; $590c: $aa
	sbc  b                                           ; $590d: $98
	sbc  c                                           ; $590e: $99
	add  a                                           ; $590f: $87
	adc  c                                           ; $5910: $89
	cp   c                                           ; $5911: $b9
	ld   h, a                                        ; $5912: $67
	sbc  c                                           ; $5913: $99
	ld   [hl], a                                     ; $5914: $77
	ld   a, b                                        ; $5915: $78
	ld   h, l                                        ; $5916: $65
	ld   h, [hl]                                     ; $5917: $66
	ld   h, [hl]                                     ; $5918: $66
	ld   h, a                                        ; $5919: $67
	adc  c                                           ; $591a: $89
	adc  c                                           ; $591b: $89
	sbc  d                                           ; $591c: $9a
	sbc  c                                           ; $591d: $99
	sbc  d                                           ; $591e: $9a
	sbc  c                                           ; $591f: $99
	sbc  c                                           ; $5920: $99
	adc  c                                           ; $5921: $89
	sbc  b                                           ; $5922: $98
	sbc  b                                           ; $5923: $98
	ld   a, b                                        ; $5924: $78
	sbc  b                                           ; $5925: $98
	ld   [hl], a                                     ; $5926: $77
	ld   [hl], a                                     ; $5927: $77
	halt                                             ; $5928: $76
	ld   h, [hl]                                     ; $5929: $66
	ld   h, a                                        ; $592a: $67
	ld   [hl], a                                     ; $592b: $77
	ld   a, b                                        ; $592c: $78
	adc  b                                           ; $592d: $88
	sbc  c                                           ; $592e: $99
	sbc  d                                           ; $592f: $9a
	sbc  c                                           ; $5930: $99
	sbc  b                                           ; $5931: $98
	sbc  c                                           ; $5932: $99
	adc  c                                           ; $5933: $89
	adc  c                                           ; $5934: $89
	sbc  c                                           ; $5935: $99
	adc  b                                           ; $5936: $88
	adc  b                                           ; $5937: $88
	ld   [hl], a                                     ; $5938: $77
	ld   h, [hl]                                     ; $5939: $66
	ld   h, [hl]                                     ; $593a: $66
	ld   h, [hl]                                     ; $593b: $66
	ld   h, [hl]                                     ; $593c: $66
	ld   [hl], a                                     ; $593d: $77
	adc  c                                           ; $593e: $89
	sbc  c                                           ; $593f: $99
	sbc  c                                           ; $5940: $99
	sbc  c                                           ; $5941: $99
	sbc  b                                           ; $5942: $98
	sbc  c                                           ; $5943: $99
	sbc  c                                           ; $5944: $99
	ld   a, b                                        ; $5945: $78
	sbc  d                                           ; $5946: $9a
	ld   [hl], a                                     ; $5947: $77
	xor  e                                           ; $5948: $ab
	sub  a                                           ; $5949: $97
	ld   h, [hl]                                     ; $594a: $66
	ld   h, l                                        ; $594b: $65
	ld   d, l                                        ; $594c: $55
	ld   d, [hl]                                     ; $594d: $56
	ld   d, [hl]                                     ; $594e: $56
	ld   l, b                                        ; $594f: $68
	adc  c                                           ; $5950: $89
	sbc  d                                           ; $5951: $9a
	cp   e                                           ; $5952: $bb
	xor  c                                           ; $5953: $a9
	sbc  d                                           ; $5954: $9a
	sbc  c                                           ; $5955: $99
	adc  c                                           ; $5956: $89
	adc  c                                           ; $5957: $89
	adc  c                                           ; $5958: $89
	sbc  c                                           ; $5959: $99
	adc  b                                           ; $595a: $88
	add  a                                           ; $595b: $87
	ld   d, l                                        ; $595c: $55
	ld   d, [hl]                                     ; $595d: $56
	ld   d, l                                        ; $595e: $55
	ld   d, [hl]                                     ; $595f: $56
	ld   h, a                                        ; $5960: $67
	ld   a, c                                        ; $5961: $79
	sbc  d                                           ; $5962: $9a
	xor  e                                           ; $5963: $ab
	cp   e                                           ; $5964: $bb
	xor  c                                           ; $5965: $a9
	sbc  c                                           ; $5966: $99
	sbc  b                                           ; $5967: $98
	adc  b                                           ; $5968: $88
	adc  c                                           ; $5969: $89
	sbc  b                                           ; $596a: $98
	adc  c                                           ; $596b: $89
	add  a                                           ; $596c: $87
	ld   h, l                                        ; $596d: $65
	ld   b, h                                        ; $596e: $44
	ld   d, l                                        ; $596f: $55
	ld   d, l                                        ; $5970: $55
	ld   d, [hl]                                     ; $5971: $56
	ld   a, b                                        ; $5972: $78
	adc  d                                           ; $5973: $8a
	xor  e                                           ; $5974: $ab
	xor  e                                           ; $5975: $ab
	cp   d                                           ; $5976: $ba
	sbc  b                                           ; $5977: $98
	adc  b                                           ; $5978: $88
	adc  b                                           ; $5979: $88
	sbc  b                                           ; $597a: $98
	sbc  d                                           ; $597b: $9a
	adc  b                                           ; $597c: $88
	adc  b                                           ; $597d: $88
	ld   [hl], a                                     ; $597e: $77
	ld   h, l                                        ; $597f: $65
	ld   d, l                                        ; $5980: $55
	ld   d, h                                        ; $5981: $54
	ld   d, l                                        ; $5982: $55
	ld   h, a                                        ; $5983: $67
	ld   a, b                                        ; $5984: $78
	sbc  d                                           ; $5985: $9a
	cp   d                                           ; $5986: $ba
	cp   e                                           ; $5987: $bb
	xor  c                                           ; $5988: $a9
	sbc  c                                           ; $5989: $99
	adc  c                                           ; $598a: $89
	adc  c                                           ; $598b: $89
	adc  c                                           ; $598c: $89
	xor  c                                           ; $598d: $a9
	adc  b                                           ; $598e: $88
	add  a                                           ; $598f: $87
	ld   [hl], l                                     ; $5990: $75
	ld   b, h                                        ; $5991: $44
	ld   b, l                                        ; $5992: $45
	ld   b, h                                        ; $5993: $44
	ld   d, [hl]                                     ; $5994: $56
	ld   a, b                                        ; $5995: $78
	adc  d                                           ; $5996: $8a
	xor  e                                           ; $5997: $ab
	set  1, e                                        ; $5998: $cb $cb
	xor  c                                           ; $599a: $a9
	adc  b                                           ; $599b: $88
	adc  c                                           ; $599c: $89
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	sbc  c                                           ; $599f: $99
	adc  b                                           ; $59a0: $88
	ld   [hl], a                                     ; $59a1: $77
	ld   d, e                                        ; $59a2: $53
	inc  [hl]                                        ; $59a3: $34
	ld   b, e                                        ; $59a4: $43
	inc  [hl]                                        ; $59a5: $34
	ld   h, a                                        ; $59a6: $67
	adc  c                                           ; $59a7: $89
	sbc  e                                           ; $59a8: $9b
	cp   h                                           ; $59a9: $bc
	res  7, d                                        ; $59aa: $cb $ba
	xor  b                                           ; $59ac: $a8
	sbc  b                                           ; $59ad: $98
	adc  b                                           ; $59ae: $88
	adc  c                                           ; $59af: $89
	sbc  b                                           ; $59b0: $98
	sbc  b                                           ; $59b1: $98
	sub  a                                           ; $59b2: $97
	ld   h, h                                        ; $59b3: $64
	ld   [hl+], a                                    ; $59b4: $22
	inc  [hl]                                        ; $59b5: $34
	inc  [hl]                                        ; $59b6: $34
	ld   b, a                                        ; $59b7: $47
	adc  b                                           ; $59b8: $88
	sbc  e                                           ; $59b9: $9b
	call c, $cbdc                                    ; $59ba: $dc $dc $cb
	xor  c                                           ; $59bd: $a9
	sbc  c                                           ; $59be: $99
	sbc  c                                           ; $59bf: $99
	adc  c                                           ; $59c0: $89
	sbc  c                                           ; $59c1: $99
	sbc  b                                           ; $59c2: $98
	sbc  b                                           ; $59c3: $98
	ld   [hl], l                                     ; $59c4: $75
	ld   [hl-], a                                    ; $59c5: $32
	inc  [hl]                                        ; $59c6: $34
	inc  sp                                          ; $59c7: $33
	ld   b, [hl]                                     ; $59c8: $46
	ld   a, b                                        ; $59c9: $78
	sbc  d                                           ; $59ca: $9a
	call $cbdc                                       ; $59cb: $cd $dc $cb
	cp   d                                           ; $59ce: $ba
	adc  b                                           ; $59cf: $88
	xor  c                                           ; $59d0: $a9
	xor  b                                           ; $59d1: $a8
	adc  c                                           ; $59d2: $89
	sbc  b                                           ; $59d3: $98
	adc  b                                           ; $59d4: $88
	halt                                             ; $59d5: $76
	ld   b, d                                        ; $59d6: $42
	inc  hl                                          ; $59d7: $23
	ld   b, e                                        ; $59d8: $43
	inc  [hl]                                        ; $59d9: $34
	ld   a, c                                        ; $59da: $79
	adc  c                                           ; $59db: $89
	cp   h                                           ; $59dc: $bc
	call c, $cacb                                    ; $59dd: $dc $cb $ca
	sbc  b                                           ; $59e0: $98
	sbc  c                                           ; $59e1: $99
	sbc  c                                           ; $59e2: $99
	sbc  b                                           ; $59e3: $98
	sbc  c                                           ; $59e4: $99
	adc  b                                           ; $59e5: $88
	add  a                                           ; $59e6: $87
	ld   d, d                                        ; $59e7: $52
	ld   [hl+], a                                    ; $59e8: $22
	ld   b, h                                        ; $59e9: $44
	inc  [hl]                                        ; $59ea: $34
	ld   l, b                                        ; $59eb: $68
	sbc  d                                           ; $59ec: $9a
	xor  e                                           ; $59ed: $ab
	call z, $cbcb                                    ; $59ee: $cc $cb $cb
	xor  c                                           ; $59f1: $a9
	sbc  c                                           ; $59f2: $99
	cp   c                                           ; $59f3: $b9
	adc  b                                           ; $59f4: $88
	sbc  c                                           ; $59f5: $99
	add  a                                           ; $59f6: $87
	ld   [hl], a                                     ; $59f7: $77
	ld   d, d                                        ; $59f8: $52
	ld   [de], a                                     ; $59f9: $12
	ld   b, h                                        ; $59fa: $44
	inc  [hl]                                        ; $59fb: $34
	ld   l, b                                        ; $59fc: $68
	sbc  c                                           ; $59fd: $99
	xor  h                                           ; $59fe: $ac
	call c, $cbbb                                    ; $59ff: $dc $bb $cb
	xor  b                                           ; $5a02: $a8
	sbc  d                                           ; $5a03: $9a
	xor  c                                           ; $5a04: $a9
	sbc  b                                           ; $5a05: $98
	adc  c                                           ; $5a06: $89
	sub  a                                           ; $5a07: $97
	ld   [hl], a                                     ; $5a08: $77
	ld   d, e                                        ; $5a09: $53
	ld   [de], a                                     ; $5a0a: $12
	inc  sp                                          ; $5a0b: $33
	inc  [hl]                                        ; $5a0c: $34
	ld   h, a                                        ; $5a0d: $67
	adc  c                                           ; $5a0e: $89
	xor  h                                           ; $5a0f: $ac
	call $bccc                                       ; $5a10: $cd $cc $bc
	xor  d                                           ; $5a13: $aa
	xor  e                                           ; $5a14: $ab
	cp   e                                           ; $5a15: $bb
	sbc  c                                           ; $5a16: $99
	adc  b                                           ; $5a17: $88
	ld   [hl], a                                     ; $5a18: $77
	ld   [hl], a                                     ; $5a19: $77
	ld   d, d                                        ; $5a1a: $52
	ld   de, $3333                                   ; $5a1b: $11 $33 $33
	ld   e, b                                        ; $5a1e: $58
	xor  d                                           ; $5a1f: $aa
	xor  h                                           ; $5a20: $ac
	db   $ed                                         ; $5a21: $ed
	call c, $aabb                                    ; $5a22: $dc $bb $aa
	sbc  d                                           ; $5a25: $9a
	cp   e                                           ; $5a26: $bb
	sbc  b                                           ; $5a27: $98
	adc  b                                           ; $5a28: $88
	halt                                             ; $5a29: $76
	ld   h, l                                        ; $5a2a: $65
	ld   b, c                                        ; $5a2b: $41
	ld   de, $4534                                   ; $5a2c: $11 $34 $45
	ld   a, c                                        ; $5a2f: $79
	xor  e                                           ; $5a30: $ab
	cp   h                                           ; $5a31: $bc
	xor  $cc                                         ; $5a32: $ee $cc
	res  5, c                                        ; $5a34: $cb $a9
	xor  d                                           ; $5a36: $aa
	xor  c                                           ; $5a37: $a9
	add  a                                           ; $5a38: $87
	ld   [hl], a                                     ; $5a39: $77
	ld   h, [hl]                                     ; $5a3a: $66
	ld   d, e                                        ; $5a3b: $53
	ld   de, $3423                                   ; $5a3c: $11 $23 $34
	ld   d, a                                        ; $5a3f: $57
	sbc  d                                           ; $5a40: $9a
	call $eccd                                       ; $5a41: $cd $cd $ec
	res  7, d                                        ; $5a44: $cb $ba
	cp   e                                           ; $5a46: $bb
	cp   d                                           ; $5a47: $ba
	sbc  b                                           ; $5a48: $98
	ld   [hl], a                                     ; $5a49: $77
	ld   h, l                                        ; $5a4a: $65
	ld   d, h                                        ; $5a4b: $54
	ld   hl, $3412                                   ; $5a4c: $21 $12 $34
	ld   d, [hl]                                     ; $5a4f: $56
	sbc  d                                           ; $5a50: $9a
	call $ddde                                       ; $5a51: $cd $de $dd
	call c, $aaca                                    ; $5a54: $dc $ca $aa
	xor  e                                           ; $5a57: $ab
	xor  b                                           ; $5a58: $a8
	ld   [hl], a                                     ; $5a59: $77
	ld   h, l                                        ; $5a5a: $65
	ld   d, e                                        ; $5a5b: $53
	ld   de, $3312                                   ; $5a5c: $11 $12 $33
	ld   b, a                                        ; $5a5f: $47
	sbc  d                                           ; $5a60: $9a
	cp   h                                           ; $5a61: $bc
	db   $ed                                         ; $5a62: $ed
	db   $ed                                         ; $5a63: $ed
	db   $dd                                         ; $5a64: $dd
	res  5, d                                        ; $5a65: $cb $aa
	cp   d                                           ; $5a67: $ba
	adc  b                                           ; $5a68: $88
	halt                                             ; $5a69: $76
	ld   d, l                                        ; $5a6a: $55
	ld   b, d                                        ; $5a6b: $42
	ld   de, $3412                                   ; $5a6c: $11 $12 $34
	ld   d, a                                        ; $5a6f: $57
	sbc  e                                           ; $5a70: $9b
	adc  $de                                         ; $5a71: $ce $de
	db   $ed                                         ; $5a73: $ed
	call c, $a9ca                                    ; $5a74: $dc $ca $a9
	xor  d                                           ; $5a77: $aa
	sub  a                                           ; $5a78: $97
	halt                                             ; $5a79: $76
	ld   d, h                                        ; $5a7a: $54
	ld   sp, $1211                                   ; $5a7b: $31 $11 $12
	inc  [hl]                                        ; $5a7e: $34
	ld   a, b                                        ; $5a7f: $78
	cp   e                                           ; $5a80: $bb
	sbc  $ef                                         ; $5a81: $de $ef
	xor  $dc                                         ; $5a83: $ee $dc
	xor  d                                           ; $5a85: $aa
	xor  d                                           ; $5a86: $aa
	sbc  b                                           ; $5a87: $98
	add  [hl]                                        ; $5a88: $86
	ld   h, h                                        ; $5a89: $64
	inc  sp                                          ; $5a8a: $33
	ld   de, $2311                                   ; $5a8b: $11 $11 $23
	ld   d, [hl]                                     ; $5a8e: $56
	adc  e                                           ; $5a8f: $8b
	sbc  $ee                                         ; $5a90: $de $ee
	cp   $ec                                         ; $5a92: $fe $ec
	jp   z, $a9b9                                    ; $5a94: $ca $b9 $a9

	sub  a                                           ; $5a97: $97
	ld   h, l                                        ; $5a98: $65
	ld   b, h                                        ; $5a99: $44
	ld   de, $2211                                   ; $5a9a: $11 $11 $22
	inc  [hl]                                        ; $5a9d: $34
	ld   a, c                                        ; $5a9e: $79
	cp   l                                           ; $5a9f: $bd
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff
	xor  $dc                                         ; $5aa2: $ee $dc
	cp   d                                           ; $5aa4: $ba
	xor  c                                           ; $5aa5: $a9
	add  a                                           ; $5aa6: $87
	ld   h, l                                        ; $5aa7: $65
	ld   d, h                                        ; $5aa8: $54
	ld   hl, $1111                                   ; $5aa9: $21 $11 $11
	inc  h                                           ; $5aac: $24
	ld   l, b                                        ; $5aad: $68
	cp   l                                           ; $5aae: $bd
	xor  $ff                                         ; $5aaf: $ee $ff
	cp   $ed                                         ; $5ab1: $fe $ed
	cp   e                                           ; $5ab3: $bb
	sbc  d                                           ; $5ab4: $9a
	sub  a                                           ; $5ab5: $97
	ld   h, l                                        ; $5ab6: $65
	ld   b, e                                        ; $5ab7: $43
	ld   hl, $1211                                   ; $5ab8: $21 $11 $12
	inc  hl                                          ; $5abb: $23
	ld   d, a                                        ; $5abc: $57
	cp   h                                           ; $5abd: $bc
	rst  $28                                         ; $5abe: $ef
	rst  $38                                         ; $5abf: $ff
	rst  $38                                         ; $5ac0: $ff
	sbc  $ba                                         ; $5ac1: $de $ba
	xor  c                                           ; $5ac3: $a9
	sub  a                                           ; $5ac4: $97
	ld   d, h                                        ; $5ac5: $54
	inc  sp                                          ; $5ac6: $33
	ld   de, $1211                                   ; $5ac7: $11 $11 $12
	inc  h                                           ; $5aca: $24
	ld   l, c                                        ; $5acb: $69
	cp   h                                           ; $5acc: $bc
	rst  $28                                         ; $5acd: $ef
	rst  $38                                         ; $5ace: $ff
	rst  $38                                         ; $5acf: $ff
	xor  $ba                                         ; $5ad0: $ee $ba
	xor  c                                           ; $5ad2: $a9
	sub  [hl]                                        ; $5ad3: $96
	ld   d, e                                        ; $5ad4: $53
	ld   [hl-], a                                    ; $5ad5: $32
	ld   de, $1211                                   ; $5ad6: $11 $11 $12
	dec  h                                           ; $5ad9: $25
	ld   a, d                                        ; $5ada: $7a
	cp   l                                           ; $5adb: $bd
	rst  $38                                         ; $5adc: $ff
	rst  $38                                         ; $5add: $ff
	rst  $38                                         ; $5ade: $ff
	db   $ed                                         ; $5adf: $ed
	cp   e                                           ; $5ae0: $bb
	sbc  d                                           ; $5ae1: $9a
	add  l                                           ; $5ae2: $85
	ld   b, e                                        ; $5ae3: $43
	ld   hl, $1111                                   ; $5ae4: $21 $11 $11
	ld   [hl+], a                                    ; $5ae7: $22
	ld   b, [hl]                                     ; $5ae8: $46
	sbc  d                                           ; $5ae9: $9a
	adc  $ff                                         ; $5aea: $ce $ff
	rst  $38                                         ; $5aec: $ff
	cp   $ec                                         ; $5aed: $fe $ec
	cp   d                                           ; $5aef: $ba
	xor  c                                           ; $5af0: $a9
	ld   [hl], l                                     ; $5af1: $75
	ld   [hl-], a                                    ; $5af2: $32
	ld   de, $1111                                   ; $5af3: $11 $11 $11
	ld   [hl+], a                                    ; $5af6: $22
	ld   d, a                                        ; $5af7: $57
	xor  h                                           ; $5af8: $ac
	rst  JumpTable                                         ; $5af9: $df
	rst  $38                                         ; $5afa: $ff
	rst  $38                                         ; $5afb: $ff
	cp   $dc                                         ; $5afc: $fe $dc
	xor  c                                           ; $5afe: $a9
	xor  b                                           ; $5aff: $a8
	ld   h, h                                        ; $5b00: $64
	ld   [hl-], a                                    ; $5b01: $32
	ld   de, $1111                                   ; $5b02: $11 $11 $11
	inc  hl                                          ; $5b05: $23
	ld   e, b                                        ; $5b06: $58
	xor  e                                           ; $5b07: $ab
	rst  $28                                         ; $5b08: $ef
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	xor  $cc                                         ; $5b0b: $ee $cc
	xor  c                                           ; $5b0d: $a9
	sub  a                                           ; $5b0e: $97
	ld   d, e                                        ; $5b0f: $53
	ld   [hl+], a                                    ; $5b10: $22
	ld   de, $1211                                   ; $5b11: $11 $11 $12
	dec  [hl]                                        ; $5b14: $35
	ld   l, b                                        ; $5b15: $68
	xor  e                                           ; $5b16: $ab
	xor  $ff                                         ; $5b17: $ee $ff
	rst  $38                                         ; $5b19: $ff
	cp   $cb                                         ; $5b1a: $fe $cb
	cp   d                                           ; $5b1c: $ba
	add  a                                           ; $5b1d: $87
	ld   h, h                                        ; $5b1e: $64
	ld   [hl-], a                                    ; $5b1f: $32
	ld   hl, $2311                                   ; $5b20: $21 $11 $23
	ld   b, l                                        ; $5b23: $45
	ld   d, a                                        ; $5b24: $57
	sbc  d                                           ; $5b25: $9a
	call $deed                                       ; $5b26: $cd $ed $de
	sbc  $cb                                         ; $5b29: $de $cb
	cp   d                                           ; $5b2b: $ba
	xor  b                                           ; $5b2c: $a8
	ld   h, [hl]                                     ; $5b2d: $66
	ld   d, l                                        ; $5b2e: $55
	ld   b, h                                        ; $5b2f: $44
	inc  sp                                          ; $5b30: $33
	inc  sp                                          ; $5b31: $33
	ld   b, l                                        ; $5b32: $45
	ld   d, l                                        ; $5b33: $55
	ld   d, a                                        ; $5b34: $57
	adc  c                                           ; $5b35: $89
	cp   e                                           ; $5b36: $bb
	set  3, h                                        ; $5b37: $cb $dc
	call $aacb                                       ; $5b39: $cd $cb $aa
	sbc  c                                           ; $5b3c: $99
	add  a                                           ; $5b3d: $87
	ld   [hl], a                                     ; $5b3e: $77
	halt                                             ; $5b3f: $76
	ld   h, l                                        ; $5b40: $65
	ld   b, h                                        ; $5b41: $44
	ld   b, l                                        ; $5b42: $45
	ld   d, l                                        ; $5b43: $55
	ld   b, l                                        ; $5b44: $45
	ld   d, a                                        ; $5b45: $57
	sbc  d                                           ; $5b46: $9a
	xor  d                                           ; $5b47: $aa
	xor  e                                           ; $5b48: $ab
	cp   h                                           ; $5b49: $bc
	call z, $bbba                                    ; $5b4a: $cc $ba $bb
	xor  d                                           ; $5b4d: $aa
	sbc  d                                           ; $5b4e: $9a
	xor  c                                           ; $5b4f: $a9
	sub  a                                           ; $5b50: $97
	ld   h, l                                        ; $5b51: $65
	ld   b, h                                        ; $5b52: $44
	ld   b, e                                        ; $5b53: $43
	inc  sp                                          ; $5b54: $33
	inc  [hl]                                        ; $5b55: $34
	ld   d, [hl]                                     ; $5b56: $56
	adc  b                                           ; $5b57: $88
	xor  c                                           ; $5b58: $a9
	xor  e                                           ; $5b59: $ab
	cp   e                                           ; $5b5a: $bb
	cp   e                                           ; $5b5b: $bb
	call z, $bbbb                                    ; $5b5c: $cc $bb $bb
	cp   e                                           ; $5b5f: $bb
	cp   e                                           ; $5b60: $bb
	sbc  b                                           ; $5b61: $98
	ld   h, l                                        ; $5b62: $65
	ld   b, h                                        ; $5b63: $44
	inc  sp                                          ; $5b64: $33
	inc  sp                                          ; $5b65: $33
	inc  sp                                          ; $5b66: $33
	ld   b, l                                        ; $5b67: $45
	ld   l, b                                        ; $5b68: $68
	adc  c                                           ; $5b69: $89
	sbc  d                                           ; $5b6a: $9a
	xor  d                                           ; $5b6b: $aa
	cp   h                                           ; $5b6c: $bc
	call z, $ccdd                                    ; $5b6d: $cc $dd $cc
	res  7, d                                        ; $5b70: $cb $ba
	xor  c                                           ; $5b72: $a9
	add  [hl]                                        ; $5b73: $86
	ld   b, e                                        ; $5b74: $43
	inc  sp                                          ; $5b75: $33
	inc  sp                                          ; $5b76: $33
	ld   [hl+], a                                    ; $5b77: $22
	inc  hl                                          ; $5b78: $23
	ld   b, [hl]                                     ; $5b79: $46
	ld   a, c                                        ; $5b7a: $79
	sbc  d                                           ; $5b7b: $9a
	xor  e                                           ; $5b7c: $ab
	call z, $dede                                    ; $5b7d: $cc $de $de
	call c, $cacc                                    ; $5b80: $dc $cc $ca
	xor  c                                           ; $5b83: $a9
	ld   [hl], l                                     ; $5b84: $75
	ld   [hl-], a                                    ; $5b85: $32
	ld   de, $1111                                   ; $5b86: $11 $11 $11
	ld   [de], a                                     ; $5b89: $12
	ld   b, [hl]                                     ; $5b8a: $46
	adc  c                                           ; $5b8b: $89
	cp   h                                           ; $5b8c: $bc
	call z, $eedd                                    ; $5b8d: $cc $dd $ee
	cp   $ed                                         ; $5b90: $fe $ed
	cp   e                                           ; $5b92: $bb
	cp   d                                           ; $5b93: $ba
	sbc  b                                           ; $5b94: $98
	ld   d, e                                        ; $5b95: $53
	ld   de, $1101                                   ; $5b96: $11 $01 $11
	ld   de, $6824                                   ; $5b99: $11 $24 $68
	xor  d                                           ; $5b9c: $aa
	set  1, h                                        ; $5b9d: $cb $cc
	db   $dd                                         ; $5b9f: $dd
	xor  $ff                                         ; $5ba0: $ee $ff
	db   $ed                                         ; $5ba2: $ed
	jp   z, Jump_0e5_75a9                            ; $5ba3: $ca $a9 $75

	ld   sp, $1111                                   ; $5ba6: $31 $11 $11
	ld   [de], a                                     ; $5ba9: $12
	inc  hl                                          ; $5baa: $23
	ld   d, [hl]                                     ; $5bab: $56
	adc  c                                           ; $5bac: $89
	cp   e                                           ; $5bad: $bb
	set  1, l                                        ; $5bae: $cb $cd
	rst  JumpTable                                         ; $5bb0: $df
	rst  $38                                         ; $5bb1: $ff
	db   $ed                                         ; $5bb2: $ed
	call z, $96ba                                    ; $5bb3: $cc $ba $96
	ld   sp, $1111                                   ; $5bb6: $31 $11 $11
	ld   [de], a                                     ; $5bb9: $12
	inc  hl                                          ; $5bba: $23
	ld   b, [hl]                                     ; $5bbb: $46
	ld   a, c                                        ; $5bbc: $79
	xor  d                                           ; $5bbd: $aa
	cp   h                                           ; $5bbe: $bc
	cp   h                                           ; $5bbf: $bc
	sbc  $ff                                         ; $5bc0: $de $ff
	cp   $dc                                         ; $5bc2: $fe $dc
	cp   d                                           ; $5bc4: $ba
	sub  a                                           ; $5bc5: $97
	ld   b, d                                        ; $5bc6: $42
	ld   de, $0111                                   ; $5bc7: $11 $11 $01
	inc  hl                                          ; $5bca: $23
	ld   b, l                                        ; $5bcb: $45
	ld   a, c                                        ; $5bcc: $79
	sbc  d                                           ; $5bcd: $9a
	call z, $decc                                    ; $5bce: $cc $cc $de
	rst  $38                                         ; $5bd1: $ff
	cp   $dc                                         ; $5bd2: $fe $dc
	cp   d                                           ; $5bd4: $ba
	sub  a                                           ; $5bd5: $97
	ld   b, d                                        ; $5bd6: $42
	ld   de, $0111                                   ; $5bd7: $11 $11 $01
	inc  hl                                          ; $5bda: $23
	ld   b, l                                        ; $5bdb: $45
	ld   a, c                                        ; $5bdc: $79
	sbc  d                                           ; $5bdd: $9a
	cp   e                                           ; $5bde: $bb
	cp   h                                           ; $5bdf: $bc
	call $ffef                                       ; $5be0: $cd $ef $ff
	db   $ed                                         ; $5be3: $ed
	cp   e                                           ; $5be4: $bb
	xor  b                                           ; $5be5: $a8
	ld   d, d                                        ; $5be6: $52
	ld   de, $1111                                   ; $5be7: $11 $11 $11
	ld   [hl+], a                                    ; $5bea: $22
	dec  [hl]                                        ; $5beb: $35
	ld   a, b                                        ; $5bec: $78
	xor  e                                           ; $5bed: $ab
	cp   h                                           ; $5bee: $bc
	cp   h                                           ; $5bef: $bc
	call $feef                                       ; $5bf0: $cd $ef $fe
	db   $ed                                         ; $5bf3: $ed
	cp   d                                           ; $5bf4: $ba
	xor  c                                           ; $5bf5: $a9
	ld   h, e                                        ; $5bf6: $63
	ld   de, $1111                                   ; $5bf7: $11 $11 $11
	ld   [hl+], a                                    ; $5bfa: $22
	inc  [hl]                                        ; $5bfb: $34
	ld   h, a                                        ; $5bfc: $67
	sbc  d                                           ; $5bfd: $9a
	xor  e                                           ; $5bfe: $ab
	cp   e                                           ; $5bff: $bb
	call $ffef                                       ; $5c00: $cd $ef $ff
	db   $ed                                         ; $5c03: $ed
	res  5, c                                        ; $5c04: $cb $a9
	ld   h, e                                        ; $5c06: $63
	ld   de, $1111                                   ; $5c07: $11 $11 $11
	ld   [de], a                                     ; $5c0a: $12
	inc  [hl]                                        ; $5c0b: $34
	ld   h, a                                        ; $5c0c: $67
	sbc  d                                           ; $5c0d: $9a
	xor  e                                           ; $5c0e: $ab
	set  1, h                                        ; $5c0f: $cb $cc
	sbc  $ff                                         ; $5c11: $de $ff
	cp   $dc                                         ; $5c13: $fe $dc
	cp   c                                           ; $5c15: $b9
	ld   [hl], h                                     ; $5c16: $74
	ld   hl, $1111                                   ; $5c17: $21 $11 $11
	ld   [de], a                                     ; $5c1a: $12
	inc  [hl]                                        ; $5c1b: $34
	ld   d, a                                        ; $5c1c: $57
	sbc  c                                           ; $5c1d: $99
	cp   e                                           ; $5c1e: $bb
	set  1, h                                        ; $5c1f: $cb $cc
	rst  JumpTable                                         ; $5c21: $df
	rst  $38                                         ; $5c22: $ff
	xor  $cb                                         ; $5c23: $ee $cb
	cp   d                                           ; $5c25: $ba
	ld   [hl], l                                     ; $5c26: $75
	ld   hl, $1111                                   ; $5c27: $21 $11 $11
	ld   [de], a                                     ; $5c2a: $12
	inc  [hl]                                        ; $5c2b: $34
	ld   d, a                                        ; $5c2c: $57
	sbc  d                                           ; $5c2d: $9a
	xor  e                                           ; $5c2e: $ab
	res  7, l                                        ; $5c2f: $cb $bd
	rst  $28                                         ; $5c31: $ef
	rst  $38                                         ; $5c32: $ff
	xor  $dc                                         ; $5c33: $ee $dc
	cp   d                                           ; $5c35: $ba
	sub  [hl]                                        ; $5c36: $96
	ld   sp, $1111                                   ; $5c37: $31 $11 $11
	ld   de, $4623                                   ; $5c3a: $11 $23 $46
	adc  c                                           ; $5c3d: $89
	xor  d                                           ; $5c3e: $aa
	cp   e                                           ; $5c3f: $bb
	cp   l                                           ; $5c40: $bd
	sbc  $ff                                         ; $5c41: $de $ff
	rst  $38                                         ; $5c43: $ff
	db   $ed                                         ; $5c44: $ed
	cp   d                                           ; $5c45: $ba
	add  [hl]                                        ; $5c46: $86
	ld   sp, $1111                                   ; $5c47: $31 $11 $11
	ld   de, $4623                                   ; $5c4a: $11 $23 $46
	adc  c                                           ; $5c4d: $89
	xor  d                                           ; $5c4e: $aa
	cp   e                                           ; $5c4f: $bb
	cp   h                                           ; $5c50: $bc
	sbc  $ff                                         ; $5c51: $de $ff
	rst  $38                                         ; $5c53: $ff
	db   $dd                                         ; $5c54: $dd
	res  2, a                                        ; $5c55: $cb $97
	ld   b, d                                        ; $5c57: $42
	ld   de, $1111                                   ; $5c58: $11 $11 $11
	inc  hl                                          ; $5c5b: $23
	ld   b, [hl]                                     ; $5c5c: $46
	ld   a, b                                        ; $5c5d: $78
	xor  d                                           ; $5c5e: $aa
	cp   e                                           ; $5c5f: $bb
	cp   h                                           ; $5c60: $bc
	adc  $ef                                         ; $5c61: $ce $ef
	cp   $ec                                         ; $5c63: $fe $ec
	cp   d                                           ; $5c65: $ba
	sub  a                                           ; $5c66: $97
	ld   d, d                                        ; $5c67: $52
	ld   de, $1111                                   ; $5c68: $11 $11 $11
	inc  de                                          ; $5c6b: $13
	ld   b, l                                        ; $5c6c: $45
	ld   a, c                                        ; $5c6d: $79
	xor  d                                           ; $5c6e: $aa
	cp   e                                           ; $5c6f: $bb
	cp   h                                           ; $5c70: $bc
	sbc  $ff                                         ; $5c71: $de $ff
	cp   $ed                                         ; $5c73: $fe $ed
	cp   e                                           ; $5c75: $bb
	xor  b                                           ; $5c76: $a8
	ld   d, d                                        ; $5c77: $52
	ld   de, $1111                                   ; $5c78: $11 $11 $11
	ld   [de], a                                     ; $5c7b: $12
	ld   b, l                                        ; $5c7c: $45
	ld   a, c                                        ; $5c7d: $79
	sbc  d                                           ; $5c7e: $9a
	cp   e                                           ; $5c7f: $bb
	call z, $efdd                                    ; $5c80: $cc $dd $ef
	rst  $38                                         ; $5c83: $ff
	db   $ed                                         ; $5c84: $ed
	jp   z, Jump_0e5_5398                            ; $5c85: $ca $98 $53

	ld   de, $1111                                   ; $5c88: $11 $11 $11
	ld   [de], a                                     ; $5c8b: $12
	dec  [hl]                                        ; $5c8c: $35
	ld   a, c                                        ; $5c8d: $79
	sbc  d                                           ; $5c8e: $9a
	set  1, h                                        ; $5c8f: $cb $cc
	db   $dd                                         ; $5c91: $dd
	xor  $fe                                         ; $5c92: $ee $fe
	db   $ed                                         ; $5c94: $ed
	jp   z, Jump_0e5_63a8                            ; $5c95: $ca $a8 $63

	ld   de, $1111                                   ; $5c98: $11 $11 $11
	ld   [de], a                                     ; $5c9b: $12
	dec  [hl]                                        ; $5c9c: $35
	ld   a, c                                        ; $5c9d: $79
	sbc  d                                           ; $5c9e: $9a
	call z, $ddcc                                    ; $5c9f: $cc $cc $dd
	rst  JumpTable                                         ; $5ca2: $df
	xor  $ed                                         ; $5ca3: $ee $ed
	jp   z, Jump_0e5_63a8                            ; $5ca5: $ca $a8 $63

	ld   de, $1111                                   ; $5ca8: $11 $11 $11
	ld   [de], a                                     ; $5cab: $12
	dec  [hl]                                        ; $5cac: $35
	ld   a, b                                        ; $5cad: $78
	xor  e                                           ; $5cae: $ab
	call z, $ddcc                                    ; $5caf: $cc $cc $dd
	xor  $ef                                         ; $5cb2: $ee $ef
	db   $ed                                         ; $5cb4: $ed
	res  2, a                                        ; $5cb5: $cb $97
	ld   d, e                                        ; $5cb7: $53
	ld   de, $1111                                   ; $5cb8: $11 $11 $11
	ld   [de], a                                     ; $5cbb: $12
	ld   b, l                                        ; $5cbc: $45
	ld   a, c                                        ; $5cbd: $79
	xor  e                                           ; $5cbe: $ab
	call z, $ddbd                                    ; $5cbf: $cc $bd $dd
	xor  $fd                                         ; $5cc2: $ee $fd
	call c, Call_0e5_64a9                            ; $5cc4: $dc $a9 $64
	ld   hl, $2212                                   ; $5cc7: $21 $12 $22
	inc  hl                                          ; $5cca: $23
	ld   d, [hl]                                     ; $5ccb: $56
	adc  c                                           ; $5ccc: $89
	adc  c                                           ; $5ccd: $89
	xor  d                                           ; $5cce: $aa
	xor  e                                           ; $5ccf: $ab
	cp   h                                           ; $5cd0: $bc
	db   $dd                                         ; $5cd1: $dd
	rst  $28                                         ; $5cd2: $ef
	xor  $db                                         ; $5cd3: $ee $db
	sub  a                                           ; $5cd5: $97
	ld   b, c                                        ; $5cd6: $41
	ld   de, $2211                                   ; $5cd7: $11 $11 $22
	ld   [hl], $88                                   ; $5cda: $36 $88
	sbc  c                                           ; $5cdc: $99
	sbc  d                                           ; $5cdd: $9a
	cp   d                                           ; $5cde: $ba
	xor  e                                           ; $5cdf: $ab
	xor  e                                           ; $5ce0: $ab
	db   $ed                                         ; $5ce1: $ed
	rst  $38                                         ; $5ce2: $ff
	db   $ed                                         ; $5ce3: $ed
	cp   d                                           ; $5ce4: $ba
	ld   [hl], h                                     ; $5ce5: $74
	ld   de, $1111                                   ; $5ce6: $11 $11 $11
	inc  h                                           ; $5ce9: $24
	ld   h, a                                        ; $5cea: $67
	sbc  c                                           ; $5ceb: $99
	cp   d                                           ; $5cec: $ba
	xor  e                                           ; $5ced: $ab
	cp   e                                           ; $5cee: $bb
	cp   e                                           ; $5cef: $bb
	cp   l                                           ; $5cf0: $bd
	sbc  $ee                                         ; $5cf1: $de $ee
	jp   c, $31a7                                    ; $5cf3: $da $a7 $31

	ld   de, $1211                                   ; $5cf6: $11 $11 $12
	ld   b, [hl]                                     ; $5cf9: $46
	adc  d                                           ; $5cfa: $8a
	xor  h                                           ; $5cfb: $ac
	xor  e                                           ; $5cfc: $ab
	cp   e                                           ; $5cfd: $bb
	cp   e                                           ; $5cfe: $bb
	cp   h                                           ; $5cff: $bc
	db   $ed                                         ; $5d00: $ed
	rst  $28                                         ; $5d01: $ef
	call c, Call_0e5_42a7                            ; $5d02: $dc $a7 $42
	ld   de, $0211                                   ; $5d05: $11 $11 $02
	dec  [hl]                                        ; $5d08: $35
	ld   a, c                                        ; $5d09: $79
	cp   d                                           ; $5d0a: $ba
	cp   e                                           ; $5d0b: $bb
	res  7, e                                        ; $5d0c: $cb $bb
	cp   h                                           ; $5d0e: $bc
	call c, $ccfe                                    ; $5d0f: $dc $fe $cc
	sbc  c                                           ; $5d12: $99
	ld   b, d                                        ; $5d13: $42
	ld   de, $1111                                   ; $5d14: $11 $11 $11
	dec  h                                           ; $5d17: $25
	ld   l, c                                        ; $5d18: $69
	xor  d                                           ; $5d19: $aa
	cp   h                                           ; $5d1a: $bc
	call z, $bccc                                    ; $5d1b: $cc $cc $bc
	db   $dd                                         ; $5d1e: $dd
	db   $ed                                         ; $5d1f: $ed
	res  3, b                                        ; $5d20: $cb $98
	ld   b, d                                        ; $5d22: $42
	ld   hl, $1211                                   ; $5d23: $21 $11 $12
	dec  [hl]                                        ; $5d26: $35
	ld   l, c                                        ; $5d27: $69
	xor  d                                           ; $5d28: $aa
	cp   l                                           ; $5d29: $bd
	call z, $cddc                                    ; $5d2a: $cc $dc $cd
	call c, $cbdd                                    ; $5d2d: $dc $dd $cb
	sub  a                                           ; $5d30: $97
	ld   [hl-], a                                    ; $5d31: $32
	ld   de, $2111                                   ; $5d32: $11 $11 $21
	dec  [hl]                                        ; $5d35: $35
	ld   l, c                                        ; $5d36: $69
	cp   d                                           ; $5d37: $ba
	cp   h                                           ; $5d38: $bc
	call z, $cdcd                                    ; $5d39: $cc $cd $cd
	call $badc                                       ; $5d3c: $cd $dc $ba
	add  [hl]                                        ; $5d3f: $86
	ld   [hl-], a                                    ; $5d40: $32
	ld   de, $1211                                   ; $5d41: $11 $11 $12
	dec  [hl]                                        ; $5d44: $35
	ld   l, d                                        ; $5d45: $6a
	sbc  d                                           ; $5d46: $9a
	call z, $cdcd                                    ; $5d47: $cc $cd $cd
	call $dbcc                                       ; $5d4a: $cd $cc $db
	xor  c                                           ; $5d4d: $a9
	ld   [hl], l                                     ; $5d4e: $75
	inc  sp                                          ; $5d4f: $33
	ld   de, $1211                                   ; $5d50: $11 $11 $12
	ld   b, l                                        ; $5d53: $45
	ld   a, d                                        ; $5d54: $7a
	xor  d                                           ; $5d55: $aa
	call z, $dccd                                    ; $5d56: $cc $cd $dc
	db   $dd                                         ; $5d59: $dd
	cp   [hl]                                        ; $5d5a: $be
	jp   c, Jump_0e5_74a8                            ; $5d5b: $da $a8 $74

	ld   [hl-], a                                    ; $5d5e: $32
	ld   de, $1311                                   ; $5d5f: $11 $11 $13
	ld   b, h                                        ; $5d62: $44
	adc  c                                           ; $5d63: $89
	sbc  e                                           ; $5d64: $9b
	db   $db                                         ; $5d65: $db
	cp   a                                           ; $5d66: $bf
	db   $ec                                         ; $5d67: $ec
	db   $dd                                         ; $5d68: $dd
	db   $dd                                         ; $5d69: $dd
	res  4, a                                        ; $5d6a: $cb $a7
	ld   h, h                                        ; $5d6c: $64
	ld   hl, $1221                                   ; $5d6d: $21 $21 $12
	ld   [hl+], a                                    ; $5d70: $22
	ld   b, [hl]                                     ; $5d71: $46
	adc  c                                           ; $5d72: $89
	xor  e                                           ; $5d73: $ab
	call $dddd                                       ; $5d74: $cd $dd $dd
	call c, $badc                                    ; $5d77: $dc $dc $ba
	sub  a                                           ; $5d7a: $97
	ld   d, e                                        ; $5d7b: $53
	ld   sp, $1111                                   ; $5d7c: $31 $11 $11
	inc  hl                                          ; $5d7f: $23
	ld   b, [hl]                                     ; $5d80: $46
	xor  c                                           ; $5d81: $a9
	sbc  l                                           ; $5d82: $9d
	cp   h                                           ; $5d83: $bc
	xor  $de                                         ; $5d84: $ee $de
	db   $eb                                         ; $5d86: $eb
	db   $dd                                         ; $5d87: $dd
	xor  d                                           ; $5d88: $aa
	add  [hl]                                        ; $5d89: $86
	ld   d, e                                        ; $5d8a: $53
	ld   sp, $1111                                   ; $5d8b: $31 $11 $11
	inc  hl                                          ; $5d8e: $23
	ld   b, [hl]                                     ; $5d8f: $46
	sbc  c                                           ; $5d90: $99
	xor  l                                           ; $5d91: $ad
	call $eefe                                       ; $5d92: $cd $fe $ee
	db   $ec                                         ; $5d95: $ec
	res  3, d                                        ; $5d96: $cb $9a
	add  [hl]                                        ; $5d98: $86
	ld   b, e                                        ; $5d99: $43
	ld   sp, $1211                                   ; $5d9a: $31 $11 $12
	inc  hl                                          ; $5d9d: $23
	ld   d, [hl]                                     ; $5d9e: $56
	xor  c                                           ; $5d9f: $a9
	call $ffdf                                       ; $5da0: $cd $df $ff
	xor  $dc                                         ; $5da3: $ee $dc
	res  3, c                                        ; $5da5: $cb $99
	ld   h, [hl]                                     ; $5da7: $66
	ld   b, e                                        ; $5da8: $43
	ld   hl, $1111                                   ; $5da9: $21 $11 $11
	inc  h                                           ; $5dac: $24
	ld   b, a                                        ; $5dad: $47
	xor  d                                           ; $5dae: $aa
	cp   [hl]                                        ; $5daf: $be
	rst  $28                                         ; $5db0: $ef
	rst  $38                                         ; $5db1: $ff
	rst  $28                                         ; $5db2: $ef
	db   $ec                                         ; $5db3: $ec
	db   $db                                         ; $5db4: $db
	xor  b                                           ; $5db5: $a8
	ld   [hl], l                                     ; $5db6: $75
	inc  sp                                          ; $5db7: $33
	ld   de, $1111                                   ; $5db8: $11 $11 $11
	inc  hl                                          ; $5dbb: $23
	ld   d, a                                        ; $5dbc: $57
	adc  d                                           ; $5dbd: $8a
	cp   l                                           ; $5dbe: $bd
	rst  $28                                         ; $5dbf: $ef
	rst  $38                                         ; $5dc0: $ff
	cp   $dc                                         ; $5dc1: $fe $dc
	res  5, c                                        ; $5dc3: $cb $a9
	ld   [hl], l                                     ; $5dc5: $75
	ld   [hl-], a                                    ; $5dc6: $32
	ld   de, $1111                                   ; $5dc7: $11 $11 $11
	inc  hl                                          ; $5dca: $23
	ld   b, a                                        ; $5dcb: $47
	adc  d                                           ; $5dcc: $8a
	call $ffff                                       ; $5dcd: $cd $ff $ff
	rst  $38                                         ; $5dd0: $ff
	sbc  $dc                                         ; $5dd1: $de $dc
	xor  b                                           ; $5dd3: $a8
	ld   h, l                                        ; $5dd4: $65
	ld   sp, $1111                                   ; $5dd5: $31 $11 $11
	ld   de, $4723                                   ; $5dd8: $11 $23 $47
	adc  d                                           ; $5ddb: $8a
	adc  $ff                                         ; $5ddc: $ce $ff
	rst  $38                                         ; $5dde: $ff
	rst  $28                                         ; $5ddf: $ef
	db   $ed                                         ; $5de0: $ed
	call c, Call_0e5_65a7                            ; $5de1: $dc $a7 $65
	ld   [hl+], a                                    ; $5de4: $22
	ld   de, $1111                                   ; $5de5: $11 $11 $11
	inc  de                                          ; $5de8: $13
	ld   d, l                                        ; $5de9: $55
	sbc  d                                           ; $5dea: $9a
	cp   l                                           ; $5deb: $bd
	rst  $28                                         ; $5dec: $ef
	rst  $38                                         ; $5ded: $ff
	rst  $38                                         ; $5dee: $ff
	db   $ed                                         ; $5def: $ed
	db   $db                                         ; $5df0: $db
	cp   b                                           ; $5df1: $b8
	ld   h, [hl]                                     ; $5df2: $66
	ld   b, d                                        ; $5df3: $42
	ld   de, $1111                                   ; $5df4: $11 $11 $11
	inc  de                                          ; $5df7: $13
	ld   b, h                                        ; $5df8: $44
	adc  c                                           ; $5df9: $89
	xor  l                                           ; $5dfa: $ad
	rst  JumpTable                                         ; $5dfb: $df
	rst  $38                                         ; $5dfc: $ff
	cp   $fe                                         ; $5dfd: $fe $fe
	db   $dd                                         ; $5dff: $dd
	cp   d                                           ; $5e00: $ba
	halt                                             ; $5e01: $76
	ld   d, h                                        ; $5e02: $54
	ld   [hl+], a                                    ; $5e03: $22
	ld   hl, $0211                                   ; $5e04: $21 $11 $02
	inc  [hl]                                        ; $5e07: $34
	ld   c, b                                        ; $5e08: $48
	adc  c                                           ; $5e09: $89
	db   $dd                                         ; $5e0a: $dd
	rst  $28                                         ; $5e0b: $ef
	rst  $38                                         ; $5e0c: $ff
	rst  $38                                         ; $5e0d: $ff
	db   $dd                                         ; $5e0e: $dd
	jp   c, $66a8                                    ; $5e0f: $da $a8 $66

	ld   b, e                                        ; $5e12: $43
	inc  sp                                          ; $5e13: $33
	ld   [de], a                                     ; $5e14: $12
	ld   de, $4313                                   ; $5e15: $11 $13 $43
	ld   a, b                                        ; $5e18: $78
	sbc  h                                           ; $5e19: $9c
	sbc  $ff                                         ; $5e1a: $de $ff
	rst  $38                                         ; $5e1c: $ff
	db   $fd                                         ; $5e1d: $fd
	call z, $88ba                                    ; $5e1e: $cc $ba $88
	ld   h, [hl]                                     ; $5e21: $66
	ld   d, e                                        ; $5e22: $53
	ld   [hl-], a                                    ; $5e23: $32
	ld   hl, $1412                                   ; $5e24: $21 $12 $14
	dec  [hl]                                        ; $5e27: $35
	ld   a, b                                        ; $5e28: $78
	xor  h                                           ; $5e29: $ac
	rst  JumpTable                                         ; $5e2a: $df
	cp   $fe                                         ; $5e2b: $fe $fe
	db   $dd                                         ; $5e2d: $dd
	call c, $97b9                                    ; $5e2e: $dc $b9 $97
	ld   h, [hl]                                     ; $5e31: $66
	inc  [hl]                                        ; $5e32: $34
	ld   b, d                                        ; $5e33: $42
	ld   hl, $2421                                   ; $5e34: $21 $21 $24
	ld   [hl], $79                                   ; $5e37: $36 $79
	xor  h                                           ; $5e39: $ac
	db   $dd                                         ; $5e3a: $dd
	cp   $ee                                         ; $5e3b: $fe $ee
	db   $dd                                         ; $5e3d: $dd
	cp   e                                           ; $5e3e: $bb
	cp   c                                           ; $5e3f: $b9
	sub  a                                           ; $5e40: $97
	halt                                             ; $5e41: $76
	ld   b, l                                        ; $5e42: $45
	ld   b, e                                        ; $5e43: $43
	ld   [hl-], a                                    ; $5e44: $32
	ld   hl, $4633                                   ; $5e45: $21 $33 $46
	ld   a, c                                        ; $5e48: $79
	xor  h                                           ; $5e49: $ac
	call $defd                                       ; $5e4a: $cd $fd $de
	call z, $bacb                                    ; $5e4d: $cc $cb $ba
	xor  b                                           ; $5e50: $a8
	ld   [hl], a                                     ; $5e51: $77
	ld   d, l                                        ; $5e52: $55
	ld   d, e                                        ; $5e53: $53
	inc  sp                                          ; $5e54: $33
	ld   [hl-], a                                    ; $5e55: $32
	inc  [hl]                                        ; $5e56: $34
	ld   [hl], $78                                   ; $5e57: $36 $78
	xor  d                                           ; $5e59: $aa
	cp   h                                           ; $5e5a: $bc
	call $dbcd                                       ; $5e5b: $cd $cd $db
	cp   e                                           ; $5e5e: $bb
	xor  d                                           ; $5e5f: $aa
	xor  b                                           ; $5e60: $a8
	adc  b                                           ; $5e61: $88
	ld   h, l                                        ; $5e62: $65
	ld   h, l                                        ; $5e63: $65
	ld   b, h                                        ; $5e64: $44
	ld   b, e                                        ; $5e65: $43
	inc  [hl]                                        ; $5e66: $34
	ld   b, h                                        ; $5e67: $44
	ld   h, [hl]                                     ; $5e68: $66
	sbc  c                                           ; $5e69: $99
	cp   d                                           ; $5e6a: $ba
	cp   h                                           ; $5e6b: $bc
	res  7, e                                        ; $5e6c: $cb $bb
	xor  e                                           ; $5e6e: $ab
	xor  c                                           ; $5e6f: $a9
	xor  d                                           ; $5e70: $aa
	sbc  b                                           ; $5e71: $98
	adc  b                                           ; $5e72: $88
	ld   h, a                                        ; $5e73: $67
	ld   [hl], l                                     ; $5e74: $75
	ld   h, l                                        ; $5e75: $65
	ld   d, h                                        ; $5e76: $54
	ld   b, l                                        ; $5e77: $45
	ld   d, [hl]                                     ; $5e78: $56
	ld   h, a                                        ; $5e79: $67
	ld   a, b                                        ; $5e7a: $78
	sbc  c                                           ; $5e7b: $99
	xor  d                                           ; $5e7c: $aa
	xor  e                                           ; $5e7d: $ab
	xor  d                                           ; $5e7e: $aa
	sbc  d                                           ; $5e7f: $9a
	xor  d                                           ; $5e80: $aa
	xor  c                                           ; $5e81: $a9
	sbc  c                                           ; $5e82: $99
	adc  b                                           ; $5e83: $88
	adc  b                                           ; $5e84: $88
	adc  b                                           ; $5e85: $88
	ld   [hl], a                                     ; $5e86: $77
	ld   h, [hl]                                     ; $5e87: $66
	ld   d, [hl]                                     ; $5e88: $56
	ld   d, [hl]                                     ; $5e89: $56
	ld   d, [hl]                                     ; $5e8a: $56
	ld   [hl], a                                     ; $5e8b: $77
	ld   a, b                                        ; $5e8c: $78
	adc  b                                           ; $5e8d: $88
	sbc  c                                           ; $5e8e: $99
	xor  d                                           ; $5e8f: $aa
	xor  c                                           ; $5e90: $a9
	xor  d                                           ; $5e91: $aa
	sbc  c                                           ; $5e92: $99
	sbc  c                                           ; $5e93: $99
	sbc  c                                           ; $5e94: $99
	adc  c                                           ; $5e95: $89
	sbc  b                                           ; $5e96: $98
	adc  b                                           ; $5e97: $88
	ld   [hl], a                                     ; $5e98: $77
	ld   [hl], a                                     ; $5e99: $77
	ld   h, [hl]                                     ; $5e9a: $66
	ld   h, a                                        ; $5e9b: $67
	ld   [hl], a                                     ; $5e9c: $77
	ld   a, b                                        ; $5e9d: $78
	adc  c                                           ; $5e9e: $89
	sbc  b                                           ; $5e9f: $98
	sbc  c                                           ; $5ea0: $99
	sbc  c                                           ; $5ea1: $99
	adc  b                                           ; $5ea2: $88
	adc  b                                           ; $5ea3: $88
	sbc  c                                           ; $5ea4: $99
	sbc  b                                           ; $5ea5: $98
	sbc  b                                           ; $5ea6: $98
	adc  b                                           ; $5ea7: $88
	adc  b                                           ; $5ea8: $88
	adc  b                                           ; $5ea9: $88
	ld   [hl], a                                     ; $5eaa: $77
	ld   [hl], a                                     ; $5eab: $77
	ld   [hl], a                                     ; $5eac: $77
	ld   a, b                                        ; $5ead: $78
	adc  b                                           ; $5eae: $88
	adc  c                                           ; $5eaf: $89
	sbc  c                                           ; $5eb0: $99
	adc  b                                           ; $5eb1: $88
	adc  c                                           ; $5eb2: $89
	sbc  b                                           ; $5eb3: $98
	sbc  b                                           ; $5eb4: $98
	adc  b                                           ; $5eb5: $88
	adc  b                                           ; $5eb6: $88
	adc  b                                           ; $5eb7: $88
	ld   [hl], a                                     ; $5eb8: $77
	ld   a, b                                        ; $5eb9: $78
	adc  b                                           ; $5eba: $88
	adc  b                                           ; $5ebb: $88
	adc  b                                           ; $5ebc: $88
	adc  b                                           ; $5ebd: $88
	adc  b                                           ; $5ebe: $88
	sbc  c                                           ; $5ebf: $99
	sbc  c                                           ; $5ec0: $99
	sbc  c                                           ; $5ec1: $99
	sbc  c                                           ; $5ec2: $99
	sbc  b                                           ; $5ec3: $98
	adc  b                                           ; $5ec4: $88
	adc  b                                           ; $5ec5: $88
	adc  b                                           ; $5ec6: $88
	ld   [hl], a                                     ; $5ec7: $77
	adc  b                                           ; $5ec8: $88
	adc  b                                           ; $5ec9: $88
	adc  b                                           ; $5eca: $88
	adc  b                                           ; $5ecb: $88
	adc  b                                           ; $5ecc: $88
	adc  b                                           ; $5ecd: $88
	adc  b                                           ; $5ece: $88
	adc  b                                           ; $5ecf: $88
	adc  b                                           ; $5ed0: $88
	sbc  c                                           ; $5ed1: $99
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
	adc  c                                           ; $60e2: $89
	sbc  b                                           ; $60e3: $98
	adc  b                                           ; $60e4: $88
	sbc  d                                           ; $60e5: $9a
	add  a                                           ; $60e6: $87
	sbc  b                                           ; $60e7: $98
	ld   a, b                                        ; $60e8: $78
	sub  a                                           ; $60e9: $97
	ld   a, c                                        ; $60ea: $79
	add  a                                           ; $60eb: $87
	adc  c                                           ; $60ec: $89
	sbc  b                                           ; $60ed: $98
	adc  b                                           ; $60ee: $88
	adc  c                                           ; $60ef: $89
	sbc  d                                           ; $60f0: $9a
	add  a                                           ; $60f1: $87
	adc  b                                           ; $60f2: $88
	ld   a, b                                        ; $60f3: $78
	sbc  b                                           ; $60f4: $98
	ld   [hl], a                                     ; $60f5: $77
	adc  b                                           ; $60f6: $88
	sbc  c                                           ; $60f7: $99
	halt                                             ; $60f8: $76
	ld   [hl], a                                     ; $60f9: $77
	ld   [hl], a                                     ; $60fa: $77
	ld   [hl], a                                     ; $60fb: $77
	ld   a, b                                        ; $60fc: $78
	adc  c                                           ; $60fd: $89
	sbc  d                                           ; $60fe: $9a
	xor  c                                           ; $60ff: $a9
	xor  c                                           ; $6100: $a9
	sbc  b                                           ; $6101: $98
	ld   [hl], a                                     ; $6102: $77
	ld   d, h                                        ; $6103: $54
	ld   d, h                                        ; $6104: $54
	ld   b, l                                        ; $6105: $45
	ld   d, l                                        ; $6106: $55
	ld   d, a                                        ; $6107: $57
	ld   a, b                                        ; $6108: $78
	xor  c                                           ; $6109: $a9
	cp   h                                           ; $610a: $bc
	call z, $cccc                                    ; $610b: $cc $cc $cc
	jp   z, Jump_0e5_7599                            ; $610e: $ca $99 $75

	ld   hl, $1211                                   ; $6111: $21 $11 $12
	ld   b, h                                        ; $6114: $44
	ld   l, c                                        ; $6115: $69
	cp   e                                           ; $6116: $bb
	rst  JumpTable                                         ; $6117: $df
	rst  $28                                         ; $6118: $ef
	db   $fd                                         ; $6119: $fd
	db   $db                                         ; $611a: $db
	xor  c                                           ; $611b: $a9
	sbc  c                                           ; $611c: $99
	adc  c                                           ; $611d: $89
	adc  b                                           ; $611e: $88
	ld   [hl], l                                     ; $611f: $75
	ld   hl, $1111                                   ; $6120: $21 $11 $11
	inc  h                                           ; $6123: $24
	ld   d, a                                        ; $6124: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6125: $cf
	rst  $28                                         ; $6126: $ef
	rst  $38                                         ; $6127: $ff
	rst  $38                                         ; $6128: $ff
	jp   c, Jump_0e5_79aa                            ; $6129: $da $aa $79

	xor  c                                           ; $612c: $a9
	sbc  c                                           ; $612d: $99
	ld   h, c                                        ; $612e: $61
	ld   de, $1111                                   ; $612f: $11 $11 $11
	inc  [hl]                                        ; $6132: $34
	ld   a, e                                        ; $6133: $7b
	rst  $38                                         ; $6134: $ff
	rst  $38                                         ; $6135: $ff
	rst  $38                                         ; $6136: $ff
	db   $fd                                         ; $6137: $fd
	cp   c                                           ; $6138: $b9
	halt                                             ; $6139: $76
	sbc  c                                           ; $613a: $99
	adc  d                                           ; $613b: $8a
	add  h                                           ; $613c: $84
	ld   de, $1111                                   ; $613d: $11 $11 $11
	inc  d                                           ; $6140: $14
	ld   l, b                                        ; $6141: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6142: $cf
	rst  $38                                         ; $6143: $ff
	rst  $38                                         ; $6144: $ff
	cp   $ca                                         ; $6145: $fe $ca
	ld   [hl], a                                     ; $6147: $77
	ld   l, b                                        ; $6148: $68
	sbc  c                                           ; $6149: $99
	xor  c                                           ; $614a: $a9
	ld   b, c                                        ; $614b: $41
	ld   de, $1111                                   ; $614c: $11 $11 $11
	ld   b, a                                        ; $614f: $47
	xor  [hl]                                        ; $6150: $ae
	rst  $38                                         ; $6151: $ff
	rst  $38                                         ; $6152: $ff
	rst  $38                                         ; $6153: $ff
	jp   z, Jump_0e5_6796                            ; $6154: $ca $96 $67

	sbc  c                                           ; $6157: $99
	sbc  e                                           ; $6158: $9b
	add  e                                           ; $6159: $83
	ld   bc, $1111                                   ; $615a: $01 $11 $11
	ld   d, $9c                                      ; $615d: $16 $9c
	rst  $38                                         ; $615f: $ff
	rst  $38                                         ; $6160: $ff
	rst  $38                                         ; $6161: $ff
	db   $db                                         ; $6162: $db
	sub  a                                           ; $6163: $97
	ld   b, l                                        ; $6164: $45
	adc  c                                           ; $6165: $89
	xor  e                                           ; $6166: $ab
	and  [hl]                                        ; $6167: $a6
	ld   hl, $1111                                   ; $6168: $21 $11 $11
	ld   [de], a                                     ; $616b: $12
	adc  h                                           ; $616c: $8c
	rst  JumpTable                                         ; $616d: $df
	rst  $38                                         ; $616e: $ff
	rst  $38                                         ; $616f: $ff
	ld   a, [$5498]                                  ; $6170: $fa $98 $54
	ld   l, d                                        ; $6173: $6a
	xor  d                                           ; $6174: $aa
	jp   c, $1162                                    ; $6175: $da $62 $11

	ld   de, $3a11                                   ; $6178: $11 $11 $3a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $617b: $cf
	rst  $38                                         ; $617c: $ff
	rst  $38                                         ; $617d: $ff
	db   $fd                                         ; $617e: $fd
	sub  a                                           ; $617f: $97
	ld   d, h                                        ; $6180: $54
	ld   b, a                                        ; $6181: $47
	sbc  h                                           ; $6182: $9c
	db   $dd                                         ; $6183: $dd
	or   l                                           ; $6184: $b5
	ld   hl, $1111                                   ; $6185: $21 $11 $11
	inc  d                                           ; $6188: $14
	cp   l                                           ; $6189: $bd
	rst  $38                                         ; $618a: $ff
	rst  $38                                         ; $618b: $ff
	rst  $38                                         ; $618c: $ff
	cp   b                                           ; $618d: $b8
	ld   d, h                                        ; $618e: $54
	ld   d, h                                        ; $618f: $54
	adc  h                                           ; $6190: $8c
	sbc  $da                                         ; $6191: $de $da
	ld   b, c                                        ; $6193: $41
	ld   de, $1111                                   ; $6194: $11 $11 $11
	ld   a, a                                        ; $6197: $7f
	rst  $38                                         ; $6198: $ff
	rst  $38                                         ; $6199: $ff
	rst  $38                                         ; $619a: $ff
	ld   hl, sp+$62                                  ; $619b: $f8 $62
	ld   b, h                                        ; $619d: $44
	ld   e, e                                        ; $619e: $5b
	sbc  $df                                         ; $619f: $de $df
	sub  e                                           ; $61a1: $93
	ld   de, $1111                                   ; $61a2: $11 $11 $11
	rla                                              ; $61a5: $17
	rst  $38                                         ; $61a6: $ff
	rst  $38                                         ; $61a7: $ff
	rst  $38                                         ; $61a8: $ff
	ei                                               ; $61a9: $fb
	ld   [hl], h                                     ; $61aa: $74
	inc  hl                                          ; $61ab: $23
	ld   e, b                                        ; $61ac: $58
	rst  JumpTable                                         ; $61ad: $df
	xor  $d7                                         ; $61ae: $ee $d7
	ld   sp, $1111                                   ; $61b0: $31 $11 $11
	inc  d                                           ; $61b3: $14
	cp   a                                           ; $61b4: $bf
	rst  $38                                         ; $61b5: $ff
	rst  $38                                         ; $61b6: $ff
	db   $fc                                         ; $61b7: $fc
	add  [hl]                                        ; $61b8: $86
	ld   sp, $ae57                                   ; $61b9: $31 $57 $ae
	cp   $eb                                         ; $61bc: $fe $eb
	ld   h, c                                        ; $61be: $61
	ld   de, $1111                                   ; $61bf: $11 $11 $11
	sbc  l                                           ; $61c2: $9d
	rst  $38                                         ; $61c3: $ff
	rst  $38                                         ; $61c4: $ff
	rst  $38                                         ; $61c5: $ff
	add  [hl]                                        ; $61c6: $86
	ld   d, d                                        ; $61c7: $52
	ld   [hl], $ad                                   ; $61c8: $36 $ad
	rst  $38                                         ; $61ca: $ff
	db   $dd                                         ; $61cb: $dd
	sub  e                                           ; $61cc: $93
	ld   de, $1111                                   ; $61cd: $11 $11 $11
	ld   c, h                                        ; $61d0: $4c
	rst  $38                                         ; $61d1: $ff
	rst  $38                                         ; $61d2: $ff
	rst  $38                                         ; $61d3: $ff
	sub  $44                                         ; $61d4: $d6 $44
	dec  h                                           ; $61d6: $25
	adc  e                                           ; $61d7: $8b
	rst  $28                                         ; $61d8: $ef
	db   $fd                                         ; $61d9: $fd
	rst  $10                                         ; $61da: $d7
	ld   hl, $1111                                   ; $61db: $21 $11 $11
	rla                                              ; $61de: $17
	rst  $38                                         ; $61df: $ff
	rst  $38                                         ; $61e0: $ff
	rst  $38                                         ; $61e1: $ff
	ld   a, [$4343]                                  ; $61e2: $fa $43 $43
	ld   a, e                                        ; $61e5: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61e6: $cf
	cp   $ec                                         ; $61e7: $fe $ec
	ld   h, c                                        ; $61e9: $61
	ld   de, $1111                                   ; $61ea: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ed: $cf
	rst  $38                                         ; $61ee: $ff
	rst  $38                                         ; $61ef: $ff
	rst  $38                                         ; $61f0: $ff
	add  e                                           ; $61f1: $83
	ld   b, e                                        ; $61f2: $43
	ld   e, c                                        ; $61f3: $59
	cp   [hl]                                        ; $61f4: $be
	rst  $38                                         ; $61f5: $ff
	db   $dd                                         ; $61f6: $dd
	and  h                                           ; $61f7: $a4
	ld   de, $1111                                   ; $61f8: $11 $11 $11
	ld   e, a                                        ; $61fb: $5f
	rst  $38                                         ; $61fc: $ff
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	sub  $33                                         ; $61ff: $d6 $33
	ld   h, a                                        ; $6201: $67
	cp   h                                           ; $6202: $bc
	rst  $38                                         ; $6203: $ff
	call c, $21da                                    ; $6204: $dc $da $21
	ld   de, $1a11                                   ; $6207: $11 $11 $1a
	rst  $38                                         ; $620a: $ff
	rst  $38                                         ; $620b: $ff
	db   $fd                                         ; $620c: $fd
	ld   sp, hl                                      ; $620d: $f9
	ld   b, l                                        ; $620e: $45
	ld   c, b                                        ; $620f: $48
	adc  h                                           ; $6210: $8c
	rst  JumpTable                                         ; $6211: $df
	db   $fd                                         ; $6212: $fd
	db   $db                                         ; $6213: $db
	add  c                                           ; $6214: $81
	ld   de, $1211                                   ; $6215: $11 $11 $12
	cp   a                                           ; $6218: $bf
	rst  $38                                         ; $6219: $ff
	rst  $38                                         ; $621a: $ff
	db   $eb                                         ; $621b: $eb
	ld   h, h                                        ; $621c: $64
	ld   b, [hl]                                     ; $621d: $46
	ld   a, d                                        ; $621e: $7a
	call c, $edff                                    ; $621f: $dc $ff $ed
	ret  z                                           ; $6222: $c8

	ld   de, $1111                                   ; $6223: $11 $11 $11
	ld   c, [hl]                                     ; $6226: $4e
	rst  $38                                         ; $6227: $ff
	rst  $38                                         ; $6228: $ff
	db   $fd                                         ; $6229: $fd
	and  a                                           ; $622a: $a7
	ld   d, e                                        ; $622b: $53
	ld   h, a                                        ; $622c: $67
	call $fecf                                       ; $622d: $cd $cf $fe
	bit  4, c                                        ; $6230: $cb $61
	ld   de, $1711                                   ; $6232: $11 $11 $17
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	ret                                              ; $6238: $c9


	ld   b, l                                        ; $6239: $45
	ld   d, a                                        ; $623a: $57
	sbc  h                                           ; $623b: $9c
	sbc  $ff                                         ; $623c: $de $ff
	cp   $b4                                         ; $623e: $fe $b4
	ld   de, $1111                                   ; $6240: $11 $11 $11
	ld   a, a                                        ; $6243: $7f
	rst  $38                                         ; $6244: $ff
	rst  $38                                         ; $6245: $ff
	ld   [$4674], a                                  ; $6246: $ea $74 $46
	ld   l, c                                        ; $6249: $69
	adc  $ff                                         ; $624a: $ce $ff
	rst  $28                                         ; $624c: $ef
	jp   c, $1131                                    ; $624d: $da $31 $11

	ld   de, $ff1a                                   ; $6250: $11 $1a $ff
	rst  $38                                         ; $6253: $ff
	db   $fc                                         ; $6254: $fc
	sub  a                                           ; $6255: $97
	ld   b, h                                        ; $6256: $44
	ld   d, a                                        ; $6257: $57
	cp   h                                           ; $6258: $bc
	xor  $ff                                         ; $6259: $ee $ff
	cp   $a4                                         ; $625b: $fe $a4
	ld   de, $1111                                   ; $625d: $11 $11 $11
	sbc  a                                           ; $6260: $9f
	rst  $38                                         ; $6261: $ff
	rst  $38                                         ; $6262: $ff
	ret                                              ; $6263: $c9


	halt                                             ; $6264: $76
	ld   b, a                                        ; $6265: $47
	ld   a, c                                        ; $6266: $79
	call c, $ffee                                    ; $6267: $dc $ee $ff
	call c, $1141                                    ; $626a: $dc $41 $11
	ld   de, $ff19                                   ; $626d: $11 $19 $ff
	rst  $38                                         ; $6270: $ff
	ei                                               ; $6271: $fb
	sub  a                                           ; $6272: $97
	ld   d, l                                        ; $6273: $55
	ld   a, b                                        ; $6274: $78
	sbc  h                                           ; $6275: $9c
	adc  $fe                                         ; $6276: $ce $fe
	db   $fd                                         ; $6278: $fd
	push bc                                          ; $6279: $c5
	ld   de, $1111                                   ; $627a: $11 $11 $11
	xor  a                                           ; $627d: $af
	rst  $38                                         ; $627e: $ff
	rst  $38                                         ; $627f: $ff
	cp   b                                           ; $6280: $b8
	ld   [hl], h                                     ; $6281: $74
	ld   d, a                                        ; $6282: $57
	adc  c                                           ; $6283: $89
	db   $dd                                         ; $6284: $dd
	rst  $28                                         ; $6285: $ef
	rst  $38                                         ; $6286: $ff
	db   $ec                                         ; $6287: $ec
	ld   h, c                                        ; $6288: $61
	ld   de, $1a11                                   ; $6289: $11 $11 $1a
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	ld   a, [$5567]                                  ; $628e: $fa $67 $55
	ld   [hl], a                                     ; $6291: $77
	sbc  d                                           ; $6292: $9a
	db   $dd                                         ; $6293: $dd
	rst  $38                                         ; $6294: $ff
	rst  $38                                         ; $6295: $ff
	ret                                              ; $6296: $c9


	ld   de, $1111                                   ; $6297: $11 $11 $11
	ld   e, a                                        ; $629a: $5f
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	or   a                                           ; $629d: $b7
	halt                                             ; $629e: $76
	ld   d, a                                        ; $629f: $57
	ld   a, b                                        ; $62a0: $78
	xor  h                                           ; $62a1: $ac
	db   $dd                                         ; $62a2: $dd
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	or   e                                           ; $62a5: $b3
	ld   de, $1211                                   ; $62a6: $11 $11 $12
	rst  JumpTable                                         ; $62a9: $df
	rst  $38                                         ; $62aa: $ff
	cp   $95                                         ; $62ab: $fe $95
	halt                                             ; $62ad: $76
	ld   a, b                                        ; $62ae: $78
	ld   a, c                                        ; $62af: $79
	cp   l                                           ; $62b0: $bd
	sbc  $ff                                         ; $62b1: $de $ff
	db   $fd                                         ; $62b3: $fd
	ld   [hl], c                                     ; $62b4: $71
	ld   de, $1811                                   ; $62b5: $11 $11 $18
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	ld   a, [$7766]                                  ; $62ba: $fa $66 $77
	halt                                             ; $62bd: $76
	adc  c                                           ; $62be: $89
	call c, $ffdf                                    ; $62bf: $dc $df $ff
	ei                                               ; $62c2: $fb
	ld   sp, $1111                                   ; $62c3: $31 $11 $11
	ld   a, $ff                                      ; $62c6: $3e $ff
	rst  $38                                         ; $62c8: $ff
	jp   hl                                          ; $62c9: $e9


	ld   d, [hl]                                     ; $62ca: $56
	ld   [hl], a                                     ; $62cb: $77
	adc  b                                           ; $62cc: $88
	ld   a, c                                        ; $62cd: $79
	call c, $ffef                                    ; $62ce: $dc $ef $ff
	ret  c                                           ; $62d1: $d8

	ld   de, $1111                                   ; $62d2: $11 $11 $11
	ld   a, a                                        ; $62d5: $7f
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	rst  $10                                         ; $62d8: $d7
	ld   h, [hl]                                     ; $62d9: $66
	ld   a, b                                        ; $62da: $78
	ld   a, b                                        ; $62db: $78
	sbc  e                                           ; $62dc: $9b
	cp   h                                           ; $62dd: $bc
	rst  JumpTable                                         ; $62de: $df
	rst  $38                                         ; $62df: $ff
	call nz, $1111                                   ; $62e0: $c4 $11 $11
	ld   [de], a                                     ; $62e3: $12
	rst  $28                                         ; $62e4: $ef
	rst  $38                                         ; $62e5: $ff
	db   $fd                                         ; $62e6: $fd
	add  l                                           ; $62e7: $85
	ld   [hl], a                                     ; $62e8: $77
	cp   c                                           ; $62e9: $b9
	sub  a                                           ; $62ea: $97
	adc  e                                           ; $62eb: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62ec: $cf
	rst  $38                                         ; $62ed: $ff
	cp   $81                                         ; $62ee: $fe $81
	ld   de, $1a11                                   ; $62f0: $11 $11 $1a
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	reti                                             ; $62f5: $d9


	ld   d, e                                        ; $62f6: $53
	ld   l, c                                        ; $62f7: $69
	cp   d                                           ; $62f8: $ba
	add  a                                           ; $62f9: $87
	adc  h                                           ; $62fa: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62fb: $cf
	rst  $38                                         ; $62fc: $ff
	db   $fd                                         ; $62fd: $fd
	ld   d, c                                        ; $62fe: $51
	ld   de, $1e11                                   ; $62ff: $11 $11 $1e
	rst  $38                                         ; $6302: $ff
	cp   $b9                                         ; $6303: $fe $b9
	ld   d, h                                        ; $6305: $54
	ld   l, b                                        ; $6306: $68
	cp   d                                           ; $6307: $ba
	halt                                             ; $6308: $76
	sbc  h                                           ; $6309: $9c
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	ei                                               ; $630c: $fb
	ld   sp, $1111                                   ; $630d: $31 $11 $11
	cpl                                              ; $6310: $2f
	rst  $38                                         ; $6311: $ff
	db   $fd                                         ; $6312: $fd
	xor  b                                           ; $6313: $a8
	ld   d, h                                        ; $6314: $54
	ld   l, b                                        ; $6315: $68
	cp   d                                           ; $6316: $ba
	ld   [hl], l                                     ; $6317: $75
	sbc  h                                           ; $6318: $9c
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	db   $fc                                         ; $631b: $fc
	ld   sp, $1111                                   ; $631c: $31 $11 $11
	ccf                                              ; $631f: $3f
	rst  $38                                         ; $6320: $ff
	db   $fc                                         ; $6321: $fc
	sub  [hl]                                        ; $6322: $96
	ld   d, l                                        ; $6323: $55
	ld   l, b                                        ; $6324: $68
	adc  c                                           ; $6325: $89
	halt                                             ; $6326: $76
	sbc  h                                           ; $6327: $9c
	rst  $38                                         ; $6328: $ff
	rst  $38                                         ; $6329: $ff
	ld   a, [$1121]                                  ; $632a: $fa $21 $11
	ld   de, $ff6f                                   ; $632d: $11 $6f $ff
	ei                                               ; $6330: $fb
	add  [hl]                                        ; $6331: $86
	ld   b, h                                        ; $6332: $44
	ld   a, b                                        ; $6333: $78
	xor  b                                           ; $6334: $a8
	ld   [hl], a                                     ; $6335: $77
	sbc  l                                           ; $6336: $9d
	rst  $38                                         ; $6337: $ff
	rst  $38                                         ; $6338: $ff
	ld   a, [$1121]                                  ; $6339: $fa $21 $11
	ld   de, $ff5f                                   ; $633c: $11 $5f $ff
	db   $fc                                         ; $633f: $fc
	ld   [hl], l                                     ; $6340: $75
	ld   d, l                                        ; $6341: $55
	ld   e, b                                        ; $6342: $58
	sbc  c                                           ; $6343: $99
	halt                                             ; $6344: $76
	adc  h                                           ; $6345: $8c
	rst  $38                                         ; $6346: $ff
	rst  $38                                         ; $6347: $ff
	ei                                               ; $6348: $fb
	ld   hl, $1111                                   ; $6349: $21 $11 $11
	ld   l, a                                        ; $634c: $6f
	rst  $38                                         ; $634d: $ff
	db   $fc                                         ; $634e: $fc
	sub  [hl]                                        ; $634f: $96
	ld   d, h                                        ; $6350: $54
	ld   d, a                                        ; $6351: $57
	sbc  d                                           ; $6352: $9a
	halt                                             ; $6353: $76
	adc  l                                           ; $6354: $8d
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	ei                                               ; $6357: $fb
	ld   sp, $1111                                   ; $6358: $31 $11 $11
	adc  a                                           ; $635b: $8f
	rst  $38                                         ; $635c: $ff
	ei                                               ; $635d: $fb
	add  [hl]                                        ; $635e: $86
	ld   b, h                                        ; $635f: $44
	ld   d, a                                        ; $6360: $57
	cp   d                                           ; $6361: $ba
	halt                                             ; $6362: $76
	adc  l                                           ; $6363: $8d
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	ei                                               ; $6366: $fb
	ld   b, c                                        ; $6367: $41
	ld   de, $6f11                                   ; $6368: $11 $11 $6f
	rst  $38                                         ; $636b: $ff
	db   $fc                                         ; $636c: $fc
	add  l                                           ; $636d: $85
	ld   b, h                                        ; $636e: $44
	ld   d, a                                        ; $636f: $57
	sbc  c                                           ; $6370: $99
	add  a                                           ; $6371: $87
	sbc  l                                           ; $6372: $9d
	rst  $38                                         ; $6373: $ff
	rst  $38                                         ; $6374: $ff
	ld   a, [$1131]                                  ; $6375: $fa $31 $11
	ld   de, $ff6f                                   ; $6378: $11 $6f $ff
	db   $fc                                         ; $637b: $fc
	add  [hl]                                        ; $637c: $86
	ld   h, e                                        ; $637d: $63
	ld   b, [hl]                                     ; $637e: $46
	sbc  e                                           ; $637f: $9b
	sub  a                                           ; $6380: $97
	ld   a, h                                        ; $6381: $7c
	rst  $38                                         ; $6382: $ff
	rst  $38                                         ; $6383: $ff
	ei                                               ; $6384: $fb
	ld   h, c                                        ; $6385: $61
	ld   de, $5f11                                   ; $6386: $11 $11 $5f
	rst  $38                                         ; $6389: $ff
	db   $fc                                         ; $638a: $fc
	sub  [hl]                                        ; $638b: $96
	ld   d, e                                        ; $638c: $53
	ld   d, [hl]                                     ; $638d: $56
	xor  e                                           ; $638e: $ab
	and  a                                           ; $638f: $a7
	ld   l, e                                        ; $6390: $6b
	rst  $38                                         ; $6391: $ff
	rst  $38                                         ; $6392: $ff
	ei                                               ; $6393: $fb
	ld   [hl], c                                     ; $6394: $71
	ld   de, $1f11                                   ; $6395: $11 $11 $1f
	rst  $38                                         ; $6398: $ff
	db   $fd                                         ; $6399: $fd
	sub  a                                           ; $639a: $97
	ld   h, h                                        ; $639b: $64
	ld   b, l                                        ; $639c: $45
	sbc  h                                           ; $639d: $9c
	xor  b                                           ; $639e: $a8
	ld   e, c                                        ; $639f: $59
	rst  $28                                         ; $63a0: $ef
	rst  $38                                         ; $63a1: $ff
	ei                                               ; $63a2: $fb
	add  c                                           ; $63a3: $81
	ld   de, $1c11                                   ; $63a4: $11 $11 $1c
	rst  $38                                         ; $63a7: $ff

Call_0e5_63a8:
Jump_0e5_63a8:
	db   $fd                                         ; $63a8: $fd
	sub  l                                           ; $63a9: $95
	ld   [hl], l                                     ; $63aa: $75
	ld   h, l                                        ; $63ab: $65
	ld   a, d                                        ; $63ac: $7a
	cp   d                                           ; $63ad: $ba
	ld   a, b                                        ; $63ae: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63af: $cf
	rst  $38                                         ; $63b0: $ff
	db   $fd                                         ; $63b1: $fd
	sub  c                                           ; $63b2: $91
	ld   de, $1c11                                   ; $63b3: $11 $11 $1c
	rst  $38                                         ; $63b6: $ff
	db   $fc                                         ; $63b7: $fc
	sub  [hl]                                        ; $63b8: $96
	halt                                             ; $63b9: $76
	ld   d, l                                        ; $63ba: $55
	ld   a, e                                        ; $63bb: $7b
	cp   d                                           ; $63bc: $ba
	ld   [hl], a                                     ; $63bd: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63be: $cf
	rst  $38                                         ; $63bf: $ff
	db   $fd                                         ; $63c0: $fd
	sub  e                                           ; $63c1: $93
	ld   de, $1811                                   ; $63c2: $11 $11 $18
	rst  $38                                         ; $63c5: $ff
	db   $fd                                         ; $63c6: $fd
	add  [hl]                                        ; $63c7: $86
	ld   [hl], a                                     ; $63c8: $77
	ld   d, l                                        ; $63c9: $55
	ld   l, d                                        ; $63ca: $6a
	cp   e                                           ; $63cb: $bb
	sub  a                                           ; $63cc: $97
	cp   a                                           ; $63cd: $bf
	rst  $38                                         ; $63ce: $ff
	cp   $94                                         ; $63cf: $fe $94
	ld   de, $1611                                   ; $63d1: $11 $11 $16
	rst  $38                                         ; $63d4: $ff
	db   $fd                                         ; $63d5: $fd
	add  l                                           ; $63d6: $85
	ld   [hl], a                                     ; $63d7: $77
	ld   h, [hl]                                     ; $63d8: $66
	ld   e, c                                        ; $63d9: $59
	xor  e                                           ; $63da: $ab
	sub  a                                           ; $63db: $97
	sbc  l                                           ; $63dc: $9d
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	sub  h                                           ; $63df: $94
	ld   de, $1211                                   ; $63e0: $11 $11 $12
	rst  $38                                         ; $63e3: $ff
	rst  $38                                         ; $63e4: $ff
	sub  l                                           ; $63e5: $95
	ld   d, a                                        ; $63e6: $57
	ld   a, b                                        ; $63e7: $78
	ld   h, a                                        ; $63e8: $67
	sbc  d                                           ; $63e9: $9a
	xor  c                                           ; $63ea: $a9
	cp   l                                           ; $63eb: $bd
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	and  h                                           ; $63ee: $a4
	ld   de, $1211                                   ; $63ef: $11 $11 $12
	rst  $38                                         ; $63f2: $ff
	rst  $38                                         ; $63f3: $ff
	sub  l                                           ; $63f4: $95
	ld   b, a                                        ; $63f5: $47
	ld   [hl], a                                     ; $63f6: $77
	ld   h, a                                        ; $63f7: $67
	xor  d                                           ; $63f8: $aa
	cp   c                                           ; $63f9: $b9
	cp   l                                           ; $63fa: $bd
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	push bc                                          ; $63fd: $c5
	ld   de, $1311                                   ; $63fe: $11 $11 $13
	rst  $38                                         ; $6401: $ff
	rst  $38                                         ; $6402: $ff
	or   l                                           ; $6403: $b5
	ld   b, [hl]                                     ; $6404: $46
	ld   a, c                                        ; $6405: $79
	adc  b                                           ; $6406: $88
	sbc  b                                           ; $6407: $98
	sbc  b                                           ; $6408: $98
	cp   l                                           ; $6409: $bd
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	add  $11                                         ; $640c: $c6 $11
	ld   de, $ef12                                   ; $640e: $11 $12 $ef
	rst  $38                                         ; $6411: $ff
	or   l                                           ; $6412: $b5
	ld   b, a                                        ; $6413: $47
	ld   a, d                                        ; $6414: $7a
	ld   a, b                                        ; $6415: $78
	adc  b                                           ; $6416: $88
	sbc  c                                           ; $6417: $99
	call $ffff                                       ; $6418: $cd $ff $ff
	add  $11                                         ; $641b: $c6 $11
	ld   de, rAUD1LOW                                   ; $641d: $11 $13 $ff
	rst  $38                                         ; $6420: $ff
	and  h                                           ; $6421: $a4
	ld   b, a                                        ; $6422: $47
	adc  c                                           ; $6423: $89
	add  a                                           ; $6424: $87
	ld   [hl], a                                     ; $6425: $77
	sbc  e                                           ; $6426: $9b
	sbc  $ff                                         ; $6427: $de $ff
	rst  $38                                         ; $6429: $ff
	or   [hl]                                        ; $642a: $b6
	ld   de, $1511                                   ; $642b: $11 $11 $15
	rst  $38                                         ; $642e: $ff
	cp   $94                                         ; $642f: $fe $94
	ld   e, b                                        ; $6431: $58
	adc  c                                           ; $6432: $89
	ld   [hl], a                                     ; $6433: $77
	ld   l, b                                        ; $6434: $68
	cp   e                                           ; $6435: $bb
	sbc  $ff                                         ; $6436: $de $ff
	rst  $38                                         ; $6438: $ff
	or   [hl]                                        ; $6439: $b6
	ld   de, $1711                                   ; $643a: $11 $11 $17
	rst  $38                                         ; $643d: $ff
	cp   $83                                         ; $643e: $fe $83
	ld   d, [hl]                                     ; $6440: $56
	sbc  c                                           ; $6441: $99
	adc  b                                           ; $6442: $88
	ld   l, b                                        ; $6443: $68
	xor  l                                           ; $6444: $ad
	xor  $ff                                         ; $6445: $ee $ff
	db   $fd                                         ; $6447: $fd
	sub  h                                           ; $6448: $94
	ld   de, $1911                                   ; $6449: $11 $11 $19
	rst  $38                                         ; $644c: $ff
	db   $fc                                         ; $644d: $fc
	ld   h, e                                        ; $644e: $63
	ld   b, a                                        ; $644f: $47
	xor  d                                           ; $6450: $aa
	add  [hl]                                        ; $6451: $86
	ld   d, a                                        ; $6452: $57
	xor  [hl]                                        ; $6453: $ae
	rst  $38                                         ; $6454: $ff
	rst  $38                                         ; $6455: $ff
	jp   c, $1173                                    ; $6456: $da $73 $11

	ld   de, $ff1c                                   ; $6459: $11 $1c $ff
	ld   a, [$5843]                                  ; $645c: $fa $43 $58
	xor  d                                           ; $645f: $aa
	add  [hl]                                        ; $6460: $86
	ld   l, b                                        ; $6461: $68
	xor  [hl]                                        ; $6462: $ae
	rst  $38                                         ; $6463: $ff
	cp   $ba                                         ; $6464: $fe $ba
	ld   h, e                                        ; $6466: $63
	ld   de, $2911                                   ; $6467: $11 $11 $29
	rst  $38                                         ; $646a: $ff
	ld   a, [$5843]                                  ; $646b: $fa $43 $58
	cp   d                                           ; $646e: $ba
	and  [hl]                                        ; $646f: $a6
	ld   d, a                                        ; $6470: $57
	xor  [hl]                                        ; $6471: $ae
	rst  $38                                         ; $6472: $ff
	db   $fd                                         ; $6473: $fd
	and  a                                           ; $6474: $a7
	ld   h, e                                        ; $6475: $63
	ld   de, $3911                                   ; $6476: $11 $11 $39
	rst  $28                                         ; $6479: $ef
	ret  z                                           ; $647a: $c8

	ld   d, h                                        ; $647b: $54
	ld   e, b                                        ; $647c: $58
	cp   e                                           ; $647d: $bb
	and  a                                           ; $647e: $a7
	ld   h, a                                        ; $647f: $67
	cp   l                                           ; $6480: $bd
	rst  $38                                         ; $6481: $ff
	ei                                               ; $6482: $fb
	sub  a                                           ; $6483: $97
	ld   h, h                                        ; $6484: $64
	ld   de, $4811                                   ; $6485: $11 $11 $48
	call z, Call_0e5_44b7                            ; $6488: $cc $b7 $44
	ld   e, b                                        ; $648b: $58
	xor  h                                           ; $648c: $ac
	cp   b                                           ; $648d: $b8
	ld   a, c                                        ; $648e: $79
	cp   [hl]                                        ; $648f: $be
	rst  $38                                         ; $6490: $ff
	ld   [$6486], a                                  ; $6491: $ea $86 $64
	ld   sp, $4811                                   ; $6494: $31 $11 $48
	xor  d                                           ; $6497: $aa
	sub  [hl]                                        ; $6498: $96
	ld   b, h                                        ; $6499: $44
	ld   l, c                                        ; $649a: $69
	cp   e                                           ; $649b: $bb
	xor  c                                           ; $649c: $a9
	adc  c                                           ; $649d: $89
	cp   [hl]                                        ; $649e: $be
	rst  $38                                         ; $649f: $ff
	jp   c, Jump_0e5_6586                            ; $64a0: $da $86 $65

	ld   b, d                                        ; $64a3: $42
	inc  hl                                          ; $64a4: $23
	ld   d, a                                        ; $64a5: $57
	sbc  c                                           ; $64a6: $99
	ld   [hl], l                                     ; $64a7: $75
	ld   b, h                                        ; $64a8: $44

Call_0e5_64a9:
	ld   l, b                                        ; $64a9: $68
	xor  d                                           ; $64aa: $aa
	xor  b                                           ; $64ab: $a8
	sbc  d                                           ; $64ac: $9a
	adc  $fe                                         ; $64ad: $ce $fe
	ret                                              ; $64af: $c9


	add  a                                           ; $64b0: $87
	halt                                             ; $64b1: $76
	ld   d, h                                        ; $64b2: $54
	inc  [hl]                                        ; $64b3: $34
	ld   d, a                                        ; $64b4: $57
	add  a                                           ; $64b5: $87
	ld   h, h                                        ; $64b6: $64
	inc  [hl]                                        ; $64b7: $34
	ld   e, b                                        ; $64b8: $58
	sbc  e                                           ; $64b9: $9b
	xor  c                                           ; $64ba: $a9
	xor  d                                           ; $64bb: $aa
	call $caed                                       ; $64bc: $cd $ed $ca
	adc  b                                           ; $64bf: $88
	adc  b                                           ; $64c0: $88
	halt                                             ; $64c1: $76
	ld   d, l                                        ; $64c2: $55
	ld   d, [hl]                                     ; $64c3: $56
	halt                                             ; $64c4: $76
	ld   d, h                                        ; $64c5: $54
	inc  sp                                          ; $64c6: $33
	ld   b, [hl]                                     ; $64c7: $46
	adc  c                                           ; $64c8: $89
	xor  c                                           ; $64c9: $a9
	xor  d                                           ; $64ca: $aa
	cp   h                                           ; $64cb: $bc
	sbc  $cb                                         ; $64cc: $de $cb
	xor  c                                           ; $64ce: $a9
	adc  b                                           ; $64cf: $88
	adc  b                                           ; $64d0: $88
	halt                                             ; $64d1: $76
	ld   h, [hl]                                     ; $64d2: $66
	ld   h, [hl]                                     ; $64d3: $66
	ld   h, h                                        ; $64d4: $64
	ld   [hl-], a                                    ; $64d5: $32
	inc  hl                                          ; $64d6: $23
	ld   l, b                                        ; $64d7: $68
	xor  d                                           ; $64d8: $aa
	xor  c                                           ; $64d9: $a9
	xor  d                                           ; $64da: $aa
	cp   h                                           ; $64db: $bc
	call c, $9abb                                    ; $64dc: $dc $bb $9a
	xor  d                                           ; $64df: $aa
	sbc  c                                           ; $64e0: $99
	ld   [hl], a                                     ; $64e1: $77
	ld   h, [hl]                                     ; $64e2: $66
	ld   h, l                                        ; $64e3: $65
	ld   [hl-], a                                    ; $64e4: $32
	ld   [de], a                                     ; $64e5: $12
	dec  [hl]                                        ; $64e6: $35
	ld   a, c                                        ; $64e7: $79
	sbc  d                                           ; $64e8: $9a
	sbc  c                                           ; $64e9: $99
	xor  e                                           ; $64ea: $ab
	call $bbdc                                       ; $64eb: $cd $dc $bb
	xor  d                                           ; $64ee: $aa
	xor  d                                           ; $64ef: $aa
	sbc  b                                           ; $64f0: $98
	halt                                             ; $64f1: $76
	ld   h, l                                        ; $64f2: $65
	ld   d, e                                        ; $64f3: $53
	ld   hl, $4612                                   ; $64f4: $21 $12 $46
	adc  c                                           ; $64f7: $89
	sbc  c                                           ; $64f8: $99
	sbc  c                                           ; $64f9: $99
	cp   h                                           ; $64fa: $bc
	db   $dd                                         ; $64fb: $dd
	res  7, d                                        ; $64fc: $cb $ba
	cp   e                                           ; $64fe: $bb
	cp   d                                           ; $64ff: $ba
	sbc  b                                           ; $6500: $98
	ld   h, [hl]                                     ; $6501: $66
	ld   d, h                                        ; $6502: $54
	ld   [hl-], a                                    ; $6503: $32
	ld   de, $5623                                   ; $6504: $11 $23 $56
	adc  b                                           ; $6507: $88
	sbc  c                                           ; $6508: $99
	sbc  e                                           ; $6509: $9b
	cp   h                                           ; $650a: $bc
	db   $dd                                         ; $650b: $dd
	res  7, e                                        ; $650c: $cb $bb
	cp   e                                           ; $650e: $bb
	cp   d                                           ; $650f: $ba
	add  a                                           ; $6510: $87
	ld   h, l                                        ; $6511: $65
	ld   d, h                                        ; $6512: $54
	ld   sp, $2411                                   ; $6513: $31 $11 $24
	ld   h, a                                        ; $6516: $67
	adc  c                                           ; $6517: $89
	adc  c                                           ; $6518: $89
	cp   e                                           ; $6519: $bb
	sbc  $dd                                         ; $651a: $de $dd
	res  7, e                                        ; $651c: $cb $bb
	xor  e                                           ; $651e: $ab
	sbc  b                                           ; $651f: $98
	halt                                             ; $6520: $76
	ld   h, l                                        ; $6521: $65
	ld   d, e                                        ; $6522: $53
	ld   hl, $3411                                   ; $6523: $21 $11 $34
	ld   h, a                                        ; $6526: $67
	adc  c                                           ; $6527: $89
	sbc  d                                           ; $6528: $9a
	cp   l                                           ; $6529: $bd
	db   $dd                                         ; $652a: $dd
	db   $ed                                         ; $652b: $ed
	call z, $a9ba                                    ; $652c: $cc $ba $a9
	sub  a                                           ; $652f: $97
	halt                                             ; $6530: $76
	ld   h, l                                        ; $6531: $65
	ld   b, d                                        ; $6532: $42
	ld   de, $3512                                   ; $6533: $11 $12 $35
	ld   h, a                                        ; $6536: $67
	adc  c                                           ; $6537: $89
	xor  e                                           ; $6538: $ab
	sbc  $ed                                         ; $6539: $de $ed
	db   $ed                                         ; $653b: $ed
	call z, $99ba                                    ; $653c: $cc $ba $99
	ld   [hl], a                                     ; $653f: $77
	ld   h, [hl]                                     ; $6540: $66
	ld   h, l                                        ; $6541: $65
	ld   hl, $1211                                   ; $6542: $21 $11 $12
	ld   b, [hl]                                     ; $6545: $46
	ld   a, b                                        ; $6546: $78
	adc  d                                           ; $6547: $8a
	call $edef                                       ; $6548: $cd $ef $ed
	call c, $b9cb                                    ; $654b: $dc $cb $b9
	add  a                                           ; $654e: $87
	ld   [hl], a                                     ; $654f: $77
	ld   h, [hl]                                     ; $6550: $66
	ld   d, d                                        ; $6551: $52
	ld   de, $3511                                   ; $6552: $11 $11 $35
	ld   h, a                                        ; $6555: $67
	adc  b                                           ; $6556: $88
	xor  e                                           ; $6557: $ab
	xor  $fe                                         ; $6558: $ee $fe
	db   $ed                                         ; $655a: $ed
	call z, $a8ba                                    ; $655b: $cc $ba $a8
	ld   [hl], a                                     ; $655e: $77
	ld   [hl], a                                     ; $655f: $77
	ld   h, l                                        ; $6560: $65
	ld   hl, $1311                                   ; $6561: $21 $11 $13
	ld   d, [hl]                                     ; $6564: $56
	ld   a, b                                        ; $6565: $78
	adc  d                                           ; $6566: $8a
	call $fdff                                       ; $6567: $cd $ff $fd
	call z, $a9ba                                    ; $656a: $cc $ba $a9
	add  a                                           ; $656d: $87
	ld   [hl], a                                     ; $656e: $77
	ld   [hl], l                                     ; $656f: $75
	ld   sp, $1211                                   ; $6570: $31 $11 $12
	ld   b, [hl]                                     ; $6573: $46
	ld   h, a                                        ; $6574: $67
	adc  d                                           ; $6575: $8a
	adc  $ef                                         ; $6576: $ce $ef
	cp   $dc                                         ; $6578: $fe $dc
	call z, $87ba                                    ; $657a: $cc $ba $87
	ld   [hl], a                                     ; $657d: $77
	ld   [hl], a                                     ; $657e: $77
	ld   d, d                                        ; $657f: $52
	ld   de, $3511                                   ; $6580: $11 $11 $35
	ld   h, a                                        ; $6583: $67
	ld   a, b                                        ; $6584: $78
	xor  h                                           ; $6585: $ac

Jump_0e5_6586:
	rst  $28                                         ; $6586: $ef

Jump_0e5_6587:
	cp   $dd                                         ; $6587: $fe $dd
	res  7, d                                        ; $6589: $cb $ba
	sub  a                                           ; $658b: $97
	ld   [hl], a                                     ; $658c: $77
	add  a                                           ; $658d: $87
	ld   h, e                                        ; $658e: $63
	ld   de, $3511                                   ; $658f: $11 $11 $35
	ld   h, a                                        ; $6592: $67
	ld   [hl], a                                     ; $6593: $77
	sbc  h                                           ; $6594: $9c
	rst  $28                                         ; $6595: $ef
	rst  $38                                         ; $6596: $ff
	db   $ed                                         ; $6597: $ed
	call c, $87cb                                    ; $6598: $dc $cb $87
	ld   h, [hl]                                     ; $659b: $66
	ld   a, b                                        ; $659c: $78
	ld   [hl], h                                     ; $659d: $74
	ld   de, $2511                                   ; $659e: $11 $11 $25
	ld   [hl], a                                     ; $65a1: $77
	ld   [hl], a                                     ; $65a2: $77
	sbc  d                                           ; $65a3: $9a
	rst  $28                                         ; $65a4: $ef
	rst  $38                                         ; $65a5: $ff
	db   $ed                                         ; $65a6: $ed

Call_0e5_65a7:
	call c, $97ba                                    ; $65a7: $dc $ba $97
	ld   h, [hl]                                     ; $65aa: $66
	ld   a, b                                        ; $65ab: $78
	ld   [hl], l                                     ; $65ac: $75
	ld   de, $2511                                   ; $65ad: $11 $11 $25
	ld   [hl], a                                     ; $65b0: $77
	ld   [hl], a                                     ; $65b1: $77
	adc  e                                           ; $65b2: $8b
	rst  JumpTable                                         ; $65b3: $df
	rst  $38                                         ; $65b4: $ff
	db   $ed                                         ; $65b5: $ed
	call c, $97bb                                    ; $65b6: $dc $bb $97
	ld   h, [hl]                                     ; $65b9: $66
	ld   a, c                                        ; $65ba: $79
	add  l                                           ; $65bb: $85
	ld   de, $2511                                   ; $65bc: $11 $11 $25
	ld   a, b                                        ; $65bf: $78
	halt                                             ; $65c0: $76
	ld   a, d                                        ; $65c1: $7a
	rst  JumpTable                                         ; $65c2: $df
	rst  $38                                         ; $65c3: $ff
	db   $fd                                         ; $65c4: $fd
	call z, $97cb                                    ; $65c5: $cc $cb $97
	ld   d, l                                        ; $65c8: $55
	ld   a, c                                        ; $65c9: $79
	add  [hl]                                        ; $65ca: $86
	ld   hl, $2511                                   ; $65cb: $21 $11 $25
	ld   a, b                                        ; $65ce: $78
	halt                                             ; $65cf: $76
	ld   a, d                                        ; $65d0: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65d1: $cf
	rst  $38                                         ; $65d2: $ff
	db   $fd                                         ; $65d3: $fd
	call z, $97bb                                    ; $65d4: $cc $bb $97
	ld   d, l                                        ; $65d7: $55
	ld   a, c                                        ; $65d8: $79
	add  [hl]                                        ; $65d9: $86
	ld   hl, $2611                                   ; $65da: $21 $11 $26
	adc  b                                           ; $65dd: $88
	halt                                             ; $65de: $76
	ld   a, c                                        ; $65df: $79
	rst  JumpTable                                         ; $65e0: $df
	rst  $38                                         ; $65e1: $ff
	db   $fc                                         ; $65e2: $fc
	call z, $96ca                                    ; $65e3: $cc $ca $96
	ld   d, l                                        ; $65e6: $55
	ld   l, b                                        ; $65e7: $68
	add  [hl]                                        ; $65e8: $86
	ld   de, $3611                                   ; $65e9: $11 $11 $36
	adc  b                                           ; $65ec: $88
	halt                                             ; $65ed: $76
	ld   a, d                                        ; $65ee: $7a
	rst  JumpTable                                         ; $65ef: $df
	rst  $38                                         ; $65f0: $ff
	db   $fd                                         ; $65f1: $fd
	res  5, d                                        ; $65f2: $cb $aa
	halt                                             ; $65f4: $76
	ld   d, l                                        ; $65f5: $55
	ld   a, c                                        ; $65f6: $79
	ld   [hl], e                                     ; $65f7: $73
	ld   de, $5811                                   ; $65f8: $11 $11 $58
	xor  c                                           ; $65fb: $a9
	halt                                             ; $65fc: $76
	adc  h                                           ; $65fd: $8c
	rst  $28                                         ; $65fe: $ef
	rst  $38                                         ; $65ff: $ff
	call c, $a9bb                                    ; $6600: $dc $bb $a9
	ld   h, l                                        ; $6603: $65
	ld   b, [hl]                                     ; $6604: $46
	adc  b                                           ; $6605: $88
	ld   d, c                                        ; $6606: $51
	ld   de, $7a13                                   ; $6607: $11 $13 $7a
	sbc  b                                           ; $660a: $98
	ld   h, a                                        ; $660b: $67
	sbc  l                                           ; $660c: $9d
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	res  5, d                                        ; $660f: $cb $aa
	add  l                                           ; $6611: $85
	ld   [hl-], a                                    ; $6612: $32
	ld   b, a                                        ; $6613: $47
	sbc  b                                           ; $6614: $98
	ld   sp, $4911                                   ; $6615: $31 $11 $49
	cp   e                                           ; $6618: $bb
	and  a                                           ; $6619: $a7
	ld   l, b                                        ; $661a: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $661b: $cf
	rst  $38                                         ; $661c: $ff
	db   $ec                                         ; $661d: $ec
	xor  d                                           ; $661e: $aa
	xor  b                                           ; $661f: $a8
	ld   d, e                                        ; $6620: $53
	ld   [de], a                                     ; $6621: $12
	ld   l, c                                        ; $6622: $69
	sub  [hl]                                        ; $6623: $96
	ld   de, $9d13                                   ; $6624: $11 $13 $9d
	db   $db                                         ; $6627: $db
	add  [hl]                                        ; $6628: $86
	ld   a, d                                        ; $6629: $7a
	rst  JumpTable                                         ; $662a: $df
	rst  $38                                         ; $662b: $ff
	res  5, c                                        ; $662c: $cb $a9
	ld   [hl], h                                     ; $662e: $74
	ld   de, $ab15                                   ; $662f: $11 $15 $ab
	add  e                                           ; $6632: $83
	ld   de, $dd38                                   ; $6633: $11 $38 $dd
	cp   c                                           ; $6636: $b9
	ld   h, [hl]                                     ; $6637: $66
	adc  h                                           ; $6638: $8c
	rst  $38                                         ; $6639: $ff
	cp   $ca                                         ; $663a: $fe $ca
	add  l                                           ; $663c: $85
	ld   hl, $5a11                                   ; $663d: $21 $11 $5a
	cp   b                                           ; $6640: $b8
	ld   b, c                                        ; $6641: $41
	dec  d                                           ; $6642: $15
	sbc  [hl]                                        ; $6643: $9e
	db   $db                                         ; $6644: $db
	add  l                                           ; $6645: $85
	ld   e, c                                        ; $6646: $59
	rst  JumpTable                                         ; $6647: $df
	rst  $38                                         ; $6648: $ff
	db   $ed                                         ; $6649: $ed
	xor  b                                           ; $664a: $a8
	ld   b, c                                        ; $664b: $41
	ld   de, $cd16                                   ; $664c: $11 $16 $cd
	and  l                                           ; $664f: $a5
	ld   [de], a                                     ; $6650: $12
	ld   e, e                                        ; $6651: $5b
	db   $dd                                         ; $6652: $dd
	or   a                                           ; $6653: $b7
	ld   b, l                                        ; $6654: $45
	adc  l                                           ; $6655: $8d
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	jp   c, $1161                                    ; $6658: $da $61 $11

	ld   de, $eaaf                                   ; $665b: $11 $af $ea
	ld   b, c                                        ; $665e: $41
	ld   h, $bd                                      ; $665f: $26 $bd
	ret                                              ; $6661: $c9


	ld   d, h                                        ; $6662: $54
	ld   e, c                                        ; $6663: $59
	rst  $38                                         ; $6664: $ff
	rst  $38                                         ; $6665: $ff
	db   $fd                                         ; $6666: $fd
	add  h                                           ; $6667: $84
	ld   de, $4d11                                   ; $6668: $11 $11 $4d
	rst  $38                                         ; $666b: $ff
	and  e                                           ; $666c: $a3
	ld   de, $dd6b                                   ; $666d: $11 $6b $dd
	add  h                                           ; $6670: $84
	ld   b, [hl]                                     ; $6671: $46
	cp   a                                           ; $6672: $bf
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff

Jump_0e5_6675:
	or   [hl]                                        ; $6675: $b6
	ld   de, $1a11                                   ; $6676: $11 $11 $1a
	rst  $38                                         ; $6679: $ff
	ld   sp, hl                                      ; $667a: $f9
	ld   de, $dd18                                   ; $667b: $11 $18 $dd
	or   [hl]                                        ; $667e: $b6
	inc  [hl]                                        ; $667f: $34
	adc  [hl]                                        ; $6680: $8e
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	ld   [$1141], a                                  ; $6683: $ea $41 $11
	ld   [de], a                                     ; $6686: $12
	rst  $38                                         ; $6687: $ff
	rst  $38                                         ; $6688: $ff
	ld   d, c                                        ; $6689: $51
	inc  de                                          ; $668a: $13
	xor  [hl]                                        ; $668b: $ae
	ret                                              ; $668c: $c9


	ld   b, e                                        ; $668d: $43
	ld   e, d                                        ; $668e: $5a
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	db   $fc                                         ; $6691: $fc
	add  d                                           ; $6692: $82
	ld   de, $8f11                                   ; $6693: $11 $11 $8f
	rst  $38                                         ; $6696: $ff
	or   c                                           ; $6697: $b1
	ld   de, $ec6c                                   ; $6698: $11 $6c $ec
	ld   h, e                                        ; $669b: $63
	ld   c, b                                        ; $669c: $48
	rst  $28                                         ; $669d: $ef
	rst  $38                                         ; $669e: $ff
	rst  $38                                         ; $669f: $ff
	or   [hl]                                        ; $66a0: $b6
	ld   de, $3f11                                   ; $66a1: $11 $11 $3f
	rst  $38                                         ; $66a4: $ff
	di                                               ; $66a5: $f3
	ld   de, $fd3d                                   ; $66a6: $11 $3d $fd
	ld   [hl], d                                     ; $66a9: $72
	scf                                              ; $66aa: $37
	rst  $28                                         ; $66ab: $ef
	rst  $38                                         ; $66ac: $ff
	cp   $da                                         ; $66ad: $fe $da
	ld   sp, $1e11                                   ; $66af: $31 $11 $1e
	rst  $38                                         ; $66b2: $ff
	push af                                          ; $66b3: $f5
	ld   de, $fa3c                                   ; $66b4: $11 $3c $fa
	ld   d, c                                        ; $66b7: $51
	ld   c, e                                        ; $66b8: $4b
	rst  $38                                         ; $66b9: $ff
	db   $fc                                         ; $66ba: $fc
	rst  JumpTable                                         ; $66bb: $df
	rst  $38                                         ; $66bc: $ff
	sub  c                                           ; $66bd: $91
	ld   de, $ff1b                                   ; $66be: $11 $1b $ff
	rst  $30                                         ; $66c1: $f7
	ld   de, $f85b                                   ; $66c2: $11 $5b $f8
	ld   hl, $ff4d                                   ; $66c5: $21 $4d $ff
	reti                                             ; $66c8: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66c9: $cf
	rst  $38                                         ; $66ca: $ff
	pop  bc                                          ; $66cb: $c1
	ld   de, $ff15                                   ; $66cc: $11 $15 $ff
	ld   sp, hl                                      ; $66cf: $f9
	ld   de, $c75b                                   ; $66d0: $11 $5b $c7
	ld   de, $ff5f                                   ; $66d3: $11 $5f $ff
	and  [hl]                                        ; $66d6: $a6
	cp   a                                           ; $66d7: $bf
	rst  $38                                         ; $66d8: $ff
	pop  bc                                          ; $66d9: $c1
	ld   de, rAUD1LEN                                   ; $66da: $11 $11 $ff
	db   $fd                                         ; $66dd: $fd
	ld   h, h                                        ; $66de: $64
	ld   e, c                                        ; $66df: $59
	ld   [hl], l                                     ; $66e0: $75
	inc  de                                          ; $66e1: $13
	sbc  [hl]                                        ; $66e2: $9e
	db   $fc                                         ; $66e3: $fc
	add  [hl]                                        ; $66e4: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66e5: $cf
	rst  $38                                         ; $66e6: $ff
	jp   nz, $1111                                   ; $66e7: $c2 $11 $11

	sbc  a                                           ; $66ea: $9f
	rst  $38                                         ; $66eb: $ff
	rst  ToBoot                                         ; $66ec: $c7
	scf                                              ; $66ed: $37
	ld   h, l                                        ; $66ee: $65
	ld   hl, $fd8b                                   ; $66ef: $21 $8b $fd
	xor  b                                           ; $66f2: $a8
	xor  a                                           ; $66f3: $af
	rst  $38                                         ; $66f4: $ff
	or   $11                                         ; $66f5: $f6 $11
	ld   de, $ff3f                                   ; $66f7: $11 $3f $ff
	add  sp, $46                                     ; $66fa: $e8 $46
	ld   [hl], l                                     ; $66fc: $75
	ld   hl, $ff7b                                   ; $66fd: $21 $7b $ff
	sbc  c                                           ; $6700: $99
	sbc  a                                           ; $6701: $9f
	rst  $38                                         ; $6702: $ff
	ld   hl, sp+$11                                  ; $6703: $f8 $11
	ld   de, $ff1d                                   ; $6705: $11 $1d $ff
	ld   sp, hl                                      ; $6708: $f9
	ld   d, l                                        ; $6709: $55
	add  l                                           ; $670a: $85
	ld   sp, $ff5b                                   ; $670b: $31 $5b $ff
	sbc  b                                           ; $670e: $98
	adc  a                                           ; $670f: $8f
	rst  $38                                         ; $6710: $ff
	ld   a, [$1121]                                  ; $6711: $fa $21 $11
	ld   a, [de]                                     ; $6714: $1a
	rst  $38                                         ; $6715: $ff
	ei                                               ; $6716: $fb
	halt                                             ; $6717: $76
	add  l                                           ; $6718: $85
	ld   hl, $ff4d                                   ; $6719: $21 $4d $ff
	sub  a                                           ; $671c: $97
	sbc  a                                           ; $671d: $9f
	rst  $38                                         ; $671e: $ff
	ld   a, [$1141]                                  ; $671f: $fa $41 $11
	add  hl, de                                      ; $6722: $19
	rst  $38                                         ; $6723: $ff
	ld   sp, hl                                      ; $6724: $f9
	ld   [hl], a                                     ; $6725: $77
	or   [hl]                                        ; $6726: $b6
	ld   de, $ff2d                                   ; $6727: $11 $2d $ff
	ld   [hl], l                                     ; $672a: $75
	sbc  a                                           ; $672b: $9f
	rst  $38                                         ; $672c: $ff
	ld   sp, hl                                      ; $672d: $f9
	ld   h, c                                        ; $672e: $61
	ld   de, $ff17                                   ; $672f: $11 $17 $ff
	ld   sp, hl                                      ; $6732: $f9
	ld   l, b                                        ; $6733: $68
	ret  c                                           ; $6734: $d8

	ld   de, $ff2f                                   ; $6735: $11 $2f $ff
	ld   d, e                                        ; $6738: $53
	xor  a                                           ; $6739: $af
	rst  $38                                         ; $673a: $ff
	jp   hl                                          ; $673b: $e9


	ld   h, c                                        ; $673c: $61
	ld   de, $ff16                                   ; $673d: $11 $16 $ff
	rst  $30                                         ; $6740: $f7
	ld   l, d                                        ; $6741: $6a
	ld   sp, hl                                      ; $6742: $f9
	ld   de, $ff2f                                   ; $6743: $11 $2f $ff
	inc  sp                                          ; $6746: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6747: $cf
	rst  $38                                         ; $6748: $ff
	ret  z                                           ; $6749: $c8

	ld   [hl], c                                     ; $674a: $71
	ld   de, $ff1b                                   ; $674b: $11 $1b $ff
	push af                                          ; $674e: $f5
	adc  l                                           ; $674f: $8d
	push af                                          ; $6750: $f5
	ld   de, $fa7f                                   ; $6751: $11 $7f $fa
	dec  d                                           ; $6754: $15
	rst  $38                                         ; $6755: $ff
	db   $fd                                         ; $6756: $fd
	cp   d                                           ; $6757: $ba
	ld   [hl], c                                     ; $6758: $71
	ld   de, $ff1f                                   ; $6759: $11 $1f $ff
	sub  l                                           ; $675c: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $675d: $cf
	pop  hl                                          ; $675e: $e1
	ld   de, $c2ff                                   ; $675f: $11 $ff $c2
	inc  e                                           ; $6762: $1c
	rst  $38                                         ; $6763: $ff
	ei                                               ; $6764: $fb
	db   $ed                                         ; $6765: $ed
	ld   b, c                                        ; $6766: $41

Jump_0e5_6767:
	ld   de, $ff3f                                   ; $6767: $11 $3f $ff
	ld   l, h                                        ; $676a: $6c
	rst  $38                                         ; $676b: $ff
	ld   d, c                                        ; $676c: $51
	jr   @+$01                                       ; $676d: $18 $ff

	ld   d, c                                        ; $676f: $51
	ld   a, a                                        ; $6770: $7f
	rst  $38                                         ; $6771: $ff
	xor  [hl]                                        ; $6772: $ae
	db   $fd                                         ; $6773: $fd
	ld   de, rAUD1LEN                                   ; $6774: $11 $11 $ff
	ld   a, [$facf]                                  ; $6777: $fa $cf $fa
	ld   de, $f57f                                   ; $677a: $11 $7f $f5
	rlca                                             ; $677d: $07
	rst  $38                                         ; $677e: $ff
	jp   c, $f1ff                                    ; $677f: $da $ff $f1

	ld   de, $ff16                                   ; $6782: $11 $16 $ff
	rst  JumpTable                                         ; $6785: $df
	rst  $38                                         ; $6786: $ff
	pop  bc                                          ; $6787: $c1
	ld   d, $ee                                      ; $6788: $16 $ee
	ld   h, e                                        ; $678a: $63
	adc  a                                           ; $678b: $8f
	db   $fd                                         ; $678c: $fd
	cp   a                                           ; $678d: $bf
	rst  $38                                         ; $678e: $ff
	ld   sp, $1c11                                   ; $678f: $31 $11 $1c
	xor  $ff                                         ; $6792: $ee $ff
	cp   $61                                         ; $6794: $fe $61

Jump_0e5_6796:
	ld   a, e                                        ; $6796: $7b
	or   a                                           ; $6797: $b7
	ld   e, d                                        ; $6798: $5a
	adc  $bb                                         ; $6799: $ce $bb
	rst  $38                                         ; $679b: $ff
	ldh  a, [c]                                      ; $679c: $f2
	ld   de, $ae11                                   ; $679d: $11 $11 $ae
	rst  JumpTable                                         ; $67a0: $df
	rst  $38                                         ; $67a1: $ff
	rst  $20                                         ; $67a2: $e7
	ld   e, c                                        ; $67a3: $59
	sbc  c                                           ; $67a4: $99
	ld   l, c                                        ; $67a5: $69
	call $bdb9                                       ; $67a6: $cd $b9 $bd
	push bc                                          ; $67a9: $c5
	ld   de, $9b11                                   ; $67aa: $11 $11 $9b
	cp   a                                           ; $67ad: $bf
	rst  $38                                         ; $67ae: $ff
	ei                                               ; $67af: $fb
	sbc  b                                           ; $67b0: $98
	sub  a                                           ; $67b1: $97
	adc  e                                           ; $67b2: $8b
	db   $dd                                         ; $67b3: $dd
	cp   b                                           ; $67b4: $b8
	ld   [hl], l                                     ; $67b5: $75
	ld   hl, $1811                                   ; $67b6: $21 $11 $18
	cp   d                                           ; $67b9: $ba
	rst  $38                                         ; $67ba: $ff
	rst  $38                                         ; $67bb: $ff
	jp   z, $9879                                    ; $67bc: $ca $79 $98

	xor  h                                           ; $67bf: $ac
	ret                                              ; $67c0: $c9


	ld   b, c                                        ; $67c1: $41
	ld   de, $1811                                   ; $67c2: $11 $11 $18
	adc  $ee                                         ; $67c5: $ce $ee
	cp   $c9                                         ; $67c7: $fe $c9
	sbc  d                                           ; $67c9: $9a
	sbc  h                                           ; $67ca: $9c
	cp   e                                           ; $67cb: $bb
	sub  h                                           ; $67cc: $94
	ld   de, $1311                                   ; $67cd: $11 $11 $13
	adc  e                                           ; $67d0: $8b
	xor  $ff                                         ; $67d1: $ee $ff
	db   $fd                                         ; $67d3: $fd
	xor  c                                           ; $67d4: $a9
	cp   c                                           ; $67d5: $b9
	xor  c                                           ; $67d6: $a9
	xor  b                                           ; $67d7: $a8
	ld   sp, $1311                                   ; $67d8: $31 $11 $13
	ld   e, c                                        ; $67db: $59
	cp   [hl]                                        ; $67dc: $be
	rst  $38                                         ; $67dd: $ff
	cp   $c9                                         ; $67de: $fe $c9
	xor  b                                           ; $67e0: $a8
	xor  c                                           ; $67e1: $a9
	sbc  b                                           ; $67e2: $98
	ld   d, c                                        ; $67e3: $51
	ld   de, $4713                                   ; $67e4: $11 $13 $47
	sbc  l                                           ; $67e7: $9d
	rst  $28                                         ; $67e8: $ef
	cp   $eb                                         ; $67e9: $fe $eb
	jp   z, $889b                                    ; $67eb: $ca $9b $88

	ld   d, d                                        ; $67ee: $52
	ld   de, $3511                                   ; $67ef: $11 $11 $35
	ld   a, h                                        ; $67f2: $7c
	rst  $28                                         ; $67f3: $ef
	rst  $38                                         ; $67f4: $ff
	db   $fd                                         ; $67f5: $fd
	db   $db                                         ; $67f6: $db
	sbc  e                                           ; $67f7: $9b
	sbc  c                                           ; $67f8: $99
	ld   h, e                                        ; $67f9: $63
	ld   de, $2411                                   ; $67fa: $11 $11 $24
	ld   e, b                                        ; $67fd: $58
	cp   [hl]                                        ; $67fe: $be
	rst  $38                                         ; $67ff: $ff
	cp   $dc                                         ; $6800: $fe $dc
	sbc  d                                           ; $6802: $9a
	adc  b                                           ; $6803: $88
	ld   [hl], l                                     ; $6804: $75
	ld   sp, $3211                                   ; $6805: $31 $11 $32
	ld   b, a                                        ; $6808: $47
	xor  e                                           ; $6809: $ab
	rst  $28                                         ; $680a: $ef
	cp   $ed                                         ; $680b: $fe $ed
	cp   d                                           ; $680d: $ba
	xor  d                                           ; $680e: $aa
	add  [hl]                                        ; $680f: $86
	ld   sp, $2311                                   ; $6810: $31 $11 $23
	ld   b, l                                        ; $6813: $45
	ld   a, c                                        ; $6814: $79
	cp   h                                           ; $6815: $bc
	db   $ec                                         ; $6816: $ec
	call $bacc                                       ; $6817: $cd $cc $ba
	xor  c                                           ; $681a: $a9
	ld   [hl], e                                     ; $681b: $73
	ld   hl, $3522                                   ; $681c: $21 $22 $35
	ld   e, b                                        ; $681f: $58
	sbc  e                                           ; $6820: $9b
	cp   e                                           ; $6821: $bb
	db   $dd                                         ; $6822: $dd
	jp   z, $b9ab                                    ; $6823: $ca $ab $b9

	and  a                                           ; $6826: $a7
	ld   d, h                                        ; $6827: $54
	ld   b, e                                        ; $6828: $43
	inc  sp                                          ; $6829: $33
	ld   [hl], $67                                   ; $682a: $36 $67
	sbc  e                                           ; $682c: $9b
	cp   h                                           ; $682d: $bc
	call z, $bbab                                    ; $682e: $cc $ab $bb
	sbc  b                                           ; $6831: $98
	sub  a                                           ; $6832: $97
	ld   h, l                                        ; $6833: $65
	ld   d, h                                        ; $6834: $54
	ld   b, l                                        ; $6835: $45
	ld   d, h                                        ; $6836: $54
	ld   d, [hl]                                     ; $6837: $56
	ld   a, c                                        ; $6838: $79
	xor  e                                           ; $6839: $ab
	call z, $aacc                                    ; $683a: $cc $cc $aa
	xor  c                                           ; $683d: $a9
	add  a                                           ; $683e: $87
	halt                                             ; $683f: $76
	ld   d, [hl]                                     ; $6840: $56
	ld   d, l                                        ; $6841: $55
	ld   h, l                                        ; $6842: $65
	ld   h, a                                        ; $6843: $67
	ld   h, [hl]                                     ; $6844: $66
	adc  d                                           ; $6845: $8a
	sbc  e                                           ; $6846: $9b
	res  7, d                                        ; $6847: $cb $ba
	xor  d                                           ; $6849: $aa
	add  a                                           ; $684a: $87
	add  a                                           ; $684b: $87
	ld   h, [hl]                                     ; $684c: $66
	ld   [hl], l                                     ; $684d: $75
	halt                                             ; $684e: $76
	ld   d, l                                        ; $684f: $55
	ld   d, a                                        ; $6850: $57
	ld   a, b                                        ; $6851: $78
	sbc  c                                           ; $6852: $99
	sbc  d                                           ; $6853: $9a
	cp   e                                           ; $6854: $bb
	xor  e                                           ; $6855: $ab
	xor  d                                           ; $6856: $aa
	sbc  c                                           ; $6857: $99
	ld   [hl], a                                     ; $6858: $77
	halt                                             ; $6859: $76
	ld   h, [hl]                                     ; $685a: $66
	ld   h, a                                        ; $685b: $67
	ld   h, [hl]                                     ; $685c: $66
	ld   [hl], a                                     ; $685d: $77
	ld   a, b                                        ; $685e: $78
	sbc  c                                           ; $685f: $99
	sbc  d                                           ; $6860: $9a
	xor  c                                           ; $6861: $a9
	sbc  c                                           ; $6862: $99
	xor  c                                           ; $6863: $a9

Jump_0e5_6864:
	adc  c                                           ; $6864: $89
	ld   [hl], a                                     ; $6865: $77
	ld   [hl], a                                     ; $6866: $77
	ld   h, [hl]                                     ; $6867: $66
	ld   [hl], a                                     ; $6868: $77
	ld   [hl], a                                     ; $6869: $77
	ld   a, b                                        ; $686a: $78
	adc  c                                           ; $686b: $89
	sbc  c                                           ; $686c: $99
	adc  c                                           ; $686d: $89
	xor  c                                           ; $686e: $a9
	adc  c                                           ; $686f: $89
	adc  b                                           ; $6870: $88
	sbc  c                                           ; $6871: $99
	sbc  b                                           ; $6872: $98
	add  a                                           ; $6873: $87
	add  a                                           ; $6874: $87
	ld   [hl], a                                     ; $6875: $77
	ld   a, b                                        ; $6876: $78
	adc  b                                           ; $6877: $88
	ld   a, c                                        ; $6878: $79
	sbc  b                                           ; $6879: $98
	adc  c                                           ; $687a: $89
	adc  b                                           ; $687b: $88
	sbc  b                                           ; $687c: $98
	ld   [hl], a                                     ; $687d: $77
	adc  b                                           ; $687e: $88
	adc  b                                           ; $687f: $88
	sbc  b                                           ; $6880: $98
	adc  b                                           ; $6881: $88
	adc  c                                           ; $6882: $89
	ld   a, c                                        ; $6883: $79
	add  a                                           ; $6884: $87
	sbc  b                                           ; $6885: $98
	adc  b                                           ; $6886: $88
	adc  b                                           ; $6887: $88
	ld   a, c                                        ; $6888: $79
	adc  c                                           ; $6889: $89
	add  a                                           ; $688a: $87
	sbc  b                                           ; $688b: $98
	sbc  b                                           ; $688c: $98
	adc  b                                           ; $688d: $88
	sbc  c                                           ; $688e: $99
	adc  b                                           ; $688f: $88
	ld   a, b                                        ; $6890: $78
	adc  b                                           ; $6891: $88
	add  a                                           ; $6892: $87
	ld   a, c                                        ; $6893: $79
	add  a                                           ; $6894: $87
	sbc  b                                           ; $6895: $98
	adc  c                                           ; $6896: $89
	sub  a                                           ; $6897: $97
	adc  b                                           ; $6898: $88
	sbc  b                                           ; $6899: $98
	adc  b                                           ; $689a: $88
	adc  b                                           ; $689b: $88
	adc  c                                           ; $689c: $89
	ld   [hl], a                                     ; $689d: $77
	sbc  b                                           ; $689e: $98
	ld   a, b                                        ; $689f: $78
	add  a                                           ; $68a0: $87
	adc  c                                           ; $68a1: $89
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	sbc  b                                           ; $68a4: $98
	sbc  c                                           ; $68a5: $99
	sbc  c                                           ; $68a6: $99
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88
	add  a                                           ; $68a9: $87
	adc  b                                           ; $68aa: $88
	ld   [hl], a                                     ; $68ab: $77
	adc  b                                           ; $68ac: $88
	add  a                                           ; $68ad: $87
	adc  b                                           ; $68ae: $88
	adc  b                                           ; $68af: $88
	sbc  b                                           ; $68b0: $98
	sbc  c                                           ; $68b1: $99
	sbc  b                                           ; $68b2: $98
	adc  b                                           ; $68b3: $88
	sbc  b                                           ; $68b4: $98
	adc  b                                           ; $68b5: $88
	add  a                                           ; $68b6: $87
	ld   a, c                                        ; $68b7: $79
	ld   a, b                                        ; $68b8: $78
	adc  b                                           ; $68b9: $88
	add  a                                           ; $68ba: $87
	sub  a                                           ; $68bb: $97
	adc  b                                           ; $68bc: $88
	adc  b                                           ; $68bd: $88
	adc  b                                           ; $68be: $88
	sbc  b                                           ; $68bf: $98
	adc  b                                           ; $68c0: $88
	add  a                                           ; $68c1: $87
	adc  b                                           ; $68c2: $88
	add  a                                           ; $68c3: $87
	adc  b                                           ; $68c4: $88
	ld   a, b                                        ; $68c5: $78
	adc  b                                           ; $68c6: $88
	adc  b                                           ; $68c7: $88
	adc  b                                           ; $68c8: $88
	adc  b                                           ; $68c9: $88
	sbc  b                                           ; $68ca: $98
	adc  b                                           ; $68cb: $88
	sbc  b                                           ; $68cc: $98
	sbc  c                                           ; $68cd: $99
	adc  b                                           ; $68ce: $88
	add  a                                           ; $68cf: $87
	adc  b                                           ; $68d0: $88
	ld   a, b                                        ; $68d1: $78
	adc  b                                           ; $68d2: $88
	adc  b                                           ; $68d3: $88
	adc  b                                           ; $68d4: $88
	sub  a                                           ; $68d5: $97
	adc  c                                           ; $68d6: $89
	adc  b                                           ; $68d7: $88
	ld   a, c                                        ; $68d8: $79
	adc  b                                           ; $68d9: $88
	sbc  b                                           ; $68da: $98
	adc  b                                           ; $68db: $88
	add  a                                           ; $68dc: $87
	adc  b                                           ; $68dd: $88
	adc  b                                           ; $68de: $88
	adc  c                                           ; $68df: $89
	adc  b                                           ; $68e0: $88
	adc  b                                           ; $68e1: $88
	adc  b                                           ; $68e2: $88
	adc  b                                           ; $68e3: $88
	sbc  b                                           ; $68e4: $98
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
	adc  c                                           ; $68ef: $89
	adc  b                                           ; $68f0: $88
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	add  a                                           ; $68f3: $87
	adc  b                                           ; $68f4: $88
	adc  b                                           ; $68f5: $88
	adc  b                                           ; $68f6: $88
	sbc  b                                           ; $68f7: $98
	adc  b                                           ; $68f8: $88
	adc  b                                           ; $68f9: $88
	adc  b                                           ; $68fa: $88
	ld   a, b                                        ; $68fb: $78
	add  a                                           ; $68fc: $87
	sbc  b                                           ; $68fd: $98
	adc  b                                           ; $68fe: $88
	adc  b                                           ; $68ff: $88
	ld   a, b                                        ; $6900: $78
	adc  b                                           ; $6901: $88
	adc  b                                           ; $6902: $88
	sbc  b                                           ; $6903: $98
	adc  c                                           ; $6904: $89
	adc  b                                           ; $6905: $88
	adc  b                                           ; $6906: $88
	adc  b                                           ; $6907: $88
	adc  b                                           ; $6908: $88
	adc  b                                           ; $6909: $88
	adc  b                                           ; $690a: $88
	adc  b                                           ; $690b: $88
	add  a                                           ; $690c: $87
	adc  b                                           ; $690d: $88
	adc  b                                           ; $690e: $88
	adc  b                                           ; $690f: $88
	adc  b                                           ; $6910: $88
	adc  b                                           ; $6911: $88
	sbc  b                                           ; $6912: $98
	adc  b                                           ; $6913: $88
	adc  b                                           ; $6914: $88
	adc  b                                           ; $6915: $88
	adc  b                                           ; $6916: $88
	adc  b                                           ; $6917: $88
	adc  b                                           ; $6918: $88
	sbc  b                                           ; $6919: $98
	adc  b                                           ; $691a: $88
	adc  b                                           ; $691b: $88
	adc  b                                           ; $691c: $88
	adc  b                                           ; $691d: $88
	adc  b                                           ; $691e: $88
	ld   a, b                                        ; $691f: $78
	adc  b                                           ; $6920: $88
	adc  b                                           ; $6921: $88
	adc  b                                           ; $6922: $88
	adc  b                                           ; $6923: $88
	adc  b                                           ; $6924: $88
	adc  b                                           ; $6925: $88
	adc  b                                           ; $6926: $88
	adc  b                                           ; $6927: $88
	add  a                                           ; $6928: $87
	adc  b                                           ; $6929: $88
	ld   a, b                                        ; $692a: $78
	adc  b                                           ; $692b: $88
	adc  b                                           ; $692c: $88
	adc  b                                           ; $692d: $88
	adc  b                                           ; $692e: $88
	adc  c                                           ; $692f: $89
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	adc  b                                           ; $6933: $88
	adc  b                                           ; $6934: $88
	adc  b                                           ; $6935: $88
	adc  b                                           ; $6936: $88
	adc  b                                           ; $6937: $88
	adc  b                                           ; $6938: $88
	ld   a, b                                        ; $6939: $78
	sub  a                                           ; $693a: $97
	adc  c                                           ; $693b: $89
	adc  b                                           ; $693c: $88
	sbc  b                                           ; $693d: $98
	ld   a, b                                        ; $693e: $78
	add  a                                           ; $693f: $87
	sbc  b                                           ; $6940: $98
	adc  b                                           ; $6941: $88
	adc  b                                           ; $6942: $88
	ld   a, b                                        ; $6943: $78
	add  a                                           ; $6944: $87
	adc  b                                           ; $6945: $88
	add  a                                           ; $6946: $87
	adc  b                                           ; $6947: $88
	adc  b                                           ; $6948: $88
	sbc  b                                           ; $6949: $98
	ld   a, c                                        ; $694a: $79
	adc  b                                           ; $694b: $88
	adc  b                                           ; $694c: $88
	adc  b                                           ; $694d: $88
	add  a                                           ; $694e: $87
	add  a                                           ; $694f: $87
	adc  c                                           ; $6950: $89
	ld   a, b                                        ; $6951: $78
	ld   a, b                                        ; $6952: $78
	adc  b                                           ; $6953: $88
	adc  b                                           ; $6954: $88
	sub  a                                           ; $6955: $97
	sbc  b                                           ; $6956: $98
	ld   a, b                                        ; $6957: $78
	adc  b                                           ; $6958: $88
	ld   a, b                                        ; $6959: $78
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	sub  a                                           ; $695c: $97
	adc  c                                           ; $695d: $89
	adc  b                                           ; $695e: $88
	adc  b                                           ; $695f: $88
	add  a                                           ; $6960: $87
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	sbc  b                                           ; $6963: $98
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	ld   a, b                                        ; $6966: $78
	adc  b                                           ; $6967: $88
	adc  b                                           ; $6968: $88
	adc  b                                           ; $6969: $88
	adc  b                                           ; $696a: $88
	adc  b                                           ; $696b: $88
	ld   a, b                                        ; $696c: $78
	add  a                                           ; $696d: $87
	adc  c                                           ; $696e: $89
	add  a                                           ; $696f: $87
	adc  c                                           ; $6970: $89
	ld   a, c                                        ; $6971: $79
	add  a                                           ; $6972: $87
	sbc  b                                           ; $6973: $98
	adc  b                                           ; $6974: $88
	adc  b                                           ; $6975: $88
	sbc  b                                           ; $6976: $98
	adc  c                                           ; $6977: $89
	adc  b                                           ; $6978: $88
	adc  b                                           ; $6979: $88
	ld   a, c                                        ; $697a: $79
	add  a                                           ; $697b: $87
	sub  a                                           ; $697c: $97
	sbc  c                                           ; $697d: $99
	ld   a, b                                        ; $697e: $78
	sbc  b                                           ; $697f: $98
	ld   a, c                                        ; $6980: $79
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	adc  b                                           ; $6983: $88
	add  a                                           ; $6984: $87
	adc  c                                           ; $6985: $89

Call_0e5_6986:
	ld   a, b                                        ; $6986: $78
	sub  a                                           ; $6987: $97
	adc  b                                           ; $6988: $88
	sbc  b                                           ; $6989: $98
	ld   a, c                                        ; $698a: $79
	adc  b                                           ; $698b: $88
	ld   a, b                                        ; $698c: $78
	add  a                                           ; $698d: $87
	adc  b                                           ; $698e: $88
	ld   a, b                                        ; $698f: $78
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	ld   a, c                                        ; $6992: $79
	sub  a                                           ; $6993: $97
	adc  b                                           ; $6994: $88
	ld   a, c                                        ; $6995: $79

Call_0e5_6996:
	add  a                                           ; $6996: $87
	sbc  b                                           ; $6997: $98
	ld   a, c                                        ; $6998: $79
	ld   a, b                                        ; $6999: $78
	sbc  b                                           ; $699a: $98
	adc  c                                           ; $699b: $89
	adc  b                                           ; $699c: $88
	sub  a                                           ; $699d: $97
	adc  b                                           ; $699e: $88
	add  a                                           ; $699f: $87
	adc  b                                           ; $69a0: $88
	sbc  b                                           ; $69a1: $98
	ld   a, c                                        ; $69a2: $79
	ld   e, b                                        ; $69a3: $58
	and  a                                           ; $69a4: $a7
	add  a                                           ; $69a5: $87
	and  [hl]                                        ; $69a6: $a6
	sbc  b                                           ; $69a7: $98
	ld   a, b                                        ; $69a8: $78
	ld   a, c                                        ; $69a9: $79
	ld   a, b                                        ; $69aa: $78
	sbc  b                                           ; $69ab: $98
	ld   a, b                                        ; $69ac: $78
	add  a                                           ; $69ad: $87
	ld   a, c                                        ; $69ae: $79
	ld   a, b                                        ; $69af: $78
	sub  a                                           ; $69b0: $97
	adc  b                                           ; $69b1: $88
	add  a                                           ; $69b2: $87
	add  a                                           ; $69b3: $87
	adc  c                                           ; $69b4: $89
	add  a                                           ; $69b5: $87
	adc  c                                           ; $69b6: $89
	ld   a, c                                        ; $69b7: $79
	ld   a, b                                        ; $69b8: $78
	add  a                                           ; $69b9: $87
	sbc  b                                           ; $69ba: $98
	adc  b                                           ; $69bb: $88
	sub  a                                           ; $69bc: $97
	sbc  b                                           ; $69bd: $98
	ld   a, b                                        ; $69be: $78
	ld   a, b                                        ; $69bf: $78
	sub  a                                           ; $69c0: $97
	ld   a, c                                        ; $69c1: $79
	sub  a                                           ; $69c2: $97
	adc  b                                           ; $69c3: $88
	ld   a, c                                        ; $69c4: $79
	sbc  b                                           ; $69c5: $98
	add  a                                           ; $69c6: $87
	adc  b                                           ; $69c7: $88
	ld   a, b                                        ; $69c8: $78
	ld   a, b                                        ; $69c9: $78
	ld   [hl], a                                     ; $69ca: $77
	sbc  b                                           ; $69cb: $98
	add  a                                           ; $69cc: $87
	sub  a                                           ; $69cd: $97
	ld   a, c                                        ; $69ce: $79
	ld   a, b                                        ; $69cf: $78
	and  a                                           ; $69d0: $a7
	adc  c                                           ; $69d1: $89
	ld   [hl], a                                     ; $69d2: $77
	adc  b                                           ; $69d3: $88
	ld   a, c                                        ; $69d4: $79
	ld   [hl], a                                     ; $69d5: $77
	adc  c                                           ; $69d6: $89
	ld   a, c                                        ; $69d7: $79
	add  a                                           ; $69d8: $87
	add  a                                           ; $69d9: $87
	sub  [hl]                                        ; $69da: $96
	sbc  c                                           ; $69db: $99
	ld   l, d                                        ; $69dc: $6a
	ld   a, c                                        ; $69dd: $79
	ld   a, c                                        ; $69de: $79
	add  a                                           ; $69df: $87
	sub  a                                           ; $69e0: $97
	add  a                                           ; $69e1: $87
	sbc  b                                           ; $69e2: $98
	adc  b                                           ; $69e3: $88
	sbc  b                                           ; $69e4: $98
	ld   a, b                                        ; $69e5: $78
	add  a                                           ; $69e6: $87
	adc  c                                           ; $69e7: $89
	ld   a, b                                        ; $69e8: $78
	add  a                                           ; $69e9: $87
	adc  c                                           ; $69ea: $89
	ld   l, c                                        ; $69eb: $69
	sub  a                                           ; $69ec: $97
	adc  c                                           ; $69ed: $89
	add  a                                           ; $69ee: $87
	and  a                                           ; $69ef: $a7
	ld   a, d                                        ; $69f0: $7a
	ld   a, c                                        ; $69f1: $79
	sub  a                                           ; $69f2: $97
	ld   a, b                                        ; $69f3: $78
	ld   a, c                                        ; $69f4: $79
	sbc  b                                           ; $69f5: $98
	add  a                                           ; $69f6: $87
	sub  [hl]                                        ; $69f7: $96
	sbc  b                                           ; $69f8: $98
	ld   l, b                                        ; $69f9: $68
	adc  c                                           ; $69fa: $89
	ld   l, b                                        ; $69fb: $68
	add  [hl]                                        ; $69fc: $86
	and  a                                           ; $69fd: $a7
	ld   a, c                                        ; $69fe: $79
	adc  b                                           ; $69ff: $88
	sbc  c                                           ; $6a00: $99
	sbc  b                                           ; $6a01: $98
	adc  c                                           ; $6a02: $89
	ld   a, d                                        ; $6a03: $7a
	sub  a                                           ; $6a04: $97
	sub  a                                           ; $6a05: $97
	sub  a                                           ; $6a06: $97
	add  a                                           ; $6a07: $87
	ld   [hl], a                                     ; $6a08: $77
	ld   h, [hl]                                     ; $6a09: $66
	ld   [hl], a                                     ; $6a0a: $77
	ld   a, b                                        ; $6a0b: $78
	ld   a, c                                        ; $6a0c: $79
	adc  d                                           ; $6a0d: $8a
	xor  d                                           ; $6a0e: $aa
	cp   d                                           ; $6a0f: $ba
	xor  d                                           ; $6a10: $aa
	sbc  c                                           ; $6a11: $99
	add  a                                           ; $6a12: $87
	halt                                             ; $6a13: $76
	ld   d, [hl]                                     ; $6a14: $56
	dec  [hl]                                        ; $6a15: $35
	ld   d, [hl]                                     ; $6a16: $56
	ld   h, a                                        ; $6a17: $67
	adc  c                                           ; $6a18: $89
	cp   e                                           ; $6a19: $bb
	call $b9cb                                       ; $6a1a: $cd $cb $b9
	cp   b                                           ; $6a1d: $b8
	ld   h, a                                        ; $6a1e: $67
	ld   b, [hl]                                     ; $6a1f: $46
	ld   b, h                                        ; $6a20: $44
	ld   b, e                                        ; $6a21: $43
	ld   d, l                                        ; $6a22: $55
	ld   h, a                                        ; $6a23: $67
	adc  d                                           ; $6a24: $8a
	cp   l                                           ; $6a25: $bd
	db   $dd                                         ; $6a26: $dd
	db   $ed                                         ; $6a27: $ed
	res  3, b                                        ; $6a28: $cb $98
	ld   [hl], h                                     ; $6a2a: $74
	ld   d, l                                        ; $6a2b: $55
	inc  [hl]                                        ; $6a2c: $34
	inc  sp                                          ; $6a2d: $33
	dec  [hl]                                        ; $6a2e: $35
	ld   d, [hl]                                     ; $6a2f: $56
	sbc  c                                           ; $6a30: $99
	cp   h                                           ; $6a31: $bc
	xor  $ed                                         ; $6a32: $ee $ed
	call c, $76ba                                    ; $6a34: $dc $ba $76
	inc  sp                                          ; $6a37: $33
	ld   b, e                                        ; $6a38: $43
	ld   hl, $4533                                   ; $6a39: $21 $33 $45
	ld   l, c                                        ; $6a3c: $69
	sbc  h                                           ; $6a3d: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a3e: $cf
	rst  $28                                         ; $6a3f: $ef
	cp   $eb                                         ; $6a40: $fe $eb
	xor  b                                           ; $6a42: $a8
	ld   h, d                                        ; $6a43: $62
	inc  sp                                          ; $6a44: $33
	ld   [de], a                                     ; $6a45: $12
	ld   hl, $6525                                   ; $6a46: $21 $25 $65
	sbc  d                                           ; $6a49: $9a
	adc  $ff                                         ; $6a4a: $ce $ff
	rst  $38                                         ; $6a4c: $ff
	db   $fd                                         ; $6a4d: $fd
	jp   z, $3186                                    ; $6a4e: $ca $86 $31

	ld   hl, $1112                                   ; $6a51: $21 $12 $11
	ld   [hl], $77                                   ; $6a54: $36 $77
	call z, $ffef                                    ; $6a56: $cc $ef $ff
	rst  $38                                         ; $6a59: $ff
	call c, Call_0e5_63a8                            ; $6a5a: $dc $a8 $63
	ld   de, $1111                                   ; $6a5d: $11 $11 $11
	inc  de                                          ; $6a60: $13
	ld   d, a                                        ; $6a61: $57
	sbc  l                                           ; $6a62: $9d
	rst  JumpTable                                         ; $6a63: $df
	rst  $38                                         ; $6a64: $ff
	rst  $38                                         ; $6a65: $ff
	cp   $ca                                         ; $6a66: $fe $ca
	ld   [hl], l                                     ; $6a68: $75
	ld   de, $1111                                   ; $6a69: $11 $11 $11
	ld   de, $9936                                   ; $6a6c: $11 $36 $99
	sbc  $ff                                         ; $6a6f: $de $ff
	rst  $38                                         ; $6a71: $ff
	rst  $38                                         ; $6a72: $ff
	db   $dd                                         ; $6a73: $dd
	and  [hl]                                        ; $6a74: $a6
	ld   b, c                                        ; $6a75: $41
	ld   de, $1111                                   ; $6a76: $11 $11 $11
	inc  d                                           ; $6a79: $14
	ld   a, c                                        ; $6a7a: $79
	cp   a                                           ; $6a7b: $bf
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	db   $fd                                         ; $6a7f: $fd
	cp   b                                           ; $6a80: $b8
	ld   b, c                                        ; $6a81: $41
	ld   de, $1111                                   ; $6a82: $11 $11 $11
	inc  de                                          ; $6a85: $13
	ld   a, b                                        ; $6a86: $78
	xor  a                                           ; $6a87: $af
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	rst  $38                                         ; $6a8a: $ff
	db   $fd                                         ; $6a8b: $fd
	cp   c                                           ; $6a8c: $b9
	ld   b, c                                        ; $6a8d: $41
	ld   de, $1111                                   ; $6a8e: $11 $11 $11
	ld   [de], a                                     ; $6a91: $12
	ld   a, c                                        ; $6a92: $79
	xor  a                                           ; $6a93: $af
	rst  $38                                         ; $6a94: $ff
	rst  $38                                         ; $6a95: $ff
	rst  $38                                         ; $6a96: $ff
	db   $fd                                         ; $6a97: $fd
	ret  z                                           ; $6a98: $c8

	ld   d, c                                        ; $6a99: $51
	ld   de, $1111                                   ; $6a9a: $11 $11 $11
	ld   [de], a                                     ; $6a9d: $12
	ld   l, d                                        ; $6a9e: $6a
	cp   a                                           ; $6a9f: $bf
	rst  $38                                         ; $6aa0: $ff
	rst  $38                                         ; $6aa1: $ff
	rst  $38                                         ; $6aa2: $ff
	db   $fd                                         ; $6aa3: $fd
	cp   c                                           ; $6aa4: $b9
	ld   b, c                                        ; $6aa5: $41
	ld   de, $1111                                   ; $6aa6: $11 $11 $11
	inc  d                                           ; $6aa9: $14
	ld   a, e                                        ; $6aaa: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aab: $cf
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	db   $fc                                         ; $6aaf: $fc
	and  a                                           ; $6ab0: $a7
	ld   hl, $1111                                   ; $6ab1: $21 $11 $11
	ld   de, $9c15                                   ; $6ab4: $11 $15 $9c
	rst  JumpTable                                         ; $6ab7: $df
	rst  $38                                         ; $6ab8: $ff
	rst  $38                                         ; $6ab9: $ff
	rst  $38                                         ; $6aba: $ff
	jp   c, $1185                                    ; $6abb: $da $85 $11

	ld   de, $1111                                   ; $6abe: $11 $11 $11
	ld   e, b                                        ; $6ac1: $58
	db   $dd                                         ; $6ac2: $dd
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	cp   $a7                                         ; $6ac6: $fe $a7
	ld   h, c                                        ; $6ac8: $61
	ld   de, $1111                                   ; $6ac9: $11 $11 $11
	inc  de                                          ; $6acc: $13
	ld   a, l                                        ; $6acd: $7d
	rst  JumpTable                                         ; $6ace: $df
	rst  $38                                         ; $6acf: $ff
	rst  $38                                         ; $6ad0: $ff
	rst  $38                                         ; $6ad1: $ff
	db   $ec                                         ; $6ad2: $ec
	ld   [hl], a                                     ; $6ad3: $77
	ld   bc, $1111                                   ; $6ad4: $01 $11 $11
	ld   hl, $de38                                   ; $6ad7: $21 $38 $de
	rst  $38                                         ; $6ada: $ff
	rst  $38                                         ; $6adb: $ff
	rst  $38                                         ; $6adc: $ff
	db   $fd                                         ; $6add: $fd
	rst  ToBoot                                         ; $6ade: $c7
	ld   h, c                                        ; $6adf: $61
	ld   de, $1211                                   ; $6ae0: $11 $11 $12
	inc  de                                          ; $6ae3: $13
	adc  l                                           ; $6ae4: $8d
	rst  $38                                         ; $6ae5: $ff
	rst  $38                                         ; $6ae6: $ff
	rst  $38                                         ; $6ae7: $ff
	rst  $38                                         ; $6ae8: $ff
	bit  4, l                                        ; $6ae9: $cb $65
	ld   de, $1111                                   ; $6aeb: $11 $11 $11
	ld   hl, $ef49                                   ; $6aee: $21 $49 $ef
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	db   $fd                                         ; $6af4: $fd
	and  [hl]                                        ; $6af5: $a6
	ld   b, c                                        ; $6af6: $41
	ld   de, $1311                                   ; $6af7: $11 $11 $13
	dec  h                                           ; $6afa: $25
	xor  a                                           ; $6afb: $af
	rst  $38                                         ; $6afc: $ff
	rst  $38                                         ; $6afd: $ff
	rst  $38                                         ; $6afe: $ff
	cp   $c8                                         ; $6aff: $fe $c8
	ld   h, d                                        ; $6b01: $62
	ld   de, $1111                                   ; $6b02: $11 $11 $11
	inc  hl                                          ; $6b05: $23
	ld   l, h                                        ; $6b06: $6c
	rst  $38                                         ; $6b07: $ff
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	bit  6, [hl]                                     ; $6b0b: $cb $76
	ld   de, $1111                                   ; $6b0d: $11 $11 $11
	inc  hl                                          ; $6b10: $23
	ld   e, c                                        ; $6b11: $59
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	rst  $38                                         ; $6b14: $ff
	rst  $38                                         ; $6b15: $ff
	db   $eb                                         ; $6b16: $eb
	add  [hl]                                        ; $6b17: $86
	ld   b, c                                        ; $6b18: $41
	ld   de, $1311                                   ; $6b19: $11 $11 $13
	ld   b, [hl]                                     ; $6b1c: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b1d: $cf
	rst  $38                                         ; $6b1e: $ff
	rst  $38                                         ; $6b1f: $ff
	cp   $fd                                         ; $6b20: $fe $fd
	and  [hl]                                        ; $6b22: $a6
	ld   h, c                                        ; $6b23: $61
	ld   de, $1211                                   ; $6b24: $11 $11 $12
	ld   b, [hl]                                     ; $6b27: $46
	adc  a                                           ; $6b28: $8f
	rst  $38                                         ; $6b29: $ff
	rst  $38                                         ; $6b2a: $ff
	cp   $fe                                         ; $6b2b: $fe $fe
	rst  ToBoot                                         ; $6b2d: $c7
	ld   h, h                                        ; $6b2e: $64
	ld   de, $1111                                   ; $6b2f: $11 $11 $11
	ld   b, l                                        ; $6b32: $45
	ld   l, d                                        ; $6b33: $6a
	rst  $38                                         ; $6b34: $ff
	rst  $38                                         ; $6b35: $ff
	rst  $38                                         ; $6b36: $ff
	rst  JumpTable                                         ; $6b37: $df
	reti                                             ; $6b38: $d9


	ld   h, [hl]                                     ; $6b39: $66
	ld   de, $1111                                   ; $6b3a: $11 $11 $11
	inc  h                                           ; $6b3d: $24
	ld   h, a                                        ; $6b3e: $67
	rst  $38                                         ; $6b3f: $ff
	rst  $38                                         ; $6b40: $ff
	rst  $38                                         ; $6b41: $ff
	db   $ed                                         ; $6b42: $ed
	ei                                               ; $6b43: $fb
	halt                                             ; $6b44: $76
	ld   d, c                                        ; $6b45: $51
	ld   de, $1411                                   ; $6b46: $11 $11 $14
	ld   h, a                                        ; $6b49: $67
	xor  a                                           ; $6b4a: $af
	rst  $38                                         ; $6b4b: $ff
	rst  $38                                         ; $6b4c: $ff
	db   $fc                                         ; $6b4d: $fc
	db   $fd                                         ; $6b4e: $fd
	sub  [hl]                                        ; $6b4f: $96
	ld   d, d                                        ; $6b50: $52
	ld   de, $1211                                   ; $6b51: $11 $11 $12
	ld   h, [hl]                                     ; $6b54: $66
	ld   a, [hl]                                     ; $6b55: $7e
	rst  $38                                         ; $6b56: $ff
	rst  $38                                         ; $6b57: $ff
	db   $fd                                         ; $6b58: $fd
	sbc  $a6                                         ; $6b59: $de $a6
	ld   h, l                                        ; $6b5b: $65
	ld   de, $1113                                   ; $6b5c: $11 $13 $11
	ld   d, a                                        ; $6b5f: $57
	ld   l, c                                        ; $6b60: $69
	rst  $38                                         ; $6b61: $ff
	rst  JumpTable                                         ; $6b62: $df
	rst  $38                                         ; $6b63: $ff
	cp   l                                           ; $6b64: $bd
	ret  z                                           ; $6b65: $c8

	ld   h, a                                        ; $6b66: $67
	ld   h, c                                        ; $6b67: $61
	inc  d                                           ; $6b68: $14
	ld   b, c                                        ; $6b69: $41
	ld   c, b                                        ; $6b6a: $48
	ld   d, l                                        ; $6b6b: $55
	xor  e                                           ; $6b6c: $ab
	xor  d                                           ; $6b6d: $aa
	call c, $cbaa                                    ; $6b6e: $dc $aa $cb
	sbc  d                                           ; $6b71: $9a
	adc  c                                           ; $6b72: $89
	add  l                                           ; $6b73: $85
	ld   l, c                                        ; $6b74: $69
	ld   h, h                                        ; $6b75: $64
	halt                                             ; $6b76: $76
	ld   [hl], $75                                   ; $6b77: $36 $75
	ld   l, c                                        ; $6b79: $69
	adc  b                                           ; $6b7a: $88
	xor  c                                           ; $6b7b: $a9
	xor  e                                           ; $6b7c: $ab
	cp   e                                           ; $6b7d: $bb
	res  5, c                                        ; $6b7e: $cb $a9
	adc  b                                           ; $6b80: $88
	halt                                             ; $6b81: $76
	ld   d, l                                        ; $6b82: $55
	ld   b, e                                        ; $6b83: $43
	ld   b, l                                        ; $6b84: $45
	ld   b, l                                        ; $6b85: $45
	ld   [hl], a                                     ; $6b86: $77
	sbc  d                                           ; $6b87: $9a
	xor  e                                           ; $6b88: $ab
	call z, $cadc                                    ; $6b89: $cc $dc $ca
	cp   c                                           ; $6b8c: $b9
	sbc  c                                           ; $6b8d: $99
	ld   [hl], l                                     ; $6b8e: $75
	ld   h, l                                        ; $6b8f: $65
	inc  [hl]                                        ; $6b90: $34
	ld   d, h                                        ; $6b91: $54
	ld   d, [hl]                                     ; $6b92: $56
	ld   a, b                                        ; $6b93: $78
	sbc  c                                           ; $6b94: $99
	cp   d                                           ; $6b95: $ba
	xor  e                                           ; $6b96: $ab
	cp   e                                           ; $6b97: $bb
	xor  d                                           ; $6b98: $aa
	xor  c                                           ; $6b99: $a9
	sbc  b                                           ; $6b9a: $98
	ld   h, a                                        ; $6b9b: $67
	ld   h, [hl]                                     ; $6b9c: $66
	ld   d, l                                        ; $6b9d: $55
	ld   b, l                                        ; $6b9e: $45
	ld   h, [hl]                                     ; $6b9f: $66
	ld   [hl], a                                     ; $6ba0: $77
	adc  c                                           ; $6ba1: $89
	sbc  e                                           ; $6ba2: $9b
	cp   e                                           ; $6ba3: $bb
	adc  e                                           ; $6ba4: $8b
	cp   b                                           ; $6ba5: $b8
	xor  d                                           ; $6ba6: $aa
	adc  c                                           ; $6ba7: $89
	ld   a, b                                        ; $6ba8: $78
	ld   [hl], a                                     ; $6ba9: $77
	ld   [hl], a                                     ; $6baa: $77
	ld   d, l                                        ; $6bab: $55
	ld   h, [hl]                                     ; $6bac: $66
	ld   h, a                                        ; $6bad: $67
	ld   a, b                                        ; $6bae: $78
	adc  b                                           ; $6baf: $88
	sbc  c                                           ; $6bb0: $99
	sbc  e                                           ; $6bb1: $9b
	xor  d                                           ; $6bb2: $aa
	cp   d                                           ; $6bb3: $ba
	adc  c                                           ; $6bb4: $89
	sub  a                                           ; $6bb5: $97
	ld   [hl], a                                     ; $6bb6: $77
	ld   [hl], a                                     ; $6bb7: $77
	ld   h, l                                        ; $6bb8: $65
	ld   h, l                                        ; $6bb9: $65
	ld   h, a                                        ; $6bba: $67
	ld   [hl], a                                     ; $6bbb: $77
	adc  b                                           ; $6bbc: $88
	sbc  b                                           ; $6bbd: $98
	xor  d                                           ; $6bbe: $aa
	xor  l                                           ; $6bbf: $ad
	or   $8a                                         ; $6bc0: $f6 $8a
	ld   h, a                                        ; $6bc2: $67
	sbc  b                                           ; $6bc3: $98
	ld   d, l                                        ; $6bc4: $55
	halt                                             ; $6bc5: $76
	ld   b, h                                        ; $6bc6: $44
	ld   [hl], a                                     ; $6bc7: $77
	ld   l, b                                        ; $6bc8: $68
	xor  d                                           ; $6bc9: $aa
	sbc  d                                           ; $6bca: $9a
	res  5, c                                        ; $6bcb: $cb $a9
	call c, $a249                                    ; $6bcd: $dc $49 $a2
	ld   d, a                                        ; $6bd0: $57
	dec  [hl]                                        ; $6bd1: $35
	ld   d, e                                        ; $6bd2: $53
	ld   h, l                                        ; $6bd3: $65
	ld   a, c                                        ; $6bd4: $79
	xor  e                                           ; $6bd5: $ab
	cp   e                                           ; $6bd6: $bb
	cp   e                                           ; $6bd7: $bb
	xor  h                                           ; $6bd8: $ac
	cp   d                                           ; $6bd9: $ba
	xor  c                                           ; $6bda: $a9
	ld   h, [hl]                                     ; $6bdb: $66
	ld   b, e                                        ; $6bdc: $43
	dec  h                                           ; $6bdd: $25
	ld   d, h                                        ; $6bde: $54
	ld   h, a                                        ; $6bdf: $67
	ld   a, c                                        ; $6be0: $79
	xor  h                                           ; $6be1: $ac
	cp   d                                           ; $6be2: $ba
	call z, $bbcb                                    ; $6be3: $cc $cb $bb
	sub  a                                           ; $6be6: $97
	ld   [hl], e                                     ; $6be7: $73
	ld   [hl+], a                                    ; $6be8: $22
	inc  d                                           ; $6be9: $14
	ld   h, e                                        ; $6bea: $63
	ld   h, a                                        ; $6beb: $67
	sbc  e                                           ; $6bec: $9b
	cp   l                                           ; $6bed: $bd
	db   $db                                         ; $6bee: $db
	set  1, e                                        ; $6bef: $cb $cb
	cp   e                                           ; $6bf1: $bb
	and  [hl]                                        ; $6bf2: $a6
	ld   b, c                                        ; $6bf3: $41
	ld   de, $5514                                   ; $6bf4: $11 $14 $55
	adc  c                                           ; $6bf7: $89
	call $dcde                                       ; $6bf8: $cd $de $dc
	cp   e                                           ; $6bfb: $bb
	call z, $85a9                                    ; $6bfc: $cc $a9 $85
	ld   de, $3411                                   ; $6bff: $11 $11 $34
	ld   e, b                                        ; $6c02: $58
	sbc  h                                           ; $6c03: $9c
	xor  $fd                                         ; $6c04: $ee $fd
	res  7, e                                        ; $6c06: $cb $bb
	cp   d                                           ; $6c08: $ba
	sbc  b                                           ; $6c09: $98
	ld   d, c                                        ; $6c0a: $51
	ld   de, $4513                                   ; $6c0b: $11 $13 $45
	sbc  d                                           ; $6c0e: $9a
	rst  JumpTable                                         ; $6c0f: $df
	rst  $38                                         ; $6c10: $ff
	call c, $aabb                                    ; $6c11: $dc $bb $aa
	cp   c                                           ; $6c14: $b9
	ld   [hl], h                                     ; $6c15: $74
	ld   de, $4411                                   ; $6c16: $11 $11 $44
	ld   a, e                                        ; $6c19: $7b
	rst  JumpTable                                         ; $6c1a: $df
	rst  $38                                         ; $6c1b: $ff
	db   $fc                                         ; $6c1c: $fc
	cp   c                                           ; $6c1d: $b9
	xor  d                                           ; $6c1e: $aa
	xor  d                                           ; $6c1f: $aa
	sub  [hl]                                        ; $6c20: $96
	ld   hl, $0411                                   ; $6c21: $21 $11 $04
	ld   l, d                                        ; $6c24: $6a
	rst  JumpTable                                         ; $6c25: $df
	rst  $38                                         ; $6c26: $ff
	cp   $ba                                         ; $6c27: $fe $ba
	sbc  c                                           ; $6c29: $99
	adc  d                                           ; $6c2a: $8a
	sub  a                                           ; $6c2b: $97
	ld   b, c                                        ; $6c2c: $41
	ld   de, $5a15                                   ; $6c2d: $11 $15 $5a
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	rst  $38                                         ; $6c32: $ff
	sbc  d                                           ; $6c33: $9a
	sbc  c                                           ; $6c34: $99
	ld   a, d                                        ; $6c35: $7a
	cp   b                                           ; $6c36: $b8
	ld   b, c                                        ; $6c37: $41
	ld   de, $5a15                                   ; $6c38: $11 $15 $5a
	rst  $38                                         ; $6c3b: $ff
	rst  $38                                         ; $6c3c: $ff
	rst  $38                                         ; $6c3d: $ff
	ld   a, b                                        ; $6c3e: $78
	adc  b                                           ; $6c3f: $88
	sbc  d                                           ; $6c40: $9a
	cp   b                                           ; $6c41: $b8
	ld   d, c                                        ; $6c42: $51
	ld   de, $6a14                                   ; $6c43: $11 $14 $6a
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	ld   [hl], a                                     ; $6c49: $77
	ld   l, b                                        ; $6c4a: $68
	sbc  d                                           ; $6c4b: $9a
	ret                                              ; $6c4c: $c9


	ld   h, c                                        ; $6c4d: $61
	ld   de, $7a13                                   ; $6c4e: $11 $13 $7a
	rst  $38                                         ; $6c51: $ff
	rst  $38                                         ; $6c52: $ff
	rst  $38                                         ; $6c53: $ff
	halt                                             ; $6c54: $76
	ld   h, a                                        ; $6c55: $67
	xor  e                                           ; $6c56: $ab
	reti                                             ; $6c57: $d9


	ld   h, c                                        ; $6c58: $61
	ld   de, $7b11                                   ; $6c59: $11 $11 $7b
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	rst  $38                                         ; $6c5e: $ff
	ld   [hl], l                                     ; $6c5f: $75
	ld   d, a                                        ; $6c60: $57
	xor  h                                           ; $6c61: $ac
	ret                                              ; $6c62: $c9


	ld   h, d                                        ; $6c63: $62
	ld   de, $8c11                                   ; $6c64: $11 $11 $8c
	rst  $38                                         ; $6c67: $ff
	rst  $38                                         ; $6c68: $ff
	cp   $65                                         ; $6c69: $fe $65
	ld   d, [hl]                                     ; $6c6b: $56
	cp   l                                           ; $6c6c: $bd
	db   $eb                                         ; $6c6d: $eb
	ld   [hl], e                                     ; $6c6e: $73
	ld   de, $6c11                                   ; $6c6f: $11 $11 $6c
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	db   $fd                                         ; $6c74: $fd
	ld   h, h                                        ; $6c75: $64
	ld   d, [hl]                                     ; $6c76: $56
	cp   [hl]                                        ; $6c77: $be
	ei                                               ; $6c78: $fb
	ld   h, e                                        ; $6c79: $63
	ld   de, $4c11                                   ; $6c7a: $11 $11 $4c
	rst  $38                                         ; $6c7d: $ff
	rst  $38                                         ; $6c7e: $ff
	db   $fc                                         ; $6c7f: $fc
	ld   d, e                                        ; $6c80: $53
	ld   h, [hl]                                     ; $6c81: $66
	xor  [hl]                                        ; $6c82: $ae
	db   $fc                                         ; $6c83: $fc
	ld   h, d                                        ; $6c84: $62
	ld   de, $1a11                                   ; $6c85: $11 $11 $1a
	rst  $38                                         ; $6c88: $ff
	rst  $38                                         ; $6c89: $ff
	db   $fc                                         ; $6c8a: $fc
	ld   h, d                                        ; $6c8b: $62
	ld   h, [hl]                                     ; $6c8c: $66
	xor  [hl]                                        ; $6c8d: $ae
	db   $fc                                         ; $6c8e: $fc
	ld   d, e                                        ; $6c8f: $53
	ld   de, $1811                                   ; $6c90: $11 $11 $18
	rst  $38                                         ; $6c93: $ff
	rst  $38                                         ; $6c94: $ff
	db   $fc                                         ; $6c95: $fc
	ld   [hl], c                                     ; $6c96: $71
	ld   d, a                                        ; $6c97: $57
	xor  [hl]                                        ; $6c98: $ae
	rst  $38                                         ; $6c99: $ff
	ld   h, d                                        ; $6c9a: $62
	ld   de, $1211                                   ; $6c9b: $11 $11 $12
	rst  $38                                         ; $6c9e: $ff
	rst  $38                                         ; $6c9f: $ff
	db   $fc                                         ; $6ca0: $fc
	or   d                                           ; $6ca1: $b2
	ld   [hl], $9e                                   ; $6ca2: $36 $9e
	rst  $38                                         ; $6ca4: $ff
	add  e                                           ; $6ca5: $83
	ld   de, $1111                                   ; $6ca6: $11 $11 $11
	cp   a                                           ; $6ca9: $bf
	rst  $38                                         ; $6caa: $ff
	db   $fc                                         ; $6cab: $fc
	or   l                                           ; $6cac: $b5
	ld   d, $8d                                      ; $6cad: $16 $8d
	rst  $38                                         ; $6caf: $ff
	call nc, $1121                                   ; $6cb0: $d4 $21 $11
	ld   de, $ff3f                                   ; $6cb3: $11 $3f $ff
	db   $ed                                         ; $6cb6: $ed
	sbc  c                                           ; $6cb7: $99
	inc  hl                                          ; $6cb8: $23
	ld   a, e                                        ; $6cb9: $7b
	rst  $38                                         ; $6cba: $ff
	rst  $30                                         ; $6cbb: $f7
	ld   sp, $1111                                   ; $6cbc: $31 $11 $11
	inc  e                                           ; $6cbf: $1c
	rst  $38                                         ; $6cc0: $ff
	cp   $98                                         ; $6cc1: $fe $98
	ld   h, d                                        ; $6cc3: $62
	ld   c, c                                        ; $6cc4: $49
	rst  $38                                         ; $6cc5: $ff
	db   $fc                                         ; $6cc6: $fc
	ld   d, e                                        ; $6cc7: $53
	ld   bc, $1111                                   ; $6cc8: $01 $11 $11
	rst  $38                                         ; $6ccb: $ff
	cp   $b9                                         ; $6ccc: $fe $b9
	add  [hl]                                        ; $6cce: $86
	dec  d                                           ; $6ccf: $15
	sbc  a                                           ; $6cd0: $9f
	rst  $38                                         ; $6cd1: $ff
	and  h                                           ; $6cd2: $a4
	ld   de, $1111                                   ; $6cd3: $11 $11 $11
	rra                                              ; $6cd6: $1f
	rst  $38                                         ; $6cd7: $ff
	reti                                             ; $6cd8: $d9


	ld   d, a                                        ; $6cd9: $57
	ld   d, h                                        ; $6cda: $54
	ld   l, h                                        ; $6cdb: $6c
	rst  $38                                         ; $6cdc: $ff
	or   $43                                         ; $6cdd: $f6 $43
	ld   de, $1111                                   ; $6cdf: $11 $11 $11
	rst  $38                                         ; $6ce2: $ff
	db   $fc                                         ; $6ce3: $fc
	sub  [hl]                                        ; $6ce4: $96
	add  [hl]                                        ; $6ce5: $86
	ld   b, [hl]                                     ; $6ce6: $46
	cp   a                                           ; $6ce7: $bf
	cp   $74                                         ; $6ce8: $fe $74
	ld   hl, $1111                                   ; $6cea: $21 $11 $11
	rra                                              ; $6ced: $1f
	rst  $38                                         ; $6cee: $ff
	and  $46                                         ; $6cef: $e6 $46
	halt                                             ; $6cf1: $76
	ld   a, e                                        ; $6cf2: $7b
	rst  $38                                         ; $6cf3: $ff
	ld   hl, sp+$33                                  ; $6cf4: $f8 $33
	inc  hl                                          ; $6cf6: $23
	ld   hl, $7f11                                   ; $6cf7: $21 $11 $7f
	rst  $38                                         ; $6cfa: $ff
	ld   h, l                                        ; $6cfb: $65
	ld   h, a                                        ; $6cfc: $67
	ld   h, [hl]                                     ; $6cfd: $66
	cp   a                                           ; $6cfe: $bf
	rst  $38                                         ; $6cff: $ff
	sub  h                                           ; $6d00: $94
	inc  sp                                          ; $6d01: $33
	ld   d, h                                        ; $6d02: $54
	ld   hl, rAUD1LEN                                   ; $6d03: $21 $11 $ff
	db   $fc                                         ; $6d06: $fc
	ld   b, [hl]                                     ; $6d07: $46
	add  a                                           ; $6d08: $87
	ld   [hl], a                                     ; $6d09: $77
	rst  JumpTable                                         ; $6d0a: $df
	db   $fc                                         ; $6d0b: $fc
	ld   d, h                                        ; $6d0c: $54
	inc  h                                           ; $6d0d: $24
	ld   [hl], l                                     ; $6d0e: $75

jr_0e5_6d0f:
	ld   de, rAUD1LEN                                   ; $6d0f: $11 $11 $ff
	ld   sp, hl                                      ; $6d12: $f9
	ld   d, [hl]                                     ; $6d13: $56
	sub  a                                           ; $6d14: $97
	adc  d                                           ; $6d15: $8a
	rst  $28                                         ; $6d16: $ef
	ld   a, [$4644]                                  ; $6d17: $fa $44 $46
	ld   [hl], e                                     ; $6d1a: $73
	ld   de, $ff1c                                   ; $6d1b: $11 $1c $ff
	push af                                          ; $6d1e: $f5
	ld   d, a                                        ; $6d1f: $57
	sub  a                                           ; $6d20: $97
	ld   a, d                                        ; $6d21: $7a
	rst  $38                                         ; $6d22: $ff
	ld   hl, sp+$54                                  ; $6d23: $f8 $54
	ld   d, a                                        ; $6d25: $57
	ld   h, c                                        ; $6d26: $61
	ld   de, $ff1f                                   ; $6d27: $11 $1f $ff
	call nc, $9657                                   ; $6d2a: $d4 $57 $96
	adc  l                                           ; $6d2d: $8d
	rst  $38                                         ; $6d2e: $ff
	rst  $10                                         ; $6d2f: $d7
	inc  [hl]                                        ; $6d30: $34
	ld   d, a                                        ; $6d31: $57
	ld   h, c                                        ; $6d32: $61
	ld   de, $ff1f                                   ; $6d33: $11 $1f $ff
	add  h                                           ; $6d36: $84
	ld   e, b                                        ; $6d37: $58
	sub  l                                           ; $6d38: $95
	adc  [hl]                                        ; $6d39: $8e
	rst  $38                                         ; $6d3a: $ff
	or   h                                           ; $6d3b: $b4
	inc  h                                           ; $6d3c: $24
	ld   d, a                                        ; $6d3d: $57
	ld   sp, $9f11                                   ; $6d3e: $31 $11 $9f
	rst  $38                                         ; $6d41: $ff
	ld   h, e                                        ; $6d42: $63
	ld   l, c                                        ; $6d43: $69
	ld   [hl], a                                     ; $6d44: $77
	xor  a                                           ; $6d45: $af
	rst  $38                                         ; $6d46: $ff
	add  e                                           ; $6d47: $83
	inc  [hl]                                        ; $6d48: $34
	ld   [hl], a                                     ; $6d49: $77
	ld   de, rAUD1LEN                                   ; $6d4a: $11 $11 $ff
	db   $fc                                         ; $6d4d: $fc
	inc  h                                           ; $6d4e: $24
	sbc  b                                           ; $6d4f: $98
	ld   a, b                                        ; $6d50: $78
	rst  JumpTable                                         ; $6d51: $df
	db   $fc                                         ; $6d52: $fc
	ld   b, e                                        ; $6d53: $43
	ld   b, l                                        ; $6d54: $45
	ld   h, e                                        ; $6d55: $63

jr_0e5_6d56:
	ld   de, rAUD1LOW                                   ; $6d56: $11 $13 $ff
	rst  $30                                         ; $6d59: $f7
	dec  [hl]                                        ; $6d5a: $35
	adc  c                                           ; $6d5b: $89
	adc  d                                           ; $6d5c: $8a
	rst  $28                                         ; $6d5d: $ef
	ld   sp, hl                                      ; $6d5e: $f9
	inc  sp                                          ; $6d5f: $33
	ld   b, [hl]                                     ; $6d60: $46
	ld   h, c                                        ; $6d61: $61
	ld   de, $ff1f                                   ; $6d62: $11 $1f $ff
	db   $e3                                         ; $6d65: $e3
	jr   c, jr_0e5_6d0f                              ; $6d66: $38 $a7

	ld   a, h                                        ; $6d68: $7c
	rst  $38                                         ; $6d69: $ff
	call nc, Call_0e5_4612                           ; $6d6a: $d4 $12 $46
	ld   sp, $8f11                                   ; $6d6d: $31 $11 $8f
	rst  $38                                         ; $6d70: $ff
	ld   h, c                                        ; $6d71: $61
	ld   e, d                                        ; $6d72: $5a
	sbc  c                                           ; $6d73: $99
	sbc  a                                           ; $6d74: $9f
	rst  $38                                         ; $6d75: $ff
	add  c                                           ; $6d76: $81
	inc  h                                           ; $6d77: $24
	ld   [hl], l                                     ; $6d78: $75
	ld   de, rAUD1LEN                                   ; $6d79: $11 $11 $ff

jr_0e5_6d7c:
	ld   hl, sp+$05                                  ; $6d7c: $f8 $05
	cp   d                                           ; $6d7e: $ba
	ld   [hl], a                                     ; $6d7f: $77
	rst  $28                                         ; $6d80: $ef
	ld   sp, hl                                      ; $6d81: $f9
	ld   de, $5136                                   ; $6d82: $11 $36 $51
	ld   de, $ff1f                                   ; $6d85: $11 $1f $ff
	add  d                                           ; $6d88: $82
	ld   a, [hl-]                                    ; $6d89: $3a
	or   a                                           ; $6d8a: $b7
	ld   a, l                                        ; $6d8b: $7d
	rst  $38                                         ; $6d8c: $ff
	sub  c                                           ; $6d8d: $91
	ld   [de], a                                     ; $6d8e: $12
	ld   d, h                                        ; $6d8f: $54
	ld   de, $ff15                                   ; $6d90: $11 $15 $ff
	or   $14                                         ; $6d93: $f6 $14
	cp   e                                           ; $6d95: $bb
	sbc  b                                           ; $6d96: $98
	rst  $28                                         ; $6d97: $ef
	rst  $30                                         ; $6d98: $f7
	ld   [de], a                                     ; $6d99: $12
	ld   b, a                                        ; $6d9a: $47
	ld   b, c                                        ; $6d9b: $41
	ld   de, $ff5f                                   ; $6d9c: $11 $5f $ff
	ld   [hl], d                                     ; $6d9f: $72
	ld   l, e                                        ; $6da0: $6b
	add  [hl]                                        ; $6da1: $86
	sbc  a                                           ; $6da2: $9f
	rst  $38                                         ; $6da3: $ff
	ld   [hl], c                                     ; $6da4: $71
	ld   [de], a                                     ; $6da5: $12
	ld   sp, $1f11                                   ; $6da6: $31 $11 $1f
	rst  $38                                         ; $6da9: $ff
	db   $d3                                         ; $6daa: $d3
	jr   jr_0e5_6d56                                 ; $6dab: $18 $a9

	ld   a, e                                        ; $6dad: $7b
	rst  $38                                         ; $6dae: $ff
	jp   nz, Jump_0e5_7614                           ; $6daf: $c2 $14 $76

	ld   de, rAUD1LEN                                   ; $6db2: $11 $11 $ff
	db   $fc                                         ; $6db5: $fc
	ld   d, l                                        ; $6db6: $55
	cp   c                                           ; $6db7: $b9
	ld   d, [hl]                                     ; $6db8: $56
	cp   a                                           ; $6db9: $bf
	db   $fc                                         ; $6dba: $fc
	ld   de, $1112                                   ; $6dbb: $11 $12 $11
	ld   de, $fdff                                   ; $6dbe: $11 $ff $fd
	ld   hl, $978a                                   ; $6dc1: $21 $8a $97
	sbc  a                                           ; $6dc4: $9f
	cp   $31                                         ; $6dc5: $fe $31
	scf                                              ; $6dc7: $37
	ld   [hl], c                                     ; $6dc8: $71
	ld   de, $ff1f                                   ; $6dc9: $11 $1f $ff
	and  e                                           ; $6dcc: $a3
	ld   e, d                                        ; $6dcd: $5a
	add  [hl]                                        ; $6dce: $86
	ld   l, h                                        ; $6dcf: $6c
	rst  $38                                         ; $6dd0: $ff
	pop  bc                                          ; $6dd1: $c1
	ld   de, $1121                                   ; $6dd2: $11 $21 $11
	rra                                              ; $6dd5: $1f
	rst  $38                                         ; $6dd6: $ff
	or   d                                           ; $6dd7: $b2
	add  hl, sp                                      ; $6dd8: $39
	add  a                                           ; $6dd9: $87
	ld   a, h                                        ; $6dda: $7c
	rst  $38                                         ; $6ddb: $ff
	or   c                                           ; $6ddc: $b1
	ld   [de], a                                     ; $6ddd: $12
	ld   h, l                                        ; $6dde: $65
	ld   de, $ff17                                   ; $6ddf: $11 $17 $ff
	rst  $30                                         ; $6de2: $f7
	jr   c, jr_0e5_6d7c                              ; $6de3: $38 $97

	ld   c, b                                        ; $6de5: $48
	rst  $38                                         ; $6de6: $ff
	push af                                          ; $6de7: $f5
	ld   de, $1122                                   ; $6de8: $11 $22 $11
	inc  e                                           ; $6deb: $1c
	rst  $38                                         ; $6dec: $ff
	rst  $30                                         ; $6ded: $f7
	scf                                              ; $6dee: $37
	add  [hl]                                        ; $6def: $86
	ld   l, c                                        ; $6df0: $69
	rst  $38                                         ; $6df1: $ff
	push af                                          ; $6df2: $f5
	ld   de, $1135                                   ; $6df3: $11 $35 $11
	inc  de                                          ; $6df6: $13
	rst  $38                                         ; $6df7: $ff
	ei                                               ; $6df8: $fb
	ld   d, a                                        ; $6df9: $57
	and  l                                           ; $6dfa: $a5
	ld   h, a                                        ; $6dfb: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dfc: $cf
	ld   sp, hl                                      ; $6dfd: $f9
	ld   de, $1111                                   ; $6dfe: $11 $11 $11
	dec  e                                           ; $6e01: $1d
	rst  $38                                         ; $6e02: $ff
	ld   sp, hl                                      ; $6e03: $f9
	ld   h, a                                        ; $6e04: $67
	ld   h, [hl]                                     ; $6e05: $66
	ld   a, c                                        ; $6e06: $79
	rst  $38                                         ; $6e07: $ff
	push hl                                          ; $6e08: $e5
	ld   bc, $1132                                   ; $6e09: $01 $32 $11
	dec  de                                          ; $6e0c: $1b
	rst  $38                                         ; $6e0d: $ff
	ld   a, [$6568]                                  ; $6e0e: $fa $68 $65
	ld   a, d                                        ; $6e11: $7a
	rst  $38                                         ; $6e12: $ff
	db   $f4                                         ; $6e13: $f4
	ld   de, $1121                                   ; $6e14: $11 $21 $11
	rra                                              ; $6e17: $1f
	rst  $38                                         ; $6e18: $ff
	ld   a, [$5478]                                  ; $6e19: $fa $78 $54
	ld   a, e                                        ; $6e1c: $7b
	rst  $38                                         ; $6e1d: $ff
	jp   nc, $3111                                   ; $6e1e: $d2 $11 $31

	ld   de, $ff1f                                   ; $6e21: $11 $1f $ff
	db   $eb                                         ; $6e24: $eb
	sbc  b                                           ; $6e25: $98
	ld   d, h                                        ; $6e26: $54
	ld   a, e                                        ; $6e27: $7b
	rst  $38                                         ; $6e28: $ff
	jp   nz, $1111                                   ; $6e29: $c2 $11 $11

	ld   de, $ff9f                                   ; $6e2c: $11 $9f $ff
	jp   hl                                          ; $6e2f: $e9


	add  l                                           ; $6e30: $85
	ld   b, a                                        ; $6e31: $47
	sbc  h                                           ; $6e32: $9c
	rst  $38                                         ; $6e33: $ff
	add  e                                           ; $6e34: $83
	ld   de, $1111                                   ; $6e35: $11 $11 $11
	rst  JumpTable                                         ; $6e38: $df
	rst  $38                                         ; $6e39: $ff
	ld   a, [$4785]                                  ; $6e3a: $fa $85 $47
	sbc  l                                           ; $6e3d: $9d
	rst  $38                                         ; $6e3e: $ff
	ld   h, d                                        ; $6e3f: $62
	ld   de, $1111                                   ; $6e40: $11 $11 $11
	rst  $38                                         ; $6e43: $ff
	rst  $38                                         ; $6e44: $ff
	db   $db                                         ; $6e45: $db
	add  h                                           ; $6e46: $84
	ld   h, a                                        ; $6e47: $67
	sbc  h                                           ; $6e48: $9c
	db   $fd                                         ; $6e49: $fd
	ld   d, d                                        ; $6e4a: $52
	ld   de, $1311                                   ; $6e4b: $11 $11 $13
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	ld   [$6874], a                                  ; $6e50: $ea $74 $68
	sbc  l                                           ; $6e53: $9d
	ld   sp, hl                                      ; $6e54: $f9
	ld   sp, $1111                                   ; $6e55: $31 $11 $11
	dec  de                                          ; $6e58: $1b
	rst  $38                                         ; $6e59: $ff
	rst  $38                                         ; $6e5a: $ff
	cp   e                                           ; $6e5b: $bb
	ld   d, [hl]                                     ; $6e5c: $56
	ld   h, a                                        ; $6e5d: $67
	cp   [hl]                                        ; $6e5e: $be
	and  $31                                         ; $6e5f: $e6 $31
	ld   de, $2f11                                   ; $6e61: $11 $11 $2f
	rst  $38                                         ; $6e64: $ff
	cp   $b8                                         ; $6e65: $fe $b8
	ld   l, b                                        ; $6e67: $68
	ld   a, b                                        ; $6e68: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e69: $cf
	and  e                                           ; $6e6a: $a3
	ld   de, $1111                                   ; $6e6b: $11 $11 $11
	xor  a                                           ; $6e6e: $af
	rst  $38                                         ; $6e6f: $ff
	db   $fc                                         ; $6e70: $fc
	and  [hl]                                        ; $6e71: $a6
	ld   a, b                                        ; $6e72: $78
	ld   a, c                                        ; $6e73: $79
	db   $dd                                         ; $6e74: $dd
	ld   h, h                                        ; $6e75: $64
	ld   de, $1411                                   ; $6e76: $11 $11 $14
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	ld   [$7796], a                                  ; $6e7b: $ea $96 $77
	xor  h                                           ; $6e7e: $ac
	ld   [$1153], a                                  ; $6e7f: $ea $53 $11
	ld   de, $ff1d                                   ; $6e82: $11 $1d $ff
	rst  $38                                         ; $6e85: $ff
	jp   c, Jump_0e5_6767                            ; $6e86: $da $67 $67

	sbc  a                                           ; $6e89: $9f
	or   [hl]                                        ; $6e8a: $b6
	ld   d, c                                        ; $6e8b: $51
	ld   de, $7f11                                   ; $6e8c: $11 $11 $7f
	rst  $38                                         ; $6e8f: $ff
	db   $fd                                         ; $6e90: $fd
	ret  z                                           ; $6e91: $c8

	ld   [hl], a                                     ; $6e92: $77
	ld   a, c                                        ; $6e93: $79
	cp   l                                           ; $6e94: $bd
	add  l                                           ; $6e95: $85
	ld   hl, $1511                                   ; $6e96: $21 $11 $15
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	db   $fc                                         ; $6e9b: $fc
	and  a                                           ; $6e9c: $a7
	ld   h, a                                        ; $6e9d: $67
	adc  e                                           ; $6e9e: $8b
	ret                                              ; $6e9f: $c9


	ld   h, h                                        ; $6ea0: $64
	ld   de, $5d11                                   ; $6ea1: $11 $11 $5d
	rst  $38                                         ; $6ea4: $ff
	rst  $38                                         ; $6ea5: $ff
	call c, Call_0e5_6986                            ; $6ea6: $dc $86 $69
	sbc  e                                           ; $6ea9: $9b
	and  a                                           ; $6eaa: $a7
	ld   b, c                                        ; $6eab: $41
	ld   de, $cf14                                   ; $6eac: $11 $14 $cf
	rst  $38                                         ; $6eaf: $ff
	db   $fd                                         ; $6eb0: $fd
	reti                                             ; $6eb1: $d9


	halt                                             ; $6eb2: $76
	xor  d                                           ; $6eb3: $aa
	jp   z, $1174                                    ; $6eb4: $ca $74 $11

	ld   de, $ff7e                                   ; $6eb7: $11 $7e $ff
	rst  $38                                         ; $6eba: $ff
	db   $dd                                         ; $6ebb: $dd
	and  l                                           ; $6ebc: $a5
	ld   e, d                                        ; $6ebd: $5a
	xor  e                                           ; $6ebe: $ab
	sbc  b                                           ; $6ebf: $98
	ld   b, c                                        ; $6ec0: $41
	ld   de, $df15                                   ; $6ec1: $11 $15 $df
	rst  $38                                         ; $6ec4: $ff
	sbc  $da                                         ; $6ec5: $de $da
	ld   d, [hl]                                     ; $6ec7: $56
	sbc  c                                           ; $6ec8: $99
	cp   d                                           ; $6ec9: $ba
	add  e                                           ; $6eca: $83
	ld   de, $7d13                                   ; $6ecb: $11 $13 $7d
	rst  $28                                         ; $6ece: $ef
	cp   $fd                                         ; $6ecf: $fe $fd
	sub  h                                           ; $6ed1: $94
	adc  c                                           ; $6ed2: $89
	adc  c                                           ; $6ed3: $89
	xor  c                                           ; $6ed4: $a9
	ld   hl, $3911                                   ; $6ed5: $21 $11 $39
	sbc  $ff                                         ; $6ed8: $de $ff
	rst  $38                                         ; $6eda: $ff
	ret  z                                           ; $6edb: $c8

	ld   l, b                                        ; $6edc: $68
	sbc  d                                           ; $6edd: $9a
	xor  c                                           ; $6ede: $a9
	ld   h, c                                        ; $6edf: $61
	ld   de, $ac17                                   ; $6ee0: $11 $17 $ac
	rst  $38                                         ; $6ee3: $ff
	rst  $38                                         ; $6ee4: $ff
	ei                                               ; $6ee5: $fb
	ld   b, [hl]                                     ; $6ee6: $46
	sub  [hl]                                        ; $6ee7: $96
	ld   l, d                                        ; $6ee8: $6a
	sub  e                                           ; $6ee9: $93
	ld   de, $8b11                                   ; $6eea: $11 $11 $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eed: $cf
	rst  $38                                         ; $6eee: $ff
	rst  $38                                         ; $6eef: $ff
	add  [hl]                                        ; $6ef0: $86
	adc  b                                           ; $6ef1: $88
	ld   a, b                                        ; $6ef2: $78
	and  [hl]                                        ; $6ef3: $a6
	ld   de, $7911                                   ; $6ef4: $11 $11 $79
	cp   a                                           ; $6ef7: $bf
	cp   $ff                                         ; $6ef8: $fe $ff
	add  $99                                         ; $6efa: $c6 $99
	ld   d, [hl]                                     ; $6efc: $56
	adc  b                                           ; $6efd: $88
	ld   de, $5911                                   ; $6efe: $11 $11 $59
	sbc  h                                           ; $6f01: $9c
	cp   $ff                                         ; $6f02: $fe $ff
	ld   sp, hl                                      ; $6f04: $f9
	adc  c                                           ; $6f05: $89
	halt                                             ; $6f06: $76
	ld   a, b                                        ; $6f07: $78
	ld   sp, $1911                                   ; $6f08: $31 $11 $19
	xor  d                                           ; $6f0b: $aa
	rst  $38                                         ; $6f0c: $ff
	rst  JumpTable                                         ; $6f0d: $df
	ld   a, [$768b]                                  ; $6f0e: $fa $8b $76
	ld   l, b                                        ; $6f11: $68
	ld   d, c                                        ; $6f12: $51
	ld   de, $aa17                                   ; $6f13: $11 $17 $aa
	rst  $38                                         ; $6f16: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f17: $cf
	db   $fc                                         ; $6f18: $fc
	ld   a, e                                        ; $6f19: $7b
	and  [hl]                                        ; $6f1a: $a6
	ld   a, b                                        ; $6f1b: $78
	ld   [hl], c                                     ; $6f1c: $71
	ld   de, $7717                                   ; $6f1d: $11 $17 $77
	rst  $38                                         ; $6f20: $ff
	cp   a                                           ; $6f21: $bf
	db   $fd                                         ; $6f22: $fd
	sbc  d                                           ; $6f23: $9a
	and  [hl]                                        ; $6f24: $a6
	ld   h, a                                        ; $6f25: $67
	ld   [hl], c                                     ; $6f26: $71
	ld   de, $8515                                   ; $6f27: $11 $15 $85
	rst  $38                                         ; $6f2a: $ff
	xor  a                                           ; $6f2b: $af
	db   $fd                                         ; $6f2c: $fd
	sbc  h                                           ; $6f2d: $9c
	sub  l                                           ; $6f2e: $95
	halt                                             ; $6f2f: $76
	sub  c                                           ; $6f30: $91
	ld   de, $8313                                   ; $6f31: $11 $13 $83
	rst  JumpTable                                         ; $6f34: $df
	sbc  a                                           ; $6f35: $9f
	rst  $38                                         ; $6f36: $ff
	cp   h                                           ; $6f37: $bc
	and  l                                           ; $6f38: $a5
	add  l                                           ; $6f39: $85
	ld   [hl], e                                     ; $6f3a: $73
	ld   de, $8212                                   ; $6f3b: $11 $12 $82
	cp   a                                           ; $6f3e: $bf
	xor  a                                           ; $6f3f: $af
	rst  $38                                         ; $6f40: $ff
	cp   l                                           ; $6f41: $bd
	or   l                                           ; $6f42: $b5
	add  l                                           ; $6f43: $85
	ld   h, l                                        ; $6f44: $65
	ld   de, $9111                                   ; $6f45: $11 $11 $91
	ld   a, a                                        ; $6f48: $7f
	xor  e                                           ; $6f49: $ab
	rst  $38                                         ; $6f4a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f4b: $cf
	push hl                                          ; $6f4c: $e5
	add  [hl]                                        ; $6f4d: $86
	ld   b, l                                        ; $6f4e: $45
	ld   de, $9111                                   ; $6f4f: $11 $11 $91
	ld   l, a                                        ; $6f52: $6f
	adc  e                                           ; $6f53: $8b
	rst  $38                                         ; $6f54: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f55: $cf
	and  $b6                                         ; $6f56: $e6 $b6
	ld   [hl], $11                                   ; $6f58: $36 $11
	ld   de, $4f91                                   ; $6f5a: $11 $91 $4f
	sbc  b                                           ; $6f5d: $98
	rst  $38                                         ; $6f5e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f5f: $cf
	push af                                          ; $6f60: $f5
	ret  c                                           ; $6f61: $d8

	add  hl, de                                      ; $6f62: $19
	ld   de, $9111                                   ; $6f63: $11 $11 $91
	ccf                                              ; $6f66: $3f
	sub  a                                           ; $6f67: $97
	rst  $38                                         ; $6f68: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f69: $cf
	or   $e8                                         ; $6f6a: $f6 $e8
	add  hl, de                                      ; $6f6c: $19
	ld   de, $7111                                   ; $6f6d: $11 $11 $71
	rra                                              ; $6f70: $1f
	sub  a                                           ; $6f71: $97
	rst  $38                                         ; $6f72: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f73: $cf
	or   $fa                                         ; $6f74: $f6 $fa
	inc  e                                           ; $6f76: $1c
	ld   de, $6211                                   ; $6f77: $11 $11 $62
	rra                                              ; $6f7a: $1f
	sub  l                                           ; $6f7b: $95
	rst  $38                                         ; $6f7c: $ff
	cp   a                                           ; $6f7d: $bf
	push af                                          ; $6f7e: $f5
	ld   a, [$111e]                                  ; $6f7f: $fa $1e $11
	ld   de, $1f43                                   ; $6f82: $11 $43 $1f
	and  e                                           ; $6f85: $a3
	rst  $38                                         ; $6f86: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f87: $cf
	or   $fa                                         ; $6f88: $f6 $fa
	rra                                              ; $6f8a: $1f
	ld   de, $3411                                   ; $6f8b: $11 $11 $34
	rra                                              ; $6f8e: $1f
	and  c                                           ; $6f8f: $a1
	rst  $38                                         ; $6f90: $ff
	cp   a                                           ; $6f91: $bf
	or   $fc                                         ; $6f92: $f6 $fc
	rra                                              ; $6f94: $1f
	ld   de, $1611                                   ; $6f95: $11 $11 $16
	dec  e                                           ; $6f98: $1d
	pop  bc                                          ; $6f99: $c1
	rst  $38                                         ; $6f9a: $ff
	sbc  a                                           ; $6f9b: $9f
	or   $ff                                         ; $6f9c: $f6 $ff
	rra                                              ; $6f9e: $1f
	ld   sp, $1841                                   ; $6f9f: $31 $41 $18
	ld   d, $f1                                      ; $6fa2: $16 $f1
	rst  $38                                         ; $6fa4: $ff
	sbc  a                                           ; $6fa5: $9f
	ld   sp, hl                                      ; $6fa6: $f9
	rst  $38                                         ; $6fa7: $ff
	rra                                              ; $6fa8: $1f
	add  c                                           ; $6fa9: $81
	ld   h, c                                        ; $6faa: $61
	ld   a, [de]                                     ; $6fab: $1a
	ld   de, $8ff1                                   ; $6fac: $11 $f1 $8f
	sbc  a                                           ; $6faf: $9f
	cp   $bf                                         ; $6fb0: $fe $bf
	ld   a, [hl-]                                    ; $6fb2: $3a
	pop  af                                          ; $6fb3: $f1
	ld   d, c                                        ; $6fb4: $51
	inc  d                                           ; $6fb5: $14
	ld   b, c                                        ; $6fb6: $41
	push hl                                          ; $6fb7: $e5
	rra                                              ; $6fb8: $1f
	ret                                              ; $6fb9: $c9


	rst  $38                                         ; $6fba: $ff

jr_0e5_6fbb:
	adc  a                                           ; $6fbb: $8f
	ldh  a, [c]                                      ; $6fbc: $f2
	ldh  a, [c]                                      ; $6fbd: $f2
	ld   [$9111], sp                                 ; $6fbe: $08 $11 $91
	rra                                              ; $6fc1: $1f
	jr   jr_0e5_6fbb                                 ; $6fc2: $18 $f7

	rst  $28                                         ; $6fc4: $ef
	db   $ed                                         ; $6fc5: $ed
	push af                                          ; $6fc6: $f5
	rst  $28                                         ; $6fc7: $ef
	jr   jr_0e5_6ffb                                 ; $6fc8: $18 $31

	add  hl, de                                      ; $6fca: $19
	rla                                              ; $6fcb: $17
	sub  c                                           ; $6fcc: $91
	db   $ec                                         ; $6fcd: $ec
	ld   a, a                                        ; $6fce: $7f
	ld   a, [$3fff]                                  ; $6fcf: $fa $ff $3f
	and  c                                           ; $6fd2: $a1
	and  d                                           ; $6fd3: $a2
	inc  d                                           ; $6fd4: $14
	ld   [hl], c                                     ; $6fd5: $71
	and  [hl]                                        ; $6fd6: $a6
	ld   e, $b6                                      ; $6fd7: $1e $b6
	rst  $28                                         ; $6fd9: $ef
	adc  a                                           ; $6fda: $8f
	db   $f4                                         ; $6fdb: $f4
	db   $fc                                         ; $6fdc: $fc
	inc  a                                           ; $6fdd: $3c
	ld   d, c                                        ; $6fde: $51
	jr   c, jr_0e5_6ff7                              ; $6fdf: $38 $16

	add  c                                           ; $6fe1: $81
	xor  e                                           ; $6fe2: $ab
	ld   e, h                                        ; $6fe3: $5c
	ld   sp, hl                                      ; $6fe4: $f9
	rst  $28                                         ; $6fe5: $ef
	ld   l, a                                        ; $6fe6: $6f
	db   $f4                                         ; $6fe7: $f4
	ret  z                                           ; $6fe8: $c8

	ld   [de], a                                     ; $6fe9: $12
	ld   [hl], c                                     ; $6fea: $71
	jr   jr_0e5_6ffe                                 ; $6feb: $18 $11

	and  [hl]                                        ; $6fed: $a6
	ld   a, h                                        ; $6fee: $7c
	reti                                             ; $6fef: $d9


	rst  $38                                         ; $6ff0: $ff
	adc  a                                           ; $6ff1: $8f
	cp   b                                           ; $6ff2: $b8
	add  $24                                         ; $6ff3: $c6 $24
	ld   [hl], d                                     ; $6ff5: $72
	daa                                              ; $6ff6: $27

jr_0e5_6ff7:
	ld   [hl-], a                                    ; $6ff7: $32
	sub  a                                           ; $6ff8: $97
	ld   l, c                                        ; $6ff9: $69
	ret                                              ; $6ffa: $c9


jr_0e5_6ffb:
	db   $dd                                         ; $6ffb: $dd
	sbc  a                                           ; $6ffc: $9f
	cp   b                                           ; $6ffd: $b8

jr_0e5_6ffe:
	rst  ToBoot                                         ; $6ffe: $c7
	ld   l, b                                        ; $6fff: $68
	ld   d, a                                        ; $7000: $57
	ld   h, e                                        ; $7001: $63
	add  h                                           ; $7002: $84
	jr   c, jr_0e5_706a                              ; $7003: $38 $65

	adc  d                                           ; $7005: $8a
	ld   l, h                                        ; $7006: $6c
	xor  c                                           ; $7007: $a9
	reti                                             ; $7008: $d9


	xor  e                                           ; $7009: $ab
	sbc  b                                           ; $700a: $98
	and  a                                           ; $700b: $a7
	ld   a, d                                        ; $700c: $7a
	ld   d, l                                        ; $700d: $55
	add  e                                           ; $700e: $83
	ld   b, a                                        ; $700f: $47
	ld   d, h                                        ; $7010: $54
	add  a                                           ; $7011: $87
	ld   l, d                                        ; $7012: $6a
	ld   a, c                                        ; $7013: $79
	ret                                              ; $7014: $c9


	cp   e                                           ; $7015: $bb
	xor  d                                           ; $7016: $aa
	xor  c                                           ; $7017: $a9
	sbc  c                                           ; $7018: $99
	add  [hl]                                        ; $7019: $86
	add  a                                           ; $701a: $87
	ld   b, [hl]                                     ; $701b: $46
	ld   h, h                                        ; $701c: $64
	ld   d, a                                        ; $701d: $57
	ld   h, a                                        ; $701e: $67
	xor  b                                           ; $701f: $a8
	xor  e                                           ; $7020: $ab
	sbc  d                                           ; $7021: $9a
	cp   d                                           ; $7022: $ba
	xor  d                                           ; $7023: $aa
	xor  c                                           ; $7024: $a9
	xor  c                                           ; $7025: $a9
	ld   [hl], a                                     ; $7026: $77
	ld   [hl], l                                     ; $7027: $75
	ld   h, [hl]                                     ; $7028: $66
	ld   d, l                                        ; $7029: $55
	ld   h, [hl]                                     ; $702a: $66
	ld   a, b                                        ; $702b: $78
	adc  c                                           ; $702c: $89
	sbc  c                                           ; $702d: $99
	cp   d                                           ; $702e: $ba
	xor  e                                           ; $702f: $ab
	sbc  c                                           ; $7030: $99
	xor  c                                           ; $7031: $a9
	sbc  b                                           ; $7032: $98
	ld   a, b                                        ; $7033: $78
	ld   [hl], l                                     ; $7034: $75
	ld   h, [hl]                                     ; $7035: $66
	ld   d, l                                        ; $7036: $55
	ld   h, [hl]                                     ; $7037: $66
	ld   a, b                                        ; $7038: $78
	adc  d                                           ; $7039: $8a
	sbc  d                                           ; $703a: $9a
	xor  d                                           ; $703b: $aa
	xor  d                                           ; $703c: $aa
	xor  c                                           ; $703d: $a9
	sbc  c                                           ; $703e: $99
	sbc  b                                           ; $703f: $98
	ld   a, b                                        ; $7040: $78
	ld   h, l                                        ; $7041: $65
	halt                                             ; $7042: $76
	ld   d, [hl]                                     ; $7043: $56
	ld   h, [hl]                                     ; $7044: $66
	add  a                                           ; $7045: $87
	adc  d                                           ; $7046: $8a
	sbc  d                                           ; $7047: $9a
	xor  c                                           ; $7048: $a9
	sbc  d                                           ; $7049: $9a
	sbc  d                                           ; $704a: $9a
	xor  b                                           ; $704b: $a8
	sbc  b                                           ; $704c: $98
	ld   a, b                                        ; $704d: $78
	ld   [hl], l                                     ; $704e: $75
	halt                                             ; $704f: $76
	ld   d, [hl]                                     ; $7050: $56
	halt                                             ; $7051: $76
	adc  b                                           ; $7052: $88
	ld   a, c                                        ; $7053: $79
	sbc  c                                           ; $7054: $99
	xor  d                                           ; $7055: $aa
	sbc  d                                           ; $7056: $9a
	sbc  c                                           ; $7057: $99
	sbc  c                                           ; $7058: $99
	sbc  b                                           ; $7059: $98
	ld   l, b                                        ; $705a: $68
	halt                                             ; $705b: $76
	ld   h, [hl]                                     ; $705c: $66
	ld   d, [hl]                                     ; $705d: $56
	halt                                             ; $705e: $76
	ld   a, b                                        ; $705f: $78
	adc  c                                           ; $7060: $89
	xor  c                                           ; $7061: $a9
	xor  c                                           ; $7062: $a9
	xor  c                                           ; $7063: $a9
	xor  c                                           ; $7064: $a9
	adc  c                                           ; $7065: $89
	sbc  b                                           ; $7066: $98
	ld   [hl], a                                     ; $7067: $77
	ld   h, [hl]                                     ; $7068: $66
	ld   h, [hl]                                     ; $7069: $66

jr_0e5_706a:
	ld   h, [hl]                                     ; $706a: $66
	ld   h, a                                        ; $706b: $67
	add  a                                           ; $706c: $87
	adc  c                                           ; $706d: $89
	adc  d                                           ; $706e: $8a
	xor  c                                           ; $706f: $a9
	sbc  c                                           ; $7070: $99
	adc  c                                           ; $7071: $89
	adc  c                                           ; $7072: $89
	add  a                                           ; $7073: $87
	ld   [hl], a                                     ; $7074: $77
	ld   h, [hl]                                     ; $7075: $66
	halt                                             ; $7076: $76
	ld   h, a                                        ; $7077: $67
	ld   h, a                                        ; $7078: $67
	sbc  b                                           ; $7079: $98
	adc  d                                           ; $707a: $8a
	adc  c                                           ; $707b: $89
	sbc  c                                           ; $707c: $99
	sbc  d                                           ; $707d: $9a
	sbc  c                                           ; $707e: $99
	sbc  b                                           ; $707f: $98
	add  a                                           ; $7080: $87
	halt                                             ; $7081: $76
	ld   h, [hl]                                     ; $7082: $66
	ld   h, [hl]                                     ; $7083: $66
	ld   h, a                                        ; $7084: $67
	ld   a, b                                        ; $7085: $78
	sbc  b                                           ; $7086: $98
	sbc  d                                           ; $7087: $9a
	sbc  c                                           ; $7088: $99
	sbc  c                                           ; $7089: $99
	xor  c                                           ; $708a: $a9
	adc  b                                           ; $708b: $88
	add  a                                           ; $708c: $87
	ld   [hl], a                                     ; $708d: $77
	ld   h, [hl]                                     ; $708e: $66
	ld   h, [hl]                                     ; $708f: $66
	ld   h, a                                        ; $7090: $67
	ld   a, b                                        ; $7091: $78
	adc  b                                           ; $7092: $88
	xor  c                                           ; $7093: $a9
	xor  c                                           ; $7094: $a9
	xor  d                                           ; $7095: $aa
	xor  c                                           ; $7096: $a9
	adc  b                                           ; $7097: $88
	add  a                                           ; $7098: $87
	halt                                             ; $7099: $76
	ld   h, [hl]                                     ; $709a: $66
	ld   h, [hl]                                     ; $709b: $66
	ld   [hl], a                                     ; $709c: $77
	adc  b                                           ; $709d: $88
	sbc  c                                           ; $709e: $99
	sbc  c                                           ; $709f: $99
	sbc  d                                           ; $70a0: $9a
	sbc  d                                           ; $70a1: $9a
	sbc  c                                           ; $70a2: $99
	adc  b                                           ; $70a3: $88
	ld   [hl], a                                     ; $70a4: $77
	halt                                             ; $70a5: $76
	halt                                             ; $70a6: $76
	ld   h, a                                        ; $70a7: $67
	ld   a, b                                        ; $70a8: $78
	sbc  c                                           ; $70a9: $99
	sbc  d                                           ; $70aa: $9a
	sbc  c                                           ; $70ab: $99
	sbc  c                                           ; $70ac: $99
	sbc  c                                           ; $70ad: $99
	sbc  b                                           ; $70ae: $98
	ld   [hl], a                                     ; $70af: $77
	ld   h, a                                        ; $70b0: $67
	ld   h, [hl]                                     ; $70b1: $66
	ld   [hl], a                                     ; $70b2: $77
	ld   a, b                                        ; $70b3: $78
	adc  b                                           ; $70b4: $88
	sbc  c                                           ; $70b5: $99
	sbc  d                                           ; $70b6: $9a
	sbc  c                                           ; $70b7: $99
	sbc  c                                           ; $70b8: $99
	adc  b                                           ; $70b9: $88
	ld   [hl], a                                     ; $70ba: $77
	halt                                             ; $70bb: $76
	ld   [hl], a                                     ; $70bc: $77
	ld   a, b                                        ; $70bd: $78
	sbc  b                                           ; $70be: $98
	sbc  c                                           ; $70bf: $99
	sbc  c                                           ; $70c0: $99
	xor  c                                           ; $70c1: $a9
	sbc  c                                           ; $70c2: $99
	sbc  b                                           ; $70c3: $98
	add  a                                           ; $70c4: $87
	ld   [hl], a                                     ; $70c5: $77
	halt                                             ; $70c6: $76
	ld   [hl], a                                     ; $70c7: $77
	ld   a, b                                        ; $70c8: $78
	adc  c                                           ; $70c9: $89
	adc  c                                           ; $70ca: $89
	sbc  b                                           ; $70cb: $98
	sbc  c                                           ; $70cc: $99
	sbc  c                                           ; $70cd: $99
	adc  b                                           ; $70ce: $88
	ld   [hl], a                                     ; $70cf: $77
	ld   [hl], a                                     ; $70d0: $77
	ld   [hl], a                                     ; $70d1: $77
	ld   [hl], a                                     ; $70d2: $77
	adc  b                                           ; $70d3: $88
	adc  d                                           ; $70d4: $8a
	sbc  c                                           ; $70d5: $99
	adc  b                                           ; $70d6: $88
	sbc  c                                           ; $70d7: $99
	ld   a, c                                        ; $70d8: $79
	halt                                             ; $70d9: $76
	halt                                             ; $70da: $76
	ld   h, a                                        ; $70db: $67
	ld   [hl], a                                     ; $70dc: $77
	adc  c                                           ; $70dd: $89
	adc  d                                           ; $70de: $8a
	xor  c                                           ; $70df: $a9
	sbc  c                                           ; $70e0: $99
	adc  c                                           ; $70e1: $89
	halt                                             ; $70e2: $76
	sub  [hl]                                        ; $70e3: $96
	ld   d, a                                        ; $70e4: $57
	halt                                             ; $70e5: $76
	adc  b                                           ; $70e6: $88
	ld   a, e                                        ; $70e7: $7b
	xor  d                                           ; $70e8: $aa
	cp   d                                           ; $70e9: $ba
	sbc  c                                           ; $70ea: $99
	add  [hl]                                        ; $70eb: $86
	and  [hl]                                        ; $70ec: $a6
	ld   e, c                                        ; $70ed: $59
	dec  [hl]                                        ; $70ee: $35
	add  [hl]                                        ; $70ef: $86
	ld   e, c                                        ; $70f0: $59
	sub  a                                           ; $70f1: $97
	reti                                             ; $70f2: $d9


	xor  l                                           ; $70f3: $ad
	sbc  d                                           ; $70f4: $9a
	and  [hl]                                        ; $70f5: $a6
	ld   c, d                                        ; $70f6: $4a
	ld   h, c                                        ; $70f7: $61
	and  h                                           ; $70f8: $a4
	ld   a, [de]                                     ; $70f9: $1a
	ld   h, l                                        ; $70fa: $65
	sbc  e                                           ; $70fb: $9b
	ld   l, l                                        ; $70fc: $6d
	rst  $10                                         ; $70fd: $d7
	ei                                               ; $70fe: $fb
	adc  h                                           ; $70ff: $8c
	sub  e                                           ; $7100: $93
	ld   l, d                                        ; $7101: $6a
	inc  d                                           ; $7102: $14
	and  c                                           ; $7103: $a1
	ld   e, c                                        ; $7104: $59
	ld   b, a                                        ; $7105: $47
	jp   z, $9c9f                                    ; $7106: $ca $9f $9c

	ld   hl, sp-$34                                  ; $7109: $f8 $cc
	ld   d, e                                        ; $710b: $53
	ld   l, b                                        ; $710c: $68
	inc  d                                           ; $710d: $14
	sub  c                                           ; $710e: $91
	ld   a, b                                        ; $710f: $78
	ld   b, a                                        ; $7110: $47
	reti                                             ; $7111: $d9


	xor  a                                           ; $7112: $af
	adc  a                                           ; $7113: $8f
	ld   hl, sp-$24                                  ; $7114: $f8 $dc
	ld   [hl-], a                                    ; $7116: $32
	ld   b, [hl]                                     ; $7117: $46
	ld   de, $78a1                                   ; $7118: $11 $a1 $78
	ld   e, b                                        ; $711b: $58
	db   $eb                                         ; $711c: $eb
	xor  a                                           ; $711d: $af
	ld   a, a                                        ; $711e: $7f
	rst  $30                                         ; $711f: $f7
	call c, $4411                                    ; $7120: $dc $11 $44
	ld   de, $8a91                                   ; $7123: $11 $91 $8a
	ld   l, c                                        ; $7126: $69
	db   $fd                                         ; $7127: $fd
	cp   a                                           ; $7128: $bf
	ld   l, a                                        ; $7129: $6f
	or   $da                                         ; $712a: $f6 $da
	ld   de, $1881                                   ; $712c: $11 $81 $18
	ld   hl, $8ef7                                   ; $712f: $21 $f7 $8e
	ld   a, [$5fff]                                  ; $7132: $fa $ff $5f
	or   l                                           ; $7135: $b5
	call nz, $a111                                   ; $7136: $c4 $11 $a1
	ld   c, d                                        ; $7139: $4a
	ld   a, [de]                                     ; $713a: $1a
	push hl                                          ; $713b: $e5
	rst  JumpTable                                         ; $713c: $df
	rst  JumpTable                                         ; $713d: $df
	or   $ff                                         ; $713e: $f6 $ff
	ld   a, [hl+]                                    ; $7140: $2a
	ld   h, c                                        ; $7141: $61
	dec  e                                           ; $7142: $1d
	ld   [de], a                                     ; $7143: $12
	pop  hl                                          ; $7144: $e1
	cp   a                                           ; $7145: $bf
	ld   a, l                                        ; $7146: $7d
	ei                                               ; $7147: $fb
	rst  $38                                         ; $7148: $ff
	ccf                                              ; $7149: $3f
	pop  af                                          ; $714a: $f1
	add  e                                           ; $714b: $83
	ld   de, $c581                                   ; $714c: $11 $81 $c5
	rra                                              ; $714f: $1f
	reti                                             ; $7150: $d9


	rst  $38                                         ; $7151: $ff
	ld   l, a                                        ; $7152: $6f
	ldh  a, [c]                                      ; $7153: $f2
	push af                                          ; $7154: $f5
	ld   d, $11                                      ; $7155: $16 $11
	or   c                                           ; $7157: $b1
	rra                                              ; $7158: $1f
	ld   d, $fb                                      ; $7159: $16 $fb
	xor  a                                           ; $715b: $af
	ld   sp, hl                                      ; $715c: $f9
	ldh  a, [c]                                      ; $715d: $f2
	rst  $38                                         ; $715e: $ff
	dec  d                                           ; $715f: $15
	ld   de, $1f14                                   ; $7160: $11 $14 $1f
	ld   de, $cffd                                   ; $7163: $11 $fd $cf
	push af                                          ; $7166: $f5
	ld   a, [$136f]                                  ; $7167: $fa $6f $13
	ld   de, $1c16                                   ; $716a: $11 $16 $1c
	ld   h, c                                        ; $716d: $61
	cp   $ef                                         ; $716e: $fe $ef
	push af                                          ; $7170: $f5
	cp   $1f                                         ; $7171: $fe $1f
	ld   de, $1111                                   ; $7173: $11 $11 $11
	ld   e, $41                                      ; $7176: $1e $41
	rst  $38                                         ; $7178: $ff
	rst  $38                                         ; $7179: $ff
	or   $f9                                         ; $717a: $f6 $f9
	ccf                                              ; $717c: $3f
	ld   de, $1111                                   ; $717d: $11 $11 $11
	rra                                              ; $7180: $1f
	ld   d, $fe                                      ; $7181: $16 $fe
	rst  $38                                         ; $7183: $ff
	ld   sp, hl                                      ; $7184: $f9
	pop  af                                          ; $7185: $f1
	xor  a                                           ; $7186: $af
	ld   [de], a                                     ; $7187: $12
	ld   de, $2c11                                   ; $7188: $11 $11 $2c
	rra                                              ; $718b: $1f
	cp   $ff                                         ; $718c: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $718e: $cf
	pop  af                                          ; $718f: $f1
	pop  af                                          ; $7190: $f1
	ld   de, $1112                                   ; $7191: $11 $12 $11
	or   c                                           ; $7194: $b1
	sbc  a                                           ; $7195: $9f
	rst  $38                                         ; $7196: $ff
	rst  $38                                         ; $7197: $ff
	xor  a                                           ; $7198: $af
	ld   [hl], $f1                                   ; $7199: $36 $f1
	ld   de, $1a11                                   ; $719b: $11 $11 $1a
	ld   h, e                                        ; $719e: $63
	rst  $38                                         ; $719f: $ff
	rst  $38                                         ; $71a0: $ff
	ld   sp, hl                                      ; $71a1: $f9
	rst  $38                                         ; $71a2: $ff
	rra                                              ; $71a3: $1f
	ld   de, $1111                                   ; $71a4: $11 $11 $11
	ld   e, e                                        ; $71a7: $5b
	rra                                              ; $71a8: $1f
	rst  $38                                         ; $71a9: $ff
	rst  $38                                         ; $71aa: $ff
	cp   $f1                                         ; $71ab: $fe $f1
	and  $11                                         ; $71ad: $e6 $11
	ld   [de], a                                     ; $71af: $12
	ld   de, $eff1                                   ; $71b0: $11 $f1 $ef
	rst  $38                                         ; $71b3: $ff
	rst  $38                                         ; $71b4: $ff
	adc  a                                           ; $71b5: $8f
	inc  d                                           ; $71b6: $14
	pop  af                                          ; $71b7: $f1
	ld   de, $1f11                                   ; $71b8: $11 $11 $1f
	inc  e                                           ; $71bb: $1c
	rst  $38                                         ; $71bc: $ff
	rst  $38                                         ; $71bd: $ff
	rst  $30                                         ; $71be: $f7
	push af                                          ; $71bf: $f5
	rra                                              ; $71c0: $1f
	ld   de, $1111                                   ; $71c1: $11 $11 $11
	pop  af                                          ; $71c4: $f1
	cp   a                                           ; $71c5: $bf
	rst  $38                                         ; $71c6: $ff
	rst  $38                                         ; $71c7: $ff
	ld   a, a                                        ; $71c8: $7f
	sub  c                                           ; $71c9: $91
	pop  af                                          ; $71ca: $f1
	ld   de, $1f11                                   ; $71cb: $11 $11 $1f
	inc  e                                           ; $71ce: $1c
	rst  $38                                         ; $71cf: $ff
	rst  $38                                         ; $71d0: $ff
	or   $f8                                         ; $71d1: $f6 $f8
	rra                                              ; $71d3: $1f
	ld   de, $1112                                   ; $71d4: $11 $12 $11
	pop  af                                          ; $71d7: $f1
	rst  JumpTable                                         ; $71d8: $df
	rst  $38                                         ; $71d9: $ff
	rst  $38                                         ; $71da: $ff
	ld   e, a                                        ; $71db: $5f
	add  c                                           ; $71dc: $81
	pop  af                                          ; $71dd: $f1
	ld   de, $1f31                                   ; $71de: $11 $31 $1f
	rra                                              ; $71e1: $1f
	rst  $38                                         ; $71e2: $ff
	rst  $38                                         ; $71e3: $ff
	or   $f4                                         ; $71e4: $f6 $f4
	dec  e                                           ; $71e6: $1d
	ld   de, $1113                                   ; $71e7: $11 $13 $11
	pop  af                                          ; $71ea: $f1
	rst  $38                                         ; $71eb: $ff
	rst  $38                                         ; $71ec: $ff
	rst  $38                                         ; $71ed: $ff
	ld   e, a                                        ; $71ee: $5f
	ld   de, $11a1                                   ; $71ef: $11 $a1 $11
	ld   d, c                                        ; $71f2: $51
	ld   l, a                                        ; $71f3: $6f
	rra                                              ; $71f4: $1f
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	or   $f1                                         ; $71f7: $f6 $f1
	ld   b, a                                        ; $71f9: $47
	ld   de, $1f13                                   ; $71fa: $11 $13 $1f
	pop  bc                                          ; $71fd: $c1
	rst  $38                                         ; $71fe: $ff
	rst  $38                                         ; $71ff: $ff
	ld   a, [$1cdf]                                  ; $7200: $fa $df $1c
	ld   de, $1111                                   ; $7203: $11 $11 $11
	push af                                          ; $7206: $f5
	sbc  a                                           ; $7207: $9f
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	ld   a, a                                        ; $720a: $7f
	or   c                                           ; $720b: $b1
	or   c                                           ; $720c: $b1
	ld   de, $1f41                                   ; $720d: $11 $41 $1f
	rra                                              ; $7210: $1f
	rst  $38                                         ; $7211: $ff
	rst  $38                                         ; $7212: $ff
	or   $f1                                         ; $7213: $f6 $f1
	add  hl, de                                      ; $7215: $19
	ld   de, $1d12                                   ; $7216: $11 $12 $1d
	pop  hl                                          ; $7219: $e1
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	db   $fc                                         ; $721c: $fc
	cp   a                                           ; $721d: $bf
	rla                                              ; $721e: $17
	ld   de, $1112                                   ; $721f: $11 $12 $11
	or   $9f                                         ; $7222: $f6 $9f
	rst  $38                                         ; $7224: $ff
	rst  $38                                         ; $7225: $ff
	ld   a, a                                        ; $7226: $7f
	ld   [hl], c                                     ; $7227: $71
	add  c                                           ; $7228: $81
	ld   de, $5f41                                   ; $7229: $11 $41 $5f
	cpl                                              ; $722c: $2f
	rst  $38                                         ; $722d: $ff
	rst  $38                                         ; $722e: $ff
	ld   sp, hl                                      ; $722f: $f9
	pop  af                                          ; $7230: $f1
	inc  h                                           ; $7231: $24
	ld   de, $1f11                                   ; $7232: $11 $11 $1f
	and  a                                           ; $7235: $a7
	rst  $38                                         ; $7236: $ff
	rst  $38                                         ; $7237: $ff
	ld   a, [$15fa]                                  ; $7238: $fa $fa $15
	ld   de, $1214                                   ; $723b: $11 $14 $12
	di                                               ; $723e: $f3
	rst  $38                                         ; $723f: $ff
	rst  $38                                         ; $7240: $ff
	rst  $38                                         ; $7241: $ff
	xor  a                                           ; $7242: $af
	ld   [de], a                                     ; $7243: $12
	ld   b, c                                        ; $7244: $41
	ld   de, $ca11                                   ; $7245: $11 $11 $ca
	ld   l, a                                        ; $7248: $6f
	rst  $38                                         ; $7249: $ff
	rst  $38                                         ; $724a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $724b: $cf
	and  c                                           ; $724c: $a1
	ld   b, c                                        ; $724d: $41
	ld   de, $1e11                                   ; $724e: $11 $11 $1e
	ld   l, l                                        ; $7251: $6d
	rst  $38                                         ; $7252: $ff
	rst  $38                                         ; $7253: $ff
	db   $fd                                         ; $7254: $fd
	di                                               ; $7255: $f3
	inc  h                                           ; $7256: $24
	ld   de, $1911                                   ; $7257: $11 $11 $19
	and  [hl]                                        ; $725a: $a6
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	db   $fc                                         ; $725d: $fc
	ei                                               ; $725e: $fb
	inc  d                                           ; $725f: $14
	ld   de, $1111                                   ; $7260: $11 $11 $11
	call nc, $ffef                                   ; $7263: $d4 $ef $ff
	rst  $38                                         ; $7266: $ff
	rst  $38                                         ; $7267: $ff
	ld   b, e                                        ; $7268: $43
	ld   b, c                                        ; $7269: $41
	ld   de, $a811                                   ; $726a: $11 $11 $a8
	ld   a, a                                        ; $726d: $7f
	rst  $38                                         ; $726e: $ff
	rst  $38                                         ; $726f: $ff
	rst  $38                                         ; $7270: $ff
	sub  d                                           ; $7271: $92
	ld   d, c                                        ; $7272: $51
	ld   de, $5811                                   ; $7273: $11 $11 $58
	ld   e, a                                        ; $7276: $5f
	rst  $38                                         ; $7277: $ff
	rst  $38                                         ; $7278: $ff
	rst  $38                                         ; $7279: $ff
	push de                                          ; $727a: $d5
	ld   d, d                                        ; $727b: $52
	ld   de, $1711                                   ; $727c: $11 $11 $17
	ld   e, d                                        ; $727f: $5a
	rst  $38                                         ; $7280: $ff
	rst  $38                                         ; $7281: $ff
	rst  $38                                         ; $7282: $ff
	ld   a, [$1146]                                  ; $7283: $fa $46 $11
	ld   de, $7513                                   ; $7286: $11 $13 $75
	rst  $38                                         ; $7289: $ff
	rst  $38                                         ; $728a: $ff
	rst  $38                                         ; $728b: $ff
	cp   $66                                         ; $728c: $fe $66
	ld   sp, $1111                                   ; $728e: $31 $11 $11
	ld   h, h                                        ; $7291: $64
	xor  a                                           ; $7292: $af
	rst  $38                                         ; $7293: $ff
	rst  $38                                         ; $7294: $ff
	rst  $38                                         ; $7295: $ff
	sub  a                                           ; $7296: $97
	ld   h, c                                        ; $7297: $61
	ld   de, $2511                                   ; $7298: $11 $11 $25
	ld   e, l                                        ; $729b: $5d
	rst  $38                                         ; $729c: $ff
	rst  $38                                         ; $729d: $ff
	rst  $38                                         ; $729e: $ff
	add  sp, -$7c                                    ; $729f: $e8 $84
	ld   de, $1411                                   ; $72a1: $11 $11 $14
	ld   e, b                                        ; $72a4: $58
	rst  $28                                         ; $72a5: $ef
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	ei                                               ; $72a8: $fb
	add  [hl]                                        ; $72a9: $86
	ld   sp, $1211                                   ; $72aa: $31 $11 $12
	inc  [hl]                                        ; $72ad: $34
	xor  [hl]                                        ; $72ae: $ae
	rst  $28                                         ; $72af: $ef
	rst  $38                                         ; $72b0: $ff
	cp   $a9                                         ; $72b1: $fe $a9
	ld   h, c                                        ; $72b3: $61
	ld   de, $1411                                   ; $72b4: $11 $11 $14
	ld   l, e                                        ; $72b7: $6b
	sbc  $ff                                         ; $72b8: $de $ff
	rst  $38                                         ; $72ba: $ff
	ld   [$1186], a                                  ; $72bb: $ea $86 $11
	ld   de, $4612                                   ; $72be: $11 $12 $46
	call z, $ffff                                    ; $72c1: $cc $ff $ff
	db   $ed                                         ; $72c4: $ed
	xor  c                                           ; $72c5: $a9
	ld   d, c                                        ; $72c6: $51
	ld   hl, $2411                                   ; $72c7: $21 $11 $24
	ld   a, d                                        ; $72ca: $7a
	adc  $ff                                         ; $72cb: $ce $ff
	rst  $38                                         ; $72cd: $ff
	jp   z, $3295                                    ; $72ce: $ca $95 $32

	ld   de, $4612                                   ; $72d1: $11 $12 $46
	xor  e                                           ; $72d4: $ab
	sbc  $ff                                         ; $72d5: $de $ff
	db   $dd                                         ; $72d7: $dd
	cp   c                                           ; $72d8: $b9
	ld   h, h                                        ; $72d9: $64
	ld   [hl+], a                                    ; $72da: $22
	ld   de, $5834                                   ; $72db: $11 $34 $58
	call z, $deef                                    ; $72de: $cc $ef $de
	jp   z, Jump_0e5_4497                            ; $72e1: $ca $97 $44

	ld   [hl-], a                                    ; $72e4: $32
	inc  hl                                          ; $72e5: $23
	ld   b, l                                        ; $72e6: $45
	adc  c                                           ; $72e7: $89
	cp   l                                           ; $72e8: $bd
	sbc  $dd                                         ; $72e9: $de $dd
	cp   d                                           ; $72eb: $ba
	add  [hl]                                        ; $72ec: $86
	ld   b, e                                        ; $72ed: $43
	ld   b, d                                        ; $72ee: $42
	dec  [hl]                                        ; $72ef: $35
	ld   b, a                                        ; $72f0: $47
	sbc  c                                           ; $72f1: $99
	cp   h                                           ; $72f2: $bc
	call c, $aaca                                    ; $72f3: $dc $ca $aa
	ld   h, [hl]                                     ; $72f6: $66
	ld   h, h                                        ; $72f7: $64
	inc  [hl]                                        ; $72f8: $34
	ld   b, l                                        ; $72f9: $45
	ld   h, a                                        ; $72fa: $67
	sbc  d                                           ; $72fb: $9a
	cp   e                                           ; $72fc: $bb
	db   $db                                         ; $72fd: $db
	cp   e                                           ; $72fe: $bb
	xor  c                                           ; $72ff: $a9
	halt                                             ; $7300: $76
	ld   d, l                                        ; $7301: $55
	ld   b, h                                        ; $7302: $44
	ld   d, l                                        ; $7303: $55
	ld   a, b                                        ; $7304: $78
	adc  d                                           ; $7305: $8a
	xor  e                                           ; $7306: $ab
	cp   e                                           ; $7307: $bb
	cp   e                                           ; $7308: $bb
	sub  a                                           ; $7309: $97
	ld   [hl], a                                     ; $730a: $77
	ld   d, l                                        ; $730b: $55
	ld   d, l                                        ; $730c: $55
	ld   h, [hl]                                     ; $730d: $66
	ld   [hl], a                                     ; $730e: $77
	sbc  c                                           ; $730f: $99
	xor  d                                           ; $7310: $aa
	sbc  d                                           ; $7311: $9a
	sbc  c                                           ; $7312: $99
	sbc  b                                           ; $7313: $98
	add  [hl]                                        ; $7314: $86
	halt                                             ; $7315: $76
	ld   d, [hl]                                     ; $7316: $56
	halt                                             ; $7317: $76
	adc  b                                           ; $7318: $88
	adc  c                                           ; $7319: $89
	sbc  d                                           ; $731a: $9a
	xor  c                                           ; $731b: $a9
	sbc  d                                           ; $731c: $9a
	add  a                                           ; $731d: $87
	sub  [hl]                                        ; $731e: $96
	ld   [hl], a                                     ; $731f: $77
	ld   h, a                                        ; $7320: $67
	ld   h, a                                        ; $7321: $67
	ld   a, b                                        ; $7322: $78
	adc  c                                           ; $7323: $89
	sbc  b                                           ; $7324: $98
	sbc  c                                           ; $7325: $99
	sbc  d                                           ; $7326: $9a
	adc  b                                           ; $7327: $88
	sbc  b                                           ; $7328: $98
	ld   a, b                                        ; $7329: $78
	ld   [hl], a                                     ; $732a: $77
	add  a                                           ; $732b: $87
	ld   a, b                                        ; $732c: $78
	add  a                                           ; $732d: $87
	adc  c                                           ; $732e: $89
	adc  c                                           ; $732f: $89
	sbc  b                                           ; $7330: $98
	sbc  c                                           ; $7331: $99
	ld   a, c                                        ; $7332: $79
	add  a                                           ; $7333: $87
	add  a                                           ; $7334: $87
	ld   [hl], a                                     ; $7335: $77
	ld   a, b                                        ; $7336: $78
	adc  b                                           ; $7337: $88
	ld   a, c                                        ; $7338: $79
	adc  b                                           ; $7339: $88
	sbc  b                                           ; $733a: $98
	sbc  b                                           ; $733b: $98
	adc  b                                           ; $733c: $88
	sub  a                                           ; $733d: $97
	ld   a, b                                        ; $733e: $78
	ld   a, b                                        ; $733f: $78
	ld   a, b                                        ; $7340: $78
	ld   a, b                                        ; $7341: $78
	adc  b                                           ; $7342: $88
	sbc  b                                           ; $7343: $98
	sbc  b                                           ; $7344: $98
	sub  a                                           ; $7345: $97
	adc  c                                           ; $7346: $89
	ld   a, b                                        ; $7347: $78
	add  a                                           ; $7348: $87
	adc  c                                           ; $7349: $89
	ld   h, a                                        ; $734a: $67
	sub  a                                           ; $734b: $97
	adc  b                                           ; $734c: $88
	adc  c                                           ; $734d: $89
	sub  a                                           ; $734e: $97
	sbc  c                                           ; $734f: $99
	ld   a, c                                        ; $7350: $79
	add  a                                           ; $7351: $87
	adc  b                                           ; $7352: $88
	ld   a, b                                        ; $7353: $78
	add  a                                           ; $7354: $87
	adc  b                                           ; $7355: $88
	sbc  b                                           ; $7356: $98
	ld   a, c                                        ; $7357: $79
	adc  c                                           ; $7358: $89
	adc  c                                           ; $7359: $89
	adc  b                                           ; $735a: $88
	sub  a                                           ; $735b: $97
	sub  a                                           ; $735c: $97
	ld   a, c                                        ; $735d: $79
	adc  b                                           ; $735e: $88
	adc  c                                           ; $735f: $89
	adc  b                                           ; $7360: $88
	sbc  b                                           ; $7361: $98
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	sbc  b                                           ; $7364: $98
	ld   a, b                                        ; $7365: $78
	add  a                                           ; $7366: $87
	adc  b                                           ; $7367: $88
	ld   a, c                                        ; $7368: $79
	sub  a                                           ; $7369: $97
	adc  c                                           ; $736a: $89
	ld   a, c                                        ; $736b: $79
	add  a                                           ; $736c: $87
	sbc  b                                           ; $736d: $98
	adc  b                                           ; $736e: $88
	add  a                                           ; $736f: $87
	sbc  b                                           ; $7370: $98
	ld   a, b                                        ; $7371: $78
	ld   a, b                                        ; $7372: $78
	sbc  b                                           ; $7373: $98
	adc  c                                           ; $7374: $89
	adc  b                                           ; $7375: $88
	adc  b                                           ; $7376: $88
	ld   a, c                                        ; $7377: $79
	ld   a, b                                        ; $7378: $78
	add  a                                           ; $7379: $87
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	sub  a                                           ; $737c: $97
	sbc  b                                           ; $737d: $98
	ld   a, c                                        ; $737e: $79
	sbc  b                                           ; $737f: $98
	adc  c                                           ; $7380: $89
	ld   a, b                                        ; $7381: $78
	add  a                                           ; $7382: $87
	sub  a                                           ; $7383: $97
	adc  b                                           ; $7384: $88
	add  a                                           ; $7385: $87
	adc  c                                           ; $7386: $89
	ld   a, c                                        ; $7387: $79
	adc  b                                           ; $7388: $88
	adc  c                                           ; $7389: $89
	sbc  b                                           ; $738a: $98
	add  a                                           ; $738b: $87
	sub  a                                           ; $738c: $97
	ld   a, b                                        ; $738d: $78
	add  a                                           ; $738e: $87
	sbc  c                                           ; $738f: $99
	ld   a, b                                        ; $7390: $78
	adc  b                                           ; $7391: $88
	adc  b                                           ; $7392: $88
	adc  b                                           ; $7393: $88
	add  a                                           ; $7394: $87
	adc  b                                           ; $7395: $88
	ld   a, b                                        ; $7396: $78
	adc  b                                           ; $7397: $88
	sbc  b                                           ; $7398: $98
	ld   a, b                                        ; $7399: $78
	sbc  b                                           ; $739a: $98
	adc  c                                           ; $739b: $89
	adc  b                                           ; $739c: $88
	adc  b                                           ; $739d: $88
	adc  b                                           ; $739e: $88
	ld   [hl], a                                     ; $739f: $77
	sub  a                                           ; $73a0: $97
	ld   a, b                                        ; $73a1: $78
	ld   a, c                                        ; $73a2: $79
	sbc  b                                           ; $73a3: $98
	adc  b                                           ; $73a4: $88
	sbc  b                                           ; $73a5: $98
	adc  b                                           ; $73a6: $88
	adc  b                                           ; $73a7: $88
	ld   a, b                                        ; $73a8: $78
	adc  b                                           ; $73a9: $88
	add  a                                           ; $73aa: $87
	adc  b                                           ; $73ab: $88
	adc  c                                           ; $73ac: $89
	add  a                                           ; $73ad: $87
	sbc  b                                           ; $73ae: $98
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	ld   a, b                                        ; $73b4: $78
	adc  b                                           ; $73b5: $88
	adc  b                                           ; $73b6: $88
	adc  b                                           ; $73b7: $88
	sub  a                                           ; $73b8: $97
	add  a                                           ; $73b9: $87
	ld   a, b                                        ; $73ba: $78
	ld   a, b                                        ; $73bb: $78
	adc  b                                           ; $73bc: $88
	ld   a, c                                        ; $73bd: $79
	adc  b                                           ; $73be: $88
	adc  b                                           ; $73bf: $88
	sbc  b                                           ; $73c0: $98
	adc  b                                           ; $73c1: $88
	adc  b                                           ; $73c2: $88
	adc  b                                           ; $73c3: $88
	ld   a, b                                        ; $73c4: $78
	adc  b                                           ; $73c5: $88
	ld   a, b                                        ; $73c6: $78
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
	add  a                                           ; $73d2: $87
	sbc  b                                           ; $73d3: $98
	adc  b                                           ; $73d4: $88
	adc  b                                           ; $73d5: $88
	adc  b                                           ; $73d6: $88
	ld   a, b                                        ; $73d7: $78
	adc  b                                           ; $73d8: $88
	add  a                                           ; $73d9: $87
	adc  b                                           ; $73da: $88
	adc  b                                           ; $73db: $88
	adc  c                                           ; $73dc: $89
	adc  b                                           ; $73dd: $88
	adc  b                                           ; $73de: $88
	ld   a, c                                        ; $73df: $79
	add  a                                           ; $73e0: $87
	sbc  b                                           ; $73e1: $98
	adc  b                                           ; $73e2: $88
	add  a                                           ; $73e3: $87
	adc  b                                           ; $73e4: $88
	ld   a, b                                        ; $73e5: $78
	add  a                                           ; $73e6: $87
	adc  b                                           ; $73e7: $88
	adc  b                                           ; $73e8: $88
	sub  a                                           ; $73e9: $97
	adc  b                                           ; $73ea: $88
	ld   a, c                                        ; $73eb: $79
	adc  b                                           ; $73ec: $88
	adc  b                                           ; $73ed: $88
	adc  b                                           ; $73ee: $88
	sub  a                                           ; $73ef: $97
	sbc  b                                           ; $73f0: $98
	ld   a, b                                        ; $73f1: $78
	adc  b                                           ; $73f2: $88
	adc  b                                           ; $73f3: $88
	ld   a, b                                        ; $73f4: $78
	sub  a                                           ; $73f5: $97
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	adc  c                                           ; $73f8: $89
	adc  b                                           ; $73f9: $88
	adc  b                                           ; $73fa: $88
	add  a                                           ; $73fb: $87
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	adc  b                                           ; $73fe: $88
	adc  c                                           ; $73ff: $89
	ld   a, c                                        ; $7400: $79
	adc  b                                           ; $7401: $88
	sbc  b                                           ; $7402: $98
	adc  b                                           ; $7403: $88
	add  a                                           ; $7404: $87
	sub  a                                           ; $7405: $97
	ld   a, b                                        ; $7406: $78
	ld   a, b                                        ; $7407: $78
	sbc  b                                           ; $7408: $98
	ld   a, b                                        ; $7409: $78
	sub  a                                           ; $740a: $97
	sbc  b                                           ; $740b: $98
	adc  c                                           ; $740c: $89
	add  a                                           ; $740d: $87
	adc  b                                           ; $740e: $88
	ld   a, b                                        ; $740f: $78
	add  a                                           ; $7410: $87
	adc  b                                           ; $7411: $88
	adc  b                                           ; $7412: $88
	sbc  b                                           ; $7413: $98
	adc  b                                           ; $7414: $88
	ld   a, b                                        ; $7415: $78
	ld   a, c                                        ; $7416: $79
	adc  b                                           ; $7417: $88
	add  a                                           ; $7418: $87
	sub  a                                           ; $7419: $97
	adc  b                                           ; $741a: $88
	adc  b                                           ; $741b: $88
	ld   a, c                                        ; $741c: $79
	adc  b                                           ; $741d: $88
	adc  b                                           ; $741e: $88
	adc  b                                           ; $741f: $88
	sbc  b                                           ; $7420: $98
	adc  c                                           ; $7421: $89
	ld   [hl], a                                     ; $7422: $77
	add  a                                           ; $7423: $87
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	add  a                                           ; $7428: $87
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	ld   a, b                                        ; $742b: $78
	adc  b                                           ; $742c: $88
	add  a                                           ; $742d: $87
	adc  b                                           ; $742e: $88
	adc  c                                           ; $742f: $89
	ld   [hl], a                                     ; $7430: $77
	adc  b                                           ; $7431: $88
	add  a                                           ; $7432: $87
	adc  b                                           ; $7433: $88
	adc  c                                           ; $7434: $89
	ld   a, c                                        ; $7435: $79
	adc  b                                           ; $7436: $88
	add  a                                           ; $7437: $87
	adc  b                                           ; $7438: $88
	adc  b                                           ; $7439: $88
	adc  b                                           ; $743a: $88
	adc  b                                           ; $743b: $88
	adc  b                                           ; $743c: $88
	ld   a, c                                        ; $743d: $79
	add  a                                           ; $743e: $87
	sbc  b                                           ; $743f: $98
	add  a                                           ; $7440: $87
	sub  a                                           ; $7441: $97
	sbc  c                                           ; $7442: $99
	ld   a, c                                        ; $7443: $79
	ld   a, b                                        ; $7444: $78
	adc  b                                           ; $7445: $88
	sub  a                                           ; $7446: $97
	sub  a                                           ; $7447: $97
	adc  c                                           ; $7448: $89
	ld   a, c                                        ; $7449: $79
	ld   a, c                                        ; $744a: $79
	add  a                                           ; $744b: $87
	sbc  b                                           ; $744c: $98
	adc  b                                           ; $744d: $88
	ld   a, c                                        ; $744e: $79
	adc  c                                           ; $744f: $89
	ld   a, b                                        ; $7450: $78
	sub  a                                           ; $7451: $97
	sub  a                                           ; $7452: $97
	adc  b                                           ; $7453: $88
	sub  a                                           ; $7454: $97
	adc  c                                           ; $7455: $89
	ld   l, d                                        ; $7456: $6a
	ld   a, b                                        ; $7457: $78
	adc  b                                           ; $7458: $88
	sub  a                                           ; $7459: $97
	add  a                                           ; $745a: $87
	sub  a                                           ; $745b: $97
	adc  b                                           ; $745c: $88
	ld   a, c                                        ; $745d: $79
	adc  b                                           ; $745e: $88
	ld   a, b                                        ; $745f: $78
	adc  b                                           ; $7460: $88
	adc  b                                           ; $7461: $88
	sub  a                                           ; $7462: $97
	add  a                                           ; $7463: $87
	adc  b                                           ; $7464: $88
	ld   a, b                                        ; $7465: $78
	adc  b                                           ; $7466: $88
	add  a                                           ; $7467: $87

Jump_0e5_7468:
	sbc  b                                           ; $7468: $98
	adc  b                                           ; $7469: $88
	adc  c                                           ; $746a: $89
	ld   a, b                                        ; $746b: $78
	ld   a, b                                        ; $746c: $78
	add  a                                           ; $746d: $87
	sub  a                                           ; $746e: $97
	add  a                                           ; $746f: $87
	xor  b                                           ; $7470: $a8
	ld   a, c                                        ; $7471: $79
	ld   [hl], a                                     ; $7472: $77
	sbc  c                                           ; $7473: $99
	ld   l, c                                        ; $7474: $69
	sub  [hl]                                        ; $7475: $96
	sbc  d                                           ; $7476: $9a
	sub  a                                           ; $7477: $97
	and  [hl]                                        ; $7478: $a6
	ld   a, d                                        ; $7479: $7a
	adc  c                                           ; $747a: $89
	ld   a, c                                        ; $747b: $79
	ld   l, b                                        ; $747c: $68
	add  a                                           ; $747d: $87
	sbc  c                                           ; $747e: $99
	ld   a, b                                        ; $747f: $78
	add  a                                           ; $7480: $87
	ld   a, d                                        ; $7481: $7a
	add  a                                           ; $7482: $87
	and  a                                           ; $7483: $a7
	adc  c                                           ; $7484: $89
	ld   [hl], a                                     ; $7485: $77
	sbc  c                                           ; $7486: $99
	ld   l, d                                        ; $7487: $6a
	add  a                                           ; $7488: $87
	and  a                                           ; $7489: $a7
	sub  a                                           ; $748a: $97
	sbc  b                                           ; $748b: $98
	sbc  b                                           ; $748c: $98
	ld   a, c                                        ; $748d: $79
	adc  b                                           ; $748e: $88
	ld   a, d                                        ; $748f: $7a
	ld   [hl], a                                     ; $7490: $77
	and  [hl]                                        ; $7491: $a6
	sbc  b                                           ; $7492: $98
	add  a                                           ; $7493: $87
	adc  c                                           ; $7494: $89
	ld   l, e                                        ; $7495: $6b
	ld   a, b                                        ; $7496: $78
	add  a                                           ; $7497: $87
	sub  [hl]                                        ; $7498: $96
	and  [hl]                                        ; $7499: $a6
	adc  b                                           ; $749a: $88
	ld   a, c                                        ; $749b: $79
	ld   l, e                                        ; $749c: $6b
	ld   l, c                                        ; $749d: $69
	add  a                                           ; $749e: $87
	add  [hl]                                        ; $749f: $86
	or   [hl]                                        ; $74a0: $b6
	sbc  c                                           ; $74a1: $99
	ld   a, c                                        ; $74a2: $79
	ld   a, b                                        ; $74a3: $78
	ld   a, b                                        ; $74a4: $78
	add  a                                           ; $74a5: $87
	sbc  b                                           ; $74a6: $98
	ld   a, b                                        ; $74a7: $78

Jump_0e5_74a8:
	adc  b                                           ; $74a8: $88
	add  a                                           ; $74a9: $87
	sub  a                                           ; $74aa: $97
	adc  c                                           ; $74ab: $89
	adc  c                                           ; $74ac: $89
	ld   e, c                                        ; $74ad: $59
	ld   a, b                                        ; $74ae: $78
	and  a                                           ; $74af: $a7
	ld   a, b                                        ; $74b0: $78
	sub  a                                           ; $74b1: $97
	sbc  b                                           ; $74b2: $98
	ld   a, c                                        ; $74b3: $79
	adc  b                                           ; $74b4: $88
	adc  d                                           ; $74b5: $8a
	ld   a, b                                        ; $74b6: $78
	add  a                                           ; $74b7: $87
	sbc  b                                           ; $74b8: $98
	ld   a, b                                        ; $74b9: $78
	sub  [hl]                                        ; $74ba: $96
	adc  d                                           ; $74bb: $8a
	ld   [hl], a                                     ; $74bc: $77
	sbc  c                                           ; $74bd: $99
	ld   a, b                                        ; $74be: $78
	adc  b                                           ; $74bf: $88
	ld   a, b                                        ; $74c0: $78
	add  a                                           ; $74c1: $87
	and  a                                           ; $74c2: $a7
	adc  b                                           ; $74c3: $88
	adc  c                                           ; $74c4: $89
	adc  b                                           ; $74c5: $88
	ld   a, c                                        ; $74c6: $79
	add  a                                           ; $74c7: $87
	sub  a                                           ; $74c8: $97
	adc  b                                           ; $74c9: $88
	ld   a, c                                        ; $74ca: $79
	adc  b                                           ; $74cb: $88
	ld   a, c                                        ; $74cc: $79
	add  a                                           ; $74cd: $87
	sbc  b                                           ; $74ce: $98
	sbc  c                                           ; $74cf: $99
	ld   [hl], a                                     ; $74d0: $77
	sbc  b                                           ; $74d1: $98
	ld   a, c                                        ; $74d2: $79
	sub  a                                           ; $74d3: $97
	adc  c                                           ; $74d4: $89
	ld   a, b                                        ; $74d5: $78
	add  a                                           ; $74d6: $87
	sbc  b                                           ; $74d7: $98
	adc  b                                           ; $74d8: $88
	ld   a, c                                        ; $74d9: $79
	ld   a, b                                        ; $74da: $78
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	and  a                                           ; $74dd: $a7
	adc  b                                           ; $74de: $88
	sbc  b                                           ; $74df: $98
	ld   a, c                                        ; $74e0: $79
	ld   a, b                                        ; $74e1: $78
	adc  b                                           ; $74e2: $88
	ld   [hl], a                                     ; $74e3: $77
	and  a                                           ; $74e4: $a7
	ld   l, c                                        ; $74e5: $69
	add  a                                           ; $74e6: $87
	sbc  b                                           ; $74e7: $98
	sbc  b                                           ; $74e8: $98
	sbc  b                                           ; $74e9: $98
	ld   a, c                                        ; $74ea: $79
	ld   a, b                                        ; $74eb: $78
	sbc  b                                           ; $74ec: $98
	add  a                                           ; $74ed: $87
	add  a                                           ; $74ee: $87
	ld   a, b                                        ; $74ef: $78
	add  a                                           ; $74f0: $87
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	add  a                                           ; $74f3: $87
	sbc  c                                           ; $74f4: $99
	ld   [hl], a                                     ; $74f5: $77
	ld   a, b                                        ; $74f6: $78
	ld   [hl], a                                     ; $74f7: $77
	sbc  b                                           ; $74f8: $98
	ld   a, c                                        ; $74f9: $79
	add  a                                           ; $74fa: $87
	sbc  d                                           ; $74fb: $9a
	adc  b                                           ; $74fc: $88
	sbc  b                                           ; $74fd: $98
	adc  b                                           ; $74fe: $88
	ld   a, b                                        ; $74ff: $78
	and  a                                           ; $7500: $a7
	adc  c                                           ; $7501: $89
	ld   [hl], a                                     ; $7502: $77
	ld   a, b                                        ; $7503: $78
	ld   a, c                                        ; $7504: $79
	sbc  b                                           ; $7505: $98
	ld   a, b                                        ; $7506: $78
	sub  [hl]                                        ; $7507: $96
	sbc  c                                           ; $7508: $99
	ld   a, b                                        ; $7509: $78
	sbc  c                                           ; $750a: $99
	ld   a, c                                        ; $750b: $79
	sub  a                                           ; $750c: $97
	adc  c                                           ; $750d: $89
	add  a                                           ; $750e: $87
	add  a                                           ; $750f: $87
	ld   h, a                                        ; $7510: $67
	add  [hl]                                        ; $7511: $86
	ld   l, b                                        ; $7512: $68
	add  [hl]                                        ; $7513: $86
	ld   a, d                                        ; $7514: $7a
	adc  b                                           ; $7515: $88
	cp   d                                           ; $7516: $ba
	sbc  d                                           ; $7517: $9a
	or   a                                           ; $7518: $b7
	sbc  d                                           ; $7519: $9a
	ld   [hl], a                                     ; $751a: $77
	ld   h, a                                        ; $751b: $67
	ld   d, a                                        ; $751c: $57
	add  l                                           ; $751d: $85
	ld   h, [hl]                                     ; $751e: $66
	halt                                             ; $751f: $76
	sbc  d                                           ; $7520: $9a
	ld   a, d                                        ; $7521: $7a
	sbc  c                                           ; $7522: $99
	sbc  d                                           ; $7523: $9a
	xor  d                                           ; $7524: $aa
	xor  c                                           ; $7525: $a9
	sbc  b                                           ; $7526: $98
	ld   [hl], a                                     ; $7527: $77
	ld   d, [hl]                                     ; $7528: $56
	ld   h, l                                        ; $7529: $65
	ld   d, l                                        ; $752a: $55
	ld   h, [hl]                                     ; $752b: $66
	ld   a, b                                        ; $752c: $78
	sbc  d                                           ; $752d: $9a
	cp   d                                           ; $752e: $ba
	cp   h                                           ; $752f: $bc
	xor  e                                           ; $7530: $ab
	jp   z, Jump_0e5_7698                            ; $7531: $ca $98 $76

	ld   d, [hl]                                     ; $7534: $56
	ld   b, l                                        ; $7535: $45
	ld   h, h                                        ; $7536: $64
	ld   d, [hl]                                     ; $7537: $56
	ld   [hl], a                                     ; $7538: $77
	xor  d                                           ; $7539: $aa
	xor  h                                           ; $753a: $ac
	res  7, h                                        ; $753b: $cb $bc
	cp   c                                           ; $753d: $b9
	sbc  c                                           ; $753e: $99
	halt                                             ; $753f: $76
	ld   [hl], h                                     ; $7540: $74
	inc  [hl]                                        ; $7541: $34
	ld   d, h                                        ; $7542: $54
	ld   b, l                                        ; $7543: $45
	ld   a, c                                        ; $7544: $79
	sbc  e                                           ; $7545: $9b
	cp   e                                           ; $7546: $bb
	cp   h                                           ; $7547: $bc
	set  1, e                                        ; $7548: $cb $cb
	adc  d                                           ; $754a: $8a
	add  [hl]                                        ; $754b: $86
	ld   d, h                                        ; $754c: $54
	ld   b, c                                        ; $754d: $41
	dec  [hl]                                        ; $754e: $35
	inc  h                                           ; $754f: $24
	ld   [hl], a                                     ; $7550: $77
	ld   a, e                                        ; $7551: $7b
	jp   z, $ccdf                                    ; $7552: $ca $df $cc

	call z, $8689                                    ; $7555: $cc $89 $86
	inc  sp                                          ; $7558: $33
	ld   sp, $2335                                   ; $7559: $31 $35 $23
	sbc  c                                           ; $755c: $99
	adc  l                                           ; $755d: $8d
	db   $ed                                         ; $755e: $ed
	rst  JumpTable                                         ; $755f: $df
	db   $eb                                         ; $7560: $eb
	cp   e                                           ; $7561: $bb
	and  a                                           ; $7562: $a7
	ld   [hl], l                                     ; $7563: $75
	ld   [de], a                                     ; $7564: $12
	ld   sp, $4415                                   ; $7565: $31 $15 $44
	xor  d                                           ; $7568: $aa
	xor  [hl]                                        ; $7569: $ae
	cp   $df                                         ; $756a: $fe $df
	db   $db                                         ; $756c: $db
	cp   d                                           ; $756d: $ba
	sub  l                                           ; $756e: $95
	ld   h, e                                        ; $756f: $63
	ld   [de], a                                     ; $7570: $12
	ld   hl, $4623                                   ; $7571: $21 $23 $46
	xor  e                                           ; $7574: $ab
	adc  $ff                                         ; $7575: $ce $ff
	db   $ed                                         ; $7577: $ed
	res  7, c                                        ; $7578: $cb $b9
	add  [hl]                                        ; $757a: $86
	ld   sp, $1211                                   ; $757b: $31 $11 $12
	inc  sp                                          ; $757e: $33
	ld   c, d                                        ; $757f: $4a
	cp   d                                           ; $7580: $ba
	rst  $38                                         ; $7581: $ff
	db   $fd                                         ; $7582: $fd
	xor  $ba                                         ; $7583: $ee $ba
	xor  c                                           ; $7585: $a9
	ld   h, l                                        ; $7586: $65
	ld   sp, $1311                                   ; $7587: $31 $11 $13
	ld   b, h                                        ; $758a: $44
	ld   a, e                                        ; $758b: $7b
	xor  [hl]                                        ; $758c: $ae
	cp   $ef                                         ; $758d: $fe $ef
	db   $ec                                         ; $758f: $ec
	cp   c                                           ; $7590: $b9
	sub  a                                           ; $7591: $97
	ld   b, h                                        ; $7592: $44
	ld   de, $2311                                   ; $7593: $11 $11 $23
	ld   d, a                                        ; $7596: $57
	cp   e                                           ; $7597: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7598: $cf

Jump_0e5_7599:
	rst  $38                                         ; $7599: $ff
	db   $dd                                         ; $759a: $dd
	db   $db                                         ; $759b: $db
	xor  b                                           ; $759c: $a8
	sub  l                                           ; $759d: $95
	ld   b, c                                        ; $759e: $41
	ld   de, $2411                                   ; $759f: $11 $11 $24
	add  hl, hl                                      ; $75a2: $29
	db   $fd                                         ; $75a3: $fd
	rst  $38                                         ; $75a4: $ff
	db   $fd                                         ; $75a5: $fd
	db   $fd                                         ; $75a6: $fd
	cp   d                                           ; $75a7: $ba
	adc  c                                           ; $75a8: $89

Jump_0e5_75a9:
	ld   h, h                                        ; $75a9: $64
	ld   de, $1311                                   ; $75aa: $11 $11 $13
	ld   d, h                                        ; $75ad: $54
	ld   a, h                                        ; $75ae: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75af: $cf
	rst  $38                                         ; $75b0: $ff
	db   $ed                                         ; $75b1: $ed
	db   $ec                                         ; $75b2: $ec
	and  a                                           ; $75b3: $a7
	sub  a                                           ; $75b4: $97
	ld   d, e                                        ; $75b5: $53
	ld   de, $2311                                   ; $75b6: $11 $11 $23
	ld   b, l                                        ; $75b9: $45
	call z, $fedf                                    ; $75ba: $cc $df $fe
	adc  $ba                                         ; $75bd: $ce $ba
	xor  c                                           ; $75bf: $a9
	sub  l                                           ; $75c0: $95
	ld   b, c                                        ; $75c1: $41
	ld   de, $2611                                   ; $75c2: $11 $11 $26
	ld   e, b                                        ; $75c5: $58
	adc  $ff                                         ; $75c6: $ce $ff
	cp   $eb                                         ; $75c8: $fe $eb
	xor  d                                           ; $75ca: $aa
	ld   a, b                                        ; $75cb: $78
	halt                                             ; $75cc: $76
	ld   hl, $2211                                   ; $75cd: $21 $11 $22
	ld   b, l                                        ; $75d0: $45
	ld   e, h                                        ; $75d1: $5c
	xor  $fe                                         ; $75d2: $ee $fe
	ei                                               ; $75d4: $fb
	res  7, c                                        ; $75d5: $cb $b9
	adc  c                                           ; $75d7: $89
	ld   d, e                                        ; $75d8: $53
	ld   de, $2611                                   ; $75d9: $11 $11 $26
	halt                                             ; $75dc: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75dd: $cf
	db   $dd                                         ; $75de: $dd
	db   $dd                                         ; $75df: $dd
	jp   z, $97dc                                    ; $75e0: $ca $dc $97

	add  a                                           ; $75e3: $87
	ld   sp, $1111                                   ; $75e4: $31 $11 $11
	scf                                              ; $75e7: $37
	ld   [hl], a                                     ; $75e8: $77
	cp   $de                                         ; $75e9: $fe $de
	xor  $cc                                         ; $75eb: $ee $cc
	sbc  e                                           ; $75ed: $9b
	add  a                                           ; $75ee: $87
	add  l                                           ; $75ef: $85
	ld   sp, $1112                                   ; $75f0: $31 $12 $11
	ld   a, e                                        ; $75f3: $7b
	ld   a, e                                        ; $75f4: $7b
	db   $ec                                         ; $75f5: $ec
	call c, $cccb                                    ; $75f6: $dc $cb $cc
	db   $dd                                         ; $75f9: $dd
	sbc  c                                           ; $75fa: $99
	ld   h, e                                        ; $75fb: $63
	ld   de, $1211                                   ; $75fc: $11 $11 $12
	add  a                                           ; $75ff: $87
	ld   a, a                                        ; $7600: $7f
	rst  $38                                         ; $7601: $ff
	rst  $38                                         ; $7602: $ff
	db   $ec                                         ; $7603: $ec
	xor  b                                           ; $7604: $a8
	sub  [hl]                                        ; $7605: $96
	ld   l, b                                        ; $7606: $68
	ld   h, e                                        ; $7607: $63
	ld   de, $3923                                   ; $7608: $11 $23 $39
	ret  z                                           ; $760b: $c8

	sbc  $bb                                         ; $760c: $de $bb
	cp   d                                           ; $760e: $ba
	cp   l                                           ; $760f: $bd
	xor  h                                           ; $7610: $ac
	or   a                                           ; $7611: $b7
	add  [hl]                                        ; $7612: $86
	ld   b, c                                        ; $7613: $41

Jump_0e5_7614:
	ld   de, $5c21                                   ; $7614: $11 $21 $5c
	sub  [hl]                                        ; $7617: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7618: $cf
	db   $fd                                         ; $7619: $fd
	cp   h                                           ; $761a: $bc
	jp   c, $86ac                                    ; $761b: $da $ac $86

	ld   d, l                                        ; $761e: $55
	ld   sp, $5115                                   ; $761f: $31 $15 $51
	ld   e, e                                        ; $7622: $5b
	cp   e                                           ; $7623: $bb
	rst  JumpTable                                         ; $7624: $df
	ld   [$cabd], a                                  ; $7625: $ea $bd $ca
	sbc  e                                           ; $7628: $9b
	and  a                                           ; $7629: $a7
	ld   d, [hl]                                     ; $762a: $56
	ld   hl, $2413                                   ; $762b: $21 $13 $24
	cp   h                                           ; $762e: $bc
	adc  d                                           ; $762f: $8a
	cp   l                                           ; $7630: $bd
	db   $eb                                         ; $7631: $eb
	sbc  $c8                                         ; $7632: $de $c8
	sbc  c                                           ; $7634: $99
	ld   h, l                                        ; $7635: $65
	ld   b, l                                        ; $7636: $45
	ld   de, $2733                                   ; $7637: $11 $33 $27
	call z, $dfbc                                    ; $763a: $cc $bc $df
	db   $db                                         ; $763d: $db
	jp   z, $a99a                                    ; $763e: $ca $9a $a9

	halt                                             ; $7641: $76
	ld   d, e                                        ; $7642: $53
	ld   de, $3a31                                   ; $7643: $11 $31 $3a
	xor  h                                           ; $7646: $ac
	db   $fd                                         ; $7647: $fd
	call $edaa                                       ; $7648: $cd $aa $ed
	cp   e                                           ; $764b: $bb
	ld   [hl], l                                     ; $764c: $75
	ld   d, h                                        ; $764d: $54
	ld   b, d                                        ; $764e: $42
	ld   [de], a                                     ; $764f: $12
	ld   b, h                                        ; $7650: $44
	ld   a, l                                        ; $7651: $7d
	ret                                              ; $7652: $c9


	xor  c                                           ; $7653: $a9
	rst  $38                                         ; $7654: $ff
	res  5, c                                        ; $7655: $cb $a9
	adc  e                                           ; $7657: $8b
	sbc  c                                           ; $7658: $99
	ld   h, l                                        ; $7659: $65
	ld   b, c                                        ; $765a: $41
	ld   de, $ab35                                   ; $765b: $11 $35 $ab
	sbc  h                                           ; $765e: $9c
	call c, $cdeb                                    ; $765f: $dc $eb $cd
	db   $fc                                         ; $7662: $fc
	sub  [hl]                                        ; $7663: $96
	ld   d, [hl]                                     ; $7664: $56
	ld   d, l                                        ; $7665: $55
	ld   de, $4624                                   ; $7666: $11 $24 $46
	xor  e                                           ; $7669: $ab
	sbc  $cc                                         ; $766a: $de $cc
	xor  e                                           ; $766c: $ab
	call z, $98aa                                    ; $766d: $cc $aa $98
	ld   h, [hl]                                     ; $7670: $66
	ld   h, l                                        ; $7671: $65
	ld   de, $4643                                   ; $7672: $11 $43 $46
	xor  c                                           ; $7675: $a9
	sbc  h                                           ; $7676: $9c
	rst  $28                                         ; $7677: $ef
	cp   e                                           ; $7678: $bb
	cp   l                                           ; $7679: $bd
	db   $db                                         ; $767a: $db
	sub  [hl]                                        ; $767b: $96
	ld   h, e                                        ; $767c: $63
	ld   sp, $4512                                   ; $767d: $31 $12 $45
	sbc  h                                           ; $7680: $9c
	adc  d                                           ; $7681: $8a
	db   $dd                                         ; $7682: $dd
	db   $eb                                         ; $7683: $eb
	xor  e                                           ; $7684: $ab
	jp   z, Jump_0e5_7899                            ; $7685: $ca $99 $78

	ld   [hl], l                                     ; $7688: $75
	ld   b, c                                        ; $7689: $41
	dec  d                                           ; $768a: $15
	ld   d, h                                        ; $768b: $54
	ld   a, b                                        ; $768c: $78
	sbc  [hl]                                        ; $768d: $9e
	db   $db                                         ; $768e: $db
	res  5, h                                        ; $768f: $cb $ac
	jp   c, Jump_0e5_78a7                            ; $7691: $da $a7 $78

	add  l                                           ; $7694: $85
	ld   de, $4613                                   ; $7695: $11 $13 $46

Jump_0e5_7698:
	xor  d                                           ; $7698: $aa
	xor  h                                           ; $7699: $ac
	db   $ed                                         ; $769a: $ed
	jp   z, $c9bd                                    ; $769b: $ca $bd $c9

	sub  a                                           ; $769e: $97
	ld   d, h                                        ; $769f: $54
	ld   b, e                                        ; $76a0: $43
	ld   de, $5744                                   ; $76a1: $11 $44 $57
	xor  c                                           ; $76a4: $a9
	sbc  $bc                                         ; $76a5: $de $bc
	cp   l                                           ; $76a7: $bd
	sbc  c                                           ; $76a8: $99
	ld   a, e                                        ; $76a9: $7b
	jp   z, Jump_0e5_5185                            ; $76aa: $ca $85 $51

	ld   de, $7748                                   ; $76ad: $11 $48 $77
	scf                                              ; $76b0: $37
	rst  $38                                         ; $76b1: $ff
	jp   hl                                          ; $76b2: $e9


	ld   a, e                                        ; $76b3: $7b
	rst  $38                                         ; $76b4: $ff
	add  a                                           ; $76b5: $87
	ld   h, [hl]                                     ; $76b6: $66
	ld   [hl], l                                     ; $76b7: $75

Call_0e5_76b8:
	ld   d, d                                        ; $76b8: $52
	ld   de, $9a34                                   ; $76b9: $11 $34 $9a
	sbc  h                                           ; $76bc: $9c
	db   $fd                                         ; $76bd: $fd
	cp   c                                           ; $76be: $b9
	adc  a                                           ; $76bf: $8f
	ld   [$6698], a                                  ; $76c0: $ea $98 $66
	ld   d, h                                        ; $76c3: $54
	ld   d, c                                        ; $76c4: $51
	inc  de                                          ; $76c5: $13
	ld   b, h                                        ; $76c6: $44

Call_0e5_76c7:
	xor  l                                           ; $76c7: $ad
	sbc  d                                           ; $76c8: $9a
	xor  l                                           ; $76c9: $ad
	db   $eb                                         ; $76ca: $eb
	adc  e                                           ; $76cb: $8b
	cp   e                                           ; $76cc: $bb
	ret                                              ; $76cd: $c9


	halt                                             ; $76ce: $76
	ld   h, h                                        ; $76cf: $64
	ld   sp, $4813                                   ; $76d0: $31 $13 $48
	xor  d                                           ; $76d3: $aa
	xor  l                                           ; $76d4: $ad
	cp   h                                           ; $76d5: $bc
	jp   z, $c8de                                    ; $76d6: $ca $de $c8

	ld   [hl], h                                     ; $76d9: $74
	adc  c                                           ; $76da: $89
	ld   h, e                                        ; $76db: $63
	ld   bc, $4545                                   ; $76dc: $01 $45 $45
	ld   d, [hl]                                     ; $76df: $56
	rst  JumpTable                                         ; $76e0: $df
	db   $fd                                         ; $76e1: $fd
	ld   a, c                                        ; $76e2: $79
	sbc  $96                                         ; $76e3: $de $96
	adc  b                                           ; $76e5: $88
	sub  [hl]                                        ; $76e6: $96
	ld   [hl-], a                                    ; $76e7: $32
	inc  hl                                          ; $76e8: $23
	ld   d, l                                        ; $76e9: $55
	ld   e, b                                        ; $76ea: $58
	ld   a, c                                        ; $76eb: $79
	call $bcbc                                       ; $76ec: $cd $bc $bc
	call c, $a898                                    ; $76ef: $dc $98 $a8
	ld   h, h                                        ; $76f2: $64
	ld   b, e                                        ; $76f3: $43
	ld   hl, $8a15                                   ; $76f4: $21 $15 $8a
	sbc  d                                           ; $76f7: $9a
	cp   [hl]                                        ; $76f8: $be
	call z, $caba                                    ; $76f9: $cc $ba $ca
	add  a                                           ; $76fc: $87
	ld   a, b                                        ; $76fd: $78
	add  a                                           ; $76fe: $87
	ld   sp, $5713                                   ; $76ff: $31 $13 $57
	ld   a, b                                        ; $7702: $78
	adc  e                                           ; $7703: $8b
	db   $fc                                         ; $7704: $fc
	cp   b                                           ; $7705: $b8
	xor  l                                           ; $7706: $ad
	db   $eb                                         ; $7707: $eb
	ld   [hl], a                                     ; $7708: $77
	ld   a, c                                        ; $7709: $79
	ld   h, l                                        ; $770a: $65
	ld   hl, $4324                                   ; $770b: $21 $24 $43
	ld   l, c                                        ; $770e: $69
	adc  $c9                                         ; $770f: $ce $c9
	xor  h                                           ; $7711: $ac
	rst  JumpTable                                         ; $7712: $df
	rst  ToBoot                                         ; $7713: $c7
	ld   a, b                                        ; $7714: $78
	ld   [hl], a                                     ; $7715: $77
	ld   h, l                                        ; $7716: $65
	ld   b, c                                        ; $7717: $41
	ld   [de], a                                     ; $7718: $12
	ld   [hl], $ab                                   ; $7719: $36 $ab
	rst  $28                                         ; $771b: $ef
	ret                                              ; $771c: $c9


	ld   a, c                                        ; $771d: $79
	rst  JumpTable                                         ; $771e: $df
	reti                                             ; $771f: $d9


	halt                                             ; $7720: $76
	ld   [hl], a                                     ; $7721: $77
	ld   h, [hl]                                     ; $7722: $66
	ld   sp, $1511                                   ; $7723: $31 $11 $15
	xor  h                                           ; $7726: $ac
	db   $dd                                         ; $7727: $dd
	cp   e                                           ; $7728: $bb
	xor  c                                           ; $7729: $a9
	cp   h                                           ; $772a: $bc
	jp   z, Jump_0e5_5685                            ; $772b: $ca $85 $56

	ld   h, l                                        ; $772e: $65
	ld   hl, $4635                                   ; $772f: $21 $35 $46
	adc  c                                           ; $7732: $89
	rst  JumpTable                                         ; $7733: $df
	db   $db                                         ; $7734: $db
	adc  b                                           ; $7735: $88
	sbc  $c8                                         ; $7736: $de $c8
	ld   h, h                                        ; $7738: $64
	ld   h, a                                        ; $7739: $67
	ld   d, h                                        ; $773a: $54
	ld   [de], a                                     ; $773b: $12
	inc  [hl]                                        ; $773c: $34
	ld   b, a                                        ; $773d: $47
	sbc  b                                           ; $773e: $98
	xor  $fd                                         ; $773f: $ee $fd
	cp   d                                           ; $7741: $ba
	xor  h                                           ; $7742: $ac
	sbc  e                                           ; $7743: $9b
	add  a                                           ; $7744: $87
	ld   h, l                                        ; $7745: $65
	ld   d, e                                        ; $7746: $53
	ld   de, $9c45                                   ; $7747: $11 $45 $9c
	sbc  b                                           ; $774a: $98
	xor  e                                           ; $774b: $ab
	rst  JumpTable                                         ; $774c: $df
	res  5, d                                        ; $774d: $cb $aa
	ld   [hl], a                                     ; $774f: $77
	ld   a, b                                        ; $7750: $78
	sub  a                                           ; $7751: $97
	ld   d, c                                        ; $7752: $51
	ld   de, $7946                                   ; $7753: $11 $46 $79
	ld   a, e                                        ; $7756: $7b
	rst  $28                                         ; $7757: $ef
	ret                                              ; $7758: $c9


	sbc  h                                           ; $7759: $9c
	db   $fc                                         ; $775a: $fc
	ld   h, e                                        ; $775b: $63
	ld   c, c                                        ; $775c: $49
	xor  b                                           ; $775d: $a8
	ld   de, $7715                                   ; $775e: $11 $15 $77
	ld   a, c                                        ; $7761: $79
	rst  JumpTable                                         ; $7762: $df
	ret  c                                           ; $7763: $d8

	ld   e, b                                        ; $7764: $58
	rst  $28                                         ; $7765: $ef
	rst  $20                                         ; $7766: $e7
	ld   b, h                                        ; $7767: $44
	ld   a, c                                        ; $7768: $79
	ld   [hl], l                                     ; $7769: $75
	ld   hl, $1522                                   ; $776a: $21 $22 $15
	adc  $eb                                         ; $776d: $ce $eb
	sbc  e                                           ; $776f: $9b
	db   $db                                         ; $7770: $db
	sbc  c                                           ; $7771: $99
	sbc  h                                           ; $7772: $9c
	or   a                                           ; $7773: $b7
	ld   d, h                                        ; $7774: $54
	ld   h, [hl]                                     ; $7775: $66
	ld   d, c                                        ; $7776: $51
	ld   [hl+], a                                    ; $7777: $22
	ld   b, a                                        ; $7778: $47
	adc  d                                           ; $7779: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $777a: $cf
	db   $ec                                         ; $777b: $ec
	ld   a, b                                        ; $777c: $78
	adc  $c9                                         ; $777d: $ce $c9
	sub  [hl]                                        ; $777f: $96
	ld   [hl], h                                     ; $7780: $74
	ld   b, e                                        ; $7781: $43
	ld   b, h                                        ; $7782: $44
	ld   [hl-], a                                    ; $7783: $32
	ld   c, d                                        ; $7784: $4a
	xor  e                                           ; $7785: $ab
	cp   h                                           ; $7786: $bc
	rst  $28                                         ; $7787: $ef
	cp   b                                           ; $7788: $b8
	sbc  c                                           ; $7789: $99
	xor  e                                           ; $778a: $ab
	add  [hl]                                        ; $778b: $86
	ld   h, l                                        ; $778c: $65
	ld   b, e                                        ; $778d: $43
	inc  de                                          ; $778e: $13
	ld   d, h                                        ; $778f: $54
	ld   b, a                                        ; $7790: $47
	xor  [hl]                                        ; $7791: $ae
	ei                                               ; $7792: $fb
	sub  a                                           ; $7793: $97
	xor  [hl]                                        ; $7794: $ae
	ei                                               ; $7795: $fb
	halt                                             ; $7796: $76
	ld   l, c                                        ; $7797: $69
	add  a                                           ; $7798: $87
	ld   d, h                                        ; $7799: $54
	ld   [de], a                                     ; $779a: $12
	ld   de, $fd6b                                   ; $779b: $11 $6b $fd
	cp   c                                           ; $779e: $b9
	cp   h                                           ; $779f: $bc
	db   $db                                         ; $77a0: $db
	xor  d                                           ; $77a1: $aa
	cp   b                                           ; $77a2: $b8
	ld   b, h                                        ; $77a3: $44
	ld   c, b                                        ; $77a4: $48
	ld   [hl], e                                     ; $77a5: $73
	ld   de, $9936                                   ; $77a6: $11 $36 $99
	sbc  h                                           ; $77a9: $9c
	db   $ed                                         ; $77aa: $ed
	reti                                             ; $77ab: $d9


	sbc  e                                           ; $77ac: $9b
	db   $db                                         ; $77ad: $db
	add  a                                           ; $77ae: $87
	ld   l, b                                        ; $77af: $68
	ld   [hl], h                                     ; $77b0: $74
	ld   de, $5424                                   ; $77b1: $11 $24 $54
	adc  e                                           ; $77b4: $8b
	call $9dba                                       ; $77b5: $cd $ba $9d
	db   $dd                                         ; $77b8: $dd
	or   [hl]                                        ; $77b9: $b6
	ld   [hl], a                                     ; $77ba: $77
	sub  a                                           ; $77bb: $97
	ld   h, h                                        ; $77bc: $64
	inc  hl                                          ; $77bd: $23
	inc  sp                                          ; $77be: $33
	ld   [hl], $89                                   ; $77bf: $36 $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77c1: $cf
	cp   $a6                                         ; $77c2: $fe $a6
	ld   a, l                                        ; $77c4: $7d
	db   $fd                                         ; $77c5: $fd
	ld   [hl], e                                     ; $77c6: $73
	ld   [hl], $74                                   ; $77c7: $36 $74
	ld   de, $9936                                   ; $77c9: $11 $36 $99
	ld   l, b                                        ; $77cc: $68
	rst  $28                                         ; $77cd: $ef
	ld   [$cd78], a                                  ; $77ce: $ea $78 $cd
	sub  a                                           ; $77d1: $97
	ld   e, b                                        ; $77d2: $58
	sub  a                                           ; $77d3: $97
	ld   sp, $6414                                   ; $77d4: $31 $14 $64
	ld   l, b                                        ; $77d7: $68
	cp   h                                           ; $77d8: $bc
	jp   z, $dcce                                    ; $77d9: $ca $ce $dc

	sbc  b                                           ; $77dc: $98
	adc  e                                           ; $77dd: $8b
	sub  a                                           ; $77de: $97
	ld   d, h                                        ; $77df: $54
	ld   [hl-], a                                    ; $77e0: $32
	inc  sp                                          ; $77e1: $33
	inc  hl                                          ; $77e2: $23
	ld   a, e                                        ; $77e3: $7b
	adc  $ca                                         ; $77e4: $ce $ca
	cp   l                                           ; $77e6: $bd
	call Call_0e5_76c7                               ; $77e7: $cd $c7 $76
	halt                                             ; $77ea: $76
	ld   d, h                                        ; $77eb: $54
	ld   [hl+], a                                    ; $77ec: $22
	inc  hl                                          ; $77ed: $23
	ld   c, c                                        ; $77ee: $49
	cp   e                                           ; $77ef: $bb
	cp   e                                           ; $77f0: $bb
	call z, $9bba                                    ; $77f1: $cc $ba $9b
	cp   e                                           ; $77f4: $bb
	and  l                                           ; $77f5: $a5
	ld   d, a                                        ; $77f6: $57
	sub  a                                           ; $77f7: $97
	ld   sp, $4713                                   ; $77f8: $31 $13 $47
	ld   d, l                                        ; $77fb: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77fc: $cf
	cp   $75                                         ; $77fd: $fe $75
	cp   a                                           ; $77ff: $bf
	ld   sp, hl                                      ; $7800: $f9
	ld   b, e                                        ; $7801: $43
	ld   h, a                                        ; $7802: $67
	ld   h, c                                        ; $7803: $61
	ld   de, $9959                                   ; $7804: $11 $59 $99
	ld   a, d                                        ; $7807: $7a
	db   $dd                                         ; $7808: $dd
	res  1, e                                        ; $7809: $cb $8b
	db   $db                                         ; $780b: $db
	add  [hl]                                        ; $780c: $86
	ld   a, d                                        ; $780d: $7a
	and  a                                           ; $780e: $a7
	ld   d, c                                        ; $780f: $51
	ld   de, $7b11                                   ; $7810: $11 $11 $7b
	cp   l                                           ; $7813: $bd
	cp   l                                           ; $7814: $bd
	sbc  $cb                                         ; $7815: $de $cb
	ret                                              ; $7817: $c9


	sub  a                                           ; $7818: $97
	ld   d, h                                        ; $7819: $54
	ld   d, [hl]                                     ; $781a: $56
	ld   d, e                                        ; $781b: $53
	ld   [de], a                                     ; $781c: $12
	scf                                              ; $781d: $37
	xor  d                                           ; $781e: $aa
	sbc  h                                           ; $781f: $9c
	xor  $b7                                         ; $7820: $ee $b7
	ld   l, e                                        ; $7822: $6b
	db   $fd                                         ; $7823: $fd
	push bc                                          ; $7824: $c5
	ld   b, [hl]                                     ; $7825: $46
	sub  [hl]                                        ; $7826: $96
	ld   sp, $6914                                   ; $7827: $31 $14 $69
	ld   h, l                                        ; $782a: $65
	sbc  a                                           ; $782b: $9f
	cp   $95                                         ; $782c: $fe $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $782e: $cf
	add  sp, $53                                     ; $782f: $e8 $53
	adc  d                                           ; $7831: $8a
	add  e                                           ; $7832: $83
	ld   de, $4536                                   ; $7833: $11 $36 $45
	ld   e, d                                        ; $7836: $5a
	rst  $38                                         ; $7837: $ff
	ld   sp, hl                                      ; $7838: $f9
	ld   l, c                                        ; $7839: $69
	rst  $28                                         ; $783a: $ef
	rst  ToBoot                                         ; $783b: $c7
	ld   d, a                                        ; $783c: $57
	add  a                                           ; $783d: $87
	ld   b, d                                        ; $783e: $42
	ld   [de], a                                     ; $783f: $12
	ld   b, h                                        ; $7840: $44
	ld   e, b                                        ; $7841: $58
	xor  h                                           ; $7842: $ac
	db   $db                                         ; $7843: $db
	xor  e                                           ; $7844: $ab
	call $87db                                       ; $7845: $cd $db $87
	ld   a, c                                        ; $7848: $79
	sub  l                                           ; $7849: $95
	ld   sp, $4411                                   ; $784a: $31 $11 $44
	adc  c                                           ; $784d: $89
	sbc  h                                           ; $784e: $9c
	db   $ed                                         ; $784f: $ed
	jp   c, $db9b                                    ; $7850: $da $9b $db

	add  a                                           ; $7853: $87
	ld   h, a                                        ; $7854: $67
	adc  b                                           ; $7855: $88
	ld   h, e                                        ; $7856: $63
	ld   de, $7a13                                   ; $7857: $11 $13 $7a
	res  7, h                                        ; $785a: $cb $bc
	db   $ed                                         ; $785c: $ed
	db   $db                                         ; $785d: $db
	cp   c                                           ; $785e: $b9
	sbc  c                                           ; $785f: $99
	ld   [hl], a                                     ; $7860: $77
	ld   d, l                                        ; $7861: $55
	ld   b, d                                        ; $7862: $42
	ld   de, $9925                                   ; $7863: $11 $25 $99
	cp   [hl]                                        ; $7866: $be
	cp   $c8                                         ; $7867: $fe $c8
	ld   a, h                                        ; $7869: $7c
	db   $ec                                         ; $786a: $ec
	add  l                                           ; $786b: $85
	ld   d, [hl]                                     ; $786c: $56
	ld   h, l                                        ; $786d: $65
	ld   sp, $4723                                   ; $786e: $31 $23 $47
	xor  c                                           ; $7871: $a9
	xor  l                                           ; $7872: $ad
	call $acca                                       ; $7873: $cd $ca $ac
	cp   c                                           ; $7876: $b9
	sub  [hl]                                        ; $7877: $96
	ld   h, [hl]                                     ; $7878: $66
	ld   h, h                                        ; $7879: $64
	ld   sp, $1622                                   ; $787a: $31 $22 $16
	sbc  h                                           ; $787d: $9c
	rst  $28                                         ; $787e: $ef
	jp   z, $eeab                                    ; $787f: $ca $ab $ee

	or   a                                           ; $7882: $b7
	ld   d, l                                        ; $7883: $55
	ld   a, b                                        ; $7884: $78
	ld   d, d                                        ; $7885: $52
	ld   de, $6935                                   ; $7886: $11 $35 $69
	sbc  c                                           ; $7889: $99
	xor  $dc                                         ; $788a: $ee $dc
	sbc  d                                           ; $788c: $9a
	call c, $67a8                                    ; $788d: $dc $a8 $67
	add  a                                           ; $7890: $87
	ld   d, e                                        ; $7891: $53
	ld   de, $5821                                   ; $7892: $11 $21 $58
	cp   [hl]                                        ; $7895: $be
	db   $fd                                         ; $7896: $fd
	sub  a                                           ; $7897: $97
	ld   a, h                                        ; $7898: $7c

Jump_0e5_7899:
	rst  $38                                         ; $7899: $ff
	and  a                                           ; $789a: $a7
	ld   b, h                                        ; $789b: $44
	ld   b, h                                        ; $789c: $44
	ld   d, l                                        ; $789d: $55
	ld   [hl-], a                                    ; $789e: $32
	ld   de, $be59                                   ; $789f: $11 $59 $be
	rst  $38                                         ; $78a2: $ff
	ret  z                                           ; $78a3: $c8

	ld   l, c                                        ; $78a4: $69
	xor  $b7                                         ; $78a5: $ee $b7

Jump_0e5_78a7:
	ld   b, l                                        ; $78a7: $45
	ld   h, a                                        ; $78a8: $67
	ld   b, c                                        ; $78a9: $41
	ld   de, $aa37                                   ; $78aa: $11 $37 $aa
	xor  [hl]                                        ; $78ad: $ae
	db   $ec                                         ; $78ae: $ec
	cp   c                                           ; $78af: $b9
	adc  $d8                                         ; $78b0: $ce $d8
	ld   h, [hl]                                     ; $78b2: $66
	adc  d                                           ; $78b3: $8a
	ld   h, h                                        ; $78b4: $64
	ld   [hl-], a                                    ; $78b5: $32
	ld   de, $ad12                                   ; $78b6: $11 $12 $ad
	rst  $38                                         ; $78b9: $ff
	reti                                             ; $78ba: $d9


	sbc  c                                           ; $78bb: $99
	xor  [hl]                                        ; $78bc: $ae
	jp   z, $4385                                    ; $78bd: $ca $85 $43

	ld   h, a                                        ; $78c0: $67
	ld   [hl], e                                     ; $78c1: $73
	ld   de, $a827                                   ; $78c2: $11 $27 $a8
	xor  [hl]                                        ; $78c5: $ae
	rst  $38                                         ; $78c6: $ff
	or   a                                           ; $78c7: $b7
	xor  l                                           ; $78c8: $ad
	jp   c, Jump_0e5_6675                            ; $78c9: $da $75 $66

	ld   d, e                                        ; $78cc: $53
	ld   hl, $4733                                   ; $78cd: $21 $33 $47
	sbc  e                                           ; $78d0: $9b
	rst  $38                                         ; $78d1: $ff
	ret                                              ; $78d2: $c9


	adc  e                                           ; $78d3: $8b
	rst  $38                                         ; $78d4: $ff
	sub  h                                           ; $78d5: $94
	ld   d, [hl]                                     ; $78d6: $56
	sub  a                                           ; $78d7: $97
	ld   b, e                                        ; $78d8: $43
	inc  sp                                          ; $78d9: $33
	ld   hl, $ff19                                   ; $78da: $21 $19 $ff
	db   $eb                                         ; $78dd: $eb
	sbc  l                                           ; $78de: $9d
	db   $eb                                         ; $78df: $eb
	cp   b                                           ; $78e0: $b8
	sbc  e                                           ; $78e1: $9b
	sub  l                                           ; $78e2: $95
	inc  [hl]                                        ; $78e3: $34
	ld   d, a                                        ; $78e4: $57
	ld   sp, $7a13                                   ; $78e5: $31 $13 $7a
	sbc  c                                           ; $78e8: $99
	sbc  $ea                                         ; $78e9: $de $ea
	xor  c                                           ; $78eb: $a9
	db   $ed                                         ; $78ec: $ed
	and  a                                           ; $78ed: $a7
	ld   b, [hl]                                     ; $78ee: $46
	ld   a, c                                        ; $78ef: $79
	ld   d, e                                        ; $78f0: $53
	ld   de, $6734                                   ; $78f1: $11 $34 $67
	adc  d                                           ; $78f4: $8a
	rst  $38                                         ; $78f5: $ff
	jp   hl                                          ; $78f6: $e9


	sbc  e                                           ; $78f7: $9b
	db   $ed                                         ; $78f8: $ed
	add  a                                           ; $78f9: $87
	ld   b, a                                        ; $78fa: $47
	add  a                                           ; $78fb: $87
	ld   b, e                                        ; $78fc: $43
	ld   de, $ad13                                   ; $78fd: $11 $13 $ad
	jp   z, $edba                                    ; $7900: $ca $ba $ed

	cp   d                                           ; $7903: $ba
	cp   e                                           ; $7904: $bb
	sbc  c                                           ; $7905: $99
	ld   b, [hl]                                     ; $7906: $46
	ld   a, c                                        ; $7907: $79
	ld   [hl], l                                     ; $7908: $75
	ld   de, $8913                                   ; $7909: $11 $13 $89
	cp   l                                           ; $790c: $bd
	ei                                               ; $790d: $fb
	xor  c                                           ; $790e: $a9
	xor  a                                           ; $790f: $af
	ei                                               ; $7910: $fb
	ld   d, h                                        ; $7911: $54
	ld   c, c                                        ; $7912: $49
	ld   [hl], l                                     ; $7913: $75
	ld   b, e                                        ; $7914: $43
	ld   [hl+], a                                    ; $7915: $22
	inc  hl                                          ; $7916: $23
	adc  d                                           ; $7917: $8a
	xor  h                                           ; $7918: $ac
	db   $dd                                         ; $7919: $dd
	jp   z, $bc99                                    ; $791a: $ca $99 $bc

	bit  4, h                                        ; $791d: $cb $64
	ld   b, l                                        ; $791f: $45
	ld   d, h                                        ; $7920: $54
	ld   de, $9c13                                   ; $7921: $11 $13 $9c
	cp   l                                           ; $7924: $bd

Call_0e5_7925:
	db   $ec                                         ; $7925: $ec
	call z, $c8bc                                    ; $7926: $cc $bc $c8
	ld   [hl], a                                     ; $7929: $77
	add  a                                           ; $792a: $87
	ld   h, l                                        ; $792b: $65
	ld   b, e                                        ; $792c: $43
	ld   [hl+], a                                    ; $792d: $22
	inc  hl                                          ; $792e: $23
	ld   a, e                                        ; $792f: $7b
	cp   l                                           ; $7930: $bd
	db   $ec                                         ; $7931: $ec
	jp   c, $bb9a                                    ; $7932: $da $9a $bb

	jp   z, Jump_0e5_4744                            ; $7935: $ca $44 $47

	ld   [hl], h                                     ; $7938: $74
	ld   de, $db17                                   ; $7939: $11 $17 $db
	xor  d                                           ; $793c: $aa
	cp   l                                           ; $793d: $bd
	ei                                               ; $793e: $fb
	xor  e                                           ; $793f: $ab
	cp   e                                           ; $7940: $bb
	add  a                                           ; $7941: $87
	ld   e, b                                        ; $7942: $58
	ld   a, c                                        ; $7943: $79
	ld   d, c                                        ; $7944: $51
	ld   de, $9a24                                   ; $7945: $11 $24 $9a
	rst  $28                                         ; $7948: $ef
	jp   hl                                          ; $7949: $e9


	xor  d                                           ; $794a: $aa
	adc  $cb                                         ; $794b: $ce $cb
	sbc  c                                           ; $794d: $99
	ld   b, h                                        ; $794e: $44
	dec  h                                           ; $794f: $25
	sbc  b                                           ; $7950: $98
	ld   hl, $cf12                                   ; $7951: $21 $12 $cf
	reti                                             ; $7954: $d9


	xor  l                                           ; $7955: $ad
	db   $fd                                         ; $7956: $fd
	add  l                                           ; $7957: $85
	adc  h                                           ; $7958: $8c
	db   $fc                                         ; $7959: $fc
	ld   b, d                                        ; $795a: $42
	jr   c, @+$76                                    ; $795b: $38 $74

	ld   de, $ba26                                   ; $795d: $11 $26 $ba
	cp   e                                           ; $7960: $bb
	call z, $abec                                    ; $7961: $cc $ec $ab
	xor  d                                           ; $7964: $aa
	sbc  c                                           ; $7965: $99
	ld   h, l                                        ; $7966: $65
	ld   b, [hl]                                     ; $7967: $46
	ld   h, l                                        ; $7968: $65
	ld   hl, $7b11                                   ; $7969: $21 $11 $7b
	rst  $38                                         ; $796c: $ff
	jp   c, $eeab                                    ; $796d: $da $ab $ee

	ret                                              ; $7970: $c9


	ld   [hl], a                                     ; $7971: $77
	ld   [hl], a                                     ; $7972: $77
	ld   d, l                                        ; $7973: $55
	ld   d, h                                        ; $7974: $54
	ld   de, $9d12                                   ; $7975: $11 $12 $9d
	db   $ec                                         ; $7978: $ec
	cp   d                                           ; $7979: $ba
	cp   e                                           ; $797a: $bb
	cp   h                                           ; $797b: $bc
	call z, $34a6                                    ; $797c: $cc $a6 $34
	ld   l, b                                        ; $797f: $68
	add  l                                           ; $7980: $85
	ld   de, $8d11                                   ; $7981: $11 $11 $8d
	cp   $c9                                         ; $7984: $fe $c9
	xor  h                                           ; $7986: $ac
	cp   e                                           ; $7987: $bb
	res  7, c                                        ; $7988: $cb $b9
	ld   d, e                                        ; $798a: $53
	ld   d, a                                        ; $798b: $57
	or   a                                           ; $798c: $b7
	ld   de, $ae11                                   ; $798d: $11 $11 $ae
	cp   e                                           ; $7990: $bb
	call $99ec                                       ; $7991: $cd $ec $99
	call $32c9                                       ; $7994: $cd $c9 $32
	ld   c, b                                        ; $7997: $48
	xor  b                                           ; $7998: $a8
	ld   hl, $7c11                                   ; $7999: $21 $11 $7c
	call $dbdd                                       ; $799c: $cd $dd $db
	sbc  c                                           ; $799f: $99
	cp   [hl]                                        ; $79a0: $be
	jp   z, Jump_0e5_4643                            ; $79a1: $ca $43 $46

	halt                                             ; $79a4: $76
	ld   b, c                                        ; $79a5: $41
	ld   de, $df5a                                   ; $79a6: $11 $5a $df
	db   $fd                                         ; $79a9: $fd

Jump_0e5_79aa:
	sbc  c                                           ; $79aa: $99
	adc  h                                           ; $79ab: $8c
	db   $ec                                         ; $79ac: $ec
	sub  a                                           ; $79ad: $97
	ld   h, [hl]                                     ; $79ae: $66
	ld   [hl], l                                     ; $79af: $75
	ld   h, a                                        ; $79b0: $67
	ld   h, c                                        ; $79b1: $61
	ld   de, $ff1c                                   ; $79b2: $11 $1c $ff
	jp   c, $dd9c                                    ; $79b5: $da $9c $dd

	jp   z, $859a                                    ; $79b8: $ca $9a $85

	ld   b, h                                        ; $79bb: $44
	ld   l, b                                        ; $79bc: $68
	ld   h, c                                        ; $79bd: $61
	ld   de, $da3c                                   ; $79be: $11 $3c $da
	xor  h                                           ; $79c1: $ac
	sbc  $b9                                         ; $79c2: $de $b9
	xor  l                                           ; $79c4: $ad
	jp   c, Jump_0e5_4763                            ; $79c5: $da $63 $47

	sbc  b                                           ; $79c8: $98
	ld   b, c                                        ; $79c9: $41
	ld   de, $dd19                                   ; $79ca: $11 $19 $dd
	set  1, l                                        ; $79cd: $cb $cd
	jp   z, $dc8a                                    ; $79cf: $ca $8a $dc

	and  h                                           ; $79d2: $a4
	inc  [hl]                                        ; $79d3: $34
	adc  c                                           ; $79d4: $89
	add  h                                           ; $79d5: $84
	ld   de, $af13                                   ; $79d6: $11 $13 $af
	cp   $99                                         ; $79d9: $fe $99
	xor  l                                           ; $79db: $ad
	res  5, d                                        ; $79dc: $cb $aa
	and  a                                           ; $79de: $a7
	ld   b, d                                        ; $79df: $42
	ld   e, d                                        ; $79e0: $5a
	and  [hl]                                        ; $79e1: $a6
	ld   de, $dc15                                   ; $79e2: $11 $15 $dc
	sbc  d                                           ; $79e5: $9a
	cp   a                                           ; $79e6: $bf
	ei                                               ; $79e7: $fb
	halt                                             ; $79e8: $76
	xor  l                                           ; $79e9: $ad
	ld   [$3942], a                                  ; $79ea: $ea $42 $39
	and  a                                           ; $79ed: $a7
	ld   de, $9f11                                   ; $79ee: $11 $11 $9f
	db   $fc                                         ; $79f1: $fc
	xor  c                                           ; $79f2: $a9
	cp   l                                           ; $79f3: $bd
	set  1, e                                        ; $79f4: $cb $cb
	sub  a                                           ; $79f6: $97
	ld   b, l                                        ; $79f7: $45
	adc  e                                           ; $79f8: $8b
	or   a                                           ; $79f9: $b7
	ld   hl, $6f11                                   ; $79fa: $21 $11 $6f
	ei                                               ; $79fd: $fb
	adc  c                                           ; $79fe: $89
	rst  JumpTable                                         ; $79ff: $df
	ret  c                                           ; $7a00: $d8

	ld   a, e                                        ; $7a01: $7b
	call c, $1562                                    ; $7a02: $dc $62 $15
	cp   e                                           ; $7a05: $bb
	add  c                                           ; $7a06: $81
	ld   de, $ef19                                   ; $7a07: $11 $19 $ef
	jp   c, $bc9b                                    ; $7a0a: $da $9b $bc

	cp   d                                           ; $7a0d: $ba
	cp   d                                           ; $7a0e: $ba
	sub  [hl]                                        ; $7a0f: $96
	ld   d, h                                        ; $7a10: $54
	ld   a, b                                        ; $7a11: $78
	sub  [hl]                                        ; $7a12: $96
	ld   de, $cf12                                   ; $7a13: $11 $12 $cf
	rst  ToBoot                                         ; $7a16: $c7
	ld   a, e                                        ; $7a17: $7b
	rst  $38                                         ; $7a18: $ff
	or   l                                           ; $7a19: $b5
	ld   l, c                                        ; $7a1a: $69
	db   $eb                                         ; $7a1b: $eb
	ld   h, e                                        ; $7a1c: $63
	ld   c, b                                        ; $7a1d: $48
	sbc  b                                           ; $7a1e: $98
	ld   sp, $5b11                                   ; $7a1f: $31 $11 $5b
	jp   c, $edbc                                    ; $7a22: $da $bc $ed

	xor  c                                           ; $7a25: $a9
	call z, Call_0e5_56a8                            ; $7a26: $cc $a8 $56
	sbc  c                                           ; $7a29: $99
	ld   [hl], l                                     ; $7a2a: $75
	inc  sp                                          ; $7a2b: $33
	ld   [hl-], a                                    ; $7a2c: $32
	dec  d                                           ; $7a2d: $15
	xor  e                                           ; $7a2e: $ab
	xor  e                                           ; $7a2f: $ab
	xor  $eb                                         ; $7a30: $ee $eb
	adc  b                                           ; $7a32: $88
	xor  d                                           ; $7a33: $aa
	xor  b                                           ; $7a34: $a8
	ld   h, [hl]                                     ; $7a35: $66
	ld   h, [hl]                                     ; $7a36: $66
	halt                                             ; $7a37: $76
	ld   sp, $8d11                                   ; $7a38: $31 $11 $8d
	db   $db                                         ; $7a3b: $db
	xor  c                                           ; $7a3c: $a9
	adc  $b9                                         ; $7a3d: $ce $b9
	adc  c                                           ; $7a3f: $89
	xor  d                                           ; $7a40: $aa
	add  [hl]                                        ; $7a41: $86
	ld   h, [hl]                                     ; $7a42: $66
	ld   [hl], a                                     ; $7a43: $77
	ld   h, e                                        ; $7a44: $63
	ld   de, $ac16                                   ; $7a45: $11 $16 $ac
	call $b8cd                                       ; $7a48: $cd $cd $b8
	xor  e                                           ; $7a4b: $ab
	cp   d                                           ; $7a4c: $ba
	add  [hl]                                        ; $7a4d: $86
	ld   a, b                                        ; $7a4e: $78
	halt                                             ; $7a4f: $76
	ld   h, l                                        ; $7a50: $65
	ld   b, d                                        ; $7a51: $42
	ld   de, $c97d                                   ; $7a52: $11 $7d $c9
	cp   l                                           ; $7a55: $bd
	db   $fc                                         ; $7a56: $fc
	ld   [hl], l                                     ; $7a57: $75
	sbc  [hl]                                        ; $7a58: $9e
	ei                                               ; $7a59: $fb
	ld   d, e                                        ; $7a5a: $53
	ld   b, a                                        ; $7a5b: $47
	xor  b                                           ; $7a5c: $a8
	ld   h, e                                        ; $7a5d: $63
	ld   de, $aa15                                   ; $7a5e: $11 $15 $aa
	cp   h                                           ; $7a61: $bc
	call c, $8ab8                                    ; $7a62: $dc $b8 $8a
	cp   l                                           ; $7a65: $bd
	ret  c                                           ; $7a66: $d8

	ld   b, e                                        ; $7a67: $43
	scf                                              ; $7a68: $37
	sbc  b                                           ; $7a69: $98
	ld   b, c                                        ; $7a6a: $41
	ld   de, $c78e                                   ; $7a6b: $11 $8e $c7
	ld   a, h                                        ; $7a6e: $7c
	rst  $38                                         ; $7a6f: $ff
	and  h                                           ; $7a70: $a4
	ld   l, e                                        ; $7a71: $6b
	db   $ed                                         ; $7a72: $ed
	add  h                                           ; $7a73: $84
	ld   b, [hl]                                     ; $7a74: $46
	adc  b                                           ; $7a75: $88
	ld   h, e                                        ; $7a76: $63
	ld   hl, $bc15                                   ; $7a77: $21 $15 $bc
	xor  c                                           ; $7a7a: $a9
	sbc  h                                           ; $7a7b: $9c
	db   $ec                                         ; $7a7c: $ec
	xor  b                                           ; $7a7d: $a8
	sbc  h                                           ; $7a7e: $9c
	jp   c, $3764                                    ; $7a7f: $da $64 $37

	xor  c                                           ; $7a82: $a9
	ld   b, c                                        ; $7a83: $41
	ld   de, $c86b                                   ; $7a84: $11 $6b $c8
	adc  d                                           ; $7a87: $8a
	rst  $28                                         ; $7a88: $ef
	rst  $10                                         ; $7a89: $d7
	ld   a, c                                        ; $7a8a: $79
	cp   l                                           ; $7a8b: $bd
	xor  b                                           ; $7a8c: $a8
	halt                                             ; $7a8d: $76
	ld   b, l                                        ; $7a8e: $45
	ld   d, a                                        ; $7a8f: $57
	add  h                                           ; $7a90: $84
	ld   de, $dd3b                                   ; $7a91: $11 $3b $dd
	jp   z, $a9cd                                    ; $7a94: $ca $cd $a9

	sbc  e                                           ; $7a97: $9b
	cp   e                                           ; $7a98: $bb
	add  [hl]                                        ; $7a99: $86
	ld   h, [hl]                                     ; $7a9a: $66
	ld   a, c                                        ; $7a9b: $79
	add  l                                           ; $7a9c: $85
	ld   hl, $bc13                                   ; $7a9d: $21 $13 $bc
	xor  d                                           ; $7aa0: $aa
	rst  JumpTable                                         ; $7aa1: $df
	jp   hl                                          ; $7aa2: $e9


	ld   d, a                                        ; $7aa3: $57
	cp   [hl]                                        ; $7aa4: $be
	ret  c                                           ; $7aa5: $d8

	ld   b, h                                        ; $7aa6: $44
	ld   e, b                                        ; $7aa7: $58
	xor  c                                           ; $7aa8: $a9
	ld   h, d                                        ; $7aa9: $62
	ld   de, $a939                                   ; $7aaa: $11 $39 $a9
	adc  c                                           ; $7aad: $89
	cp   a                                           ; $7aae: $bf
	db   $fc                                         ; $7aaf: $fc
	add  a                                           ; $7ab0: $87
	sbc  e                                           ; $7ab1: $9b
	cp   d                                           ; $7ab2: $ba
	ld   [hl], l                                     ; $7ab3: $75
	ld   b, [hl]                                     ; $7ab4: $46
	adc  c                                           ; $7ab5: $89
	ld   h, d                                        ; $7ab6: $62
	ld   de, $9a49                                   ; $7ab7: $11 $49 $9a
	call $99cb                                       ; $7aba: $cd $cb $99
	call z, $89a8                                    ; $7abd: $cc $a8 $89
	sub  a                                           ; $7ac0: $97
	ld   h, [hl]                                     ; $7ac1: $66
	ld   [hl], a                                     ; $7ac2: $77
	ld   d, c                                        ; $7ac3: $51
	ld   de, $ee4b                                   ; $7ac4: $11 $4b $ee
	cp   d                                           ; $7ac7: $ba
	xor  e                                           ; $7ac8: $ab
	call c, $99b9                                    ; $7ac9: $dc $b9 $99
	add  a                                           ; $7acc: $87
	ld   h, [hl]                                     ; $7acd: $66
	ld   a, c                                        ; $7ace: $79
	sub  [hl]                                        ; $7acf: $96
	ld   hl, $8b14                                   ; $7ad0: $21 $14 $8b
	halt                                             ; $7ad3: $76
	adc  l                                           ; $7ad4: $8d
	rst  $38                                         ; $7ad5: $ff
	or   [hl]                                        ; $7ad6: $b6
	ld   a, d                                        ; $7ad7: $7a
	res  3, b                                        ; $7ad8: $cb $98
	sbc  b                                           ; $7ada: $98
	ld   d, h                                        ; $7adb: $54
	dec  [hl]                                        ; $7adc: $35
	ld   h, h                                        ; $7add: $64
	ld   hl, $a76a                                   ; $7ade: $21 $6a $a7
	sbc  e                                           ; $7ae1: $9b
	rst  $38                                         ; $7ae2: $ff
	sub  $47                                         ; $7ae3: $d6 $47
	cp   [hl]                                        ; $7ae5: $be
	cp   b                                           ; $7ae6: $b8
	ld   d, [hl]                                     ; $7ae7: $56
	ld   [hl], a                                     ; $7ae8: $77
	ld   h, h                                        ; $7ae9: $64
	ld   [hl-], a                                    ; $7aea: $32
	ld   [hl+], a                                    ; $7aeb: $22
	ld   a, c                                        ; $7aec: $79
	sbc  d                                           ; $7aed: $9a
	xor  h                                           ; $7aee: $ac
	rst  $38                                         ; $7aef: $ff
	and  a                                           ; $7af0: $a7
	ld   l, c                                        ; $7af1: $69
	call z, $77a7                                    ; $7af2: $cc $a7 $77
	halt                                             ; $7af5: $76
	ld   b, e                                        ; $7af6: $43
	ld   b, h                                        ; $7af7: $44
	ld   b, e                                        ; $7af8: $43
	ld   d, [hl]                                     ; $7af9: $56
	ld   l, c                                        ; $7afa: $69
	rst  $28                                         ; $7afb: $ef
	db   $fc                                         ; $7afc: $fc
	ld   h, a                                        ; $7afd: $67
	cp   h                                           ; $7afe: $bc
	jp   c, $8777                                    ; $7aff: $da $77 $87

	ld   h, l                                        ; $7b02: $65
	ld   d, l                                        ; $7b03: $55
	ld   d, e                                        ; $7b04: $53
	inc  h                                           ; $7b05: $24
	ld   a, b                                        ; $7b06: $78
	ld   h, a                                        ; $7b07: $67
	cp   a                                           ; $7b08: $bf
	db   $fd                                         ; $7b09: $fd
	ld   h, l                                        ; $7b0a: $65
	sbc  l                                           ; $7b0b: $9d
	db   $eb                                         ; $7b0c: $eb
	ld   [hl], a                                     ; $7b0d: $77
	sbc  b                                           ; $7b0e: $98
	ld   h, l                                        ; $7b0f: $65
	ld   d, l                                        ; $7b10: $55
	ld   b, d                                        ; $7b11: $42
	inc  d                                           ; $7b12: $14
	ld   a, c                                        ; $7b13: $79
	halt                                             ; $7b14: $76
	sbc  [hl]                                        ; $7b15: $9e
	rst  $38                                         ; $7b16: $ff
	sub  l                                           ; $7b17: $95
	ld   a, d                                        ; $7b18: $7a
	call c, $9a87                                    ; $7b19: $dc $87 $9a
	add  l                                           ; $7b1c: $85
	dec  [hl]                                        ; $7b1d: $35
	ld   h, l                                        ; $7b1e: $65
	ld   hl, $b928                                   ; $7b1f: $21 $28 $b9
	ld   a, d                                        ; $7b22: $7a
	rst  $28                                         ; $7b23: $ef
	reti                                             ; $7b24: $d9


	ld   l, c                                        ; $7b25: $69
	call $89b8                                       ; $7b26: $cd $b8 $89
	ld   [hl], l                                     ; $7b29: $75
	ld   b, l                                        ; $7b2a: $45
	add  a                                           ; $7b2b: $87
	ld   sp, $9c15                                   ; $7b2c: $31 $15 $9c
	res  7, e                                        ; $7b2f: $cb $bb
	cp   e                                           ; $7b31: $bb
	xor  e                                           ; $7b32: $ab
	xor  c                                           ; $7b33: $a9
	xor  c                                           ; $7b34: $a9
	sbc  c                                           ; $7b35: $99
	halt                                             ; $7b36: $76
	ld   d, l                                        ; $7b37: $55
	ld   h, [hl]                                     ; $7b38: $66
	ld   b, c                                        ; $7b39: $41
	dec  d                                           ; $7b3a: $15
	sbc  b                                           ; $7b3b: $98
	ld   l, b                                        ; $7b3c: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b3d: $cf
	db   $fc                                         ; $7b3e: $fc
	ld   l, b                                        ; $7b3f: $68
	cp   l                                           ; $7b40: $bd
	cp   c                                           ; $7b41: $b9
	adc  d                                           ; $7b42: $8a
	sub  l                                           ; $7b43: $95
	ld   b, e                                        ; $7b44: $43
	ld   a, d                                        ; $7b45: $7a
	sub  d                                           ; $7b46: $92
	ld   de, $a95a                                   ; $7b47: $11 $5a $a9
	xor  l                                           ; $7b4a: $ad
	db   $ed                                         ; $7b4b: $ed
	add  a                                           ; $7b4c: $87
	xor  [hl]                                        ; $7b4d: $ae
	ret  c                                           ; $7b4e: $d8

	ld   d, l                                        ; $7b4f: $55
	xor  e                                           ; $7b50: $ab
	ld   [hl], e                                     ; $7b51: $73
	ld   h, $99                                      ; $7b52: $26 $99
	ld   sp, $9a15                                   ; $7b54: $31 $15 $9a
	xor  e                                           ; $7b57: $ab
	sbc  $b8                                         ; $7b58: $de $b8
	adc  e                                           ; $7b5a: $8b
	db   $dd                                         ; $7b5b: $dd
	sub  [hl]                                        ; $7b5c: $96
	ld   h, a                                        ; $7b5d: $67
	ld   [hl], a                                     ; $7b5e: $77
	halt                                             ; $7b5f: $76
	ld   h, l                                        ; $7b60: $65
	ld   [hl+], a                                    ; $7b61: $22
	ld   h, $88                                      ; $7b62: $26 $88
	adc  c                                           ; $7b64: $89
	rst  JumpTable                                         ; $7b65: $df
	jp   c, $dd8b                                    ; $7b66: $da $8b $dd

	sub  l                                           ; $7b69: $95
	ld   e, b                                        ; $7b6a: $58
	xor  d                                           ; $7b6b: $aa
	ld   [hl], h                                     ; $7b6c: $74
	ld   b, l                                        ; $7b6d: $45
	ld   h, h                                        ; $7b6e: $64
	ld   [hl+], a                                    ; $7b6f: $22
	ld   e, c                                        ; $7b70: $59
	adc  b                                           ; $7b71: $88
	xor  l                                           ; $7b72: $ad
	db   $ed                                         ; $7b73: $ed
	sbc  b                                           ; $7b74: $98
	call $56b7                                       ; $7b75: $cd $b7 $56
	xor  d                                           ; $7b78: $aa
	halt                                             ; $7b79: $76
	ld   d, [hl]                                     ; $7b7a: $56
	ld   [hl], h                                     ; $7b7b: $74
	ld   [hl+], a                                    ; $7b7c: $22
	ld   [hl], $96                                   ; $7b7d: $36 $96
	ld   l, d                                        ; $7b7f: $6a
	rst  $28                                         ; $7b80: $ef
	jp   c, wDormRoomAnimationStep                                    ; $7b81: $da $79 $cc

	sub  [hl]                                        ; $7b84: $96
	ld   a, b                                        ; $7b85: $78
	add  a                                           ; $7b86: $87
	ld   h, l                                        ; $7b87: $65
	ld   h, a                                        ; $7b88: $67
	ld   h, h                                        ; $7b89: $64
	ld   [hl+], a                                    ; $7b8a: $22
	ld   e, c                                        ; $7b8b: $59
	add  a                                           ; $7b8c: $87
	sbc  h                                           ; $7b8d: $9c
	rst  $28                                         ; $7b8e: $ef
	or   a                                           ; $7b8f: $b7
	ld   a, d                                        ; $7b90: $7a
	res  2, a                                        ; $7b91: $cb $97
	ld   [hl], a                                     ; $7b93: $77
	ld   h, l                                        ; $7b94: $65
	ld   d, a                                        ; $7b95: $57
	xor  c                                           ; $7b96: $a9
	ld   b, c                                        ; $7b97: $41
	inc  d                                           ; $7b98: $14
	cp   h                                           ; $7b99: $bc
	sub  [hl]                                        ; $7b9a: $96
	adc  l                                           ; $7b9b: $8d
	cp   $84                                         ; $7b9c: $fe $84
	ld   a, e                                        ; $7b9e: $7b
	db   $eb                                         ; $7b9f: $eb
	ld   [hl], h                                     ; $7ba0: $74
	ld   e, b                                        ; $7ba1: $58
	sbc  d                                           ; $7ba2: $9a
	ld   [hl], l                                     ; $7ba3: $75
	ld   b, e                                        ; $7ba4: $43
	inc  hl                                          ; $7ba5: $23
	ld   e, c                                        ; $7ba6: $59
	cp   b                                           ; $7ba7: $b8
	ld   b, l                                        ; $7ba8: $45
	cp   a                                           ; $7ba9: $bf
	cp   $65                                         ; $7baa: $fe $65
	ld   a, d                                        ; $7bac: $7a
	cp   c                                           ; $7bad: $b9
	ld   a, c                                        ; $7bae: $79
	sub  a                                           ; $7baf: $97
	ld   d, h                                        ; $7bb0: $54
	ld   l, d                                        ; $7bb1: $6a
	add  h                                           ; $7bb2: $84
	ld   bc, $a66b                                   ; $7bb3: $01 $6b $a6
	ld   l, c                                        ; $7bb6: $69
	rst  $38                                         ; $7bb7: $ff
	rst  $20                                         ; $7bb8: $e7
	ld   d, a                                        ; $7bb9: $57
	xor  l                                           ; $7bba: $ad
	cp   c                                           ; $7bbb: $b9
	add  a                                           ; $7bbc: $87
	ld   d, h                                        ; $7bbd: $54
	ld   e, b                                        ; $7bbe: $58
	cp   d                                           ; $7bbf: $ba
	ld   b, c                                        ; $7bc0: $41
	dec  d                                           ; $7bc1: $15
	xor  e                                           ; $7bc2: $ab
	ld   [hl], l                                     ; $7bc3: $75
	sbc  [hl]                                        ; $7bc4: $9e
	db   $fd                                         ; $7bc5: $fd
	halt                                             ; $7bc6: $76
	xor  l                                           ; $7bc7: $ad
	ret  z                                           ; $7bc8: $c8

	ld   d, a                                        ; $7bc9: $57
	sbc  c                                           ; $7bca: $99
	ld   d, h                                        ; $7bcb: $54
	ld   e, c                                        ; $7bcc: $59
	and  [hl]                                        ; $7bcd: $a6
	ld   de, $b949                                   ; $7bce: $11 $49 $b9
	ld   d, l                                        ; $7bd1: $55
	xor  l                                           ; $7bd2: $ad
	cp   $97                                         ; $7bd3: $fe $97
	ld   a, c                                        ; $7bd5: $79
	xor  d                                           ; $7bd6: $aa
	sbc  b                                           ; $7bd7: $98
	halt                                             ; $7bd8: $76
	ld   h, [hl]                                     ; $7bd9: $66
	ld   h, a                                        ; $7bda: $67
	add  [hl]                                        ; $7bdb: $86
	ld   b, d                                        ; $7bdc: $42
	dec  [hl]                                        ; $7bdd: $35
	sbc  c                                           ; $7bde: $99
	adc  b                                           ; $7bdf: $88
	cp   l                                           ; $7be0: $bd
	db   $eb                                         ; $7be1: $eb
	add  a                                           ; $7be2: $87
	xor  d                                           ; $7be3: $aa
	ret                                              ; $7be4: $c9


	ld   [hl], a                                     ; $7be5: $77
	add  a                                           ; $7be6: $87
	ld   h, l                                        ; $7be7: $65
	ld   e, b                                        ; $7be8: $58
	add  [hl]                                        ; $7be9: $86
	ld   [hl-], a                                    ; $7bea: $32
	ld   c, b                                        ; $7beb: $48
	add  [hl]                                        ; $7bec: $86
	ld   l, d                                        ; $7bed: $6a
	rst  $28                                         ; $7bee: $ef
	rst  $10                                         ; $7bef: $d7
	ld   l, c                                        ; $7bf0: $69
	call c, Call_0e5_6996                            ; $7bf1: $dc $96 $69
	add  [hl]                                        ; $7bf4: $86
	ld   d, [hl]                                     ; $7bf5: $56
	adc  d                                           ; $7bf6: $8a
	ld   [hl], d                                     ; $7bf7: $72
	inc  de                                          ; $7bf8: $13
	ld   a, d                                        ; $7bf9: $7a
	sub  l                                           ; $7bfa: $95
	ld   e, c                                        ; $7bfb: $59
	xor  $ca                                         ; $7bfc: $ee $ca
	xor  d                                           ; $7bfe: $aa
	xor  d                                           ; $7bff: $aa
	adc  b                                           ; $7c00: $88
	sbc  d                                           ; $7c01: $9a
	add  l                                           ; $7c02: $85
	ld   b, [hl]                                     ; $7c03: $46
	adc  c                                           ; $7c04: $89
	ld   [hl], e                                     ; $7c05: $73
	ld   de, $b77d                                   ; $7c06: $11 $7d $b7
	ld   b, l                                        ; $7c09: $45
	cp   a                                           ; $7c0a: $bf
	ei                                               ; $7c0b: $fb
	adc  c                                           ; $7c0c: $89
	xor  d                                           ; $7c0d: $aa
	add  [hl]                                        ; $7c0e: $86
	adc  d                                           ; $7c0f: $8a
	sbc  b                                           ; $7c10: $98
	ld   h, l                                        ; $7c11: $65
	ld   a, b                                        ; $7c12: $78
	ld   [hl], e                                     ; $7c13: $73
	inc  de                                          ; $7c14: $13
	ld   a, c                                        ; $7c15: $79
	add  [hl]                                        ; $7c16: $86
	ld   a, d                                        ; $7c17: $7a
	call z, $bbbb                                    ; $7c18: $cc $bb $bb
	and  a                                           ; $7c1b: $a7
	ld   l, b                                        ; $7c1c: $68
	cp   d                                           ; $7c1d: $ba
	add  [hl]                                        ; $7c1e: $86
	ld   h, a                                        ; $7c1f: $67
	add  a                                           ; $7c20: $87
	ld   d, h                                        ; $7c21: $54
	ld   d, l                                        ; $7c22: $55
	ld   d, l                                        ; $7c23: $55
	ld   b, [hl]                                     ; $7c24: $46
	adc  e                                           ; $7c25: $8b
	call z, $aaa9                                    ; $7c26: $cc $a9 $aa
	cp   d                                           ; $7c29: $ba
	sbc  b                                           ; $7c2a: $98
	adc  c                                           ; $7c2b: $89
	sub  a                                           ; $7c2c: $97
	ld   h, a                                        ; $7c2d: $67
	ld   [hl], a                                     ; $7c2e: $77
	halt                                             ; $7c2f: $76
	ld   b, h                                        ; $7c30: $44
	ld   d, [hl]                                     ; $7c31: $56
	ld   l, b                                        ; $7c32: $68
	adc  c                                           ; $7c33: $89
	adc  d                                           ; $7c34: $8a
	cp   l                                           ; $7c35: $bd
	ld   [$8b86], a                                  ; $7c36: $ea $86 $8b
	cp   c                                           ; $7c39: $b9
	halt                                             ; $7c3a: $76
	ld   a, b                                        ; $7c3b: $78
	halt                                             ; $7c3c: $76
	ld   h, a                                        ; $7c3d: $67
	halt                                             ; $7c3e: $76
	ld   b, e                                        ; $7c3f: $43
	ld   b, a                                        ; $7c40: $47
	adc  b                                           ; $7c41: $88
	sbc  d                                           ; $7c42: $9a
	call z, $9bb8                                    ; $7c43: $cc $b8 $9b
	xor  c                                           ; $7c46: $a9
	adc  b                                           ; $7c47: $88
	sbc  b                                           ; $7c48: $98
	halt                                             ; $7c49: $76
	ld   l, b                                        ; $7c4a: $68
	sbc  c                                           ; $7c4b: $99
	ld   h, d                                        ; $7c4c: $62
	ld   [de], a                                     ; $7c4d: $12
	adc  e                                           ; $7c4e: $8b
	cp   b                                           ; $7c4f: $b8
	ld   b, l                                        ; $7c50: $45
	xor  l                                           ; $7c51: $ad
	call c, $a8aa                                    ; $7c52: $dc $aa $a8
	ld   [hl], a                                     ; $7c55: $77
	adc  e                                           ; $7c56: $8b
	xor  b                                           ; $7c57: $a8
	ld   h, [hl]                                     ; $7c58: $66
	ld   h, a                                        ; $7c59: $67
	ld   h, l                                        ; $7c5a: $65
	ld   b, h                                        ; $7c5b: $44
	ld   d, a                                        ; $7c5c: $57
	sbc  b                                           ; $7c5d: $98
	ld   [hl], a                                     ; $7c5e: $77
	sbc  e                                           ; $7c5f: $9b
	call z, $98aa                                    ; $7c60: $cc $aa $98
	adc  b                                           ; $7c63: $88
	adc  d                                           ; $7c64: $8a
	sbc  c                                           ; $7c65: $99
	halt                                             ; $7c66: $76
	ld   h, [hl]                                     ; $7c67: $66
	halt                                             ; $7c68: $76
	ld   d, h                                        ; $7c69: $54
	ld   b, [hl]                                     ; $7c6a: $46
	adc  c                                           ; $7c6b: $89
	ld   [hl], l                                     ; $7c6c: $75
	ld   a, e                                        ; $7c6d: $7b
	db   $dd                                         ; $7c6e: $dd
	xor  b                                           ; $7c6f: $a8
	sbc  h                                           ; $7c70: $9c
	ret                                              ; $7c71: $c9


	ld   h, [hl]                                     ; $7c72: $66
	sbc  e                                           ; $7c73: $9b
	and  a                                           ; $7c74: $a7
	ld   h, [hl]                                     ; $7c75: $66
	ld   h, a                                        ; $7c76: $67
	ld   h, h                                        ; $7c77: $64
	dec  [hl]                                        ; $7c78: $35
	ld   a, c                                        ; $7c79: $79
	halt                                             ; $7c7a: $76
	ld   l, c                                        ; $7c7b: $69
	call $99db                                       ; $7c7c: $cd $db $99
	sbc  b                                           ; $7c7f: $98
	adc  c                                           ; $7c80: $89
	cp   e                                           ; $7c81: $bb
	and  [hl]                                        ; $7c82: $a6
	ld   d, [hl]                                     ; $7c83: $56
	adc  c                                           ; $7c84: $89
	ld   [hl], h                                     ; $7c85: $74
	inc  sp                                          ; $7c86: $33
	ld   d, a                                        ; $7c87: $57
	ld   [hl], l                                     ; $7c88: $75
	ld   d, a                                        ; $7c89: $57
	cp   h                                           ; $7c8a: $bc
	res  7, d                                        ; $7c8b: $cb $ba
	sbc  c                                           ; $7c8d: $99
	add  a                                           ; $7c8e: $87
	xor  e                                           ; $7c8f: $ab
	cp   b                                           ; $7c90: $b8
	ld   d, l                                        ; $7c91: $55
	ld   l, b                                        ; $7c92: $68
	sub  a                                           ; $7c93: $97
	ld   b, d                                        ; $7c94: $42
	ld   [hl], $88                                   ; $7c95: $36 $88
	ld   [hl], l                                     ; $7c97: $75
	ld   l, c                                        ; $7c98: $69
	cp   e                                           ; $7c99: $bb
	cp   d                                           ; $7c9a: $ba
	xor  h                                           ; $7c9b: $ac
	jp   z, $8c66                                    ; $7c9c: $ca $66 $8c

	ret  z                                           ; $7c9f: $c8

	ld   d, h                                        ; $7ca0: $54
	ld   d, a                                        ; $7ca1: $57
	add  [hl]                                        ; $7ca2: $86
	ld   d, e                                        ; $7ca3: $53
	ld   b, [hl]                                     ; $7ca4: $46
	adc  b                                           ; $7ca5: $88
	ld   h, [hl]                                     ; $7ca6: $66
	ld   a, d                                        ; $7ca7: $7a
	call z, $a8db                                    ; $7ca8: $cc $db $a8
	adc  b                                           ; $7cab: $88
	adc  d                                           ; $7cac: $8a
	cp   e                                           ; $7cad: $bb
	ld   [hl], l                                     ; $7cae: $75
	ld   d, [hl]                                     ; $7caf: $56
	ld   a, b                                        ; $7cb0: $78
	ld   [hl], l                                     ; $7cb1: $75
	ld   b, e                                        ; $7cb2: $43
	ld   b, [hl]                                     ; $7cb3: $46
	ld   [hl], a                                     ; $7cb4: $77
	ld   [hl], a                                     ; $7cb5: $77
	sbc  h                                           ; $7cb6: $9c
	call c, $8aa8                                    ; $7cb7: $dc $a8 $8a
	cp   d                                           ; $7cba: $ba
	adc  b                                           ; $7cbb: $88
	adc  b                                           ; $7cbc: $88
	add  [hl]                                        ; $7cbd: $86
	ld   h, a                                        ; $7cbe: $67
	halt                                             ; $7cbf: $76
	ld   d, h                                        ; $7cc0: $54
	inc  [hl]                                        ; $7cc1: $34
	ld   h, a                                        ; $7cc2: $67
	sbc  b                                           ; $7cc3: $98
	ld   a, b                                        ; $7cc4: $78
	xor  e                                           ; $7cc5: $ab
	cp   e                                           ; $7cc6: $bb
	xor  e                                           ; $7cc7: $ab
	cp   d                                           ; $7cc8: $ba
	sub  [hl]                                        ; $7cc9: $96
	ld   l, c                                        ; $7cca: $69
	cp   e                                           ; $7ccb: $bb
	add  l                                           ; $7ccc: $85
	ld   b, [hl]                                     ; $7ccd: $46
	ld   [hl], a                                     ; $7cce: $77
	ld   [hl], l                                     ; $7ccf: $75
	inc  sp                                          ; $7cd0: $33
	ld   l, b                                        ; $7cd1: $68
	sbc  c                                           ; $7cd2: $99
	ld   a, b                                        ; $7cd3: $78
	cp   h                                           ; $7cd4: $bc
	jp   z, $ba9a                                    ; $7cd5: $ca $9a $ba

	ld   [hl], l                                     ; $7cd8: $75
	ld   a, d                                        ; $7cd9: $7a
	jp   z, Jump_0e5_6864                            ; $7cda: $ca $64 $68

	add  [hl]                                        ; $7cdd: $86
	ld   [hl+], a                                    ; $7cde: $22
	ld   c, c                                        ; $7cdf: $49
	sbc  b                                           ; $7ce0: $98
	ld   b, d                                        ; $7ce1: $42
	ld   e, e                                        ; $7ce2: $5b
	rst  $38                                         ; $7ce3: $ff
	ret                                              ; $7ce4: $c9


	ld   a, c                                        ; $7ce5: $79
	xor  d                                           ; $7ce6: $aa
	sbc  b                                           ; $7ce7: $98
	adc  d                                           ; $7ce8: $8a
	and  a                                           ; $7ce9: $a7
	ld   d, [hl]                                     ; $7cea: $56
	ld   a, c                                        ; $7ceb: $79
	sub  a                                           ; $7cec: $97
	ld   d, h                                        ; $7ced: $54
	inc  sp                                          ; $7cee: $33
	ld   l, c                                        ; $7cef: $69
	xor  b                                           ; $7cf0: $a8
	ld   h, [hl]                                     ; $7cf1: $66
	xor  h                                           ; $7cf2: $ac
	res  3, c                                        ; $7cf3: $cb $99
	xor  d                                           ; $7cf5: $aa
	add  [hl]                                        ; $7cf6: $86
	ld   a, d                                        ; $7cf7: $7a
	cp   d                                           ; $7cf8: $ba
	ld   [hl], l                                     ; $7cf9: $75
	ld   h, a                                        ; $7cfa: $67
	sub  a                                           ; $7cfb: $97
	ld   d, e                                        ; $7cfc: $53
	ld   b, l                                        ; $7cfd: $45
	ld   a, c                                        ; $7cfe: $79
	add  a                                           ; $7cff: $87
	ld   h, a                                        ; $7d00: $67
	xor  h                                           ; $7d01: $ac
	db   $db                                         ; $7d02: $db
	sbc  b                                           ; $7d03: $98
	sbc  d                                           ; $7d04: $9a
	sub  a                                           ; $7d05: $97
	ld   l, b                                        ; $7d06: $68
	cp   e                                           ; $7d07: $bb
	sub  a                                           ; $7d08: $97
	ld   d, l                                        ; $7d09: $55
	ld   h, a                                        ; $7d0a: $67
	halt                                             ; $7d0b: $76
	ld   d, l                                        ; $7d0c: $55
	ld   h, a                                        ; $7d0d: $67
	halt                                             ; $7d0e: $76
	ld   d, [hl]                                     ; $7d0f: $56
	sbc  e                                           ; $7d10: $9b
	call z, $9aa9                                    ; $7d11: $cc $a9 $9a
	adc  b                                           ; $7d14: $88
	adc  d                                           ; $7d15: $8a
	cp   d                                           ; $7d16: $ba
	sub  [hl]                                        ; $7d17: $96
	ld   d, l                                        ; $7d18: $55
	adc  d                                           ; $7d19: $8a
	sub  a                                           ; $7d1a: $97
	ld   d, e                                        ; $7d1b: $53
	dec  [hl]                                        ; $7d1c: $35
	ld   a, b                                        ; $7d1d: $78
	sub  a                                           ; $7d1e: $97
	ld   a, b                                        ; $7d1f: $78
	xor  d                                           ; $7d20: $aa
	cp   d                                           ; $7d21: $ba
	xor  e                                           ; $7d22: $ab
	cp   d                                           ; $7d23: $ba
	halt                                             ; $7d24: $76
	ld   a, d                                        ; $7d25: $7a
	jp   z, Jump_0e5_5775                            ; $7d26: $ca $75 $57

	sbc  b                                           ; $7d29: $98
	ld   [hl], l                                     ; $7d2a: $75
	ld   b, h                                        ; $7d2b: $44
	ld   d, a                                        ; $7d2c: $57
	ld   [hl], a                                     ; $7d2d: $77
	ld   a, b                                        ; $7d2e: $78
	sbc  e                                           ; $7d2f: $9b
	xor  d                                           ; $7d30: $aa
	sbc  c                                           ; $7d31: $99
	xor  e                                           ; $7d32: $ab
	xor  b                                           ; $7d33: $a8
	ld   [hl], a                                     ; $7d34: $77
	sbc  e                                           ; $7d35: $9b
	xor  c                                           ; $7d36: $a9
	ld   h, [hl]                                     ; $7d37: $66
	ld   a, c                                        ; $7d38: $79
	add  [hl]                                        ; $7d39: $86
	ld   b, h                                        ; $7d3a: $44
	ld   b, [hl]                                     ; $7d3b: $46
	adc  b                                           ; $7d3c: $88
	halt                                             ; $7d3d: $76
	ld   a, b                                        ; $7d3e: $78
	xor  d                                           ; $7d3f: $aa
	xor  e                                           ; $7d40: $ab
	cp   e                                           ; $7d41: $bb
	sbc  b                                           ; $7d42: $98
	ld   a, b                                        ; $7d43: $78
	sbc  d                                           ; $7d44: $9a
	xor  c                                           ; $7d45: $a9
	sub  a                                           ; $7d46: $97
	ld   h, [hl]                                     ; $7d47: $66
	ld   a, b                                        ; $7d48: $78
	halt                                             ; $7d49: $76
	ld   d, h                                        ; $7d4a: $54
	ld   d, [hl]                                     ; $7d4b: $56
	ld   [hl], a                                     ; $7d4c: $77
	adc  b                                           ; $7d4d: $88
	adc  b                                           ; $7d4e: $88
	ld   a, b                                        ; $7d4f: $78
	xor  h                                           ; $7d50: $ac
	cp   e                                           ; $7d51: $bb
	sub  a                                           ; $7d52: $97
	ld   a, c                                        ; $7d53: $79
	xor  d                                           ; $7d54: $aa
	xor  c                                           ; $7d55: $a9
	sub  a                                           ; $7d56: $97
	ld   h, l                                        ; $7d57: $65
	ld   l, b                                        ; $7d58: $68
	sub  a                                           ; $7d59: $97
	ld   d, h                                        ; $7d5a: $54
	ld   d, a                                        ; $7d5b: $57
	sbc  b                                           ; $7d5c: $98
	ld   h, [hl]                                     ; $7d5d: $66
	ld   a, d                                        ; $7d5e: $7a
	xor  d                                           ; $7d5f: $aa
	sbc  b                                           ; $7d60: $98
	sbc  e                                           ; $7d61: $9b
	xor  b                                           ; $7d62: $a8
	ld   a, b                                        ; $7d63: $78
	sbc  d                                           ; $7d64: $9a
	xor  c                                           ; $7d65: $a9
	add  a                                           ; $7d66: $87
	ld   [hl], a                                     ; $7d67: $77
	ld   a, b                                        ; $7d68: $78
	halt                                             ; $7d69: $76
	ld   b, e                                        ; $7d6a: $43
	ld   b, [hl]                                     ; $7d6b: $46
	sbc  b                                           ; $7d6c: $98
	halt                                             ; $7d6d: $76
	ld   a, d                                        ; $7d6e: $7a
	call z, $8999                                    ; $7d6f: $cc $99 $89
	xor  c                                           ; $7d72: $a9
	ld   [hl], a                                     ; $7d73: $77
	adc  d                                           ; $7d74: $8a
	xor  d                                           ; $7d75: $aa
	add  a                                           ; $7d76: $87
	ld   a, b                                        ; $7d77: $78
	ld   [hl], a                                     ; $7d78: $77
	ld   h, l                                        ; $7d79: $65
	ld   b, h                                        ; $7d7a: $44
	ld   d, a                                        ; $7d7b: $57
	adc  b                                           ; $7d7c: $88
	halt                                             ; $7d7d: $76
	ld   a, c                                        ; $7d7e: $79
	xor  e                                           ; $7d7f: $ab
	cp   d                                           ; $7d80: $ba
	xor  d                                           ; $7d81: $aa
	sbc  b                                           ; $7d82: $98
	adc  b                                           ; $7d83: $88
	sbc  d                                           ; $7d84: $9a
	xor  d                                           ; $7d85: $aa
	add  a                                           ; $7d86: $87
	ld   h, [hl]                                     ; $7d87: $66
	ld   a, b                                        ; $7d88: $78
	ld   [hl], a                                     ; $7d89: $77
	ld   d, l                                        ; $7d8a: $55
	ld   d, [hl]                                     ; $7d8b: $56
	ld   [hl], a                                     ; $7d8c: $77
	ld   [hl], a                                     ; $7d8d: $77
	ld   a, c                                        ; $7d8e: $79
	xor  d                                           ; $7d8f: $aa
	sbc  c                                           ; $7d90: $99
	sbc  e                                           ; $7d91: $9b
	cp   d                                           ; $7d92: $ba
	sub  a                                           ; $7d93: $97
	adc  c                                           ; $7d94: $89
	xor  d                                           ; $7d95: $aa
	sbc  b                                           ; $7d96: $98
	ld   [hl], a                                     ; $7d97: $77
	ld   [hl], a                                     ; $7d98: $77
	ld   [hl], a                                     ; $7d99: $77
	ld   h, [hl]                                     ; $7d9a: $66
	ld   d, l                                        ; $7d9b: $55
	ld   d, a                                        ; $7d9c: $57
	adc  c                                           ; $7d9d: $89
	ld   [hl], a                                     ; $7d9e: $77
	ld   a, c                                        ; $7d9f: $79
	xor  c                                           ; $7da0: $a9
	xor  d                                           ; $7da1: $aa
	sbc  d                                           ; $7da2: $9a
	xor  c                                           ; $7da3: $a9
	add  a                                           ; $7da4: $87
	adc  d                                           ; $7da5: $8a
	cp   e                                           ; $7da6: $bb
	sub  a                                           ; $7da7: $97
	ld   h, [hl]                                     ; $7da8: $66
	ld   a, b                                        ; $7da9: $78
	add  a                                           ; $7daa: $87
	ld   d, h                                        ; $7dab: $54
	ld   b, l                                        ; $7dac: $45
	adc  b                                           ; $7dad: $88
	add  [hl]                                        ; $7dae: $86
	ld   h, a                                        ; $7daf: $67
	xor  d                                           ; $7db0: $aa
	sbc  c                                           ; $7db1: $99
	sbc  d                                           ; $7db2: $9a
	cp   e                                           ; $7db3: $bb
	and  a                                           ; $7db4: $a7
	ld   a, b                                        ; $7db5: $78
	xor  e                                           ; $7db6: $ab
	xor  c                                           ; $7db7: $a9
	ld   [hl], a                                     ; $7db8: $77
	ld   [hl], a                                     ; $7db9: $77
	ld   [hl], a                                     ; $7dba: $77
	ld   h, [hl]                                     ; $7dbb: $66
	ld   h, l                                        ; $7dbc: $65
	ld   d, [hl]                                     ; $7dbd: $56
	sbc  d                                           ; $7dbe: $9a
	sub  [hl]                                        ; $7dbf: $96
	ld   d, [hl]                                     ; $7dc0: $56
	sbc  e                                           ; $7dc1: $9b
	xor  b                                           ; $7dc2: $a8
	adc  b                                           ; $7dc3: $88
	cp   e                                           ; $7dc4: $bb
	sbc  b                                           ; $7dc5: $98
	ld   a, b                                        ; $7dc6: $78
	cp   e                                           ; $7dc7: $bb
	xor  c                                           ; $7dc8: $a9
	ld   [hl], a                                     ; $7dc9: $77
	ld   [hl], a                                     ; $7dca: $77
	halt                                             ; $7dcb: $76
	ld   [hl], a                                     ; $7dcc: $77
	ld   h, l                                        ; $7dcd: $65
	ld   d, a                                        ; $7dce: $57
	sbc  c                                           ; $7dcf: $99
	halt                                             ; $7dd0: $76
	ld   l, b                                        ; $7dd1: $68
	xor  e                                           ; $7dd2: $ab
	add  a                                           ; $7dd3: $87
	adc  d                                           ; $7dd4: $8a
	jp   z, $8a87                                    ; $7dd5: $ca $87 $8a

	cp   d                                           ; $7dd8: $ba
	add  a                                           ; $7dd9: $87
	ld   a, b                                        ; $7dda: $78
	adc  b                                           ; $7ddb: $88
	ld   [hl], a                                     ; $7ddc: $77
	ld   [hl], a                                     ; $7ddd: $77
	ld   h, l                                        ; $7dde: $65
	ld   d, a                                        ; $7ddf: $57
	adc  c                                           ; $7de0: $89
	halt                                             ; $7de1: $76
	ld   h, a                                        ; $7de2: $67
	xor  d                                           ; $7de3: $aa
	sbc  c                                           ; $7de4: $99
	sbc  d                                           ; $7de5: $9a
	xor  e                                           ; $7de6: $ab
	sbc  b                                           ; $7de7: $98
	adc  c                                           ; $7de8: $89
	sbc  d                                           ; $7de9: $9a
	adc  b                                           ; $7dea: $88
	adc  c                                           ; $7deb: $89
	adc  b                                           ; $7dec: $88
	add  [hl]                                        ; $7ded: $86
	ld   h, a                                        ; $7dee: $67
	halt                                             ; $7def: $76
	ld   h, [hl]                                     ; $7df0: $66
	ld   a, c                                        ; $7df1: $79
	sub  a                                           ; $7df2: $97
	halt                                             ; $7df3: $76
	ld   a, d                                        ; $7df4: $7a
	xor  c                                           ; $7df5: $a9
	sbc  c                                           ; $7df6: $99
	xor  e                                           ; $7df7: $ab
	xor  b                                           ; $7df8: $a8
	ld   a, b                                        ; $7df9: $78
	sbc  d                                           ; $7dfa: $9a
	xor  b                                           ; $7dfb: $a8
	adc  b                                           ; $7dfc: $88
	adc  b                                           ; $7dfd: $88
	add  a                                           ; $7dfe: $87
	ld   [hl], a                                     ; $7dff: $77
	ld   [hl], a                                     ; $7e00: $77
	ld   h, l                                        ; $7e01: $65
	ld   l, b                                        ; $7e02: $68
	sbc  b                                           ; $7e03: $98
	halt                                             ; $7e04: $76
	ld   a, c                                        ; $7e05: $79
	sbc  b                                           ; $7e06: $98
	ld   [hl], a                                     ; $7e07: $77
	sbc  d                                           ; $7e08: $9a
	xor  d                                           ; $7e09: $aa
	sbc  c                                           ; $7e0a: $99
	adc  c                                           ; $7e0b: $89
	sbc  c                                           ; $7e0c: $99
	adc  b                                           ; $7e0d: $88
	sbc  b                                           ; $7e0e: $98
	add  a                                           ; $7e0f: $87
	ld   [hl], a                                     ; $7e10: $77
	add  a                                           ; $7e11: $87
	halt                                             ; $7e12: $76
	ld   h, a                                        ; $7e13: $67
	ld   [hl], a                                     ; $7e14: $77
	ld   [hl], a                                     ; $7e15: $77
	ld   [hl], a                                     ; $7e16: $77
	ld   a, b                                        ; $7e17: $78
	sbc  c                                           ; $7e18: $99
	sbc  b                                           ; $7e19: $98
	adc  d                                           ; $7e1a: $8a
	xor  c                                           ; $7e1b: $a9
	sbc  b                                           ; $7e1c: $98
	adc  c                                           ; $7e1d: $89
	sbc  b                                           ; $7e1e: $98
	sbc  c                                           ; $7e1f: $99
	sbc  b                                           ; $7e20: $98
	sbc  b                                           ; $7e21: $98
	ld   [hl], a                                     ; $7e22: $77
	ld   [hl], a                                     ; $7e23: $77
	halt                                             ; $7e24: $76
	ld   h, [hl]                                     ; $7e25: $66
	ld   h, a                                        ; $7e26: $67
	ld   a, b                                        ; $7e27: $78
	ld   [hl], a                                     ; $7e28: $77
	ld   a, b                                        ; $7e29: $78
	sbc  b                                           ; $7e2a: $98
	adc  b                                           ; $7e2b: $88
	sbc  b                                           ; $7e2c: $98
	sbc  c                                           ; $7e2d: $99
	xor  c                                           ; $7e2e: $a9
	sbc  c                                           ; $7e2f: $99
	sbc  d                                           ; $7e30: $9a
	sbc  c                                           ; $7e31: $99
	adc  c                                           ; $7e32: $89
	sbc  b                                           ; $7e33: $98
	ld   [hl], a                                     ; $7e34: $77
	ld   [hl], a                                     ; $7e35: $77
	ld   [hl], a                                     ; $7e36: $77
	halt                                             ; $7e37: $76
	ld   [hl], a                                     ; $7e38: $77
	ld   [hl], a                                     ; $7e39: $77
	ld   h, [hl]                                     ; $7e3a: $66
	ld   a, c                                        ; $7e3b: $79
	sbc  c                                           ; $7e3c: $99
	ld   [hl], a                                     ; $7e3d: $77
	ld   a, c                                        ; $7e3e: $79
	cp   d                                           ; $7e3f: $ba
	sbc  c                                           ; $7e40: $99
	adc  b                                           ; $7e41: $88
	sbc  c                                           ; $7e42: $99
	adc  c                                           ; $7e43: $89
	adc  c                                           ; $7e44: $89
	sbc  b                                           ; $7e45: $98
	halt                                             ; $7e46: $76
	ld   [hl], a                                     ; $7e47: $77
	add  a                                           ; $7e48: $87
	halt                                             ; $7e49: $76
	ld   h, [hl]                                     ; $7e4a: $66
	ld   a, b                                        ; $7e4b: $78
	adc  b                                           ; $7e4c: $88
	ld   [hl], a                                     ; $7e4d: $77
	ld   [hl], a                                     ; $7e4e: $77
	sbc  b                                           ; $7e4f: $98
	sbc  b                                           ; $7e50: $98
	adc  c                                           ; $7e51: $89
	sbc  d                                           ; $7e52: $9a
	sbc  c                                           ; $7e53: $99
	sbc  b                                           ; $7e54: $98
	sbc  c                                           ; $7e55: $99
	sbc  b                                           ; $7e56: $98
	sbc  c                                           ; $7e57: $99
	sbc  b                                           ; $7e58: $98
	ld   [hl], a                                     ; $7e59: $77
	ld   a, b                                        ; $7e5a: $78
	add  a                                           ; $7e5b: $87
	ld   h, [hl]                                     ; $7e5c: $66
	ld   h, a                                        ; $7e5d: $67
	ld   [hl], a                                     ; $7e5e: $77
	adc  b                                           ; $7e5f: $88
	add  a                                           ; $7e60: $87
	ld   [hl], a                                     ; $7e61: $77
	adc  c                                           ; $7e62: $89
	sbc  c                                           ; $7e63: $99
	sbc  c                                           ; $7e64: $99
	sbc  d                                           ; $7e65: $9a
	sbc  c                                           ; $7e66: $99
	adc  b                                           ; $7e67: $88
	sbc  c                                           ; $7e68: $99
	sbc  b                                           ; $7e69: $98
	adc  c                                           ; $7e6a: $89
	sbc  b                                           ; $7e6b: $98
	ld   [hl], a                                     ; $7e6c: $77
	ld   [hl], a                                     ; $7e6d: $77
	ld   [hl], a                                     ; $7e6e: $77
	ld   [hl], a                                     ; $7e6f: $77
	ld   [hl], a                                     ; $7e70: $77
	ld   [hl], a                                     ; $7e71: $77
	ld   [hl], a                                     ; $7e72: $77
	ld   [hl], a                                     ; $7e73: $77
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	sbc  c                                           ; $7e77: $99
	sbc  c                                           ; $7e78: $99
	sbc  c                                           ; $7e79: $99
	sbc  c                                           ; $7e7a: $99
	sbc  c                                           ; $7e7b: $99
	adc  c                                           ; $7e7c: $89
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	ld   [hl], a                                     ; $7e7f: $77
	ld   [hl], a                                     ; $7e80: $77
	add  a                                           ; $7e81: $87
	halt                                             ; $7e82: $76
	ld   h, a                                        ; $7e83: $67
	ld   a, b                                        ; $7e84: $78
	ld   [hl], a                                     ; $7e85: $77
	ld   [hl], a                                     ; $7e86: $77
	ld   a, b                                        ; $7e87: $78
	adc  b                                           ; $7e88: $88
	add  a                                           ; $7e89: $87
	adc  b                                           ; $7e8a: $88
	sbc  d                                           ; $7e8b: $9a
	sbc  c                                           ; $7e8c: $99
	sbc  c                                           ; $7e8d: $99
	xor  c                                           ; $7e8e: $a9
	sbc  b                                           ; $7e8f: $98
	adc  c                                           ; $7e90: $89
	xor  c                                           ; $7e91: $a9
	add  a                                           ; $7e92: $87
	ld   [hl], a                                     ; $7e93: $77
	ld   a, b                                        ; $7e94: $78
	ld   [hl], a                                     ; $7e95: $77
	halt                                             ; $7e96: $76
	ld   h, a                                        ; $7e97: $67
	ld   a, b                                        ; $7e98: $78
	adc  b                                           ; $7e99: $88
	ld   [hl], a                                     ; $7e9a: $77
	ld   a, b                                        ; $7e9b: $78
	adc  c                                           ; $7e9c: $89
	ld   [hl], a                                     ; $7e9d: $77
	adc  c                                           ; $7e9e: $89
	sbc  c                                           ; $7e9f: $99
	adc  b                                           ; $7ea0: $88
	sbc  d                                           ; $7ea1: $9a
	sbc  c                                           ; $7ea2: $99
	adc  b                                           ; $7ea3: $88
	adc  c                                           ; $7ea4: $89
	sbc  c                                           ; $7ea5: $99
	ld   [hl], a                                     ; $7ea6: $77
	ld   a, b                                        ; $7ea7: $78
	adc  b                                           ; $7ea8: $88
	ld   [hl], a                                     ; $7ea9: $77
	ld   [hl], a                                     ; $7eaa: $77
	ld   [hl], a                                     ; $7eab: $77
	ld   a, b                                        ; $7eac: $78
	sbc  b                                           ; $7ead: $98
	add  a                                           ; $7eae: $87
	ld   [hl], a                                     ; $7eaf: $77
	adc  c                                           ; $7eb0: $89
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	sbc  c                                           ; $7eb3: $99
	sbc  c                                           ; $7eb4: $99
	adc  c                                           ; $7eb5: $89
	sbc  c                                           ; $7eb6: $99
	sbc  b                                           ; $7eb7: $98
	adc  c                                           ; $7eb8: $89
	adc  b                                           ; $7eb9: $88
	sbc  b                                           ; $7eba: $98
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	ld   [hl], a                                     ; $7ebd: $77
	ld   [hl], a                                     ; $7ebe: $77
	ld   [hl], a                                     ; $7ebf: $77
	ld   [hl], a                                     ; $7ec0: $77
	adc  b                                           ; $7ec1: $88
	add  a                                           ; $7ec2: $87
	ld   [hl], a                                     ; $7ec3: $77
	adc  c                                           ; $7ec4: $89
	sbc  b                                           ; $7ec5: $98
	ld   a, b                                        ; $7ec6: $78
	sbc  b                                           ; $7ec7: $98
	adc  c                                           ; $7ec8: $89
	sbc  b                                           ; $7ec9: $98
	sbc  c                                           ; $7eca: $99
	sbc  b                                           ; $7ecb: $98
	adc  c                                           ; $7ecc: $89
	sbc  c                                           ; $7ecd: $99
	sbc  b                                           ; $7ece: $98
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	add  a                                           ; $7ed1: $87
	ld   a, b                                        ; $7ed2: $78
	add  a                                           ; $7ed3: $87
	ld   [hl], a                                     ; $7ed4: $77
	ld   a, b                                        ; $7ed5: $78
	adc  b                                           ; $7ed6: $88
	ld   [hl], a                                     ; $7ed7: $77
	ld   a, b                                        ; $7ed8: $78
	adc  b                                           ; $7ed9: $88
	ld   [hl], a                                     ; $7eda: $77
	adc  b                                           ; $7edb: $88
	sbc  b                                           ; $7edc: $98
	adc  b                                           ; $7edd: $88
	sbc  c                                           ; $7ede: $99
	sbc  c                                           ; $7edf: $99
	sbc  b                                           ; $7ee0: $98
	sbc  b                                           ; $7ee1: $98
	adc  c                                           ; $7ee2: $89
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	ld   [hl], a                                     ; $7ee8: $77
	ld   [hl], a                                     ; $7ee9: $77
	ld   [hl], a                                     ; $7eea: $77
	ld   [hl], a                                     ; $7eeb: $77
	ld   [hl], a                                     ; $7eec: $77
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	sbc  c                                           ; $7ef1: $99
	sbc  c                                           ; $7ef2: $99
	sbc  c                                           ; $7ef3: $99
	sbc  b                                           ; $7ef4: $98
	adc  b                                           ; $7ef5: $88
	sbc  c                                           ; $7ef6: $99
	sbc  b                                           ; $7ef7: $98
	adc  c                                           ; $7ef8: $89
	adc  b                                           ; $7ef9: $88
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	ld   [hl], a                                     ; $7efc: $77
	ld   [hl], a                                     ; $7efd: $77
	ld   [hl], a                                     ; $7efe: $77
	ld   [hl], a                                     ; $7eff: $77
	ld   [hl], a                                     ; $7f00: $77
	adc  b                                           ; $7f01: $88
	ld   [hl], a                                     ; $7f02: $77
	ld   a, b                                        ; $7f03: $78
	adc  b                                           ; $7f04: $88
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	sbc  b                                           ; $7f07: $98
	adc  c                                           ; $7f08: $89
	sbc  c                                           ; $7f09: $99
	sbc  c                                           ; $7f0a: $99
	sbc  c                                           ; $7f0b: $99
	sbc  c                                           ; $7f0c: $99
	sbc  c                                           ; $7f0d: $99
	sbc  b                                           ; $7f0e: $98
	adc  b                                           ; $7f0f: $88
	adc  b                                           ; $7f10: $88
	adc  b                                           ; $7f11: $88
	ld   [hl], a                                     ; $7f12: $77
	ld   [hl], a                                     ; $7f13: $77
	ld   [hl], a                                     ; $7f14: $77
	ld   a, b                                        ; $7f15: $78
	adc  b                                           ; $7f16: $88
	ld   [hl], a                                     ; $7f17: $77
	ld   [hl], a                                     ; $7f18: $77
	ld   a, b                                        ; $7f19: $78
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	sbc  c                                           ; $7f1d: $99
	sbc  c                                           ; $7f1e: $99
	sbc  c                                           ; $7f1f: $99
	sbc  c                                           ; $7f20: $99
	adc  b                                           ; $7f21: $88
	adc  c                                           ; $7f22: $89
	sbc  c                                           ; $7f23: $99
	sbc  b                                           ; $7f24: $98
	adc  b                                           ; $7f25: $88
	adc  b                                           ; $7f26: $88
	adc  b                                           ; $7f27: $88
	adc  b                                           ; $7f28: $88
	ld   [hl], a                                     ; $7f29: $77
	ld   [hl], a                                     ; $7f2a: $77
	adc  b                                           ; $7f2b: $88
	add  a                                           ; $7f2c: $87
	adc  b                                           ; $7f2d: $88
	adc  b                                           ; $7f2e: $88
	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	adc  b                                           ; $7f31: $88
	adc  b                                           ; $7f32: $88
	adc  c                                           ; $7f33: $89
	sbc  c                                           ; $7f34: $99
	sbc  b                                           ; $7f35: $98
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	sbc  c                                           ; $7f38: $99
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	add  a                                           ; $7f3f: $87
	ld   [hl], a                                     ; $7f40: $77
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
	sbc  c                                           ; $7f4b: $99
	sbc  c                                           ; $7f4c: $99
	sbc  b                                           ; $7f4d: $98
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
	add  c                                           ; $7f8c: $81
	ld   de, $1111                                   ; $7f8d: $11 $11 $11
	ld   de, $1111                                   ; $7f90: $11 $11 $11
	ld   de, $1111                                   ; $7f93: $11 $11 $11
	ld   de, $1111                                   ; $7f96: $11 $11 $11
	ld   de, $1111                                   ; $7f99: $11 $11 $11
	ld   de, $1111                                   ; $7f9c: $11 $11 $11
	ld   de, $1111                                   ; $7f9f: $11 $11 $11
	nop                                              ; $7fa2: $00
	ld   c, b                                        ; $7fa3: $48
	ld   de, $1111                                   ; $7fa4: $11 $11 $11
	ld   de, $1111                                   ; $7fa7: $11 $11 $11
	ld   de, $1111                                   ; $7faa: $11 $11 $11
	ld   de, $5413                                   ; $7fad: $11 $13 $54
	ld   d, h                                        ; $7fb0: $54
	ld   d, h                                        ; $7fb1: $54
	ld   b, c                                        ; $7fb2: $41
	rra                                              ; $7fb3: $1f
	rst  $38                                         ; $7fb4: $ff
	pop  af                                          ; $7fb5: $f1
	ld   de, $1411                                   ; $7fb6: $11 $11 $14
	pop  af                                          ; $7fb9: $f1
	ld   de, $de1c                                   ; $7fba: $11 $1c $de
	cp   h                                           ; $7fbd: $bc
	sbc  $b1                                         ; $7fbe: $de $b1
	ld   de, $1111                                   ; $7fc0: $11 $11 $11
	ld   de, $1111                                   ; $7fc3: $11 $11 $11
	ld   de, $1111                                   ; $7fc6: $11 $11 $11
	ld   de, $1111                                   ; $7fc9: $11 $11 $11
	ld   de, $5411                                   ; $7fcc: $11 $11 $54
	ld   b, h                                        ; $7fcf: $44
	db   $e4                                         ; $7fd0: $e4
	ld   de, $5454                                   ; $7fd1: $11 $54 $54
	ld   h, a                                        ; $7fd4: $67
	ld   [hl], d                                     ; $7fd5: $72
	ld   de, $1111                                   ; $7fd6: $11 $11 $11
	ld   de, $1112                                   ; $7fd9: $11 $12 $11
	ld   [de], a                                     ; $7fdc: $12
	ld   de, $1111                                   ; $7fdd: $11 $11 $11
	ld   h, [hl]                                     ; $7fe0: $66
	halt                                             ; $7fe1: $76
	or   h                                           ; $7fe2: $b4
	ld   de, $8888                                   ; $7fe3: $11 $88 $88
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
	sbc  b                                           ; $7ff5: $98
	adc  b                                           ; $7ff6: $88
	adc  b                                           ; $7ff7: $88
	adc  b                                           ; $7ff8: $88
	add  a                                           ; $7ff9: $87
	adc  b                                           ; $7ffa: $88
	adc  b                                           ; $7ffb: $88
	adc  b                                           ; $7ffc: $88
	adc  c                                           ; $7ffd: $89

Jump_0e5_7ffe:
	sbc  c                                           ; $7ffe: $99
	sbc  b                                           ; $7fff: $98
