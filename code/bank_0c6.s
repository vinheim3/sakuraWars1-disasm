; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c6", ROMX[$4000], BANK[$c6]

	ld   h, c                                        ; $4000: $61
	ld   de, $1111                                   ; $4001: $11 $11 $11
	ld   [hl], c                                     ; $4004: $71
	rra                                              ; $4005: $1f
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	rst  $38                                         ; $4008: $ff
	cp   a                                           ; $4009: $bf
	rst  $38                                         ; $400a: $ff
	adc  d                                           ; $400b: $8a
	ret                                              ; $400c: $c9


	ld   hl, $1111                                   ; $400d: $21 $11 $11
	inc  de                                          ; $4010: $13
	ld   [hl], c                                     ; $4011: $71
	ld   a, a                                        ; $4012: $7f
	ld   hl, sp-$01                                  ; $4013: $f8 $ff
	ld   l, a                                        ; $4015: $6f
	ld   hl, sp-$01                                  ; $4016: $f8 $ff
	ld   l, c                                        ; $4018: $69
	pop  hl                                          ; $4019: $e1
	ld   d, c                                        ; $401a: $51
	ld   de, $1c11                                   ; $401b: $11 $11 $1c
	ld   de, $ffff                                   ; $401e: $11 $ff $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	rst  JumpTable                                         ; $4023: $df
	rst  $30                                         ; $4024: $f7
	sbc  l                                           ; $4025: $9d
	or   e                                           ; $4026: $b3
	ld   de, $1111                                   ; $4027: $11 $11 $11
	ld   l, d                                        ; $402a: $6a
	add  hl, de                                      ; $402b: $19
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	ld   l, a                                        ; $402f: $6f
	db   $fd                                         ; $4030: $fd
	cp   e                                           ; $4031: $bb
	call c, $1141                                    ; $4032: $dc $41 $11
	ld   de, $8311                                   ; $4035: $11 $11 $83
	dec  e                                           ; $4038: $1d
	rst  $38                                         ; $4039: $ff
	rst  $38                                         ; $403a: $ff
	cp   $fe                                         ; $403b: $fe $fe
	ccf                                              ; $403d: $3f
	ei                                               ; $403e: $fb
	dec  l                                           ; $403f: $2d
	and  c                                           ; $4040: $a1
	ld   de, $1111                                   ; $4041: $11 $11 $11
	pop  de                                          ; $4044: $d1
	rra                                              ; $4045: $1f
	db   $ec                                         ; $4046: $ec
	rst  $38                                         ; $4047: $ff
	sbc  a                                           ; $4048: $9f
	ld   hl, sp-$05                                  ; $4049: $f8 $fb
	ld   a, a                                        ; $404b: $7f
	or   l                                           ; $404c: $b5
	sub  e                                           ; $404d: $93
	ld   de, $1411                                   ; $404e: $11 $11 $14
	ld   sp, $d8af                                   ; $4051: $31 $af $d8
	rst  $38                                         ; $4054: $ff
	ld   l, a                                        ; $4055: $6f
	ld   hl, sp-$07                                  ; $4056: $f8 $f9
	ld   a, a                                        ; $4058: $7f
	ld   h, [hl]                                     ; $4059: $66
	add  c                                           ; $405a: $81
	ld   de, $1811                                   ; $405b: $11 $11 $18
	ld   hl, $fc9f                                   ; $405e: $21 $9f $fc
	cp   a                                           ; $4061: $bf
	rst  $38                                         ; $4062: $ff
	ld   b, l                                        ; $4063: $45
	rst  $38                                         ; $4064: $ff
	add  hl, de                                      ; $4065: $19
	db   $fd                                         ; $4066: $fd
	ld   de, $1111                                   ; $4067: $11 $11 $11
	rla                                              ; $406a: $17
	ld   sp, $febf                                   ; $406b: $31 $bf $fe
	rst  $28                                         ; $406e: $ef
	db   $fd                                         ; $406f: $fd
	ld   l, a                                        ; $4070: $6f
	rst  $38                                         ; $4071: $ff
	ld   b, a                                        ; $4072: $47
	ei                                               ; $4073: $fb
	ld   de, $1111                                   ; $4074: $11 $11 $11
	dec  de                                          ; $4077: $1b
	ld   [hl], c                                     ; $4078: $71
	xor  a                                           ; $4079: $af
	rst  JumpTable                                         ; $407a: $df
	db   $f4                                         ; $407b: $f4
	rst  $38                                         ; $407c: $ff
	ld   b, [hl]                                     ; $407d: $46
	xor  $f3                                         ; $407e: $ee $f3
	ld   c, [hl]                                     ; $4080: $4e
	or   c                                           ; $4081: $b1
	ld   de, $1111                                   ; $4082: $11 $11 $11
	and  h                                           ; $4085: $a4
	dec  e                                           ; $4086: $1d
	rst  $38                                         ; $4087: $ff
	ld   e, a                                        ; $4088: $5f
	rst  $38                                         ; $4089: $ff
	add  c                                           ; $408a: $81
	rst  $38                                         ; $408b: $ff
	ld   l, c                                        ; $408c: $69
	call c, $12a1                                    ; $408d: $dc $a1 $12
	ld   de, $e114                                   ; $4090: $11 $14 $e1
	rra                                              ; $4093: $1f
	pop  af                                          ; $4094: $f1
	rst  $38                                         ; $4095: $ff
	ld   c, b                                        ; $4096: $48
	rst  $38                                         ; $4097: $ff
	ld   a, e                                        ; $4098: $7b
	or   $f7                                         ; $4099: $f6 $f7
	ld   e, c                                        ; $409b: $59
	ld   de, $1111                                   ; $409c: $11 $11 $11
	pop  bc                                          ; $409f: $c1
	rra                                              ; $40a0: $1f
	cp   $1f                                         ; $40a1: $fe $1f
	pop  af                                          ; $40a3: $f1
	ld   e, a                                        ; $40a4: $5f
	db   $e4                                         ; $40a5: $e4
	ei                                               ; $40a6: $fb
	adc  a                                           ; $40a7: $8f
	ld   b, c                                        ; $40a8: $41
	ld   de, $1111                                   ; $40a9: $11 $11 $11
	rst  $10                                         ; $40ac: $d7
	ld   e, $ff                                      ; $40ad: $1e $ff
	ld   e, a                                        ; $40af: $5f
	pop  af                                          ; $40b0: $f1

jr_0c6_40b1:
	rst  $38                                         ; $40b1: $ff
	cpl                                              ; $40b2: $2f
	push de                                          ; $40b3: $d5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40b4: $cf
	ld   b, d                                        ; $40b5: $42
	add  c                                           ; $40b6: $81
	ld   de, $2a11                                   ; $40b7: $11 $11 $2a
	jr   jr_0c6_40b1                                 ; $40ba: $18 $f5

	rst  $38                                         ; $40bc: $ff
	rla                                              ; $40bd: $17
	ld   sp, hl                                      ; $40be: $f9
	rra                                              ; $40bf: $1f
	ld   sp, hl                                      ; $40c0: $f9
	or   l                                           ; $40c1: $b5
	db   $eb                                         ; $40c2: $eb
	ld   de, $1113                                   ; $40c3: $11 $13 $11
	inc  d                                           ; $40c6: $14
	ld   h, d                                        ; $40c7: $62
	rst  $28                                         ; $40c8: $ef
	rst  $38                                         ; $40c9: $ff
	rst  JumpTable                                         ; $40ca: $df
	adc  e                                           ; $40cb: $8b
	ei                                               ; $40cc: $fb
	xor  c                                           ; $40cd: $a9
	db   $fc                                         ; $40ce: $fc
	ld   e, $61                                      ; $40cf: $1e $61
	ld   de, $1311                                   ; $40d1: $11 $11 $13
	pop  de                                          ; $40d4: $d1
	cpl                                              ; $40d5: $2f
	ld   a, [$bedf]                                  ; $40d6: $fa $df $be
	ret  c                                           ; $40d9: $d8

	rst  $38                                         ; $40da: $ff
	ld   l, d                                        ; $40db: $6a
	or   $61                                         ; $40dc: $f6 $61
	ld   de, $1421                                   ; $40de: $11 $21 $14
	ld   h, e                                        ; $40e1: $63
	ld   e, l                                        ; $40e2: $5d
	rst  $38                                         ; $40e3: $ff
	db   $fc                                         ; $40e4: $fc
	xor  $df                                         ; $40e5: $ee $df
	sub  [hl]                                        ; $40e7: $96
	ld   sp, hl                                      ; $40e8: $f9
	ld   e, a                                        ; $40e9: $5f
	ld   [hl], c                                     ; $40ea: $71
	ld   b, e                                        ; $40eb: $43
	ld   de, $1821                                   ; $40ec: $11 $21 $18
	ld   a, [de]                                     ; $40ef: $1a
	db   $fd                                         ; $40f0: $fd

jr_0c6_40f1:
	xor  a                                           ; $40f1: $af
	pop  af                                          ; $40f2: $f1
	rst  $38                                         ; $40f3: $ff
	rra                                              ; $40f4: $1f
	db   $f4                                         ; $40f5: $f4
	xor  [hl]                                        ; $40f6: $ae
	ld   [hl], l                                     ; $40f7: $75
	add  c                                           ; $40f8: $81
	ld   a, [de]                                     ; $40f9: $1a
	ld   de, $5219                                   ; $40fa: $11 $19 $52
	adc  a                                           ; $40fd: $8f
	jp   hl                                          ; $40fe: $e9


	rst  $38                                         ; $40ff: $ff
	ld   e, a                                        ; $4100: $5f
	di                                               ; $4101: $f3
	rst  $38                                         ; $4102: $ff
	ld   a, d                                        ; $4103: $7a
	rst  $20                                         ; $4104: $e7
	inc  [hl]                                        ; $4105: $34
	ld   de, $1111                                   ; $4106: $11 $11 $11
	ld   b, [hl]                                     ; $4109: $46
	ld   l, e                                        ; $410a: $6b
	ld   l, a                                        ; $410b: $6f
	ei                                               ; $410c: $fb
	sub  $ff                                         ; $410d: $d6 $ff
	ldh  a, [c]                                      ; $410f: $f2
	sbc  a                                           ; $4110: $9f
	ld   b, h                                        ; $4111: $44
	sub  e                                           ; $4112: $93
	or   c                                           ; $4113: $b1
	inc  de                                          ; $4114: $13
	ld   h, d                                        ; $4115: $62
	inc  d                                           ; $4116: $14
	db   $f4                                         ; $4117: $f4
	ld   c, d                                        ; $4118: $4a
	ei                                               ; $4119: $fb
	rst  $28                                         ; $411a: $ef
	ld   c, a                                        ; $411b: $4f
	pop  af                                          ; $411c: $f1
	rst  $28                                         ; $411d: $ef
	cpl                                              ; $411e: $2f
	or   [hl]                                        ; $411f: $b6
	jr   c, @+$13                                    ; $4120: $38 $11

	and  c                                           ; $4122: $a1
	inc  de                                          ; $4123: $13
	ld   [hl], $28                                   ; $4124: $36 $28
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4126: $cf
	db   $e3                                         ; $4127: $e3
	rst  $38                                         ; $4128: $ff
	ld   d, $f9                                      ; $4129: $16 $f9
	ld   e, l                                        ; $412b: $5d
	ld   sp, hl                                      ; $412c: $f9
	add  h                                           ; $412d: $84
	rla                                              ; $412e: $17
	ld   de, $4122                                   ; $412f: $11 $22 $41
	jr   c, @-$52                                    ; $4132: $38 $ac

	add  a                                           ; $4134: $87
	rst  $38                                         ; $4135: $ff
	inc  h                                           ; $4136: $24
	rst  $38                                         ; $4137: $ff
	ld   b, h                                        ; $4138: $44
	rst  $38                                         ; $4139: $ff
	pop  bc                                          ; $413a: $c1
	ld   a, [hl]                                     ; $413b: $7e
	ld   de, $1327                                   ; $413c: $11 $27 $13
	ld   [hl+], a                                    ; $413f: $22
	sub  [hl]                                        ; $4140: $96
	ld   l, c                                        ; $4141: $69
	cp   [hl]                                        ; $4142: $be
	or   h                                           ; $4143: $b4
	rst  JumpTable                                         ; $4144: $df
	ld   l, d                                        ; $4145: $6a
	rst  $38                                         ; $4146: $ff
	add  a                                           ; $4147: $87
	ld   [$2772], a                                  ; $4148: $ea $72 $27
	ld   d, c                                        ; $414b: $51
	ld   a, [de]                                     ; $414c: $1a
	ld   sp, $9977                                   ; $414d: $31 $77 $99
	dec  sp                                          ; $4150: $3b
	db   $fc                                         ; $4151: $fc
	ld   c, e                                        ; $4152: $4b
	ei                                               ; $4153: $fb
	call nz, Call_0c6_61cf                           ; $4154: $c4 $cf $61
	cp   [hl]                                        ; $4157: $be
	ld   de, $7149                                   ; $4158: $11 $49 $71
	jr   z, jr_0c6_40f1                              ; $415b: $28 $94

	ld   c, b                                        ; $415d: $48
	or   a                                           ; $415e: $b7
	ld   a, h                                        ; $415f: $7c
	jp   z, $9f9b                                    ; $4160: $ca $9b $9f

	db   $d3                                         ; $4163: $d3
	call $8766                                       ; $4164: $cd $66 $87
	ld   b, [hl]                                     ; $4167: $46
	ld   b, h                                        ; $4168: $44
	ld   [hl], h                                     ; $4169: $74
	ld   d, a                                        ; $416a: $57
	ld   h, l                                        ; $416b: $65
	sbc  c                                           ; $416c: $99
	sub  [hl]                                        ; $416d: $96
	cp   [hl]                                        ; $416e: $be
	ld   h, a                                        ; $416f: $67
	cp   l                                           ; $4170: $bd
	and  a                                           ; $4171: $a7
	sbc  h                                           ; $4172: $9c
	or   [hl]                                        ; $4173: $b6
	ld   l, c                                        ; $4174: $69
	add  l                                           ; $4175: $85
	ld   h, [hl]                                     ; $4176: $66
	ld   l, b                                        ; $4177: $68
	ld   h, l                                        ; $4178: $65
	ld   [hl], a                                     ; $4179: $77
	halt                                             ; $417a: $76
	ld   a, b                                        ; $417b: $78
	halt                                             ; $417c: $76
	sbc  d                                           ; $417d: $9a
	sub  a                                           ; $417e: $97
	adc  e                                           ; $417f: $8b
	add  a                                           ; $4180: $87
	sbc  c                                           ; $4181: $99
	cp   c                                           ; $4182: $b9
	ld   d, a                                        ; $4183: $57
	sbc  b                                           ; $4184: $98
	ld   d, a                                        ; $4185: $57
	add  a                                           ; $4186: $87
	ld   [hl], a                                     ; $4187: $77
	ld   h, a                                        ; $4188: $67
	ld   h, l                                        ; $4189: $65
	ld   h, a                                        ; $418a: $67
	ld   [hl], a                                     ; $418b: $77
	adc  c                                           ; $418c: $89
	add  a                                           ; $418d: $87
	adc  b                                           ; $418e: $88
	adc  c                                           ; $418f: $89
	adc  c                                           ; $4190: $89
	sbc  c                                           ; $4191: $99
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	xor  c                                           ; $4195: $a9
	sbc  b                                           ; $4196: $98
	sbc  d                                           ; $4197: $9a
	sbc  c                                           ; $4198: $99
	sbc  c                                           ; $4199: $99
	sbc  c                                           ; $419a: $99
	adc  b                                           ; $419b: $88
	adc  c                                           ; $419c: $89
	adc  b                                           ; $419d: $88
	sbc  c                                           ; $419e: $99
	sbc  b                                           ; $419f: $98
	sbc  c                                           ; $41a0: $99
	adc  c                                           ; $41a1: $89
	sbc  b                                           ; $41a2: $98
	sbc  b                                           ; $41a3: $98
	adc  b                                           ; $41a4: $88
	adc  b                                           ; $41a5: $88
	sbc  b                                           ; $41a6: $98
	sbc  c                                           ; $41a7: $99
	sbc  b                                           ; $41a8: $98
	sbc  b                                           ; $41a9: $98
	adc  b                                           ; $41aa: $88
	sbc  b                                           ; $41ab: $98
	adc  b                                           ; $41ac: $88
	sbc  b                                           ; $41ad: $98
	adc  c                                           ; $41ae: $89
	adc  b                                           ; $41af: $88
	adc  b                                           ; $41b0: $88
	adc  b                                           ; $41b1: $88
	adc  b                                           ; $41b2: $88
	adc  b                                           ; $41b3: $88
	adc  b                                           ; $41b4: $88
	adc  b                                           ; $41b5: $88
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	adc  b                                           ; $41b8: $88
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	adc  b                                           ; $41c0: $88
	adc  b                                           ; $41c1: $88
	adc  b                                           ; $41c2: $88
	adc  b                                           ; $41c3: $88
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	adc  b                                           ; $41c7: $88
	adc  b                                           ; $41c8: $88
	adc  b                                           ; $41c9: $88
	adc  b                                           ; $41ca: $88
	adc  b                                           ; $41cb: $88
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	adc  b                                           ; $41ce: $88
	adc  b                                           ; $41cf: $88
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	adc  b                                           ; $41d7: $88
	adc  b                                           ; $41d8: $88
	adc  b                                           ; $41d9: $88
	adc  b                                           ; $41da: $88
	adc  b                                           ; $41db: $88
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	adc  b                                           ; $41df: $88
	adc  b                                           ; $41e0: $88
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	adc  b                                           ; $41e3: $88
	adc  b                                           ; $41e4: $88
	adc  b                                           ; $41e5: $88
	adc  b                                           ; $41e6: $88
	adc  b                                           ; $41e7: $88
	adc  b                                           ; $41e8: $88
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	adc  b                                           ; $41eb: $88
	adc  b                                           ; $41ec: $88
	adc  b                                           ; $41ed: $88
	adc  b                                           ; $41ee: $88
	adc  b                                           ; $41ef: $88
	adc  b                                           ; $41f0: $88
	adc  b                                           ; $41f1: $88
	adc  b                                           ; $41f2: $88
	adc  b                                           ; $41f3: $88
	adc  b                                           ; $41f4: $88
	adc  b                                           ; $41f5: $88
	adc  b                                           ; $41f6: $88
	adc  b                                           ; $41f7: $88
	adc  b                                           ; $41f8: $88
	adc  b                                           ; $41f9: $88
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	adc  b                                           ; $41fe: $88
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  b                                           ; $4201: $88
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	adc  b                                           ; $4209: $88
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	adc  b                                           ; $420d: $88
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	adc  b                                           ; $4213: $88
	adc  b                                           ; $4214: $88
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
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
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
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

Call_0c6_43a8:
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
	adc  c                                           ; $43b5: $89
	sbc  b                                           ; $43b6: $98
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	sbc  b                                           ; $43ba: $98
	adc  b                                           ; $43bb: $88
	add  a                                           ; $43bc: $87
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	sbc  b                                           ; $43c2: $98
	sbc  c                                           ; $43c3: $99
	sbc  c                                           ; $43c4: $99
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	ld   a, b                                        ; $43c8: $78
	ld   [hl], a                                     ; $43c9: $77
	ld   [hl], a                                     ; $43ca: $77
	adc  b                                           ; $43cb: $88
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	sbc  c                                           ; $43d0: $99
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	sbc  c                                           ; $43d4: $99
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	ld   a, b                                        ; $43d8: $78
	adc  b                                           ; $43d9: $88
	ld   [hl], a                                     ; $43da: $77
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

jr_0c6_43e8:
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
	adc  b                                           ; $43f3: $88
	add  a                                           ; $43f4: $87
	adc  b                                           ; $43f5: $88
	ld   [hl], a                                     ; $43f6: $77
	ld   [hl], a                                     ; $43f7: $77
	ld   [hl], a                                     ; $43f8: $77
	ld   [hl], a                                     ; $43f9: $77
	ld   [hl], a                                     ; $43fa: $77
	ld   [hl], a                                     ; $43fb: $77
	ld   [hl], a                                     ; $43fc: $77
	ld   [hl], a                                     ; $43fd: $77
	halt                                             ; $43fe: $76
	ld   h, [hl]                                     ; $43ff: $66
	ld   a, b                                        ; $4400: $78
	adc  b                                           ; $4401: $88
	sbc  d                                           ; $4402: $9a
	xor  d                                           ; $4403: $aa
	cp   e                                           ; $4404: $bb
	res  5, e                                        ; $4405: $cb $ab
	cp   d                                           ; $4407: $ba
	cp   d                                           ; $4408: $ba
	sbc  b                                           ; $4409: $98
	adc  b                                           ; $440a: $88
	ld   [hl], a                                     ; $440b: $77
	ld   h, l                                        ; $440c: $65
	ld   b, l                                        ; $440d: $45
	ld   [hl-], a                                    ; $440e: $32
	ld   de, $4311                                   ; $440f: $11 $11 $43
	ld   c, c                                        ; $4412: $49
	sbc  h                                           ; $4413: $9c
	rst  $28                                         ; $4414: $ef
	rst  $28                                         ; $4415: $ef
	rst  $38                                         ; $4416: $ff
	rst  $38                                         ; $4417: $ff
	call c, $78ca                                    ; $4418: $dc $ca $78
	ld   [hl], a                                     ; $441b: $77
	ld   a, b                                        ; $441c: $78
	ld   a, b                                        ; $441d: $78
	cp   d                                           ; $441e: $ba
	cp   e                                           ; $441f: $bb
	xor  c                                           ; $4420: $a9
	sub  a                                           ; $4421: $97
	ld   b, d                                        ; $4422: $42
	ld   de, $1111                                   ; $4423: $11 $11 $11
	inc  de                                          ; $4426: $13
	jr   z, jr_0c6_43e8                              ; $4427: $28 $bf

	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	rst  $38                                         ; $442b: $ff
	rst  $38                                         ; $442c: $ff
	jp   z, Jump_0c6_45a8                            ; $442d: $ca $a8 $45

	ld   d, l                                        ; $4430: $55
	ld   a, c                                        ; $4431: $79
	adc  c                                           ; $4432: $89
	rst  $28                                         ; $4433: $ef
	db   $ed                                         ; $4434: $ed
	jp   z, $11a6                                    ; $4435: $ca $a6 $11

	ld   de, $1111                                   ; $4438: $11 $11 $11
	ld   d, $57                                      ; $443b: $16 $57
	rst  $28                                         ; $443d: $ef
	rst  $38                                         ; $443e: $ff
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	db   $fc                                         ; $4441: $fc
	cp   e                                           ; $4442: $bb
	sbc  c                                           ; $4443: $99
	ld   h, e                                        ; $4444: $63
	ld   h, a                                        ; $4445: $67
	adc  d                                           ; $4446: $8a
	cp   e                                           ; $4447: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4448: $cf
	db   $ec                                         ; $4449: $ec
	cp   d                                           ; $444a: $ba
	add  [hl]                                        ; $444b: $86
	ld   hl, $1111                                   ; $444c: $21 $11 $11
	ld   de, $7614                                   ; $444f: $11 $14 $76
	rst  JumpTable                                         ; $4452: $df
	rst  $38                                         ; $4453: $ff
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	db   $fd                                         ; $4456: $fd
	res  5, c                                        ; $4457: $cb $a9
	add  h                                           ; $4459: $84
	ld   d, a                                        ; $445a: $57
	sbc  e                                           ; $445b: $9b
	cp   d                                           ; $445c: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $445d: $cf
	db   $fc                                         ; $445e: $fc
	xor  c                                           ; $445f: $a9
	add  [hl]                                        ; $4460: $86
	ld   hl, $1111                                   ; $4461: $21 $11 $11
	ld   de, $8511                                   ; $4464: $11 $11 $85
	xor  l                                           ; $4467: $ad
	rst  $38                                         ; $4468: $ff
	rst  $38                                         ; $4469: $ff
	rst  $28                                         ; $446a: $ef
	db   $fd                                         ; $446b: $fd
	db   $db                                         ; $446c: $db
	cp   d                                           ; $446d: $ba
	and  [hl]                                        ; $446e: $a6
	ld   d, a                                        ; $446f: $57
	ld   a, d                                        ; $4470: $7a
	xor  c                                           ; $4471: $a9
	xor  [hl]                                        ; $4472: $ae
	db   $fd                                         ; $4473: $fd
	xor  b                                           ; $4474: $a8
	add  a                                           ; $4475: $87
	ld   d, c                                        ; $4476: $51
	ld   de, $1111                                   ; $4477: $11 $11 $11
	ld   de, $7d86                                   ; $447a: $11 $86 $7d
	rst  $38                                         ; $447d: $ff
	rst  $38                                         ; $447e: $ff
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	db   $ec                                         ; $4481: $ec
	jp   z, $46b7                                    ; $4482: $ca $b7 $46

	ld   l, d                                        ; $4485: $6a
	adc  c                                           ; $4486: $89
	sbc  h                                           ; $4487: $9c
	db   $fd                                         ; $4488: $fd
	ret                                              ; $4489: $c9


	adc  b                                           ; $448a: $88
	ld   h, d                                        ; $448b: $62
	ld   de, $1111                                   ; $448c: $11 $11 $11
	ld   de, $6b46                                   ; $448f: $11 $46 $6b
	rst  $38                                         ; $4492: $ff
	rst  $38                                         ; $4493: $ff
	rst  $38                                         ; $4494: $ff
	rst  $38                                         ; $4495: $ff
	db   $fc                                         ; $4496: $fc
	call z, Call_0c6_45b9                            ; $4497: $cc $b9 $45
	ld   e, c                                        ; $449a: $59
	ld   a, c                                        ; $449b: $79
	sbc  e                                           ; $449c: $9b
	db   $ed                                         ; $449d: $ed
	ret                                              ; $449e: $c9


	adc  b                                           ; $449f: $88
	ld   h, d                                        ; $44a0: $62
	ld   de, $1111                                   ; $44a1: $11 $11 $11
	ld   de, $4b34                                   ; $44a4: $11 $34 $4b
	rst  $38                                         ; $44a7: $ff
	rst  $38                                         ; $44a8: $ff
	rst  $38                                         ; $44a9: $ff
	rst  $38                                         ; $44aa: $ff
	cp   $ed                                         ; $44ab: $fe $ed
	cp   c                                           ; $44ad: $b9
	ld   b, l                                        ; $44ae: $45
	ld   d, a                                        ; $44af: $57
	ld   [hl], a                                     ; $44b0: $77
	adc  d                                           ; $44b1: $8a
	db   $dd                                         ; $44b2: $dd
	cp   c                                           ; $44b3: $b9
	sbc  b                                           ; $44b4: $98
	ld   h, h                                        ; $44b5: $64
	ld   de, $1111                                   ; $44b6: $11 $11 $11
	ld   de, $4a32                                   ; $44b9: $11 $32 $4a
	rst  $28                                         ; $44bc: $ef
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	db   $fc                                         ; $44c1: $fc
	ret  z                                           ; $44c2: $c8

	ld   d, l                                        ; $44c3: $55
	ld   b, [hl]                                     ; $44c4: $46
	ld   h, [hl]                                     ; $44c5: $66
	ld   l, d                                        ; $44c6: $6a
	call z, $99ba                                    ; $44c7: $cc $ba $99
	ld   [hl], e                                     ; $44ca: $73
	ld   de, $1111                                   ; $44cb: $11 $11 $11
	ld   de, $3821                                   ; $44ce: $11 $21 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d1: $cf
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	rst  $38                                         ; $44d5: $ff
	rst  $38                                         ; $44d6: $ff
	add  sp, $65                                     ; $44d7: $e8 $65
	ld   d, l                                        ; $44d9: $55
	ld   b, e                                        ; $44da: $43
	ld   c, b                                        ; $44db: $48
	xor  c                                           ; $44dc: $a9
	sbc  b                                           ; $44dd: $98
	sbc  c                                           ; $44de: $99
	ld   [hl], e                                     ; $44df: $73
	ld   [de], a                                     ; $44e0: $12
	ld   hl, $1111                                   ; $44e1: $21 $11 $11
	ld   de, $ad26                                   ; $44e4: $11 $26 $ad
	cp   $ff                                         ; $44e7: $fe $ff
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	rst  $38                                         ; $44eb: $ff
	jp   c, Jump_0c6_7686                            ; $44ec: $da $86 $76

	ld   h, h                                        ; $44ef: $64
	ld   d, a                                        ; $44f0: $57
	add  a                                           ; $44f1: $87
	ld   h, a                                        ; $44f2: $67
	ld   a, b                                        ; $44f3: $78
	ld   h, l                                        ; $44f4: $65
	ld   b, l                                        ; $44f5: $45
	ld   d, h                                        ; $44f6: $54
	ld   hl, $5313                                   ; $44f7: $21 $13 $53
	ld   b, h                                        ; $44fa: $44
	ld   h, a                                        ; $44fb: $67
	adc  b                                           ; $44fc: $88
	sbc  e                                           ; $44fd: $9b
	call $dede                                       ; $44fe: $cd $de $de
	db   $dd                                         ; $4501: $dd
	call z, $a8cb                                    ; $4502: $cc $cb $a8
	adc  c                                           ; $4505: $89
	add  a                                           ; $4506: $87
	ld   [hl], a                                     ; $4507: $77
	ld   [hl], a                                     ; $4508: $77
	ld   [hl], a                                     ; $4509: $77
	ld   h, [hl]                                     ; $450a: $66
	ld   [hl], a                                     ; $450b: $77
	ld   [hl], a                                     ; $450c: $77
	ld   [hl], a                                     ; $450d: $77
	ld   [hl], a                                     ; $450e: $77
	ld   h, a                                        ; $450f: $67
	halt                                             ; $4510: $76
	ld   h, [hl]                                     ; $4511: $66
	ld   h, [hl]                                     ; $4512: $66
	ld   [hl], a                                     ; $4513: $77
	ld   [hl], a                                     ; $4514: $77
	ld   a, b                                        ; $4515: $78
	sbc  c                                           ; $4516: $99
	xor  c                                           ; $4517: $a9
	xor  e                                           ; $4518: $ab
	xor  d                                           ; $4519: $aa
	xor  d                                           ; $451a: $aa
	cp   d                                           ; $451b: $ba
	xor  c                                           ; $451c: $a9
	sbc  c                                           ; $451d: $99
	adc  c                                           ; $451e: $89
	sbc  b                                           ; $451f: $98
	sbc  b                                           ; $4520: $98
	adc  b                                           ; $4521: $88
	adc  b                                           ; $4522: $88
	adc  b                                           ; $4523: $88
	add  a                                           ; $4524: $87
	ld   a, b                                        ; $4525: $78
	adc  b                                           ; $4526: $88
	adc  b                                           ; $4527: $88
	ld   [hl], a                                     ; $4528: $77
	ld   [hl], a                                     ; $4529: $77
	ld   [hl], a                                     ; $452a: $77
	ld   [hl], a                                     ; $452b: $77
	ld   [hl], a                                     ; $452c: $77
	ld   [hl], a                                     ; $452d: $77
	ld   [hl], a                                     ; $452e: $77
	ld   [hl], a                                     ; $452f: $77
	ld   [hl], a                                     ; $4530: $77
	ld   [hl], a                                     ; $4531: $77
	ld   a, b                                        ; $4532: $78
	adc  b                                           ; $4533: $88
	sbc  b                                           ; $4534: $98
	adc  b                                           ; $4535: $88
	sbc  c                                           ; $4536: $99
	xor  d                                           ; $4537: $aa
	xor  c                                           ; $4538: $a9
	sbc  c                                           ; $4539: $99
	sbc  d                                           ; $453a: $9a
	xor  c                                           ; $453b: $a9
	xor  c                                           ; $453c: $a9
	sbc  b                                           ; $453d: $98
	sbc  c                                           ; $453e: $99
	adc  b                                           ; $453f: $88
	adc  b                                           ; $4540: $88
	ld   [hl], a                                     ; $4541: $77
	ld   [hl], a                                     ; $4542: $77
	ld   [hl], a                                     ; $4543: $77
	ld   [hl], a                                     ; $4544: $77
	ld   h, [hl]                                     ; $4545: $66
	ld   h, [hl]                                     ; $4546: $66
	ld   h, [hl]                                     ; $4547: $66
	ld   h, [hl]                                     ; $4548: $66
	ld   h, [hl]                                     ; $4549: $66
	ld   h, [hl]                                     ; $454a: $66
	ld   [hl], a                                     ; $454b: $77
	ld   [hl], a                                     ; $454c: $77
	adc  b                                           ; $454d: $88
	sbc  b                                           ; $454e: $98
	sbc  c                                           ; $454f: $99
	sbc  d                                           ; $4550: $9a
	xor  c                                           ; $4551: $a9
	sbc  c                                           ; $4552: $99
	xor  c                                           ; $4553: $a9
	xor  d                                           ; $4554: $aa
	sbc  c                                           ; $4555: $99
	sbc  c                                           ; $4556: $99
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	add  a                                           ; $455a: $87
	ld   [hl], a                                     ; $455b: $77
	ld   [hl], a                                     ; $455c: $77
	ld   [hl], a                                     ; $455d: $77
	ld   [hl], a                                     ; $455e: $77
	ld   [hl], a                                     ; $455f: $77
	ld   [hl], a                                     ; $4560: $77
	ld   [hl], a                                     ; $4561: $77
	ld   [hl], a                                     ; $4562: $77
	ld   [hl], a                                     ; $4563: $77
	ld   [hl], a                                     ; $4564: $77
	ld   [hl], a                                     ; $4565: $77
	ld   [hl], a                                     ; $4566: $77
	ld   [hl], a                                     ; $4567: $77
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	sbc  c                                           ; $456a: $99
	sbc  c                                           ; $456b: $99
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	sbc  c                                           ; $456e: $99
	sbc  b                                           ; $456f: $98
	adc  b                                           ; $4570: $88
	adc  b                                           ; $4571: $88
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	adc  b                                           ; $4574: $88
	adc  b                                           ; $4575: $88
	sbc  b                                           ; $4576: $98
	adc  c                                           ; $4577: $89
	sbc  c                                           ; $4578: $99
	adc  b                                           ; $4579: $88
	sbc  c                                           ; $457a: $99
	sbc  c                                           ; $457b: $99
	sbc  b                                           ; $457c: $98
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	add  a                                           ; $457f: $87
	ld   [hl], a                                     ; $4580: $77
	ld   [hl], a                                     ; $4581: $77
	ld   [hl], a                                     ; $4582: $77
	ld   [hl], a                                     ; $4583: $77
	ld   [hl], a                                     ; $4584: $77
	ld   [hl], a                                     ; $4585: $77
	ld   [hl], a                                     ; $4586: $77
	ld   [hl], a                                     ; $4587: $77
	ld   [hl], a                                     ; $4588: $77
	ld   a, b                                        ; $4589: $78
	adc  b                                           ; $458a: $88
	adc  b                                           ; $458b: $88
	adc  b                                           ; $458c: $88
	adc  c                                           ; $458d: $89
	adc  b                                           ; $458e: $88
	adc  c                                           ; $458f: $89
	sbc  b                                           ; $4590: $98
	sbc  c                                           ; $4591: $99
	sbc  b                                           ; $4592: $98
	adc  c                                           ; $4593: $89
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88
	adc  b                                           ; $4596: $88
	sbc  c                                           ; $4597: $99
	sbc  c                                           ; $4598: $99
	adc  c                                           ; $4599: $89
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	ld   [hl], a                                     ; $459e: $77
	ld   [hl], a                                     ; $459f: $77
	ld   [hl], a                                     ; $45a0: $77
	ld   [hl], a                                     ; $45a1: $77
	ld   [hl], a                                     ; $45a2: $77
	ld   [hl], a                                     ; $45a3: $77
	ld   [hl], a                                     ; $45a4: $77
	ld   [hl], a                                     ; $45a5: $77
	ld   [hl], a                                     ; $45a6: $77
	ld   a, b                                        ; $45a7: $78

Jump_0c6_45a8:
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	sbc  b                                           ; $45ad: $98
	adc  b                                           ; $45ae: $88
	adc  c                                           ; $45af: $89
	sbc  c                                           ; $45b0: $99
	sbc  c                                           ; $45b1: $99
	sbc  c                                           ; $45b2: $99
	xor  c                                           ; $45b3: $a9
	sbc  c                                           ; $45b4: $99
	sbc  b                                           ; $45b5: $98
	ld   [hl], a                                     ; $45b6: $77
	ld   [hl], a                                     ; $45b7: $77
	adc  b                                           ; $45b8: $88

Call_0c6_45b9:
	ld   a, b                                        ; $45b9: $78
	adc  b                                           ; $45ba: $88
	sbc  d                                           ; $45bb: $9a
	call $87db                                       ; $45bc: $cd $db $87
	ld   h, h                                        ; $45bf: $64
	ld   d, [hl]                                     ; $45c0: $56
	ld   [hl], a                                     ; $45c1: $77
	ld   h, l                                        ; $45c2: $65
	ld   b, l                                        ; $45c3: $45
	ld   d, l                                        ; $45c4: $55
	ld   d, [hl]                                     ; $45c5: $56
	ld   a, b                                        ; $45c6: $78
	ld   [hl], a                                     ; $45c7: $77
	ld   [hl], a                                     ; $45c8: $77
	adc  c                                           ; $45c9: $89
	cp   e                                           ; $45ca: $bb
	cp   e                                           ; $45cb: $bb
	res  5, d                                        ; $45cc: $cb $aa
	sbc  d                                           ; $45ce: $9a
	xor  c                                           ; $45cf: $a9
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	ld   a, b                                        ; $45d2: $78
	adc  b                                           ; $45d3: $88
	sbc  c                                           ; $45d4: $99
	add  a                                           ; $45d5: $87
	ld   [hl], a                                     ; $45d6: $77
	ld   h, [hl]                                     ; $45d7: $66
	ld   d, l                                        ; $45d8: $55
	ld   b, e                                        ; $45d9: $43
	ld   [hl-], a                                    ; $45da: $32
	ld   hl, $4323                                   ; $45db: $21 $23 $43
	ld   d, [hl]                                     ; $45de: $56
	adc  c                                           ; $45df: $89
	xor  e                                           ; $45e0: $ab
	cp   [hl]                                        ; $45e1: $be
	db   $ed                                         ; $45e2: $ed
	sbc  $ed                                         ; $45e3: $de $ed
	call c, $b8cb                                    ; $45e5: $dc $cb $b8
	add  a                                           ; $45e8: $87
	ld   [hl], a                                     ; $45e9: $77
	halt                                             ; $45ea: $76
	ld   h, [hl]                                     ; $45eb: $66
	halt                                             ; $45ec: $76
	ld   d, l                                        ; $45ed: $55
	ld   d, h                                        ; $45ee: $54
	ld   [hl-], a                                    ; $45ef: $32
	ld   de, $1311                                   ; $45f0: $11 $11 $13
	inc  de                                          ; $45f3: $13
	ld   a, d                                        ; $45f4: $7a
	xor  l                                           ; $45f5: $ad
	rst  $38                                         ; $45f6: $ff
	rst  $38                                         ; $45f7: $ff
	rst  $38                                         ; $45f8: $ff
	rst  $38                                         ; $45f9: $ff
	xor  $ba                                         ; $45fa: $ee $ba
	add  a                                           ; $45fc: $87
	ld   d, l                                        ; $45fd: $55
	ld   h, l                                        ; $45fe: $65
	ld   h, [hl]                                     ; $45ff: $66
	ld   [hl], a                                     ; $4600: $77
	sbc  b                                           ; $4601: $98
	halt                                             ; $4602: $76
	ld   h, l                                        ; $4603: $65
	ld   hl, $1111                                   ; $4604: $21 $11 $11
	ld   de, $9b14                                   ; $4607: $11 $14 $9b
	rst  $28                                         ; $460a: $ef
	rst  $38                                         ; $460b: $ff
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	db   $ec                                         ; $460f: $ec
	add  [hl]                                        ; $4610: $86
	ld   h, h                                        ; $4611: $64
	inc  [hl]                                        ; $4612: $34
	ld   b, [hl]                                     ; $4613: $46
	ld   a, c                                        ; $4614: $79
	sbc  d                                           ; $4615: $9a
	xor  c                                           ; $4616: $a9
	ld   [hl], a                                     ; $4617: $77
	ld   h, e                                        ; $4618: $63
	ld   de, $1111                                   ; $4619: $11 $11 $11
	ld   de, $ef4a                                   ; $461c: $11 $4a $ef
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	db   $fd                                         ; $4623: $fd
	sub  [hl]                                        ; $4624: $96
	ld   d, e                                        ; $4625: $53
	ld   [hl+], a                                    ; $4626: $22
	ld   b, [hl]                                     ; $4627: $46
	ld   a, d                                        ; $4628: $7a
	cp   e                                           ; $4629: $bb
	res  4, a                                        ; $462a: $cb $a7
	ld   h, [hl]                                     ; $462c: $66
	ld   de, $1111                                   ; $462d: $11 $11 $11
	ld   de, $cf16                                   ; $4630: $11 $16 $cf
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	rst  $38                                         ; $4635: $ff
	rst  $38                                         ; $4636: $ff
	db   $fd                                         ; $4637: $fd
	and  a                                           ; $4638: $a7
	ld   d, e                                        ; $4639: $53
	ld   [hl+], a                                    ; $463a: $22
	ld   b, [hl]                                     ; $463b: $46
	sbc  d                                           ; $463c: $9a
	cp   l                                           ; $463d: $bd
	db   $dd                                         ; $463e: $dd
	cp   c                                           ; $463f: $b9
	ld   [hl], e                                     ; $4640: $73
	ld   de, $1111                                   ; $4641: $11 $11 $11
	ld   de, $9f12                                   ; $4644: $11 $12 $9f
	rst  $38                                         ; $4647: $ff
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	xor  $a7                                         ; $464b: $ee $a7
	ld   h, h                                        ; $464d: $64
	ld   b, e                                        ; $464e: $43
	ld   b, [hl]                                     ; $464f: $46
	xor  e                                           ; $4650: $ab
	cp   l                                           ; $4651: $bd
	rst  $38                                         ; $4652: $ff
	jp   z, $2153                                    ; $4653: $ca $53 $21

	ld   de, $1111                                   ; $4656: $11 $11 $11
	inc  de                                          ; $4659: $13
	ld   l, e                                        ; $465a: $6b
	rst  $38                                         ; $465b: $ff
	rst  $38                                         ; $465c: $ff
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	db   $db                                         ; $465f: $db
	ret  c                                           ; $4660: $d8

	halt                                             ; $4661: $76
	ld   h, a                                        ; $4662: $67
	ld   h, a                                        ; $4663: $67
	sbc  l                                           ; $4664: $9d
	db   $dd                                         ; $4665: $dd
	cp   $db                                         ; $4666: $fe $db
	sub  l                                           ; $4668: $95
	ld   de, $1111                                   ; $4669: $11 $11 $11
	ld   de, $2512                                   ; $466c: $11 $12 $25
	rst  $28                                         ; $466f: $ef
	rst  $38                                         ; $4670: $ff
	rst  $38                                         ; $4671: $ff
	rst  $38                                         ; $4672: $ff
	adc  $ed                                         ; $4673: $ce $ed
	ld   [hl], a                                     ; $4675: $77
	sub  a                                           ; $4676: $97
	sub  a                                           ; $4677: $97
	xor  h                                           ; $4678: $ac
	call z, $dace                                    ; $4679: $cc $ce $da
	add  [hl]                                        ; $467c: $86
	ld   b, c                                        ; $467d: $41
	ld   de, $1111                                   ; $467e: $11 $11 $11
	ld   de, $9f32                                   ; $4681: $11 $32 $9f
	rst  $38                                         ; $4684: $ff
	rst  $38                                         ; $4685: $ff

Jump_0c6_4686:
	rst  $38                                         ; $4686: $ff
	db   $fc                                         ; $4687: $fc
	cp   h                                           ; $4688: $bc
	reti                                             ; $4689: $d9


	sbc  c                                           ; $468a: $99
	adc  d                                           ; $468b: $8a
	cp   d                                           ; $468c: $ba
	cp   [hl]                                        ; $468d: $be
	db   $ed                                         ; $468e: $ed
	db   $db                                         ; $468f: $db
	sub  a                                           ; $4690: $97
	ld   sp, $1111                                   ; $4691: $31 $11 $11
	ld   de, $3311                                   ; $4694: $11 $11 $33
	inc  l                                           ; $4697: $2c
	rst  $38                                         ; $4698: $ff
	rst  $38                                         ; $4699: $ff
	rst  $38                                         ; $469a: $ff
	db   $fc                                         ; $469b: $fc
	xor  l                                           ; $469c: $ad
	jp   c, $8ba9                                    ; $469d: $da $a9 $8b

	cp   d                                           ; $46a0: $ba
	xor  [hl]                                        ; $46a1: $ae
	db   $dd                                         ; $46a2: $dd
	db   $db                                         ; $46a3: $db
	xor  b                                           ; $46a4: $a8
	ld   b, c                                        ; $46a5: $41
	ld   de, $1111                                   ; $46a6: $11 $11 $11
	ld   de, $4814                                   ; $46a9: $11 $14 $48
	rst  $28                                         ; $46ac: $ef
	rst  $38                                         ; $46ad: $ff
	rst  $38                                         ; $46ae: $ff
	db   $fd                                         ; $46af: $fd
	set  3, e                                        ; $46b0: $cb $db
	xor  d                                           ; $46b2: $aa
	xor  e                                           ; $46b3: $ab
	cp   d                                           ; $46b4: $ba
	cp   l                                           ; $46b5: $bd
	res  7, h                                        ; $46b6: $cb $bc
	cp   b                                           ; $46b8: $b8
	ld   [hl+], a                                    ; $46b9: $22
	ld   de, $1111                                   ; $46ba: $11 $11 $11
	ld   de, $5f31                                   ; $46bd: $11 $31 $5f
	db   $ed                                         ; $46c0: $ed
	rst  $38                                         ; $46c1: $ff
	rst  $38                                         ; $46c2: $ff
	adc  $ec                                         ; $46c3: $ce $ec
	xor  c                                           ; $46c5: $a9
	cp   e                                           ; $46c6: $bb
	cp   c                                           ; $46c7: $b9
	sbc  l                                           ; $46c8: $9d
	db   $eb                                         ; $46c9: $eb
	sbc  h                                           ; $46ca: $9c
	bit  6, l                                        ; $46cb: $cb $75
	inc  sp                                          ; $46cd: $33
	ld   de, $1111                                   ; $46ce: $11 $11 $11
	inc  d                                           ; $46d1: $14
	inc  d                                           ; $46d2: $14
	cp   l                                           ; $46d3: $bd
	db   $fd                                         ; $46d4: $fd
	rst  $38                                         ; $46d5: $ff
	ld   a, [$eabf]                                  ; $46d6: $fa $bf $ea
	adc  e                                           ; $46d9: $8b
	call z, $ce8a                                    ; $46da: $cc $8a $ce
	jp   z, $a6dc                                    ; $46dd: $ca $dc $a6

	ld   d, l                                        ; $46e0: $55
	ld   sp, $1111                                   ; $46e1: $31 $11 $11
	inc  d                                           ; $46e4: $14
	ld   de, $df89                                   ; $46e5: $11 $89 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46e8: $cf
	db   $fc                                         ; $46e9: $fc
	cp   a                                           ; $46ea: $bf
	ld   a, [$8a8a]                                  ; $46eb: $fa $8a $8a
	xor  b                                           ; $46ee: $a8
	adc  $c8                                         ; $46ef: $ce $c8
	adc  $a7                                         ; $46f1: $ce $a7
	ld   d, h                                        ; $46f3: $54
	ld   b, e                                        ; $46f4: $43
	ld   de, $1311                                   ; $46f5: $11 $11 $13
	ld   de, $bfc9                                   ; $46f8: $11 $c9 $bf
	db   $dd                                         ; $46fb: $dd
	rst  $38                                         ; $46fc: $ff
	xor  c                                           ; $46fd: $a9
	adc  $a7                                         ; $46fe: $ce $a7
	ld   a, d                                        ; $4700: $7a
	rst  ToBoot                                         ; $4701: $c7
	ld   a, d                                        ; $4702: $7a
	db   $db                                         ; $4703: $db
	adc  d                                           ; $4704: $8a
	cp   c                                           ; $4705: $b9
	ld   d, h                                        ; $4706: $54
	ld   b, e                                        ; $4707: $43
	ld   hl, $5311                                   ; $4708: $21 $11 $53
	inc  de                                          ; $470b: $13
	xor  l                                           ; $470c: $ad
	sbc  e                                           ; $470d: $9b
	rst  $38                                         ; $470e: $ff
	cp   e                                           ; $470f: $bb
	db   $ec                                         ; $4710: $ec
	ld   [$9a79], a                                  ; $4711: $ea $79 $9a
	adc  d                                           ; $4714: $8a
	adc  e                                           ; $4715: $8b
	sbc  b                                           ; $4716: $98
	cp   b                                           ; $4717: $b8
	halt                                             ; $4718: $76
	ld   h, l                                        ; $4719: $65
	ld   b, d                                        ; $471a: $42
	ld   de, $2115                                   ; $471b: $11 $15 $21
	adc  e                                           ; $471e: $8b
	and  l                                           ; $471f: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4720: $cf
	db   $db                                         ; $4721: $db
	adc  e                                           ; $4722: $8b
	cp   $87                                         ; $4723: $fe $87
	xor  e                                           ; $4725: $ab
	ld   [hl], h                                     ; $4726: $74
	sbc  e                                           ; $4727: $9b
	or   a                                           ; $4728: $b7
	ld   l, b                                        ; $4729: $68
	halt                                             ; $472a: $76
	ld   d, l                                        ; $472b: $55
	ld   h, l                                        ; $472c: $65
	ld   [hl-], a                                    ; $472d: $32
	inc  [hl]                                        ; $472e: $34
	ld   d, a                                        ; $472f: $57
	sub  l                                           ; $4730: $95
	adc  h                                           ; $4731: $8c
	cp   c                                           ; $4732: $b9
	cp   l                                           ; $4733: $bd
	xor  d                                           ; $4734: $aa
	sbc  h                                           ; $4735: $9c
	ld   a, [$aa57]                                  ; $4736: $fa $57 $aa
	ld   [hl], l                                     ; $4739: $75
	adc  e                                           ; $473a: $8b
	ld   [hl], d                                     ; $473b: $72
	ld   a, [hl-]                                    ; $473c: $3a
	and  e                                           ; $473d: $a3
	inc  d                                           ; $473e: $14
	ld   h, h                                        ; $473f: $64
	ld   d, [hl]                                     ; $4740: $56
	add  [hl]                                        ; $4741: $86
	ld   l, d                                        ; $4742: $6a
	xor  c                                           ; $4743: $a9
	cp   d                                           ; $4744: $ba
	xor  l                                           ; $4745: $ad
	ret  z                                           ; $4746: $c8

	call c, Call_0c6_79a8                            ; $4747: $dc $a8 $79
	cp   d                                           ; $474a: $ba
	ld   l, b                                        ; $474b: $68
	add  l                                           ; $474c: $85
	ld   b, l                                        ; $474d: $45
	halt                                             ; $474e: $76
	ld   [hl], l                                     ; $474f: $75
	ld   d, l                                        ; $4750: $55
	ld   h, l                                        ; $4751: $65
	ld   e, b                                        ; $4752: $58
	ld   h, a                                        ; $4753: $67
	cp   c                                           ; $4754: $b9
	ld   l, b                                        ; $4755: $68
	call c, $bc88                                    ; $4756: $dc $88 $bc
	sbc  d                                           ; $4759: $9a
	cp   e                                           ; $475a: $bb
	and  a                                           ; $475b: $a7
	ld   l, b                                        ; $475c: $68
	add  [hl]                                        ; $475d: $86
	ld   d, l                                        ; $475e: $55
	ld   h, [hl]                                     ; $475f: $66
	ld   h, l                                        ; $4760: $65
	ld   h, [hl]                                     ; $4761: $66
	ld   d, l                                        ; $4762: $55
	ld   [hl], a                                     ; $4763: $77
	ld   [hl], a                                     ; $4764: $77
	ld   a, c                                        ; $4765: $79
	cp   e                                           ; $4766: $bb
	ld   l, b                                        ; $4767: $68
	cp   e                                           ; $4768: $bb
	sub  a                                           ; $4769: $97
	xor  h                                           ; $476a: $ac
	ld   [$b96a], a                                  ; $476b: $ea $6a $b9
	ld   h, h                                        ; $476e: $64
	sbc  c                                           ; $476f: $99
	ld   h, h                                        ; $4770: $64
	ld   l, b                                        ; $4771: $68
	ld   [hl], l                                     ; $4772: $75
	scf                                              ; $4773: $37
	sbc  b                                           ; $4774: $98
	ld   h, l                                        ; $4775: $65
	ld   a, c                                        ; $4776: $79
	cp   c                                           ; $4777: $b9
	ld   h, a                                        ; $4778: $67
	xor  d                                           ; $4779: $aa
	and  a                                           ; $477a: $a7
	adc  [hl]                                        ; $477b: $8e
	and  $5b                                         ; $477c: $e6 $5b
	cp   e                                           ; $477e: $bb
	ld   d, l                                        ; $477f: $55
	sbc  b                                           ; $4780: $98
	ld   d, [hl]                                     ; $4781: $56
	ld   [hl], a                                     ; $4782: $77
	add  a                                           ; $4783: $87
	ld   h, a                                        ; $4784: $67
	ld   h, a                                        ; $4785: $67
	sub  a                                           ; $4786: $97
	ld   l, b                                        ; $4787: $68
	sbc  b                                           ; $4788: $98
	ld   l, b                                        ; $4789: $68
	xor  c                                           ; $478a: $a9
	adc  b                                           ; $478b: $88
	adc  d                                           ; $478c: $8a
	adc  c                                           ; $478d: $89
	xor  c                                           ; $478e: $a9
	sbc  b                                           ; $478f: $98
	ld   [hl], a                                     ; $4790: $77
	and  a                                           ; $4791: $a7
	ld   l, b                                        ; $4792: $68
	sub  a                                           ; $4793: $97
	ld   [hl], a                                     ; $4794: $77
	ld   l, b                                        ; $4795: $68
	halt                                             ; $4796: $76
	ld   [hl], a                                     ; $4797: $77
	sbc  b                                           ; $4798: $98
	ld   [hl], a                                     ; $4799: $77
	xor  b                                           ; $479a: $a8
	ld   [hl], a                                     ; $479b: $77
	sbc  c                                           ; $479c: $99
	ld   a, b                                        ; $479d: $78
	xor  c                                           ; $479e: $a9
	xor  c                                           ; $479f: $a9
	ld   l, c                                        ; $47a0: $69
	and  [hl]                                        ; $47a1: $a6
	ld   l, b                                        ; $47a2: $68
	sbc  b                                           ; $47a3: $98
	add  a                                           ; $47a4: $87
	and  a                                           ; $47a5: $a7
	ld   a, b                                        ; $47a6: $78
	add  a                                           ; $47a7: $87
	ld   a, c                                        ; $47a8: $79
	ld   [hl], a                                     ; $47a9: $77
	ld   [hl], a                                     ; $47aa: $77
	sbc  b                                           ; $47ab: $98
	ld   a, b                                        ; $47ac: $78
	sbc  c                                           ; $47ad: $99
	ld   [hl], a                                     ; $47ae: $77
	sbc  c                                           ; $47af: $99
	sbc  b                                           ; $47b0: $98
	sbc  b                                           ; $47b1: $98
	adc  b                                           ; $47b2: $88
	adc  b                                           ; $47b3: $88
	sbc  b                                           ; $47b4: $98
	ld   h, a                                        ; $47b5: $67
	sub  a                                           ; $47b6: $97
	ld   [hl], a                                     ; $47b7: $77
	ld   a, d                                        ; $47b8: $7a
	add  a                                           ; $47b9: $87
	sbc  b                                           ; $47ba: $98
	sbc  b                                           ; $47bb: $98
	halt                                             ; $47bc: $76
	adc  c                                           ; $47bd: $89
	add  a                                           ; $47be: $87
	sub  a                                           ; $47bf: $97
	xor  c                                           ; $47c0: $a9
	ld   l, d                                        ; $47c1: $6a
	adc  c                                           ; $47c2: $89
	ld   a, b                                        ; $47c3: $78
	adc  b                                           ; $47c4: $88
	sub  a                                           ; $47c5: $97
	add  a                                           ; $47c6: $87
	sbc  c                                           ; $47c7: $99
	sub  [hl]                                        ; $47c8: $96
	adc  d                                           ; $47c9: $8a
	ld   a, c                                        ; $47ca: $79
	add  a                                           ; $47cb: $87
	adc  c                                           ; $47cc: $89
	adc  b                                           ; $47cd: $88
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  c                                           ; $47d0: $89
	sbc  c                                           ; $47d1: $99
	adc  c                                           ; $47d2: $89
	adc  c                                           ; $47d3: $89
	sbc  d                                           ; $47d4: $9a
	sbc  b                                           ; $47d5: $98
	sbc  c                                           ; $47d6: $99
	sbc  b                                           ; $47d7: $98
	sbc  b                                           ; $47d8: $98
	sbc  b                                           ; $47d9: $98
	ld   a, b                                        ; $47da: $78
	sbc  c                                           ; $47db: $99
	ld   a, c                                        ; $47dc: $79
	sub  a                                           ; $47dd: $97
	sbc  b                                           ; $47de: $98
	ld   a, b                                        ; $47df: $78
	xor  c                                           ; $47e0: $a9
	adc  c                                           ; $47e1: $89
	adc  c                                           ; $47e2: $89
	sbc  c                                           ; $47e3: $99
	sbc  c                                           ; $47e4: $99
	sbc  b                                           ; $47e5: $98
	adc  c                                           ; $47e6: $89
	adc  b                                           ; $47e7: $88
	sbc  b                                           ; $47e8: $98
	adc  b                                           ; $47e9: $88
	adc  b                                           ; $47ea: $88
	adc  b                                           ; $47eb: $88
	adc  b                                           ; $47ec: $88
	adc  b                                           ; $47ed: $88
	adc  c                                           ; $47ee: $89
	adc  c                                           ; $47ef: $89
	add  a                                           ; $47f0: $87
	ld   a, b                                        ; $47f1: $78
	add  a                                           ; $47f2: $87
	ld   a, c                                        ; $47f3: $79
	adc  b                                           ; $47f4: $88
	ld   a, c                                        ; $47f5: $79
	adc  b                                           ; $47f6: $88
	sbc  b                                           ; $47f7: $98
	adc  c                                           ; $47f8: $89
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	sbc  b                                           ; $47fb: $98
	adc  b                                           ; $47fc: $88
	ld   a, c                                        ; $47fd: $79
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	ld   a, b                                        ; $4802: $78
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	ld   [hl], a                                     ; $4805: $77
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	sbc  b                                           ; $4809: $98
	adc  c                                           ; $480a: $89
	adc  c                                           ; $480b: $89
	add  a                                           ; $480c: $87
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	ld   a, c                                        ; $480f: $79
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  c                                           ; $4812: $89
	add  a                                           ; $4813: $87
	add  a                                           ; $4814: $87
	ld   a, b                                        ; $4815: $78
	ld   [hl], a                                     ; $4816: $77
	ld   a, b                                        ; $4817: $78
	adc  b                                           ; $4818: $88
	add  a                                           ; $4819: $87
	adc  b                                           ; $481a: $88
	add  a                                           ; $481b: $87
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	add  a                                           ; $481f: $87
	adc  b                                           ; $4820: $88
	ld   a, b                                        ; $4821: $78
	add  a                                           ; $4822: $87
	add  a                                           ; $4823: $87
	ld   [hl], a                                     ; $4824: $77
	adc  b                                           ; $4825: $88
	add  a                                           ; $4826: $87
	add  a                                           ; $4827: $87
	ld   a, b                                        ; $4828: $78
	ld   a, b                                        ; $4829: $78
	add  a                                           ; $482a: $87
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	ld   [hl], a                                     ; $482d: $77
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	ld   [hl], a                                     ; $4831: $77
	ld   [hl], a                                     ; $4832: $77
	adc  b                                           ; $4833: $88
	add  a                                           ; $4834: $87
	adc  b                                           ; $4835: $88
	ld   [hl], a                                     ; $4836: $77
	ld   a, b                                        ; $4837: $78
	ld   a, b                                        ; $4838: $78
	ld   a, b                                        ; $4839: $78
	add  a                                           ; $483a: $87
	add  a                                           ; $483b: $87
	ld   a, b                                        ; $483c: $78
	ld   [hl], a                                     ; $483d: $77
	ld   a, b                                        ; $483e: $78
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	adc  b                                           ; $4841: $88
	ld   a, b                                        ; $4842: $78
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	adc  b                                           ; $4845: $88
	add  a                                           ; $4846: $87
	ld   a, b                                        ; $4847: $78
	ld   a, b                                        ; $4848: $78
	adc  b                                           ; $4849: $88
	adc  b                                           ; $484a: $88
	adc  b                                           ; $484b: $88
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	adc  b                                           ; $484e: $88
	adc  b                                           ; $484f: $88
	add  a                                           ; $4850: $87
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  b                                           ; $4853: $88
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	adc  b                                           ; $4856: $88
	add  a                                           ; $4857: $87
	adc  b                                           ; $4858: $88
	add  a                                           ; $4859: $87
	adc  b                                           ; $485a: $88
	add  a                                           ; $485b: $87
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  b                                           ; $4862: $88
	adc  b                                           ; $4863: $88
	adc  b                                           ; $4864: $88

Jump_0c6_4865:
	adc  b                                           ; $4865: $88
	adc  b                                           ; $4866: $88
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	ld   [hl], a                                     ; $486a: $77
	adc  b                                           ; $486b: $88
	adc  b                                           ; $486c: $88
	ld   a, b                                        ; $486d: $78
	add  a                                           ; $486e: $87
	adc  c                                           ; $486f: $89
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
	add  a                                           ; $487e: $87
	adc  b                                           ; $487f: $88
	ld   a, b                                        ; $4880: $78
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
	sbc  b                                           ; $4893: $98
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
	adc  c                                           ; $48a6: $89
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
	sbc  b                                           ; $48a9: $98
	adc  c                                           ; $48aa: $89
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  c                                           ; $48af: $89
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  c                                           ; $48b2: $89
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	sbc  c                                           ; $48b7: $99
	adc  b                                           ; $48b8: $88
	sbc  c                                           ; $48b9: $99
	sbc  b                                           ; $48ba: $98
	adc  c                                           ; $48bb: $89
	sbc  b                                           ; $48bc: $98
	adc  c                                           ; $48bd: $89
	sbc  b                                           ; $48be: $98
	adc  c                                           ; $48bf: $89
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  c                                           ; $48c3: $89
	adc  c                                           ; $48c4: $89
	sbc  b                                           ; $48c5: $98
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  c                                           ; $48c8: $89
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	sbc  b                                           ; $48cd: $98
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	sbc  b                                           ; $48d4: $98
	adc  c                                           ; $48d5: $89
	sbc  c                                           ; $48d6: $99
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  c                                           ; $48d9: $89
	adc  b                                           ; $48da: $88
	adc  c                                           ; $48db: $89
	adc  b                                           ; $48dc: $88
	sbc  b                                           ; $48dd: $98
	sbc  c                                           ; $48de: $99
	adc  c                                           ; $48df: $89
	adc  b                                           ; $48e0: $88
	add  a                                           ; $48e1: $87
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  c                                           ; $48e4: $89
	adc  b                                           ; $48e5: $88
	ld   a, b                                        ; $48e6: $78
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	sbc  b                                           ; $48e9: $98
	adc  b                                           ; $48ea: $88
	add  a                                           ; $48eb: $87
	adc  c                                           ; $48ec: $89
	add  a                                           ; $48ed: $87
	sbc  b                                           ; $48ee: $98
	adc  b                                           ; $48ef: $88
	ld   a, b                                        ; $48f0: $78
	sbc  b                                           ; $48f1: $98
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  c                                           ; $48f5: $89
	adc  b                                           ; $48f6: $88
	adc  c                                           ; $48f7: $89
	adc  b                                           ; $48f8: $88
	sbc  c                                           ; $48f9: $99
	sbc  b                                           ; $48fa: $98
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	ld   a, b                                        ; $48ff: $78
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	adc  b                                           ; $4903: $88
	sbc  c                                           ; $4904: $99
	adc  c                                           ; $4905: $89
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	sbc  b                                           ; $4909: $98
	adc  b                                           ; $490a: $88
	add  a                                           ; $490b: $87
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  c                                           ; $490e: $89
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	sbc  b                                           ; $4911: $98
	sbc  c                                           ; $4912: $99
	adc  b                                           ; $4913: $88
	sbc  b                                           ; $4914: $98
	adc  b                                           ; $4915: $88
	adc  b                                           ; $4916: $88
	adc  b                                           ; $4917: $88
	adc  b                                           ; $4918: $88
	ld   [hl], a                                     ; $4919: $77
	adc  b                                           ; $491a: $88
	sbc  b                                           ; $491b: $98
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	sbc  b                                           ; $491f: $98
	add  a                                           ; $4920: $87
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	adc  b                                           ; $4923: $88
	adc  b                                           ; $4924: $88
	adc  b                                           ; $4925: $88
	adc  b                                           ; $4926: $88
	adc  b                                           ; $4927: $88
	adc  c                                           ; $4928: $89
	adc  b                                           ; $4929: $88
	adc  b                                           ; $492a: $88
	adc  b                                           ; $492b: $88
	sbc  c                                           ; $492c: $99
	adc  b                                           ; $492d: $88
	adc  c                                           ; $492e: $89
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	ld   a, b                                        ; $4932: $78
	ld   [hl], a                                     ; $4933: $77
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	add  a                                           ; $4937: $87
	sbc  c                                           ; $4938: $99
	adc  c                                           ; $4939: $89
	adc  b                                           ; $493a: $88
	add  a                                           ; $493b: $87
	ld   a, b                                        ; $493c: $78
	ld   a, b                                        ; $493d: $78
	sbc  b                                           ; $493e: $98
	adc  b                                           ; $493f: $88
	ld   a, b                                        ; $4940: $78
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	sbc  c                                           ; $4944: $99
	sbc  b                                           ; $4945: $98
	sbc  c                                           ; $4946: $99
	adc  b                                           ; $4947: $88
	sbc  b                                           ; $4948: $98
	adc  c                                           ; $4949: $89
	add  a                                           ; $494a: $87
	ld   [hl], a                                     ; $494b: $77
	ld   [hl], a                                     ; $494c: $77
	adc  b                                           ; $494d: $88
	ld   [hl], a                                     ; $494e: $77
	add  a                                           ; $494f: $87
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	ld   a, b                                        ; $4952: $78
	adc  b                                           ; $4953: $88
	adc  c                                           ; $4954: $89
	sbc  b                                           ; $4955: $98
	add  a                                           ; $4956: $87
	ld   a, b                                        ; $4957: $78
	adc  b                                           ; $4958: $88
	adc  c                                           ; $4959: $89
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	sbc  b                                           ; $495d: $98
	sbc  b                                           ; $495e: $98
	adc  b                                           ; $495f: $88
	sbc  c                                           ; $4960: $99
	add  a                                           ; $4961: $87
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	add  a                                           ; $4964: $87
	ld   a, b                                        ; $4965: $78
	ld   a, b                                        ; $4966: $78
	add  a                                           ; $4967: $87
	adc  b                                           ; $4968: $88
	ld   [hl], a                                     ; $4969: $77
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	ld   [hl], a                                     ; $496e: $77
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	ld   [hl], a                                     ; $4972: $77
	adc  c                                           ; $4973: $89
	adc  b                                           ; $4974: $88
	sbc  b                                           ; $4975: $98
	sbc  b                                           ; $4976: $98
	adc  b                                           ; $4977: $88
	sbc  c                                           ; $4978: $99
	sbc  c                                           ; $4979: $99
	sbc  b                                           ; $497a: $98
	adc  b                                           ; $497b: $88
	adc  b                                           ; $497c: $88
	adc  b                                           ; $497d: $88
	adc  b                                           ; $497e: $88
	ld   a, b                                        ; $497f: $78
	adc  b                                           ; $4980: $88
	add  a                                           ; $4981: $87
	add  a                                           ; $4982: $87
	ld   a, b                                        ; $4983: $78
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	ld   a, b                                        ; $4987: $78
	sbc  b                                           ; $4988: $98
	sbc  b                                           ; $4989: $98
	add  a                                           ; $498a: $87
	adc  c                                           ; $498b: $89
	adc  b                                           ; $498c: $88
	adc  b                                           ; $498d: $88
	adc  b                                           ; $498e: $88
	adc  b                                           ; $498f: $88
	xor  c                                           ; $4990: $a9
	sbc  c                                           ; $4991: $99
	sbc  b                                           ; $4992: $98
	sbc  c                                           ; $4993: $99
	adc  b                                           ; $4994: $88
	add  a                                           ; $4995: $87
	ld   [hl], a                                     ; $4996: $77
	ld   [hl], a                                     ; $4997: $77
	adc  b                                           ; $4998: $88
	sub  a                                           ; $4999: $97
	ld   [hl], a                                     ; $499a: $77
	add  a                                           ; $499b: $87
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	add  a                                           ; $499f: $87
	sbc  c                                           ; $49a0: $99
	adc  b                                           ; $49a1: $88
	adc  b                                           ; $49a2: $88
	add  a                                           ; $49a3: $87
	adc  b                                           ; $49a4: $88
	adc  b                                           ; $49a5: $88
	sbc  b                                           ; $49a6: $98
	add  a                                           ; $49a7: $87
	adc  c                                           ; $49a8: $89
	sbc  b                                           ; $49a9: $98
	adc  c                                           ; $49aa: $89
	ld   a, b                                        ; $49ab: $78
	sbc  b                                           ; $49ac: $98
	adc  c                                           ; $49ad: $89
	adc  b                                           ; $49ae: $88
	ld   [hl], a                                     ; $49af: $77
	adc  b                                           ; $49b0: $88
	sbc  b                                           ; $49b1: $98
	ld   a, b                                        ; $49b2: $78
	sbc  b                                           ; $49b3: $98
	add  a                                           ; $49b4: $87
	adc  c                                           ; $49b5: $89
	add  a                                           ; $49b6: $87
	ld   a, b                                        ; $49b7: $78
	adc  c                                           ; $49b8: $89
	add  a                                           ; $49b9: $87
	ld   a, b                                        ; $49ba: $78
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	adc  b                                           ; $49bd: $88
	sub  a                                           ; $49be: $97
	ld   a, b                                        ; $49bf: $78
	adc  c                                           ; $49c0: $89
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	adc  b                                           ; $49c3: $88
	adc  b                                           ; $49c4: $88
	adc  c                                           ; $49c5: $89
	sub  a                                           ; $49c6: $97
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	sbc  b                                           ; $49c9: $98
	sbc  c                                           ; $49ca: $99
	add  a                                           ; $49cb: $87
	ld   a, b                                        ; $49cc: $78
	ld   a, b                                        ; $49cd: $78
	adc  c                                           ; $49ce: $89
	ld   a, b                                        ; $49cf: $78
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	add  a                                           ; $49d3: $87
	adc  b                                           ; $49d4: $88
	ld   [hl], a                                     ; $49d5: $77
	add  a                                           ; $49d6: $87
	sbc  b                                           ; $49d7: $98
	adc  c                                           ; $49d8: $89
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  c                                           ; $49db: $89
	ld   a, b                                        ; $49dc: $78
	adc  c                                           ; $49dd: $89
	sbc  b                                           ; $49de: $98
	adc  b                                           ; $49df: $88
	adc  b                                           ; $49e0: $88
	adc  b                                           ; $49e1: $88
	sbc  c                                           ; $49e2: $99
	sbc  b                                           ; $49e3: $98
	adc  b                                           ; $49e4: $88
	adc  b                                           ; $49e5: $88
	ld   [hl], a                                     ; $49e6: $77
	ld   [hl], a                                     ; $49e7: $77
	ld   [hl], a                                     ; $49e8: $77
	ld   [hl], a                                     ; $49e9: $77
	add  a                                           ; $49ea: $87
	ld   [hl], a                                     ; $49eb: $77
	sbc  c                                           ; $49ec: $99
	sbc  b                                           ; $49ed: $98
	adc  b                                           ; $49ee: $88
	adc  c                                           ; $49ef: $89
	sbc  c                                           ; $49f0: $99
	adc  c                                           ; $49f1: $89
	adc  c                                           ; $49f2: $89
	adc  c                                           ; $49f3: $89
	sbc  b                                           ; $49f4: $98
	add  a                                           ; $49f5: $87
	adc  b                                           ; $49f6: $88
	ld   [hl], a                                     ; $49f7: $77
	ld   [hl], a                                     ; $49f8: $77
	ld   [hl], a                                     ; $49f9: $77
	ld   h, a                                        ; $49fa: $67
	halt                                             ; $49fb: $76
	ld   d, [hl]                                     ; $49fc: $56
	ld   [hl], a                                     ; $49fd: $77
	ld   h, [hl]                                     ; $49fe: $66
	ld   a, b                                        ; $49ff: $78
	adc  b                                           ; $4a00: $88
	sbc  c                                           ; $4a01: $99
	xor  e                                           ; $4a02: $ab
	cp   d                                           ; $4a03: $ba
	xor  e                                           ; $4a04: $ab
	cp   e                                           ; $4a05: $bb
	cp   d                                           ; $4a06: $ba
	sbc  d                                           ; $4a07: $9a
	adc  b                                           ; $4a08: $88
	ld   [hl], a                                     ; $4a09: $77
	halt                                             ; $4a0a: $76
	ld   h, l                                        ; $4a0b: $65
	ld   b, d                                        ; $4a0c: $42
	ld   hl, $3411                                   ; $4a0d: $21 $11 $34
	ld   d, [hl]                                     ; $4a10: $56
	ld   a, c                                        ; $4a11: $79
	cp   h                                           ; $4a12: $bc
	call $ffef                                       ; $4a13: $cd $ef $ff
	cp   $db                                         ; $4a16: $fe $db
	jp   z, $8799                                    ; $4a18: $ca $99 $87

	ld   h, [hl]                                     ; $4a1b: $66
	ld   d, l                                        ; $4a1c: $55
	ld   d, e                                        ; $4a1d: $53
	inc  sp                                          ; $4a1e: $33
	ld   de, $3413                                   ; $4a1f: $11 $13 $34
	ld   b, l                                        ; $4a22: $45
	ld   a, c                                        ; $4a23: $79
	cp   e                                           ; $4a24: $bb
	call c, $ffef                                    ; $4a25: $dc $ef $ff
	db   $ed                                         ; $4a28: $ed
	call $98ba                                       ; $4a29: $cd $ba $98
	halt                                             ; $4a2c: $76
	ld   [hl], l                                     ; $4a2d: $75
	halt                                             ; $4a2e: $76
	halt                                             ; $4a2f: $76
	ld   h, h                                        ; $4a30: $64
	inc  sp                                          ; $4a31: $33
	ld   de, $2413                                   ; $4a32: $11 $13 $24
	ld   b, h                                        ; $4a35: $44
	ld   a, c                                        ; $4a36: $79
	xor  e                                           ; $4a37: $ab
	db   $dd                                         ; $4a38: $dd
	rst  $38                                         ; $4a39: $ff
	rst  $38                                         ; $4a3a: $ff
	xor  $cc                                         ; $4a3b: $ee $cc
	xor  c                                           ; $4a3d: $a9
	ld   [hl], a                                     ; $4a3e: $77
	ld   h, [hl]                                     ; $4a3f: $66
	ld   h, l                                        ; $4a40: $65
	ld   h, [hl]                                     ; $4a41: $66
	ld   h, [hl]                                     ; $4a42: $66
	ld   d, h                                        ; $4a43: $54
	ld   [hl-], a                                    ; $4a44: $32
	ld   de, $3423                                   ; $4a45: $11 $23 $34
	ld   b, l                                        ; $4a48: $45
	ld   a, d                                        ; $4a49: $7a
	cp   l                                           ; $4a4a: $bd
	xor  $ff                                         ; $4a4b: $ee $ff
	rst  $38                                         ; $4a4d: $ff
	db   $fd                                         ; $4a4e: $fd
	call z, Call_0c6_77a9                            ; $4a4f: $cc $a9 $77
	ld   h, [hl]                                     ; $4a52: $66
	ld   h, l                                        ; $4a53: $65
	halt                                             ; $4a54: $76
	halt                                             ; $4a55: $76
	ld   h, l                                        ; $4a56: $65
	ld   b, e                                        ; $4a57: $43
	ld   de, $2423                                   ; $4a58: $11 $23 $24
	dec  [hl]                                        ; $4a5b: $35
	ld   l, b                                        ; $4a5c: $68
	xor  e                                           ; $4a5d: $ab
	db   $dd                                         ; $4a5e: $dd
	rst  $38                                         ; $4a5f: $ff
	rst  $38                                         ; $4a60: $ff
	cp   $cc                                         ; $4a61: $fe $cc
	xor  d                                           ; $4a63: $aa
	add  a                                           ; $4a64: $87
	ld   h, [hl]                                     ; $4a65: $66
	halt                                             ; $4a66: $76
	ld   h, [hl]                                     ; $4a67: $66
	ld   [hl], a                                     ; $4a68: $77
	halt                                             ; $4a69: $76
	ld   d, h                                        ; $4a6a: $54
	ld   sp, $3312                                   ; $4a6b: $31 $12 $33
	inc  sp                                          ; $4a6e: $33
	ld   b, l                                        ; $4a6f: $45
	adc  c                                           ; $4a70: $89
	call z, $ffce                                    ; $4a71: $cc $ce $ff
	cp   $dc                                         ; $4a74: $fe $dc
	res  7, b                                        ; $4a76: $cb $b8
	halt                                             ; $4a78: $76
	ld   [hl], a                                     ; $4a79: $77
	ld   [hl], a                                     ; $4a7a: $77
	ld   [hl], a                                     ; $4a7b: $77
	ld   a, b                                        ; $4a7c: $78
	halt                                             ; $4a7d: $76
	ld   d, h                                        ; $4a7e: $54
	ld   hl, $3433                                   ; $4a7f: $21 $33 $34
	inc  sp                                          ; $4a82: $33
	ld   b, [hl]                                     ; $4a83: $46
	adc  d                                           ; $4a84: $8a
	cp   e                                           ; $4a85: $bb
	db   $dd                                         ; $4a86: $dd
	cp   $ed                                         ; $4a87: $fe $ed
	call z, $a9bb                                    ; $4a89: $cc $bb $a9
	adc  b                                           ; $4a8c: $88
	add  a                                           ; $4a8d: $87
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	ld   [hl], a                                     ; $4a91: $77
	ld   h, l                                        ; $4a92: $65
	ld   b, e                                        ; $4a93: $43
	inc  [hl]                                        ; $4a94: $34
	ld   b, h                                        ; $4a95: $44
	ld   b, e                                        ; $4a96: $43
	inc  [hl]                                        ; $4a97: $34
	ld   h, a                                        ; $4a98: $67
	sbc  c                                           ; $4a99: $99
	sbc  d                                           ; $4a9a: $9a
	call z, $dcdc                                    ; $4a9b: $cc $dc $dc
	call z, $a9bb                                    ; $4a9e: $cc $bb $a9
	adc  b                                           ; $4aa1: $88
	sbc  c                                           ; $4aa2: $99
	sbc  c                                           ; $4aa3: $99
	adc  b                                           ; $4aa4: $88
	sbc  b                                           ; $4aa5: $98
	ld   [hl], a                                     ; $4aa6: $77
	ld   h, l                                        ; $4aa7: $65
	ld   d, h                                        ; $4aa8: $54
	ld   b, h                                        ; $4aa9: $44
	ld   b, h                                        ; $4aaa: $44
	ld   b, e                                        ; $4aab: $43
	inc  [hl]                                        ; $4aac: $34
	ld   d, [hl]                                     ; $4aad: $56
	ld   a, b                                        ; $4aae: $78
	adc  c                                           ; $4aaf: $89
	xor  e                                           ; $4ab0: $ab
	cp   h                                           ; $4ab1: $bc
	call z, $bbcc                                    ; $4ab2: $cc $cc $bb
	xor  d                                           ; $4ab5: $aa
	sbc  c                                           ; $4ab6: $99
	sbc  d                                           ; $4ab7: $9a
	xor  c                                           ; $4ab8: $a9
	sbc  b                                           ; $4ab9: $98
	sbc  b                                           ; $4aba: $98
	ld   [hl], a                                     ; $4abb: $77
	halt                                             ; $4abc: $76
	ld   h, l                                        ; $4abd: $65
	ld   d, h                                        ; $4abe: $54
	ld   b, h                                        ; $4abf: $44
	ld   b, h                                        ; $4ac0: $44
	ld   b, e                                        ; $4ac1: $43
	ld   b, h                                        ; $4ac2: $44
	ld   d, [hl]                                     ; $4ac3: $56
	ld   a, b                                        ; $4ac4: $78
	sbc  c                                           ; $4ac5: $99
	xor  d                                           ; $4ac6: $aa
	cp   e                                           ; $4ac7: $bb
	cp   e                                           ; $4ac8: $bb
	cp   e                                           ; $4ac9: $bb
	res  7, d                                        ; $4aca: $cb $ba
	xor  c                                           ; $4acc: $a9
	sbc  d                                           ; $4acd: $9a
	sbc  c                                           ; $4ace: $99
	adc  b                                           ; $4acf: $88
	sbc  b                                           ; $4ad0: $98
	ld   [hl], a                                     ; $4ad1: $77
	ld   [hl], a                                     ; $4ad2: $77
	ld   h, [hl]                                     ; $4ad3: $66
	ld   d, l                                        ; $4ad4: $55
	ld   b, l                                        ; $4ad5: $45
	ld   b, h                                        ; $4ad6: $44
	ld   b, h                                        ; $4ad7: $44
	ld   b, l                                        ; $4ad8: $45
	ld   d, [hl]                                     ; $4ad9: $56
	ld   h, a                                        ; $4ada: $67
	adc  b                                           ; $4adb: $88
	sbc  c                                           ; $4adc: $99
	cp   d                                           ; $4add: $ba
	cp   e                                           ; $4ade: $bb
	cp   e                                           ; $4adf: $bb
	cp   d                                           ; $4ae0: $ba
	cp   d                                           ; $4ae1: $ba
	xor  c                                           ; $4ae2: $a9
	xor  c                                           ; $4ae3: $a9
	sbc  c                                           ; $4ae4: $99
	sbc  b                                           ; $4ae5: $98
	adc  c                                           ; $4ae6: $89
	adc  b                                           ; $4ae7: $88
	ld   [hl], a                                     ; $4ae8: $77
	ld   [hl], a                                     ; $4ae9: $77
	ld   h, [hl]                                     ; $4aea: $66
	ld   d, l                                        ; $4aeb: $55
	ld   d, l                                        ; $4aec: $55
	ld   d, l                                        ; $4aed: $55
	ld   d, l                                        ; $4aee: $55
	ld   d, l                                        ; $4aef: $55
	ld   h, [hl]                                     ; $4af0: $66
	ld   h, a                                        ; $4af1: $67
	adc  b                                           ; $4af2: $88
	adc  c                                           ; $4af3: $89
	sbc  d                                           ; $4af4: $9a
	xor  d                                           ; $4af5: $aa
	xor  e                                           ; $4af6: $ab
	xor  d                                           ; $4af7: $aa
	xor  d                                           ; $4af8: $aa
	xor  d                                           ; $4af9: $aa
	xor  d                                           ; $4afa: $aa
	xor  d                                           ; $4afb: $aa
	sbc  c                                           ; $4afc: $99
	sbc  c                                           ; $4afd: $99
	sbc  c                                           ; $4afe: $99
	adc  b                                           ; $4aff: $88
	add  a                                           ; $4b00: $87
	ld   [hl], a                                     ; $4b01: $77
	ld   h, [hl]                                     ; $4b02: $66
	ld   d, l                                        ; $4b03: $55
	ld   d, [hl]                                     ; $4b04: $56
	ld   d, l                                        ; $4b05: $55
	ld   d, l                                        ; $4b06: $55
	ld   d, [hl]                                     ; $4b07: $56
	ld   h, [hl]                                     ; $4b08: $66
	ld   [hl], a                                     ; $4b09: $77
	adc  c                                           ; $4b0a: $89
	adc  c                                           ; $4b0b: $89
	sbc  d                                           ; $4b0c: $9a
	xor  d                                           ; $4b0d: $aa
	xor  d                                           ; $4b0e: $aa
	xor  d                                           ; $4b0f: $aa
	xor  d                                           ; $4b10: $aa
	xor  c                                           ; $4b11: $a9
	sbc  c                                           ; $4b12: $99
	sbc  d                                           ; $4b13: $9a
	xor  c                                           ; $4b14: $a9
	sbc  c                                           ; $4b15: $99
	adc  c                                           ; $4b16: $89
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	ld   [hl], a                                     ; $4b19: $77
	ld   h, [hl]                                     ; $4b1a: $66
	ld   h, l                                        ; $4b1b: $65
	ld   d, [hl]                                     ; $4b1c: $56
	ld   d, l                                        ; $4b1d: $55
	ld   d, l                                        ; $4b1e: $55
	ld   d, l                                        ; $4b1f: $55
	ld   h, [hl]                                     ; $4b20: $66
	ld   [hl], a                                     ; $4b21: $77
	adc  c                                           ; $4b22: $89
	sbc  c                                           ; $4b23: $99
	xor  c                                           ; $4b24: $a9
	sbc  d                                           ; $4b25: $9a
	xor  d                                           ; $4b26: $aa
	xor  d                                           ; $4b27: $aa
	sbc  c                                           ; $4b28: $99
	sbc  d                                           ; $4b29: $9a
	xor  d                                           ; $4b2a: $aa
	xor  c                                           ; $4b2b: $a9
	sbc  c                                           ; $4b2c: $99
	sbc  c                                           ; $4b2d: $99
	adc  c                                           ; $4b2e: $89
	adc  b                                           ; $4b2f: $88
	ld   [hl], a                                     ; $4b30: $77
	halt                                             ; $4b31: $76
	ld   h, [hl]                                     ; $4b32: $66
	ld   d, l                                        ; $4b33: $55
	ld   d, l                                        ; $4b34: $55
	ld   d, l                                        ; $4b35: $55
	ld   d, l                                        ; $4b36: $55
	ld   h, [hl]                                     ; $4b37: $66
	ld   h, a                                        ; $4b38: $67
	ld   a, c                                        ; $4b39: $79
	sbc  b                                           ; $4b3a: $98
	sbc  d                                           ; $4b3b: $9a
	sbc  d                                           ; $4b3c: $9a
	xor  e                                           ; $4b3d: $ab
	xor  d                                           ; $4b3e: $aa
	xor  e                                           ; $4b3f: $ab
	xor  d                                           ; $4b40: $aa
	xor  c                                           ; $4b41: $a9
	cp   d                                           ; $4b42: $ba
	sbc  c                                           ; $4b43: $99
	sbc  c                                           ; $4b44: $99
	sbc  c                                           ; $4b45: $99
	adc  b                                           ; $4b46: $88
	ld   [hl], a                                     ; $4b47: $77
	ld   [hl], a                                     ; $4b48: $77
	ld   h, [hl]                                     ; $4b49: $66
	ld   d, l                                        ; $4b4a: $55
	ld   b, l                                        ; $4b4b: $45
	ld   d, l                                        ; $4b4c: $55
	ld   d, l                                        ; $4b4d: $55
	ld   d, l                                        ; $4b4e: $55
	ld   h, [hl]                                     ; $4b4f: $66
	ld   a, b                                        ; $4b50: $78
	adc  b                                           ; $4b51: $88
	sbc  c                                           ; $4b52: $99
	xor  d                                           ; $4b53: $aa
	cp   e                                           ; $4b54: $bb
	cp   d                                           ; $4b55: $ba
	xor  e                                           ; $4b56: $ab
	xor  d                                           ; $4b57: $aa
	xor  c                                           ; $4b58: $a9
	sbc  d                                           ; $4b59: $9a
	sbc  c                                           ; $4b5a: $99
	sbc  b                                           ; $4b5b: $98
	sbc  c                                           ; $4b5c: $99
	add  a                                           ; $4b5d: $87
	ld   [hl], a                                     ; $4b5e: $77
	ld   h, [hl]                                     ; $4b5f: $66
	ld   h, [hl]                                     ; $4b60: $66
	ld   h, h                                        ; $4b61: $64
	inc  sp                                          ; $4b62: $33
	ld   b, l                                        ; $4b63: $45
	ld   d, [hl]                                     ; $4b64: $56
	ld   d, l                                        ; $4b65: $55
	ld   d, [hl]                                     ; $4b66: $56
	adc  b                                           ; $4b67: $88
	sbc  c                                           ; $4b68: $99
	sbc  e                                           ; $4b69: $9b
	call z, $bbcc                                    ; $4b6a: $cc $cc $bb
	cp   e                                           ; $4b6d: $bb
	cp   d                                           ; $4b6e: $ba
	sbc  d                                           ; $4b6f: $9a
	xor  c                                           ; $4b70: $a9
	sbc  c                                           ; $4b71: $99
	adc  c                                           ; $4b72: $89
	ld   [hl], a                                     ; $4b73: $77
	halt                                             ; $4b74: $76
	ld   h, [hl]                                     ; $4b75: $66
	ld   h, l                                        ; $4b76: $65
	ld   d, h                                        ; $4b77: $54
	ld   [hl+], a                                    ; $4b78: $22
	inc  [hl]                                        ; $4b79: $34
	ld   b, l                                        ; $4b7a: $45
	ld   h, [hl]                                     ; $4b7b: $66
	ld   h, a                                        ; $4b7c: $67
	sbc  d                                           ; $4b7d: $9a
	xor  d                                           ; $4b7e: $aa
	xor  e                                           ; $4b7f: $ab
	db   $dd                                         ; $4b80: $dd
	call c, $cbcc                                    ; $4b81: $dc $cc $cb
	xor  d                                           ; $4b84: $aa
	xor  d                                           ; $4b85: $aa
	sbc  c                                           ; $4b86: $99
	sbc  b                                           ; $4b87: $98
	sub  a                                           ; $4b88: $97
	halt                                             ; $4b89: $76
	ld   d, l                                        ; $4b8a: $55
	ld   d, l                                        ; $4b8b: $55
	ld   b, e                                        ; $4b8c: $43
	ld   sp, $3411                                   ; $4b8d: $31 $11 $34
	ld   d, a                                        ; $4b90: $57
	ld   a, c                                        ; $4b91: $79
	xor  e                                           ; $4b92: $ab
	set  1, h                                        ; $4b93: $cb $cc
	db   $dd                                         ; $4b95: $dd
	call c, $babb                                    ; $4b96: $dc $bb $ba
	call z, $89bb                                    ; $4b99: $cc $bb $89
	ld   a, b                                        ; $4b9c: $78
	add  a                                           ; $4b9d: $87
	ld   [hl], l                                     ; $4b9e: $75
	ld   b, e                                        ; $4b9f: $43
	inc  sp                                          ; $4ba0: $33
	ld   hl, $1111                                   ; $4ba1: $21 $11 $11
	ld   b, [hl]                                     ; $4ba4: $46
	adc  d                                           ; $4ba5: $8a
	xor  d                                           ; $4ba6: $aa
	adc  $ff                                         ; $4ba7: $ce $ff
	call z, $edad                                    ; $4ba9: $cc $ad $ed
	jp   z, $bc99                                    ; $4bac: $ca $99 $bc

	res  4, a                                        ; $4baf: $cb $a7
	ld   a, b                                        ; $4bb1: $78
	ld   [hl], l                                     ; $4bb2: $75
	ld   [hl-], a                                    ; $4bb3: $32
	ld   de, $1121                                   ; $4bb4: $11 $21 $11
	ld   de, $9c26                                   ; $4bb7: $11 $26 $9c
	sbc  $df                                         ; $4bba: $de $df
	db   $fc                                         ; $4bbc: $fc
	db   $db                                         ; $4bbd: $db
	cp   l                                           ; $4bbe: $bd
	rst  JumpTable                                         ; $4bbf: $df
	cp   h                                           ; $4bc0: $bc
	xor  c                                           ; $4bc1: $a9
	db   $ec                                         ; $4bc2: $ec
	res  5, d                                        ; $4bc3: $cb $aa
	ld   h, a                                        ; $4bc5: $67
	ld   h, e                                        ; $4bc6: $63
	ld   b, c                                        ; $4bc7: $41
	ld   de, $1111                                   ; $4bc8: $11 $11 $11
	ld   de, $ef68                                   ; $4bcb: $11 $68 $ef
	adc  $ef                                         ; $4bce: $ce $ef
	db   $ec                                         ; $4bd0: $ec
	and  [hl]                                        ; $4bd1: $a6
	xor  [hl]                                        ; $4bd2: $ae
	rst  $38                                         ; $4bd3: $ff
	jp   c, $eeac                                    ; $4bd4: $da $ac $ee

	jp   c, $9789                                    ; $4bd7: $da $89 $97

	ld   sp, $1311                                   ; $4bda: $31 $11 $13
	ld   sp, $1511                                   ; $4bdd: $31 $11 $15
	sbc  e                                           ; $4be0: $9b
	call c, $edde                                    ; $4be1: $dc $de $ed
	ret                                              ; $4be4: $c9


	ld   a, e                                        ; $4be5: $7b
	rst  JumpTable                                         ; $4be6: $df
	db   $dd                                         ; $4be7: $dd
	db   $eb                                         ; $4be8: $eb
	cp   $bc                                         ; $4be9: $fe $bc
	sbc  c                                           ; $4beb: $99
	sbc  b                                           ; $4bec: $98
	ld   [hl], c                                     ; $4bed: $71
	ld   de, $2114                                   ; $4bee: $11 $14 $21
	ld   de, $4b11                                   ; $4bf1: $11 $11 $4b
	cp   l                                           ; $4bf4: $bd
	cp   h                                           ; $4bf5: $bc
	xor  $fa                                         ; $4bf6: $ee $fa
	ld   e, b                                        ; $4bf8: $58
	ld   a, l                                        ; $4bf9: $7d
	rst  $38                                         ; $4bfa: $ff
	db   $fd                                         ; $4bfb: $fd
	jp   z, $dbcf                                    ; $4bfc: $ca $cf $db

	and  [hl]                                        ; $4bff: $a6
	ld   d, l                                        ; $4c00: $55
	ld   b, e                                        ; $4c01: $43
	ld   de, $3211                                   ; $4c02: $11 $11 $32
	ld   de, $af16                                   ; $4c05: $11 $16 $af
	ld   sp, hl                                      ; $4c08: $f9
	sbc  d                                           ; $4c09: $9a
	adc  $98                                         ; $4c0a: $ce $98
	ld   e, b                                        ; $4c0c: $58
	rst  $38                                         ; $4c0d: $ff
	cp   $99                                         ; $4c0e: $fe $99
	adc  a                                           ; $4c10: $8f
	cp   $a6                                         ; $4c11: $fe $a6
	ld   h, l                                        ; $4c13: $65
	ld   d, l                                        ; $4c14: $55
	ld   de, $4212                                   ; $4c15: $11 $12 $42
	ld   de, $6b16                                   ; $4c18: $11 $16 $6b
	ld   [$fdce], a                                  ; $4c1b: $ea $ce $fd
	ld   [hl], d                                     ; $4c1e: $72
	jr   c, @+$01                                    ; $4c1f: $38 $ff

	db   $fd                                         ; $4c21: $fd
	cp   b                                           ; $4c22: $b8
	db   $dd                                         ; $4c23: $dd
	db   $db                                         ; $4c24: $db
	ld   a, c                                        ; $4c25: $79
	ld   a, e                                        ; $4c26: $7b
	sub  d                                           ; $4c27: $92
	ld   de, $4713                                   ; $4c28: $11 $13 $47
	ld   hl, $ac12                                   ; $4c2b: $21 $12 $ac
	jp   hl                                          ; $4c2e: $e9


	ld   l, e                                        ; $4c2f: $6b
	call z, Call_0c6_69da                            ; $4c30: $cc $da $69
	cp   [hl]                                        ; $4c33: $be
	cp   $dd                                         ; $4c34: $fe $dd
	db   $dd                                         ; $4c36: $dd
	cp   d                                           ; $4c37: $ba
	sub  [hl]                                        ; $4c38: $96
	ld   [hl], a                                     ; $4c39: $77
	ld   [hl], l                                     ; $4c3a: $75
	ld   de, $5413                                   ; $4c3b: $11 $13 $54
	ld   hl, $7e12                                   ; $4c3e: $21 $12 $7e
	db   $fc                                         ; $4c41: $fc
	cp   d                                           ; $4c42: $ba
	ret  z                                           ; $4c43: $c8

	ld   [hl], a                                     ; $4c44: $77
	inc  a                                           ; $4c45: $3c
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	ret                                              ; $4c48: $c9


	xor  e                                           ; $4c49: $ab
	sbc  d                                           ; $4c4a: $9a
	cp   c                                           ; $4c4b: $b9
	xor  c                                           ; $4c4c: $a9
	ld   b, c                                        ; $4c4d: $41
	ld   de, $6433                                   ; $4c4e: $11 $33 $64
	ld   hl, $6a17                                   ; $4c51: $21 $17 $6a
	ld   hl, sp-$12                                  ; $4c54: $f8 $ee
	adc  b                                           ; $4c56: $88
	ld   l, d                                        ; $4c57: $6a
	ld   l, h                                        ; $4c58: $6c
	ei                                               ; $4c59: $fb
	rst  $38                                         ; $4c5a: $ff
	res  1, c                                        ; $4c5b: $cb $89
	ld   a, e                                        ; $4c5d: $7b
	ret  z                                           ; $4c5e: $c8

	and  l                                           ; $4c5f: $a5
	ld   de, $3512                                   ; $4c60: $11 $12 $35
	ld   hl, $7711                                   ; $4c63: $21 $11 $77
	sbc  a                                           ; $4c66: $9f
	xor  d                                           ; $4c67: $aa
	ld   [$5398], a                                  ; $4c68: $ea $98 $53
	rst  JumpTable                                         ; $4c6b: $df
	rst  $38                                         ; $4c6c: $ff
	or   a                                           ; $4c6d: $b7
	ld   a, d                                        ; $4c6e: $7a
	ret  c                                           ; $4c6f: $d8

	jp   hl                                          ; $4c70: $e9


	ld   e, e                                        ; $4c71: $5b
	ld   h, l                                        ; $4c72: $65
	ld   de, $6521                                   ; $4c73: $11 $21 $65
	ld   de, $9817                                   ; $4c76: $11 $17 $98
	rst  $38                                         ; $4c79: $ff
	add  [hl]                                        ; $4c7a: $86
	ld   l, e                                        ; $4c7b: $6b
	xor  c                                           ; $4c7c: $a9
	xor  c                                           ; $4c7d: $a9
	db   $ed                                         ; $4c7e: $ed
	rst  $38                                         ; $4c7f: $ff
	ret                                              ; $4c80: $c9


	ld   d, h                                        ; $4c81: $54
	cp   l                                           ; $4c82: $bd
	ld   a, [$1143]                                  ; $4c83: $fa $43 $11
	inc  d                                           ; $4c86: $14
	ld   b, e                                        ; $4c87: $43
	ld   h, e                                        ; $4c88: $63
	ld   de, $ff49                                   ; $4c89: $11 $49 $ff
	add  $5e                                         ; $4c8c: $c6 $5e
	and  l                                           ; $4c8e: $a5
	and  a                                           ; $4c8f: $a7
	adc  $ff                                         ; $4c90: $ce $ff
	xor  b                                           ; $4c92: $a8
	ld   d, a                                        ; $4c93: $57
	call z, $94a9                                    ; $4c94: $cc $a9 $94
	ld   de, $4612                                   ; $4c97: $11 $12 $46
	ld   sp, $8e11                                   ; $4c9a: $31 $11 $8e
	db   $fd                                         ; $4c9d: $fd
	db   $e3                                         ; $4c9e: $e3
	cpl                                              ; $4c9f: $2f
	and  l                                           ; $4ca0: $a5
	ld   d, [hl]                                     ; $4ca1: $56
	rst  $38                                         ; $4ca2: $ff
	rst  $38                                         ; $4ca3: $ff
	ld   d, a                                        ; $4ca4: $57
	ld   a, [hl-]                                    ; $4ca5: $3a
	db   $fc                                         ; $4ca6: $fc
	ret                                              ; $4ca7: $c9


	sub  h                                           ; $4ca8: $94
	ld   de, $7813                                   ; $4ca9: $11 $13 $78
	ld   d, c                                        ; $4cac: $51
	ld   de, $fcdf                                   ; $4cad: $11 $df $fc
	ld   de, $b5ff                                   ; $4cb0: $11 $ff $b5
	dec  d                                           ; $4cb3: $15
	rst  $38                                         ; $4cb4: $ff
	ei                                               ; $4cb5: $fb
	ld   h, c                                        ; $4cb6: $61
	ld   l, l                                        ; $4cb7: $6d
	rst  $28                                         ; $4cb8: $ef
	sub  e                                           ; $4cb9: $93
	ld   de, $3531                                   ; $4cba: $11 $31 $35
	ld   h, e                                        ; $4cbd: $63
	ld   de, $fc2f                                   ; $4cbe: $11 $2f $fc
	sub  a                                           ; $4cc1: $97
	adc  a                                           ; $4cc2: $8f
	and  e                                           ; $4cc3: $a3
	inc  [hl]                                        ; $4cc4: $34
	rst  $38                                         ; $4cc5: $ff
	rst  $38                                         ; $4cc6: $ff
	inc  hl                                          ; $4cc7: $23
	inc  a                                           ; $4cc8: $3c
	db   $fd                                         ; $4cc9: $fd
	and  c                                           ; $4cca: $a1
	ld   d, e                                        ; $4ccb: $53
	inc  d                                           ; $4ccc: $14
	inc  d                                           ; $4ccd: $14
	ld   b, c                                        ; $4cce: $41
	ld   de, $fd9f                                   ; $4ccf: $11 $9f $fd
	add  hl, hl                                      ; $4cd2: $29
	xor  h                                           ; $4cd3: $ac
	call nz, $ff29                                   ; $4cd4: $c4 $29 $ff
	ld   a, [$ef11]                                  ; $4cd7: $fa $11 $ef
	xor  $54                                         ; $4cda: $ee $54
	ld   d, c                                        ; $4cdc: $51
	ld   de, $4476                                   ; $4cdd: $11 $76 $44
	ld   de, $dfaa                                   ; $4ce0: $11 $aa $df
	pop  af                                          ; $4ce3: $f1
	ld   e, a                                        ; $4ce4: $5f
	sub  h                                           ; $4ce5: $94
	ld   a, d                                        ; $4ce6: $7a
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	xor  e                                           ; $4ce9: $ab
	ld   a, c                                        ; $4cea: $79
	add  e                                           ; $4ceb: $83
	ld   [$1114], a                                  ; $4cec: $ea $14 $11
	ld   [de], a                                     ; $4cef: $12
	ld   h, c                                        ; $4cf0: $61
	dec  d                                           ; $4cf1: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf2: $cf
	jp   nz, Jump_0c6_5fd5                           ; $4cf3: $c2 $d5 $5f

	ld   a, h                                        ; $4cf6: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf7: $cf
	sub  $f9                                         ; $4cf8: $d6 $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cfa: $cf
	ld   a, d                                        ; $4cfb: $7a
	ld   [hl], $92                                   ; $4cfc: $36 $92
	ld   sp, $3212                                   ; $4cfe: $31 $12 $32
	ld   d, l                                        ; $4d01: $55
	ld   e, h                                        ; $4d02: $5c
	rst  $38                                         ; $4d03: $ff
	sub  c                                           ; $4d04: $91
	inc  l                                           ; $4d05: $2c
	sbc  [hl]                                        ; $4d06: $9e
	ld   a, [$e58f]                                  ; $4d07: $fa $8f $e5
	ret  z                                           ; $4d0a: $c8

	xor  a                                           ; $4d0b: $af
	ld   d, d                                        ; $4d0c: $52
	ld   h, e                                        ; $4d0d: $63
	ld   [hl+], a                                    ; $4d0e: $22
	ld   hl, $742b                                   ; $4d0f: $21 $2b $74
	ld   d, a                                        ; $4d12: $57
	rst  $38                                         ; $4d13: $ff
	ld   [hl], h                                     ; $4d14: $74
	ld   e, a                                        ; $4d15: $5f
	db   $e4                                         ; $4d16: $e4
	or   $6e                                         ; $4d17: $f6 $6e
	ld   a, a                                        ; $4d19: $7f
	ld   sp, hl                                      ; $4d1a: $f9
	ld   d, c                                        ; $4d1b: $51
	ld   d, [hl]                                     ; $4d1c: $56
	ld   e, e                                        ; $4d1d: $5b
	ld   b, e                                        ; $4d1e: $43
	ld   hl, $ac25                                   ; $4d1f: $21 $25 $ac
	cp   h                                           ; $4d22: $bc
	rst  ToBoot                                         ; $4d23: $c7
	ld   h, h                                        ; $4d24: $64
	rst  $38                                         ; $4d25: $ff
	ld   e, $d7                                      ; $4d26: $1e $d7
	db   $fc                                         ; $4d28: $fc
	add  $15                                         ; $4d29: $c6 $15
	ld   a, d                                        ; $4d2b: $7a
	or   d                                           ; $4d2c: $b2
	ld   b, c                                        ; $4d2d: $41
	jr   @+$7b                                       ; $4d2e: $18 $79

	or   h                                           ; $4d30: $b4
	call Call_0c6_5f95                               ; $4d31: $cd $95 $5f
	push af                                          ; $4d34: $f5
	sub  h                                           ; $4d35: $94
	cp   a                                           ; $4d36: $bf
	reti                                             ; $4d37: $d9


	ld   a, c                                        ; $4d38: $79
	ld   [hl+], a                                    ; $4d39: $22
	ld   [hl], a                                     ; $4d3a: $77
	sub  e                                           ; $4d3b: $93
	inc  h                                           ; $4d3c: $24
	ld   de, $ec5b                                   ; $4d3d: $11 $5b $ec
	ld   h, [hl]                                     ; $4d40: $66
	ld   a, [$6f58]                                  ; $4d41: $fa $58 $6f
	rst  $38                                         ; $4d44: $ff
	sub  e                                           ; $4d45: $93
	or   d                                           ; $4d46: $b2
	ld   e, c                                        ; $4d47: $59
	ld   [hl], l                                     ; $4d48: $75
	ld   c, b                                        ; $4d49: $48
	ld   h, [hl]                                     ; $4d4a: $66
	ld   sp, $9718                                   ; $4d4b: $31 $18 $97
	call c, $f758                                    ; $4d4e: $dc $58 $f7
	cp   $1f                                         ; $4d51: $fe $1f
	ld   sp, hl                                      ; $4d53: $f9
	call nz, $1c61                                   ; $4d54: $c4 $61 $1c
	ld   c, e                                        ; $4d57: $4b
	sub  c                                           ; $4d58: $91
	ld   b, a                                        ; $4d59: $47
	ld   d, h                                        ; $4d5a: $54
	adc  e                                           ; $4d5b: $8b
	rst  $30                                         ; $4d5c: $f7
	inc  d                                           ; $4d5d: $14

jr_0c6_4d5e:
	rst  $38                                         ; $4d5e: $ff
	inc  a                                           ; $4d5f: $3c
	push af                                          ; $4d60: $f5
	ld   d, [hl]                                     ; $4d61: $56
	ccf                                              ; $4d62: $3f
	ld   d, c                                        ; $4d63: $51
	ld   b, h                                        ; $4d64: $44
	or   d                                           ; $4d65: $b2
	ld   h, [hl]                                     ; $4d66: $66
	ld   c, b                                        ; $4d67: $48
	dec  a                                           ; $4d68: $3d
	pop  hl                                          ; $4d69: $e1
	jr   c, @+$01                                    ; $4d6a: $38 $ff

	or   e                                           ; $4d6c: $b3
	rra                                              ; $4d6d: $1f
	db   $fd                                         ; $4d6e: $fd
	ld   a, [$1111]                                  ; $4d6f: $fa $11 $11
	xor  e                                           ; $4d72: $ab
	and  e                                           ; $4d73: $a3
	ld   [hl], a                                     ; $4d74: $77
	jr   jr_0c6_4d5e                                 ; $4d75: $18 $e7

	sbc  d                                           ; $4d77: $9a
	rra                                              ; $4d78: $1f
	ld   hl, sp-$1d                                  ; $4d79: $f8 $e3
	ccf                                              ; $4d7b: $3f
	push af                                          ; $4d7c: $f5
	push af                                          ; $4d7d: $f5
	dec  d                                           ; $4d7e: $15
	ld   [hl], l                                     ; $4d7f: $75
	ld   a, c                                        ; $4d80: $79
	jr   c, jr_0c6_4dc4                              ; $4d81: $38 $41

	ei                                               ; $4d83: $fb
	adc  b                                           ; $4d84: $88
	ld   c, a                                        ; $4d85: $4f
	adc  e                                           ; $4d86: $8b
	db   $e4                                         ; $4d87: $e4
	cp   [hl]                                        ; $4d88: $be
	db   $ec                                         ; $4d89: $ec
	ld   d, c                                        ; $4d8a: $51
	ld   h, $6f                                      ; $4d8b: $26 $6f
	add  c                                           ; $4d8d: $81
	ld   h, $a3                                      ; $4d8e: $26 $a3
	daa                                              ; $4d90: $27
	call c, $b18f                                    ; $4d91: $dc $8f $b1
	ld   a, [$139f]                                  ; $4d94: $fa $9f $13
	ld   b, c                                        ; $4d97: $41
	cp   c                                           ; $4d98: $b9
	scf                                              ; $4d99: $37
	sub  $44                                         ; $4d9a: $d6 $44
	ld   b, [hl]                                     ; $4d9c: $46
	adc  d                                           ; $4d9d: $8a
	ld   e, a                                        ; $4d9e: $5f
	or   $8d                                         ; $4d9f: $f6 $8d
	ld   d, [hl]                                     ; $4da1: $56
	sbc  l                                           ; $4da2: $9d
	and  l                                           ; $4da3: $a5
	ld   d, c                                        ; $4da4: $51
	ld   c, e                                        ; $4da5: $4b
	adc  e                                           ; $4da6: $8b
	ld   sp, $bba3                                   ; $4da7: $31 $a3 $bb
	ld   e, a                                        ; $4daa: $5f
	ld   a, e                                        ; $4dab: $7b
	ld   sp, hl                                      ; $4dac: $f9
	xor  b                                           ; $4dad: $a8
	add  hl, sp                                      ; $4dae: $39
	sub  a                                           ; $4daf: $97
	dec  [hl]                                        ; $4db0: $35
	xor  d                                           ; $4db1: $aa
	ld   h, e                                        ; $4db2: $63
	ld   l, d                                        ; $4db3: $6a
	ld   h, l                                        ; $4db4: $65
	ld   h, h                                        ; $4db5: $64
	and  a                                           ; $4db6: $a7
	rst  $38                                         ; $4db7: $ff
	ld   e, e                                        ; $4db8: $5b
	ld   b, h                                        ; $4db9: $44
	db   $ed                                         ; $4dba: $ed
	scf                                              ; $4dbb: $37
	ld   b, e                                        ; $4dbc: $43
	add  [hl]                                        ; $4dbd: $86
	rst  $10                                         ; $4dbe: $d7
	sub  e                                           ; $4dbf: $93
	ld   e, $a3                                      ; $4dc0: $1e $a3
	adc  $e8                                         ; $4dc2: $ce $e8

jr_0c6_4dc4:
	cp   c                                           ; $4dc4: $b9
	xor  [hl]                                        ; $4dc5: $ae
	ld   d, [hl]                                     ; $4dc6: $56
	add  hl, hl                                      ; $4dc7: $29
	ld   d, l                                        ; $4dc8: $55
	push de                                          ; $4dc9: $d5
	sub  [hl]                                        ; $4dca: $96
	ld   h, l                                        ; $4dcb: $65
	ld   e, c                                        ; $4dcc: $59
	inc  a                                           ; $4dcd: $3c
	and  [hl]                                        ; $4dce: $a6
	rst  $38                                         ; $4dcf: $ff
	ld   [hl], h                                     ; $4dd0: $74
	call nc, $1d7d                                   ; $4dd1: $d4 $7d $1d
	and  e                                           ; $4dd4: $a3
	ld   l, d                                        ; $4dd5: $6a
	or   h                                           ; $4dd6: $b4
	ld   b, d                                        ; $4dd7: $42
	adc  l                                           ; $4dd8: $8d
	ld   h, l                                        ; $4dd9: $65
	cp   d                                           ; $4dda: $ba
	db   $e3                                         ; $4ddb: $e3
	rst  JumpTable                                         ; $4ddc: $df
	add  hl, hl                                      ; $4ddd: $29
	jr   jr_0c6_4e56                                 ; $4dde: $18 $76

	ld   h, [hl]                                     ; $4de0: $66
	push af                                          ; $4de1: $f5
	add  l                                           ; $4de2: $85
	inc  hl                                          ; $4de3: $23
	db   $fd                                         ; $4de4: $fd
	jr   z, jr_0c6_4e66                              ; $4de5: $28 $7f

	set  0, e                                        ; $4de7: $cb $c3
	inc  sp                                          ; $4de9: $33
	ld   l, b                                        ; $4dea: $68
	adc  e                                           ; $4deb: $8b
	push af                                          ; $4dec: $f5
	dec  d                                           ; $4ded: $15
	sbc  c                                           ; $4dee: $99
	push hl                                          ; $4def: $e5
	rra                                              ; $4df0: $1f
	sbc  a                                           ; $4df1: $9f
	or   [hl]                                        ; $4df2: $b6
	pop  bc                                          ; $4df3: $c1
	adc  $83                                         ; $4df4: $ce $83
	inc  d                                           ; $4df6: $14
	rst  JumpTable                                         ; $4df7: $df
	sbc  e                                           ; $4df8: $9b
	inc  d                                           ; $4df9: $14
	ld   h, e                                        ; $4dfa: $63
	xor  c                                           ; $4dfb: $a9
	cp   $2a                                         ; $4dfc: $fe $2a
	pop  de                                          ; $4dfe: $d1
	ld   hl, sp+$35                                  ; $4dff: $f8 $35
	dec  e                                           ; $4e01: $1d
	ld   sp, hl                                      ; $4e02: $f9
	or   h                                           ; $4e03: $b4
	jr   jr_0c6_4e6b                                 ; $4e04: $18 $65

	cp   h                                           ; $4e06: $bc
	ld   l, a                                        ; $4e07: $6f
	pop  hl                                          ; $4e08: $e1
	call c, $3348                                    ; $4e09: $dc $48 $33
	rst  ToBoot                                         ; $4e0c: $c7
	sub  a                                           ; $4e0d: $97
	ld   a, [hl-]                                    ; $4e0e: $3a
	xor  d                                           ; $4e0f: $aa
	add  c                                           ; $4e10: $81
	ld   a, $bb                                      ; $4e11: $3e $bb
	xor  h                                           ; $4e13: $ac
	db   $e3                                         ; $4e14: $e3
	ld   e, $a4                                      ; $4e15: $1e $a4
	pop  af                                          ; $4e17: $f1
	cpl                                              ; $4e18: $2f
	dec  e                                           ; $4e19: $1d
	push de                                          ; $4e1a: $d5
	ld   [hl], c                                     ; $4e1b: $71
	ld   a, b                                        ; $4e1c: $78
	db   $fc                                         ; $4e1d: $fc
	dec  e                                           ; $4e1e: $1d
	ld   l, b                                        ; $4e1f: $68
	push af                                          ; $4e20: $f5
	rra                                              ; $4e21: $1f
	ld   d, $f1                                      ; $4e22: $16 $f1
	ld   sp, hl                                      ; $4e24: $f9
	jr   z, jr_0c6_4e3c                              ; $4e25: $28 $15

	db   $f4                                         ; $4e27: $f4
	rst  $30                                         ; $4e28: $f7
	rra                                              ; $4e29: $1f
	ld   c, h                                        ; $4e2a: $4c
	call nz, Call_0c6_7965                           ; $4e2b: $c4 $65 $79
	add  a                                           ; $4e2e: $87
	ld   [hl], l                                     ; $4e2f: $75
	pop  de                                          ; $4e30: $d1
	ld   c, a                                        ; $4e31: $4f
	ld   c, c                                        ; $4e32: $49
	sub  a                                           ; $4e33: $97
	db   $ed                                         ; $4e34: $ed
	ld   b, e                                        ; $4e35: $43
	sbc  d                                           ; $4e36: $9a
	xor  a                                           ; $4e37: $af
	ld   sp, $7ed8                                   ; $4e38: $31 $d8 $7e
	ld   h, [hl]                                     ; $4e3b: $66

jr_0c6_4e3c:
	pop  de                                          ; $4e3c: $d1
	ccf                                              ; $4e3d: $3f
	ld   e, d                                        ; $4e3e: $5a
	di                                               ; $4e3f: $f3
	ccf                                              ; $4e40: $3f
	ld   [hl], c                                     ; $4e41: $71
	call z, $781d                                    ; $4e42: $cc $1d $78
	ldh  a, [c]                                      ; $4e45: $f2
	sbc  b                                           ; $4e46: $98
	ld   a, d                                        ; $4e47: $7a
	ld   a, [de]                                     ; $4e48: $1a
	cp   b                                           ; $4e49: $b8
	pop  af                                          ; $4e4a: $f1
	ld   e, e                                        ; $4e4b: $5b
	rra                                              ; $4e4c: $1f
	sub  d                                           ; $4e4d: $92
	or   c                                           ; $4e4e: $b1
	xor  [hl]                                        ; $4e4f: $ae
	ld   a, l                                        ; $4e50: $7d
	ld   d, $a2                                      ; $4e51: $16 $a2
	db   $fc                                         ; $4e53: $fc
	ld   e, d                                        ; $4e54: $5a
	or   e                                           ; $4e55: $b3

jr_0c6_4e56:
	dec  a                                           ; $4e56: $3d
	sbc  e                                           ; $4e57: $9b
	ld   d, c                                        ; $4e58: $51
	sbc  e                                           ; $4e59: $9b
	cp   e                                           ; $4e5a: $bb
	ld   d, c                                        ; $4e5b: $51
	ld   l, e                                        ; $4e5c: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e5d: $cf
	ld   d, h                                        ; $4e5e: $54
	and  h                                           ; $4e5f: $a4
	and  [hl]                                        ; $4e60: $a6
	ld   a, l                                        ; $4e61: $7d
	ld   d, h                                        ; $4e62: $54
	ld   a, h                                        ; $4e63: $7c
	xor  c                                           ; $4e64: $a9
	sub  d                                           ; $4e65: $92

jr_0c6_4e66:
	sbc  d                                           ; $4e66: $9a
	ld   c, c                                        ; $4e67: $49
	sbc  c                                           ; $4e68: $99
	halt                                             ; $4e69: $76
	or   a                                           ; $4e6a: $b7

jr_0c6_4e6b:
	call z, $8d14                                    ; $4e6b: $cc $14 $8d
	ldh  [c], a                                      ; $4e6e: $e2
	ld   l, e                                        ; $4e6f: $6b
	ld   c, d                                        ; $4e70: $4a
	add  [hl]                                        ; $4e71: $86
	add  h                                           ; $4e72: $84
	ld   a, a                                        ; $4e73: $7f
	db   $d3                                         ; $4e74: $d3
	inc  sp                                          ; $4e75: $33
	call z, $9da4                                    ; $4e76: $cc $a4 $9d
	ld   d, l                                        ; $4e79: $55
	jr   z, @-$40                                    ; $4e7a: $28 $be

	ld   h, l                                        ; $4e7c: $65
	sub  l                                           ; $4e7d: $95
	adc  b                                           ; $4e7e: $88
	ld   a, c                                        ; $4e7f: $79
	or   h                                           ; $4e80: $b4
	sub  d                                           ; $4e81: $92
	cp   l                                           ; $4e82: $bd
	ld   c, [hl]                                     ; $4e83: $4e
	ld   [hl-], a                                    ; $4e84: $32
	and  $bf                                         ; $4e85: $e6 $bf
	inc  d                                           ; $4e87: $14
	ld   h, a                                        ; $4e88: $67
	db   $fc                                         ; $4e89: $fc
	ld   d, $97                                      ; $4e8a: $16 $97
	pop  hl                                          ; $4e8c: $e1
	ld   a, [hl]                                     ; $4e8d: $7e
	ld   l, d                                        ; $4e8e: $6a
	inc  sp                                          ; $4e8f: $33
	rst  $38                                         ; $4e90: $ff
	ld   b, l                                        ; $4e91: $45
	ld   b, l                                        ; $4e92: $45
	call $1569                                       ; $4e93: $cd $69 $15
	db   $f4                                         ; $4e96: $f4
	rst  $30                                         ; $4e97: $f7
	inc  e                                           ; $4e98: $1c
	add  hl, sp                                      ; $4e99: $39
	or   $87                                         ; $4e9a: $f6 $87
	rla                                              ; $4e9c: $17
	ld   a, [$4a94]                                  ; $4e9d: $fa $94 $4a
	sub  a                                           ; $4ea0: $97
	dec  sp                                          ; $4ea1: $3b
	reti                                             ; $4ea2: $d9


	add  l                                           ; $4ea3: $85
	halt                                             ; $4ea4: $76
	ld   l, b                                        ; $4ea5: $68
	adc  l                                           ; $4ea6: $8d
	call nz, Call_0c6_6b93                           ; $4ea7: $c4 $93 $6b
	ld   c, h                                        ; $4eaa: $4c
	sbc  c                                           ; $4eab: $99
	sub  d                                           ; $4eac: $92
	ld   a, e                                        ; $4ead: $7b
	or   [hl]                                        ; $4eae: $b6
	add  hl, sp                                      ; $4eaf: $39
	call $28b3                                       ; $4eb0: $cd $b3 $28
	and  a                                           ; $4eb3: $a7
	cp   c                                           ; $4eb4: $b9
	ld   e, b                                        ; $4eb5: $58
	ld   d, [hl]                                     ; $4eb6: $56
	xor  d                                           ; $4eb7: $aa
	adc  b                                           ; $4eb8: $88
	ld   e, b                                        ; $4eb9: $58
	xor  c                                           ; $4eba: $a9
	ld   [hl], a                                     ; $4ebb: $77
	ld   [hl], a                                     ; $4ebc: $77
	sub  a                                           ; $4ebd: $97
	xor  b                                           ; $4ebe: $a8
	sub  a                                           ; $4ebf: $97
	ld   e, c                                        ; $4ec0: $59
	adc  e                                           ; $4ec1: $8b
	sub  [hl]                                        ; $4ec2: $96
	ld   d, a                                        ; $4ec3: $57
	sbc  b                                           ; $4ec4: $98
	and  [hl]                                        ; $4ec5: $a6
	ld   c, c                                        ; $4ec6: $49
	xor  d                                           ; $4ec7: $aa
	or   e                                           ; $4ec8: $b3
	adc  c                                           ; $4ec9: $89
	ld   l, c                                        ; $4eca: $69
	ld   l, c                                        ; $4ecb: $69
	xor  b                                           ; $4ecc: $a8
	ld   h, [hl]                                     ; $4ecd: $66
	ld   c, e                                        ; $4ece: $4b
	ret  c                                           ; $4ecf: $d8

	sub  e                                           ; $4ed0: $93
	adc  c                                           ; $4ed1: $89
	xor  e                                           ; $4ed2: $ab
	ld   l, c                                        ; $4ed3: $69
	ld   h, [hl]                                     ; $4ed4: $66
	halt                                             ; $4ed5: $76
	adc  d                                           ; $4ed6: $8a
	xor  b                                           ; $4ed7: $a8
	ld   [hl], h                                     ; $4ed8: $74
	ld   c, h                                        ; $4ed9: $4c
	bit  6, h                                        ; $4eda: $cb $74
	ld   d, a                                        ; $4edc: $57
	sbc  b                                           ; $4edd: $98
	sub  [hl]                                        ; $4ede: $96
	ld   l, d                                        ; $4edf: $6a
	sbc  e                                           ; $4ee0: $9b
	add  l                                           ; $4ee1: $85
	ld   l, b                                        ; $4ee2: $68
	xor  b                                           ; $4ee3: $a8
	add  [hl]                                        ; $4ee4: $86
	ld   a, c                                        ; $4ee5: $79
	ld   [hl], a                                     ; $4ee6: $77
	add  a                                           ; $4ee7: $87
	adc  b                                           ; $4ee8: $88
	ld   a, b                                        ; $4ee9: $78
	sbc  d                                           ; $4eea: $9a
	cp   b                                           ; $4eeb: $b8
	ld   h, h                                        ; $4eec: $64
	ld   e, c                                        ; $4eed: $59
	cp   d                                           ; $4eee: $ba
	halt                                             ; $4eef: $76
	ld   a, d                                        ; $4ef0: $7a
	ret                                              ; $4ef1: $c9


	ld   d, l                                        ; $4ef2: $55
	ld   l, c                                        ; $4ef3: $69
	jp   c, Jump_0c6_4865                            ; $4ef4: $da $65 $48

	cp   b                                           ; $4ef7: $b8
	add  a                                           ; $4ef8: $87
	ld   a, e                                        ; $4ef9: $7b
	add  a                                           ; $4efa: $87
	ld   h, l                                        ; $4efb: $65
	sbc  d                                           ; $4efc: $9a
	add  a                                           ; $4efd: $87
	ld   l, b                                        ; $4efe: $68
	xor  e                                           ; $4eff: $ab
	halt                                             ; $4f00: $76
	ld   [hl], a                                     ; $4f01: $77
	sbc  b                                           ; $4f02: $98
	ld   a, b                                        ; $4f03: $78
	sbc  d                                           ; $4f04: $9a
	sub  a                                           ; $4f05: $97
	ld   h, l                                        ; $4f06: $65
	ld   a, d                                        ; $4f07: $7a
	xor  c                                           ; $4f08: $a9
	ld   h, a                                        ; $4f09: $67
	sbc  b                                           ; $4f0a: $98
	xor  b                                           ; $4f0b: $a8
	ld   a, b                                        ; $4f0c: $78
	ld   a, b                                        ; $4f0d: $78
	sub  a                                           ; $4f0e: $97
	add  [hl]                                        ; $4f0f: $86
	ld   a, c                                        ; $4f10: $79
	sbc  d                                           ; $4f11: $9a
	halt                                             ; $4f12: $76
	ld   h, a                                        ; $4f13: $67
	sbc  d                                           ; $4f14: $9a
	sbc  c                                           ; $4f15: $99
	add  a                                           ; $4f16: $87
	ld   [hl], a                                     ; $4f17: $77
	ld   h, a                                        ; $4f18: $67
	sbc  c                                           ; $4f19: $99
	sbc  b                                           ; $4f1a: $98
	ld   [hl], a                                     ; $4f1b: $77
	ld   [hl], a                                     ; $4f1c: $77
	add  a                                           ; $4f1d: $87
	adc  c                                           ; $4f1e: $89
	sbc  c                                           ; $4f1f: $99
	sub  a                                           ; $4f20: $97
	ld   a, b                                        ; $4f21: $78
	adc  c                                           ; $4f22: $89
	sbc  b                                           ; $4f23: $98
	add  a                                           ; $4f24: $87
	adc  b                                           ; $4f25: $88
	ld   [hl], a                                     ; $4f26: $77
	ld   [hl], a                                     ; $4f27: $77
	adc  c                                           ; $4f28: $89
	adc  b                                           ; $4f29: $88
	add  a                                           ; $4f2a: $87
	adc  b                                           ; $4f2b: $88
	adc  c                                           ; $4f2c: $89
	adc  d                                           ; $4f2d: $8a
	add  a                                           ; $4f2e: $87
	halt                                             ; $4f2f: $76
	sbc  c                                           ; $4f30: $99
	adc  b                                           ; $4f31: $88
	ld   [hl], a                                     ; $4f32: $77
	sbc  b                                           ; $4f33: $98
	sbc  b                                           ; $4f34: $98
	ld   [hl], a                                     ; $4f35: $77
	ld   a, b                                        ; $4f36: $78
	adc  c                                           ; $4f37: $89
	adc  b                                           ; $4f38: $88
	add  a                                           ; $4f39: $87
	add  a                                           ; $4f3a: $87
	adc  c                                           ; $4f3b: $89
	adc  c                                           ; $4f3c: $89
	add  a                                           ; $4f3d: $87
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	ld   [hl], a                                     ; $4f40: $77
	adc  c                                           ; $4f41: $89
	adc  b                                           ; $4f42: $88
	ld   [hl], a                                     ; $4f43: $77
	ld   a, b                                        ; $4f44: $78
	sbc  b                                           ; $4f45: $98
	add  a                                           ; $4f46: $87
	ld   a, b                                        ; $4f47: $78
	adc  b                                           ; $4f48: $88
	adc  b                                           ; $4f49: $88
	adc  c                                           ; $4f4a: $89
	adc  b                                           ; $4f4b: $88
	add  a                                           ; $4f4c: $87
	add  a                                           ; $4f4d: $87
	ld   a, b                                        ; $4f4e: $78
	adc  c                                           ; $4f4f: $89
	sbc  c                                           ; $4f50: $99
	sbc  b                                           ; $4f51: $98
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	adc  b                                           ; $4f55: $88
	adc  b                                           ; $4f56: $88
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	adc  c                                           ; $4f5a: $89
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
	sbc  b                                           ; $4f74: $98
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
	adc  c                                           ; $5012: $89
	sbc  b                                           ; $5013: $98
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
	sbc  b                                           ; $502c: $98
	adc  b                                           ; $502d: $88
	adc  b                                           ; $502e: $88
	adc  b                                           ; $502f: $88
	adc  b                                           ; $5030: $88
	adc  b                                           ; $5031: $88
	adc  b                                           ; $5032: $88
	adc  b                                           ; $5033: $88
	adc  b                                           ; $5034: $88
	adc  c                                           ; $5035: $89
	adc  b                                           ; $5036: $88
	adc  b                                           ; $5037: $88
	adc  b                                           ; $5038: $88
	adc  b                                           ; $5039: $88
	adc  b                                           ; $503a: $88
	adc  c                                           ; $503b: $89
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
	adc  c                                           ; $5049: $89
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
	sbc  c                                           ; $5054: $99
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
	adc  c                                           ; $5062: $89
	adc  b                                           ; $5063: $88
	add  a                                           ; $5064: $87
	adc  b                                           ; $5065: $88
	adc  b                                           ; $5066: $88
	adc  b                                           ; $5067: $88
	adc  b                                           ; $5068: $88
	adc  b                                           ; $5069: $88
	add  a                                           ; $506a: $87
	ld   a, b                                        ; $506b: $78
	sbc  c                                           ; $506c: $99
	sbc  b                                           ; $506d: $98
	adc  b                                           ; $506e: $88
	adc  b                                           ; $506f: $88
	adc  b                                           ; $5070: $88
	adc  b                                           ; $5071: $88
	adc  b                                           ; $5072: $88
	adc  b                                           ; $5073: $88
	adc  b                                           ; $5074: $88
	adc  b                                           ; $5075: $88
	ld   [hl], a                                     ; $5076: $77
	adc  c                                           ; $5077: $89
	sbc  b                                           ; $5078: $98
	adc  b                                           ; $5079: $88
	adc  c                                           ; $507a: $89
	sbc  b                                           ; $507b: $98
	ld   a, b                                        ; $507c: $78
	adc  c                                           ; $507d: $89
	sbc  b                                           ; $507e: $98
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
	sbc  b                                           ; $508f: $98
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
	sbc  b                                           ; $509b: $98
	adc  b                                           ; $509c: $88
	adc  b                                           ; $509d: $88
	adc  b                                           ; $509e: $88
	adc  b                                           ; $509f: $88
	adc  b                                           ; $50a0: $88
	adc  b                                           ; $50a1: $88
	adc  b                                           ; $50a2: $88
	adc  b                                           ; $50a3: $88
	sbc  b                                           ; $50a4: $98
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
	sbc  b                                           ; $50cd: $98
	adc  b                                           ; $50ce: $88
	adc  b                                           ; $50cf: $88
	adc  b                                           ; $50d0: $88
	adc  b                                           ; $50d1: $88
	adc  b                                           ; $50d2: $88
	adc  b                                           ; $50d3: $88
	adc  b                                           ; $50d4: $88
	adc  b                                           ; $50d5: $88
	sbc  b                                           ; $50d6: $98
	ld   a, b                                        ; $50d7: $78
	adc  b                                           ; $50d8: $88
	sbc  b                                           ; $50d9: $98
	adc  b                                           ; $50da: $88
	adc  b                                           ; $50db: $88
	adc  b                                           ; $50dc: $88
	adc  c                                           ; $50dd: $89
	sbc  b                                           ; $50de: $98
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
	add  a                                           ; $50ea: $87
	adc  b                                           ; $50eb: $88
	sbc  c                                           ; $50ec: $99
	adc  b                                           ; $50ed: $88
	adc  c                                           ; $50ee: $89
	adc  b                                           ; $50ef: $88
	adc  b                                           ; $50f0: $88
	adc  b                                           ; $50f1: $88
	adc  b                                           ; $50f2: $88
	adc  b                                           ; $50f3: $88
	adc  c                                           ; $50f4: $89
	sbc  b                                           ; $50f5: $98
	adc  b                                           ; $50f6: $88
	adc  b                                           ; $50f7: $88
	adc  b                                           ; $50f8: $88
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	sbc  b                                           ; $50fb: $98
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
	adc  c                                           ; $5109: $89
	adc  b                                           ; $510a: $88
	adc  b                                           ; $510b: $88
	adc  b                                           ; $510c: $88
	ld   a, b                                        ; $510d: $78
	sbc  c                                           ; $510e: $99
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
	add  a                                           ; $5119: $87
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
	sbc  b                                           ; $512c: $98
	adc  b                                           ; $512d: $88
	adc  c                                           ; $512e: $89
	add  a                                           ; $512f: $87
	ld   a, b                                        ; $5130: $78
	adc  b                                           ; $5131: $88
	add  a                                           ; $5132: $87
	adc  b                                           ; $5133: $88
	adc  b                                           ; $5134: $88
	adc  b                                           ; $5135: $88
	ld   a, b                                        ; $5136: $78
	adc  b                                           ; $5137: $88
	adc  b                                           ; $5138: $88
	adc  b                                           ; $5139: $88
	adc  b                                           ; $513a: $88
	adc  b                                           ; $513b: $88
	adc  b                                           ; $513c: $88
	adc  b                                           ; $513d: $88
	sbc  b                                           ; $513e: $98
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
	add  a                                           ; $5160: $87
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
	ld   a, b                                        ; $5183: $78
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
	sbc  b                                           ; $518f: $98
	adc  c                                           ; $5190: $89
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
	adc  c                                           ; $51a1: $89
	adc  b                                           ; $51a2: $88
	sbc  b                                           ; $51a3: $98
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
	adc  c                                           ; $51b7: $89
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
	sbc  b                                           ; $51d2: $98
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
	sbc  b                                           ; $51f3: $98
	adc  b                                           ; $51f4: $88
	adc  b                                           ; $51f5: $88
	adc  b                                           ; $51f6: $88
	adc  b                                           ; $51f7: $88
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	ld   a, b                                        ; $51fa: $78
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
	sbc  b                                           ; $5298: $98
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
	sbc  b                                           ; $52b0: $98
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

Jump_0c6_5387:
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

Call_0c6_53a6:
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
	adc  b                                           ; $5520: $88
	adc  b                                           ; $5521: $88
	adc  b                                           ; $5522: $88
	adc  b                                           ; $5523: $88
	adc  b                                           ; $5524: $88
	adc  b                                           ; $5525: $88
	adc  b                                           ; $5526: $88
	adc  b                                           ; $5527: $88
	adc  b                                           ; $5528: $88
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	adc  b                                           ; $552c: $88
	adc  b                                           ; $552d: $88
	adc  b                                           ; $552e: $88
	adc  b                                           ; $552f: $88
	adc  b                                           ; $5530: $88
	adc  b                                           ; $5531: $88
	adc  b                                           ; $5532: $88
	adc  b                                           ; $5533: $88
	adc  b                                           ; $5534: $88
	adc  b                                           ; $5535: $88
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  b                                           ; $5539: $88
	adc  b                                           ; $553a: $88
	adc  b                                           ; $553b: $88
	adc  b                                           ; $553c: $88
	adc  b                                           ; $553d: $88
	adc  b                                           ; $553e: $88
	adc  b                                           ; $553f: $88
	adc  b                                           ; $5540: $88
	adc  b                                           ; $5541: $88
	adc  b                                           ; $5542: $88
	adc  b                                           ; $5543: $88
	adc  b                                           ; $5544: $88
	adc  b                                           ; $5545: $88
	adc  b                                           ; $5546: $88
	adc  b                                           ; $5547: $88
	adc  b                                           ; $5548: $88
	adc  b                                           ; $5549: $88
	adc  b                                           ; $554a: $88
	adc  b                                           ; $554b: $88
	adc  b                                           ; $554c: $88
	adc  b                                           ; $554d: $88
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	adc  b                                           ; $5550: $88
	adc  b                                           ; $5551: $88
	adc  b                                           ; $5552: $88
	adc  b                                           ; $5553: $88
	adc  b                                           ; $5554: $88
	adc  b                                           ; $5555: $88
	adc  b                                           ; $5556: $88
	adc  b                                           ; $5557: $88
	adc  b                                           ; $5558: $88
	adc  b                                           ; $5559: $88
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	adc  b                                           ; $555c: $88
	adc  b                                           ; $555d: $88
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	adc  b                                           ; $5561: $88
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	adc  b                                           ; $5565: $88
	adc  b                                           ; $5566: $88
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	adc  b                                           ; $556a: $88
	adc  b                                           ; $556b: $88
	adc  b                                           ; $556c: $88
	adc  b                                           ; $556d: $88
	adc  b                                           ; $556e: $88
	adc  b                                           ; $556f: $88
	adc  b                                           ; $5570: $88
	adc  b                                           ; $5571: $88
	adc  b                                           ; $5572: $88
	adc  b                                           ; $5573: $88
	adc  b                                           ; $5574: $88
	adc  b                                           ; $5575: $88
	adc  b                                           ; $5576: $88
	adc  b                                           ; $5577: $88
	adc  b                                           ; $5578: $88
	adc  b                                           ; $5579: $88
	adc  b                                           ; $557a: $88
	adc  b                                           ; $557b: $88
	adc  b                                           ; $557c: $88
	adc  b                                           ; $557d: $88
	adc  b                                           ; $557e: $88
	adc  b                                           ; $557f: $88
	adc  b                                           ; $5580: $88
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
	adc  b                                           ; $5590: $88
	adc  b                                           ; $5591: $88
	adc  b                                           ; $5592: $88
	adc  b                                           ; $5593: $88
	adc  b                                           ; $5594: $88
	adc  b                                           ; $5595: $88
	adc  b                                           ; $5596: $88
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
	adc  b                                           ; $5985: $88
	adc  b                                           ; $5986: $88
	adc  b                                           ; $5987: $88
	adc  b                                           ; $5988: $88
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  b                                           ; $598d: $88
	adc  b                                           ; $598e: $88
	adc  b                                           ; $598f: $88
	adc  b                                           ; $5990: $88
	adc  b                                           ; $5991: $88
	adc  b                                           ; $5992: $88
	adc  b                                           ; $5993: $88
	adc  b                                           ; $5994: $88
	adc  b                                           ; $5995: $88
	adc  b                                           ; $5996: $88
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  b                                           ; $5999: $88
	adc  b                                           ; $599a: $88
	adc  b                                           ; $599b: $88
	adc  b                                           ; $599c: $88
	adc  b                                           ; $599d: $88
	adc  b                                           ; $599e: $88
	adc  b                                           ; $599f: $88
	adc  b                                           ; $59a0: $88
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
	adc  b                                           ; $59a8: $88
	adc  b                                           ; $59a9: $88
	adc  b                                           ; $59aa: $88
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	adc  b                                           ; $59ad: $88
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	adc  b                                           ; $59b1: $88
	adc  b                                           ; $59b2: $88
	adc  b                                           ; $59b3: $88
	adc  b                                           ; $59b4: $88
	adc  b                                           ; $59b5: $88
	adc  b                                           ; $59b6: $88
	adc  b                                           ; $59b7: $88
	adc  b                                           ; $59b8: $88
	adc  b                                           ; $59b9: $88
	adc  b                                           ; $59ba: $88
	adc  b                                           ; $59bb: $88
	adc  b                                           ; $59bc: $88
	adc  b                                           ; $59bd: $88
	adc  b                                           ; $59be: $88
	adc  b                                           ; $59bf: $88
	adc  b                                           ; $59c0: $88
	adc  b                                           ; $59c1: $88
	adc  b                                           ; $59c2: $88
	adc  b                                           ; $59c3: $88
	adc  b                                           ; $59c4: $88
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	adc  b                                           ; $59c7: $88
	adc  b                                           ; $59c8: $88
	adc  b                                           ; $59c9: $88
	adc  b                                           ; $59ca: $88
	adc  b                                           ; $59cb: $88
	adc  b                                           ; $59cc: $88
	adc  b                                           ; $59cd: $88
	adc  b                                           ; $59ce: $88
	adc  b                                           ; $59cf: $88
	adc  b                                           ; $59d0: $88
	adc  b                                           ; $59d1: $88
	adc  b                                           ; $59d2: $88
	adc  b                                           ; $59d3: $88
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	adc  b                                           ; $59d6: $88
	adc  b                                           ; $59d7: $88
	adc  b                                           ; $59d8: $88
	adc  b                                           ; $59d9: $88
	adc  b                                           ; $59da: $88
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	adc  b                                           ; $59dd: $88
	adc  b                                           ; $59de: $88
	adc  b                                           ; $59df: $88
	adc  b                                           ; $59e0: $88
	adc  b                                           ; $59e1: $88
	adc  b                                           ; $59e2: $88
	adc  b                                           ; $59e3: $88
	adc  b                                           ; $59e4: $88
	adc  b                                           ; $59e5: $88
	adc  b                                           ; $59e6: $88
	adc  b                                           ; $59e7: $88
	adc  b                                           ; $59e8: $88
	adc  b                                           ; $59e9: $88
	adc  b                                           ; $59ea: $88
	adc  b                                           ; $59eb: $88
	adc  b                                           ; $59ec: $88
	adc  b                                           ; $59ed: $88
	adc  b                                           ; $59ee: $88
	adc  b                                           ; $59ef: $88
	adc  b                                           ; $59f0: $88
	adc  b                                           ; $59f1: $88
	adc  b                                           ; $59f2: $88
	adc  b                                           ; $59f3: $88
	adc  b                                           ; $59f4: $88
	adc  b                                           ; $59f5: $88
	adc  b                                           ; $59f6: $88
	adc  b                                           ; $59f7: $88
	adc  b                                           ; $59f8: $88
	adc  b                                           ; $59f9: $88
	adc  b                                           ; $59fa: $88
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

Call_0c6_5f95:
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

Jump_0c6_5fd5:
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

Call_0c6_61cf:
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
	sbc  c                                           ; $6207: $99
	sbc  c                                           ; $6208: $99
	sbc  c                                           ; $6209: $99
	sbc  c                                           ; $620a: $99
	sbc  c                                           ; $620b: $99
	adc  b                                           ; $620c: $88
	adc  b                                           ; $620d: $88
	adc  b                                           ; $620e: $88
	adc  b                                           ; $620f: $88
	add  a                                           ; $6210: $87
	ld   [hl], a                                     ; $6211: $77
	ld   [hl], a                                     ; $6212: $77
	ld   [hl], a                                     ; $6213: $77
	ld   [hl], a                                     ; $6214: $77
	ld   [hl], a                                     ; $6215: $77
	ld   [hl], a                                     ; $6216: $77
	ld   h, [hl]                                     ; $6217: $66
	ld   h, [hl]                                     ; $6218: $66
	ld   d, [hl]                                     ; $6219: $56
	ld   h, a                                        ; $621a: $67
	ld   a, b                                        ; $621b: $78
	adc  c                                           ; $621c: $89
	sbc  d                                           ; $621d: $9a
	xor  e                                           ; $621e: $ab
	call $cbdc                                       ; $621f: $cd $dc $cb
	xor  d                                           ; $6222: $aa
	sbc  b                                           ; $6223: $98
	add  a                                           ; $6224: $87
	ld   h, [hl]                                     ; $6225: $66
	ld   h, [hl]                                     ; $6226: $66
	ld   h, a                                        ; $6227: $67
	ld   [hl], a                                     ; $6228: $77
	ld   [hl], a                                     ; $6229: $77
	ld   h, [hl]                                     ; $622a: $66
	ld   d, l                                        ; $622b: $55
	ld   b, e                                        ; $622c: $43
	ld   b, l                                        ; $622d: $45
	ld   d, l                                        ; $622e: $55
	ld   h, [hl]                                     ; $622f: $66
	halt                                             ; $6230: $76
	adc  e                                           ; $6231: $8b
	adc  $fe                                         ; $6232: $ce $fe
	call c, $abcb                                    ; $6234: $dc $cb $ab
	xor  c                                           ; $6237: $a9
	halt                                             ; $6238: $76
	ld   h, [hl]                                     ; $6239: $66
	ld   a, c                                        ; $623a: $79
	sbc  d                                           ; $623b: $9a
	xor  c                                           ; $623c: $a9
	xor  c                                           ; $623d: $a9
	sbc  e                                           ; $623e: $9b
	sbc  c                                           ; $623f: $99
	add  [hl]                                        ; $6240: $86
	ld   b, d                                        ; $6241: $42
	ld   de, $1111                                   ; $6242: $11 $11 $11
	inc  hl                                          ; $6245: $23
	ld   d, l                                        ; $6246: $55
	ld   l, b                                        ; $6247: $68
	cp   l                                           ; $6248: $bd
	rst  $38                                         ; $6249: $ff
	rst  $38                                         ; $624a: $ff
	cp   $ec                                         ; $624b: $fe $ec
	call z, Call_0c6_76b9                            ; $624d: $cc $b9 $76
	ld   h, l                                        ; $6250: $65
	ld   a, b                                        ; $6251: $78
	sbc  d                                           ; $6252: $9a
	xor  c                                           ; $6253: $a9
	sbc  c                                           ; $6254: $99
	sbc  b                                           ; $6255: $98
	add  a                                           ; $6256: $87
	ld   d, e                                        ; $6257: $53
	ld   de, $1111                                   ; $6258: $11 $11 $11
	inc  hl                                          ; $625b: $23
	inc  sp                                          ; $625c: $33
	ld   b, [hl]                                     ; $625d: $46
	cp   [hl]                                        ; $625e: $be
	rst  $38                                         ; $625f: $ff
	rst  $38                                         ; $6260: $ff
	db   $fd                                         ; $6261: $fd
	db   $ed                                         ; $6262: $ed
	xor  $ca                                         ; $6263: $ee $ca
	ld   [hl], l                                     ; $6265: $75
	ld   d, l                                        ; $6266: $55
	adc  d                                           ; $6267: $8a
	sbc  d                                           ; $6268: $9a
	add  a                                           ; $6269: $87
	ld   [hl], a                                     ; $626a: $77
	sbc  c                                           ; $626b: $99
	halt                                             ; $626c: $76
	ld   b, c                                        ; $626d: $41
	ld   de, $1211                                   ; $626e: $11 $11 $12
	inc  hl                                          ; $6271: $23
	ld   [hl+], a                                    ; $6272: $22
	ld   [hl], $ce                                   ; $6273: $36 $ce
	rst  $38                                         ; $6275: $ff
	rst  $38                                         ; $6276: $ff
	rst  $38                                         ; $6277: $ff
	cp   $ff                                         ; $6278: $fe $ff
	jp   z, Jump_0c6_6675                            ; $627a: $ca $75 $66

	sbc  d                                           ; $627d: $9a
	sbc  c                                           ; $627e: $99
	ld   [hl], a                                     ; $627f: $77
	ld   h, a                                        ; $6280: $67
	add  a                                           ; $6281: $87
	ld   h, l                                        ; $6282: $65
	ld   hl, $1111                                   ; $6283: $21 $11 $11
	ld   [de], a                                     ; $6286: $12
	ld   [hl-], a                                    ; $6287: $32
	ld   [hl+], a                                    ; $6288: $22
	ld   l, e                                        ; $6289: $6b
	rst  $28                                         ; $628a: $ef
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	db   $fd                                         ; $628f: $fd
	or   a                                           ; $6290: $b7
	ld   d, [hl]                                     ; $6291: $56
	ld   l, d                                        ; $6292: $6a
	cp   d                                           ; $6293: $ba
	sub  [hl]                                        ; $6294: $96
	ld   d, [hl]                                     ; $6295: $56
	ld   h, a                                        ; $6296: $67
	ld   h, l                                        ; $6297: $65
	ld   sp, $1111                                   ; $6298: $31 $11 $11
	ld   de, $1232                                   ; $629b: $11 $32 $12
	ld   c, d                                        ; $629e: $4a
	rst  $38                                         ; $629f: $ff
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	cp   $a7                                         ; $62a4: $fe $a7
	ld   b, l                                        ; $62a6: $45
	ld   l, c                                        ; $62a7: $69
	jp   z, Jump_0c6_4686                            ; $62a8: $ca $86 $46

	ld   h, [hl]                                     ; $62ab: $66
	ld   h, d                                        ; $62ac: $62
	ld   de, $1111                                   ; $62ad: $11 $11 $11
	ld   [de], a                                     ; $62b0: $12
	ld   d, e                                        ; $62b1: $53
	inc  h                                           ; $62b2: $24
	adc  a                                           ; $62b3: $8f
	rst  $38                                         ; $62b4: $ff
	rst  $38                                         ; $62b5: $ff
	rst  $38                                         ; $62b6: $ff
	xor  $ef                                         ; $62b7: $ee $ef
	ld   sp, hl                                      ; $62b9: $f9
	ld   h, e                                        ; $62ba: $63
	ld   [hl], $ad                                   ; $62bb: $36 $ad
	ret                                              ; $62bd: $c9


	sub  l                                           ; $62be: $95
	ld   b, [hl]                                     ; $62bf: $46
	ld   h, l                                        ; $62c0: $65
	ld   de, $1111                                   ; $62c1: $11 $11 $11
	ld   [de], a                                     ; $62c4: $12
	ld   b, a                                        ; $62c5: $47
	ld   b, h                                        ; $62c6: $44
	ld   a, [hl]                                     ; $62c7: $7e
	rst  $38                                         ; $62c8: $ff
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	set  3, e                                        ; $62cb: $cb $db
	ld   [$2544], a                                  ; $62cd: $ea $44 $25
	xor  l                                           ; $62d0: $ad
	cp   $a9                                         ; $62d1: $fe $a9
	ld   h, [hl]                                     ; $62d3: $66
	ld   [hl], e                                     ; $62d4: $73
	ld   de, $1111                                   ; $62d5: $11 $11 $11
	inc  de                                          ; $62d8: $13
	ld   l, d                                        ; $62d9: $6a
	xor  b                                           ; $62da: $a8
	cp   a                                           ; $62db: $bf
	rst  $38                                         ; $62dc: $ff
	rst  $38                                         ; $62dd: $ff
	db   $fc                                         ; $62de: $fc
	ld   h, d                                        ; $62df: $62
	sub  [hl]                                        ; $62e0: $96
	ld   a, c                                        ; $62e1: $79
	inc  de                                          ; $62e2: $13
	ld   l, d                                        ; $62e3: $6a
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	db   $dd                                         ; $62e6: $dd
	and  a                                           ; $62e7: $a7
	ld   d, c                                        ; $62e8: $51
	ld   de, $1111                                   ; $62e9: $11 $11 $11
	add  hl, de                                      ; $62ec: $19
	rst  $38                                         ; $62ed: $ff
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	rst  $38                                         ; $62f1: $ff
	and  c                                           ; $62f2: $a1
	ld   de, $4911                                   ; $62f3: $11 $11 $49
	ld   c, h                                        ; $62f6: $4c
	rst  $38                                         ; $62f7: $ff
	rst  $38                                         ; $62f8: $ff
	rst  $38                                         ; $62f9: $ff
	rst  $38                                         ; $62fa: $ff
	ld   [hl], e                                     ; $62fb: $73
	ld   de, $1111                                   ; $62fc: $11 $11 $11
	ld   de, $ffff                                   ; $62ff: $11 $ff $ff
	rst  $38                                         ; $6302: $ff
	rst  $38                                         ; $6303: $ff
	rst  $38                                         ; $6304: $ff
	rst  $30                                         ; $6305: $f7
	ld   de, $1111                                   ; $6306: $11 $11 $11
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	db   $fd                                         ; $630d: $fd
	add  sp, $11                                     ; $630e: $e8 $11
	ld   de, $1111                                   ; $6310: $11 $11 $11
	rra                                              ; $6313: $1f
	rst  $38                                         ; $6314: $ff
	rst  $38                                         ; $6315: $ff
	rst  $38                                         ; $6316: $ff
	rst  $38                                         ; $6317: $ff
	rst  $30                                         ; $6318: $f7
	ld   de, $1111                                   ; $6319: $11 $11 $11
	adc  a                                           ; $631c: $8f
	rst  $38                                         ; $631d: $ff
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	xor  c                                           ; $6321: $a9
	ld   sp, $1111                                   ; $6322: $31 $11 $11
	ld   de, $ff19                                   ; $6325: $11 $19 $ff
	rst  $38                                         ; $6328: $ff
	rst  $38                                         ; $6329: $ff
	rst  $38                                         ; $632a: $ff
	db   $f4                                         ; $632b: $f4
	ld   de, $1111                                   ; $632c: $11 $11 $11
	rst  $38                                         ; $632f: $ff
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  ToBoot                                         ; $6333: $c7
	and  d                                           ; $6334: $a2
	ld   hl, $1111                                   ; $6335: $21 $11 $11
	ld   de, $ff16                                   ; $6338: $11 $16 $ff
	rst  $38                                         ; $633b: $ff
	cp   $e3                                         ; $633c: $fe $e3
	and  a                                           ; $633e: $a7
	ld   de, $1111                                   ; $633f: $11 $11 $11
	rst  $38                                         ; $6342: $ff
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	db   $fd                                         ; $6345: $fd
	sub  c                                           ; $6346: $91
	ld   h, d                                        ; $6347: $62
	ld   de, $1111                                   ; $6348: $11 $11 $11
	ld   de, $ff16                                   ; $634b: $11 $16 $ff
	rst  $38                                         ; $634e: $ff
	ld   a, [$5b93]                                  ; $634f: $fa $93 $5b
	ld   de, $1311                                   ; $6352: $11 $11 $13
	rst  $38                                         ; $6355: $ff
	rst  $38                                         ; $6356: $ff
	rst  $38                                         ; $6357: $ff
	db   $fc                                         ; $6358: $fc
	ld   h, c                                        ; $6359: $61
	inc  hl                                          ; $635a: $23
	inc  de                                          ; $635b: $13
	ld   de, $1111                                   ; $635c: $11 $11 $11
	inc  de                                          ; $635f: $13
	rst  $38                                         ; $6360: $ff
	rst  $38                                         ; $6361: $ff
	ld   hl, sp-$7e                                  ; $6362: $f8 $82
	ld   c, l                                        ; $6364: $4d
	ld   de, $1611                                   ; $6365: $11 $11 $16
	rst  $38                                         ; $6368: $ff
	rst  $38                                         ; $6369: $ff
	rst  $38                                         ; $636a: $ff
	db   $fd                                         ; $636b: $fd
	ld   d, c                                        ; $636c: $51
	inc  d                                           ; $636d: $14
	add  hl, sp                                      ; $636e: $39
	ld   de, $1111                                   ; $636f: $11 $11 $11
	ld   [de], a                                     ; $6372: $12
	cp   a                                           ; $6373: $bf
	rst  $38                                         ; $6374: $ff
	ld   a, [$1c43]                                  ; $6375: $fa $43 $1c
	ld   de, $1711                                   ; $6378: $11 $11 $17
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	rst  $38                                         ; $637d: $ff
	rst  $38                                         ; $637e: $ff
	ld   [hl], c                                     ; $637f: $71
	inc  de                                          ; $6380: $13
	ld   e, h                                        ; $6381: $5c
	ld   de, $1111                                   ; $6382: $11 $11 $11
	ld   de, $ff1f                                   ; $6385: $11 $1f $ff
	db   $fc                                         ; $6388: $fc
	ld   hl, $211e                                   ; $6389: $21 $1e $21
	ld   de, $ff1a                                   ; $638c: $11 $1a $ff
	rst  $28                                         ; $638f: $ef
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	add  c                                           ; $6392: $81
	inc  de                                          ; $6393: $13
	ld   c, d                                        ; $6394: $4a
	ld   hl, $1111                                   ; $6395: $21 $11 $11
	ld   de, $ff1f                                   ; $6398: $11 $1f $ff
	cp   $15                                         ; $639b: $fe $15
	ld   c, h                                        ; $639d: $4c
	ld   [hl], c                                     ; $639e: $71
	ld   de, $ef1e                                   ; $639f: $11 $1e $ef
	sbc  a                                           ; $63a2: $9f
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	ld   [hl], c                                     ; $63a5: $71
	dec  d                                           ; $63a6: $15
	ld   b, h                                        ; $63a7: $44
	ld   de, $1111                                   ; $63a8: $11 $11 $11
	ld   de, $ff1f                                   ; $63ab: $11 $1f $ff
	rst  $38                                         ; $63ae: $ff
	dec  hl                                          ; $63af: $2b
	sbc  b                                           ; $63b0: $98
	ld   [hl], c                                     ; $63b1: $71
	ld   de, $7e0f                                   ; $63b2: $11 $0f $7e
	sbc  a                                           ; $63b5: $9f
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	and  e                                           ; $63b8: $a3
	inc  d                                           ; $63b9: $14
	ld   de, $1111                                   ; $63ba: $11 $11 $11
	ld   de, $1e11                                   ; $63bd: $11 $11 $1e
	rst  $38                                         ; $63c0: $ff
	rst  $38                                         ; $63c1: $ff
	sbc  [hl]                                        ; $63c2: $9e
	pop  bc                                          ; $63c3: $c1
	ld   b, c                                        ; $63c4: $41
	ld   de, $2a17                                   ; $63c5: $11 $17 $2a
	rst  JumpTable                                         ; $63c8: $df
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	ld   a, [$1111]                                  ; $63cb: $fa $11 $11
	dec  h                                           ; $63ce: $25
	ld   de, $1111                                   ; $63cf: $11 $11 $11
	inc  d                                           ; $63d2: $14
	rst  $38                                         ; $63d3: $ff
	rst  $38                                         ; $63d4: $ff
	db   $eb                                         ; $63d5: $eb
	pop  de                                          ; $63d6: $d1
	ld   [hl], c                                     ; $63d7: $71
	ld   de, $2a14                                   ; $63d8: $11 $14 $2a
	rst  $28                                         ; $63db: $ef
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	ld   a, [$1111]                                  ; $63de: $fa $11 $11
	ld   h, $11                                      ; $63e1: $26 $11
	ld   de, $1111                                   ; $63e3: $11 $11 $11
	rst  $38                                         ; $63e6: $ff
	rst  $38                                         ; $63e7: $ff
	db   $ed                                         ; $63e8: $ed
	pop  af                                          ; $63e9: $f1
	ld   [hl], c                                     ; $63ea: $71
	inc  d                                           ; $63eb: $14
	inc  de                                          ; $63ec: $13
	rla                                              ; $63ed: $17
	rst  JumpTable                                         ; $63ee: $df
	rst  $38                                         ; $63ef: $ff
	rst  $38                                         ; $63f0: $ff
	cp   $11                                         ; $63f1: $fe $11
	ld   de, $1136                                   ; $63f3: $11 $36 $11
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	rst  $38                                         ; $63f9: $ff
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	pop  af                                          ; $63fc: $f1
	ld   d, c                                        ; $63fd: $51
	add  hl, de                                      ; $63fe: $19
	ld   de, $ef12                                   ; $63ff: $11 $12 $ef
	rst  $38                                         ; $6402: $ff
	rst  $38                                         ; $6403: $ff
	rst  $38                                         ; $6404: $ff
	ld   de, $5411                                   ; $6405: $11 $11 $54
	ld   de, $1111                                   ; $6408: $11 $11 $11
	ld   de, $ffff                                   ; $640b: $11 $ff $ff
	rst  $38                                         ; $640e: $ff
	pop  af                                          ; $640f: $f1
	ld   d, c                                        ; $6410: $51
	rra                                              ; $6411: $1f
	ld   de, $ef11                                   ; $6412: $11 $11 $ef
	rst  $38                                         ; $6415: $ff
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	ld   de, $6161                                   ; $6418: $11 $61 $61
	ld   de, $1111                                   ; $641b: $11 $11 $11
	ld   de, $9fff                                   ; $641e: $11 $ff $9f
	rst  $38                                         ; $6421: $ff
	pop  af                                          ; $6422: $f1
	ld   [hl], c                                     ; $6423: $71
	rra                                              ; $6424: $1f
	ld   de, $bf14                                   ; $6425: $11 $14 $bf
	rst  $38                                         ; $6428: $ff
	rst  $38                                         ; $6429: $ff
	rst  $30                                         ; $642a: $f7
	dec  d                                           ; $642b: $15
	and  c                                           ; $642c: $a1
	ld   sp, $1113                                   ; $642d: $31 $13 $11
	ld   de, rAUD1LEN                                   ; $6430: $11 $11 $ff
	ld   e, a                                        ; $6433: $5f
	rst  $38                                         ; $6434: $ff
	pop  af                                          ; $6435: $f1
	sub  c                                           ; $6436: $91
	ld   e, a                                        ; $6437: $5f
	ld   de, $1f1a                                   ; $6438: $11 $1a $1f
	rst  $38                                         ; $643b: $ff
	rst  $38                                         ; $643c: $ff
	ei                                               ; $643d: $fb
	sbc  a                                           ; $643e: $9f
	sub  c                                           ; $643f: $91
	ld   hl, $1115                                   ; $6440: $21 $15 $11
	ld   de, rAUD1LEN                                   ; $6443: $11 $11 $ff
	ld   c, a                                        ; $6446: $4f
	rst  $38                                         ; $6447: $ff
	ld   sp, hl                                      ; $6448: $f9
	pop  af                                          ; $6449: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $644a: $cf
	ld   de, $1714                                   ; $644b: $11 $14 $17
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	sub  h                                           ; $6452: $94
	ld   [hl], c                                     ; $6453: $71
	inc  hl                                          ; $6454: $23
	ld   de, $1111                                   ; $6455: $11 $11 $11
	sbc  a                                           ; $6458: $9f
	adc  a                                           ; $6459: $8f
	rst  $38                                         ; $645a: $ff
	rst  $38                                         ; $645b: $ff
	di                                               ; $645c: $f3
	rst  $38                                         ; $645d: $ff
	ld   de, $1111                                   ; $645e: $11 $11 $11
	ld   e, b                                        ; $6461: $58
	rst  $38                                         ; $6462: $ff
	rst  $38                                         ; $6463: $ff
	rst  $38                                         ; $6464: $ff
	db   $fd                                         ; $6465: $fd
	add  $89                                         ; $6466: $c6 $89
	ld   de, $1111                                   ; $6468: $11 $11 $11
	rra                                              ; $646b: $1f
	and  e                                           ; $646c: $a3
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	rst  $38                                         ; $6470: $ff
	sub  d                                           ; $6471: $92
	ld   b, e                                        ; $6472: $43
	ld   de, $bf11                                   ; $6473: $11 $11 $bf
	rst  $38                                         ; $6476: $ff
	rst  $38                                         ; $6477: $ff
	rst  $38                                         ; $6478: $ff
	cp   $ef                                         ; $6479: $fe $ef
	ld   de, $1111                                   ; $647b: $11 $11 $11
	ld   de, $6761                                   ; $647e: $11 $61 $67
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	rst  $38                                         ; $6483: $ff
	rst  $38                                         ; $6484: $ff
	rst  $38                                         ; $6485: $ff
	ld   h, h                                        ; $6486: $64
	ld   sp, $8425                                   ; $6487: $31 $25 $84
	ld   l, c                                        ; $648a: $69
	sbc  d                                           ; $648b: $9a
	cp   d                                           ; $648c: $ba
	cp   a                                           ; $648d: $bf
	jp   z, $3184                                    ; $648e: $ca $84 $31

	ld   [de], a                                     ; $6491: $12
	ld   b, c                                        ; $6492: $41
	ld   de, $3511                                   ; $6493: $11 $11 $35
	ld   d, a                                        ; $6496: $57
	xor  c                                           ; $6497: $a9
	sbc  e                                           ; $6498: $9b
	sbc  d                                           ; $6499: $9a
	cp   h                                           ; $649a: $bc
	call $ddcc                                       ; $649b: $cd $cc $dd
	db   $ec                                         ; $649e: $ec
	call $bacc                                       ; $649f: $cd $cc $ba
	adc  b                                           ; $64a2: $88
	ld   [hl], a                                     ; $64a3: $77
	ld   d, h                                        ; $64a4: $54
	dec  [hl]                                        ; $64a5: $35
	ld   d, l                                        ; $64a6: $55
	ld   d, e                                        ; $64a7: $53
	ld   b, l                                        ; $64a8: $45

Jump_0c6_64a9:
	ld   d, h                                        ; $64a9: $54
	ld   d, l                                        ; $64aa: $55
	ld   d, [hl]                                     ; $64ab: $56
	ld   d, l                                        ; $64ac: $55
	ld   e, b                                        ; $64ad: $58
	sbc  b                                           ; $64ae: $98
	sbc  d                                           ; $64af: $9a
	cp   e                                           ; $64b0: $bb
	call c, $ddcc                                    ; $64b1: $dc $cc $dd
	call c, $a9ba                                    ; $64b4: $dc $ba $a9
	add  [hl]                                        ; $64b7: $86
	ld   h, a                                        ; $64b8: $67
	halt                                             ; $64b9: $76
	ld   [hl], l                                     ; $64ba: $75
	ld   d, a                                        ; $64bb: $57
	halt                                             ; $64bc: $76
	ld   h, [hl]                                     ; $64bd: $66
	ld   h, [hl]                                     ; $64be: $66
	ld   h, l                                        ; $64bf: $65
	ld   b, l                                        ; $64c0: $45
	ld   h, l                                        ; $64c1: $65
	ld   d, [hl]                                     ; $64c2: $56
	ld   [hl], a                                     ; $64c3: $77
	adc  b                                           ; $64c4: $88
	sbc  e                                           ; $64c5: $9b
	cp   e                                           ; $64c6: $bb
	cp   h                                           ; $64c7: $bc
	cp   e                                           ; $64c8: $bb
	xor  d                                           ; $64c9: $aa
	sub  a                                           ; $64ca: $97
	ld   a, b                                        ; $64cb: $78
	adc  b                                           ; $64cc: $88
	ld   [hl], a                                     ; $64cd: $77
	ld   [hl], a                                     ; $64ce: $77
	ld   [hl], a                                     ; $64cf: $77
	ld   [hl], a                                     ; $64d0: $77
	ld   [hl], a                                     ; $64d1: $77
	halt                                             ; $64d2: $76
	ld   h, a                                        ; $64d3: $67
	ld   [hl], a                                     ; $64d4: $77
	ld   a, b                                        ; $64d5: $78
	ld   [hl], a                                     ; $64d6: $77
	add  a                                           ; $64d7: $87
	adc  c                                           ; $64d8: $89
	sbc  c                                           ; $64d9: $99
	sbc  d                                           ; $64da: $9a
	sbc  c                                           ; $64db: $99
	adc  c                                           ; $64dc: $89
	sub  a                                           ; $64dd: $97
	ld   [hl], a                                     ; $64de: $77
	adc  b                                           ; $64df: $88
	add  a                                           ; $64e0: $87
	ld   a, b                                        ; $64e1: $78
	adc  c                                           ; $64e2: $89
	ld   [hl], a                                     ; $64e3: $77
	ld   a, b                                        ; $64e4: $78
	add  a                                           ; $64e5: $87
	ld   h, a                                        ; $64e6: $67
	ld   [hl], a                                     ; $64e7: $77
	ld   a, b                                        ; $64e8: $78
	ld   [hl], a                                     ; $64e9: $77
	adc  b                                           ; $64ea: $88
	adc  b                                           ; $64eb: $88
	adc  c                                           ; $64ec: $89
	sbc  d                                           ; $64ed: $9a
	xor  c                                           ; $64ee: $a9
	adc  c                                           ; $64ef: $89
	sbc  b                                           ; $64f0: $98
	ld   [hl], a                                     ; $64f1: $77
	adc  b                                           ; $64f2: $88
	add  a                                           ; $64f3: $87
	ld   a, b                                        ; $64f4: $78
	sbc  c                                           ; $64f5: $99
	ld   [hl], a                                     ; $64f6: $77
	adc  b                                           ; $64f7: $88
	sub  a                                           ; $64f8: $97
	ld   [hl], a                                     ; $64f9: $77
	add  a                                           ; $64fa: $87
	ld   [hl], a                                     ; $64fb: $77
	ld   [hl], a                                     ; $64fc: $77
	adc  b                                           ; $64fd: $88
	ld   a, b                                        ; $64fe: $78
	adc  c                                           ; $64ff: $89
	xor  d                                           ; $6500: $aa
	sbc  c                                           ; $6501: $99
	sbc  c                                           ; $6502: $99
	sbc  c                                           ; $6503: $99
	ld   a, b                                        ; $6504: $78
	adc  c                                           ; $6505: $89
	sub  a                                           ; $6506: $97
	ld   a, b                                        ; $6507: $78
	adc  b                                           ; $6508: $88
	ld   [hl], a                                     ; $6509: $77
	adc  b                                           ; $650a: $88
	sub  a                                           ; $650b: $97
	ld   [hl], a                                     ; $650c: $77
	add  a                                           ; $650d: $87
	ld   [hl], a                                     ; $650e: $77
	ld   a, b                                        ; $650f: $78
	adc  b                                           ; $6510: $88
	ld   a, b                                        ; $6511: $78
	adc  b                                           ; $6512: $88
	sbc  b                                           ; $6513: $98
	adc  b                                           ; $6514: $88
	sbc  b                                           ; $6515: $98
	adc  b                                           ; $6516: $88
	ld   a, b                                        ; $6517: $78
	sbc  c                                           ; $6518: $99
	sub  a                                           ; $6519: $97
	adc  b                                           ; $651a: $88
	adc  b                                           ; $651b: $88
	ld   [hl], a                                     ; $651c: $77
	sbc  c                                           ; $651d: $99
	sbc  b                                           ; $651e: $98
	ld   a, b                                        ; $651f: $78
	sbc  b                                           ; $6520: $98
	ld   [hl], a                                     ; $6521: $77
	ld   a, b                                        ; $6522: $78
	adc  b                                           ; $6523: $88
	ld   [hl], a                                     ; $6524: $77
	adc  b                                           ; $6525: $88
	adc  b                                           ; $6526: $88
	add  a                                           ; $6527: $87
	adc  c                                           ; $6528: $89
	adc  b                                           ; $6529: $88
	ld   [hl], a                                     ; $652a: $77
	sbc  c                                           ; $652b: $99
	sbc  b                                           ; $652c: $98
	adc  b                                           ; $652d: $88
	adc  b                                           ; $652e: $88
	adc  b                                           ; $652f: $88
	sbc  c                                           ; $6530: $99
	sbc  c                                           ; $6531: $99
	adc  c                                           ; $6532: $89
	sbc  b                                           ; $6533: $98
	ld   [hl], a                                     ; $6534: $77
	adc  b                                           ; $6535: $88
	adc  b                                           ; $6536: $88
	ld   [hl], a                                     ; $6537: $77
	adc  b                                           ; $6538: $88
	sbc  b                                           ; $6539: $98
	add  a                                           ; $653a: $87
	adc  b                                           ; $653b: $88
	add  a                                           ; $653c: $87
	ld   [hl], a                                     ; $653d: $77
	adc  b                                           ; $653e: $88
	add  a                                           ; $653f: $87
	adc  b                                           ; $6540: $88
	adc  b                                           ; $6541: $88
	adc  b                                           ; $6542: $88
	sbc  c                                           ; $6543: $99
	adc  c                                           ; $6544: $89
	sbc  c                                           ; $6545: $99
	sbc  b                                           ; $6546: $98
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	sbc  b                                           ; $6549: $98
	adc  b                                           ; $654a: $88
	adc  c                                           ; $654b: $89
	sbc  b                                           ; $654c: $98
	adc  b                                           ; $654d: $88
	adc  b                                           ; $654e: $88
	add  a                                           ; $654f: $87
	ld   [hl], a                                     ; $6550: $77
	ld   a, b                                        ; $6551: $78
	add  a                                           ; $6552: $87
	ld   a, b                                        ; $6553: $78
	adc  b                                           ; $6554: $88
	ld   a, b                                        ; $6555: $78
	adc  c                                           ; $6556: $89
	sbc  b                                           ; $6557: $98
	adc  c                                           ; $6558: $89
	sbc  b                                           ; $6559: $98
	adc  b                                           ; $655a: $88
	adc  b                                           ; $655b: $88
	sbc  c                                           ; $655c: $99
	adc  b                                           ; $655d: $88
	sbc  c                                           ; $655e: $99
	sbc  b                                           ; $655f: $98
	adc  b                                           ; $6560: $88
	adc  b                                           ; $6561: $88
	adc  b                                           ; $6562: $88
	ld   [hl], a                                     ; $6563: $77
	ld   a, b                                        ; $6564: $78
	add  a                                           ; $6565: $87
	ld   a, b                                        ; $6566: $78
	adc  b                                           ; $6567: $88
	adc  b                                           ; $6568: $88
	adc  c                                           ; $6569: $89
	sbc  b                                           ; $656a: $98
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	ld   [hl], a                                     ; $656d: $77
	ld   a, b                                        ; $656e: $78
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	sbc  b                                           ; $6571: $98
	adc  c                                           ; $6572: $89
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	adc  b                                           ; $6575: $88
	add  a                                           ; $6576: $87
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	ld   a, b                                        ; $6579: $78
	adc  b                                           ; $657a: $88
	adc  b                                           ; $657b: $88
	adc  c                                           ; $657c: $89
	sbc  b                                           ; $657d: $98
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	ld   [hl], a                                     ; $6580: $77
	ld   a, b                                        ; $6581: $78
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  c                                           ; $6584: $89
	sbc  c                                           ; $6585: $99
	sbc  b                                           ; $6586: $98
	sbc  c                                           ; $6587: $99
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	adc  b                                           ; $658a: $88
	adc  b                                           ; $658b: $88
	ld   [hl], a                                     ; $658c: $77
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  c                                           ; $658f: $89
	sbc  c                                           ; $6590: $99
	sbc  c                                           ; $6591: $99
	adc  b                                           ; $6592: $88
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  c                                           ; $659a: $89
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	ld   a, b                                        ; $65a1: $78
	adc  b                                           ; $65a2: $88
	adc  b                                           ; $65a3: $88
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  b                                           ; $65a6: $88
	adc  b                                           ; $65a7: $88
	adc  b                                           ; $65a8: $88
	adc  b                                           ; $65a9: $88
	adc  b                                           ; $65aa: $88
	adc  b                                           ; $65ab: $88
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	adc  b                                           ; $65ae: $88
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	adc  b                                           ; $65b1: $88
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	adc  b                                           ; $65b6: $88
	adc  b                                           ; $65b7: $88
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	adc  b                                           ; $65ba: $88
	adc  b                                           ; $65bb: $88
	adc  b                                           ; $65bc: $88
	adc  b                                           ; $65bd: $88
	adc  b                                           ; $65be: $88
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	adc  b                                           ; $65c1: $88
	adc  b                                           ; $65c2: $88
	adc  b                                           ; $65c3: $88
	adc  b                                           ; $65c4: $88
	adc  b                                           ; $65c5: $88
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  b                                           ; $65c8: $88
	adc  b                                           ; $65c9: $88
	adc  b                                           ; $65ca: $88
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	adc  b                                           ; $65cd: $88
	adc  b                                           ; $65ce: $88
	adc  b                                           ; $65cf: $88
	adc  b                                           ; $65d0: $88
	adc  b                                           ; $65d1: $88
	adc  b                                           ; $65d2: $88
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	adc  b                                           ; $65d5: $88
	adc  b                                           ; $65d6: $88
	adc  b                                           ; $65d7: $88
	adc  b                                           ; $65d8: $88
	adc  b                                           ; $65d9: $88
	adc  b                                           ; $65da: $88
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	adc  b                                           ; $65dd: $88
	adc  b                                           ; $65de: $88
	adc  b                                           ; $65df: $88
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	adc  b                                           ; $65e2: $88
	adc  b                                           ; $65e3: $88
	adc  b                                           ; $65e4: $88
	adc  b                                           ; $65e5: $88
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	adc  b                                           ; $65e8: $88
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  b                                           ; $65ec: $88
	adc  b                                           ; $65ed: $88
	adc  b                                           ; $65ee: $88
	adc  b                                           ; $65ef: $88
	adc  b                                           ; $65f0: $88
	adc  b                                           ; $65f1: $88
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	adc  b                                           ; $65f4: $88
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	adc  b                                           ; $65f8: $88
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  b                                           ; $65fd: $88
	sbc  b                                           ; $65fe: $98
	adc  b                                           ; $65ff: $88
	adc  b                                           ; $6600: $88
	adc  b                                           ; $6601: $88
	adc  b                                           ; $6602: $88
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	adc  b                                           ; $6605: $88
	adc  b                                           ; $6606: $88
	adc  b                                           ; $6607: $88
	adc  b                                           ; $6608: $88
	adc  b                                           ; $6609: $88
	adc  b                                           ; $660a: $88
	adc  c                                           ; $660b: $89
	sbc  c                                           ; $660c: $99
	cp   b                                           ; $660d: $b8
	sbc  d                                           ; $660e: $9a
	sbc  d                                           ; $660f: $9a
	add  a                                           ; $6610: $87
	adc  c                                           ; $6611: $89
	sub  a                                           ; $6612: $97
	sbc  c                                           ; $6613: $99
	xor  b                                           ; $6614: $a8
	ld   [hl], a                                     ; $6615: $77
	ld   a, b                                        ; $6616: $78
	ld   [hl], a                                     ; $6617: $77
	ld   l, b                                        ; $6618: $68
	adc  b                                           ; $6619: $88
	add  a                                           ; $661a: $87
	adc  b                                           ; $661b: $88
	add  a                                           ; $661c: $87
	ld   [hl], a                                     ; $661d: $77
	adc  c                                           ; $661e: $89
	add  a                                           ; $661f: $87
	ld   a, b                                        ; $6620: $78
	adc  b                                           ; $6621: $88
	adc  c                                           ; $6622: $89
	adc  c                                           ; $6623: $89
	add  a                                           ; $6624: $87
	ld   a, b                                        ; $6625: $78
	ld   a, b                                        ; $6626: $78
	add  a                                           ; $6627: $87
	adc  b                                           ; $6628: $88
	add  a                                           ; $6629: $87
	ld   [hl], a                                     ; $662a: $77
	ld   a, c                                        ; $662b: $79
	ld   [hl], a                                     ; $662c: $77
	ld   a, b                                        ; $662d: $78
	add  a                                           ; $662e: $87
	ld   [hl], a                                     ; $662f: $77
	ld   [hl], a                                     ; $6630: $77
	halt                                             ; $6631: $76
	ld   h, a                                        ; $6632: $67
	halt                                             ; $6633: $76
	ld   h, a                                        ; $6634: $67
	ld   [hl], a                                     ; $6635: $77
	ld   a, b                                        ; $6636: $78
	adc  b                                           ; $6637: $88
	sbc  c                                           ; $6638: $99
	sbc  d                                           ; $6639: $9a
	sbc  d                                           ; $663a: $9a
	sbc  c                                           ; $663b: $99
	sbc  c                                           ; $663c: $99
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	add  a                                           ; $663f: $87
	ld   h, [hl]                                     ; $6640: $66
	ld   h, [hl]                                     ; $6641: $66
	ld   h, l                                        ; $6642: $65
	ld   b, h                                        ; $6643: $44
	ld   b, e                                        ; $6644: $43
	ld   hl, $6811                                   ; $6645: $21 $11 $68
	cp   e                                           ; $6648: $bb
	rst  $28                                         ; $6649: $ef
	rst  $38                                         ; $664a: $ff
	db   $ed                                         ; $664b: $ed
	db   $dd                                         ; $664c: $dd
	sbc  c                                           ; $664d: $99
	xor  c                                           ; $664e: $a9
	sub  a                                           ; $664f: $97
	ld   l, b                                        ; $6650: $68
	xor  c                                           ; $6651: $a9
	xor  e                                           ; $6652: $ab
	xor  d                                           ; $6653: $aa
	sub  a                                           ; $6654: $97
	ld   b, c                                        ; $6655: $41
	ld   de, $1711                                   ; $6656: $11 $11 $17
	adc  e                                           ; $6659: $8b
	rst  $38                                         ; $665a: $ff
	rst  $38                                         ; $665b: $ff
	db   $fd                                         ; $665c: $fd
	call c, Call_0c6_6795                            ; $665d: $dc $95 $67
	ld   d, l                                        ; $6660: $55
	ld   l, b                                        ; $6661: $68
	xor  l                                           ; $6662: $ad
	xor  $ff                                         ; $6663: $ee $ff
	db   $db                                         ; $6665: $db
	and  a                                           ; $6666: $a7
	ld   h, l                                        ; $6667: $65
	ld   hl, $1111                                   ; $6668: $21 $11 $11
	ld   de, $ff0f                                   ; $666b: $11 $0f $ff
	rst  $38                                         ; $666e: $ff
	rst  $38                                         ; $666f: $ff
	add  $9a                                         ; $6670: $c6 $9a
	ld   [hl], l                                     ; $6672: $75
	ld   e, h                                        ; $6673: $5c
	xor  c                                           ; $6674: $a9

Jump_0c6_6675:
	adc  d                                           ; $6675: $8a
	xor  $ec                                         ; $6676: $ee $ec
	db   $ed                                         ; $6678: $ed
	xor  b                                           ; $6679: $a8
	halt                                             ; $667a: $76
	ld   d, e                                        ; $667b: $53
	ld   sp, $1111                                   ; $667c: $31 $11 $11
	ld   de, $ffaf                                   ; $667f: $11 $af $ff
	rst  $38                                         ; $6682: $ff
	db   $fd                                         ; $6683: $fd
	ld   h, h                                        ; $6684: $64
	add  a                                           ; $6685: $87
	ld   h, l                                        ; $6686: $65
	xor  h                                           ; $6687: $ac
	cp   c                                           ; $6688: $b9
	sbc  h                                           ; $6689: $9c
	xor  $cc                                         ; $668a: $ee $cc
	db   $db                                         ; $668c: $db
	add  a                                           ; $668d: $87
	ld   h, l                                        ; $668e: $65
	ld   b, e                                        ; $668f: $43
	ld   hl, $1111                                   ; $6690: $21 $11 $11
	ld   de, $fedf                                   ; $6693: $11 $df $fe
	rst  $38                                         ; $6696: $ff
	ret  z                                           ; $6697: $c8

	dec  [hl]                                        ; $6698: $35
	adc  b                                           ; $6699: $88
	ld   l, c                                        ; $669a: $69
	call z, $bda9                                    ; $669b: $cc $a9 $bd
	set  3, l                                        ; $669e: $cb $dd
	cp   c                                           ; $66a0: $b9
	xor  b                                           ; $66a1: $a8
	ld   d, l                                        ; $66a2: $55
	ld   b, e                                        ; $66a3: $43
	ld   de, $1111                                   ; $66a4: $11 $11 $11
	inc  e                                           ; $66a7: $1c
	rst  $38                                         ; $66a8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66a9: $cf
	db   $fd                                         ; $66aa: $fd
	ld   h, e                                        ; $66ab: $63
	ld   d, [hl]                                     ; $66ac: $56
	add  [hl]                                        ; $66ad: $86
	ld   a, [hl]                                     ; $66ae: $7e
	ld   a, [$db8b]                                  ; $66af: $fa $8b $db
	cp   l                                           ; $66b2: $bd
	db   $dd                                         ; $66b3: $dd
	or   a                                           ; $66b4: $b7
	ld   [hl], a                                     ; $66b5: $77
	ld   d, e                                        ; $66b6: $53
	ld   hl, $1111                                   ; $66b7: $21 $11 $11
	ld   de, $ffcf                                   ; $66ba: $11 $cf $ff
	rst  $38                                         ; $66bd: $ff
	push bc                                          ; $66be: $c5
	ld   b, [hl]                                     ; $66bf: $46
	ld   l, b                                        ; $66c0: $68
	adc  c                                           ; $66c1: $89
	rst  JumpTable                                         ; $66c2: $df
	cp   c                                           ; $66c3: $b9
	cp   e                                           ; $66c4: $bb
	cp   h                                           ; $66c5: $bc
	call c, $84dd                                    ; $66c6: $dc $dd $84
	ld   d, l                                        ; $66c9: $55
	ld   hl, $1113                                   ; $66ca: $21 $13 $11
	ld   de, $fe1c                                   ; $66cd: $11 $1c $fe
	rst  $38                                         ; $66d0: $ff
	ld   hl, sp+$67                                  ; $66d1: $f8 $67
	ld   d, a                                        ; $66d3: $57
	sbc  c                                           ; $66d4: $99
	call $9abb                                       ; $66d5: $cd $bb $9a
	cp   h                                           ; $66d8: $bc
	sbc  $cb                                         ; $66d9: $de $cb
	cp   b                                           ; $66db: $b8
	ld   d, h                                        ; $66dc: $54
	ld   hl, $1111                                   ; $66dd: $21 $11 $11
	ld   de, $ce3b                                   ; $66e0: $11 $3b $ce
	rst  $38                                         ; $66e3: $ff
	rst  $30                                         ; $66e4: $f7
	ld   e, d                                        ; $66e5: $5a
	ld   h, l                                        ; $66e6: $65
	ld   a, e                                        ; $66e7: $7b
	call z, $8ac9                                    ; $66e8: $cc $c9 $8a
	xor  e                                           ; $66eb: $ab
	db   $ed                                         ; $66ec: $ed
	call z, Call_0c6_53a6                            ; $66ed: $cc $a6 $53
	ld   hl, $2111                                   ; $66f0: $21 $11 $21
	ld   de, $de9b                                   ; $66f3: $11 $9b $de
	rst  $28                                         ; $66f6: $ef
	rst  ToBoot                                         ; $66f7: $c7
	add  l                                           ; $66f8: $85
	ld   l, c                                        ; $66f9: $69
	adc  d                                           ; $66fa: $8a
	call c, $9799                                    ; $66fb: $dc $99 $97
	cp   [hl]                                        ; $66fe: $be
	call c, $94bb                                    ; $66ff: $dc $bb $94
	ld   [hl+], a                                    ; $6702: $22
	ld   de, $1111                                   ; $6703: $11 $11 $11
	ld   a, [de]                                     ; $6706: $1a
	set  5, a                                        ; $6707: $cb $ef
	db   $fc                                         ; $6709: $fc
	ld   e, c                                        ; $670a: $59
	or   a                                           ; $670b: $b7
	ld   h, a                                        ; $670c: $67
	adc  $b8                                         ; $670d: $ce $b8
	adc  c                                           ; $670f: $89
	cp   d                                           ; $6710: $ba
	xor  [hl]                                        ; $6711: $ae
	db   $fc                                         ; $6712: $fc
	add  e                                           ; $6713: $83
	ld   h, l                                        ; $6714: $65
	ld   de, $1131                                   ; $6715: $11 $31 $11
	inc  de                                          ; $6718: $13
	call $ff9d                                       ; $6719: $cd $9d $ff
	ld   [hl], a                                     ; $671c: $77
	cp   b                                           ; $671d: $b8
	and  a                                           ; $671e: $a7
	ld   l, h                                        ; $671f: $6c
	ret                                              ; $6720: $c9


	ld   [hl], a                                     ; $6721: $77
	xor  h                                           ; $6722: $ac
	xor  l                                           ; $6723: $ad
	db   $db                                         ; $6724: $db
	xor  b                                           ; $6725: $a8
	ld   b, c                                        ; $6726: $41
	inc  de                                          ; $6727: $13
	ld   de, $1611                                   ; $6728: $11 $11 $16
	jp   hl                                          ; $672b: $e9


	cp   l                                           ; $672c: $bd
	rst  $38                                         ; $672d: $ff
	ld   l, l                                        ; $672e: $6d
	add  $a9                                         ; $672f: $c6 $a9
	adc  b                                           ; $6731: $88
	cp   h                                           ; $6732: $bc
	ld   l, b                                        ; $6733: $68
	cp   c                                           ; $6734: $b9
	cp   e                                           ; $6735: $bb
	res  4, a                                        ; $6736: $cb $a7
	ld   sp, $1123                                   ; $6738: $31 $23 $11
	ld   hl, $ab29                                   ; $673b: $21 $29 $ab
	xor  a                                           ; $673e: $af
	db   $eb                                         ; $673f: $eb
	db   $eb                                         ; $6740: $eb
	adc  e                                           ; $6741: $8b
	and  [hl]                                        ; $6742: $a6
	cp   e                                           ; $6743: $bb
	adc  c                                           ; $6744: $89
	ld   a, b                                        ; $6745: $78
	xor  b                                           ; $6746: $a8
	cp   d                                           ; $6747: $ba
	sbc  h                                           ; $6748: $9c
	ld   [hl], h                                     ; $6749: $74
	ld   b, c                                        ; $674a: $41
	inc  hl                                          ; $674b: $23
	ld   bc, $9c11                                   ; $674c: $01 $11 $9c
	adc  c                                           ; $674f: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6750: $cf
	ld   hl, sp-$34                                  ; $6751: $f8 $cc
	ld   a, h                                        ; $6753: $7c
	xor  b                                           ; $6754: $a8
	or   a                                           ; $6755: $b7
	adc  b                                           ; $6756: $88
	ld   l, d                                        ; $6757: $6a
	cp   c                                           ; $6758: $b9
	cp   c                                           ; $6759: $b9
	sub  a                                           ; $675a: $97
	dec  [hl]                                        ; $675b: $35
	ld   d, e                                        ; $675c: $53
	ld   hl, $1644                                   ; $675d: $21 $44 $16
	xor  d                                           ; $6760: $aa
	ret  c                                           ; $6761: $d8

	ld   l, a                                        ; $6762: $6f
	ld   sp, hl                                      ; $6763: $f9
	cp   e                                           ; $6764: $bb
	cp   d                                           ; $6765: $ba
	ld   l, e                                        ; $6766: $6b
	or   a                                           ; $6767: $b7
	or   a                                           ; $6768: $b7
	ld   l, e                                        ; $6769: $6b
	xor  b                                           ; $676a: $a8
	sbc  b                                           ; $676b: $98
	halt                                             ; $676c: $76
	ld   d, [hl]                                     ; $676d: $56
	ld   d, h                                        ; $676e: $54
	ld   [hl-], a                                    ; $676f: $32
	inc  [hl]                                        ; $6770: $34
	ld   d, a                                        ; $6771: $57
	ld   a, b                                        ; $6772: $78
	call $bc9a                                       ; $6773: $cd $9a $bc
	xor  c                                           ; $6776: $a9
	jp   z, $7799                                    ; $6777: $ca $99 $77

	sbc  b                                           ; $677a: $98
	ld   a, d                                        ; $677b: $7a
	sub  a                                           ; $677c: $97
	ld   h, a                                        ; $677d: $67
	ld   [hl], a                                     ; $677e: $77
	halt                                             ; $677f: $76
	ld   h, [hl]                                     ; $6780: $66
	ld   d, h                                        ; $6781: $54
	ld   d, [hl]                                     ; $6782: $56
	ld   [hl], a                                     ; $6783: $77
	ld   a, c                                        ; $6784: $79
	adc  c                                           ; $6785: $89
	add  [hl]                                        ; $6786: $86
	cp   e                                           ; $6787: $bb
	xor  e                                           ; $6788: $ab
	cp   d                                           ; $6789: $ba
	sbc  c                                           ; $678a: $99
	sbc  b                                           ; $678b: $98
	sbc  c                                           ; $678c: $99
	sbc  b                                           ; $678d: $98
	add  a                                           ; $678e: $87
	adc  c                                           ; $678f: $89
	halt                                             ; $6790: $76
	ld   h, a                                        ; $6791: $67
	add  a                                           ; $6792: $87
	ld   [hl], l                                     ; $6793: $75
	ld   b, a                                        ; $6794: $47

Call_0c6_6795:
	halt                                             ; $6795: $76
	ld   h, [hl]                                     ; $6796: $66
	ld   a, b                                        ; $6797: $78
	xor  c                                           ; $6798: $a9
	sub  a                                           ; $6799: $97
	adc  c                                           ; $679a: $89
	sbc  b                                           ; $679b: $98
	adc  d                                           ; $679c: $8a
	sbc  b                                           ; $679d: $98
	sub  a                                           ; $679e: $97
	ld   a, c                                        ; $679f: $79
	sbc  b                                           ; $67a0: $98
	ld   a, b                                        ; $67a1: $78
	adc  b                                           ; $67a2: $88
	sbc  b                                           ; $67a3: $98
	halt                                             ; $67a4: $76
	ld   [hl], a                                     ; $67a5: $77
	ld   a, b                                        ; $67a6: $78
	ld   [hl], a                                     ; $67a7: $77
	add  a                                           ; $67a8: $87
	ld   a, c                                        ; $67a9: $79
	sbc  b                                           ; $67aa: $98
	ld   [hl], a                                     ; $67ab: $77
	ld   a, c                                        ; $67ac: $79
	adc  b                                           ; $67ad: $88
	ld   [hl], a                                     ; $67ae: $77
	adc  b                                           ; $67af: $88
	sbc  b                                           ; $67b0: $98
	sbc  d                                           ; $67b1: $9a
	add  a                                           ; $67b2: $87
	ld   h, a                                        ; $67b3: $67
	sbc  c                                           ; $67b4: $99
	sbc  c                                           ; $67b5: $99
	sbc  b                                           ; $67b6: $98
	ld   [hl], a                                     ; $67b7: $77
	adc  b                                           ; $67b8: $88
	sbc  c                                           ; $67b9: $99
	add  a                                           ; $67ba: $87
	ld   a, b                                        ; $67bb: $78
	sbc  c                                           ; $67bc: $99
	adc  b                                           ; $67bd: $88
	sbc  b                                           ; $67be: $98
	sub  a                                           ; $67bf: $97
	ld   a, b                                        ; $67c0: $78
	adc  c                                           ; $67c1: $89
	ld   [hl], a                                     ; $67c2: $77
	ld   a, b                                        ; $67c3: $78
	adc  b                                           ; $67c4: $88
	ld   [hl], a                                     ; $67c5: $77
	adc  b                                           ; $67c6: $88
	add  a                                           ; $67c7: $87
	adc  b                                           ; $67c8: $88
	adc  c                                           ; $67c9: $89
	adc  b                                           ; $67ca: $88
	adc  c                                           ; $67cb: $89
	sbc  c                                           ; $67cc: $99
	sbc  c                                           ; $67cd: $99
	adc  c                                           ; $67ce: $89
	add  a                                           ; $67cf: $87
	ld   [hl], a                                     ; $67d0: $77
	adc  d                                           ; $67d1: $8a
	xor  c                                           ; $67d2: $a9
	add  a                                           ; $67d3: $87
	ld   a, b                                        ; $67d4: $78
	sbc  c                                           ; $67d5: $99
	sub  a                                           ; $67d6: $97
	ld   a, b                                        ; $67d7: $78
	adc  b                                           ; $67d8: $88
	ld   [hl], a                                     ; $67d9: $77
	ld   a, c                                        ; $67da: $79
	adc  b                                           ; $67db: $88
	ld   [hl], a                                     ; $67dc: $77
	adc  c                                           ; $67dd: $89
	sbc  c                                           ; $67de: $99
	sbc  c                                           ; $67df: $99
	xor  c                                           ; $67e0: $a9
	ld   [hl], a                                     ; $67e1: $77
	adc  c                                           ; $67e2: $89
	add  a                                           ; $67e3: $87
	ld   a, b                                        ; $67e4: $78
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	sbc  b                                           ; $67e8: $98
	sbc  b                                           ; $67e9: $98
	ld   a, b                                        ; $67ea: $78
	adc  b                                           ; $67eb: $88
	ld   [hl], a                                     ; $67ec: $77
	adc  c                                           ; $67ed: $89
	add  a                                           ; $67ee: $87
	adc  c                                           ; $67ef: $89
	sbc  b                                           ; $67f0: $98
	sbc  b                                           ; $67f1: $98
	adc  c                                           ; $67f2: $89
	adc  c                                           ; $67f3: $89
	sbc  c                                           ; $67f4: $99
	sbc  c                                           ; $67f5: $99
	adc  b                                           ; $67f6: $88
	ld   a, b                                        ; $67f7: $78
	sbc  c                                           ; $67f8: $99
	adc  b                                           ; $67f9: $88
	adc  c                                           ; $67fa: $89
	adc  b                                           ; $67fb: $88
	sbc  b                                           ; $67fc: $98
	ld   [hl], a                                     ; $67fd: $77
	ld   a, b                                        ; $67fe: $78
	ld   [hl], a                                     ; $67ff: $77
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	adc  b                                           ; $6802: $88
	adc  b                                           ; $6803: $88
	adc  b                                           ; $6804: $88
	adc  c                                           ; $6805: $89
	adc  c                                           ; $6806: $89
	adc  b                                           ; $6807: $88
	adc  c                                           ; $6808: $89
	adc  b                                           ; $6809: $88
	ld   [hl], a                                     ; $680a: $77
	sbc  b                                           ; $680b: $98
	sbc  b                                           ; $680c: $98
	ld   a, b                                        ; $680d: $78
	adc  c                                           ; $680e: $89
	add  a                                           ; $680f: $87
	ld   a, b                                        ; $6810: $78
	ld   [hl], a                                     ; $6811: $77
	adc  b                                           ; $6812: $88
	adc  b                                           ; $6813: $88
	ld   [hl], a                                     ; $6814: $77
	adc  c                                           ; $6815: $89
	adc  b                                           ; $6816: $88
	adc  b                                           ; $6817: $88
	sbc  b                                           ; $6818: $98
	sub  a                                           ; $6819: $97
	ld   a, b                                        ; $681a: $78
	sbc  b                                           ; $681b: $98
	add  a                                           ; $681c: $87
	adc  c                                           ; $681d: $89
	adc  b                                           ; $681e: $88
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	add  a                                           ; $6821: $87
	ld   a, b                                        ; $6822: $78
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	adc  b                                           ; $6825: $88
	ld   [hl], a                                     ; $6826: $77
	adc  c                                           ; $6827: $89
	adc  b                                           ; $6828: $88
	sbc  b                                           ; $6829: $98
	adc  b                                           ; $682a: $88
	add  a                                           ; $682b: $87
	ld   a, b                                        ; $682c: $78
	adc  b                                           ; $682d: $88
	sbc  b                                           ; $682e: $98
	adc  b                                           ; $682f: $88
	sbc  b                                           ; $6830: $98
	add  a                                           ; $6831: $87
	ld   a, c                                        ; $6832: $79
	adc  c                                           ; $6833: $89
	add  a                                           ; $6834: $87
	ld   a, b                                        ; $6835: $78
	adc  b                                           ; $6836: $88
	adc  b                                           ; $6837: $88
	sbc  b                                           ; $6838: $98
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

Call_0c6_68c7:
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
	adc  c                                           ; $68eb: $89
	adc  c                                           ; $68ec: $89
	sbc  b                                           ; $68ed: $98
	halt                                             ; $68ee: $76
	ld   h, a                                        ; $68ef: $67
	bit  4, h                                        ; $68f0: $cb $64
	ld   l, d                                        ; $68f2: $6a
	xor  b                                           ; $68f3: $a8
	ld   h, a                                        ; $68f4: $67
	sbc  d                                           ; $68f5: $9a
	sbc  b                                           ; $68f6: $98
	adc  b                                           ; $68f7: $88
	sbc  b                                           ; $68f8: $98
	add  a                                           ; $68f9: $87
	ld   [hl], a                                     ; $68fa: $77
	sbc  b                                           ; $68fb: $98
	sbc  c                                           ; $68fc: $99
	sub  a                                           ; $68fd: $97
	ld   a, b                                        ; $68fe: $78
	sbc  c                                           ; $68ff: $99
	halt                                             ; $6900: $76
	ld   a, b                                        ; $6901: $78
	adc  b                                           ; $6902: $88
	ld   a, b                                        ; $6903: $78
	ld   [hl], a                                     ; $6904: $77
	xor  h                                           ; $6905: $ac
	and  a                                           ; $6906: $a7
	ld   d, a                                        ; $6907: $57
	sbc  d                                           ; $6908: $9a
	halt                                             ; $6909: $76
	adc  c                                           ; $690a: $89
	add  [hl]                                        ; $690b: $86
	ld   l, b                                        ; $690c: $68
	xor  c                                           ; $690d: $a9
	halt                                             ; $690e: $76
	ld   a, d                                        ; $690f: $7a
	xor  b                                           ; $6910: $a8
	ld   h, [hl]                                     ; $6911: $66
	sbc  h                                           ; $6912: $9c
	xor  c                                           ; $6913: $a9
	adc  b                                           ; $6914: $88
	ld   [hl], l                                     ; $6915: $75
	ld   l, c                                        ; $6916: $69
	xor  c                                           ; $6917: $a9
	ld   d, [hl]                                     ; $6918: $56
	halt                                             ; $6919: $76
	xor  e                                           ; $691a: $ab
	xor  b                                           ; $691b: $a8
	cp   e                                           ; $691c: $bb
	add  l                                           ; $691d: $85
	ld   e, e                                        ; $691e: $5b
	ret                                              ; $691f: $c9


	ld   b, l                                        ; $6920: $45
	adc  c                                           ; $6921: $89
	ld   [hl], l                                     ; $6922: $75
	ld   l, c                                        ; $6923: $69
	cp   c                                           ; $6924: $b9
	ld   [hl], a                                     ; $6925: $77
	sbc  c                                           ; $6926: $99
	sub  a                                           ; $6927: $97
	ld   a, b                                        ; $6928: $78
	sbc  c                                           ; $6929: $99
	ld   h, [hl]                                     ; $692a: $66
	adc  c                                           ; $692b: $89
	add  a                                           ; $692c: $87
	ld   a, b                                        ; $692d: $78
	adc  b                                           ; $692e: $88
	sbc  e                                           ; $692f: $9b
	ret                                              ; $6930: $c9


	ld   b, l                                        ; $6931: $45
	sbc  d                                           ; $6932: $9a
	sub  [hl]                                        ; $6933: $96
	ld   a, b                                        ; $6934: $78
	halt                                             ; $6935: $76
	ld   a, c                                        ; $6936: $79
	ld   a, b                                        ; $6937: $78
	adc  c                                           ; $6938: $89
	add  a                                           ; $6939: $87
	ld   a, b                                        ; $693a: $78
	xor  b                                           ; $693b: $a8
	ld   [hl], a                                     ; $693c: $77
	adc  e                                           ; $693d: $8b
	cp   c                                           ; $693e: $b9
	ld   h, [hl]                                     ; $693f: $66
	xor  e                                           ; $6940: $ab
	add  [hl]                                        ; $6941: $86
	ld   a, c                                        ; $6942: $79
	sub  [hl]                                        ; $6943: $96
	ld   d, a                                        ; $6944: $57
	xor  c                                           ; $6945: $a9
	ld   [hl], a                                     ; $6946: $77
	sbc  d                                           ; $6947: $9a
	add  a                                           ; $6948: $87
	ld   a, b                                        ; $6949: $78
	xor  d                                           ; $694a: $aa
	sub  a                                           ; $694b: $97
	ld   a, b                                        ; $694c: $78
	add  a                                           ; $694d: $87
	ld   l, b                                        ; $694e: $68
	add  a                                           ; $694f: $87
	halt                                             ; $6950: $76
	ld   [hl], a                                     ; $6951: $77
	cp   [hl]                                        ; $6952: $be
	call nz, $ba28                                   ; $6953: $c4 $28 $ba
	sub  a                                           ; $6956: $97
	ld   h, [hl]                                     ; $6957: $66
	ld   d, l                                        ; $6958: $55
	ld   [hl], a                                     ; $6959: $77
	xor  l                                           ; $695a: $ad
	ret  z                                           ; $695b: $c8

	ld   a, d                                        ; $695c: $7a
	xor  c                                           ; $695d: $a9
	ld   h, a                                        ; $695e: $67
	adc  d                                           ; $695f: $8a
	ld   [hl], h                                     ; $6960: $74
	ld   d, a                                        ; $6961: $57
	sub  a                                           ; $6962: $97
	ld   d, a                                        ; $6963: $57
	xor  e                                           ; $6964: $ab
	halt                                             ; $6965: $76
	adc  e                                           ; $6966: $8b
	sub  [hl]                                        ; $6967: $96
	ld   a, e                                        ; $6968: $7b
	sub  a                                           ; $6969: $97
	ld   a, c                                        ; $696a: $79
	sbc  b                                           ; $696b: $98
	ld   h, [hl]                                     ; $696c: $66
	adc  b                                           ; $696d: $88
	ld   h, a                                        ; $696e: $67
	adc  c                                           ; $696f: $89
	add  a                                           ; $6970: $87
	ld   a, b                                        ; $6971: $78
	add  a                                           ; $6972: $87
	adc  e                                           ; $6973: $8b
	xor  c                                           ; $6974: $a9
	ld   a, b                                        ; $6975: $78
	ld   h, l                                        ; $6976: $65
	xor  d                                           ; $6977: $aa
	ld   d, l                                        ; $6978: $55
	sbc  c                                           ; $6979: $99
	add  a                                           ; $697a: $87
	sbc  c                                           ; $697b: $99
	sbc  d                                           ; $697c: $9a
	res  0, a                                        ; $697d: $cb $87
	halt                                             ; $697f: $76
	ld   h, a                                        ; $6980: $67
	sbc  d                                           ; $6981: $9a
	ld   h, [hl]                                     ; $6982: $66
	ld   h, a                                        ; $6983: $67
	ld   h, l                                        ; $6984: $65
	adc  b                                           ; $6985: $88
	sub  a                                           ; $6986: $97
	ld   a, b                                        ; $6987: $78
	adc  b                                           ; $6988: $88
	add  a                                           ; $6989: $87
	xor  d                                           ; $698a: $aa
	sbc  b                                           ; $698b: $98
	adc  c                                           ; $698c: $89
	sbc  b                                           ; $698d: $98
	sub  a                                           ; $698e: $97
	halt                                             ; $698f: $76
	add  a                                           ; $6990: $87
	ld   h, a                                        ; $6991: $67
	sub  a                                           ; $6992: $97
	adc  b                                           ; $6993: $88
	ld   a, c                                        ; $6994: $79
	ld   a, b                                        ; $6995: $78
	adc  b                                           ; $6996: $88
	adc  b                                           ; $6997: $88
	cp   c                                           ; $6998: $b9
	ld   a, c                                        ; $6999: $79
	add  a                                           ; $699a: $87
	ld   h, a                                        ; $699b: $67
	sbc  c                                           ; $699c: $99
	ld   h, a                                        ; $699d: $67
	adc  b                                           ; $699e: $88
	ld   a, b                                        ; $699f: $78
	sbc  b                                           ; $69a0: $98
	adc  c                                           ; $69a1: $89
	xor  c                                           ; $69a2: $a9
	ld   a, b                                        ; $69a3: $78
	sbc  b                                           ; $69a4: $98
	ld   a, b                                        ; $69a5: $78
	sbc  b                                           ; $69a6: $98
	ld   h, a                                        ; $69a7: $67
	sbc  c                                           ; $69a8: $99
	ld   h, a                                        ; $69a9: $67
	adc  c                                           ; $69aa: $89
	add  a                                           ; $69ab: $87
	sbc  d                                           ; $69ac: $9a
	adc  b                                           ; $69ad: $88
	sbc  b                                           ; $69ae: $98
	sbc  b                                           ; $69af: $98
	ld   a, c                                        ; $69b0: $79
	sub  a                                           ; $69b1: $97
	ld   a, d                                        ; $69b2: $7a
	sub  a                                           ; $69b3: $97
	adc  b                                           ; $69b4: $88
	add  a                                           ; $69b5: $87
	adc  b                                           ; $69b6: $88
	ld   a, b                                        ; $69b7: $78
	add  a                                           ; $69b8: $87
	adc  b                                           ; $69b9: $88
	adc  b                                           ; $69ba: $88
	adc  c                                           ; $69bb: $89
	adc  b                                           ; $69bc: $88
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	adc  c                                           ; $69bf: $89
	ld   a, b                                        ; $69c0: $78
	sbc  c                                           ; $69c1: $99
	ld   [hl], a                                     ; $69c2: $77
	sub  a                                           ; $69c3: $97
	sub  a                                           ; $69c4: $97
	ld   a, d                                        ; $69c5: $7a
	add  a                                           ; $69c6: $87
	adc  b                                           ; $69c7: $88
	adc  b                                           ; $69c8: $88
	adc  b                                           ; $69c9: $88
	sbc  b                                           ; $69ca: $98
	ld   a, c                                        ; $69cb: $79
	sbc  c                                           ; $69cc: $99
	ld   a, b                                        ; $69cd: $78
	adc  b                                           ; $69ce: $88
	add  a                                           ; $69cf: $87
	adc  b                                           ; $69d0: $88
	adc  c                                           ; $69d1: $89
	adc  b                                           ; $69d2: $88
	ld   a, b                                        ; $69d3: $78
	sub  a                                           ; $69d4: $97
	ld   a, b                                        ; $69d5: $78
	sub  a                                           ; $69d6: $97
	adc  c                                           ; $69d7: $89
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88

Call_0c6_69da:
	adc  c                                           ; $69da: $89
	add  a                                           ; $69db: $87
	add  a                                           ; $69dc: $87
	ld   a, b                                        ; $69dd: $78
	add  a                                           ; $69de: $87
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	ld   a, b                                        ; $69e1: $78
	sbc  b                                           ; $69e2: $98
	adc  b                                           ; $69e3: $88
	sbc  c                                           ; $69e4: $99
	ld   a, b                                        ; $69e5: $78
	adc  c                                           ; $69e6: $89
	ld   [hl], a                                     ; $69e7: $77
	sbc  b                                           ; $69e8: $98
	ld   a, b                                        ; $69e9: $78
	adc  b                                           ; $69ea: $88
	add  a                                           ; $69eb: $87
	adc  c                                           ; $69ec: $89
	ld   [hl], a                                     ; $69ed: $77
	ld   a, c                                        ; $69ee: $79
	sub  a                                           ; $69ef: $97
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	sub  a                                           ; $69f2: $97
	sbc  b                                           ; $69f3: $98
	adc  b                                           ; $69f4: $88
	adc  c                                           ; $69f5: $89
	ld   a, b                                        ; $69f6: $78
	add  a                                           ; $69f7: $87
	add  [hl]                                        ; $69f8: $86
	ld   a, c                                        ; $69f9: $79
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	ld   a, c                                        ; $69fd: $79
	sub  a                                           ; $69fe: $97
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	ld   a, b                                        ; $6a01: $78
	adc  b                                           ; $6a02: $88
	ld   a, b                                        ; $6a03: $78
	adc  b                                           ; $6a04: $88
	sbc  b                                           ; $6a05: $98
	adc  b                                           ; $6a06: $88
	ld   a, c                                        ; $6a07: $79
	ld   a, c                                        ; $6a08: $79
	add  a                                           ; $6a09: $87
	sub  a                                           ; $6a0a: $97
	ld   a, b                                        ; $6a0b: $78
	sub  a                                           ; $6a0c: $97
	ld   [hl], a                                     ; $6a0d: $77
	sbc  c                                           ; $6a0e: $99
	ld   a, c                                        ; $6a0f: $79
	adc  c                                           ; $6a10: $89
	add  [hl]                                        ; $6a11: $86
	adc  b                                           ; $6a12: $88
	add  a                                           ; $6a13: $87
	adc  d                                           ; $6a14: $8a
	add  a                                           ; $6a15: $87
	ld   a, b                                        ; $6a16: $78
	sbc  b                                           ; $6a17: $98
	ld   a, b                                        ; $6a18: $78
	add  a                                           ; $6a19: $87
	adc  b                                           ; $6a1a: $88
	adc  c                                           ; $6a1b: $89
	adc  b                                           ; $6a1c: $88
	sbc  b                                           ; $6a1d: $98
	ld   [hl], a                                     ; $6a1e: $77
	sbc  b                                           ; $6a1f: $98
	ld   a, b                                        ; $6a20: $78
	sbc  c                                           ; $6a21: $99
	adc  b                                           ; $6a22: $88
	ld   a, c                                        ; $6a23: $79
	add  a                                           ; $6a24: $87
	adc  b                                           ; $6a25: $88
	add  a                                           ; $6a26: $87
	sbc  b                                           ; $6a27: $98
	sub  a                                           ; $6a28: $97
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  b                                           ; $6a2b: $88
	sub  a                                           ; $6a2c: $97
	adc  c                                           ; $6a2d: $89
	sbc  c                                           ; $6a2e: $99
	ld   a, b                                        ; $6a2f: $78
	sbc  b                                           ; $6a30: $98
	adc  b                                           ; $6a31: $88
	adc  b                                           ; $6a32: $88
	sub  a                                           ; $6a33: $97
	sbc  c                                           ; $6a34: $99
	adc  b                                           ; $6a35: $88
	adc  c                                           ; $6a36: $89
	ld   a, c                                        ; $6a37: $79
	adc  b                                           ; $6a38: $88
	adc  b                                           ; $6a39: $88
	sbc  b                                           ; $6a3a: $98
	sbc  b                                           ; $6a3b: $98
	adc  c                                           ; $6a3c: $89
	ld   a, b                                        ; $6a3d: $78
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	add  a                                           ; $6a40: $87
	adc  c                                           ; $6a41: $89
	add  a                                           ; $6a42: $87
	adc  b                                           ; $6a43: $88
	adc  c                                           ; $6a44: $89
	add  a                                           ; $6a45: $87
	sbc  b                                           ; $6a46: $98
	ld   a, b                                        ; $6a47: $78
	adc  b                                           ; $6a48: $88
	adc  c                                           ; $6a49: $89
	adc  b                                           ; $6a4a: $88
	add  a                                           ; $6a4b: $87
	adc  b                                           ; $6a4c: $88
	adc  b                                           ; $6a4d: $88
	adc  b                                           ; $6a4e: $88
	adc  c                                           ; $6a4f: $89
	adc  b                                           ; $6a50: $88
	adc  b                                           ; $6a51: $88
	adc  b                                           ; $6a52: $88
	add  a                                           ; $6a53: $87
	adc  b                                           ; $6a54: $88
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	adc  b                                           ; $6a57: $88
	adc  c                                           ; $6a58: $89
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
	ld   a, b                                        ; $6a67: $78
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
	sub  a                                           ; $6a79: $97
	ld   a, b                                        ; $6a7a: $78
	ld   a, b                                        ; $6a7b: $78
	adc  b                                           ; $6a7c: $88
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	ld   a, b                                        ; $6a81: $78
	add  a                                           ; $6a82: $87
	adc  b                                           ; $6a83: $88
	ld   a, b                                        ; $6a84: $78
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	ld   a, b                                        ; $6a89: $78
	add  a                                           ; $6a8a: $87
	ld   a, b                                        ; $6a8b: $78
	adc  b                                           ; $6a8c: $88
	ld   [hl], a                                     ; $6a8d: $77
	add  a                                           ; $6a8e: $87
	adc  b                                           ; $6a8f: $88
	adc  b                                           ; $6a90: $88
	ld   a, b                                        ; $6a91: $78
	ld   a, b                                        ; $6a92: $78
	adc  b                                           ; $6a93: $88
	sub  a                                           ; $6a94: $97
	add  a                                           ; $6a95: $87
	adc  b                                           ; $6a96: $88
	ld   a, b                                        ; $6a97: $78
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	add  a                                           ; $6a9b: $87
	ld   a, b                                        ; $6a9c: $78
	adc  b                                           ; $6a9d: $88
	ld   a, c                                        ; $6a9e: $79
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	sub  a                                           ; $6aa1: $97
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	ld   a, c                                        ; $6aa4: $79
	ld   a, b                                        ; $6aa5: $78
	adc  b                                           ; $6aa6: $88
	adc  b                                           ; $6aa7: $88
	add  a                                           ; $6aa8: $87
	sbc  b                                           ; $6aa9: $98
	ld   a, b                                        ; $6aaa: $78
	ld   a, c                                        ; $6aab: $79
	ld   a, b                                        ; $6aac: $78
	sub  a                                           ; $6aad: $97
	sub  a                                           ; $6aae: $97
	sbc  c                                           ; $6aaf: $99
	ld   a, c                                        ; $6ab0: $79
	adc  c                                           ; $6ab1: $89
	ld   a, b                                        ; $6ab2: $78
	adc  b                                           ; $6ab3: $88
	add  a                                           ; $6ab4: $87
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	add  a                                           ; $6ab7: $87
	sbc  b                                           ; $6ab8: $98
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	sbc  b                                           ; $6abc: $98
	adc  b                                           ; $6abd: $88
	ld   a, b                                        ; $6abe: $78
	ld   a, c                                        ; $6abf: $79
	add  a                                           ; $6ac0: $87
	sub  a                                           ; $6ac1: $97
	adc  c                                           ; $6ac2: $89
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	ld   a, b                                        ; $6ac5: $78
	sub  a                                           ; $6ac6: $97
	adc  b                                           ; $6ac7: $88
	add  a                                           ; $6ac8: $87
	sbc  b                                           ; $6ac9: $98
	adc  b                                           ; $6aca: $88
	adc  c                                           ; $6acb: $89
	ld   a, b                                        ; $6acc: $78
	ld   a, c                                        ; $6acd: $79
	sub  a                                           ; $6ace: $97
	add  a                                           ; $6acf: $87
	adc  b                                           ; $6ad0: $88
	adc  b                                           ; $6ad1: $88
	ld   a, b                                        ; $6ad2: $78
	adc  b                                           ; $6ad3: $88
	sbc  b                                           ; $6ad4: $98
	add  a                                           ; $6ad5: $87
	add  a                                           ; $6ad6: $87
	adc  b                                           ; $6ad7: $88
	ld   a, b                                        ; $6ad8: $78
	ld   a, c                                        ; $6ad9: $79
	adc  b                                           ; $6ada: $88
	add  a                                           ; $6adb: $87
	sbc  b                                           ; $6adc: $98
	ld   a, b                                        ; $6add: $78
	sbc  b                                           ; $6ade: $98
	adc  b                                           ; $6adf: $88
	adc  c                                           ; $6ae0: $89
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	sbc  b                                           ; $6ae3: $98
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	ld   a, c                                        ; $6ae6: $79
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	add  a                                           ; $6ae9: $87
	adc  c                                           ; $6aea: $89
	adc  c                                           ; $6aeb: $89
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  c                                           ; $6aee: $89
	ld   a, b                                        ; $6aef: $78
	sub  a                                           ; $6af0: $97
	sbc  b                                           ; $6af1: $98
	adc  c                                           ; $6af2: $89
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	sbc  b                                           ; $6af5: $98
	adc  b                                           ; $6af6: $88
	ld   a, b                                        ; $6af7: $78
	adc  c                                           ; $6af8: $89
	adc  b                                           ; $6af9: $88
	add  a                                           ; $6afa: $87
	sbc  b                                           ; $6afb: $98
	ld   a, c                                        ; $6afc: $79
	ld   a, b                                        ; $6afd: $78
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	sub  a                                           ; $6b00: $97
	adc  c                                           ; $6b01: $89
	ld   a, c                                        ; $6b02: $79
	add  a                                           ; $6b03: $87
	sub  a                                           ; $6b04: $97
	sbc  b                                           ; $6b05: $98
	sub  a                                           ; $6b06: $97
	adc  c                                           ; $6b07: $89
	ld   a, b                                        ; $6b08: $78
	adc  b                                           ; $6b09: $88
	adc  c                                           ; $6b0a: $89
	adc  b                                           ; $6b0b: $88
	sbc  b                                           ; $6b0c: $98
	ld   a, c                                        ; $6b0d: $79
	ld   a, b                                        ; $6b0e: $78
	adc  c                                           ; $6b0f: $89
	add  a                                           ; $6b10: $87
	sub  a                                           ; $6b11: $97
	sbc  b                                           ; $6b12: $98
	adc  c                                           ; $6b13: $89
	adc  c                                           ; $6b14: $89
	adc  c                                           ; $6b15: $89
	adc  b                                           ; $6b16: $88
	ld   a, c                                        ; $6b17: $79
	sub  a                                           ; $6b18: $97
	adc  c                                           ; $6b19: $89
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	sbc  b                                           ; $6b1c: $98
	add  a                                           ; $6b1d: $87
	sbc  b                                           ; $6b1e: $98
	ld   a, b                                        ; $6b1f: $78
	ld   a, c                                        ; $6b20: $79
	ld   a, b                                        ; $6b21: $78
	adc  b                                           ; $6b22: $88
	sbc  b                                           ; $6b23: $98
	adc  c                                           ; $6b24: $89
	adc  b                                           ; $6b25: $88
	sub  a                                           ; $6b26: $97
	add  a                                           ; $6b27: $87
	sbc  b                                           ; $6b28: $98
	adc  b                                           ; $6b29: $88
	ld   a, b                                        ; $6b2a: $78
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	add  a                                           ; $6b2e: $87
	adc  b                                           ; $6b2f: $88
	ld   a, c                                        ; $6b30: $79
	adc  b                                           ; $6b31: $88
	adc  c                                           ; $6b32: $89
	add  a                                           ; $6b33: $87
	sub  a                                           ; $6b34: $97
	adc  b                                           ; $6b35: $88
	ld   a, c                                        ; $6b36: $79
	ld   a, c                                        ; $6b37: $79
	ld   a, b                                        ; $6b38: $78
	sub  a                                           ; $6b39: $97
	adc  b                                           ; $6b3a: $88
	add  a                                           ; $6b3b: $87
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	sub  a                                           ; $6b3f: $97
	adc  c                                           ; $6b40: $89
	ld   a, b                                        ; $6b41: $78
	ld   a, d                                        ; $6b42: $7a
	adc  b                                           ; $6b43: $88
	sub  a                                           ; $6b44: $97
	add  a                                           ; $6b45: $87
	adc  c                                           ; $6b46: $89
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	ld   a, c                                        ; $6b4a: $79
	sbc  b                                           ; $6b4b: $98
	adc  c                                           ; $6b4c: $89
	sbc  b                                           ; $6b4d: $98
	sub  a                                           ; $6b4e: $97
	adc  b                                           ; $6b4f: $88
	ld   a, c                                        ; $6b50: $79
	adc  b                                           ; $6b51: $88
	sbc  c                                           ; $6b52: $99
	ld   [hl], a                                     ; $6b53: $77
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  c                                           ; $6b56: $89
	adc  b                                           ; $6b57: $88
	ld   a, b                                        ; $6b58: $78
	ld   a, b                                        ; $6b59: $78
	adc  b                                           ; $6b5a: $88
	sub  a                                           ; $6b5b: $97
	sub  a                                           ; $6b5c: $97
	ld   a, b                                        ; $6b5d: $78
	ld   a, c                                        ; $6b5e: $79
	adc  c                                           ; $6b5f: $89
	adc  b                                           ; $6b60: $88
	sub  a                                           ; $6b61: $97
	sbc  b                                           ; $6b62: $98
	adc  c                                           ; $6b63: $89
	ld   a, c                                        ; $6b64: $79
	ld   a, b                                        ; $6b65: $78
	ld   a, b                                        ; $6b66: $78
	add  a                                           ; $6b67: $87
	sbc  b                                           ; $6b68: $98
	add  a                                           ; $6b69: $87
	adc  b                                           ; $6b6a: $88
	ld   a, b                                        ; $6b6b: $78
	ld   a, c                                        ; $6b6c: $79
	ld   a, b                                        ; $6b6d: $78
	sub  a                                           ; $6b6e: $97
	add  a                                           ; $6b6f: $87
	ld   a, b                                        ; $6b70: $78
	ld   a, c                                        ; $6b71: $79
	adc  b                                           ; $6b72: $88
	adc  b                                           ; $6b73: $88
	adc  b                                           ; $6b74: $88
	add  a                                           ; $6b75: $87
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  c                                           ; $6b78: $89
	ld   a, b                                        ; $6b79: $78
	ld   a, b                                        ; $6b7a: $78
	adc  b                                           ; $6b7b: $88
	add  a                                           ; $6b7c: $87
	adc  b                                           ; $6b7d: $88
	sub  a                                           ; $6b7e: $97
	sbc  b                                           ; $6b7f: $98
	ld   a, b                                        ; $6b80: $78
	ld   a, c                                        ; $6b81: $79
	ld   a, b                                        ; $6b82: $78
	sub  a                                           ; $6b83: $97
	sub  a                                           ; $6b84: $97
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	ld   a, b                                        ; $6b87: $78
	adc  b                                           ; $6b88: $88
	add  a                                           ; $6b89: $87
	sbc  b                                           ; $6b8a: $98
	adc  c                                           ; $6b8b: $89
	ld   a, c                                        ; $6b8c: $79
	add  a                                           ; $6b8d: $87
	sbc  b                                           ; $6b8e: $98
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  c                                           ; $6b91: $89
	ld   a, b                                        ; $6b92: $78

Call_0c6_6b93:
	add  a                                           ; $6b93: $87
	ld   a, c                                        ; $6b94: $79
	ld   [hl], a                                     ; $6b95: $77
	sub  a                                           ; $6b96: $97
	sub  a                                           ; $6b97: $97
	adc  b                                           ; $6b98: $88
	adc  c                                           ; $6b99: $89
	ld   a, b                                        ; $6b9a: $78
	ld   a, b                                        ; $6b9b: $78
	sbc  b                                           ; $6b9c: $98
	add  a                                           ; $6b9d: $87
	sub  a                                           ; $6b9e: $97
	adc  b                                           ; $6b9f: $88
	ld   a, c                                        ; $6ba0: $79
	ld   a, b                                        ; $6ba1: $78
	add  a                                           ; $6ba2: $87
	sbc  b                                           ; $6ba3: $98
	adc  b                                           ; $6ba4: $88
	sbc  b                                           ; $6ba5: $98
	sub  a                                           ; $6ba6: $97
	adc  c                                           ; $6ba7: $89
	adc  b                                           ; $6ba8: $88
	adc  c                                           ; $6ba9: $89
	ld   a, b                                        ; $6baa: $78
	sbc  b                                           ; $6bab: $98
	adc  b                                           ; $6bac: $88
	adc  b                                           ; $6bad: $88
	adc  b                                           ; $6bae: $88
	ld   a, b                                        ; $6baf: $78
	add  a                                           ; $6bb0: $87
	sub  a                                           ; $6bb1: $97
	adc  b                                           ; $6bb2: $88
	xor  b                                           ; $6bb3: $a8
	ld   a, c                                        ; $6bb4: $79
	ld   l, b                                        ; $6bb5: $68
	adc  b                                           ; $6bb6: $88
	add  a                                           ; $6bb7: $87
	sub  a                                           ; $6bb8: $97
	add  a                                           ; $6bb9: $87
	ld   a, c                                        ; $6bba: $79
	ld   a, b                                        ; $6bbb: $78
	ld   a, b                                        ; $6bbc: $78
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	sub  a                                           ; $6bbf: $97
	sbc  b                                           ; $6bc0: $98
	sbc  c                                           ; $6bc1: $99
	ld   a, b                                        ; $6bc2: $78
	adc  c                                           ; $6bc3: $89
	ld   [hl], a                                     ; $6bc4: $77
	adc  b                                           ; $6bc5: $88
	add  a                                           ; $6bc6: $87
	adc  c                                           ; $6bc7: $89
	ld   a, b                                        ; $6bc8: $78
	ld   a, c                                        ; $6bc9: $79
	ld   [hl], a                                     ; $6bca: $77
	sub  a                                           ; $6bcb: $97
	adc  b                                           ; $6bcc: $88
	sbc  b                                           ; $6bcd: $98
	adc  c                                           ; $6bce: $89
	adc  b                                           ; $6bcf: $88
	ld   a, b                                        ; $6bd0: $78
	adc  b                                           ; $6bd1: $88
	ld   a, b                                        ; $6bd2: $78
	sub  [hl]                                        ; $6bd3: $96
	adc  b                                           ; $6bd4: $88
	adc  c                                           ; $6bd5: $89
	ld   a, b                                        ; $6bd6: $78
	sbc  c                                           ; $6bd7: $99
	ld   [hl], a                                     ; $6bd8: $77
	sub  a                                           ; $6bd9: $97
	adc  c                                           ; $6bda: $89
	ld   a, c                                        ; $6bdb: $79
	ld   a, c                                        ; $6bdc: $79
	ld   a, b                                        ; $6bdd: $78
	add  [hl]                                        ; $6bde: $86
	adc  c                                           ; $6bdf: $89
	ld   [hl], a                                     ; $6be0: $77
	sbc  b                                           ; $6be1: $98
	ld   a, c                                        ; $6be2: $79
	add  a                                           ; $6be3: $87
	and  a                                           ; $6be4: $a7
	adc  c                                           ; $6be5: $89
	sub  a                                           ; $6be6: $97
	adc  c                                           ; $6be7: $89
	ld   l, b                                        ; $6be8: $68
	sbc  b                                           ; $6be9: $98
	adc  b                                           ; $6bea: $88
	sub  a                                           ; $6beb: $97
	adc  c                                           ; $6bec: $89
	ld   a, c                                        ; $6bed: $79
	add  a                                           ; $6bee: $87
	sbc  b                                           ; $6bef: $98
	add  a                                           ; $6bf0: $87
	adc  c                                           ; $6bf1: $89
	ld   a, c                                        ; $6bf2: $79
	ld   a, b                                        ; $6bf3: $78
	sub  a                                           ; $6bf4: $97
	adc  b                                           ; $6bf5: $88
	add  a                                           ; $6bf6: $87
	adc  c                                           ; $6bf7: $89
	ld   a, b                                        ; $6bf8: $78
	adc  b                                           ; $6bf9: $88
	adc  b                                           ; $6bfa: $88
	adc  b                                           ; $6bfb: $88
	sub  a                                           ; $6bfc: $97
	adc  c                                           ; $6bfd: $89
	add  a                                           ; $6bfe: $87
	ld   a, c                                        ; $6bff: $79
	ld   l, b                                        ; $6c00: $68
	sub  [hl]                                        ; $6c01: $96
	adc  b                                           ; $6c02: $88
	add  a                                           ; $6c03: $87
	sbc  c                                           ; $6c04: $99
	ld   l, c                                        ; $6c05: $69
	add  [hl]                                        ; $6c06: $86
	sbc  b                                           ; $6c07: $98
	ld   [hl], a                                     ; $6c08: $77
	sub  a                                           ; $6c09: $97
	ld   a, b                                        ; $6c0a: $78
	ld   [hl], a                                     ; $6c0b: $77
	adc  c                                           ; $6c0c: $89
	ld   a, c                                        ; $6c0d: $79
	sub  [hl]                                        ; $6c0e: $96
	ld   a, d                                        ; $6c0f: $7a
	ld   a, b                                        ; $6c10: $78
	sbc  b                                           ; $6c11: $98
	ld   a, b                                        ; $6c12: $78
	sub  a                                           ; $6c13: $97
	sbc  c                                           ; $6c14: $99
	ld   [hl], a                                     ; $6c15: $77
	sbc  c                                           ; $6c16: $99
	ld   l, c                                        ; $6c17: $69
	sub  a                                           ; $6c18: $97
	sub  a                                           ; $6c19: $97
	adc  b                                           ; $6c1a: $88
	ld   a, c                                        ; $6c1b: $79
	ld   a, c                                        ; $6c1c: $79
	ld   a, b                                        ; $6c1d: $78
	adc  b                                           ; $6c1e: $88
	sub  a                                           ; $6c1f: $97
	sbc  c                                           ; $6c20: $99
	ld   [hl], a                                     ; $6c21: $77
	adc  c                                           ; $6c22: $89
	add  a                                           ; $6c23: $87
	sbc  b                                           ; $6c24: $98
	adc  b                                           ; $6c25: $88
	adc  b                                           ; $6c26: $88
	adc  c                                           ; $6c27: $89
	ld   a, b                                        ; $6c28: $78
	add  a                                           ; $6c29: $87
	adc  c                                           ; $6c2a: $89
	adc  b                                           ; $6c2b: $88
	sub  a                                           ; $6c2c: $97
	adc  c                                           ; $6c2d: $89
	adc  b                                           ; $6c2e: $88
	add  a                                           ; $6c2f: $87
	adc  b                                           ; $6c30: $88
	add  a                                           ; $6c31: $87
	sbc  c                                           ; $6c32: $99
	ld   a, b                                        ; $6c33: $78
	sbc  b                                           ; $6c34: $98
	ld   a, b                                        ; $6c35: $78
	adc  b                                           ; $6c36: $88
	sub  a                                           ; $6c37: $97
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	ld   a, b                                        ; $6c3a: $78
	add  [hl]                                        ; $6c3b: $86
	sub  a                                           ; $6c3c: $97
	adc  b                                           ; $6c3d: $88
	ld   a, d                                        ; $6c3e: $7a
	ld   a, b                                        ; $6c3f: $78
	add  a                                           ; $6c40: $87
	sub  a                                           ; $6c41: $97
	sbc  b                                           ; $6c42: $98
	sbc  b                                           ; $6c43: $98
	ld   a, b                                        ; $6c44: $78
	adc  b                                           ; $6c45: $88
	add  a                                           ; $6c46: $87
	add  a                                           ; $6c47: $87
	add  a                                           ; $6c48: $87
	ld   [hl], a                                     ; $6c49: $77
	ld   a, b                                        ; $6c4a: $78
	ld   [hl], a                                     ; $6c4b: $77
	adc  b                                           ; $6c4c: $88
	ld   a, b                                        ; $6c4d: $78
	adc  b                                           ; $6c4e: $88
	adc  b                                           ; $6c4f: $88
	adc  b                                           ; $6c50: $88
	adc  b                                           ; $6c51: $88
	sbc  b                                           ; $6c52: $98
	sbc  b                                           ; $6c53: $98
	sbc  b                                           ; $6c54: $98
	adc  c                                           ; $6c55: $89
	ld   a, b                                        ; $6c56: $78
	adc  c                                           ; $6c57: $89
	ld   [hl], a                                     ; $6c58: $77
	adc  b                                           ; $6c59: $88
	halt                                             ; $6c5a: $76
	ld   [hl], a                                     ; $6c5b: $77
	ld   [hl], a                                     ; $6c5c: $77
	ld   [hl], a                                     ; $6c5d: $77
	ld   [hl], a                                     ; $6c5e: $77
	halt                                             ; $6c5f: $76
	ld   [hl], a                                     ; $6c60: $77
	ld   a, b                                        ; $6c61: $78
	adc  c                                           ; $6c62: $89
	sbc  d                                           ; $6c63: $9a
	xor  c                                           ; $6c64: $a9
	cp   d                                           ; $6c65: $ba
	cp   d                                           ; $6c66: $ba
	xor  c                                           ; $6c67: $a9
	xor  d                                           ; $6c68: $aa
	sbc  c                                           ; $6c69: $99
	sub  a                                           ; $6c6a: $97
	ld   h, l                                        ; $6c6b: $65
	ld   d, h                                        ; $6c6c: $54
	ld   d, h                                        ; $6c6d: $54
	inc  b                                           ; $6c6e: $04
	ld   b, c                                        ; $6c6f: $41
	inc  de                                          ; $6c70: $13
	ld   h, h                                        ; $6c71: $64
	ld   l, c                                        ; $6c72: $69
	sbc  h                                           ; $6c73: $9c
	cp   l                                           ; $6c74: $bd
	rst  JumpTable                                         ; $6c75: $df
	db   $ed                                         ; $6c76: $ed
	rst  $38                                         ; $6c77: $ff
	call c, $aacc                                    ; $6c78: $dc $cc $aa
	adc  c                                           ; $6c7b: $89
	add  l                                           ; $6c7c: $85
	ld   b, e                                        ; $6c7d: $43
	daa                                              ; $6c7e: $27
	ld   b, c                                        ; $6c7f: $41
	ld   [hl], $11                                   ; $6c80: $36 $11
	rla                                              ; $6c82: $17
	inc  de                                          ; $6c83: $13
	add  a                                           ; $6c84: $87
	jp   c, $ffce                                    ; $6c85: $da $ce $ff

	xor  a                                           ; $6c88: $af
	cp   $bb                                         ; $6c89: $fe $bb
	jp   hl                                          ; $6c8b: $e9


	xor  d                                           ; $6c8c: $aa
	xor  h                                           ; $6c8d: $ac
	ld   l, b                                        ; $6c8e: $68
	ld   h, l                                        ; $6c8f: $65
	ld   sp, $1396                                   ; $6c90: $31 $96 $13
	ld   h, c                                        ; $6c93: $61
	ld   de, $3981                                   ; $6c94: $11 $81 $39
	ld   e, a                                        ; $6c97: $5f
	xor  h                                           ; $6c98: $ac
	rst  JumpTable                                         ; $6c99: $df
	ld   sp, hl                                      ; $6c9a: $f9
	rst  $38                                         ; $6c9b: $ff
	db   $fc                                         ; $6c9c: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c9d: $cf
	sbc  h                                           ; $6c9e: $9c
	sbc  c                                           ; $6c9f: $99
	add  $63                                         ; $6ca0: $c6 $63
	ld   h, d                                        ; $6ca2: $62
	rla                                              ; $6ca3: $17
	ld   b, c                                        ; $6ca4: $41
	inc  hl                                          ; $6ca5: $23
	ld   de, $1616                                   ; $6ca6: $11 $16 $16
	sub  a                                           ; $6ca9: $97
	db   $fc                                         ; $6caa: $fc
	db   $fd                                         ; $6cab: $fd
	rst  $38                                         ; $6cac: $ff
	xor  a                                           ; $6cad: $af
	rst  $38                                         ; $6cae: $ff
	db   $dd                                         ; $6caf: $dd
	ld   sp, hl                                      ; $6cb0: $f9
	rst  $10                                         ; $6cb1: $d7
	adc  e                                           ; $6cb2: $8b
	ld   h, l                                        ; $6cb3: $65
	dec  h                                           ; $6cb4: $25
	ld   de, $1263                                   ; $6cb5: $11 $63 $12
	ld   hl, $6111                                   ; $6cb8: $21 $11 $61
	ld   a, c                                        ; $6cbb: $79
	adc  a                                           ; $6cbc: $8f
	rst  JumpTable                                         ; $6cbd: $df
	rst  JumpTable                                         ; $6cbe: $df
	db   $fc                                         ; $6cbf: $fc
	rst  $38                                         ; $6cc0: $ff
	db   $fc                                         ; $6cc1: $fc
	xor  $ad                                         ; $6cc2: $ee $ad
	ld   a, b                                        ; $6cc4: $78
	xor  b                                           ; $6cc5: $a8
	ld   d, d                                        ; $6cc6: $52
	ld   d, c                                        ; $6cc7: $51
	inc  d                                           ; $6cc8: $14
	ld   sp, $1113                                   ; $6cc9: $31 $13 $11
	inc  d                                           ; $6ccc: $14
	dec  d                                           ; $6ccd: $15
	sbc  c                                           ; $6cce: $99
	rst  $38                                         ; $6ccf: $ff
	db   $fd                                         ; $6cd0: $fd
	rst  $38                                         ; $6cd1: $ff
	rst  JumpTable                                         ; $6cd2: $df
	rst  $38                                         ; $6cd3: $ff
	db   $ec                                         ; $6cd4: $ec
	jp   c, $8ac8                                    ; $6cd5: $da $c8 $8a

	sub  [hl]                                        ; $6cd8: $96
	dec  [hl]                                        ; $6cd9: $35
	ld   b, c                                        ; $6cda: $41
	inc  d                                           ; $6cdb: $14
	ld   de, $1111                                   ; $6cdc: $11 $11 $11
	ld   [hl+], a                                    ; $6cdf: $22
	add  hl, sp                                      ; $6ce0: $39
	ld   a, h                                        ; $6ce1: $7c
	xor  $ef                                         ; $6ce2: $ee $ef
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	rst  $38                                         ; $6ce6: $ff
	call $c9bd                                       ; $6ce7: $cd $bd $c9
	cp   e                                           ; $6cea: $bb
	sub  [hl]                                        ; $6ceb: $96
	ld   d, [hl]                                     ; $6cec: $56
	ld   hl, $1142                                   ; $6ced: $21 $42 $11
	ld   de, $2111                                   ; $6cf0: $11 $11 $21
	ld   b, [hl]                                     ; $6cf3: $46
	adc  h                                           ; $6cf4: $8c
	db   $dd                                         ; $6cf5: $dd
	rst  JumpTable                                         ; $6cf6: $df
	rst  $38                                         ; $6cf7: $ff
	cp   $ff                                         ; $6cf8: $fe $ff
	call c, $cbbd                                    ; $6cfa: $dc $bd $cb
	call z, $86b8                                    ; $6cfd: $cc $b8 $86
	ld   b, e                                        ; $6d00: $43
	ld   b, d                                        ; $6d01: $42
	ld   de, $1111                                   ; $6d02: $11 $11 $11
	ld   de, $6923                                   ; $6d05: $11 $23 $69
	sbc  e                                           ; $6d08: $9b
	call $fdff                                       ; $6d09: $cd $ff $fd
	cp   $ee                                         ; $6d0c: $fe $ee
	rst  $28                                         ; $6d0e: $ef
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	db   $ed                                         ; $6d11: $ed
	ret                                              ; $6d12: $c9


	ld   [hl], l                                     ; $6d13: $75
	ld   [hl-], a                                    ; $6d14: $32
	ld   de, $1111                                   ; $6d15: $11 $11 $11
	ld   de, $4711                                   ; $6d18: $11 $11 $47
	ld   a, d                                        ; $6d1b: $7a
	call z, $ffcf                                    ; $6d1c: $cc $cf $ff
	rst  $38                                         ; $6d1f: $ff
	rst  $38                                         ; $6d20: $ff
	rst  $38                                         ; $6d21: $ff
	rst  $38                                         ; $6d22: $ff
	rst  $38                                         ; $6d23: $ff
	rst  $38                                         ; $6d24: $ff
	jp   c, $3186                                    ; $6d25: $da $86 $31

	ld   de, $1111                                   ; $6d28: $11 $11 $11
	ld   de, $1511                                   ; $6d2b: $11 $11 $15
	ld   h, a                                        ; $6d2e: $67
	xor  l                                           ; $6d2f: $ad
	adc  $ff                                         ; $6d30: $ce $ff
	rst  $38                                         ; $6d32: $ff
	rst  $38                                         ; $6d33: $ff
	rst  $38                                         ; $6d34: $ff
	rst  $38                                         ; $6d35: $ff
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	ei                                               ; $6d38: $fb
	sub  a                                           ; $6d39: $97
	ld   b, c                                        ; $6d3a: $41
	ld   de, $1111                                   ; $6d3b: $11 $11 $11
	ld   de, $1311                                   ; $6d3e: $11 $11 $13
	ld   h, [hl]                                     ; $6d41: $66
	adc  l                                           ; $6d42: $8d
	call c, $ffff                                    ; $6d43: $dc $ff $ff
	rst  $38                                         ; $6d46: $ff
	rst  $38                                         ; $6d47: $ff
	rst  $38                                         ; $6d48: $ff
	rst  $38                                         ; $6d49: $ff
	rst  $38                                         ; $6d4a: $ff
	db   $fd                                         ; $6d4b: $fd
	and  a                                           ; $6d4c: $a7
	ld   h, d                                        ; $6d4d: $62
	ld   de, $1111                                   ; $6d4e: $11 $11 $11
	ld   de, $1111                                   ; $6d51: $11 $11 $11
	ld   b, [hl]                                     ; $6d54: $46
	ld   l, d                                        ; $6d55: $6a
	call c, $ffef                                    ; $6d56: $dc $ef $ff
	rst  $38                                         ; $6d59: $ff
	rst  $38                                         ; $6d5a: $ff
	rst  $38                                         ; $6d5b: $ff
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	cp   $b8                                         ; $6d5e: $fe $b8
	ld   h, e                                        ; $6d60: $63
	ld   de, $1111                                   ; $6d61: $11 $11 $11
	ld   de, $1111                                   ; $6d64: $11 $11 $11
	ld   h, $68                                      ; $6d67: $26 $68
	call $ffcf                                       ; $6d69: $cd $cf $ff
	rst  $38                                         ; $6d6c: $ff
	rst  $38                                         ; $6d6d: $ff
	rst  $38                                         ; $6d6e: $ff
	rst  $38                                         ; $6d6f: $ff
	rst  $38                                         ; $6d70: $ff
	cp   $c9                                         ; $6d71: $fe $c9
	ld   [hl], l                                     ; $6d73: $75
	ld   de, $1111                                   ; $6d74: $11 $11 $11
	ld   de, $1111                                   ; $6d77: $11 $11 $11
	inc  d                                           ; $6d7a: $14
	ld   h, a                                        ; $6d7b: $67
	xor  l                                           ; $6d7c: $ad
	sbc  $ff                                         ; $6d7d: $de $ff
	rst  $38                                         ; $6d7f: $ff
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	rst  $38                                         ; $6d84: $ff
	db   $eb                                         ; $6d85: $eb
	add  [hl]                                        ; $6d86: $86
	ld   sp, $1111                                   ; $6d87: $31 $11 $11
	ld   de, $1111                                   ; $6d8a: $11 $11 $11
	ld   [de], a                                     ; $6d8d: $12
	ld   h, [hl]                                     ; $6d8e: $66
	adc  l                                           ; $6d8f: $8d
	db   $ed                                         ; $6d90: $ed
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	rst  $38                                         ; $6d94: $ff
	rst  $38                                         ; $6d95: $ff
	rst  $38                                         ; $6d96: $ff
	rst  $38                                         ; $6d97: $ff
	db   $ed                                         ; $6d98: $ed
	and  a                                           ; $6d99: $a7
	ld   d, d                                        ; $6d9a: $52
	ld   de, $1111                                   ; $6d9b: $11 $11 $11
	ld   de, $1111                                   ; $6d9e: $11 $11 $11
	ld   [hl], $7a                                   ; $6da1: $36 $7a

jr_0c6_6da3:
	xor  $ef                                         ; $6da3: $ee $ef
	rst  $38                                         ; $6da5: $ff
	rst  $38                                         ; $6da6: $ff
	rst  $38                                         ; $6da7: $ff
	rst  $38                                         ; $6da8: $ff
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	cp   $c9                                         ; $6dab: $fe $c9
	ld   h, h                                        ; $6dad: $64
	ld   de, $1111                                   ; $6dae: $11 $11 $11
	ld   de, $1111                                   ; $6db1: $11 $11 $11
	inc  d                                           ; $6db4: $14
	ld   [hl], a                                     ; $6db5: $77
	xor  l                                           ; $6db6: $ad
	xor  $ff                                         ; $6db7: $ee $ff
	rst  $38                                         ; $6db9: $ff
	rst  $38                                         ; $6dba: $ff
	rst  $38                                         ; $6dbb: $ff
	rst  $38                                         ; $6dbc: $ff
	rst  $38                                         ; $6dbd: $ff
	rst  $38                                         ; $6dbe: $ff
	db   $eb                                         ; $6dbf: $eb
	add  [hl]                                        ; $6dc0: $86
	ld   b, c                                        ; $6dc1: $41
	ld   de, $1111                                   ; $6dc2: $11 $11 $11
	ld   de, $1111                                   ; $6dc5: $11 $11 $11
	ld   d, a                                        ; $6dc8: $57
	adc  e                                           ; $6dc9: $8b
	xor  $ff                                         ; $6dca: $ee $ff
	rst  $38                                         ; $6dcc: $ff
	rst  $38                                         ; $6dcd: $ff
	rst  $38                                         ; $6dce: $ff
	rst  $38                                         ; $6dcf: $ff
	rst  $38                                         ; $6dd0: $ff
	rst  $38                                         ; $6dd1: $ff
	cp   $b7                                         ; $6dd2: $fe $b7
	ld   d, e                                        ; $6dd4: $53
	ld   de, $1111                                   ; $6dd5: $11 $11 $11
	ld   de, $1111                                   ; $6dd8: $11 $11 $11
	dec  d                                           ; $6ddb: $15
	ld   a, b                                        ; $6ddc: $78
	cp   [hl]                                        ; $6ddd: $be
	xor  $ff                                         ; $6dde: $ee $ff
	rst  $38                                         ; $6de0: $ff
	rst  $38                                         ; $6de1: $ff
	rst  $38                                         ; $6de2: $ff
	rst  $38                                         ; $6de3: $ff
	rst  $38                                         ; $6de4: $ff
	cp   $dc                                         ; $6de5: $fe $dc
	add  l                                           ; $6de7: $85
	ld   sp, $1111                                   ; $6de8: $31 $11 $11
	ld   de, $1111                                   ; $6deb: $11 $11 $11
	ld   de, $8a58                                   ; $6dee: $11 $58 $8a
	xor  $ef                                         ; $6df1: $ee $ef
	rst  $38                                         ; $6df3: $ff
	rst  $38                                         ; $6df4: $ff
	rst  $38                                         ; $6df5: $ff
	rst  $38                                         ; $6df6: $ff
	rst  $38                                         ; $6df7: $ff
	rst  $38                                         ; $6df8: $ff
	db   $fd                                         ; $6df9: $fd
	cp   b                                           ; $6dfa: $b8
	ld   d, d                                        ; $6dfb: $52
	ld   de, $1111                                   ; $6dfc: $11 $11 $11
	ld   de, $1111                                   ; $6dff: $11 $11 $11
	jr   jr_0c6_6da3                                 ; $6e02: $18 $9f

	rst  JumpTable                                         ; $6e04: $df
	rst  $38                                         ; $6e05: $ff
	rst  $38                                         ; $6e06: $ff
	rst  $38                                         ; $6e07: $ff
	rst  $38                                         ; $6e08: $ff
	rst  $38                                         ; $6e09: $ff
	rst  $38                                         ; $6e0a: $ff
	db   $fc                                         ; $6e0b: $fc
	ret  z                                           ; $6e0c: $c8

	ld   d, d                                        ; $6e0d: $52
	ld   de, $1111                                   ; $6e0e: $11 $11 $11
	ld   de, $5611                                   ; $6e11: $11 $11 $56
	ld   c, [hl]                                     ; $6e14: $4e
	rst  JumpTable                                         ; $6e15: $df
	rst  $38                                         ; $6e16: $ff
	rst  $38                                         ; $6e17: $ff
	rst  $38                                         ; $6e18: $ff
	sbc  [hl]                                        ; $6e19: $9e
	ld   e, e                                        ; $6e1a: $5b
	call nz, $8c95                                   ; $6e1b: $c4 $95 $8c
	cp   h                                           ; $6e1e: $bc
	xor  d                                           ; $6e1f: $aa
	add  $41                                         ; $6e20: $c6 $41
	ld   de, $1111                                   ; $6e22: $11 $11 $11
	ld   de, $bb5a                                   ; $6e25: $11 $5a $bb
	rst  $38                                         ; $6e28: $ff
	rst  $38                                         ; $6e29: $ff
	rst  $38                                         ; $6e2a: $ff
	db   $fd                                         ; $6e2b: $fd
	and  h                                           ; $6e2c: $a4
	ld   d, [hl]                                     ; $6e2d: $56
	ld   a, d                                        ; $6e2e: $7a
	sbc  d                                           ; $6e2f: $9a
	call z, $eeff                                    ; $6e30: $cc $ff $ee
	xor  c                                           ; $6e33: $a9
	ld   h, c                                        ; $6e34: $61
	ld   de, $1111                                   ; $6e35: $11 $11 $11
	ld   de, $ff9c                                   ; $6e38: $11 $9c $ff
	rst  $38                                         ; $6e3b: $ff
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	or   [hl]                                        ; $6e3e: $b6
	ld   d, e                                        ; $6e3f: $53
	inc  hl                                          ; $6e40: $23
	ld   e, e                                        ; $6e41: $5b
	rst  $38                                         ; $6e42: $ff
	db   $ec                                         ; $6e43: $ec
	rst  $38                                         ; $6e44: $ff
	db   $fd                                         ; $6e45: $fd
	add  l                                           ; $6e46: $85
	ld   de, $1111                                   ; $6e47: $11 $11 $11
	ld   de, $df17                                   ; $6e4a: $11 $17 $df
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	ei                                               ; $6e50: $fb
	ld   hl, $3511                                   ; $6e51: $21 $11 $35
	cp   a                                           ; $6e54: $bf
	rst  $38                                         ; $6e55: $ff
	rst  $38                                         ; $6e56: $ff
	rst  $38                                         ; $6e57: $ff
	ld   [$1151], a                                  ; $6e58: $ea $51 $11
	ld   de, $1313                                   ; $6e5b: $11 $13 $13
	sbc  [hl]                                        ; $6e5e: $9e
	rst  $38                                         ; $6e5f: $ff
	rst  $38                                         ; $6e60: $ff
	rst  $38                                         ; $6e61: $ff
	rst  $38                                         ; $6e62: $ff
	sub  c                                           ; $6e63: $91
	ld   de, $7f13                                   ; $6e64: $11 $13 $7f
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	rst  $38                                         ; $6e69: $ff
	db   $fc                                         ; $6e6a: $fc
	sub  d                                           ; $6e6b: $92
	ld   de, $1111                                   ; $6e6c: $11 $11 $11
	ld   [hl], d                                     ; $6e6f: $72
	cp   h                                           ; $6e70: $bc
	rst  $38                                         ; $6e71: $ff
	rst  $38                                         ; $6e72: $ff
	rst  $38                                         ; $6e73: $ff
	db   $fd                                         ; $6e74: $fd
	and  l                                           ; $6e75: $a5
	ld   de, $7e11                                   ; $6e76: $11 $11 $7e
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	cp   $a3                                         ; $6e7c: $fe $a3
	ld   de, $1111                                   ; $6e7e: $11 $11 $11
	xor  b                                           ; $6e81: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e82: $cf
	rst  $38                                         ; $6e83: $ff
	rst  $38                                         ; $6e84: $ff
	rst  $38                                         ; $6e85: $ff
	jp   z, $1179                                    ; $6e86: $ca $79 $11

	ld   de, $ff4f                                   ; $6e89: $11 $4f $ff
	rst  $38                                         ; $6e8c: $ff
	rst  $38                                         ; $6e8d: $ff
	db   $fd                                         ; $6e8e: $fd
	ld   d, c                                        ; $6e8f: $51
	ld   de, $1111                                   ; $6e90: $11 $11 $11
	xor  h                                           ; $6e93: $ac
	rst  $38                                         ; $6e94: $ff
	rst  $38                                         ; $6e95: $ff
	rst  $38                                         ; $6e96: $ff
	cp   $a1                                         ; $6e97: $fe $a1
	inc  hl                                          ; $6e99: $23
	ld   de, $9f11                                   ; $6e9a: $11 $11 $9f
	rst  $38                                         ; $6e9d: $ff
	rst  $38                                         ; $6e9e: $ff
	xor  l                                           ; $6e9f: $ad
	ld   [$1111], a                                  ; $6ea0: $ea $11 $11
	ld   de, $9f1b                                   ; $6ea3: $11 $1b $9f
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	ei                                               ; $6ea9: $fb
	ld   de, $1111                                   ; $6eaa: $11 $11 $11
	ld   a, [de]                                     ; $6ead: $1a
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	ld   sp, hl                                      ; $6eb0: $f9
	cp   d                                           ; $6eb1: $ba
	ld   d, c                                        ; $6eb2: $51
	ld   de, $1911                                   ; $6eb3: $11 $11 $19
	xor  a                                           ; $6eb6: $af
	rst  $38                                         ; $6eb7: $ff
	rst  $38                                         ; $6eb8: $ff
	rst  $38                                         ; $6eb9: $ff
	cp   $31                                         ; $6eba: $fe $31
	ld   sp, $1411                                   ; $6ebc: $31 $11 $14
	rst  $38                                         ; $6ebf: $ff
	rst  $38                                         ; $6ec0: $ff
	ld   a, [$637a]                                  ; $6ec1: $fa $7a $63
	ld   de, $1e11                                   ; $6ec4: $11 $11 $1e
	adc  a                                           ; $6ec7: $8f
	cp   $ff                                         ; $6ec8: $fe $ff
	rst  $38                                         ; $6eca: $ff
	db   $fd                                         ; $6ecb: $fd
	ld   de, $1171                                   ; $6ecc: $11 $71 $11
	rla                                              ; $6ecf: $17
	rst  $38                                         ; $6ed0: $ff
	rst  $38                                         ; $6ed1: $ff
	push af                                          ; $6ed2: $f5
	ld   l, d                                        ; $6ed3: $6a
	ld   h, c                                        ; $6ed4: $61
	ld   de, $ad11                                   ; $6ed5: $11 $11 $ad
	rst  $38                                         ; $6ed8: $ff
	cp   a                                           ; $6ed9: $bf
	rst  $38                                         ; $6eda: $ff
	rst  $38                                         ; $6edb: $ff
	pop  af                                          ; $6edc: $f1
	ld   a, [de]                                     ; $6edd: $1a
	ld   de, $1f11                                   ; $6ede: $11 $11 $1f
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	ld   de, $1199                                   ; $6ee3: $11 $99 $11
	ld   de, $ff1d                                   ; $6ee6: $11 $1d $ff
	rst  $30                                         ; $6ee9: $f7
	rst  $38                                         ; $6eea: $ff
	rst  $38                                         ; $6eeb: $ff
	rst  $30                                         ; $6eec: $f7
	inc  d                                           ; $6eed: $14
	ld   d, h                                        ; $6eee: $54
	ld   de, rAUD1LEN                                   ; $6eef: $11 $11 $ff
	rst  $38                                         ; $6ef2: $ff
	ld   d, c                                        ; $6ef3: $51
	rla                                              ; $6ef4: $17
	ld   d, c                                        ; $6ef5: $51
	ld   de, $ff16                                   ; $6ef6: $11 $16 $ff
	ld   a, [$ffff]                                  ; $6ef9: $fa $ff $ff
	or   $14                                         ; $6efc: $f6 $14
	ld   d, $41                                      ; $6efe: $16 $41
	ld   de, $ffff                                   ; $6f00: $11 $ff $ff
	ld   sp, $1111                                   ; $6f03: $31 $11 $11
	ld   de, $ff18                                   ; $6f06: $11 $18 $ff
	rst  $38                                         ; $6f09: $ff
	rst  $38                                         ; $6f0a: $ff
	rst  $38                                         ; $6f0b: $ff
	sub  $81                                         ; $6f0c: $d6 $81
	inc  sp                                          ; $6f0e: $33
	ld   de, $ef3b                                   ; $6f0f: $11 $3b $ef
	or   $11                                         ; $6f12: $f6 $11
	ld   de, $3311                                   ; $6f14: $11 $11 $33
	rst  $38                                         ; $6f17: $ff
	rst  $38                                         ; $6f18: $ff
	rst  $38                                         ; $6f19: $ff
	rst  $38                                         ; $6f1a: $ff
	rst  $30                                         ; $6f1b: $f7
	cp   b                                           ; $6f1c: $b8
	ld   b, l                                        ; $6f1d: $45
	ld   de, $bf16                                   ; $6f1e: $11 $16 $bf
	ld   hl, sp+$11                                  ; $6f21: $f8 $11
	ld   de, $2211                                   ; $6f23: $11 $11 $22
	rst  $38                                         ; $6f26: $ff
	rst  $38                                         ; $6f27: $ff
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	ld   a, [$54f8]                                  ; $6f2a: $fa $f8 $54
	ld   de, $8b16                                   ; $6f2d: $11 $16 $8b
	push bc                                          ; $6f30: $c5
	ld   de, $1411                                   ; $6f31: $11 $11 $14
	rlca                                             ; $6f34: $07
	db   $fd                                         ; $6f35: $fd
	rst  $38                                         ; $6f36: $ff
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	cp   a                                           ; $6f39: $bf
	ld   a, [$1171]                                  ; $6f3a: $fa $71 $11
	inc  h                                           ; $6f3d: $24
	ld   d, [hl]                                     ; $6f3e: $56
	ld   hl, $1111                                   ; $6f3f: $21 $11 $11
	ld   [hl], h                                     ; $6f42: $74
	adc  $df                                         ; $6f43: $ce $df
	rst  $38                                         ; $6f45: $ff
	rst  $38                                         ; $6f46: $ff
	db   $fc                                         ; $6f47: $fc
	rst  $38                                         ; $6f48: $ff
	ld   a, [$1262]                                  ; $6f49: $fa $62 $12
	ld   de, $1111                                   ; $6f4c: $11 $11 $11
	ld   de, $ffcb                                   ; $6f4f: $11 $cb $ff
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	cp   $b7                                         ; $6f54: $fe $b7
	xor  $ca                                         ; $6f56: $ee $ca
	ld   h, h                                        ; $6f58: $64
	ld   b, [hl]                                     ; $6f59: $46
	ld   sp, $1111                                   ; $6f5a: $31 $11 $11
	inc  d                                           ; $6f5d: $14
	adc  c                                           ; $6f5e: $89
	rst  $38                                         ; $6f5f: $ff
	rst  $38                                         ; $6f60: $ff
	rst  $38                                         ; $6f61: $ff
	rst  $38                                         ; $6f62: $ff
	xor  h                                           ; $6f63: $ac
	db   $ec                                         ; $6f64: $ec
	or   [hl]                                        ; $6f65: $b6
	ld   d, c                                        ; $6f66: $51
	ld   [hl-], a                                    ; $6f67: $32
	ld   de, $1111                                   ; $6f68: $11 $11 $11
	ld   a, c                                        ; $6f6b: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f6c: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f6d: $cf
	rst  $38                                         ; $6f6e: $ff
	rst  $38                                         ; $6f6f: $ff
	db   $eb                                         ; $6f70: $eb
	cp   $dc                                         ; $6f71: $fe $dc
	ld   b, l                                        ; $6f73: $45
	inc  sp                                          ; $6f74: $33
	ld   de, $1111                                   ; $6f75: $11 $11 $11
	scf                                              ; $6f78: $37
	adc  a                                           ; $6f79: $8f
	adc  $ff                                         ; $6f7a: $ce $ff
	rst  $38                                         ; $6f7c: $ff
	ei                                               ; $6f7d: $fb
	rst  $38                                         ; $6f7e: $ff
	call $6467                                       ; $6f7f: $cd $67 $64
	ld   hl, $1111                                   ; $6f82: $21 $11 $11
	ld   d, $8d                                      ; $6f85: $16 $8d
	adc  $ff                                         ; $6f87: $ce $ff
	db   $fd                                         ; $6f89: $fd
	db   $ec                                         ; $6f8a: $ec
	rst  JumpTable                                         ; $6f8b: $df
	cp   a                                           ; $6f8c: $bf
	ld   a, d                                        ; $6f8d: $7a
	ld   [hl], e                                     ; $6f8e: $73
	ld   b, c                                        ; $6f8f: $41
	ld   de, $4711                                   ; $6f90: $11 $11 $47
	ld   l, h                                        ; $6f93: $6c
	cp   h                                           ; $6f94: $bc
	rst  $38                                         ; $6f95: $ff
	rst  $28                                         ; $6f96: $ef
	ld   a, [$dcfd]                                  ; $6f97: $fa $fd $dc
	sbc  c                                           ; $6f9a: $99
	ld   b, e                                        ; $6f9b: $43
	ld   de, $1111                                   ; $6f9c: $11 $11 $11
	ld   h, l                                        ; $6f9f: $65
	sbc  h                                           ; $6fa0: $9c
	cp   [hl]                                        ; $6fa1: $be
	db   $fc                                         ; $6fa2: $fc
	adc  $cf                                         ; $6fa3: $ce $cf
	db   $eb                                         ; $6fa5: $eb
	ret  z                                           ; $6fa6: $c8

	xor  c                                           ; $6fa7: $a9
	ld   h, h                                        ; $6fa8: $64
	ld   de, $1411                                   ; $6fa9: $11 $11 $14
	inc  sp                                          ; $6fac: $33
	adc  d                                           ; $6fad: $8a
	cp   e                                           ; $6fae: $bb
	cp   h                                           ; $6faf: $bc
	rst  $38                                         ; $6fb0: $ff
	db   $ed                                         ; $6fb1: $ed
	db   $ed                                         ; $6fb2: $ed
	cp   d                                           ; $6fb3: $ba
	ld   h, l                                        ; $6fb4: $65
	ld   b, h                                        ; $6fb5: $44
	ld   hl, $4611                                   ; $6fb6: $21 $11 $46
	ld   h, [hl]                                     ; $6fb9: $66
	ld   a, c                                        ; $6fba: $79
	xor  [hl]                                        ; $6fbb: $ae
	call z, $efcb                                    ; $6fbc: $cc $cb $ef
	jp   z, $87a6                                    ; $6fbf: $ca $a6 $87

	ld   d, h                                        ; $6fc2: $54
	inc  sp                                          ; $6fc3: $33
	inc  sp                                          ; $6fc4: $33
	inc  sp                                          ; $6fc5: $33
	ld   h, [hl]                                     ; $6fc6: $66
	ld   h, a                                        ; $6fc7: $67
	sbc  l                                           ; $6fc8: $9d
	db   $dd                                         ; $6fc9: $dd
	db   $dd                                         ; $6fca: $dd
	xor  $da                                         ; $6fcb: $ee $da
	sbc  b                                           ; $6fcd: $98
	ld   d, [hl]                                     ; $6fce: $56
	ld   b, e                                        ; $6fcf: $43
	ld   d, d                                        ; $6fd0: $52
	dec  h                                           ; $6fd1: $25
	ld   d, [hl]                                     ; $6fd2: $56
	ld   h, a                                        ; $6fd3: $67
	adc  c                                           ; $6fd4: $89
	sbc  c                                           ; $6fd5: $99
	cp   b                                           ; $6fd6: $b8
	cp   a                                           ; $6fd7: $bf
	call $b9b8                                       ; $6fd8: $cd $b8 $b9
	ld   a, b                                        ; $6fdb: $78
	ld   h, e                                        ; $6fdc: $63
	ld   d, [hl]                                     ; $6fdd: $56
	dec  [hl]                                        ; $6fde: $35
	ld   b, h                                        ; $6fdf: $44
	halt                                             ; $6fe0: $76
	ld   a, b                                        ; $6fe1: $78
	ld   [hl], a                                     ; $6fe2: $77
	sbc  c                                           ; $6fe3: $99
	sbc  h                                           ; $6fe4: $9c
	xor  e                                           ; $6fe5: $ab
	res  5, d                                        ; $6fe6: $cb $aa
	add  a                                           ; $6fe8: $87
	sub  [hl]                                        ; $6fe9: $96
	ld   [hl], l                                     ; $6fea: $75
	halt                                             ; $6feb: $76
	ld   d, a                                        ; $6fec: $57
	ld   d, a                                        ; $6fed: $57
	ld   l, c                                        ; $6fee: $69
	ld   [hl], a                                     ; $6fef: $77
	adc  b                                           ; $6ff0: $88
	adc  d                                           ; $6ff1: $8a
	sbc  b                                           ; $6ff2: $98
	sbc  b                                           ; $6ff3: $98
	sbc  d                                           ; $6ff4: $9a
	xor  b                                           ; $6ff5: $a8
	sbc  d                                           ; $6ff6: $9a
	sub  a                                           ; $6ff7: $97
	ld   [hl], a                                     ; $6ff8: $77
	add  [hl]                                        ; $6ff9: $86
	ld   l, b                                        ; $6ffa: $68
	ld   [hl], a                                     ; $6ffb: $77
	ld   l, b                                        ; $6ffc: $68
	adc  c                                           ; $6ffd: $89
	adc  b                                           ; $6ffe: $88
	sbc  e                                           ; $6fff: $9b
	adc  b                                           ; $7000: $88
	sbc  b                                           ; $7001: $98
	sbc  c                                           ; $7002: $99
	add  a                                           ; $7003: $87
	add  a                                           ; $7004: $87
	ld   a, b                                        ; $7005: $78
	sbc  b                                           ; $7006: $98
	adc  c                                           ; $7007: $89
	ld   [hl], a                                     ; $7008: $77
	ld   l, b                                        ; $7009: $68
	add  a                                           ; $700a: $87
	sub  a                                           ; $700b: $97
	adc  c                                           ; $700c: $89
	sbc  c                                           ; $700d: $99
	sbc  c                                           ; $700e: $99
	sbc  b                                           ; $700f: $98
	adc  c                                           ; $7010: $89
	add  a                                           ; $7011: $87
	sbc  b                                           ; $7012: $98
	ld   a, c                                        ; $7013: $79
	adc  b                                           ; $7014: $88
	adc  c                                           ; $7015: $89
	sbc  b                                           ; $7016: $98
	sbc  c                                           ; $7017: $99
	sbc  b                                           ; $7018: $98
	adc  b                                           ; $7019: $88
	adc  c                                           ; $701a: $89
	adc  b                                           ; $701b: $88
	adc  c                                           ; $701c: $89
	adc  c                                           ; $701d: $89
	adc  b                                           ; $701e: $88
	ld   [hl], a                                     ; $701f: $77
	sbc  c                                           ; $7020: $99
	adc  c                                           ; $7021: $89
	adc  b                                           ; $7022: $88
	sbc  c                                           ; $7023: $99
	ld   a, b                                        ; $7024: $78
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	xor  c                                           ; $7027: $a9
	sbc  c                                           ; $7028: $99
	sbc  b                                           ; $7029: $98
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	ld   [hl], a                                     ; $702c: $77
	ld   [hl], a                                     ; $702d: $77
	adc  b                                           ; $702e: $88
	sbc  b                                           ; $702f: $98
	sbc  b                                           ; $7030: $98
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  c                                           ; $7033: $89
	sbc  b                                           ; $7034: $98
	adc  b                                           ; $7035: $88
	adc  c                                           ; $7036: $89
	adc  b                                           ; $7037: $88
	adc  c                                           ; $7038: $89
	sbc  b                                           ; $7039: $98
	adc  b                                           ; $703a: $88
	sbc  c                                           ; $703b: $99
	ld   [hl], a                                     ; $703c: $77
	ld   [hl], a                                     ; $703d: $77
	adc  b                                           ; $703e: $88
	adc  b                                           ; $703f: $88
	adc  b                                           ; $7040: $88
	ld   a, c                                        ; $7041: $79
	adc  b                                           ; $7042: $88
	sbc  b                                           ; $7043: $98
	adc  b                                           ; $7044: $88
	adc  b                                           ; $7045: $88
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	sbc  b                                           ; $7049: $98
	ld   a, b                                        ; $704a: $78
	ld   a, b                                        ; $704b: $78
	adc  b                                           ; $704c: $88
	adc  b                                           ; $704d: $88
	ld   a, b                                        ; $704e: $78
	adc  b                                           ; $704f: $88
	ld   a, b                                        ; $7050: $78
	add  a                                           ; $7051: $87
	adc  c                                           ; $7052: $89
	sbc  c                                           ; $7053: $99
	add  a                                           ; $7054: $87
	adc  c                                           ; $7055: $89
	adc  c                                           ; $7056: $89
	ld   a, b                                        ; $7057: $78
	add  a                                           ; $7058: $87
	ld   a, b                                        ; $7059: $78
	add  a                                           ; $705a: $87
	adc  b                                           ; $705b: $88
	ld   [hl], a                                     ; $705c: $77
	ld   a, b                                        ; $705d: $78
	adc  b                                           ; $705e: $88
	adc  b                                           ; $705f: $88
	ld   a, c                                        ; $7060: $79
	ld   a, b                                        ; $7061: $78
	adc  b                                           ; $7062: $88
	sbc  b                                           ; $7063: $98
	adc  b                                           ; $7064: $88
	adc  b                                           ; $7065: $88
	sbc  b                                           ; $7066: $98
	ld   a, b                                        ; $7067: $78
	add  a                                           ; $7068: $87
	ld   a, b                                        ; $7069: $78
	ld   [hl], a                                     ; $706a: $77
	adc  b                                           ; $706b: $88
	adc  b                                           ; $706c: $88
	adc  b                                           ; $706d: $88
	adc  b                                           ; $706e: $88
	adc  b                                           ; $706f: $88
	adc  b                                           ; $7070: $88
	adc  b                                           ; $7071: $88
	adc  b                                           ; $7072: $88
	adc  b                                           ; $7073: $88
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	ld   a, b                                        ; $7076: $78
	adc  b                                           ; $7077: $88
	adc  b                                           ; $7078: $88
	add  a                                           ; $7079: $87
	adc  b                                           ; $707a: $88
	adc  b                                           ; $707b: $88
	adc  b                                           ; $707c: $88
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	adc  b                                           ; $7081: $88
	add  a                                           ; $7082: $87
	ld   [hl], a                                     ; $7083: $77
	adc  b                                           ; $7084: $88
	add  a                                           ; $7085: $87
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	adc  c                                           ; $7088: $89
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	adc  b                                           ; $708b: $88
	add  a                                           ; $708c: $87
	add  a                                           ; $708d: $87
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	add  a                                           ; $7090: $87
	adc  b                                           ; $7091: $88
	adc  b                                           ; $7092: $88
	adc  b                                           ; $7093: $88
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	ld   a, b                                        ; $7096: $78
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	ld   a, b                                        ; $7099: $78
	sbc  b                                           ; $709a: $98
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	add  a                                           ; $709d: $87
	ld   a, b                                        ; $709e: $78
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	adc  b                                           ; $70a2: $88
	adc  c                                           ; $70a3: $89
	sbc  b                                           ; $70a4: $98
	adc  b                                           ; $70a5: $88
	add  a                                           ; $70a6: $87
	adc  b                                           ; $70a7: $88
	add  a                                           ; $70a8: $87
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	add  a                                           ; $70ab: $87
	adc  b                                           ; $70ac: $88
	ld   a, b                                        ; $70ad: $78
	sbc  c                                           ; $70ae: $99
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	adc  b                                           ; $70b1: $88
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  c                                           ; $70b6: $89
	adc  b                                           ; $70b7: $88
	add  a                                           ; $70b8: $87
	ld   a, b                                        ; $70b9: $78
	ld   [hl], a                                     ; $70ba: $77
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	sbc  c                                           ; $70bd: $99
	sbc  c                                           ; $70be: $99
	adc  b                                           ; $70bf: $88
	adc  b                                           ; $70c0: $88
	adc  b                                           ; $70c1: $88
	adc  b                                           ; $70c2: $88
	adc  b                                           ; $70c3: $88
	adc  b                                           ; $70c4: $88
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	adc  b                                           ; $70c7: $88
	adc  b                                           ; $70c8: $88
	adc  b                                           ; $70c9: $88
	adc  b                                           ; $70ca: $88
	sbc  b                                           ; $70cb: $98
	adc  c                                           ; $70cc: $89
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	ld   a, b                                        ; $70d3: $78
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  c                                           ; $70d6: $89
	sbc  b                                           ; $70d7: $98
	adc  c                                           ; $70d8: $89
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	sbc  b                                           ; $70db: $98
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	ld   a, b                                        ; $70e0: $78
	adc  c                                           ; $70e1: $89
	adc  b                                           ; $70e2: $88
	sbc  b                                           ; $70e3: $98
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	sbc  c                                           ; $70e6: $99
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	ld   a, b                                        ; $70ea: $78
	sbc  b                                           ; $70eb: $98
	sbc  b                                           ; $70ec: $98
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	sbc  b                                           ; $70f0: $98
	sbc  b                                           ; $70f1: $98
	ld   a, c                                        ; $70f2: $79
	adc  b                                           ; $70f3: $88
	sbc  b                                           ; $70f4: $98
	sbc  b                                           ; $70f5: $98
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	add  a                                           ; $70fb: $87
	adc  b                                           ; $70fc: $88
	adc  c                                           ; $70fd: $89
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	sbc  b                                           ; $7100: $98
	adc  b                                           ; $7101: $88
	sbc  b                                           ; $7102: $98
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	ld   a, b                                        ; $710b: $78
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	sbc  b                                           ; $710e: $98
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  c                                           ; $7114: $89
	adc  b                                           ; $7115: $88
	adc  c                                           ; $7116: $89
	adc  b                                           ; $7117: $88
	adc  b                                           ; $7118: $88
	adc  b                                           ; $7119: $88
	adc  b                                           ; $711a: $88
	adc  b                                           ; $711b: $88
	adc  b                                           ; $711c: $88
	adc  b                                           ; $711d: $88
	adc  b                                           ; $711e: $88
	adc  b                                           ; $711f: $88
	adc  b                                           ; $7120: $88
	adc  b                                           ; $7121: $88
	adc  b                                           ; $7122: $88
	adc  b                                           ; $7123: $88
	adc  b                                           ; $7124: $88
	adc  b                                           ; $7125: $88
	add  a                                           ; $7126: $87
	adc  b                                           ; $7127: $88
	adc  b                                           ; $7128: $88
	adc  b                                           ; $7129: $88
	adc  b                                           ; $712a: $88
	adc  b                                           ; $712b: $88
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	adc  c                                           ; $7132: $89
	adc  b                                           ; $7133: $88
	adc  b                                           ; $7134: $88
	adc  b                                           ; $7135: $88
	adc  b                                           ; $7136: $88
	adc  b                                           ; $7137: $88
	adc  b                                           ; $7138: $88
	adc  b                                           ; $7139: $88
	adc  b                                           ; $713a: $88
	adc  b                                           ; $713b: $88
	adc  b                                           ; $713c: $88
	adc  b                                           ; $713d: $88
	adc  b                                           ; $713e: $88
	adc  b                                           ; $713f: $88
	adc  b                                           ; $7140: $88
	adc  b                                           ; $7141: $88
	ld   a, b                                        ; $7142: $78
	sub  a                                           ; $7143: $97
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	ld   a, b                                        ; $7149: $78
	sbc  b                                           ; $714a: $98
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	ld   a, b                                        ; $714d: $78
	adc  b                                           ; $714e: $88
	sbc  c                                           ; $714f: $99
	adc  b                                           ; $7150: $88
	sbc  b                                           ; $7151: $98
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	add  a                                           ; $7157: $87
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  c                                           ; $715c: $89
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  c                                           ; $7163: $89
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  c                                           ; $7167: $89
	adc  b                                           ; $7168: $88
	sbc  b                                           ; $7169: $98
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  c                                           ; $716f: $89
	ld   a, b                                        ; $7170: $78
	sbc  b                                           ; $7171: $98
	adc  b                                           ; $7172: $88
	adc  c                                           ; $7173: $89
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	sbc  b                                           ; $717a: $98
	adc  b                                           ; $717b: $88
	adc  c                                           ; $717c: $89
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	ld   a, c                                        ; $7180: $79
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	sbc  b                                           ; $7184: $98
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	sbc  b                                           ; $7189: $98
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  c                                           ; $718f: $89
	sbc  b                                           ; $7190: $98
	adc  b                                           ; $7191: $88
	sbc  b                                           ; $7192: $98
	adc  b                                           ; $7193: $88
	adc  c                                           ; $7194: $89
	adc  b                                           ; $7195: $88
	sbc  b                                           ; $7196: $98
	adc  c                                           ; $7197: $89
	adc  b                                           ; $7198: $88
	adc  c                                           ; $7199: $89
	adc  b                                           ; $719a: $88
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	add  a                                           ; $719e: $87
	adc  b                                           ; $719f: $88
	sbc  c                                           ; $71a0: $99
	adc  b                                           ; $71a1: $88
	adc  b                                           ; $71a2: $88
	adc  b                                           ; $71a3: $88
	sbc  b                                           ; $71a4: $98
	adc  b                                           ; $71a5: $88
	add  a                                           ; $71a6: $87
	ld   a, c                                        ; $71a7: $79
	adc  b                                           ; $71a8: $88
	adc  b                                           ; $71a9: $88
	adc  c                                           ; $71aa: $89
	adc  b                                           ; $71ab: $88
	sbc  c                                           ; $71ac: $99
	add  a                                           ; $71ad: $87
	sbc  b                                           ; $71ae: $98
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	add  a                                           ; $71b1: $87
	adc  c                                           ; $71b2: $89
	adc  b                                           ; $71b3: $88
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	sbc  b                                           ; $71b7: $98
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	sbc  b                                           ; $71ba: $98
	adc  b                                           ; $71bb: $88
	adc  b                                           ; $71bc: $88
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	adc  b                                           ; $71c0: $88
	ld   a, c                                        ; $71c1: $79
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	adc  b                                           ; $71c7: $88
	adc  b                                           ; $71c8: $88
	adc  c                                           ; $71c9: $89
	ld   a, b                                        ; $71ca: $78
	adc  c                                           ; $71cb: $89
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	sbc  b                                           ; $71cf: $98
	adc  c                                           ; $71d0: $89
	adc  b                                           ; $71d1: $88
	adc  c                                           ; $71d2: $89
	add  a                                           ; $71d3: $87
	adc  b                                           ; $71d4: $88
	adc  b                                           ; $71d5: $88
	add  a                                           ; $71d6: $87
	ld   a, b                                        ; $71d7: $78
	sbc  b                                           ; $71d8: $98
	adc  b                                           ; $71d9: $88
	adc  b                                           ; $71da: $88
	sbc  c                                           ; $71db: $99
	ld   a, b                                        ; $71dc: $78
	sbc  b                                           ; $71dd: $98
	add  a                                           ; $71de: $87
	sbc  b                                           ; $71df: $98
	adc  b                                           ; $71e0: $88
	add  a                                           ; $71e1: $87
	adc  b                                           ; $71e2: $88
	adc  b                                           ; $71e3: $88
	adc  b                                           ; $71e4: $88
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	adc  c                                           ; $71e7: $89
	add  a                                           ; $71e8: $87
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	add  a                                           ; $71eb: $87
	ld   a, b                                        ; $71ec: $78
	sbc  c                                           ; $71ed: $99
	ld   a, c                                        ; $71ee: $79
	sbc  c                                           ; $71ef: $99
	adc  b                                           ; $71f0: $88
	adc  c                                           ; $71f1: $89
	adc  c                                           ; $71f2: $89
	adc  b                                           ; $71f3: $88
	ld   [hl], a                                     ; $71f4: $77
	adc  b                                           ; $71f5: $88
	add  a                                           ; $71f6: $87
	ld   a, b                                        ; $71f7: $78
	adc  b                                           ; $71f8: $88
	adc  b                                           ; $71f9: $88
	sbc  b                                           ; $71fa: $98
	ld   a, b                                        ; $71fb: $78
	sbc  b                                           ; $71fc: $98
	sbc  c                                           ; $71fd: $99
	adc  b                                           ; $71fe: $88
	add  a                                           ; $71ff: $87
	ld   [hl], a                                     ; $7200: $77
	adc  b                                           ; $7201: $88
	sbc  c                                           ; $7202: $99
	adc  b                                           ; $7203: $88
	adc  b                                           ; $7204: $88
	ld   [hl], a                                     ; $7205: $77
	adc  c                                           ; $7206: $89
	adc  b                                           ; $7207: $88
	adc  c                                           ; $7208: $89
	adc  b                                           ; $7209: $88
	add  a                                           ; $720a: $87
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	adc  b                                           ; $720e: $88
	adc  b                                           ; $720f: $88
	adc  c                                           ; $7210: $89
	sub  a                                           ; $7211: $97
	adc  b                                           ; $7212: $88
	ld   a, b                                        ; $7213: $78
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  c                                           ; $7216: $89
	sub  a                                           ; $7217: $97
	adc  b                                           ; $7218: $88
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	ld   a, c                                        ; $721b: $79
	sbc  b                                           ; $721c: $98
	add  a                                           ; $721d: $87
	adc  b                                           ; $721e: $88
	add  a                                           ; $721f: $87
	adc  c                                           ; $7220: $89
	adc  b                                           ; $7221: $88
	add  a                                           ; $7222: $87
	adc  b                                           ; $7223: $88
	add  a                                           ; $7224: $87
	adc  b                                           ; $7225: $88
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	ld   [hl], a                                     ; $7228: $77
	ld   a, b                                        ; $7229: $78
	add  a                                           ; $722a: $87
	adc  c                                           ; $722b: $89
	add  a                                           ; $722c: $87
	adc  b                                           ; $722d: $88
	adc  b                                           ; $722e: $88
	adc  c                                           ; $722f: $89
	sbc  b                                           ; $7230: $98
	adc  b                                           ; $7231: $88
	sbc  b                                           ; $7232: $98
	adc  b                                           ; $7233: $88
	adc  c                                           ; $7234: $89
	ld   a, b                                        ; $7235: $78
	adc  b                                           ; $7236: $88
	ld   [hl], a                                     ; $7237: $77
	adc  b                                           ; $7238: $88
	add  a                                           ; $7239: $87
	add  a                                           ; $723a: $87
	ld   [hl], a                                     ; $723b: $77
	ld   a, c                                        ; $723c: $79
	adc  b                                           ; $723d: $88
	adc  b                                           ; $723e: $88
	sbc  c                                           ; $723f: $99
	adc  b                                           ; $7240: $88
	sbc  c                                           ; $7241: $99
	xor  c                                           ; $7242: $a9
	adc  c                                           ; $7243: $89
	adc  b                                           ; $7244: $88
	ld   [hl], a                                     ; $7245: $77
	ld   a, c                                        ; $7246: $79
	add  a                                           ; $7247: $87
	ld   [hl], a                                     ; $7248: $77
	halt                                             ; $7249: $76
	halt                                             ; $724a: $76
	ld   [hl], a                                     ; $724b: $77
	ld   a, b                                        ; $724c: $78
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	sbc  c                                           ; $724f: $99
	sbc  c                                           ; $7250: $99
	sbc  d                                           ; $7251: $9a
	xor  d                                           ; $7252: $aa
	sbc  c                                           ; $7253: $99
	xor  b                                           ; $7254: $a8
	adc  c                                           ; $7255: $89
	halt                                             ; $7256: $76
	ld   h, [hl]                                     ; $7257: $66
	ld   d, h                                        ; $7258: $54
	ld   b, [hl]                                     ; $7259: $46
	ld   d, l                                        ; $725a: $55
	ld   d, h                                        ; $725b: $54
	ld   d, [hl]                                     ; $725c: $56
	ld   [hl], a                                     ; $725d: $77
	adc  c                                           ; $725e: $89
	xor  h                                           ; $725f: $ac
	call $dddd                                       ; $7260: $cd $dd $dd
	call z, $b8ba                                    ; $7263: $cc $ba $b8
	ld   h, l                                        ; $7266: $65
	ld   d, a                                        ; $7267: $57
	ld   b, e                                        ; $7268: $43
	ld   hl, $3212                                   ; $7269: $21 $12 $32
	ld   [hl], $8a                                   ; $726c: $36 $8a
	call z, $ffce                                    ; $726e: $cc $ce $ff
	db   $ed                                         ; $7271: $ed
	db   $ed                                         ; $7272: $ed
	db   $db                                         ; $7273: $db
	adc  c                                           ; $7274: $89
	add  a                                           ; $7275: $87
	ld   d, e                                        ; $7276: $53
	halt                                             ; $7277: $76
	ld   b, d                                        ; $7278: $42
	ld   de, $1212                                   ; $7279: $11 $12 $12
	ld   b, [hl]                                     ; $727c: $46
	sbc  d                                           ; $727d: $9a
	set  3, a                                        ; $727e: $cb $df
	rst  $38                                         ; $7280: $ff
	xor  $dd                                         ; $7281: $ee $dd
	cp   b                                           ; $7283: $b8
	adc  b                                           ; $7284: $88
	ld   [hl], l                                     ; $7285: $75
	inc  h                                           ; $7286: $24
	add  l                                           ; $7287: $85
	ld   [de], a                                     ; $7288: $12
	ld   de, $2222                                   ; $7289: $11 $22 $22
	ld   a, b                                        ; $728c: $78
	xor  h                                           ; $728d: $ac
	call z, $ffff                                    ; $728e: $cc $ff $ff
	rst  $28                                         ; $7291: $ef
	db   $dd                                         ; $7292: $dd
	and  [hl]                                        ; $7293: $a6
	ld   h, a                                        ; $7294: $67
	ld   b, c                                        ; $7295: $41
	ld   d, $51                                      ; $7296: $16 $51
	ld   sp, $2211                                   ; $7298: $31 $11 $22
	daa                                              ; $729b: $27
	sbc  e                                           ; $729c: $9b
	rst  $28                                         ; $729d: $ef
	rst  $28                                         ; $729e: $ef
	rst  $38                                         ; $729f: $ff
	rst  $38                                         ; $72a0: $ff
	cp   $da                                         ; $72a1: $fe $da
	ld   b, l                                        ; $72a3: $45
	ld   b, c                                        ; $72a4: $41
	ld   de, $1171                                   ; $72a5: $11 $71 $11
	ld   de, $2424                                   ; $72a8: $11 $24 $24
	cp   e                                           ; $72ab: $bb
	rst  JumpTable                                         ; $72ac: $df
	cp   $ff                                         ; $72ad: $fe $ff
	rst  $38                                         ; $72af: $ff
	cp   $cc                                         ; $72b0: $fe $cc
	ld   [hl], c                                     ; $72b2: $71
	ld   [hl+], a                                    ; $72b3: $22
	ld   de, $1126                                   ; $72b4: $11 $26 $11
	ld   de, $5214                                   ; $72b7: $11 $14 $52
	sbc  a                                           ; $72ba: $9f
	rst  $38                                         ; $72bb: $ff
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	rst  $38                                         ; $72be: $ff
	rst  $38                                         ; $72bf: $ff
	res  6, d                                        ; $72c0: $cb $b2
	ld   de, $1611                                   ; $72c2: $11 $11 $16
	ld   de, $1311                                   ; $72c5: $11 $11 $13
	add  l                                           ; $72c8: $85
	ld   l, a                                        ; $72c9: $6f
	rst  $38                                         ; $72ca: $ff
	rst  $38                                         ; $72cb: $ff
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	ld   sp, hl                                      ; $72cf: $f9
	sub  h                                           ; $72d0: $94
	ld   de, $1111                                   ; $72d1: $11 $11 $11
	ld   hl, $1111                                   ; $72d4: $21 $11 $11
	adc  e                                           ; $72d7: $8b
	ld   l, a                                        ; $72d8: $6f
	rst  $38                                         ; $72d9: $ff
	rst  $38                                         ; $72da: $ff
	rst  $38                                         ; $72db: $ff
	rst  $38                                         ; $72dc: $ff
	rst  $38                                         ; $72dd: $ff
	ld   sp, hl                                      ; $72de: $f9
	ld   d, l                                        ; $72df: $55
	ld   de, $1111                                   ; $72e0: $11 $11 $11
	ld   sp, $1111                                   ; $72e3: $31 $11 $11
	ld   l, a                                        ; $72e6: $6f
	cp   l                                           ; $72e7: $bd
	rst  $38                                         ; $72e8: $ff
	rst  $38                                         ; $72e9: $ff
	rst  $38                                         ; $72ea: $ff
	rst  $38                                         ; $72eb: $ff
	db   $fd                                         ; $72ec: $fd
	db   $ec                                         ; $72ed: $ec
	ld   b, d                                        ; $72ee: $42
	ld   de, $1111                                   ; $72ef: $11 $11 $11
	ld   de, $1311                                   ; $72f2: $11 $11 $13
	ld   e, e                                        ; $72f5: $5b
	cp   $ff                                         ; $72f6: $fe $ff
	rst  $38                                         ; $72f8: $ff
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	cp   $ac                                         ; $72fb: $fe $ac
	ld   h, c                                        ; $72fd: $61
	ld   de, $1111                                   ; $72fe: $11 $11 $11
	ld   de, $1311                                   ; $7301: $11 $11 $13
	ld   l, c                                        ; $7304: $69
	rst  $38                                         ; $7305: $ff
	rst  $38                                         ; $7306: $ff
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	rst  $38                                         ; $730a: $ff
	cp   e                                           ; $730b: $bb
	add  e                                           ; $730c: $83
	ld   de, $1111                                   ; $730d: $11 $11 $11
	ld   de, $1111                                   ; $7310: $11 $11 $11
	ld   d, a                                        ; $7313: $57
	cp   a                                           ; $7314: $bf
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	rst  $38                                         ; $7318: $ff
	rst  $38                                         ; $7319: $ff
	ld   hl, sp-$69                                  ; $731a: $f8 $97
	ld   hl, $1111                                   ; $731c: $21 $11 $11
	ld   de, $2111                                   ; $731f: $11 $11 $21
	dec  d                                           ; $7322: $15
	ld   a, h                                        ; $7323: $7c
	rst  $38                                         ; $7324: $ff
	rst  $38                                         ; $7325: $ff
	rst  $38                                         ; $7326: $ff
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	or   [hl]                                        ; $732a: $b6
	add  l                                           ; $732b: $85
	ld   hl, $1111                                   ; $732c: $21 $11 $11
	ld   de, $3112                                   ; $732f: $11 $12 $31
	dec  [hl]                                        ; $7332: $35
	adc  h                                           ; $7333: $8c
	rst  $38                                         ; $7334: $ff
	rst  $38                                         ; $7335: $ff
	rst  $38                                         ; $7336: $ff
	rst  $38                                         ; $7337: $ff
	rst  $38                                         ; $7338: $ff
	rst  $38                                         ; $7339: $ff
	or   a                                           ; $733a: $b7
	ld   [hl], l                                     ; $733b: $75
	ld   sp, $1111                                   ; $733c: $31 $11 $11
	ld   de, $5111                                   ; $733f: $11 $11 $51
	inc  d                                           ; $7342: $14
	ld   a, d                                        ; $7343: $7a
	rst  JumpTable                                         ; $7344: $df
	rst  $38                                         ; $7345: $ff
	rst  $38                                         ; $7346: $ff
	rst  $38                                         ; $7347: $ff
	rst  $38                                         ; $7348: $ff
	rst  $38                                         ; $7349: $ff
	db   $db                                         ; $734a: $db
	add  a                                           ; $734b: $87
	ld   h, d                                        ; $734c: $62
	ld   de, $1111                                   ; $734d: $11 $11 $11
	ld   de, $1234                                   ; $7350: $11 $34 $12
	ld   [hl], $9e                                   ; $7353: $36 $9e
	cp   $ff                                         ; $7355: $fe $ff
	rst  $38                                         ; $7357: $ff
	rst  $38                                         ; $7358: $ff
	rst  $38                                         ; $7359: $ff
	cp   $db                                         ; $735a: $fe $db
	add  l                                           ; $735c: $85
	inc  sp                                          ; $735d: $33
	ld   sp, $1111                                   ; $735e: $31 $11 $11
	ld   de, $1231                                   ; $7361: $11 $31 $12
	ld   b, [hl]                                     ; $7364: $46
	xor  a                                           ; $7365: $af
	xor  $ff                                         ; $7366: $ee $ff
	rst  $38                                         ; $7368: $ff
	rst  $38                                         ; $7369: $ff
	rst  $38                                         ; $736a: $ff
	cp   $ea                                         ; $736b: $fe $ea
	add  l                                           ; $736d: $85
	inc  [hl]                                        ; $736e: $34
	ld   hl, $1111                                   ; $736f: $21 $11 $11
	ld   [de], a                                     ; $7372: $12
	ld   hl, $3612                                   ; $7373: $21 $12 $36
	cp   a                                           ; $7376: $bf
	sbc  $ff                                         ; $7377: $de $ff
	rst  $38                                         ; $7379: $ff
	rst  $38                                         ; $737a: $ff
	rst  $38                                         ; $737b: $ff
	cp   $eb                                         ; $737c: $fe $eb
	add  l                                           ; $737e: $85
	inc  sp                                          ; $737f: $33
	ld   hl, $1111                                   ; $7380: $21 $11 $11
	ld   [de], a                                     ; $7383: $12
	ld   [hl-], a                                    ; $7384: $32
	ld   hl, $9d24                                   ; $7385: $21 $24 $9d
	call $ffff                                       ; $7388: $cd $ff $ff
	rst  $38                                         ; $738b: $ff
	rst  $38                                         ; $738c: $ff
	db   $fd                                         ; $738d: $fd
	db   $db                                         ; $738e: $db
	add  [hl]                                        ; $738f: $86
	ld   d, l                                        ; $7390: $55
	ld   b, h                                        ; $7391: $44
	ld   sp, $1211                                   ; $7392: $31 $11 $12
	ld   d, h                                        ; $7395: $54
	ld   d, e                                        ; $7396: $53
	ld   [hl+], a                                    ; $7397: $22
	ld   [hl], $99                                   ; $7398: $36 $99
	cp   d                                           ; $739a: $ba
	xor  h                                           ; $739b: $ac
	rst  JumpTable                                         ; $739c: $df
	rst  $38                                         ; $739d: $ff
	cp   $ca                                         ; $739e: $fe $ca
	sbc  c                                           ; $73a0: $99
	adc  b                                           ; $73a1: $88
	sbc  b                                           ; $73a2: $98
	adc  b                                           ; $73a3: $88
	add  a                                           ; $73a4: $87
	ld   h, [hl]                                     ; $73a5: $66
	ld   a, b                                        ; $73a6: $78
	ld   [hl], a                                     ; $73a7: $77
	ld   d, e                                        ; $73a8: $53
	ld   hl, $4513                                   ; $73a9: $21 $13 $45
	ld   h, a                                        ; $73ac: $67
	ld   [hl], a                                     ; $73ad: $77
	sbc  d                                           ; $73ae: $9a
	cp   h                                           ; $73af: $bc
	res  7, c                                        ; $73b0: $cb $b9
	sbc  c                                           ; $73b2: $99
	xor  d                                           ; $73b3: $aa
	cp   e                                           ; $73b4: $bb
	call z, $cbdd                                    ; $73b5: $cc $dd $cb
	cp   e                                           ; $73b8: $bb
	xor  b                                           ; $73b9: $a8
	ld   [hl], l                                     ; $73ba: $75
	ld   sp, $1211                                   ; $73bb: $31 $11 $12
	inc  [hl]                                        ; $73be: $34
	ld   d, [hl]                                     ; $73bf: $56
	ld   h, a                                        ; $73c0: $67
	adc  c                                           ; $73c1: $89
	sbc  c                                           ; $73c2: $99
	sbc  c                                           ; $73c3: $99
	sbc  c                                           ; $73c4: $99
	adc  c                                           ; $73c5: $89
	sbc  d                                           ; $73c6: $9a
	cp   h                                           ; $73c7: $bc
	call c, $dcdd                                    ; $73c8: $dc $dd $dc
	call z, $87aa                                    ; $73cb: $cc $aa $87
	ld   d, e                                        ; $73ce: $53
	ld   hl, $2311                                   ; $73cf: $21 $11 $23
	ld   b, l                                        ; $73d2: $45
	ld   d, [hl]                                     ; $73d3: $56
	ld   [hl], a                                     ; $73d4: $77
	adc  c                                           ; $73d5: $89
	adc  c                                           ; $73d6: $89
	sbc  b                                           ; $73d7: $98
	adc  c                                           ; $73d8: $89
	adc  c                                           ; $73d9: $89
	xor  e                                           ; $73da: $ab
	cp   h                                           ; $73db: $bc
	call $ecdd                                       ; $73dc: $cd $dd $ec
	res  5, c                                        ; $73df: $cb $a9
	add  [hl]                                        ; $73e1: $86
	ld   b, e                                        ; $73e2: $43
	ld   hl, $3412                                   ; $73e3: $21 $12 $34
	ld   d, [hl]                                     ; $73e6: $56
	ld   h, [hl]                                     ; $73e7: $66
	ld   [hl], a                                     ; $73e8: $77
	ld   a, b                                        ; $73e9: $78
	sbc  b                                           ; $73ea: $98
	adc  b                                           ; $73eb: $88
	adc  b                                           ; $73ec: $88
	adc  c                                           ; $73ed: $89
	xor  e                                           ; $73ee: $ab
	cp   h                                           ; $73ef: $bc
	call z, $dcdd                                    ; $73f0: $cc $dd $dc
	res  7, d                                        ; $73f3: $cb $ba
	add  a                                           ; $73f5: $87
	ld   h, h                                        ; $73f6: $64
	ld   [hl-], a                                    ; $73f7: $32
	ld   [hl+], a                                    ; $73f8: $22
	inc  [hl]                                        ; $73f9: $34
	ld   d, l                                        ; $73fa: $55
	ld   d, l                                        ; $73fb: $55
	ld   h, [hl]                                     ; $73fc: $66
	ld   [hl], a                                     ; $73fd: $77
	ld   a, b                                        ; $73fe: $78
	ld   [hl], a                                     ; $73ff: $77
	ld   [hl], a                                     ; $7400: $77
	adc  c                                           ; $7401: $89
	sbc  d                                           ; $7402: $9a
	xor  h                                           ; $7403: $ac
	call z, $eedd                                    ; $7404: $cc $dd $ee
	call c, $99bb                                    ; $7407: $dc $bb $99
	add  [hl]                                        ; $740a: $86
	ld   d, e                                        ; $740b: $53
	ld   [hl+], a                                    ; $740c: $22
	ld   [hl+], a                                    ; $740d: $22
	inc  [hl]                                        ; $740e: $34
	ld   b, l                                        ; $740f: $45
	ld   d, l                                        ; $7410: $55
	ld   h, [hl]                                     ; $7411: $66
	ld   [hl], a                                     ; $7412: $77
	adc  b                                           ; $7413: $88
	adc  b                                           ; $7414: $88
	sbc  b                                           ; $7415: $98
	xor  d                                           ; $7416: $aa
	xor  e                                           ; $7417: $ab
	set  1, h                                        ; $7418: $cb $cc
	sbc  $ed                                         ; $741a: $de $ed
	res  7, c                                        ; $741c: $cb $b9
	sbc  b                                           ; $741e: $98
	halt                                             ; $741f: $76
	ld   d, e                                        ; $7420: $53
	ld   [hl+], a                                    ; $7421: $22
	inc  hl                                          ; $7422: $23
	inc  [hl]                                        ; $7423: $34
	ld   d, l                                        ; $7424: $55
	ld   d, [hl]                                     ; $7425: $56
	ld   h, a                                        ; $7426: $67
	ld   a, b                                        ; $7427: $78
	sbc  b                                           ; $7428: $98
	adc  b                                           ; $7429: $88
	adc  b                                           ; $742a: $88
	sbc  c                                           ; $742b: $99
	xor  e                                           ; $742c: $ab
	xor  e                                           ; $742d: $ab
	call z, $ddcd                                    ; $742e: $cc $cd $dd
	call z, $99ba                                    ; $7431: $cc $ba $99
	sub  a                                           ; $7434: $97
	ld   h, h                                        ; $7435: $64
	ld   [hl-], a                                    ; $7436: $32
	ld   [hl+], a                                    ; $7437: $22
	inc  [hl]                                        ; $7438: $34
	ld   b, h                                        ; $7439: $44
	ld   d, l                                        ; $743a: $55
	ld   d, [hl]                                     ; $743b: $56
	ld   [hl], a                                     ; $743c: $77
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	sbc  d                                           ; $7440: $9a
	xor  e                                           ; $7441: $ab
	cp   d                                           ; $7442: $ba
	cp   h                                           ; $7443: $bc
	call $ccdd                                       ; $7444: $cd $dd $cc
	cp   e                                           ; $7447: $bb
	xor  c                                           ; $7448: $a9
	adc  c                                           ; $7449: $89
	halt                                             ; $744a: $76
	ld   d, h                                        ; $744b: $54
	ld   [hl-], a                                    ; $744c: $32
	inc  hl                                          ; $744d: $23
	inc  [hl]                                        ; $744e: $34
	ld   b, l                                        ; $744f: $45
	ld   d, [hl]                                     ; $7450: $56
	ld   h, a                                        ; $7451: $67
	adc  c                                           ; $7452: $89
	adc  c                                           ; $7453: $89
	adc  b                                           ; $7454: $88
	adc  c                                           ; $7455: $89
	sbc  d                                           ; $7456: $9a
	sbc  c                                           ; $7457: $99
	xor  c                                           ; $7458: $a9
	sbc  d                                           ; $7459: $9a
	cp   e                                           ; $745a: $bb
	cp   e                                           ; $745b: $bb
	cp   e                                           ; $745c: $bb
	cp   d                                           ; $745d: $ba
	xor  d                                           ; $745e: $aa
	sbc  b                                           ; $745f: $98
	sbc  b                                           ; $7460: $98
	halt                                             ; $7461: $76
	ld   d, l                                        ; $7462: $55
	ld   b, h                                        ; $7463: $44
	ld   b, h                                        ; $7464: $44
	ld   b, l                                        ; $7465: $45
	ld   d, [hl]                                     ; $7466: $56
	ld   h, [hl]                                     ; $7467: $66
	ld   [hl], a                                     ; $7468: $77
	ld   a, b                                        ; $7469: $78
	adc  b                                           ; $746a: $88
	adc  b                                           ; $746b: $88
	sbc  c                                           ; $746c: $99
	adc  b                                           ; $746d: $88
	sbc  c                                           ; $746e: $99
	xor  c                                           ; $746f: $a9
	sbc  d                                           ; $7470: $9a
	cp   d                                           ; $7471: $ba
	cp   e                                           ; $7472: $bb
	res  7, d                                        ; $7473: $cb $ba
	xor  c                                           ; $7475: $a9
	sbc  b                                           ; $7476: $98
	sbc  b                                           ; $7477: $98
	ld   [hl], a                                     ; $7478: $77
	ld   h, l                                        ; $7479: $65
	ld   d, h                                        ; $747a: $54
	ld   b, h                                        ; $747b: $44
	ld   b, h                                        ; $747c: $44
	ld   d, l                                        ; $747d: $55
	ld   h, [hl]                                     ; $747e: $66
	ld   [hl], a                                     ; $747f: $77
	ld   a, b                                        ; $7480: $78
	sbc  b                                           ; $7481: $98
	adc  b                                           ; $7482: $88
	adc  b                                           ; $7483: $88
	adc  c                                           ; $7484: $89
	sbc  c                                           ; $7485: $99
	sbc  c                                           ; $7486: $99
	sbc  c                                           ; $7487: $99
	xor  d                                           ; $7488: $aa
	sbc  d                                           ; $7489: $9a
	xor  d                                           ; $748a: $aa
	xor  d                                           ; $748b: $aa
	xor  c                                           ; $748c: $a9
	xor  d                                           ; $748d: $aa
	sbc  b                                           ; $748e: $98
	sbc  b                                           ; $748f: $98
	ld   [hl], a                                     ; $7490: $77
	halt                                             ; $7491: $76
	ld   h, l                                        ; $7492: $65
	ld   d, l                                        ; $7493: $55
	ld   d, l                                        ; $7494: $55
	ld   d, [hl]                                     ; $7495: $56
	ld   h, [hl]                                     ; $7496: $66
	ld   [hl], a                                     ; $7497: $77
	ld   [hl], a                                     ; $7498: $77
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	adc  b                                           ; $749b: $88
	adc  b                                           ; $749c: $88
	sbc  b                                           ; $749d: $98
	adc  c                                           ; $749e: $89
	sbc  c                                           ; $749f: $99
	sbc  d                                           ; $74a0: $9a
	sbc  d                                           ; $74a1: $9a
	xor  d                                           ; $74a2: $aa
	cp   e                                           ; $74a3: $bb
	xor  d                                           ; $74a4: $aa
	sbc  d                                           ; $74a5: $9a
	sbc  c                                           ; $74a6: $99
	adc  c                                           ; $74a7: $89
	add  a                                           ; $74a8: $87
	ld   [hl], a                                     ; $74a9: $77
	ld   h, [hl]                                     ; $74aa: $66
	ld   h, [hl]                                     ; $74ab: $66
	ld   d, l                                        ; $74ac: $55
	ld   d, l                                        ; $74ad: $55
	ld   h, [hl]                                     ; $74ae: $66
	ld   h, a                                        ; $74af: $67
	ld   [hl], a                                     ; $74b0: $77
	ld   [hl], a                                     ; $74b1: $77
	ld   a, b                                        ; $74b2: $78
	adc  c                                           ; $74b3: $89
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  c                                           ; $74b7: $89
	sbc  c                                           ; $74b8: $99
	sbc  c                                           ; $74b9: $99
	xor  c                                           ; $74ba: $a9
	xor  d                                           ; $74bb: $aa
	cp   e                                           ; $74bc: $bb
	xor  e                                           ; $74bd: $ab
	xor  d                                           ; $74be: $aa
	xor  d                                           ; $74bf: $aa
	xor  b                                           ; $74c0: $a8
	add  a                                           ; $74c1: $87
	ld   [hl], a                                     ; $74c2: $77
	ld   h, [hl]                                     ; $74c3: $66
	ld   h, l                                        ; $74c4: $65
	ld   d, h                                        ; $74c5: $54
	ld   b, h                                        ; $74c6: $44
	ld   d, l                                        ; $74c7: $55
	ld   h, [hl]                                     ; $74c8: $66
	ld   [hl], a                                     ; $74c9: $77
	ld   [hl], a                                     ; $74ca: $77
	ld   a, c                                        ; $74cb: $79
	sbc  d                                           ; $74cc: $9a
	xor  c                                           ; $74cd: $a9
	xor  e                                           ; $74ce: $ab
	cp   h                                           ; $74cf: $bc
	cp   e                                           ; $74d0: $bb
	cp   d                                           ; $74d1: $ba
	cp   e                                           ; $74d2: $bb
	xor  d                                           ; $74d3: $aa
	xor  c                                           ; $74d4: $a9
	ld   [hl], l                                     ; $74d5: $75
	ld   hl, $4512                                   ; $74d6: $21 $12 $45
	ld   h, [hl]                                     ; $74d9: $66
	ld   b, e                                        ; $74da: $43
	ld   b, [hl]                                     ; $74db: $46
	xor  e                                           ; $74dc: $ab
	call c, $99b9                                    ; $74dd: $dc $b9 $99
	xor  d                                           ; $74e0: $aa
	sub  a                                           ; $74e1: $97
	ld   h, a                                        ; $74e2: $67
	xor  l                                           ; $74e3: $ad
	db   $ed                                         ; $74e4: $ed
	cp   d                                           ; $74e5: $ba
	sbc  c                                           ; $74e6: $99
	xor  d                                           ; $74e7: $aa
	sub  l                                           ; $74e8: $95
	ld   de, $1611                                   ; $74e9: $11 $11 $16
	sbc  c                                           ; $74ec: $99
	add  [hl]                                        ; $74ed: $86
	sbc  l                                           ; $74ee: $9d
	rst  $38                                         ; $74ef: $ff
	rst  $38                                         ; $74f0: $ff
	or   [hl]                                        ; $74f1: $b6
	ld   h, [hl]                                     ; $74f2: $66
	ld   [hl], h                                     ; $74f3: $74
	ld   de, $af13                                   ; $74f4: $11 $13 $af
	rst  $38                                         ; $74f7: $ff
	cp   $ef                                         ; $74f8: $fe $ef
	cp   $91                                         ; $74fa: $fe $91
	ld   de, $1311                                   ; $74fc: $11 $11 $13
	ld   l, c                                        ; $74ff: $69
	cp   e                                           ; $7500: $bb
	rst  $38                                         ; $7501: $ff
	rst  $38                                         ; $7502: $ff
	rst  $38                                         ; $7503: $ff
	sub  h                                           ; $7504: $94
	ld   b, c                                        ; $7505: $41
	ld   de, $1a11                                   ; $7506: $11 $11 $1a
	rst  $38                                         ; $7509: $ff
	rst  $38                                         ; $750a: $ff
	rst  $38                                         ; $750b: $ff
	rst  $38                                         ; $750c: $ff
	sub  $11                                         ; $750d: $d6 $11
	ld   de, $2a11                                   ; $750f: $11 $11 $2a
	rst  $38                                         ; $7512: $ff
	rst  $38                                         ; $7513: $ff
	rst  $38                                         ; $7514: $ff
	rst  $38                                         ; $7515: $ff
	or   c                                           ; $7516: $b1
	ld   de, $1111                                   ; $7517: $11 $11 $11
	dec  d                                           ; $751a: $15
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	rst  $38                                         ; $751d: $ff
	db   $fd                                         ; $751e: $fd
	or   h                                           ; $751f: $b4
	ld   de, $1111                                   ; $7520: $11 $11 $11
	rra                                              ; $7523: $1f
	rst  $38                                         ; $7524: $ff
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	db   $fd                                         ; $7527: $fd
	ld   b, c                                        ; $7528: $41
	ld   de, $0311                                   ; $7529: $11 $11 $03
	adc  l                                           ; $752c: $8d
	rst  $38                                         ; $752d: $ff
	rst  $38                                         ; $752e: $ff
	cp   $84                                         ; $752f: $fe $84
	ld   sp, $1111                                   ; $7531: $31 $11 $11
	ld   de, $ff2d                                   ; $7534: $11 $2d $ff
	rst  $38                                         ; $7537: $ff
	ld   a, [$1164]                                  ; $7538: $fa $64 $11
	ld   de, $be13                                   ; $753b: $11 $13 $be
	rst  $38                                         ; $753e: $ff
	rst  JumpTable                                         ; $753f: $df
	rst  $38                                         ; $7540: $ff
	ei                                               ; $7541: $fb
	ld   h, d                                        ; $7542: $62
	ld   b, l                                        ; $7543: $45
	dec  [hl]                                        ; $7544: $35
	ld   d, l                                        ; $7545: $55
	ld   a, c                                        ; $7546: $79
	ld   [hl], e                                     ; $7547: $73
	ld   bc, $ef28                                   ; $7548: $01 $28 $ef
	xor  d                                           ; $754b: $aa
	cp   d                                           ; $754c: $ba
	jp   c, $1582                                    ; $754d: $da $82 $15

	ld   b, a                                        ; $7550: $47
	ld   [hl], l                                     ; $7551: $75
	ld   l, c                                        ; $7552: $69
	rst  $38                                         ; $7553: $ff
	rst  $38                                         ; $7554: $ff
	jp   z, Jump_0c6_5387                            ; $7555: $ca $87 $53

	ld   sp, $1123                                   ; $7558: $31 $23 $11
	ld   [de], a                                     ; $755b: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $755c: $cf
	rst  $38                                         ; $755d: $ff
	ret  z                                           ; $755e: $c8

	ld   l, c                                        ; $755f: $69
	ld   d, e                                        ; $7560: $53
	ld   de, $dd37                                   ; $7561: $11 $37 $dd
	cp   e                                           ; $7564: $bb
	cp   a                                           ; $7565: $bf
	cp   $c8                                         ; $7566: $fe $c8
	ld   h, a                                        ; $7568: $67
	adc  b                                           ; $7569: $88
	ld   b, h                                        ; $756a: $44
	ld   h, a                                        ; $756b: $67
	xor  b                                           ; $756c: $a8
	ld   b, c                                        ; $756d: $41
	ld   de, $ff2a                                   ; $756e: $11 $2a $ff
	call $a5da                                       ; $7571: $cd $da $a5
	ld   hl, $5916                                   ; $7574: $21 $16 $59
	sbc  b                                           ; $7577: $98
	cp   l                                           ; $7578: $bd
	rst  $38                                         ; $7579: $ff
	cp   $98                                         ; $757a: $fe $98
	halt                                             ; $757c: $76
	ld   d, h                                        ; $757d: $54
	halt                                             ; $757e: $76
	ld   [hl], a                                     ; $757f: $77
	ld   hl, $6b11                                   ; $7580: $21 $11 $6b
	rst  $38                                         ; $7583: $ff
	db   $dd                                         ; $7584: $dd
	cp   c                                           ; $7585: $b9
	add  h                                           ; $7586: $84
	ld   hl, $5a37                                   ; $7587: $21 $37 $5a
	sbc  c                                           ; $758a: $99
	cp   h                                           ; $758b: $bc
	cp   $fe                                         ; $758c: $fe $fe
	xor  c                                           ; $758e: $a9
	halt                                             ; $758f: $76
	ld   b, h                                        ; $7590: $44
	ld   h, [hl]                                     ; $7591: $66
	ld   [hl], a                                     ; $7592: $77
	ld   b, c                                        ; $7593: $41
	ld   de, $ff3a                                   ; $7594: $11 $3a $ff
	db   $ec                                         ; $7597: $ec
	sub  a                                           ; $7598: $97
	ld   [hl], e                                     ; $7599: $73
	ld   hl, $8c29                                   ; $759a: $21 $29 $8c
	jp   z, $ebcb                                    ; $759d: $ca $cb $eb

	cp   h                                           ; $75a0: $bc
	adc  c                                           ; $75a1: $89
	adc  b                                           ; $75a2: $88
	halt                                             ; $75a3: $76
	adc  b                                           ; $75a4: $88
	add  a                                           ; $75a5: $87
	ld   b, c                                        ; $75a6: $41
	ld   de, $cf14                                   ; $75a7: $11 $14 $cf
	cp   $e9                                         ; $75aa: $fe $e9
	ld   [hl], l                                     ; $75ac: $75
	ld   hl, $7814                                   ; $75ad: $21 $14 $78
	jp   c, $cdcc                                    ; $75b0: $da $cc $cd

	xor  e                                           ; $75b3: $ab
	xor  b                                           ; $75b4: $a8
	sbc  b                                           ; $75b5: $98
	sub  a                                           ; $75b6: $97
	ld   a, b                                        ; $75b7: $78
	adc  c                                           ; $75b8: $89
	ld   d, e                                        ; $75b9: $53
	ld   de, $7e11                                   ; $75ba: $11 $11 $7e
	rst  $38                                         ; $75bd: $ff
	db   $fc                                         ; $75be: $fc
	ld   [hl], a                                     ; $75bf: $77
	ld   hl, $5711                                   ; $75c0: $21 $11 $57
	cp   l                                           ; $75c3: $bd
	call $bacd                                       ; $75c4: $cd $cd $ba
	and  a                                           ; $75c7: $a7
	adc  b                                           ; $75c8: $88
	sbc  b                                           ; $75c9: $98
	ld   a, c                                        ; $75ca: $79
	adc  c                                           ; $75cb: $89
	add  h                                           ; $75cc: $84
	ld   hl, $1811                                   ; $75cd: $21 $11 $18
	rst  $38                                         ; $75d0: $ff
	cp   $a6                                         ; $75d1: $fe $a6
	ld   d, c                                        ; $75d3: $51
	ld   de, $9e17                                   ; $75d4: $11 $17 $9e
	db   $ed                                         ; $75d7: $ed
	db   $db                                         ; $75d8: $db
	jp   z, Jump_0c6_78a8                            ; $75d9: $ca $a8 $78

	sbc  d                                           ; $75dc: $9a
	sbc  c                                           ; $75dd: $99
	sub  a                                           ; $75de: $97
	sub  [hl]                                        ; $75df: $96
	ld   [hl-], a                                    ; $75e0: $32
	ld   de, $9f12                                   ; $75e1: $11 $12 $9f
	rst  $38                                         ; $75e4: $ff
	jp   hl                                          ; $75e5: $e9


	ld   d, e                                        ; $75e6: $53
	ld   de, $ac12                                   ; $75e7: $11 $12 $ac
	cp   $ed                                         ; $75ea: $fe $ed
	call z, Call_0c6_7788                            ; $75ec: $cc $88 $77
	sbc  d                                           ; $75ef: $9a
	cp   c                                           ; $75f0: $b9
	xor  d                                           ; $75f1: $aa
	ld   a, b                                        ; $75f2: $78
	ld   h, e                                        ; $75f3: $63
	ld   hl, $2c11                                   ; $75f4: $21 $11 $2c
	rst  $38                                         ; $75f7: $ff
	db   $fd                                         ; $75f8: $fd
	ld   h, l                                        ; $75f9: $65
	ld   sp, $6a11                                   ; $75fa: $31 $11 $6a
	rst  $28                                         ; $75fd: $ef
	xor  $bc                                         ; $75fe: $ee $bc
	sub  [hl]                                        ; $7600: $96
	add  [hl]                                        ; $7601: $86
	adc  d                                           ; $7602: $8a
	cp   h                                           ; $7603: $bc
	sbc  e                                           ; $7604: $9b
	sub  a                                           ; $7605: $97
	ld   [hl], h                                     ; $7606: $74
	inc  hl                                          ; $7607: $23
	ld   de, rAUD1HIGH                                   ; $7608: $11 $14 $ff
	rst  $38                                         ; $760b: $ff
	and  [hl]                                        ; $760c: $a6
	ld   h, c                                        ; $760d: $61
	ld   de, $ce19                                   ; $760e: $11 $19 $ce
	db   $ed                                         ; $7611: $ed
	call c, Call_0c6_68c7                            ; $7612: $dc $c7 $68
	ld   a, d                                        ; $7615: $7a
	xor  h                                           ; $7616: $ac
	cp   d                                           ; $7617: $ba
	and  a                                           ; $7618: $a7
	ld   h, [hl]                                     ; $7619: $66
	ld   [hl-], a                                    ; $761a: $32
	ld   hl, $af11                                   ; $761b: $21 $11 $af
	rst  $38                                         ; $761e: $ff
	reti                                             ; $761f: $d9


	ld   [hl], h                                     ; $7620: $74
	ld   de, $bc15                                   ; $7621: $11 $15 $bc
	db   $fd                                         ; $7624: $fd
	db   $ed                                         ; $7625: $ed
	reti                                             ; $7626: $d9


	ld   e, b                                        ; $7627: $58
	ld   l, b                                        ; $7628: $68
	xor  d                                           ; $7629: $aa
	cp   d                                           ; $762a: $ba
	cp   c                                           ; $762b: $b9
	ld   [hl], a                                     ; $762c: $77
	ld   b, e                                        ; $762d: $43
	ld   hl, $8f11                                   ; $762e: $21 $11 $8f
	rst  $38                                         ; $7631: $ff
	ld   a, [$1196]                                  ; $7632: $fa $96 $11
	inc  de                                          ; $7635: $13
	sbc  c                                           ; $7636: $99
	db   $ec                                         ; $7637: $ec
	rst  $28                                         ; $7638: $ef
	ei                                               ; $7639: $fb
	ld   a, b                                        ; $763a: $78
	ld   h, a                                        ; $763b: $67
	add  a                                           ; $763c: $87
	sbc  c                                           ; $763d: $99
	cp   c                                           ; $763e: $b9
	adc  c                                           ; $763f: $89
	ld   d, l                                        ; $7640: $55
	ld   hl, $cf11                                   ; $7641: $21 $11 $cf
	db   $fd                                         ; $7644: $fd
	db   $ec                                         ; $7645: $ec
	and  l                                           ; $7646: $a5
	ld   de, $8916                                   ; $7647: $11 $16 $89
	cp   l                                           ; $764a: $bd
	rst  $38                                         ; $764b: $ff
	db   $fc                                         ; $764c: $fc
	add  a                                           ; $764d: $87
	ld   h, a                                        ; $764e: $67
	ld   b, l                                        ; $764f: $45
	ld   l, c                                        ; $7650: $69
	xor  c                                           ; $7651: $a9
	sub  a                                           ; $7652: $97
	ld   [hl], e                                     ; $7653: $73
	ld   de, $ff1c                                   ; $7654: $11 $1c $ff
	cp   h                                           ; $7657: $bc
	call z, $1161                                    ; $7658: $cc $61 $11
	halt                                             ; $765b: $76
	ld   l, c                                        ; $765c: $69
	cp   a                                           ; $765d: $bf
	rst  $38                                         ; $765e: $ff
	db   $ec                                         ; $765f: $ec
	xor  c                                           ; $7660: $a9
	ld   [hl], e                                     ; $7661: $73
	inc  [hl]                                        ; $7662: $34
	ld   l, b                                        ; $7663: $68
	add  a                                           ; $7664: $87
	ld   [hl], a                                     ; $7665: $77
	ld   hl, $ff19                                   ; $7666: $21 $19 $ff
	cp   d                                           ; $7669: $ba
	cp   d                                           ; $766a: $ba
	and  h                                           ; $766b: $a4
	inc  hl                                          ; $766c: $23
	ld   a, b                                        ; $766d: $78
	ld   h, a                                        ; $766e: $67
	adc  d                                           ; $766f: $8a
	xor  $de                                         ; $7670: $ee $de
	jp   c, $44b7                                    ; $7672: $da $b7 $44

	ld   b, [hl]                                     ; $7675: $46
	ld   h, [hl]                                     ; $7676: $66
	ld   d, [hl]                                     ; $7677: $56
	ld   b, c                                        ; $7678: $41
	rla                                              ; $7679: $17
	rst  $38                                         ; $767a: $ff
	jp   c, $a4a9                                    ; $767b: $da $a9 $a4

	ld   [de], a                                     ; $767e: $12
	ld   l, c                                        ; $767f: $69
	ld   [hl], a                                     ; $7680: $77
	adc  d                                           ; $7681: $8a
	sbc  $cc                                         ; $7682: $de $cc
	db   $db                                         ; $7684: $db
	cp   b                                           ; $7685: $b8

Jump_0c6_7686:
	ld   d, h                                        ; $7686: $54
	ld   d, [hl]                                     ; $7687: $56
	ld   d, l                                        ; $7688: $55
	ld   d, l                                        ; $7689: $55
	ld   b, c                                        ; $768a: $41
	ld   d, $ff                                      ; $768b: $16 $ff
	db   $db                                         ; $768d: $db
	cp   e                                           ; $768e: $bb
	sub  h                                           ; $768f: $94
	ld   [de], a                                     ; $7690: $12
	ld   l, c                                        ; $7691: $69
	ld   h, [hl]                                     ; $7692: $66
	adc  d                                           ; $7693: $8a
	rst  $28                                         ; $7694: $ef
	db   $ec                                         ; $7695: $ec
	call c, Call_0c6_43a8                            ; $7696: $dc $a8 $43
	ld   b, l                                        ; $7699: $45
	ld   d, h                                        ; $769a: $54
	ld   b, l                                        ; $769b: $45
	ld   sp, $ff17                                   ; $769c: $31 $17 $ff
	call z, $95aa                                    ; $769f: $cc $aa $95
	ld   [de], a                                     ; $76a2: $12
	ld   h, a                                        ; $76a3: $67
	ld   h, a                                        ; $76a4: $67
	ld   a, d                                        ; $76a5: $7a
	rst  JumpTable                                         ; $76a6: $df
	xor  $ed                                         ; $76a7: $ee $ed
	cp   b                                           ; $76a9: $b8
	ld   d, e                                        ; $76aa: $53
	ld   b, l                                        ; $76ab: $45
	ld   b, e                                        ; $76ac: $43
	inc  [hl]                                        ; $76ad: $34
	ld   hl, $ff1b                                   ; $76ae: $21 $1b $ff
	call z, $a5ba                                    ; $76b1: $cc $ba $a5
	inc  hl                                          ; $76b4: $23
	ld   h, l                                        ; $76b5: $65
	ld   d, [hl]                                     ; $76b6: $56
	ld   a, e                                        ; $76b7: $7b
	rst  $38                                         ; $76b8: $ff

Call_0c6_76b9:
	rst  $28                                         ; $76b9: $ef
	db   $dd                                         ; $76ba: $dd
	ret  z                                           ; $76bb: $c8

	ld   b, e                                        ; $76bc: $43
	ld   b, h                                        ; $76bd: $44
	ld   [hl-], a                                    ; $76be: $32
	ld   de, $7f11                                   ; $76bf: $11 $11 $7f
	db   $fd                                         ; $76c2: $fd
	db   $dd                                         ; $76c3: $dd
	cp   e                                           ; $76c4: $bb
	add  e                                           ; $76c5: $83
	dec  [hl]                                        ; $76c6: $35
	ld   b, e                                        ; $76c7: $43
	ld   d, l                                        ; $76c8: $55
	ld   a, e                                        ; $76c9: $7b
	cp   $ff                                         ; $76ca: $fe $ff
	xor  $b7                                         ; $76cc: $ee $b7
	ld   b, h                                        ; $76ce: $44
	inc  sp                                          ; $76cf: $33
	ld   de, $1311                                   ; $76d0: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76d3: $cf
	xor  $ee                                         ; $76d4: $ee $ee
	db   $eb                                         ; $76d6: $eb
	ld   h, l                                        ; $76d7: $65
	ld   h, l                                        ; $76d8: $65
	inc  sp                                          ; $76d9: $33
	inc  [hl]                                        ; $76da: $34
	adc  e                                           ; $76db: $8b
	sbc  $ff                                         ; $76dc: $de $ff
	rst  $38                                         ; $76de: $ff
	and  a                                           ; $76df: $a7
	ld   h, [hl]                                     ; $76e0: $66
	ld   b, d                                        ; $76e1: $42
	ld   de, $1911                                   ; $76e2: $11 $11 $19
	ret                                              ; $76e5: $c9


	cp   l                                           ; $76e6: $bd
	rst  $28                                         ; $76e7: $ef
	ld   [$8589], a                                  ; $76e8: $ea $89 $85
	ld   d, h                                        ; $76eb: $54
	dec  [hl]                                        ; $76ec: $35
	ld   a, b                                        ; $76ed: $78
	sbc  e                                           ; $76ee: $9b
	set  1, d                                        ; $76ef: $cb $ca
	xor  d                                           ; $76f1: $aa
	xor  d                                           ; $76f2: $aa
	adc  c                                           ; $76f3: $89
	ld   [hl], l                                     ; $76f4: $75
	ld   b, e                                        ; $76f5: $43
	ld   b, a                                        ; $76f6: $47
	sub  [hl]                                        ; $76f7: $96
	ld   h, a                                        ; $76f8: $67
	ld   h, [hl]                                     ; $76f9: $66
	add  a                                           ; $76fa: $87
	ld   a, b                                        ; $76fb: $78
	adc  b                                           ; $76fc: $88
	sbc  d                                           ; $76fd: $9a
	adc  c                                           ; $76fe: $89
	xor  d                                           ; $76ff: $aa
	xor  d                                           ; $7700: $aa
	sbc  b                                           ; $7701: $98
	sbc  d                                           ; $7702: $9a
	sbc  c                                           ; $7703: $99
	sbc  b                                           ; $7704: $98
	sbc  c                                           ; $7705: $99
	sbc  c                                           ; $7706: $99
	add  a                                           ; $7707: $87
	ld   [hl], a                                     ; $7708: $77
	adc  b                                           ; $7709: $88
	halt                                             ; $770a: $76
	ld   d, l                                        ; $770b: $55
	ld   h, [hl]                                     ; $770c: $66
	ld   h, l                                        ; $770d: $65
	ld   h, a                                        ; $770e: $67
	ld   a, c                                        ; $770f: $79
	adc  c                                           ; $7710: $89
	adc  d                                           ; $7711: $8a
	xor  d                                           ; $7712: $aa
	sbc  d                                           ; $7713: $9a
	xor  d                                           ; $7714: $aa
	xor  c                                           ; $7715: $a9
	sbc  c                                           ; $7716: $99
	sbc  c                                           ; $7717: $99
	xor  c                                           ; $7718: $a9
	adc  c                                           ; $7719: $89
	sub  a                                           ; $771a: $97
	ld   [hl], a                                     ; $771b: $77
	add  a                                           ; $771c: $87
	halt                                             ; $771d: $76
	ld   d, l                                        ; $771e: $55
	ld   d, l                                        ; $771f: $55
	ld   d, l                                        ; $7720: $55
	ld   h, a                                        ; $7721: $67
	adc  b                                           ; $7722: $88
	adc  c                                           ; $7723: $89
	sbc  c                                           ; $7724: $99
	sbc  d                                           ; $7725: $9a
	sbc  c                                           ; $7726: $99
	xor  d                                           ; $7727: $aa
	sbc  c                                           ; $7728: $99
	sbc  c                                           ; $7729: $99
	sbc  c                                           ; $772a: $99
	sbc  c                                           ; $772b: $99
	adc  c                                           ; $772c: $89
	sub  a                                           ; $772d: $97
	ld   [hl], a                                     ; $772e: $77
	sub  a                                           ; $772f: $97
	ld   h, l                                        ; $7730: $65
	ld   d, l                                        ; $7731: $55
	ld   d, [hl]                                     ; $7732: $56
	ld   d, [hl]                                     ; $7733: $56
	ld   h, a                                        ; $7734: $67
	adc  c                                           ; $7735: $89
	adc  b                                           ; $7736: $88
	sbc  d                                           ; $7737: $9a
	sbc  d                                           ; $7738: $9a
	xor  d                                           ; $7739: $aa
	sbc  d                                           ; $773a: $9a
	sbc  c                                           ; $773b: $99
	sbc  c                                           ; $773c: $99
	adc  c                                           ; $773d: $89
	sbc  c                                           ; $773e: $99
	adc  b                                           ; $773f: $88
	ld   [hl], a                                     ; $7740: $77
	ld   a, b                                        ; $7741: $78
	add  a                                           ; $7742: $87
	ld   h, [hl]                                     ; $7743: $66
	ld   d, [hl]                                     ; $7744: $56
	ld   h, [hl]                                     ; $7745: $66
	ld   h, [hl]                                     ; $7746: $66
	ld   [hl], a                                     ; $7747: $77
	adc  c                                           ; $7748: $89
	adc  b                                           ; $7749: $88
	xor  c                                           ; $774a: $a9
	xor  d                                           ; $774b: $aa
	xor  d                                           ; $774c: $aa
	sbc  c                                           ; $774d: $99
	sbc  b                                           ; $774e: $98
	sbc  b                                           ; $774f: $98
	sbc  c                                           ; $7750: $99
	sbc  c                                           ; $7751: $99
	sbc  b                                           ; $7752: $98
	ld   [hl], a                                     ; $7753: $77
	adc  b                                           ; $7754: $88
	halt                                             ; $7755: $76
	ld   h, l                                        ; $7756: $65
	ld   h, [hl]                                     ; $7757: $66
	ld   h, [hl]                                     ; $7758: $66
	ld   h, a                                        ; $7759: $67
	ld   a, b                                        ; $775a: $78
	sbc  b                                           ; $775b: $98
	adc  c                                           ; $775c: $89
	xor  d                                           ; $775d: $aa
	cp   d                                           ; $775e: $ba
	sbc  c                                           ; $775f: $99
	xor  c                                           ; $7760: $a9
	sbc  c                                           ; $7761: $99
	adc  c                                           ; $7762: $89
	sbc  c                                           ; $7763: $99
	sbc  b                                           ; $7764: $98
	ld   [hl], a                                     ; $7765: $77
	ld   a, b                                        ; $7766: $78
	add  a                                           ; $7767: $87
	ld   h, [hl]                                     ; $7768: $66
	ld   d, [hl]                                     ; $7769: $56
	ld   h, [hl]                                     ; $776a: $66
	ld   h, [hl]                                     ; $776b: $66
	ld   [hl], a                                     ; $776c: $77
	adc  b                                           ; $776d: $88
	adc  b                                           ; $776e: $88
	sbc  d                                           ; $776f: $9a
	xor  d                                           ; $7770: $aa
	sbc  c                                           ; $7771: $99
	sbc  d                                           ; $7772: $9a
	sbc  c                                           ; $7773: $99
	sbc  c                                           ; $7774: $99
	sbc  c                                           ; $7775: $99
	sbc  b                                           ; $7776: $98
	halt                                             ; $7777: $76
	ld   h, a                                        ; $7778: $67
	add  [hl]                                        ; $7779: $86
	ld   d, l                                        ; $777a: $55
	ld   d, [hl]                                     ; $777b: $56
	ld   h, [hl]                                     ; $777c: $66
	ld   h, [hl]                                     ; $777d: $66
	ld   a, c                                        ; $777e: $79
	xor  d                                           ; $777f: $aa
	xor  d                                           ; $7780: $aa
	xor  h                                           ; $7781: $ac
	call z, $a9aa                                    ; $7782: $cc $aa $a9
	add  a                                           ; $7785: $87
	adc  b                                           ; $7786: $88
	ld   [hl], a                                     ; $7787: $77

Call_0c6_7788:
	ld   h, h                                        ; $7788: $64
	ld   b, [hl]                                     ; $7789: $46
	adc  b                                           ; $778a: $88
	ld   h, l                                        ; $778b: $65
	ld   d, [hl]                                     ; $778c: $56
	sbc  b                                           ; $778d: $98
	halt                                             ; $778e: $76
	adc  d                                           ; $778f: $8a
	cp   e                                           ; $7790: $bb
	add  a                                           ; $7791: $87
	cp   a                                           ; $7792: $bf
	db   $ec                                         ; $7793: $ec
	jp   z, Jump_0c6_64a9                            ; $7794: $ca $a9 $64

	ld   d, [hl]                                     ; $7797: $56
	ld   sp, $1a11                                   ; $7798: $31 $11 $1a
	reti                                             ; $779b: $d9


	sbc  l                                           ; $779c: $9d
	rst  $38                                         ; $779d: $ff
	ld   hl, sp+$6a                                  ; $779e: $f8 $6a
	and  h                                           ; $77a0: $a4
	ld   [hl-], a                                    ; $77a1: $32
	dec  a                                           ; $77a2: $3d
	ei                                               ; $77a3: $fb
	xor  l                                           ; $77a4: $ad
	sbc  $c7                                         ; $77a5: $de $c7
	ld   b, l                                        ; $77a7: $45
	ld   b, c                                        ; $77a8: $41

Call_0c6_77a9:
	ld   de, $d91f                                   ; $77a9: $11 $1f $d9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77ac: $cf
	rst  $38                                         ; $77ad: $ff
	push af                                          ; $77ae: $f5
	ld   e, e                                        ; $77af: $5b
	ld   h, c                                        ; $77b0: $61
	ld   de, $ea8f                                   ; $77b1: $11 $8f $ea
	cp   a                                           ; $77b4: $bf
	rst  $38                                         ; $77b5: $ff
	add  e                                           ; $77b6: $83
	ld   [hl+], a                                    ; $77b7: $22
	ld   de, $fe15                                   ; $77b8: $11 $15 $fe
	adc  $ff                                         ; $77bb: $ce $ff
	ld   sp, hl                                      ; $77bd: $f9
	ld   [de], a                                     ; $77be: $12
	ld   [hl], c                                     ; $77bf: $71
	ld   [de], a                                     ; $77c0: $12
	dec  e                                           ; $77c1: $1d
	rst  $38                                         ; $77c2: $ff
	sbc  $ff                                         ; $77c3: $de $ff
	and  c                                           ; $77c5: $a1
	ld   de, $1611                                   ; $77c6: $11 $11 $16
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	rst  $38                                         ; $77cb: $ff
	or   $11                                         ; $77cc: $f6 $11
	ld   sp, $8f19                                   ; $77ce: $31 $19 $8f
	rst  $38                                         ; $77d1: $ff
	rst  $28                                         ; $77d2: $ef
	add  $61                                         ; $77d3: $c6 $61
	ld   de, $1f11                                   ; $77d5: $11 $11 $1f
	rst  $38                                         ; $77d8: $ff
	rst  $38                                         ; $77d9: $ff
	rst  $38                                         ; $77da: $ff
	pop  af                                          ; $77db: $f1
	ld   de, $3f41                                   ; $77dc: $11 $41 $3f
	rst  $38                                         ; $77df: $ff
	rst  $38                                         ; $77e0: $ff
	ld   d, [hl]                                     ; $77e1: $56
	ld   h, d                                        ; $77e2: $62
	ld   sp, $1111                                   ; $77e3: $31 $11 $11
	cp   a                                           ; $77e6: $bf
	rst  $38                                         ; $77e7: $ff
	rst  $38                                         ; $77e8: $ff
	ld   [$1611], a                                  ; $77e9: $ea $11 $16
	sub  [hl]                                        ; $77ec: $96
	rst  $38                                         ; $77ed: $ff
	rst  $38                                         ; $77ee: $ff
	pop  de                                          ; $77ef: $d1
	ld   [de], a                                     ; $77f0: $12
	ld   [de], a                                     ; $77f1: $12
	ld   de, $1f11                                   ; $77f2: $11 $11 $1f
	rst  $38                                         ; $77f5: $ff
	rst  $38                                         ; $77f6: $ff
	jp   c, $1111                                    ; $77f7: $da $11 $11

	rst  $38                                         ; $77fa: $ff
	rst  $38                                         ; $77fb: $ff
	rst  $38                                         ; $77fc: $ff
	pop  af                                          ; $77fd: $f1
	ld   de, $4112                                   ; $77fe: $11 $12 $41
	ld   de, $ff1f                                   ; $7801: $11 $1f $ff
	db   $ec                                         ; $7804: $ec
	xor  e                                           ; $7805: $ab
	ld   de, rAUD1ENV                                   ; $7806: $11 $12 $ff
	rst  $38                                         ; $7809: $ff
	rst  $38                                         ; $780a: $ff
	and  c                                           ; $780b: $a1
	ld   de, $6242                                   ; $780c: $11 $42 $62
	ld   de, $fe1f                                   ; $780f: $11 $1f $fe
	call $1179                                       ; $7812: $cd $79 $11
	rra                                              ; $7815: $1f
	rst  $38                                         ; $7816: $ff
	rst  $38                                         ; $7817: $ff
	push af                                          ; $7818: $f5
	ld   hl, $8317                                   ; $7819: $21 $17 $83
	ld   sp, rAUD1LEN                                   ; $781c: $31 $11 $ff
	ei                                               ; $781f: $fb
	add  sp, $71                                     ; $7820: $e8 $71
	ld   de, $ffff                                   ; $7822: $11 $ff $ff
	rst  $38                                         ; $7825: $ff
	ld   d, e                                        ; $7826: $53
	ld   de, $2168                                   ; $7827: $11 $68 $21
	ld   de, $f9ff                                   ; $782a: $11 $ff $f9
	cp   h                                           ; $782d: $bc
	sub  c                                           ; $782e: $91
	ld   de, $ff4f                                   ; $782f: $11 $4f $ff
	rst  $38                                         ; $7832: $ff
	add  h                                           ; $7833: $84
	ld   de, $911b                                   ; $7834: $11 $1b $91
	ld   de, $ff1f                                   ; $7837: $11 $1f $ff
	xor  b                                           ; $783a: $a8
	or   d                                           ; $783b: $b2
	ld   de, $ff1f                                   ; $783c: $11 $1f $ff
	rst  $38                                         ; $783f: $ff
	call nz, $1511                                   ; $7840: $c4 $11 $15
	and  c                                           ; $7843: $a1
	ld   de, $ffdf                                   ; $7844: $11 $df $ff
	halt                                             ; $7847: $76
	pop  bc                                          ; $7848: $c1
	ld   de, $ff5f                                   ; $7849: $11 $5f $ff
	rst  $38                                         ; $784c: $ff
	ld   h, d                                        ; $784d: $62
	ld   de, $1115                                   ; $784e: $11 $15 $11
	ld   d, $ff                                      ; $7851: $16 $ff
	rst  $38                                         ; $7853: $ff
	sbc  c                                           ; $7854: $99
	ld   de, rAUD1LOW                                   ; $7855: $11 $13 $ff
	rst  $38                                         ; $7858: $ff
	rst  $30                                         ; $7859: $f7
	ld   de, $1111                                   ; $785a: $11 $11 $11
	ld   de, $ffff                                   ; $785d: $11 $ff $ff
	ld   a, [$1231]                                  ; $7860: $fa $31 $12
	cp   a                                           ; $7863: $bf
	rst  $38                                         ; $7864: $ff
	db   $fc                                         ; $7865: $fc
	ld   de, $1111                                   ; $7866: $11 $11 $11
	ld   de, $ffff                                   ; $7869: $11 $ff $ff
	rst  $30                                         ; $786c: $f7
	ld   hl, $df16                                   ; $786d: $21 $16 $df
	rst  $38                                         ; $7870: $ff
	ld   sp, hl                                      ; $7871: $f9
	ld   de, $1111                                   ; $7872: $11 $11 $11
	rra                                              ; $7875: $1f
	rst  $38                                         ; $7876: $ff
	rst  $38                                         ; $7877: $ff
	and  c                                           ; $7878: $a1
	ld   de, $ff4c                                   ; $7879: $11 $4c $ff
	rst  $38                                         ; $787c: $ff
	or   c                                           ; $787d: $b1
	ld   de, $1111                                   ; $787e: $11 $11 $11
	rst  $38                                         ; $7881: $ff
	rst  $38                                         ; $7882: $ff
	rst  $38                                         ; $7883: $ff
	ld   [hl], c                                     ; $7884: $71
	ld   de, $ff9f                                   ; $7885: $11 $9f $ff
	db   $fd                                         ; $7888: $fd
	ld   hl, $1111                                   ; $7889: $21 $11 $11
	rra                                              ; $788c: $1f
	rst  $38                                         ; $788d: $ff
	rst  $38                                         ; $788e: $ff
	push bc                                          ; $788f: $c5
	ld   de, $ff29                                   ; $7890: $11 $29 $ff
	rst  $38                                         ; $7893: $ff
	pop  bc                                          ; $7894: $c1
	ld   de, $1111                                   ; $7895: $11 $11 $11
	rst  $38                                         ; $7898: $ff
	rst  $38                                         ; $7899: $ff
	add  sp, $51                                     ; $789a: $e8 $51
	ld   [de], a                                     ; $789c: $12
	ld   a, a                                        ; $789d: $7f
	rst  $38                                         ; $789e: $ff
	ld   a, [$1111]                                  ; $789f: $fa $11 $11
	ld   de, $ffaf                                   ; $78a2: $11 $af $ff
	rst  $38                                         ; $78a5: $ff
	pop  bc                                          ; $78a6: $c1
	dec  d                                           ; $78a7: $15

Jump_0c6_78a8:
	ld   a, e                                        ; $78a8: $7b
	rst  $38                                         ; $78a9: $ff
	cp   $31                                         ; $78aa: $fe $31
	ld   de, $1f11                                   ; $78ac: $11 $11 $1f
	rst  $38                                         ; $78af: $ff
	rst  $38                                         ; $78b0: $ff
	and  a                                           ; $78b1: $a7
	ld   hl, $cfac                                   ; $78b2: $21 $ac $cf
	cp   $71                                         ; $78b5: $fe $71
	ld   de, $1a11                                   ; $78b7: $11 $11 $1a
	rst  $38                                         ; $78ba: $ff
	rst  $38                                         ; $78bb: $ff
	ldh  a, [c]                                      ; $78bc: $f2
	dec  d                                           ; $78bd: $15
	ld   l, b                                        ; $78be: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78bf: $cf
	cp   $f1                                         ; $78c0: $fe $f1
	ld   de, $1211                                   ; $78c2: $11 $11 $12
	rst  $38                                         ; $78c5: $ff
	rst  $38                                         ; $78c6: $ff
	rst  $30                                         ; $78c7: $f7
	ld   hl, $6e7f                                   ; $78c8: $21 $7f $6e
	cp   $a5                                         ; $78cb: $fe $a5
	ld   de, $1411                                   ; $78cd: $11 $11 $14
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	ld   a, [$1f71]                                  ; $78d2: $fa $71 $1f
	ei                                               ; $78d5: $fb
	rst  $38                                         ; $78d6: $ff
	ld   h, l                                        ; $78d7: $65
	ld   sp, $1511                                   ; $78d8: $31 $11 $15
	cp   h                                           ; $78db: $bc
	rst  $38                                         ; $78dc: $ff
	rst  $30                                         ; $78dd: $f7
	inc  h                                           ; $78de: $24
	xor  l                                           ; $78df: $ad
	xor  c                                           ; $78e0: $a9
	rst  $28                                         ; $78e1: $ef
	or   c                                           ; $78e2: $b1
	inc  de                                          ; $78e3: $13
	ld   de, $3c16                                   ; $78e4: $11 $16 $3c
	rst  $38                                         ; $78e7: $ff
	ret  z                                           ; $78e8: $c8

	ld   l, b                                        ; $78e9: $68
	or   a                                           ; $78ea: $b7
	ld   e, a                                        ; $78eb: $5f
	ld   hl, sp-$6a                                  ; $78ec: $f8 $96
	inc  h                                           ; $78ee: $24
	ld   de, $6965                                   ; $78ef: $11 $65 $69
	rst  $38                                         ; $78f2: $ff
	sub  l                                           ; $78f3: $95
	ld   [hl], l                                     ; $78f4: $75
	ei                                               ; $78f5: $fb
	ccf                                              ; $78f6: $3f
	add  $a4                                         ; $78f7: $c6 $a4
	ld   [hl], l                                     ; $78f9: $75
	inc  de                                          ; $78fa: $13
	dec  d                                           ; $78fb: $15
	or   $9f                                         ; $78fc: $f6 $9f
	sub  c                                           ; $78fe: $91
	ld   c, [hl]                                     ; $78ff: $4e
	rst  $10                                         ; $7900: $d7
	ei                                               ; $7901: $fb
	ld   l, e                                        ; $7902: $6b
	sub  d                                           ; $7903: $92
	dec  h                                           ; $7904: $25
	ld   h, h                                        ; $7905: $64
	inc  sp                                          ; $7906: $33
	ld   a, a                                        ; $7907: $7f
	pop  bc                                          ; $7908: $c1
	sbc  d                                           ; $7909: $9a
	xor  l                                           ; $790a: $ad
	ld   l, e                                        ; $790b: $6b
	ld   a, [$15d5]                                  ; $790c: $fa $d5 $15
	ld   a, d                                        ; $790f: $7a
	ld   hl, $c76f                                   ; $7910: $21 $6f $c7
	add  hl, de                                      ; $7913: $19
	ld   a, [$bf14]                                  ; $7914: $fa $14 $bf
	pop  af                                          ; $7917: $f1
	ld   a, [hl]                                     ; $7918: $7e
	push af                                          ; $7919: $f5
	ld   de, $8378                                   ; $791a: $11 $78 $83
	rra                                              ; $791d: $1f
	ld   hl, sp+$35                                  ; $791e: $f8 $35
	cp   c                                           ; $7920: $b9
	rst  $28                                         ; $7921: $ef
	ld   b, a                                        ; $7922: $47
	cp   $11                                         ; $7923: $fe $11
	adc  a                                           ; $7925: $8f
	ld   sp, $f74b                                   ; $7926: $31 $4b $f7
	add  hl, de                                      ; $7929: $19
	ld   hl, sp+$1f                                  ; $792a: $f8 $1f
	call nz, $1dfc                                   ; $792c: $c4 $fc $1d
	ld   b, c                                        ; $792f: $41
	ld   a, b                                        ; $7930: $78
	ld   d, h                                        ; $7931: $54
	call z, $fe13                                    ; $7932: $cc $13 $fe
	or   d                                           ; $7935: $b2
	ccf                                              ; $7936: $3f
	db   $fc                                         ; $7937: $fc
	ld   a, [de]                                     ; $7938: $1a
	and  $32                                         ; $7939: $e6 $32
	ld   b, e                                        ; $793b: $43
	add  sp, $44                                     ; $793c: $e8 $44
	ld   a, a                                        ; $793e: $7f
	and  [hl]                                        ; $793f: $a6
	ld   c, b                                        ; $7940: $48
	rst  $38                                         ; $7941: $ff
	ld   h, h                                        ; $7942: $64
	rst  $28                                         ; $7943: $ef
	ld   de, $31ac                                   ; $7944: $11 $ac $31
	xor  a                                           ; $7947: $af
	ld   h, c                                        ; $7948: $61
	sbc  d                                           ; $7949: $9a
	db   $eb                                         ; $794a: $eb
	ld   e, c                                        ; $794b: $59
	xor  a                                           ; $794c: $af
	and  e                                           ; $794d: $a3
	or   l                                           ; $794e: $b5
	add  [hl]                                        ; $794f: $86
	ld   [de], a                                     ; $7950: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7951: $cf
	ld   [hl], c                                     ; $7952: $71
	ld   l, a                                        ; $7953: $6f
	call nc, $ff48                                   ; $7954: $d4 $48 $ff
	and  c                                           ; $7957: $a1
	ccf                                              ; $7958: $3f
	pop  bc                                          ; $7959: $c1
	ld   d, $6e                                      ; $795a: $16 $6e
	add  c                                           ; $795c: $81
	adc  a                                           ; $795d: $8f
	ld   h, c                                        ; $795e: $61
	jp   z, $a97d                                    ; $795f: $ca $7d $a9

	ld   e, e                                        ; $7962: $5b
	reti                                             ; $7963: $d9


	ld   h, h                                        ; $7964: $64

Call_0c6_7965:
	ld   a, c                                        ; $7965: $79
	add  h                                           ; $7966: $84
	ld   a, [hl-]                                    ; $7967: $3a
	call nc, $af45                                   ; $7968: $d4 $45 $af
	sub  h                                           ; $796b: $94
	xor  h                                           ; $796c: $ac
	adc  e                                           ; $796d: $8b
	sbc  d                                           ; $796e: $9a
	ld   [hl], h                                     ; $796f: $74
	or   a                                           ; $7970: $b7
	ld   b, h                                        ; $7971: $44
	xor  [hl]                                        ; $7972: $ae
	ld   de, $86bf                                   ; $7973: $11 $bf $86
	scf                                              ; $7976: $37
	db   $fc                                         ; $7977: $fc
	adc  d                                           ; $7978: $8a
	or   [hl]                                        ; $7979: $b6
	dec  [hl]                                        ; $797a: $35
	ld   b, [hl]                                     ; $797b: $46
	call z, $3c73                                    ; $797c: $cc $73 $3c
	or   h                                           ; $797f: $b4
	dec  l                                           ; $7980: $2d
	sub  $58                                         ; $7981: $d6 $58
	db   $fc                                         ; $7983: $fc
	ld   b, e                                        ; $7984: $43
	sbc  a                                           ; $7985: $9f
	ld   sp, $a59b                                   ; $7986: $31 $9b $a5
	ld   c, c                                        ; $7989: $49
	add  [hl]                                        ; $798a: $86
	add  l                                           ; $798b: $85
	ld   l, l                                        ; $798c: $6d
	adc  c                                           ; $798d: $89
	jp   z, $a787                                    ; $798e: $ca $87 $a7

	ld   h, [hl]                                     ; $7991: $66
	ld   l, b                                        ; $7992: $68
	xor  b                                           ; $7993: $a8
	ld   e, d                                        ; $7994: $5a
	ld   h, c                                        ; $7995: $61
	reti                                             ; $7996: $d9


	dec  a                                           ; $7997: $3d
	xor  d                                           ; $7998: $aa
	db   $f4                                         ; $7999: $f4
	ld   a, $c2                                      ; $799a: $3e $c2
	inc  a                                           ; $799c: $3c
	or   a                                           ; $799d: $b7
	ld   h, h                                        ; $799e: $64
	adc  a                                           ; $799f: $8f
	ld   d, c                                        ; $79a0: $51
	xor  h                                           ; $79a1: $ac
	ld   h, a                                        ; $79a2: $67
	ld   l, c                                        ; $79a3: $69
	db   $eb                                         ; $79a4: $eb
	scf                                              ; $79a5: $37
	rst  $30                                         ; $79a6: $f7
	ld   e, b                                        ; $79a7: $58

Call_0c6_79a8:
	add  a                                           ; $79a8: $87
	sbc  e                                           ; $79a9: $9b
	jr   c, @-$49                                    ; $79aa: $38 $b5

	add  [hl]                                        ; $79ac: $86
	ld   e, c                                        ; $79ad: $59
	or   a                                           ; $79ae: $b7
	sub  a                                           ; $79af: $97
	ld   a, e                                        ; $79b0: $7b
	add  a                                           ; $79b1: $87
	ld   l, d                                        ; $79b2: $6a
	ld   a, e                                        ; $79b3: $7b
	ld   e, b                                        ; $79b4: $58
	add  $86                                         ; $79b5: $c6 $86
	sub  l                                           ; $79b7: $95
	add  a                                           ; $79b8: $87
	adc  d                                           ; $79b9: $8a
	ld   l, c                                        ; $79ba: $69
	adc  c                                           ; $79bb: $89
	ld   a, c                                        ; $79bc: $79
	ld   e, c                                        ; $79bd: $59
	sub  [hl]                                        ; $79be: $96
	adc  b                                           ; $79bf: $88
	sub  a                                           ; $79c0: $97
	cp   b                                           ; $79c1: $b8
	sbc  c                                           ; $79c2: $99
	ld   l, b                                        ; $79c3: $68
	or   a                                           ; $79c4: $b7
	ld   a, e                                        ; $79c5: $7b
	ld   e, d                                        ; $79c6: $5a
	ld   l, c                                        ; $79c7: $69
	cp   b                                           ; $79c8: $b8
	sub  a                                           ; $79c9: $97
	and  a                                           ; $79ca: $a7
	sbc  c                                           ; $79cb: $99
	ld   l, e                                        ; $79cc: $6b
	sbc  b                                           ; $79cd: $98
	add  a                                           ; $79ce: $87
	sub  a                                           ; $79cf: $97
	sub  a                                           ; $79d0: $97
	adc  b                                           ; $79d1: $88
	add  a                                           ; $79d2: $87
	sbc  c                                           ; $79d3: $99
	ld   a, b                                        ; $79d4: $78
	sbc  b                                           ; $79d5: $98
	adc  d                                           ; $79d6: $8a
	ld   a, c                                        ; $79d7: $79
	ld   [hl], a                                     ; $79d8: $77
	sub  a                                           ; $79d9: $97
	adc  c                                           ; $79da: $89
	ld   [hl], a                                     ; $79db: $77
	adc  c                                           ; $79dc: $89
	ld   a, b                                        ; $79dd: $78
	adc  b                                           ; $79de: $88
	ld   a, b                                        ; $79df: $78
	add  a                                           ; $79e0: $87
	sub  a                                           ; $79e1: $97
	sbc  b                                           ; $79e2: $98
	adc  b                                           ; $79e3: $88
	ld   a, b                                        ; $79e4: $78
	adc  b                                           ; $79e5: $88
	ld   a, b                                        ; $79e6: $78
	adc  c                                           ; $79e7: $89
	adc  c                                           ; $79e8: $89
	ld   a, c                                        ; $79e9: $79
	ld   [hl], a                                     ; $79ea: $77
	sbc  b                                           ; $79eb: $98
	sub  a                                           ; $79ec: $97
	sbc  b                                           ; $79ed: $98
	adc  b                                           ; $79ee: $88
	adc  c                                           ; $79ef: $89
	add  a                                           ; $79f0: $87
	adc  b                                           ; $79f1: $88
	ld   a, b                                        ; $79f2: $78
	adc  b                                           ; $79f3: $88
	adc  c                                           ; $79f4: $89
	add  a                                           ; $79f5: $87
	adc  b                                           ; $79f6: $88
	add  a                                           ; $79f7: $87
	add  a                                           ; $79f8: $87
	ld   a, b                                        ; $79f9: $78
	adc  c                                           ; $79fa: $89
	add  a                                           ; $79fb: $87
	adc  b                                           ; $79fc: $88
	ld   [hl], a                                     ; $79fd: $77
	adc  c                                           ; $79fe: $89
	add  a                                           ; $79ff: $87
	ld   a, b                                        ; $7a00: $78
	adc  b                                           ; $7a01: $88
	ld   [hl], a                                     ; $7a02: $77
	ld   a, b                                        ; $7a03: $78
	sub  a                                           ; $7a04: $97
	ld   [hl], a                                     ; $7a05: $77
	adc  b                                           ; $7a06: $88
	ld   [hl], a                                     ; $7a07: $77
	ld   a, b                                        ; $7a08: $78
	ld   a, b                                        ; $7a09: $78
	ld   [hl], a                                     ; $7a0a: $77
	ld   a, c                                        ; $7a0b: $79
	ld   [hl], a                                     ; $7a0c: $77
	adc  b                                           ; $7a0d: $88
	add  a                                           ; $7a0e: $87
	add  a                                           ; $7a0f: $87
	sub  a                                           ; $7a10: $97
	ld   a, c                                        ; $7a11: $79
	ld   a, c                                        ; $7a12: $79
	ld   a, b                                        ; $7a13: $78
	ld   [hl], a                                     ; $7a14: $77
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	add  a                                           ; $7a17: $87
	adc  b                                           ; $7a18: $88
	ld   [hl], a                                     ; $7a19: $77
	adc  c                                           ; $7a1a: $89
	adc  b                                           ; $7a1b: $88
	ld   a, b                                        ; $7a1c: $78
	add  a                                           ; $7a1d: $87
	add  a                                           ; $7a1e: $87
	ld   a, b                                        ; $7a1f: $78
	ld   a, b                                        ; $7a20: $78
	ld   [hl], a                                     ; $7a21: $77
	add  a                                           ; $7a22: $87
	ld   [hl], a                                     ; $7a23: $77
	ld   a, b                                        ; $7a24: $78
	add  a                                           ; $7a25: $87
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	ld   [hl], a                                     ; $7a28: $77
	ld   a, b                                        ; $7a29: $78
	adc  b                                           ; $7a2a: $88
	ld   [hl], a                                     ; $7a2b: $77
	add  a                                           ; $7a2c: $87
	ld   a, c                                        ; $7a2d: $79
	ld   a, b                                        ; $7a2e: $78
	ld   [hl], a                                     ; $7a2f: $77
	adc  b                                           ; $7a30: $88
	ld   [hl], a                                     ; $7a31: $77
	adc  b                                           ; $7a32: $88
	add  a                                           ; $7a33: $87
	add  a                                           ; $7a34: $87
	adc  b                                           ; $7a35: $88
	ld   a, b                                        ; $7a36: $78
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	ld   a, b                                        ; $7a39: $78
	ld   a, b                                        ; $7a3a: $78
	ld   [hl], a                                     ; $7a3b: $77
	adc  b                                           ; $7a3c: $88
	add  a                                           ; $7a3d: $87
	adc  b                                           ; $7a3e: $88
	add  a                                           ; $7a3f: $87
	ld   a, c                                        ; $7a40: $79
	ld   a, b                                        ; $7a41: $78
	add  a                                           ; $7a42: $87
	adc  b                                           ; $7a43: $88
	sub  a                                           ; $7a44: $97
	add  a                                           ; $7a45: $87
	sbc  b                                           ; $7a46: $98
	ld   a, c                                        ; $7a47: $79
	ld   a, b                                        ; $7a48: $78
	ld   a, b                                        ; $7a49: $78
	ld   [hl], a                                     ; $7a4a: $77
	add  a                                           ; $7a4b: $87
	ld   [hl], a                                     ; $7a4c: $77
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	ld   [hl], a                                     ; $7a4f: $77
	adc  b                                           ; $7a50: $88
	ld   a, b                                        ; $7a51: $78
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	ld   a, b                                        ; $7a54: $78
	adc  b                                           ; $7a55: $88
	add  a                                           ; $7a56: $87
	add  a                                           ; $7a57: $87
	ld   a, b                                        ; $7a58: $78
	adc  b                                           ; $7a59: $88
	ld   a, b                                        ; $7a5a: $78
	adc  b                                           ; $7a5b: $88
	ld   a, b                                        ; $7a5c: $78
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	sub  a                                           ; $7a5f: $97
	sbc  b                                           ; $7a60: $98
	adc  b                                           ; $7a61: $88
	ld   a, c                                        ; $7a62: $79
	ld   a, b                                        ; $7a63: $78
	sbc  b                                           ; $7a64: $98
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	sbc  b                                           ; $7a67: $98
	adc  b                                           ; $7a68: $88
	ld   a, c                                        ; $7a69: $79
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	sbc  b                                           ; $7a6d: $98
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	add  a                                           ; $7a77: $87
	sbc  c                                           ; $7a78: $99
	adc  b                                           ; $7a79: $88
	sbc  b                                           ; $7a7a: $98
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	sbc  b                                           ; $7a7d: $98
	ld   a, b                                        ; $7a7e: $78
	sub  a                                           ; $7a7f: $97
	adc  c                                           ; $7a80: $89
	adc  b                                           ; $7a81: $88
	adc  c                                           ; $7a82: $89
	sbc  b                                           ; $7a83: $98
	ld   a, c                                        ; $7a84: $79
	adc  b                                           ; $7a85: $88
	sub  a                                           ; $7a86: $97
	adc  c                                           ; $7a87: $89
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	sbc  b                                           ; $7a8a: $98
	ld   a, c                                        ; $7a8b: $79
	sbc  c                                           ; $7a8c: $99
	adc  c                                           ; $7a8d: $89
	sbc  b                                           ; $7a8e: $98
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	sbc  b                                           ; $7a93: $98
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  c                                           ; $7a96: $89
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	sbc  b                                           ; $7a99: $98
	adc  c                                           ; $7a9a: $89
	adc  c                                           ; $7a9b: $89
	add  a                                           ; $7a9c: $87
	adc  b                                           ; $7a9d: $88
	adc  c                                           ; $7a9e: $89
	sub  a                                           ; $7a9f: $97
	sbc  c                                           ; $7aa0: $99
	adc  b                                           ; $7aa1: $88
	adc  c                                           ; $7aa2: $89
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	sub  a                                           ; $7aa6: $97
	sbc  c                                           ; $7aa7: $99
	adc  b                                           ; $7aa8: $88
	adc  c                                           ; $7aa9: $89
	ld   a, c                                        ; $7aaa: $79
	sbc  b                                           ; $7aab: $98
	adc  c                                           ; $7aac: $89
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	sbc  b                                           ; $7aaf: $98
	sbc  c                                           ; $7ab0: $99
	ld   a, c                                        ; $7ab1: $79
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  c                                           ; $7ab4: $89
	adc  b                                           ; $7ab5: $88
	adc  c                                           ; $7ab6: $89
	add  a                                           ; $7ab7: $87
	adc  c                                           ; $7ab8: $89
	add  a                                           ; $7ab9: $87
	sbc  c                                           ; $7aba: $99
	adc  c                                           ; $7abb: $89
	adc  c                                           ; $7abc: $89
	adc  c                                           ; $7abd: $89
	adc  b                                           ; $7abe: $88
	sub  a                                           ; $7abf: $97
	adc  b                                           ; $7ac0: $88
	sbc  b                                           ; $7ac1: $98
	adc  c                                           ; $7ac2: $89
	adc  b                                           ; $7ac3: $88
	ld   a, b                                        ; $7ac4: $78
	ld   a, b                                        ; $7ac5: $78
	adc  b                                           ; $7ac6: $88
	add  a                                           ; $7ac7: $87
	sbc  b                                           ; $7ac8: $98
	add  a                                           ; $7ac9: $87
	adc  c                                           ; $7aca: $89
	adc  b                                           ; $7acb: $88
	ld   a, c                                        ; $7acc: $79
	adc  c                                           ; $7acd: $89
	adc  c                                           ; $7ace: $89
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	sub  a                                           ; $7ad3: $97
	sbc  c                                           ; $7ad4: $99
	adc  b                                           ; $7ad5: $88
	sbc  b                                           ; $7ad6: $98
	adc  b                                           ; $7ad7: $88
	ld   a, c                                        ; $7ad8: $79
	sbc  b                                           ; $7ad9: $98
	adc  b                                           ; $7ada: $88
	sub  a                                           ; $7adb: $97
	adc  c                                           ; $7adc: $89
	ld   a, b                                        ; $7add: $78
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	add  a                                           ; $7ae0: $87
	adc  b                                           ; $7ae1: $88
	sbc  b                                           ; $7ae2: $98
	adc  b                                           ; $7ae3: $88
	sbc  c                                           ; $7ae4: $99
	ld   a, b                                        ; $7ae5: $78
	adc  b                                           ; $7ae6: $88
	adc  c                                           ; $7ae7: $89
	ld   a, b                                        ; $7ae8: $78
	sub  a                                           ; $7ae9: $97
	sbc  b                                           ; $7aea: $98
	sbc  b                                           ; $7aeb: $98
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	ld   a, c                                        ; $7aef: $79
	ld   a, b                                        ; $7af0: $78
	add  a                                           ; $7af1: $87
	sbc  b                                           ; $7af2: $98
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	ld   a, c                                        ; $7af6: $79
	adc  b                                           ; $7af7: $88
	sub  a                                           ; $7af8: $97
	sbc  b                                           ; $7af9: $98
	add  a                                           ; $7afa: $87
	adc  c                                           ; $7afb: $89
	adc  c                                           ; $7afc: $89
	ld   a, b                                        ; $7afd: $78
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	adc  c                                           ; $7b00: $89
	sub  a                                           ; $7b01: $97
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	add  a                                           ; $7b06: $87
	adc  c                                           ; $7b07: $89
	adc  c                                           ; $7b08: $89
	adc  c                                           ; $7b09: $89
	ld   a, b                                        ; $7b0a: $78
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	add  a                                           ; $7b0e: $87
	adc  c                                           ; $7b0f: $89
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	sbc  c                                           ; $7b12: $99
	ld   a, b                                        ; $7b13: $78
	sbc  b                                           ; $7b14: $98
	ld   a, b                                        ; $7b15: $78
	adc  b                                           ; $7b16: $88
	ld   a, c                                        ; $7b17: $79
	adc  b                                           ; $7b18: $88
	add  a                                           ; $7b19: $87
	adc  c                                           ; $7b1a: $89
	add  a                                           ; $7b1b: $87
	sbc  b                                           ; $7b1c: $98
	add  a                                           ; $7b1d: $87
	adc  b                                           ; $7b1e: $88
	ld   a, b                                        ; $7b1f: $78
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	adc  b                                           ; $7b24: $88
	adc  c                                           ; $7b25: $89
	ld   a, c                                        ; $7b26: $79
	add  a                                           ; $7b27: $87
	sub  a                                           ; $7b28: $97
	adc  b                                           ; $7b29: $88
	sbc  b                                           ; $7b2a: $98
	ld   a, c                                        ; $7b2b: $79
	adc  c                                           ; $7b2c: $89
	ld   a, b                                        ; $7b2d: $78
	sbc  c                                           ; $7b2e: $99
	add  a                                           ; $7b2f: $87
	add  a                                           ; $7b30: $87
	add  a                                           ; $7b31: $87
	adc  c                                           ; $7b32: $89
	adc  b                                           ; $7b33: $88
	ld   a, c                                        ; $7b34: $79
	add  a                                           ; $7b35: $87
	sbc  b                                           ; $7b36: $98
	adc  b                                           ; $7b37: $88
	ld   a, b                                        ; $7b38: $78
	sub  a                                           ; $7b39: $97
	adc  b                                           ; $7b3a: $88
	sbc  b                                           ; $7b3b: $98
	sub  a                                           ; $7b3c: $97
	ld   a, c                                        ; $7b3d: $79
	ld   a, b                                        ; $7b3e: $78
	sbc  b                                           ; $7b3f: $98
	adc  c                                           ; $7b40: $89
	adc  b                                           ; $7b41: $88
	ld   a, b                                        ; $7b42: $78
	adc  c                                           ; $7b43: $89
	sub  a                                           ; $7b44: $97
	and  a                                           ; $7b45: $a7
	sbc  c                                           ; $7b46: $99
	ld   l, d                                        ; $7b47: $6a
	ld   a, c                                        ; $7b48: $79
	sub  a                                           ; $7b49: $97
	sub  a                                           ; $7b4a: $97
	adc  b                                           ; $7b4b: $88
	ld   a, b                                        ; $7b4c: $78
	adc  c                                           ; $7b4d: $89
	adc  b                                           ; $7b4e: $88
	add  a                                           ; $7b4f: $87
	adc  c                                           ; $7b50: $89
	ld   a, c                                        ; $7b51: $79
	ld   [hl], a                                     ; $7b52: $77
	sbc  b                                           ; $7b53: $98
	add  a                                           ; $7b54: $87
	sub  a                                           ; $7b55: $97
	and  a                                           ; $7b56: $a7
	adc  d                                           ; $7b57: $8a
	ld   a, b                                        ; $7b58: $78
	ld   a, b                                        ; $7b59: $78
	ld   a, c                                        ; $7b5a: $79
	sbc  b                                           ; $7b5b: $98
	add  a                                           ; $7b5c: $87
	sub  a                                           ; $7b5d: $97
	ld   a, c                                        ; $7b5e: $79
	add  a                                           ; $7b5f: $87
	sub  a                                           ; $7b60: $97
	adc  b                                           ; $7b61: $88
	ld   a, b                                        ; $7b62: $78
	adc  b                                           ; $7b63: $88
	ld   a, c                                        ; $7b64: $79
	sbc  b                                           ; $7b65: $98
	sub  a                                           ; $7b66: $97
	adc  b                                           ; $7b67: $88
	ld   a, c                                        ; $7b68: $79
	adc  b                                           ; $7b69: $88
	add  a                                           ; $7b6a: $87
	and  [hl]                                        ; $7b6b: $a6
	sub  a                                           ; $7b6c: $97
	sbc  c                                           ; $7b6d: $99
	ld   a, d                                        ; $7b6e: $7a
	ld   l, d                                        ; $7b6f: $6a
	ld   a, b                                        ; $7b70: $78
	add  a                                           ; $7b71: $87
	sub  [hl]                                        ; $7b72: $96
	sub  a                                           ; $7b73: $97
	adc  c                                           ; $7b74: $89
	ld   l, d                                        ; $7b75: $6a
	ld   a, c                                        ; $7b76: $79
	ld   a, b                                        ; $7b77: $78
	sub  [hl]                                        ; $7b78: $96
	sub  [hl]                                        ; $7b79: $96
	sbc  b                                           ; $7b7a: $98
	ld   a, c                                        ; $7b7b: $79
	ld   a, c                                        ; $7b7c: $79
	ld   a, b                                        ; $7b7d: $78
	ld   a, c                                        ; $7b7e: $79
	adc  b                                           ; $7b7f: $88
	ld   [hl], a                                     ; $7b80: $77
	sub  a                                           ; $7b81: $97
	sub  a                                           ; $7b82: $97
	ld   a, c                                        ; $7b83: $79
	ld   [hl], a                                     ; $7b84: $77
	sub  a                                           ; $7b85: $97
	sbc  b                                           ; $7b86: $98
	ld   a, c                                        ; $7b87: $79
	adc  b                                           ; $7b88: $88
	ld   a, b                                        ; $7b89: $78
	sbc  c                                           ; $7b8a: $99
	add  a                                           ; $7b8b: $87
	sbc  b                                           ; $7b8c: $98
	adc  b                                           ; $7b8d: $88
	ld   a, b                                        ; $7b8e: $78
	add  a                                           ; $7b8f: $87
	sub  a                                           ; $7b90: $97
	adc  c                                           ; $7b91: $89
	adc  b                                           ; $7b92: $88
	ld   a, c                                        ; $7b93: $79
	adc  b                                           ; $7b94: $88
	add  a                                           ; $7b95: $87
	ld   a, c                                        ; $7b96: $79
	sub  a                                           ; $7b97: $97
	add  a                                           ; $7b98: $87
	sub  a                                           ; $7b99: $97
	ld   a, b                                        ; $7b9a: $78
	ld   a, c                                        ; $7b9b: $79
	ld   a, b                                        ; $7b9c: $78
	ld   [hl], a                                     ; $7b9d: $77
	and  [hl]                                        ; $7b9e: $a6
	and  [hl]                                        ; $7b9f: $a6
	adc  c                                           ; $7ba0: $89
	ld   l, e                                        ; $7ba1: $6b
	ld   l, b                                        ; $7ba2: $68
	adc  b                                           ; $7ba3: $88
	sub  a                                           ; $7ba4: $97
	adc  c                                           ; $7ba5: $89
	add  a                                           ; $7ba6: $87
	sbc  b                                           ; $7ba7: $98
	add  a                                           ; $7ba8: $87
	sub  a                                           ; $7ba9: $97
	sbc  c                                           ; $7baa: $99
	ld   l, c                                        ; $7bab: $69
	ld   l, c                                        ; $7bac: $69
	sbc  c                                           ; $7bad: $99
	add  a                                           ; $7bae: $87
	sub  a                                           ; $7baf: $97
	sub  a                                           ; $7bb0: $97
	ld   a, c                                        ; $7bb1: $79
	adc  b                                           ; $7bb2: $88
	ld   [hl], a                                     ; $7bb3: $77
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	ld   a, c                                        ; $7bb6: $79
	sub  [hl]                                        ; $7bb7: $96
	and  [hl]                                        ; $7bb8: $a6
	xor  b                                           ; $7bb9: $a8
	ld   a, c                                        ; $7bba: $79
	ld   l, d                                        ; $7bbb: $6a
	ld   a, b                                        ; $7bbc: $78
	ld   [hl], a                                     ; $7bbd: $77
	sub  a                                           ; $7bbe: $97
	add  a                                           ; $7bbf: $87
	add  a                                           ; $7bc0: $87
	and  [hl]                                        ; $7bc1: $a6
	add  a                                           ; $7bc2: $87
	sbc  d                                           ; $7bc3: $9a
	ld   l, d                                        ; $7bc4: $6a
	ld   a, c                                        ; $7bc5: $79
	ld   l, c                                        ; $7bc6: $69
	sub  [hl]                                        ; $7bc7: $96
	and  [hl]                                        ; $7bc8: $a6
	sub  a                                           ; $7bc9: $97
	sub  a                                           ; $7bca: $97
	ld   a, d                                        ; $7bcb: $7a
	ld   l, c                                        ; $7bcc: $69
	ld   a, b                                        ; $7bcd: $78
	sub  a                                           ; $7bce: $97
	sub  a                                           ; $7bcf: $97
	adc  b                                           ; $7bd0: $88
	ld   [hl], a                                     ; $7bd1: $77
	sbc  b                                           ; $7bd2: $98
	ld   a, b                                        ; $7bd3: $78
	adc  b                                           ; $7bd4: $88
	adc  b                                           ; $7bd5: $88
	adc  b                                           ; $7bd6: $88
	ld   a, c                                        ; $7bd7: $79
	adc  b                                           ; $7bd8: $88
	adc  b                                           ; $7bd9: $88
	add  a                                           ; $7bda: $87
	sub  a                                           ; $7bdb: $97
	adc  b                                           ; $7bdc: $88
	ld   a, c                                        ; $7bdd: $79
	ld   l, b                                        ; $7bde: $68
	add  a                                           ; $7bdf: $87
	sub  a                                           ; $7be0: $97
	adc  c                                           ; $7be1: $89
	sub  a                                           ; $7be2: $97
	ld   a, b                                        ; $7be3: $78
	adc  b                                           ; $7be4: $88
	ld   a, b                                        ; $7be5: $78
	ld   [hl], a                                     ; $7be6: $77
	add  a                                           ; $7be7: $87
	sbc  b                                           ; $7be8: $98
	add  a                                           ; $7be9: $87
	sbc  b                                           ; $7bea: $98
	ld   l, d                                        ; $7beb: $6a
	ld   a, b                                        ; $7bec: $78
	ld   a, b                                        ; $7bed: $78
	ld   a, c                                        ; $7bee: $79
	sub  a                                           ; $7bef: $97
	sub  a                                           ; $7bf0: $97
	add  [hl]                                        ; $7bf1: $86
	sbc  b                                           ; $7bf2: $98
	sbc  b                                           ; $7bf3: $98
	ld   l, d                                        ; $7bf4: $6a
	ld   [hl], a                                     ; $7bf5: $77
	add  a                                           ; $7bf6: $87
	sub  a                                           ; $7bf7: $97
	add  a                                           ; $7bf8: $87
	add  a                                           ; $7bf9: $87
	ld   a, d                                        ; $7bfa: $7a
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	halt                                             ; $7bfd: $76
	sbc  c                                           ; $7bfe: $99
	sub  a                                           ; $7bff: $97
	adc  b                                           ; $7c00: $88
	ld   a, c                                        ; $7c01: $79
	ld   a, c                                        ; $7c02: $79
	ld   a, b                                        ; $7c03: $78
	adc  c                                           ; $7c04: $89
	sub  [hl]                                        ; $7c05: $96
	and  l                                           ; $7c06: $a5
	and  a                                           ; $7c07: $a7
	sub  a                                           ; $7c08: $97
	ld   a, d                                        ; $7c09: $7a
	ld   l, e                                        ; $7c0a: $6b
	ld   e, d                                        ; $7c0b: $5a
	ld   l, c                                        ; $7c0c: $69
	sub  l                                           ; $7c0d: $95
	or   l                                           ; $7c0e: $b5
	and  [hl]                                        ; $7c0f: $a6
	sbc  b                                           ; $7c10: $98
	ld   a, d                                        ; $7c11: $7a
	ld   l, d                                        ; $7c12: $6a
	ld   e, h                                        ; $7c13: $5c
	ld   e, b                                        ; $7c14: $58
	and  [hl]                                        ; $7c15: $a6
	and  l                                           ; $7c16: $a5
	and  a                                           ; $7c17: $a7
	adc  b                                           ; $7c18: $88
	ld   a, c                                        ; $7c19: $79
	ld   l, c                                        ; $7c1a: $69
	ld   l, d                                        ; $7c1b: $6a
	add  a                                           ; $7c1c: $87
	and  [hl]                                        ; $7c1d: $a6
	sub  a                                           ; $7c1e: $97
	add  [hl]                                        ; $7c1f: $86
	and  a                                           ; $7c20: $a7
	ld   e, h                                        ; $7c21: $5c
	ld   c, h                                        ; $7c22: $4c
	ld   [hl], a                                     ; $7c23: $77
	sub  [hl]                                        ; $7c24: $96
	and  e                                           ; $7c25: $a3
	and  a                                           ; $7c26: $a7
	sbc  e                                           ; $7c27: $9b
	ld   c, h                                        ; $7c28: $4c
	ld   h, [hl]                                     ; $7c29: $66
	sub  a                                           ; $7c2a: $97
	sub  a                                           ; $7c2b: $97
	and  a                                           ; $7c2c: $a7
	and  a                                           ; $7c2d: $a7
	ld   a, b                                        ; $7c2e: $78
	ld   a, d                                        ; $7c2f: $7a
	ld   a, e                                        ; $7c30: $7b
	ld   l, d                                        ; $7c31: $6a
	halt                                             ; $7c32: $76
	sub  l                                           ; $7c33: $95
	or   [hl]                                        ; $7c34: $b6
	adc  c                                           ; $7c35: $89
	ld   a, b                                        ; $7c36: $78
	ld   l, d                                        ; $7c37: $6a
	ld   l, c                                        ; $7c38: $69
	add  a                                           ; $7c39: $87
	sbc  c                                           ; $7c3a: $99
	ld   [hl], a                                     ; $7c3b: $77
	or   [hl]                                        ; $7c3c: $b6
	and  a                                           ; $7c3d: $a7
	ld   a, d                                        ; $7c3e: $7a
	ld   [hl], a                                     ; $7c3f: $77
	adc  c                                           ; $7c40: $89
	ld   e, d                                        ; $7c41: $5a
	ld   a, b                                        ; $7c42: $78
	sub  [hl]                                        ; $7c43: $96
	and  a                                           ; $7c44: $a7
	sbc  b                                           ; $7c45: $98
	ld   a, d                                        ; $7c46: $7a
	ld   l, b                                        ; $7c47: $68
	sub  [hl]                                        ; $7c48: $96
	sub  [hl]                                        ; $7c49: $96
	sbc  b                                           ; $7c4a: $98
	adc  d                                           ; $7c4b: $8a
	ld   l, c                                        ; $7c4c: $69
	ld   [hl], a                                     ; $7c4d: $77
	ld   [hl], a                                     ; $7c4e: $77
	sub  a                                           ; $7c4f: $97
	sub  a                                           ; $7c50: $97
	adc  b                                           ; $7c51: $88
	ld   a, c                                        ; $7c52: $79
	ld   a, d                                        ; $7c53: $7a
	ld   l, c                                        ; $7c54: $69
	and  [hl]                                        ; $7c55: $a6
	or   a                                           ; $7c56: $b7
	sub  a                                           ; $7c57: $97
	sbc  c                                           ; $7c58: $99
	ld   e, e                                        ; $7c59: $5b
	ld   l, b                                        ; $7c5a: $68
	adc  b                                           ; $7c5b: $88
	ld   l, c                                        ; $7c5c: $69
	sub  [hl]                                        ; $7c5d: $96
	sub  a                                           ; $7c5e: $97
	add  a                                           ; $7c5f: $87
	sub  a                                           ; $7c60: $97
	ld   a, c                                        ; $7c61: $79
	ld   a, c                                        ; $7c62: $79
	ld   a, b                                        ; $7c63: $78
	ld   a, b                                        ; $7c64: $78
	and  l                                           ; $7c65: $a5
	sbc  c                                           ; $7c66: $99
	adc  c                                           ; $7c67: $89
	ld   l, d                                        ; $7c68: $6a
	ld   a, b                                        ; $7c69: $78
	ld   a, b                                        ; $7c6a: $78
	and  a                                           ; $7c6b: $a7
	sub  [hl]                                        ; $7c6c: $96
	sbc  b                                           ; $7c6d: $98
	adc  b                                           ; $7c6e: $88
	ld   l, e                                        ; $7c6f: $6b
	ld   l, c                                        ; $7c70: $69
	sbc  b                                           ; $7c71: $98
	sub  a                                           ; $7c72: $97
	add  a                                           ; $7c73: $87
	and  a                                           ; $7c74: $a7
	add  a                                           ; $7c75: $87
	adc  c                                           ; $7c76: $89
	ld   l, e                                        ; $7c77: $6b
	ld   l, b                                        ; $7c78: $68
	add  [hl]                                        ; $7c79: $86
	and  [hl]                                        ; $7c7a: $a6
	sub  a                                           ; $7c7b: $97
	sbc  b                                           ; $7c7c: $98
	adc  e                                           ; $7c7d: $8b
	ld   e, c                                        ; $7c7e: $59
	adc  c                                           ; $7c7f: $89
	add  a                                           ; $7c80: $87
	or   a                                           ; $7c81: $b7
	sbc  b                                           ; $7c82: $98
	sub  a                                           ; $7c83: $97
	add  a                                           ; $7c84: $87
	ld   a, c                                        ; $7c85: $79
	ld   e, c                                        ; $7c86: $59
	ld   a, b                                        ; $7c87: $78
	ld   [hl], a                                     ; $7c88: $77
	and  [hl]                                        ; $7c89: $a6
	and  a                                           ; $7c8a: $a7
	sbc  c                                           ; $7c8b: $99
	ld   a, c                                        ; $7c8c: $79
	ld   a, d                                        ; $7c8d: $7a
	ld   l, b                                        ; $7c8e: $68
	and  a                                           ; $7c8f: $a7
	sub  l                                           ; $7c90: $95
	and  a                                           ; $7c91: $a7
	ld   a, b                                        ; $7c92: $78
	ld   a, c                                        ; $7c93: $79
	ld   l, e                                        ; $7c94: $6b
	ld   l, c                                        ; $7c95: $69
	sbc  b                                           ; $7c96: $98
	sub  l                                           ; $7c97: $95
	sbc  b                                           ; $7c98: $98
	adc  b                                           ; $7c99: $88
	ld   l, d                                        ; $7c9a: $6a
	sub  a                                           ; $7c9b: $97
	ld   a, c                                        ; $7c9c: $79
	add  a                                           ; $7c9d: $87
	add  a                                           ; $7c9e: $87
	sbc  b                                           ; $7c9f: $98
	add  a                                           ; $7ca0: $87
	ld   a, c                                        ; $7ca1: $79
	ld   a, c                                        ; $7ca2: $79
	ld   a, c                                        ; $7ca3: $79
	adc  b                                           ; $7ca4: $88
	add  [hl]                                        ; $7ca5: $86
	and  a                                           ; $7ca6: $a7
	ld   a, b                                        ; $7ca7: $78
	sbc  d                                           ; $7ca8: $9a
	ld   l, c                                        ; $7ca9: $69
	ld   a, c                                        ; $7caa: $79
	sub  [hl]                                        ; $7cab: $96
	adc  b                                           ; $7cac: $88
	sub  [hl]                                        ; $7cad: $96
	adc  b                                           ; $7cae: $88
	adc  c                                           ; $7caf: $89
	ld   e, e                                        ; $7cb0: $5b
	add  a                                           ; $7cb1: $87
	ld   [hl], a                                     ; $7cb2: $77
	and  [hl]                                        ; $7cb3: $a6
	sub  a                                           ; $7cb4: $97
	xor  b                                           ; $7cb5: $a8
	ld   e, c                                        ; $7cb6: $59
	sbc  b                                           ; $7cb7: $98
	ld   l, c                                        ; $7cb8: $69
	sub  [hl]                                        ; $7cb9: $96
	sub  a                                           ; $7cba: $97
	cp   c                                           ; $7cbb: $b9
	ld   l, b                                        ; $7cbc: $68
	sbc  d                                           ; $7cbd: $9a
	ld   c, c                                        ; $7cbe: $49
	add  a                                           ; $7cbf: $87
	add  [hl]                                        ; $7cc0: $86
	sbc  b                                           ; $7cc1: $98
	add  [hl]                                        ; $7cc2: $86
	sbc  d                                           ; $7cc3: $9a
	ld   a, d                                        ; $7cc4: $7a
	ld   a, b                                        ; $7cc5: $78
	sbc  b                                           ; $7cc6: $98
	halt                                             ; $7cc7: $76
	and  [hl]                                        ; $7cc8: $a6
	adc  b                                           ; $7cc9: $88
	ld   l, b                                        ; $7cca: $68
	ld   a, b                                        ; $7ccb: $78
	ld   a, d                                        ; $7ccc: $7a
	sub  a                                           ; $7ccd: $97
	sbc  c                                           ; $7cce: $99
	sub  a                                           ; $7ccf: $97
	sbc  c                                           ; $7cd0: $99
	adc  c                                           ; $7cd1: $89
	ld   l, c                                        ; $7cd2: $69
	ld   [hl], a                                     ; $7cd3: $77
	ld   h, a                                        ; $7cd4: $67
	halt                                             ; $7cd5: $76
	sub  [hl]                                        ; $7cd6: $96
	sbc  b                                           ; $7cd7: $98
	sbc  e                                           ; $7cd8: $9b
	sbc  e                                           ; $7cd9: $9b
	xor  h                                           ; $7cda: $ac
	adc  b                                           ; $7cdb: $88
	and  a                                           ; $7cdc: $a7
	ld   d, h                                        ; $7cdd: $54
	ld   d, h                                        ; $7cde: $54
	ld   d, e                                        ; $7cdf: $53
	daa                                              ; $7ce0: $27
	ld   [hl], h                                     ; $7ce1: $74
	sbc  h                                           ; $7ce2: $9c
	call $ffee                                       ; $7ce3: $cd $ee $ff
	cp   b                                           ; $7ce6: $b8
	ld   d, l                                        ; $7ce7: $55
	and  e                                           ; $7ce8: $a3
	dec  d                                           ; $7ce9: $15
	ld   b, c                                        ; $7cea: $41
	ld   [de], a                                     ; $7ceb: $12
	ld   [hl], l                                     ; $7cec: $75
	ld   a, e                                        ; $7ced: $7b
	rst  $38                                         ; $7cee: $ff
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	sub  a                                           ; $7cf1: $97
	cp   l                                           ; $7cf2: $bd
	ld   de, $11b1                                   ; $7cf3: $11 $b1 $11
	ld   [hl-], a                                    ; $7cf6: $32
	ld   d, $bf                                      ; $7cf7: $16 $bf
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	add  sp, -$34                                    ; $7cfb: $e8 $cc
	pop  bc                                          ; $7cfd: $c1
	ld   e, $11                                      ; $7cfe: $1e $11
	inc  d                                           ; $7d00: $14
	ld   de, $ff98                                   ; $7d01: $11 $98 $ff
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	adc  h                                           ; $7d06: $8c
	rl   c                                           ; $7d07: $cb $11
	pop  bc                                          ; $7d09: $c1
	ld   de, $1931                                   ; $7d0a: $11 $31 $19
	xor  a                                           ; $7d0d: $af
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
	jp   hl                                          ; $7d10: $e9


	xor  h                                           ; $7d11: $ac
	and  c                                           ; $7d12: $a1
	dec  e                                           ; $7d13: $1d
	ld   de, $1113                                   ; $7d14: $11 $13 $11
	xor  d                                           ; $7d17: $aa
	rst  $38                                         ; $7d18: $ff
	rst  $38                                         ; $7d19: $ff
	db   $fd                                         ; $7d1a: $fd
	sbc  e                                           ; $7d1b: $9b
	jp   z, $c111                                    ; $7d1c: $ca $11 $c1

	ld   de, $1b31                                   ; $7d1f: $11 $31 $1b
	xor  a                                           ; $7d22: $af
	rst  $38                                         ; $7d23: $ff
	rst  $38                                         ; $7d24: $ff
	jp   hl                                          ; $7d25: $e9


	cp   h                                           ; $7d26: $bc
	and  c                                           ; $7d27: $a1
	ld   a, [hl+]                                    ; $7d28: $2a
	ld   de, $1112                                   ; $7d29: $11 $12 $11
	cp   d                                           ; $7d2c: $ba
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	xor  e                                           ; $7d30: $ab
	reti                                             ; $7d31: $d9


	inc  de                                          ; $7d32: $13
	sub  c                                           ; $7d33: $91
	ld   de, $1a11                                   ; $7d34: $11 $11 $1a
	cp   a                                           ; $7d37: $bf
	rst  $38                                         ; $7d38: $ff
	rst  $38                                         ; $7d39: $ff
	ei                                               ; $7d3a: $fb
	cp   h                                           ; $7d3b: $bc
	sub  c                                           ; $7d3c: $91
	add  hl, sp                                      ; $7d3d: $39
	ld   de, $1111                                   ; $7d3e: $11 $11 $11
	cp   c                                           ; $7d41: $b9
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	cp   e                                           ; $7d45: $bb
	ret                                              ; $7d46: $c9


	inc  de                                          ; $7d47: $13
	add  c                                           ; $7d48: $81
	ld   de, $1b11                                   ; $7d49: $11 $11 $1b
	xor  a                                           ; $7d4c: $af
	rst  $38                                         ; $7d4d: $ff
	rst  $38                                         ; $7d4e: $ff
	ei                                               ; $7d4f: $fb
	xor  l                                           ; $7d50: $ad
	and  c                                           ; $7d51: $a1
	add  hl, de                                      ; $7d52: $19
	ld   de, $1111                                   ; $7d53: $11 $11 $11
	cp   c                                           ; $7d56: $b9
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	db   $db                                         ; $7d5a: $db
	jp   z, $9111                                    ; $7d5b: $ca $11 $91

	ld   de, $1a11                                   ; $7d5e: $11 $11 $1a
	adc  a                                           ; $7d61: $8f
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	db   $fd                                         ; $7d64: $fd
	set  2, c                                        ; $7d65: $cb $d1
	ld   a, [de]                                     ; $7d67: $1a
	ld   de, $1111                                   ; $7d68: $11 $11 $11
	or   a                                           ; $7d6b: $b7
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	db   $db                                         ; $7d6f: $db
	cp   h                                           ; $7d70: $bc
	ld   de, $1181                                   ; $7d71: $11 $81 $11
	ld   de, $8f19                                   ; $7d74: $11 $19 $8f
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	rst  $38                                         ; $7d79: $ff
	cp   d                                           ; $7d7a: $ba
	jp   nc, $1118                                   ; $7d7b: $d2 $18 $11

	ld   de, $7811                                   ; $7d7e: $11 $11 $78
	rst  $38                                         ; $7d81: $ff
	rst  $38                                         ; $7d82: $ff
	rst  $38                                         ; $7d83: $ff
	db   $fc                                         ; $7d84: $fc
	cp   h                                           ; $7d85: $bc
	ld   d, c                                        ; $7d86: $51
	ld   h, c                                        ; $7d87: $61
	ld   de, $1511                                   ; $7d88: $11 $11 $15
	adc  h                                           ; $7d8b: $8c
	rst  $38                                         ; $7d8c: $ff
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	jp   c, $11ca                                    ; $7d8f: $da $ca $11

	ld   b, c                                        ; $7d92: $41
	ld   de, $2a11                                   ; $7d93: $11 $11 $2a
	xor  a                                           ; $7d96: $af
	rst  $38                                         ; $7d97: $ff
	rst  $38                                         ; $7d98: $ff
	cp   $b9                                         ; $7d99: $fe $b9
	pop  bc                                          ; $7d9b: $c1
	ld   d, $11                                      ; $7d9c: $16 $11
	ld   de, $9811                                   ; $7d9e: $11 $11 $98
	rst  $38                                         ; $7da1: $ff
	rst  $38                                         ; $7da2: $ff
	rst  $38                                         ; $7da3: $ff
	db   $fc                                         ; $7da4: $fc
	adc  h                                           ; $7da5: $8c
	ld   b, c                                        ; $7da6: $41
	ld   d, c                                        ; $7da7: $51
	ld   de, $1811                                   ; $7da8: $11 $11 $18
	adc  [hl]                                        ; $7dab: $8e
	rst  $38                                         ; $7dac: $ff
	rst  $38                                         ; $7dad: $ff
	rst  $38                                         ; $7dae: $ff
	ld   a, [$119b]                                  ; $7daf: $fa $9b $11
	ld   sp, $1111                                   ; $7db2: $31 $11 $11
	add  hl, de                                      ; $7db5: $19
	xor  a                                           ; $7db6: $af
	rst  $38                                         ; $7db7: $ff
	rst  $38                                         ; $7db8: $ff
	rst  $38                                         ; $7db9: $ff
	ret  c                                           ; $7dba: $d8

	and  d                                           ; $7dbb: $a2
	inc  d                                           ; $7dbc: $14
	ld   de, $1111                                   ; $7dbd: $11 $11 $11
	ld   a, c                                        ; $7dc0: $79
	rst  $38                                         ; $7dc1: $ff
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	db   $fd                                         ; $7dc4: $fd
	xor  c                                           ; $7dc5: $a9
	add  c                                           ; $7dc6: $81
	ld   de, $1111                                   ; $7dc7: $11 $11 $11
	inc  de                                          ; $7dca: $13
	sbc  d                                           ; $7dcb: $9a
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	rst  $38                                         ; $7dce: $ff
	db   $fc                                         ; $7dcf: $fc
	adc  d                                           ; $7dd0: $8a
	ld   de, $1141                                   ; $7dd1: $11 $41 $11
	ld   de, $9f18                                   ; $7dd4: $11 $18 $9f
	rst  $38                                         ; $7dd7: $ff
	rst  $38                                         ; $7dd8: $ff
	rst  $38                                         ; $7dd9: $ff
	jp   c, $1189                                    ; $7dda: $da $89 $11

	ld   de, $1111                                   ; $7ddd: $11 $11 $11
	jr   c, @-$2f                                    ; $7de0: $38 $cf

	rst  $38                                         ; $7de2: $ff
	rst  $38                                         ; $7de3: $ff
	rst  $38                                         ; $7de4: $ff
	add  $c3                                         ; $7de5: $c6 $c3
	inc  de                                          ; $7de7: $13
	ld   de, $1111                                   ; $7de8: $11 $11 $11
	ld   l, b                                        ; $7deb: $68
	rst  $38                                         ; $7dec: $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	cp   $a8                                         ; $7def: $fe $a8
	sub  c                                           ; $7df1: $91
	ld   [de], a                                     ; $7df2: $12
	ld   de, $1111                                   ; $7df3: $11 $11 $11
	adc  d                                           ; $7df6: $8a
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	rst  $38                                         ; $7df9: $ff
	db   $fd                                         ; $7dfa: $fd
	adc  e                                           ; $7dfb: $8b
	ld   d, c                                        ; $7dfc: $51
	ld   hl, $1111                                   ; $7dfd: $21 $11 $11
	dec  d                                           ; $7e00: $15
	adc  [hl]                                        ; $7e01: $8e
	rst  $38                                         ; $7e02: $ff
	rst  $38                                         ; $7e03: $ff
	rst  $38                                         ; $7e04: $ff
	db   $fc                                         ; $7e05: $fc
	ld   a, h                                        ; $7e06: $7c
	ld   de, $1141                                   ; $7e07: $11 $41 $11
	ld   de, $9f17                                   ; $7e0a: $11 $17 $9f
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	ld   sp, hl                                      ; $7e10: $f9
	sbc  d                                           ; $7e11: $9a
	ld   de, $1111                                   ; $7e12: $11 $11 $11
	ld   de, $af27                                   ; $7e15: $11 $27 $af
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	rst  $38                                         ; $7e1a: $ff
	add  sp, -$49                                    ; $7e1b: $e8 $b7
	ld   [de], a                                     ; $7e1d: $12
	ld   de, $1111                                   ; $7e1e: $11 $11 $11
	scf                                              ; $7e21: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e22: $cf
	rst  $38                                         ; $7e23: $ff
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	ret  c                                           ; $7e26: $d8

	jp   $1113                                       ; $7e27: $c3 $13 $11


	ld   de, $5711                                   ; $7e2a: $11 $11 $57
	rst  $28                                         ; $7e2d: $ef
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	ret  z                                           ; $7e31: $c8

	or   c                                           ; $7e32: $b1
	inc  de                                          ; $7e33: $13
	ld   de, $1111                                   ; $7e34: $11 $11 $11
	ld   e, b                                        ; $7e37: $58
	rst  $28                                         ; $7e38: $ef
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	rst  $10                                         ; $7e3c: $d7
	or   d                                           ; $7e3d: $b2
	ld   [de], a                                     ; $7e3e: $12
	ld   de, $1111                                   ; $7e3f: $11 $11 $11
	ld   d, a                                        ; $7e42: $57
	rst  $38                                         ; $7e43: $ff
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	rst  $38                                         ; $7e46: $ff
	rst  ToBoot                                         ; $7e47: $c7
	and  e                                           ; $7e48: $a3
	ld   de, $1111                                   ; $7e49: $11 $11 $11
	ld   de, $df57                                   ; $7e4c: $11 $57 $df
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	rst  $38                                         ; $7e51: $ff
	rst  $10                                         ; $7e52: $d7
	sub  [hl]                                        ; $7e53: $96
	ld   de, $1111                                   ; $7e54: $11 $11 $11
	ld   de, $bf27                                   ; $7e57: $11 $27 $bf
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	ld   sp, hl                                      ; $7e5d: $f9
	sbc  c                                           ; $7e5e: $99
	ld   de, $1111                                   ; $7e5f: $11 $11 $11
	ld   de, $9f16                                   ; $7e62: $11 $16 $9f
	rst  $38                                         ; $7e65: $ff
	rst  $38                                         ; $7e66: $ff
	rst  $38                                         ; $7e67: $ff
	db   $fc                                         ; $7e68: $fc
	ld   a, d                                        ; $7e69: $7a
	ld   de, $1111                                   ; $7e6a: $11 $11 $11
	ld   de, $8e14                                   ; $7e6d: $11 $14 $8e
	rst  $38                                         ; $7e70: $ff
	rst  $38                                         ; $7e71: $ff
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	sbc  b                                           ; $7e74: $98
	sub  c                                           ; $7e75: $91
	ld   de, $1111                                   ; $7e76: $11 $11 $11
	ld   de, $ff79                                   ; $7e79: $11 $79 $ff
	rst  $38                                         ; $7e7c: $ff
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	add  $a3                                         ; $7e7f: $c6 $a3
	ld   de, $1111                                   ; $7e81: $11 $11 $11
	ld   de, $df37                                   ; $7e84: $11 $37 $df
	rst  $38                                         ; $7e87: $ff
	rst  $38                                         ; $7e88: $ff
	rst  $38                                         ; $7e89: $ff
	ei                                               ; $7e8a: $fb
	ld   a, b                                        ; $7e8b: $78
	ld   de, $1111                                   ; $7e8c: $11 $11 $11
	ld   de, $8f15                                   ; $7e8f: $11 $15 $8f
	rst  $38                                         ; $7e92: $ff
	rst  $38                                         ; $7e93: $ff
	rst  $38                                         ; $7e94: $ff
	rst  $38                                         ; $7e95: $ff
	and  [hl]                                        ; $7e96: $a6
	ld   [hl], c                                     ; $7e97: $71
	ld   de, $1111                                   ; $7e98: $11 $11 $11
	ld   de, $ff59                                   ; $7e9b: $11 $59 $ff
	rst  $38                                         ; $7e9e: $ff
	rst  $38                                         ; $7e9f: $ff
	rst  $38                                         ; $7ea0: $ff
	ld   a, [$1166]                                  ; $7ea1: $fa $66 $11
	ld   de, $1111                                   ; $7ea4: $11 $11 $11
	dec  d                                           ; $7ea7: $15
	sbc  [hl]                                        ; $7ea8: $9e
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	rst  $38                                         ; $7eab: $ff
	rst  $38                                         ; $7eac: $ff
	sub  $52                                         ; $7ead: $d6 $52
	ld   de, $1111                                   ; $7eaf: $11 $11 $11
	ld   de, $df39                                   ; $7eb2: $11 $39 $df
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	cp   $93                                         ; $7eb8: $fe $93
	ld   b, c                                        ; $7eba: $41
	ld   de, $1111                                   ; $7ebb: $11 $11 $11
	ld   de, $ff8a                                   ; $7ebe: $11 $8a $ff
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	db   $fd                                         ; $7ec4: $fd
	ld   b, h                                        ; $7ec5: $44
	ld   de, $1111                                   ; $7ec6: $11 $11 $11
	ld   de, $ad14                                   ; $7ec9: $11 $14 $ad
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	rst  $38                                         ; $7ece: $ff
	rst  $38                                         ; $7ecf: $ff
	db   $eb                                         ; $7ed0: $eb
	inc  hl                                          ; $7ed1: $23
	ld   de, $1111                                   ; $7ed2: $11 $11 $11
	ld   de, $bf17                                   ; $7ed5: $11 $17 $bf
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	ld   sp, hl                                      ; $7edc: $f9
	inc  de                                          ; $7edd: $13
	ld   de, $1111                                   ; $7ede: $11 $11 $11
	ld   de, $af18                                   ; $7ee1: $11 $18 $af
	rst  $38                                         ; $7ee4: $ff
	rst  $38                                         ; $7ee5: $ff
	rst  $38                                         ; $7ee6: $ff
	rst  $38                                         ; $7ee7: $ff
	ld   hl, sp+$01                                  ; $7ee8: $f8 $01
	ld   de, $1111                                   ; $7eea: $11 $11 $11
	ld   de, $cf17                                   ; $7eed: $11 $17 $cf
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	rst  $38                                         ; $7ef2: $ff
	rst  $38                                         ; $7ef3: $ff
	ld   sp, hl                                      ; $7ef4: $f9
	ld   de, $1111                                   ; $7ef5: $11 $11 $11
	ld   de, $1611                                   ; $7ef8: $11 $11 $16
	cp   a                                           ; $7efb: $bf
	rst  $38                                         ; $7efc: $ff
	rst  $38                                         ; $7efd: $ff
	rst  $38                                         ; $7efe: $ff
	rst  $38                                         ; $7eff: $ff
	db   $fc                                         ; $7f00: $fc
	ld   sp, $1111                                   ; $7f01: $31 $11 $11
	ld   de, $1111                                   ; $7f04: $11 $11 $11
	cp   [hl]                                        ; $7f07: $be
	rst  $38                                         ; $7f08: $ff
	rst  $38                                         ; $7f09: $ff
	rst  $38                                         ; $7f0a: $ff
	rst  $38                                         ; $7f0b: $ff
	db   $fd                                         ; $7f0c: $fd
	and  c                                           ; $7f0d: $a1
	ld   de, $1111                                   ; $7f0e: $11 $11 $11
	ld   de, $4d11                                   ; $7f11: $11 $11 $4d
	rst  $28                                         ; $7f14: $ef
	rst  $38                                         ; $7f15: $ff
	rst  $38                                         ; $7f16: $ff
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	or   a                                           ; $7f19: $b7
	ld   de, $1111                                   ; $7f1a: $11 $11 $11
	ld   de, $1411                                   ; $7f1d: $11 $11 $14
	rst  $38                                         ; $7f20: $ff
	rst  $38                                         ; $7f21: $ff
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	ei                                               ; $7f25: $fb
	ld   h, c                                        ; $7f26: $61
	ld   de, $1111                                   ; $7f27: $11 $11 $11
	ld   de, $4e11                                   ; $7f2a: $11 $11 $4e
	rst  $38                                         ; $7f2d: $ff
	rst  $38                                         ; $7f2e: $ff
	rst  $38                                         ; $7f2f: $ff
	rst  $38                                         ; $7f30: $ff
	rst  $38                                         ; $7f31: $ff
	cp   b                                           ; $7f32: $b8
	ld   de, $1111                                   ; $7f33: $11 $11 $11
	ld   de, $0211                                   ; $7f36: $11 $11 $02
	rst  $28                                         ; $7f39: $ef
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	db   $fc                                         ; $7f3e: $fc
	sub  c                                           ; $7f3f: $91
	ld   de, $1111                                   ; $7f40: $11 $11 $11
	ld   de, $2811                                   ; $7f43: $11 $11 $28
	rst  $38                                         ; $7f46: $ff
	rst  $38                                         ; $7f47: $ff
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	ld   a, [$1151]                                  ; $7f4b: $fa $51 $11
	ld   de, $1111                                   ; $7f4e: $11 $11 $11
	inc  de                                          ; $7f51: $13
	ld   c, l                                        ; $7f52: $4d
	rst  $38                                         ; $7f53: $ff
	rst  $38                                         ; $7f54: $ff
	rst  $38                                         ; $7f55: $ff
	rst  $38                                         ; $7f56: $ff
	rst  $38                                         ; $7f57: $ff
	jp   hl                                          ; $7f58: $e9


	ld   hl, $1111                                   ; $7f59: $21 $11 $11
	ld   de, $1411                                   ; $7f5c: $11 $11 $14
	ld   c, [hl]                                     ; $7f5f: $4e
	rst  $38                                         ; $7f60: $ff
	rst  $38                                         ; $7f61: $ff
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	rst  $38                                         ; $7f64: $ff
	add  sp, $11                                     ; $7f65: $e8 $11
	ld   de, $1111                                   ; $7f67: $11 $11 $11
	ld   de, $5d14                                   ; $7f6a: $11 $14 $5d
	rst  $38                                         ; $7f6d: $ff
	rst  $38                                         ; $7f6e: $ff
	rst  $38                                         ; $7f6f: $ff
	rst  $38                                         ; $7f70: $ff
	rst  $38                                         ; $7f71: $ff
	ld   sp, hl                                      ; $7f72: $f9
	ld   de, $1111                                   ; $7f73: $11 $11 $11
	ld   de, $1311                                   ; $7f76: $11 $11 $13
	ld   l, e                                        ; $7f79: $6b
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	rst  $38                                         ; $7f7c: $ff
	rst  $38                                         ; $7f7d: $ff
	rst  $38                                         ; $7f7e: $ff
	ei                                               ; $7f7f: $fb
	ld   hl, $1111                                   ; $7f80: $21 $11 $11
	ld   de, $1111                                   ; $7f83: $11 $11 $11
	ld   l, b                                        ; $7f86: $68
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	rst  $38                                         ; $7f8b: $ff
	db   $fd                                         ; $7f8c: $fd
	ld   d, c                                        ; $7f8d: $51
	ld   de, $1111                                   ; $7f8e: $11 $11 $11
	ld   de, $6811                                   ; $7f91: $11 $11 $68
	rst  $28                                         ; $7f94: $ef
	rst  $38                                         ; $7f95: $ff
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	sub  c                                           ; $7f9a: $91
	ld   de, $1111                                   ; $7f9b: $11 $11 $11
	ld   de, $0811                                   ; $7f9e: $11 $11 $08
	xor  a                                           ; $7fa1: $af
	rst  $38                                         ; $7fa2: $ff
	rst  $38                                         ; $7fa3: $ff
	rst  $38                                         ; $7fa4: $ff
	rst  $38                                         ; $7fa5: $ff
	rst  $38                                         ; $7fa6: $ff
	rst  $20                                         ; $7fa7: $e7
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $1311                                   ; $7fab: $11 $11 $13
	sbc  e                                           ; $7fae: $9b
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	db   $fc                                         ; $7fb4: $fc
	ld   d, c                                        ; $7fb5: $51
	ld   de, $1111                                   ; $7fb6: $11 $11 $11
	ld   de, $4b11                                   ; $7fb9: $11 $11 $4b
	rst  JumpTable                                         ; $7fbc: $df
	rst  $38                                         ; $7fbd: $ff
	rst  $38                                         ; $7fbe: $ff
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	rst  $38                                         ; $7fc1: $ff
	add  $11                                         ; $7fc2: $c6 $11
	ld   de, $1111                                   ; $7fc4: $11 $11 $11
	ld   de, $be13                                   ; $7fc7: $11 $13 $be
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	rst  $38                                         ; $7fcd: $ff
	rst  $38                                         ; $7fce: $ff
	db   $fc                                         ; $7fcf: $fc
	ld   h, c                                        ; $7fd0: $61
	ld   de, $1111                                   ; $7fd1: $11 $11 $11
	ld   de, $2911                                   ; $7fd4: $11 $11 $29
	rst  $28                                         ; $7fd7: $ef
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	rst  $38                                         ; $7fdc: $ff
	reti                                             ; $7fdd: $d9


	ld   sp, $1111                                   ; $7fde: $31 $11 $11
	ld   de, $1111                                   ; $7fe1: $11 $11 $11
	ld   l, h                                        ; $7fe4: $6c
	rst  $38                                         ; $7fe5: $ff
	rst  $38                                         ; $7fe6: $ff
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	rst  $38                                         ; $7fea: $ff
	call nz, $1101                                   ; $7feb: $c4 $01 $11
	ld   de, $1111                                   ; $7fee: $11 $11 $11
	ld   de, $ff9f                                   ; $7ff1: $11 $9f $ff
	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  $38                                         ; $7ff7: $ff
	rst  $38                                         ; $7ff8: $ff
	sub  e                                           ; $7ff9: $93
	ld   de, $1111                                   ; $7ffa: $11 $11 $11
	ld   de, $1112                                   ; $7ffd: $11 $12 $11
