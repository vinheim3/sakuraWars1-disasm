; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f5", ROMX[$4000], BANK[$f5]

	rst  $38                                         ; $4000: $ff
	rst  $38                                         ; $4001: $ff
	sub  a                                           ; $4002: $97
	and  a                                           ; $4003: $a7
	xor  e                                           ; $4004: $ab
	ld   b, c                                        ; $4005: $41
	ld   de, $1911                                   ; $4006: $11 $11 $19
	rst  $38                                         ; $4009: $ff
	rst  $38                                         ; $400a: $ff
	db   $fc                                         ; $400b: $fc
	add  c                                           ; $400c: $81
	ld   de, $5f11                                   ; $400d: $11 $11 $5f
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	call nz, Call_0f5_7b69                           ; $4013: $c4 $69 $7b
	or   d                                           ; $4016: $b2
	ld   de, $1111                                   ; $4017: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $401a: $cf
	rst  $38                                         ; $401b: $ff
	rst  $38                                         ; $401c: $ff
	add  l                                           ; $401d: $85
	ld   de, $1b11                                   ; $401e: $11 $11 $1b
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	db   $fc                                         ; $4023: $fc
	rst  $20                                         ; $4024: $e7
	daa                                              ; $4025: $27
	xor  c                                           ; $4026: $a9
	db   $eb                                         ; $4027: $eb
	ld   de, $1111                                   ; $4028: $11 $11 $11
	rra                                              ; $402b: $1f
	rst  $38                                         ; $402c: $ff
	rst  $38                                         ; $402d: $ff
	rst  $30                                         ; $402e: $f7
	ld   sp, $1311                                   ; $402f: $31 $11 $13
	rst  $28                                         ; $4032: $ef
	rst  $38                                         ; $4033: $ff
	rst  $38                                         ; $4034: $ff
	xor  h                                           ; $4035: $ac
	ld   h, d                                        ; $4036: $62
	adc  e                                           ; $4037: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4038: $cf
	jp   nz, $1111                                   ; $4039: $c2 $11 $11

	ld   de, $ffef                                   ; $403c: $11 $ef $ff
	rst  $38                                         ; $403f: $ff
	ld   d, d                                        ; $4040: $52
	ld   de, $5f11                                   ; $4041: $11 $11 $5f
	rst  $38                                         ; $4044: $ff
	rst  $38                                         ; $4045: $ff
	jp   c, $2ab6                                    ; $4046: $da $b6 $2a

	db   $dd                                         ; $4049: $dd
	ei                                               ; $404a: $fb
	ld   hl, $1111                                   ; $404b: $21 $11 $11
	rra                                              ; $404e: $1f
	rst  $38                                         ; $404f: $ff
	rst  $38                                         ; $4050: $ff
	push af                                          ; $4051: $f5
	ld   de, $2511                                   ; $4052: $11 $11 $25
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	cp   $8a                                         ; $4057: $fe $8a
	ld   h, d                                        ; $4059: $62
	sbc  a                                           ; $405a: $9f
	rst  JumpTable                                         ; $405b: $df
	jp   nc, $1111                                   ; $405c: $d2 $11 $11

	ld   de, $ffbf                                   ; $405f: $11 $bf $ff
	rst  $38                                         ; $4062: $ff
	ld   d, d                                        ; $4063: $52
	ld   de, $5f11                                   ; $4064: $11 $11 $5f
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	ld   sp, hl                                      ; $4069: $f9
	add  a                                           ; $406a: $87
	daa                                              ; $406b: $27
	db   $ed                                         ; $406c: $ed
	db   $fd                                         ; $406d: $fd
	ld   b, c                                        ; $406e: $41
	ld   de, $1b11                                   ; $406f: $11 $11 $1b
	rst  $38                                         ; $4072: $ff
	rst  $38                                         ; $4073: $ff
	or   $11                                         ; $4074: $f6 $11
	ld   de, $df14                                   ; $4076: $11 $14 $df
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	sub  [hl]                                        ; $407b: $96
	ld   [hl], d                                     ; $407c: $72
	ld   c, l                                        ; $407d: $4d
	rst  $38                                         ; $407e: $ff
	rst  $20                                         ; $407f: $e7
	ld   de, $1111                                   ; $4080: $11 $11 $11
	ld   l, a                                        ; $4083: $6f
	rst  $38                                         ; $4084: $ff
	rst  $38                                         ; $4085: $ff
	sub  d                                           ; $4086: $92
	ld   de, $3a11                                   ; $4087: $11 $11 $3a
	rst  $38                                         ; $408a: $ff
	rst  $38                                         ; $408b: $ff
	db   $fc                                         ; $408c: $fc
	ld   h, [hl]                                     ; $408d: $66
	ld   [hl-], a                                    ; $408e: $32
	xor  a                                           ; $408f: $af
	rst  $28                                         ; $4090: $ef
	or   c                                           ; $4091: $b1
	ld   de, $1311                                   ; $4092: $11 $11 $13
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	ei                                               ; $4097: $fb
	ld   sp, $1211                                   ; $4098: $31 $11 $12
	sbc  a                                           ; $409b: $9f
	rst  $38                                         ; $409c: $ff
	rst  $38                                         ; $409d: $ff
	rst  $30                                         ; $409e: $f7
	ld   h, l                                        ; $409f: $65

jr_0f5_40a0:
	jr   z, jr_0f5_40a0                              ; $40a0: $28 $fe

	db   $ed                                         ; $40a2: $ed
	ld   b, c                                        ; $40a3: $41
	ld   de, $1f11                                   ; $40a4: $11 $11 $1f
	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	push af                                          ; $40a9: $f5
	ld   de, $1611                                   ; $40aa: $11 $11 $16
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	rst  $38                                         ; $40af: $ff
	and  [hl]                                        ; $40b0: $a6
	ld   h, d                                        ; $40b1: $62
	ld   c, l                                        ; $40b2: $4d
	cp   $e7                                         ; $40b3: $fe $e7
	ld   de, $1111                                   ; $40b5: $11 $11 $11
	sbc  a                                           ; $40b8: $9f
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	add  h                                           ; $40bb: $84
	ld   de, $3a11                                   ; $40bc: $11 $11 $3a
	rst  $38                                         ; $40bf: $ff
	rst  $38                                         ; $40c0: $ff
	cp   $87                                         ; $40c1: $fe $87
	ld   sp, $de9d                                   ; $40c3: $31 $9d $de
	or   d                                           ; $40c6: $b2
	ld   de, $1411                                   ; $40c7: $11 $11 $14
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	db   $fc                                         ; $40cc: $fc
	ld   d, c                                        ; $40cd: $51
	ld   de, $5f11                                   ; $40ce: $11 $11 $5f
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	db   $fc                                         ; $40d3: $fc
	add  [hl]                                        ; $40d4: $86
	inc  h                                           ; $40d5: $24
	cp   h                                           ; $40d6: $bc
	cp   l                                           ; $40d7: $bd
	ld   [hl], c                                     ; $40d8: $71
	ld   de, $1811                                   ; $40d9: $11 $11 $18
	rst  $38                                         ; $40dc: $ff
	rst  $38                                         ; $40dd: $ff
	ld   sp, hl                                      ; $40de: $f9
	ld   d, c                                        ; $40df: $51
	ld   de, $7f11                                   ; $40e0: $11 $11 $7f
	rst  $38                                         ; $40e3: $ff
	rst  $38                                         ; $40e4: $ff
	db   $fd                                         ; $40e5: $fd
	and  a                                           ; $40e6: $a7
	ld   h, $cb                                      ; $40e7: $26 $cb
	cp   d                                           ; $40e9: $ba
	ld   d, c                                        ; $40ea: $51
	ld   de, $1c11                                   ; $40eb: $11 $11 $1c
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	ld   hl, sp+$61                                  ; $40f0: $f8 $61
	ld   de, $8f11                                   ; $40f2: $11 $11 $8f
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	db   $fd                                         ; $40f7: $fd
	or   a                                           ; $40f8: $b7
	ld   b, a                                        ; $40f9: $47
	jp   z, Jump_0f5_4199                            ; $40fa: $ca $99 $41

	ld   de, $2e11                                   ; $40fd: $11 $11 $2e
	rst  $38                                         ; $4100: $ff
	rst  $38                                         ; $4101: $ff
	ei                                               ; $4102: $fb
	add  d                                           ; $4103: $82
	ld   [de], a                                     ; $4104: $12
	ld   de, $ff5c                                   ; $4105: $11 $5c $ff
	rst  $38                                         ; $4108: $ff
	rst  $38                                         ; $4109: $ff
	jp   hl                                          ; $410a: $e9


	ld   e, c                                        ; $410b: $59
	cp   c                                           ; $410c: $b9
	halt                                             ; $410d: $76
	ld   hl, $1111                                   ; $410e: $21 $11 $11
	dec  a                                           ; $4111: $3d
	rst  $38                                         ; $4112: $ff
	rst  $38                                         ; $4113: $ff
	db   $fc                                         ; $4114: $fc
	and  l                                           ; $4115: $a5
	ld   b, h                                        ; $4116: $44
	ld   de, $df28                                   ; $4117: $11 $28 $df
	rst  $28                                         ; $411a: $ef
	rst  $38                                         ; $411b: $ff
	cp   $aa                                         ; $411c: $fe $aa
	jp   z, $3165                                    ; $411e: $ca $65 $31

	ld   de, $1811                                   ; $4121: $11 $11 $18
	rst  $28                                         ; $4124: $ef
	rst  $38                                         ; $4125: $ff
	rst  $38                                         ; $4126: $ff
	jp   c, Jump_0f5_5188                            ; $4127: $da $88 $51

	ld   [de], a                                     ; $412a: $12
	ld   a, e                                        ; $412b: $7b
	xor  d                                           ; $412c: $aa
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	db   $fd                                         ; $412f: $fd
	cp   $b7                                         ; $4130: $fe $b7
	ld   sp, $1111                                   ; $4132: $31 $11 $11
	ld   de, $bf8c                                   ; $4135: $11 $8c $bf
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	sbc  $e9                                         ; $413a: $de $e9
	ld   sp, $6425                                   ; $413c: $31 $25 $64
	ld   e, c                                        ; $413f: $59
	rst  $28                                         ; $4140: $ef
	rst  $38                                         ; $4141: $ff
	rst  $38                                         ; $4142: $ff
	db   $fd                                         ; $4143: $fd
	add  l                                           ; $4144: $85
	ld   hl, $1111                                   ; $4145: $21 $11 $11
	inc  d                                           ; $4148: $14
	ld   d, l                                        ; $4149: $55
	cp   a                                           ; $414a: $bf
	rst  $38                                         ; $414b: $ff
	rst  $38                                         ; $414c: $ff
	rst  $38                                         ; $414d: $ff
	ld   [$7665], a                                  ; $414e: $ea $65 $76
	inc  hl                                          ; $4151: $23
	ld   l, c                                        ; $4152: $69
	cp   h                                           ; $4153: $bc
	adc  $ff                                         ; $4154: $ce $ff
	db   $eb                                         ; $4156: $eb
	ld   [hl], h                                     ; $4157: $74
	ld   de, $1111                                   ; $4158: $11 $11 $11
	ld   [hl-], a                                    ; $415b: $32
	add  hl, sp                                      ; $415c: $39
	rst  $28                                         ; $415d: $ef
	rst  $38                                         ; $415e: $ff
	rst  $38                                         ; $415f: $ff
	rst  $38                                         ; $4160: $ff
	jp   z, $739a                                    ; $4161: $ca $9a $73

	ld   [hl], $89                                   ; $4164: $36 $89
	sbc  c                                           ; $4166: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4167: $cf
	db   $ec                                         ; $4168: $ec
	sub  [hl]                                        ; $4169: $96
	ld   hl, $1111                                   ; $416a: $21 $11 $11
	ld   [hl+], a                                    ; $416d: $22
	ld   h, $df                                      ; $416e: $26 $df
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	rst  $38                                         ; $4172: $ff
	db   $db                                         ; $4173: $db
	sbc  d                                           ; $4174: $9a
	sub  h                                           ; $4175: $94
	dec  [hl]                                        ; $4176: $35
	adc  c                                           ; $4177: $89
	adc  b                                           ; $4178: $88
	cp   [hl]                                        ; $4179: $be
	db   $fc                                         ; $417a: $fc
	sub  a                                           ; $417b: $97
	ld   sp, $1111                                   ; $417c: $31 $11 $11
	ld   de, $df16                                   ; $417f: $11 $16 $df
	rst  $38                                         ; $4182: $ff
	rst  $38                                         ; $4183: $ff
	rst  $38                                         ; $4184: $ff
	cp   c                                           ; $4185: $b9
	adc  b                                           ; $4186: $88
	ld   h, c                                        ; $4187: $61

Call_0f5_4188:
	inc  d                                           ; $4188: $14
	sbc  d                                           ; $4189: $9a
	xor  d                                           ; $418a: $aa
	rst  $28                                         ; $418b: $ef
	db   $fd                                         ; $418c: $fd
	cp   b                                           ; $418d: $b8
	ld   d, c                                        ; $418e: $51
	ld   de, $1111                                   ; $418f: $11 $11 $11
	dec  d                                           ; $4192: $15
	rst  $38                                         ; $4193: $ff
	rst  $38                                         ; $4194: $ff
	rst  $38                                         ; $4195: $ff
	rst  $38                                         ; $4196: $ff
	or   a                                           ; $4197: $b7
	ld   h, l                                        ; $4198: $65

Jump_0f5_4199:
	ld   b, c                                        ; $4199: $41
	inc  de                                          ; $419a: $13
	adc  e                                           ; $419b: $8b
	cp   h                                           ; $419c: $bc
	rst  $38                                         ; $419d: $ff
	rst  $38                                         ; $419e: $ff
	call c, $1191                                    ; $419f: $dc $91 $11
	ld   de, $0411                                   ; $41a2: $11 $11 $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a5: $cf
	rst  $38                                         ; $41a6: $ff
	rst  $38                                         ; $41a7: $ff
	rst  $38                                         ; $41a8: $ff
	sub  $31                                         ; $41a9: $d6 $31
	ld   de, $6a11                                   ; $41ab: $11 $11 $6a
	rst  $28                                         ; $41ae: $ef
	rst  $38                                         ; $41af: $ff
	rst  $38                                         ; $41b0: $ff
	cp   $b5                                         ; $41b1: $fe $b5
	ld   de, $1111                                   ; $41b3: $11 $11 $11
	inc  d                                           ; $41b6: $14
	sbc  a                                           ; $41b7: $9f
	rst  $38                                         ; $41b8: $ff
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	ld   hl, sp+$21                                  ; $41bb: $f8 $21
	ld   de, $2a11                                   ; $41bd: $11 $11 $2a
	rst  $38                                         ; $41c0: $ff
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	db   $fd                                         ; $41c3: $fd
	rst  ToBoot                                         ; $41c4: $c7
	ld   de, $1111                                   ; $41c5: $11 $11 $11
	inc  de                                          ; $41c8: $13
	sbc  e                                           ; $41c9: $9b
	rst  $38                                         ; $41ca: $ff
	rst  $38                                         ; $41cb: $ff
	rst  $38                                         ; $41cc: $ff
	cp   $31                                         ; $41cd: $fe $31
	ld   de, $1511                                   ; $41cf: $11 $11 $15
	rst  $38                                         ; $41d2: $ff
	rst  $38                                         ; $41d3: $ff
	rst  $38                                         ; $41d4: $ff
	rst  $38                                         ; $41d5: $ff
	cp   c                                           ; $41d6: $b9
	ld   h, c                                        ; $41d7: $61
	ld   de, $1111                                   ; $41d8: $11 $11 $11
	ld   a, h                                        ; $41db: $7c
	rst  JumpTable                                         ; $41dc: $df
	rst  $38                                         ; $41dd: $ff
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	and  c                                           ; $41e0: $a1
	ld   de, $2511                                   ; $41e1: $11 $11 $25
	sbc  a                                           ; $41e4: $9f
	rst  $38                                         ; $41e5: $ff
	rst  $38                                         ; $41e6: $ff
	rst  $38                                         ; $41e7: $ff
	ld   sp, hl                                      ; $41e8: $f9
	ld   [hl], h                                     ; $41e9: $74
	ld   de, $1111                                   ; $41ea: $11 $11 $11
	add  hl, de                                      ; $41ed: $19
	rst  $38                                         ; $41ee: $ff
	rst  $38                                         ; $41ef: $ff
	rst  $38                                         ; $41f0: $ff
	rst  $38                                         ; $41f1: $ff
	or   a                                           ; $41f2: $b7
	ld   de, $1311                                   ; $41f3: $11 $11 $13
	sbc  h                                           ; $41f6: $9c
	rst  $38                                         ; $41f7: $ff
	rst  $38                                         ; $41f8: $ff
	rst  $38                                         ; $41f9: $ff
	db   $fd                                         ; $41fa: $fd
	add  [hl]                                        ; $41fb: $86
	ld   sp, $1111                                   ; $41fc: $31 $11 $11
	ld   de, $ffaf                                   ; $41ff: $11 $af $ff
	rst  $38                                         ; $4202: $ff
	rst  $38                                         ; $4203: $ff
	jp   hl                                          ; $4204: $e9


	ld   h, c                                        ; $4205: $61
	ld   de, $3b11                                   ; $4206: $11 $11 $3b
	rst  $38                                         ; $4209: $ff
	rst  $38                                         ; $420a: $ff
	rst  $38                                         ; $420b: $ff
	db   $fd                                         ; $420c: $fd
	cp   b                                           ; $420d: $b8
	ld   d, e                                        ; $420e: $53
	ld   de, $1111                                   ; $420f: $11 $11 $11
	add  hl, bc                                      ; $4212: $09
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	db   $fd                                         ; $4216: $fd
	sub  h                                           ; $4217: $94
	ld   de, $1211                                   ; $4218: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $421b: $cf
	rst  $38                                         ; $421c: $ff
	rst  $38                                         ; $421d: $ff
	rst  $38                                         ; $421e: $ff
	xor  d                                           ; $421f: $aa
	and  l                                           ; $4220: $a5
	ld   de, $1111                                   ; $4221: $11 $11 $11
	ld   de, $ffaf                                   ; $4224: $11 $af $ff
	rst  $38                                         ; $4227: $ff
	cp   $d9                                         ; $4228: $fe $d9
	ld   b, c                                        ; $422a: $41
	ld   de, $2c11                                   ; $422b: $11 $11 $2c
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	ei                                               ; $4231: $fb
	adc  c                                           ; $4232: $89
	ld   h, d                                        ; $4233: $62
	ld   de, $1111                                   ; $4234: $11 $11 $11
	ld   a, [de]                                     ; $4237: $1a
	rst  $38                                         ; $4238: $ff
	rst  $38                                         ; $4239: $ff
	rst  $38                                         ; $423a: $ff
	db   $ed                                         ; $423b: $ed
	sub  h                                           ; $423c: $94
	ld   de, $1211                                   ; $423d: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4240: $cf
	rst  $38                                         ; $4241: $ff
	rst  $38                                         ; $4242: $ff
	rst  $38                                         ; $4243: $ff
	xor  b                                           ; $4244: $a8
	and  [hl]                                        ; $4245: $a6
	ld   de, $1111                                   ; $4246: $11 $11 $11
	ld   de, $ff8f                                   ; $4249: $11 $8f $ff
	rst  $38                                         ; $424c: $ff
	cp   $d9                                         ; $424d: $fe $d9
	ld   b, c                                        ; $424f: $41
	ld   de, $3d01                                   ; $4250: $11 $01 $3d
	rst  $38                                         ; $4253: $ff
	rst  $38                                         ; $4254: $ff
	rst  $38                                         ; $4255: $ff
	ld   a, [$6289]                                  ; $4256: $fa $89 $62
	ld   de, $1111                                   ; $4259: $11 $11 $11
	add  hl, de                                      ; $425c: $19
	rst  $28                                         ; $425d: $ef
	rst  $38                                         ; $425e: $ff
	rst  $38                                         ; $425f: $ff
	db   $dd                                         ; $4260: $dd
	add  e                                           ; $4261: $83
	ld   de, $1211                                   ; $4262: $11 $11 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4265: $cf
	rst  $38                                         ; $4266: $ff
	rst  $38                                         ; $4267: $ff
	rst  $38                                         ; $4268: $ff
	sub  a                                           ; $4269: $97
	sub  [hl]                                        ; $426a: $96
	ld   de, $1111                                   ; $426b: $11 $11 $11
	ld   de, $ff7d                                   ; $426e: $11 $7d $ff
	rst  $38                                         ; $4271: $ff
	db   $fc                                         ; $4272: $fc
	jp   hl                                          ; $4273: $e9


	ld   sp, $1111                                   ; $4274: $31 $11 $11
	ld   a, $ff                                      ; $4277: $3e $ff
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	ld   sp, hl                                      ; $427b: $f9
	adc  b                                           ; $427c: $88
	ld   h, d                                        ; $427d: $62
	ld   hl, $1111                                   ; $427e: $21 $11 $11
	dec  d                                           ; $4281: $15
	cp   a                                           ; $4282: $bf
	rst  $38                                         ; $4283: $ff
	rst  $38                                         ; $4284: $ff
	call $1193                                       ; $4285: $cd $93 $11
	ld   de, $ef24                                   ; $4288: $11 $24 $ef
	rst  $38                                         ; $428b: $ff
	rst  $38                                         ; $428c: $ff
	rst  $38                                         ; $428d: $ff
	sbc  b                                           ; $428e: $98
	sub  [hl]                                        ; $428f: $96
	ld   [hl-], a                                    ; $4290: $32
	ld   de, $1111                                   ; $4291: $11 $11 $11
	ld   e, h                                        ; $4294: $5c
	rst  $38                                         ; $4295: $ff
	rst  $38                                         ; $4296: $ff
	db   $fd                                         ; $4297: $fd
	ret  c                                           ; $4298: $d8

	ld   sp, $2211                                   ; $4299: $31 $11 $22
	ld   l, a                                        ; $429c: $6f
	rst  $38                                         ; $429d: $ff
	rst  $38                                         ; $429e: $ff
	rst  $38                                         ; $429f: $ff
	ld   sp, hl                                      ; $42a0: $f9
	adc  c                                           ; $42a1: $89
	ld   d, h                                        ; $42a2: $54
	ld   sp, $1111                                   ; $42a3: $31 $11 $11
	inc  d                                           ; $42a6: $14
	rst  JumpTable                                         ; $42a7: $df
	rst  $38                                         ; $42a8: $ff
	rst  $38                                         ; $42a9: $ff
	call c, $2152                                    ; $42aa: $dc $52 $21
	inc  de                                          ; $42ad: $13
	ld   e, d                                        ; $42ae: $5a
	rst  $38                                         ; $42af: $ff
	rst  $38                                         ; $42b0: $ff
	rst  $38                                         ; $42b1: $ff
	db   $fd                                         ; $42b2: $fd
	adc  b                                           ; $42b3: $88
	ld   [hl], l                                     ; $42b4: $75
	ld   d, d                                        ; $42b5: $52
	ld   de, $1111                                   ; $42b6: $11 $11 $11
	ld   e, a                                        ; $42b9: $5f
	rst  $38                                         ; $42ba: $ff
	rst  $38                                         ; $42bb: $ff
	cp   $a4                                         ; $42bc: $fe $a4
	ld   hl, $5911                                   ; $42be: $21 $11 $59
	sbc  $ff                                         ; $42c1: $de $ff
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	xor  c                                           ; $42c5: $a9
	add  [hl]                                        ; $42c6: $86
	ld   [hl], h                                     ; $42c7: $74
	ld   de, $1111                                   ; $42c8: $11 $11 $11
	ld   a, [de]                                     ; $42cb: $1a
	rst  $38                                         ; $42cc: $ff
	rst  $38                                         ; $42cd: $ff
	rst  $38                                         ; $42ce: $ff
	sub  $33                                         ; $42cf: $d6 $33
	ld   de, $ac49                                   ; $42d1: $11 $49 $ac
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	cp   $c9                                         ; $42d6: $fe $c9
	adc  c                                           ; $42d8: $89
	add  l                                           ; $42d9: $85
	ld   hl, $1111                                   ; $42da: $21 $11 $11
	inc  d                                           ; $42dd: $14
	rst  $38                                         ; $42de: $ff
	rst  $38                                         ; $42df: $ff
	rst  $38                                         ; $42e0: $ff
	ld   sp, hl                                      ; $42e1: $f9
	ld   b, e                                        ; $42e2: $43
	ld   de, $9b4a                                   ; $42e3: $11 $4a $9b
	rst  $38                                         ; $42e6: $ff
	rst  $38                                         ; $42e7: $ff
	db   $fd                                         ; $42e8: $fd
	jp   z, $8688                                    ; $42e9: $ca $88 $86

	ld   b, c                                        ; $42ec: $41
	ld   de, $1111                                   ; $42ed: $11 $11 $11
	xor  a                                           ; $42f0: $af
	rst  $38                                         ; $42f1: $ff
	rst  $38                                         ; $42f2: $ff
	ei                                               ; $42f3: $fb
	ld   d, d                                        ; $42f4: $52
	inc  hl                                          ; $42f5: $23
	ld   a, c                                        ; $42f6: $79
	adc  h                                           ; $42f7: $8c
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	cp   $ca                                         ; $42fa: $fe $ca
	sbc  e                                           ; $42fc: $9b
	add  [hl]                                        ; $42fd: $86
	ld   d, c                                        ; $42fe: $51
	ld   de, $1111                                   ; $42ff: $11 $11 $11
	adc  a                                           ; $4302: $8f
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	db   $fc                                         ; $4305: $fc
	ld   b, c                                        ; $4306: $41
	ld   [hl], $88                                   ; $4307: $36 $88
	xor  a                                           ; $4309: $af
	rst  $38                                         ; $430a: $ff
	rst  $38                                         ; $430b: $ff
	xor  $b9                                         ; $430c: $ee $b9
	xor  c                                           ; $430e: $a9
	halt                                             ; $430f: $76
	ld   hl, $1111                                   ; $4310: $21 $11 $11
	inc  de                                          ; $4313: $13
	rst  $38                                         ; $4314: $ff
	rst  $38                                         ; $4315: $ff
	rst  $38                                         ; $4316: $ff
	add  $23                                         ; $4317: $c6 $23
	ld   a, c                                        ; $4319: $79
	adc  d                                           ; $431a: $8a
	rst  $38                                         ; $431b: $ff
	rst  $38                                         ; $431c: $ff
	xor  $fb                                         ; $431d: $ee $fb
	xor  e                                           ; $431f: $ab
	xor  c                                           ; $4320: $a9
	ld   h, c                                        ; $4321: $61
	ld   de, $1111                                   ; $4322: $11 $11 $11
	dec  l                                           ; $4325: $2d
	rst  $38                                         ; $4326: $ff
	rst  $38                                         ; $4327: $ff
	jp   z, Jump_0f5_6a74                            ; $4328: $ca $74 $6a

	set  1, a                                        ; $432b: $cb $cf
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	sbc  $fd                                         ; $432f: $de $fd
	res  0, [hl]                                     ; $4331: $cb $86
	ld   de, $1111                                   ; $4333: $11 $11 $11
	ld   de, $ef3a                                   ; $4336: $11 $3a $ef
	rst  $38                                         ; $4339: $ff
	ei                                               ; $433a: $fb
	ld   e, b                                        ; $433b: $58
	cp   b                                           ; $433c: $b8
	xor  l                                           ; $433d: $ad
	rst  $38                                         ; $433e: $ff
	rst  $38                                         ; $433f: $ff
	xor  $ec                                         ; $4340: $ee $ec
	call Call_0f5_51b9                               ; $4342: $cd $b9 $51
	ld   de, $1111                                   ; $4345: $11 $11 $11
	inc  de                                          ; $4348: $13
	ld   e, e                                        ; $4349: $5b
	rst  $38                                         ; $434a: $ff
	db   $fd                                         ; $434b: $fd
	xor  d                                           ; $434c: $aa
	ret  c                                           ; $434d: $d8

	sbc  h                                           ; $434e: $9c
	rst  $28                                         ; $434f: $ef
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	db   $fc                                         ; $4352: $fc
	call z, Call_0f5_63b9                            ; $4353: $cc $b9 $63
	ld   de, $1111                                   ; $4356: $11 $11 $11
	ld   de, $8d55                                   ; $4359: $11 $55 $8d
	call $cdfd                                       ; $435c: $cd $fd $cd
	cp   d                                           ; $435f: $ba
	sbc  $ff                                         ; $4360: $de $ff
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	db   $db                                         ; $4364: $db
	xor  b                                           ; $4365: $a8
	ld   h, l                                        ; $4366: $65
	ld   sp, $1111                                   ; $4367: $31 $11 $11
	ld   de, $7911                                   ; $436a: $11 $11 $79
	cp   a                                           ; $436d: $bf
	db   $fc                                         ; $436e: $fc
	call $cade                                       ; $436f: $cd $de $ca
	rst  JumpTable                                         ; $4372: $df
	xor  $ff                                         ; $4373: $ee $ff

Jump_0f5_4375:
	ld   [$6387], a                                  ; $4375: $ea $87 $63
	ld   de, $1122                                   ; $4378: $11 $22 $11
	ld   de, $8917                                   ; $437b: $11 $17 $89
	db   $db                                         ; $437e: $db
	rst  $28                                         ; $437f: $ef
	cp   e                                           ; $4380: $bb
	res  3, c                                        ; $4381: $cb $99
	sbc  $ff                                         ; $4383: $de $ff
	db   $fd                                         ; $4385: $fd
	jp   c, Jump_0f5_4375                            ; $4386: $da $75 $43

	ld   hl, $1111                                   ; $4389: $21 $11 $11
	ld   de, $7c8a                                   ; $438c: $11 $8a $7c
	call c, $b9dd                                    ; $438f: $dc $dd $b9
	sbc  c                                           ; $4392: $99
	cp   h                                           ; $4393: $bc
	cp   l                                           ; $4394: $bd
	cp   $fe                                         ; $4395: $fe $fe
	cp   b                                           ; $4397: $b8
	ld   b, e                                        ; $4398: $43
	ld   b, d                                        ; $4399: $42
	inc  sp                                          ; $439a: $33
	ld   de, $3611                                   ; $439b: $11 $11 $36
	ld   a, d                                        ; $439e: $7a
	cp   a                                           ; $439f: $bf
	jp   c, Jump_0f5_66c9                            ; $43a0: $da $c9 $66

	ld   l, h                                        ; $43a3: $6c
	xor  $fe                                         ; $43a4: $ee $fe
	rst  JumpTable                                         ; $43a6: $df
	sub  [hl]                                        ; $43a7: $96
	ld   a, c                                        ; $43a8: $79
	add  a                                           ; $43a9: $87
	inc  sp                                          ; $43aa: $33
	ld   b, c                                        ; $43ab: $41
	ld   de, $5c11                                   ; $43ac: $11 $11 $5c
	ei                                               ; $43af: $fb
	sbc  e                                           ; $43b0: $9b
	cp   d                                           ; $43b1: $ba
	ld   h, [hl]                                     ; $43b2: $66
	cp   h                                           ; $43b3: $bc
	call c, $abee                                    ; $43b4: $dc $ee $ab
	call z, $88db                                    ; $43b7: $cc $db $88
	ld   [hl], h                                     ; $43ba: $74
	ld   sp, $1112                                   ; $43bb: $31 $12 $11
	scf                                              ; $43be: $37
	add  [hl]                                        ; $43bf: $86
	sbc  h                                           ; $43c0: $9c
	db   $db                                         ; $43c1: $db
	adc  d                                           ; $43c2: $8a
	sub  $7c                                         ; $43c3: $d6 $7c
	rst  JumpTable                                         ; $43c5: $df
	rst  ToBoot                                         ; $43c6: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c7: $cf
	cp   c                                           ; $43c8: $b9
	sbc  b                                           ; $43c9: $98
	or   a                                           ; $43ca: $b7
	ld   de, $2197                                   ; $43cb: $11 $97 $21
	ld   [de], a                                     ; $43ce: $12
	ld   h, h                                        ; $43cf: $64
	ld   a, [de]                                     ; $43d0: $1a
	jp   z, $a7dd                                    ; $43d1: $ca $dd $a7

	halt                                             ; $43d4: $76
	call $e8af                                       ; $43d5: $cd $af $e8
	cp   l                                           ; $43d8: $bd
	adc  d                                           ; $43d9: $8a
	sub  a                                           ; $43da: $97
	or   [hl]                                        ; $43db: $b6
	inc  d                                           ; $43dc: $14
	halt                                             ; $43dd: $76
	ld   d, c                                        ; $43de: $51
	ld   de, $956a                                   ; $43df: $11 $6a $95
	ld   d, e                                        ; $43e2: $53
	xor  a                                           ; $43e3: $af
	or   [hl]                                        ; $43e4: $b6
	res  1, l                                        ; $43e5: $cb $8d
	sub  a                                           ; $43e7: $97
	cp   $7a                                         ; $43e8: $fe $7a
	db   $db                                         ; $43ea: $db
	rst  ToBoot                                         ; $43eb: $c7
	ld   d, $73                                      ; $43ec: $16 $73
	ld   h, a                                        ; $43ee: $67
	ld   [hl], l                                     ; $43ef: $75
	ld   de, $8a33                                   ; $43f0: $11 $33 $8a
	ld   a, c                                        ; $43f3: $79
	xor  [hl]                                        ; $43f4: $ae
	sub  $56                                         ; $43f5: $d6 $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f7: $cf
	ret  c                                           ; $43f8: $d8

	adc  d                                           ; $43f9: $8a
	db   $db                                         ; $43fa: $db
	adc  b                                           ; $43fb: $88
	ld   h, [hl]                                     ; $43fc: $66
	xor  b                                           ; $43fd: $a8
	ld   d, d                                        ; $43fe: $52
	ld   e, e                                        ; $43ff: $5b
	ld   h, h                                        ; $4400: $64
	ld   h, d                                        ; $4401: $62
	ld   de, $e92d                                   ; $4402: $11 $2d $e9
	ld   e, b                                        ; $4405: $58
	cp   h                                           ; $4406: $bc
	ld   h, d                                        ; $4407: $62
	adc  a                                           ; $4408: $8f
	db   $fc                                         ; $4409: $fc
	adc  b                                           ; $440a: $88
	cp   d                                           ; $440b: $ba
	ld   a, b                                        ; $440c: $78
	xor  e                                           ; $440d: $ab
	sub  l                                           ; $440e: $95
	daa                                              ; $440f: $27
	cp   d                                           ; $4410: $ba
	add  e                                           ; $4411: $83
	dec  [hl]                                        ; $4412: $35
	ld   d, l                                        ; $4413: $55
	ld   a, c                                        ; $4414: $79
	ld   d, c                                        ; $4415: $51
	ld   l, h                                        ; $4416: $6c
	xor  l                                           ; $4417: $ad
	or   c                                           ; $4418: $b1
	ld   a, l                                        ; $4419: $7d
	ld   a, c                                        ; $441a: $79
	reti                                             ; $441b: $d9


	cp   a                                           ; $441c: $bf
	or   [hl]                                        ; $441d: $b6
	adc  b                                           ; $441e: $88
	ld   d, a                                        ; $441f: $57
	add  l                                           ; $4420: $85
	xor  e                                           ; $4421: $ab
	ld   h, a                                        ; $4422: $67
	and  h                                           ; $4423: $a4
	ld   c, b                                        ; $4424: $48
	ld   b, l                                        ; $4425: $45
	sub  a                                           ; $4426: $97
	ld   b, l                                        ; $4427: $45
	sbc  b                                           ; $4428: $98
	sbc  h                                           ; $4429: $9c
	sbc  b                                           ; $442a: $98
	sub  [hl]                                        ; $442b: $96
	adc  [hl]                                        ; $442c: $8e
	xor  b                                           ; $442d: $a8
	ret                                              ; $442e: $c9


	sbc  c                                           ; $442f: $99
	xor  b                                           ; $4430: $a8
	ld   h, l                                        ; $4431: $65
	adc  e                                           ; $4432: $8b
	rst  $10                                         ; $4433: $d7
	ld   b, l                                        ; $4434: $45
	sbc  h                                           ; $4435: $9c
	sub  l                                           ; $4436: $95
	ld   b, l                                        ; $4437: $45
	add  a                                           ; $4438: $87
	ld   b, l                                        ; $4439: $45
	cp   l                                           ; $443a: $bd
	add  $26                                         ; $443b: $c6 $26
	cp   e                                           ; $443d: $bb
	bit  7, b                                        ; $443e: $cb $78
	cp   e                                           ; $4440: $bb
	ld   h, e                                        ; $4441: $63
	ld   l, e                                        ; $4442: $6b
	xor  $64                                         ; $4443: $ee $64
	add  [hl]                                        ; $4445: $86
	ld   d, a                                        ; $4446: $57
	adc  e                                           ; $4447: $8b
	call nz, $9a16                                   ; $4448: $c4 $16 $9a
	and  l                                           ; $444b: $a5
	ld   c, b                                        ; $444c: $48
	sbc  c                                           ; $444d: $99
	sub  a                                           ; $444e: $97
	sbc  e                                           ; $444f: $9b
	ld   [hl], h                                     ; $4450: $74
	ld   a, h                                        ; $4451: $7c
	or   [hl]                                        ; $4452: $b6
	ld   h, a                                        ; $4453: $67
	cp   a                                           ; $4454: $bf
	or   h                                           ; $4455: $b4
	inc  h                                           ; $4456: $24
	ld   l, c                                        ; $4457: $69
	xor  h                                           ; $4458: $ac
	and  l                                           ; $4459: $a5
	ld   d, [hl]                                     ; $445a: $56
	ld   d, a                                        ; $445b: $57
	sub  l                                           ; $445c: $95
	ld   a, b                                        ; $445d: $78
	sbc  b                                           ; $445e: $98
	ld   d, a                                        ; $445f: $57
	halt                                             ; $4460: $76
	ld   a, c                                        ; $4461: $79
	ld   a, h                                        ; $4462: $7c
	or   d                                           ; $4463: $b2
	ld   e, c                                        ; $4464: $59
	adc  $76                                         ; $4465: $ce $76
	add  [hl]                                        ; $4467: $86
	ld   a, c                                        ; $4468: $79
	add  a                                           ; $4469: $87
	add  a                                           ; $446a: $87
	adc  h                                           ; $446b: $8c
	sub  l                                           ; $446c: $95
	ld   e, c                                        ; $446d: $59
	sub  a                                           ; $446e: $97
	ld   d, [hl]                                     ; $446f: $56
	adc  b                                           ; $4470: $88
	ld   [hl], a                                     ; $4471: $77
	ld   a, c                                        ; $4472: $79
	xor  d                                           ; $4473: $aa
	ld   b, d                                        ; $4474: $42
	ld   a, b                                        ; $4475: $78
	adc  [hl]                                        ; $4476: $8e
	cp   c                                           ; $4477: $b9
	and  l                                           ; $4478: $a5
	ld   c, b                                        ; $4479: $48
	call Call_0f5_57c8                               ; $447a: $cd $c8 $57
	ret  z                                           ; $447d: $c8

	ld   h, a                                        ; $447e: $67
	ld   [hl], a                                     ; $447f: $77
	ld   l, b                                        ; $4480: $68
	and  a                                           ; $4481: $a7
	add  a                                           ; $4482: $87

jr_0f5_4483:
	ld   e, d                                        ; $4483: $5a
	ret  z                                           ; $4484: $c8

	ld   b, l                                        ; $4485: $45
	ld   l, b                                        ; $4486: $68
	xor  c                                           ; $4487: $a9
	ld   b, l                                        ; $4488: $45
	xor  e                                           ; $4489: $ab
	xor  d                                           ; $448a: $aa
	sbc  b                                           ; $448b: $98
	xor  e                                           ; $448c: $ab
	ld   d, h                                        ; $448d: $54
	sbc  d                                           ; $448e: $9a
	cp   c                                           ; $448f: $b9
	ld   [de], a                                     ; $4490: $12
	adc  h                                           ; $4491: $8c
	cp   b                                           ; $4492: $b8
	ld   b, h                                        ; $4493: $44
	sbc  d                                           ; $4494: $9a
	and  [hl]                                        ; $4495: $a6
	ld   b, [hl]                                     ; $4496: $46
	ld   a, c                                        ; $4497: $79
	ld   [hl], l                                     ; $4498: $75
	ld   e, c                                        ; $4499: $59
	xor  b                                           ; $449a: $a8
	xor  e                                           ; $449b: $ab
	adc  b                                           ; $449c: $88
	and  a                                           ; $449d: $a7
	adc  c                                           ; $449e: $89
	ld   a, c                                        ; $449f: $79
	add  l                                           ; $44a0: $85
	adc  e                                           ; $44a1: $8b
	sub  l                                           ; $44a2: $95
	ld   h, a                                        ; $44a3: $67
	ld   a, h                                        ; $44a4: $7c
	or   l                                           ; $44a5: $b5
	ld   c, b                                        ; $44a6: $48
	adc  d                                           ; $44a7: $8a
	add  e                                           ; $44a8: $83
	ld   l, c                                        ; $44a9: $69
	cp   e                                           ; $44aa: $bb
	xor  b                                           ; $44ab: $a8
	ld   [hl], a                                     ; $44ac: $77
	sbc  d                                           ; $44ad: $9a
	sbc  h                                           ; $44ae: $9c
	cp   c                                           ; $44af: $b9
	ld   h, [hl]                                     ; $44b0: $66
	cp   e                                           ; $44b1: $bb
	and  a                                           ; $44b2: $a7
	ld   [hl], a                                     ; $44b3: $77
	adc  b                                           ; $44b4: $88
	ld   h, a                                        ; $44b5: $67
	cp   b                                           ; $44b6: $b8
	ld   d, a                                        ; $44b7: $57
	ld   a, b                                        ; $44b8: $78
	ld   [hl], a                                     ; $44b9: $77
	adc  b                                           ; $44ba: $88
	ld   [hl], a                                     ; $44bb: $77
	add  a                                           ; $44bc: $87
	ld   a, b                                        ; $44bd: $78
	sbc  b                                           ; $44be: $98
	xor  e                                           ; $44bf: $ab
	sbc  e                                           ; $44c0: $9b
	sub  a                                           ; $44c1: $97
	sbc  b                                           ; $44c2: $98
	adc  e                                           ; $44c3: $8b
	and  a                                           ; $44c4: $a7
	ld   h, h                                        ; $44c5: $64
	ld   e, c                                        ; $44c6: $59
	adc  c                                           ; $44c7: $89
	add  l                                           ; $44c8: $85
	ld   h, l                                        ; $44c9: $65
	ld   l, d                                        ; $44ca: $6a
	add  a                                           ; $44cb: $87
	add  h                                           ; $44cc: $84
	ld   a, c                                        ; $44cd: $79
	ld   l, e                                        ; $44ce: $6b
	or   l                                           ; $44cf: $b5
	inc  d                                           ; $44d0: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44d1: $cf
	push af                                          ; $44d2: $f5
	ld   [hl], $99                                   ; $44d3: $36 $99
	xor  e                                           ; $44d5: $ab
	ld   h, [hl]                                     ; $44d6: $66
	sbc  b                                           ; $44d7: $98
	adc  d                                           ; $44d8: $8a
	halt                                             ; $44d9: $76
	ld   d, [hl]                                     ; $44da: $56
	ld   h, l                                        ; $44db: $65
	xor  l                                           ; $44dc: $ad
	add  e                                           ; $44dd: $83
	ld   h, $98                                      ; $44de: $26 $98
	add  [hl]                                        ; $44e0: $86
	dec  sp                                          ; $44e1: $3b
	ei                                               ; $44e2: $fb
	ld   h, e                                        ; $44e3: $63
	xor  l                                           ; $44e4: $ad
	ret  z                                           ; $44e5: $c8

	dec  [hl]                                        ; $44e6: $35

jr_0f5_44e7:
	cp   h                                           ; $44e7: $bc
	cp   c                                           ; $44e8: $b9
	ld   d, h                                        ; $44e9: $54
	ld   l, d                                        ; $44ea: $6a
	xor  d                                           ; $44eb: $aa
	ld   h, e                                        ; $44ec: $63
	ld   b, l                                        ; $44ed: $45
	adc  h                                           ; $44ee: $8c
	ld   [hl], h                                     ; $44ef: $74
	ld   d, h                                        ; $44f0: $54
	sbc  h                                           ; $44f1: $9c
	or   a                                           ; $44f2: $b7
	ld   c, c                                        ; $44f3: $49
	cp   $83                                         ; $44f4: $fe $83
	jr   c, jr_0f5_44e7                              ; $44f6: $38 $ef

	di                                               ; $44f8: $f3
	jr   c, jr_0f5_4483                              ; $44f9: $38 $88

	xor  h                                           ; $44fb: $ac

jr_0f5_44fc:
	and  c                                           ; $44fc: $a1
	rla                                              ; $44fd: $17
	cp   d                                           ; $44fe: $ba
	ld   d, h                                        ; $44ff: $54
	ld   d, a                                        ; $4500: $57
	sbc  e                                           ; $4501: $9b
	halt                                             ; $4502: $76
	ld   h, h                                        ; $4503: $64
	adc  e                                           ; $4504: $8b
	call c, $9c53                                    ; $4505: $dc $53 $9c
	db   $db                                         ; $4508: $db
	ld   b, [hl]                                     ; $4509: $46
	xor  c                                           ; $450a: $a9
	sbc  e                                           ; $450b: $9b
	add  a                                           ; $450c: $87
	ld   h, l                                        ; $450d: $65
	cp   h                                           ; $450e: $bc
	add  h                                           ; $450f: $84
	inc  sp                                          ; $4510: $33
	adc  c                                           ; $4511: $89
	ld   h, [hl]                                     ; $4512: $66
	ld   d, [hl]                                     ; $4513: $56
	ld   a, b                                        ; $4514: $78
	ld   h, a                                        ; $4515: $67
	add  [hl]                                        ; $4516: $86
	sub  [hl]                                        ; $4517: $96
	adc  d                                           ; $4518: $8a
	add  [hl]                                        ; $4519: $86
	ld   a, e                                        ; $451a: $7b
	cp   d                                           ; $451b: $ba
	ld   [hl], l                                     ; $451c: $75
	sbc  d                                           ; $451d: $9a
	sub  l                                           ; $451e: $95
	ld   e, h                                        ; $451f: $5c
	or   a                                           ; $4520: $b7
	halt                                             ; $4521: $76
	sbc  d                                           ; $4522: $9a
	halt                                             ; $4523: $76
	xor  l                                           ; $4524: $ad
	or   a                                           ; $4525: $b7
	add  a                                           ; $4526: $87
	ld   a, [hl]                                     ; $4527: $7e
	sub  l                                           ; $4528: $95
	xor  e                                           ; $4529: $ab
	jp   z, $9a9a                                    ; $452a: $ca $9a $9a

	call c, Call_0f5_5587                            ; $452d: $dc $87 $55
	ld   l, d                                        ; $4530: $6a
	and  a                                           ; $4531: $a7
	halt                                             ; $4532: $76
	ld   l, b                                        ; $4533: $68
	adc  c                                           ; $4534: $89
	add  l                                           ; $4535: $85
	ld   e, b                                        ; $4536: $58
	add  l                                           ; $4537: $85
	ld   l, b                                        ; $4538: $68

jr_0f5_4539:
	halt                                             ; $4539: $76
	sbc  l                                           ; $453a: $9d
	sub  $7e                                         ; $453b: $d6 $7e
	db   $eb                                         ; $453d: $eb
	add  h                                           ; $453e: $84
	ld   b, a                                        ; $453f: $47
	sbc  h                                           ; $4540: $9c
	and  h                                           ; $4541: $a4
	inc  [hl]                                        ; $4542: $34
	ld   e, b                                        ; $4543: $58
	xor  b                                           ; $4544: $a8
	ld   h, c                                        ; $4545: $61
	inc  d                                           ; $4546: $14
	cp   e                                           ; $4547: $bb
	or   d                                           ; $4548: $b2
	jr   jr_0f5_4539                                 ; $4549: $18 $ee

	sbc  d                                           ; $454b: $9a
	ld   [$adab], a                                  ; $454c: $ea $ab $ad
	sub  c                                           ; $454f: $91
	ld   e, b                                        ; $4550: $58
	ld   e, c                                        ; $4551: $59
	ld   [hl], c                                     ; $4552: $71
	ld   c, b                                        ; $4553: $48
	sbc  b                                           ; $4554: $98
	ld   b, c                                        ; $4555: $41
	jr   c, jr_0f5_45cf                              ; $4556: $38 $77

	ld   a, c                                        ; $4558: $79
	sub  a                                           ; $4559: $97
	cp   l                                           ; $455a: $bd
	ld   h, a                                        ; $455b: $67
	rst  JumpTable                                         ; $455c: $df

jr_0f5_455d:
	db   $fc                                         ; $455d: $fc
	ld   a, d                                        ; $455e: $7a
	ld   [hl], h                                     ; $455f: $74
	ld   [hl], h                                     ; $4560: $74
	jr   c, jr_0f5_44fc                              ; $4561: $38 $99

	and  l                                           ; $4563: $a5
	ld   d, [hl]                                     ; $4564: $56
	inc  sp                                          ; $4565: $33
	ld   l, b                                        ; $4566: $68
	adc  b                                           ; $4567: $88
	add  [hl]                                        ; $4568: $86
	ld   c, d                                        ; $4569: $4a
	rst  $38                                         ; $456a: $ff
	or   [hl]                                        ; $456b: $b6
	xor  d                                           ; $456c: $aa
	sbc  d                                           ; $456d: $9a
	cp   l                                           ; $456e: $bd
	ld   [hl], c                                     ; $456f: $71
	dec  hl                                          ; $4570: $2b
	ld   a, c                                        ; $4571: $79
	ret                                              ; $4572: $c9


	or   l                                           ; $4573: $b5
	ld   de, $7b88                                   ; $4574: $11 $88 $7b
	ld   h, h                                        ; $4577: $64

jr_0f5_4578:
	and  [hl]                                        ; $4578: $a6
	xor  a                                           ; $4579: $af
	ld   a, e                                        ; $457a: $7b
	ei                                               ; $457b: $fb
	res  5, h                                        ; $457c: $cb $ac
	ld   [hl], d                                     ; $457e: $72
	ld   d, [hl]                                     ; $457f: $56
	xor  l                                           ; $4580: $ad
	and  e                                           ; $4581: $a3
	dec  h                                           ; $4582: $25
	add  a                                           ; $4583: $87
	inc  [hl]                                        ; $4584: $34
	xor  d                                           ; $4585: $aa
	adc  b                                           ; $4586: $88
	ld   d, a                                        ; $4587: $57
	xor  d                                           ; $4588: $aa
	cp   c                                           ; $4589: $b9
	xor  a                                           ; $458a: $af
	jp   c, Jump_0f5_67db                            ; $458b: $da $db $67

	ld   [hl], a                                     ; $458e: $77
	ld   [hl], d                                     ; $458f: $72
	ld   c, c                                        ; $4590: $49
	ld   d, h                                        ; $4591: $54
	ld   [hl], h                                     ; $4592: $74
	ld   h, [hl]                                     ; $4593: $66
	jr   jr_0f5_455d                                 ; $4594: $18 $c7

	sbc  h                                           ; $4596: $9c
	jp   z, $ba89                                    ; $4597: $ca $89 $ba

	xor  l                                           ; $459a: $ad
	sbc  $ba                                         ; $459b: $de $ba
	ld   [hl], c                                     ; $459d: $71
	rla                                              ; $459e: $17
	ld   a, b                                        ; $459f: $78
	ld   d, c                                        ; $45a0: $51
	dec  h                                           ; $45a1: $25
	ld   h, a                                        ; $45a2: $67
	ld   d, a                                        ; $45a3: $57
	set  1, c                                        ; $45a4: $cb $c9
	ld   e, l                                        ; $45a6: $5d
	call z, $8efa                                    ; $45a7: $cc $fa $8e
	or   a                                           ; $45aa: $b7
	ld   h, h                                        ; $45ab: $64
	ld   h, a                                        ; $45ac: $67
	ld   d, h                                        ; $45ad: $54
	ld   d, e                                        ; $45ae: $53
	ld   b, h                                        ; $45af: $44
	jr   c, jr_0f5_4578                              ; $45b0: $38 $c6

	ld   c, e                                        ; $45b2: $4b
	sbc  [hl]                                        ; $45b3: $9e
	or   $7b                                         ; $45b4: $f6 $7b
	adc  l                                           ; $45b6: $8d
	db   $fd                                         ; $45b7: $fd
	ret                                              ; $45b8: $c9


	ld   h, [hl]                                     ; $45b9: $66
	dec  [hl]                                        ; $45ba: $35
	add  l                                           ; $45bb: $85
	ld   sp, $9c14                                   ; $45bc: $31 $14 $9c
	sub  e                                           ; $45bf: $93
	ld   c, c                                        ; $45c0: $49
	rst  $38                                         ; $45c1: $ff
	call nc, $ff49                                   ; $45c2: $d4 $49 $ff
	db   $eb                                         ; $45c5: $eb
	ld   a, c                                        ; $45c6: $79
	and  [hl]                                        ; $45c7: $a6
	ld   hl, $2125                                   ; $45c8: $21 $25 $21
	ld   [de], a                                     ; $45cb: $12
	ld   a, d                                        ; $45cc: $7a
	sub  [hl]                                        ; $45cd: $96
	rst  $28                                         ; $45ce: $ef

jr_0f5_45cf:
	xor  e                                           ; $45cf: $ab
	add  [hl]                                        ; $45d0: $86
	rst  $38                                         ; $45d1: $ff
	xor  d                                           ; $45d2: $aa
	cp   e                                           ; $45d3: $bb
	ei                                               ; $45d4: $fb
	ld   hl, $7113                                   ; $45d5: $21 $13 $71
	ld   de, $c55d                                   ; $45d8: $11 $5d $c5
	ld   a, [hl]                                     ; $45db: $7e
	db   $fd                                         ; $45dc: $fd
	xor  d                                           ; $45dd: $aa
	rst  $38                                         ; $45de: $ff
	ld   l, d                                        ; $45df: $6a
	rst  $38                                         ; $45e0: $ff
	call nc, $2411                                   ; $45e1: $d4 $11 $24
	ld   b, c                                        ; $45e4: $41
	ld   de, $b3bf                                   ; $45e5: $11 $bf $b3
	ld   l, a                                        ; $45e8: $6f
	db   $fd                                         ; $45e9: $fd
	ld   a, h                                        ; $45ea: $7c
	cp   $c9                                         ; $45eb: $fe $c9
	ld   a, a                                        ; $45ed: $7f
	or   $41                                         ; $45ee: $f6 $41
	inc  de                                          ; $45f0: $13
	ld   de, $6b23                                   ; $45f1: $11 $23 $6b
	ld   e, c                                        ; $45f4: $59
	rst  $38                                         ; $45f5: $ff
	db   $dd                                         ; $45f6: $dd
	sbc  [hl]                                        ; $45f7: $9e
	rst  $38                                         ; $45f8: $ff
	ld   a, [$849c]                                  ; $45f9: $fa $9c $84
	ld   de, $1101                                   ; $45fc: $11 $01 $11
	ld   a, c                                        ; $45ff: $79
	or   [hl]                                        ; $4600: $b6
	ld   l, a                                        ; $4601: $6f
	rst  $38                                         ; $4602: $ff
	db   $fc                                         ; $4603: $fc
	cp   d                                           ; $4604: $ba
	rst  $38                                         ; $4605: $ff
	ret                                              ; $4606: $c9


	add  [hl]                                        ; $4607: $86
	ld   h, c                                        ; $4608: $61
	inc  de                                          ; $4609: $13
	ld   de, $8b26                                   ; $460a: $11 $26 $8b
	ld   h, a                                        ; $460d: $67
	rst  $38                                         ; $460e: $ff
	xor  a                                           ; $460f: $af
	ld   a, [$bffd]                                  ; $4610: $fa $fd $bf
	and  [hl]                                        ; $4613: $a6
	ld   [hl], c                                     ; $4614: $71
	ld   [de], a                                     ; $4615: $12
	ld   de, $bd14                                   ; $4616: $11 $14 $bd
	sub  a                                           ; $4619: $97
	cp   a                                           ; $461a: $bf
	rst  $28                                         ; $461b: $ef
	ld   a, [$edaf]                                  ; $461c: $fa $af $ed
	and  e                                           ; $461f: $a3
	ld   d, c                                        ; $4620: $51
	ld   de, $4c11                                   ; $4621: $11 $11 $4c
	jp   c, rAUD1ENV                                    ; $4624: $da $12 $ff

	cp   $7b                                         ; $4627: $fe $7b
	rst  $38                                         ; $4629: $ff
	add  sp, $44                                     ; $462a: $e8 $44
	ld   b, c                                        ; $462c: $41
	ld   de, $ae11                                   ; $462d: $11 $11 $ae
	or   l                                           ; $4630: $b5
	add  hl, hl                                      ; $4631: $29
	rst  $38                                         ; $4632: $ff
	ld   a, [$ff9f]                                  ; $4633: $fa $9f $ff
	add  [hl]                                        ; $4636: $86
	ld   de, $1111                                   ; $4637: $11 $11 $11
	rla                                              ; $463a: $17
	call c, $8fa4                                    ; $463b: $dc $a4 $8f
	rst  $38                                         ; $463e: $ff
	db   $db                                         ; $463f: $db
	rst  $28                                         ; $4640: $ef
	ei                                               ; $4641: $fb
	ld   h, l                                        ; $4642: $65
	ld   de, $1111                                   ; $4643: $11 $11 $11
	sbc  [hl]                                        ; $4646: $9e
	add  $4c                                         ; $4647: $c6 $4c
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	adc  e                                           ; $464b: $8b
	rst  $38                                         ; $464c: $ff
	push af                                          ; $464d: $f5
	ld   de, $1111                                   ; $464e: $11 $11 $11
	ld   c, d                                        ; $4651: $4a
	sbc  d                                           ; $4652: $9a
	ld   a, c                                        ; $4653: $79
	rst  $38                                         ; $4654: $ff
	rst  $38                                         ; $4655: $ff
	sbc  $fe                                         ; $4656: $de $fe
	jp   hl                                          ; $4658: $e9


	ld   hl, $1111                                   ; $4659: $21 $11 $11
	ld   e, e                                        ; $465c: $5b
	reti                                             ; $465d: $d9


	ld   h, $ff                                      ; $465e: $26 $ff
	rst  $38                                         ; $4660: $ff
	xor  h                                           ; $4661: $ac
	rst  $38                                         ; $4662: $ff
	rst  $30                                         ; $4663: $f7
	ld   de, $1111                                   ; $4664: $11 $11 $11
	xor  a                                           ; $4667: $af
	db   $e4                                         ; $4668: $e4
	ld   d, $ff                                      ; $4669: $16 $ff
	db   $fd                                         ; $466b: $fd
	xor  e                                           ; $466c: $ab
	rst  $38                                         ; $466d: $ff
	rst  $30                                         ; $466e: $f7
	ld   de, $1711                                   ; $466f: $11 $11 $17
	db   $fc                                         ; $4672: $fc
	add  c                                           ; $4673: $81
	cpl                                              ; $4674: $2f
	rst  $38                                         ; $4675: $ff
	reti                                             ; $4676: $d9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4677: $cf
	rst  $38                                         ; $4678: $ff
	and  c                                           ; $4679: $a1
	ld   de, $1f11                                   ; $467a: $11 $11 $1f
	db   $fd                                         ; $467d: $fd
	ld   d, c                                        ; $467e: $51
	ld   e, a                                        ; $467f: $5f
	rst  $38                                         ; $4680: $ff
	or   l                                           ; $4681: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4682: $cf
	rst  $38                                         ; $4683: $ff
	ld   sp, $1111                                   ; $4684: $31 $11 $11
	sbc  a                                           ; $4687: $9f
	rst  $30                                         ; $4688: $f7
	ld   [de], a                                     ; $4689: $12
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	adc  c                                           ; $468c: $89
	rst  $38                                         ; $468d: $ff
	push af                                          ; $468e: $f5
	ld   de, $1711                                   ; $468f: $11 $11 $17
	rst  $38                                         ; $4692: $ff
	pop  bc                                          ; $4693: $c1
	inc  e                                           ; $4694: $1c
	rst  $38                                         ; $4695: $ff
	rst  $30                                         ; $4696: $f7
	ld   e, h                                        ; $4697: $5c
	rst  $38                                         ; $4698: $ff
	and  c                                           ; $4699: $a1
	ld   de, $af11                                   ; $469a: $11 $11 $af
	db   $fc                                         ; $469d: $fc
	ld   de, $ffcf                                   ; $469e: $11 $cf $ff
	ld   [hl], h                                     ; $46a1: $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46a2: $cf
	ld   a, [$1111]                                  ; $46a3: $fa $11 $11

Call_0f5_46a6:
	dec  e                                           ; $46a6: $1d
	rst  $38                                         ; $46a7: $ff
	and  c                                           ; $46a8: $a1
	dec  de                                          ; $46a9: $1b
	rst  $38                                         ; $46aa: $ff
	ld   hl, sp+$4b                                  ; $46ab: $f8 $4b
	rst  $38                                         ; $46ad: $ff
	pop  bc                                          ; $46ae: $c1
	ld   de, rAUD1LEN                                   ; $46af: $11 $11 $ff
	rst  $30                                         ; $46b2: $f7
	ld   de, $ffaf                                   ; $46b3: $11 $af $ff
	ld   h, d                                        ; $46b6: $62
	xor  a                                           ; $46b7: $af
	ei                                               ; $46b8: $fb
	ld   de, $2f11                                   ; $46b9: $11 $11 $2f
	rst  $38                                         ; $46bc: $ff
	ld   sp, $ff1f                                   ; $46bd: $31 $1f $ff
	push af                                          ; $46c0: $f5
	dec  l                                           ; $46c1: $2d
	rst  $38                                         ; $46c2: $ff
	and  c                                           ; $46c3: $a1
	ld   de, $ff15                                   ; $46c4: $11 $15 $ff
	pop  af                                          ; $46c7: $f1
	ld   de, $ffff                                   ; $46c8: $11 $ff $ff
	ld   de, $f5ef                                   ; $46cb: $11 $ef $f5
	ld   de, $ef11                                   ; $46ce: $11 $11 $ef
	ei                                               ; $46d1: $fb
	ld   de, $ff1f                                   ; $46d2: $11 $1f $ff
	and  c                                           ; $46d5: $a1
	ccf                                              ; $46d6: $3f
	rst  $38                                         ; $46d7: $ff
	ld   de, $1f11                                   ; $46d8: $11 $11 $1f
	rst  $38                                         ; $46db: $ff
	ld   hl, $ff18                                   ; $46dc: $21 $18 $ff
	db   $f4                                         ; $46df: $f4
	rla                                              ; $46e0: $17
	rst  $38                                         ; $46e1: $ff
	pop  hl                                          ; $46e2: $e1
	ld   de, $ff19                                   ; $46e3: $11 $19 $ff
	pop  af                                          ; $46e6: $f1
	ld   de, $fdff                                   ; $46e7: $11 $ff $fd
	ld   de, $f6ff                                   ; $46ea: $11 $ff $f6
	ld   de, rAUD1LEN                                   ; $46ed: $11 $11 $ff
	push af                                          ; $46f0: $f5
	ld   de, $ff3f                                   ; $46f1: $11 $3f $ff
	ld   b, c                                        ; $46f4: $41
	ccf                                              ; $46f5: $3f
	rst  $38                                         ; $46f6: $ff
	ld   de, $bf11                                   ; $46f7: $11 $11 $bf
	rst  $38                                         ; $46fa: $ff
	ld   de, $ff1f                                   ; $46fb: $11 $1f $ff
	pop  de                                          ; $46fe: $d1
	dec  de                                          ; $46ff: $1b
	rst  $38                                         ; $4700: $ff
	or   c                                           ; $4701: $b1
	ld   de, $ff1f                                   ; $4702: $11 $1f $ff
	ld   sp, rAUD1HIGH                                   ; $4705: $31 $14 $ff
	pop  af                                          ; $4708: $f1
	inc  d                                           ; $4709: $14
	rst  $38                                         ; $470a: $ff
	pop  af                                          ; $470b: $f1
	ld   de, $ff1f                                   ; $470c: $11 $1f $ff
	or   c                                           ; $470f: $b1
	ld   de, $f6ff                                   ; $4710: $11 $ff $f6
	ld   de, $f3ff                                   ; $4713: $11 $ff $f3
	ld   de, $ff19                                   ; $4716: $11 $19 $ff
	pop  af                                          ; $4719: $f1
	ld   de, $fcff                                   ; $471a: $11 $ff $fc
	ld   de, $f9df                                   ; $471d: $11 $df $f9
	ld   de, $ff15                                   ; $4720: $11 $15 $ff
	pop  af                                          ; $4723: $f1
	ld   de, $ffcf                                   ; $4724: $11 $cf $ff
	ld   de, $fc9f                                   ; $4727: $11 $9f $fc
	ld   de, rAUD1LEN                                   ; $472a: $11 $11 $ff
	pop  af                                          ; $472d: $f1
	ld   de, $ffbf                                   ; $472e: $11 $bf $ff
	ld   de, $ff9f                                   ; $4731: $11 $9f $ff
	ld   de, rAUD1LEN                                   ; $4734: $11 $11 $ff
	pop  af                                          ; $4737: $f1
	ld   de, $ff9f                                   ; $4738: $11 $9f $ff
	ld   de, $fe7f                                   ; $473b: $11 $7f $fe
	ld   de, rAUD1LEN                                   ; $473e: $11 $11 $ff
	pop  af                                          ; $4741: $f1
	ld   de, $ffcf                                   ; $4742: $11 $cf $ff
	ld   de, $fc9f                                   ; $4745: $11 $9f $fc
	ld   de, rAUD1HIGH                                   ; $4748: $11 $14 $ff
	pop  af                                          ; $474b: $f1
	ld   de, $ffff                                   ; $474c: $11 $ff $ff
	ld   de, $fb9f                                   ; $474f: $11 $9f $fb
	ld   de, $ff19                                   ; $4752: $11 $19 $ff
	pop  af                                          ; $4755: $f1
	ld   de, $f8ff                                   ; $4756: $11 $ff $f8
	ld   de, $f3ff                                   ; $4759: $11 $ff $f3
	ld   de, $ff1f                                   ; $475c: $11 $1f $ff
	add  c                                           ; $475f: $81
	ld   de, $f4ff                                   ; $4760: $11 $ff $f4
	ld   de, $f1ff                                   ; $4763: $11 $ff $f1
	ld   de, $ff1f                                   ; $4766: $11 $1f $ff
	ld   de, $ff1b                                   ; $4769: $11 $1b $ff
	pop  af                                          ; $476c: $f1
	dec  d                                           ; $476d: $15
	rst  $38                                         ; $476e: $ff
	pop  de                                          ; $476f: $d1
	ld   de, $ff4f                                   ; $4770: $11 $4f $ff
	ld   de, $ff1f                                   ; $4773: $11 $1f $ff
	or   c                                           ; $4776: $b1
	dec  e                                           ; $4777: $1d
	rst  $38                                         ; $4778: $ff
	ld   d, c                                        ; $4779: $51
	ld   de, $f5ff                                   ; $477a: $11 $ff $f5
	ld   de, $ff4f                                   ; $477d: $11 $4f $ff
	ld   de, $ff1f                                   ; $4780: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $4783: $11 $11 $ff
	pop  af                                          ; $4786: $f1
	ld   de, $ffff                                   ; $4787: $11 $ff $ff
	ld   de, $fa9f                                   ; $478a: $11 $9f $fa
	ld   de, $ff1f                                   ; $478d: $11 $1f $ff
	pop  bc                                          ; $4790: $c1
	ld   de, $f4ff                                   ; $4791: $11 $ff $f4
	ld   de, $f1ff                                   ; $4794: $11 $ff $f1
	ld   de, $ff1f                                   ; $4797: $11 $1f $ff
	ld   de, $ff1e                                   ; $479a: $11 $1e $ff
	pop  af                                          ; $479d: $f1
	ld   d, $ff                                      ; $479e: $16 $ff
	pop  hl                                          ; $47a0: $e1
	ld   de, $ff9f                                   ; $47a1: $11 $9f $ff
	ld   de, $ff1f                                   ; $47a4: $11 $1f $ff
	ld   [hl], c                                     ; $47a7: $71
	rra                                              ; $47a8: $1f
	rst  $38                                         ; $47a9: $ff
	ld   sp, rAUD1LEN                                   ; $47aa: $31 $11 $ff
	pop  af                                          ; $47ad: $f1
	ld   de, $ffcf                                   ; $47ae: $11 $cf $ff
	ld   de, $ff3f                                   ; $47b1: $11 $3f $ff
	ld   de, $ff17                                   ; $47b4: $11 $17 $ff
	pop  af                                          ; $47b7: $f1
	ld   de, $fcff                                   ; $47b8: $11 $ff $fc
	ld   de, $f7bf                                   ; $47bb: $11 $bf $f7
	ld   de, $ff1f                                   ; $47be: $11 $1f $ff
	ld   de, $ff17                                   ; $47c1: $11 $17 $ff
	pop  af                                          ; $47c4: $f1
	ld   de, $f1ff                                   ; $47c5: $11 $ff $f1
	ld   de, $ff2f                                   ; $47c8: $11 $2f $ff
	ld   de, $ff1f                                   ; $47cb: $11 $1f $ff
	pop  af                                          ; $47ce: $f1
	dec  de                                          ; $47cf: $1b
	rst  $38                                         ; $47d0: $ff
	sub  c                                           ; $47d1: $91
	ld   de, $f3ff                                   ; $47d2: $11 $ff $f3
	ld   de, $ff6f                                   ; $47d5: $11 $6f $ff
	ld   b, c                                        ; $47d8: $41
	rra                                              ; $47d9: $1f
	rst  $38                                         ; $47da: $ff
	ld   de, rAUD1LEN                                   ; $47db: $11 $11 $ff
	pop  af                                          ; $47de: $f1
	ld   de, $ffff                                   ; $47df: $11 $ff $ff
	ld   de, $fe7f                                   ; $47e2: $11 $7f $fe
	ld   de, $ff1d                                   ; $47e5: $11 $1d $ff
	pop  bc                                          ; $47e8: $c1
	ld   de, $fbff                                   ; $47e9: $11 $ff $fb
	ld   de, $f7ef                                   ; $47ec: $11 $ef $f7
	ld   de, $ff1f                                   ; $47ef: $11 $1f $ff
	ld   de, $ff17                                   ; $47f2: $11 $17 $ff
	di                                               ; $47f5: $f3
	ld   [de], a                                     ; $47f6: $12
	rst  $38                                         ; $47f7: $ff
	ldh  a, [c]                                      ; $47f8: $f2
	ld   de, $ff1f                                   ; $47f9: $11 $1f $ff
	ld   de, $ff1d                                   ; $47fc: $11 $1d $ff
	pop  af                                          ; $47ff: $f1
	dec  d                                           ; $4800: $15
	rst  $38                                         ; $4801: $ff
	pop  af                                          ; $4802: $f1
	ld   de, $ff1f                                   ; $4803: $11 $1f $ff
	ld   de, $ff1f                                   ; $4806: $11 $1f $ff
	pop  af                                          ; $4809: $f1
	jr   @+$01                                       ; $480a: $18 $ff

	pop  af                                          ; $480c: $f1
	ld   de, $ff3f                                   ; $480d: $11 $3f $ff
	ld   de, $ff1f                                   ; $4810: $11 $1f $ff
	pop  af                                          ; $4813: $f1
	add  hl, de                                      ; $4814: $19
	rst  $38                                         ; $4815: $ff
	pop  af                                          ; $4816: $f1
	ld   de, $ff2f                                   ; $4817: $11 $2f $ff
	ld   de, $ff1f                                   ; $481a: $11 $1f $ff
	pop  af                                          ; $481d: $f1
	jr   @+$01                                       ; $481e: $18 $ff

	pop  de                                          ; $4820: $d1
	ld   de, $ff1f                                   ; $4821: $11 $1f $ff
	ld   de, $ff1c                                   ; $4824: $11 $1c $ff
	di                                               ; $4827: $f3
	ld   d, $ff                                      ; $4828: $16 $ff
	push af                                          ; $482a: $f5
	ld   de, $ff1f                                   ; $482b: $11 $1f $ff
	ld   d, c                                        ; $482e: $51
	inc  de                                          ; $482f: $13
	rst  $38                                         ; $4830: $ff
	rst  $30                                         ; $4831: $f7
	inc  d                                           ; $4832: $14
	rst  $38                                         ; $4833: $ff
	rst  $30                                         ; $4834: $f7
	ld   de, $ff1d                                   ; $4835: $11 $1d $ff
	pop  hl                                          ; $4838: $e1
	ld   de, $fdff                                   ; $4839: $11 $ff $fd
	ld   de, $fcbf                                   ; $483c: $11 $bf $fc
	ld   sp, rAUD1LEN                                   ; $483f: $31 $11 $ff
	pop  af                                          ; $4842: $f1
	ld   de, $ff5f                                   ; $4843: $11 $5f $ff
	ld   d, c                                        ; $4846: $51
	ld   l, a                                        ; $4847: $6f
	cp   $71                                         ; $4848: $fe $71
	ld   de, $ffaf                                   ; $484a: $11 $af $ff
	ld   de, $ff1f                                   ; $484d: $11 $1f $ff
	pop  hl                                          ; $4850: $e1
	ld   a, [de]                                     ; $4851: $1a
	rst  $38                                         ; $4852: $ff
	push de                                          ; $4853: $d5
	ld   de, $ff1f                                   ; $4854: $11 $1f $ff
	and  c                                           ; $4857: $a1
	ld   de, $f9ff                                   ; $4858: $11 $ff $f9
	inc  de                                          ; $485b: $13
	rst  JumpTable                                         ; $485c: $df
	ld   sp, hl                                      ; $485d: $f9
	ld   de, rAUD1LEN                                   ; $485e: $11 $11 $ff
	push af                                          ; $4861: $f5
	ld   de, $ff2f                                   ; $4862: $11 $2f $ff
	ld   [hl], c                                     ; $4865: $71
	ld   e, [hl]                                     ; $4866: $5e
	rst  $38                                         ; $4867: $ff
	ld   h, d                                        ; $4868: $62
	ld   de, $ff1f                                   ; $4869: $11 $1f $ff
	ld   h, c                                        ; $486c: $61
	ld   de, $f9ff                                   ; $486d: $11 $ff $f9
	dec  d                                           ; $4870: $15
	rst  $28                                         ; $4871: $ef
	and  $41                                         ; $4872: $e6 $41
	ld   de, $fdcf                                   ; $4874: $11 $cf $fd
	ld   de, $ff1e                                   ; $4877: $11 $1e $ff
	pop  de                                          ; $487a: $d1
	inc  l                                           ; $487b: $2c
	rst  $38                                         ; $487c: $ff
	and  l                                           ; $487d: $a5
	ld   hl, $ff16                                   ; $487e: $21 $16 $ff
	pop  af                                          ; $4881: $f1
	ld   de, $feaf                                   ; $4882: $11 $af $fe
	ld   hl, $fabf                                   ; $4885: $21 $bf $fa
	ld   d, l                                        ; $4888: $55
	ld   de, $ff1f                                   ; $4889: $11 $1f $ff
	ld   d, c                                        ; $488c: $51
	inc  de                                          ; $488d: $13
	rst  $38                                         ; $488e: $ff
	rst  $30                                         ; $488f: $f7
	add  hl, de                                      ; $4890: $19
	rst  $28                                         ; $4891: $ef
	and  $64                                         ; $4892: $e6 $64
	ld   de, $ff6f                                   ; $4894: $11 $6f $ff
	ld   hl, $ff17                                   ; $4897: $21 $17 $ff
	push af                                          ; $489a: $f5
	dec  hl                                          ; $489b: $2b
	rst  JumpTable                                         ; $489c: $df
	or   a                                           ; $489d: $b7
	ld   [hl], h                                     ; $489e: $74
	ld   de, $fb8f                                   ; $489f: $11 $8f $fb
	ld   de, $ff1d                                   ; $48a2: $11 $1d $ff
	pop  bc                                          ; $48a5: $c1
	dec  a                                           ; $48a6: $3d
	rst  $38                                         ; $48a7: $ff
	sub  [hl]                                        ; $48a8: $96
	ld   d, h                                        ; $48a9: $54
	ld   de, $f99f                                   ; $48aa: $11 $9f $f9
	ld   de, $ff3d                                   ; $48ad: $11 $3d $ff
	and  d                                           ; $48b0: $a2
	ld   l, [hl]                                     ; $48b1: $6e
	rst  $38                                         ; $48b2: $ff
	ld   [hl], l                                     ; $48b3: $75
	ld   a, c                                        ; $48b4: $79
	ld   de, $fd3a                                   ; $48b5: $11 $3a $fd
	ld   b, c                                        ; $48b8: $41
	jr   @+$01                                       ; $48b9: $18 $ff

	call nc, $ff4b                                   ; $48bb: $d4 $4b $ff
	and  a                                           ; $48be: $a7
	ld   a, c                                        ; $48bf: $79
	ld   de, $ff1a                                   ; $48c0: $11 $1a $ff
	ld   h, c                                        ; $48c3: $61
	ld   d, $ff                                      ; $48c4: $16 $ff
	call nc, $ff29                                   ; $48c6: $d4 $29 $ff
	rst  $10                                         ; $48c9: $d7
	ld   e, c                                        ; $48ca: $59
	ld   h, c                                        ; $48cb: $61
	dec  d                                           ; $48cc: $15
	cp   [hl]                                        ; $48cd: $be
	and  e                                           ; $48ce: $a3
	inc  h                                           ; $48cf: $24
	cp   a                                           ; $48d0: $bf
	jp   hl                                          ; $48d1: $e9


	ld   [hl], $df                                   ; $48d2: $36 $df
	jp   hl                                          ; $48d4: $e9


	ld   l, b                                        ; $48d5: $68
	and  e                                           ; $48d6: $a3
	ld   de, $f96c                                   ; $48d7: $11 $6c $f9
	ld   sp, $fe4c                                   ; $48da: $31 $4c $fe
	ld   h, d                                        ; $48dd: $62
	ld   a, [hl]                                     ; $48de: $7e
	rst  $38                                         ; $48df: $ff
	sub  [hl]                                        ; $48e0: $96
	adc  c                                           ; $48e1: $89
	ld   b, c                                        ; $48e2: $41
	ld   d, $ad                                      ; $48e3: $16 $ad
	add  e                                           ; $48e5: $83
	ld   [hl], $ce                                   ; $48e6: $36 $ce
	or   l                                           ; $48e8: $b5
	add  hl, sp                                      ; $48e9: $39
	rst  $28                                         ; $48ea: $ef
	ret  c                                           ; $48eb: $d8

	ld   a, b                                        ; $48ec: $78
	or   a                                           ; $48ed: $b7
	ld   de, $d948                                   ; $48ee: $11 $48 $d9
	ld   d, e                                        ; $48f1: $53
	ld   e, d                                        ; $48f2: $5a
	db   $eb                                         ; $48f3: $eb
	ld   h, e                                        ; $48f4: $63
	ld   l, e                                        ; $48f5: $6b
	xor  $a8                                         ; $48f6: $ee $a8
	sbc  e                                           ; $48f8: $9b
	and  c                                           ; $48f9: $a1
	inc  de                                          ; $48fa: $13
	ld   l, h                                        ; $48fb: $6c
	and  [hl]                                        ; $48fc: $a6
	ld   b, l                                        ; $48fd: $45
	sbc  h                                           ; $48fe: $9c
	rst  ToBoot                                         ; $48ff: $c7
	inc  [hl]                                        ; $4900: $34
	xor  a                                           ; $4901: $af
	db   $fc                                         ; $4902: $fc
	add  a                                           ; $4903: $87
	xor  e                                           ; $4904: $ab
	sub  c                                           ; $4905: $91
	inc  de                                          ; $4906: $13
	ld   l, h                                        ; $4907: $6c
	sub  l                                           ; $4908: $95
	ld   d, [hl]                                     ; $4909: $56
	cp   e                                           ; $490a: $bb
	sub  l                                           ; $490b: $95
	ld   b, a                                        ; $490c: $47
	adc  $d9                                         ; $490d: $ce $d9
	sbc  d                                           ; $490f: $9a
	call z, $1381                                    ; $4910: $cc $81 $13
	ld   a, e                                        ; $4913: $7b
	add  l                                           ; $4914: $85
	ld   b, a                                        ; $4915: $47
	call z, $3695                                    ; $4916: $cc $95 $36
	cp   [hl]                                        ; $4919: $be
	db   $db                                         ; $491a: $db
	sbc  c                                           ; $491b: $99
	xor  e                                           ; $491c: $ab
	sub  e                                           ; $491d: $93
	ld   [de], a                                     ; $491e: $12
	ld   e, b                                        ; $491f: $58
	add  [hl]                                        ; $4920: $86
	ld   l, b                                        ; $4921: $68
	cp   e                                           ; $4922: $bb
	sub  l                                           ; $4923: $95
	ld   b, a                                        ; $4924: $47
	cp   h                                           ; $4925: $bc
	jp   z, $cc8a                                    ; $4926: $ca $8a $cc

	or   [hl]                                        ; $4929: $b6
	ld   de, $7646                                   ; $492a: $11 $46 $76
	ld   d, a                                        ; $492d: $57
	xor  h                                           ; $492e: $ac
	and  a                                           ; $492f: $a7
	ld   d, l                                        ; $4930: $55
	ld   a, c                                        ; $4931: $79
	res  7, e                                        ; $4932: $cb $bb
	cp   d                                           ; $4934: $ba
	xor  d                                           ; $4935: $aa
	ld   [hl], h                                     ; $4936: $74
	inc  h                                           ; $4937: $24
	ld   d, [hl]                                     ; $4938: $56
	halt                                             ; $4939: $76
	adc  c                                           ; $493a: $89
	cp   d                                           ; $493b: $ba
	halt                                             ; $493c: $76
	ld   d, a                                        ; $493d: $57
	sbc  e                                           ; $493e: $9b
	jp   z, $aa9a                                    ; $493f: $ca $9a $aa

	cp   d                                           ; $4942: $ba
	ld   [hl], h                                     ; $4943: $74
	dec  [hl]                                        ; $4944: $35
	ld   b, [hl]                                     ; $4945: $46
	ld   h, a                                        ; $4946: $67
	sbc  d                                           ; $4947: $9a
	cp   c                                           ; $4948: $b9
	halt                                             ; $4949: $76
	ld   l, b                                        ; $494a: $68
	sbc  d                                           ; $494b: $9a
	xor  d                                           ; $494c: $aa
	cp   e                                           ; $494d: $bb
	xor  c                                           ; $494e: $a9
	sbc  b                                           ; $494f: $98
	sub  [hl]                                        ; $4950: $96
	ld   b, h                                        ; $4951: $44
	dec  [hl]                                        ; $4952: $35
	ld   l, b                                        ; $4953: $68
	xor  d                                           ; $4954: $aa
	xor  b                                           ; $4955: $a8
	ld   h, [hl]                                     ; $4956: $66
	ld   l, b                                        ; $4957: $68
	sbc  d                                           ; $4958: $9a
	sbc  d                                           ; $4959: $9a
	xor  c                                           ; $495a: $a9
	sbc  d                                           ; $495b: $9a
	sbc  d                                           ; $495c: $9a
	xor  b                                           ; $495d: $a8
	ld   h, h                                        ; $495e: $64
	ld   b, e                                        ; $495f: $43
	ld   d, a                                        ; $4960: $57
	adc  e                                           ; $4961: $8b
	xor  d                                           ; $4962: $aa
	add  a                                           ; $4963: $87
	ld   h, [hl]                                     ; $4964: $66
	ld   a, b                                        ; $4965: $78
	sbc  c                                           ; $4966: $99
	xor  d                                           ; $4967: $aa
	xor  d                                           ; $4968: $aa
	sbc  c                                           ; $4969: $99
	xor  c                                           ; $496a: $a9
	add  a                                           ; $496b: $87
	ld   d, h                                        ; $496c: $54
	ld   b, h                                        ; $496d: $44
	ld   [hl], a                                     ; $496e: $77
	xor  d                                           ; $496f: $aa
	sbc  c                                           ; $4970: $99
	ld   [hl], a                                     ; $4971: $77
	ld   d, a                                        ; $4972: $57
	ld   a, c                                        ; $4973: $79
	sbc  c                                           ; $4974: $99
	xor  c                                           ; $4975: $a9
	sbc  b                                           ; $4976: $98
	sbc  d                                           ; $4977: $9a
	xor  c                                           ; $4978: $a9
	adc  b                                           ; $4979: $88
	ld   h, l                                        ; $497a: $65
	ld   b, h                                        ; $497b: $44
	ld   l, b                                        ; $497c: $68
	sbc  d                                           ; $497d: $9a
	sbc  b                                           ; $497e: $98
	ld   [hl], a                                     ; $497f: $77
	halt                                             ; $4980: $76
	ld   a, b                                        ; $4981: $78
	xor  d                                           ; $4982: $aa
	xor  c                                           ; $4983: $a9
	sbc  b                                           ; $4984: $98
	sbc  d                                           ; $4985: $9a
	xor  c                                           ; $4986: $a9
	sbc  c                                           ; $4987: $99
	add  [hl]                                        ; $4988: $86
	ld   d, l                                        ; $4989: $55
	ld   d, a                                        ; $498a: $57
	adc  b                                           ; $498b: $88
	sbc  b                                           ; $498c: $98
	sbc  b                                           ; $498d: $98
	ld   [hl], a                                     ; $498e: $77
	ld   l, b                                        ; $498f: $68
	sbc  c                                           ; $4990: $99
	xor  c                                           ; $4991: $a9
	adc  b                                           ; $4992: $88
	adc  b                                           ; $4993: $88
	xor  c                                           ; $4994: $a9
	sbc  c                                           ; $4995: $99
	sbc  b                                           ; $4996: $98
	halt                                             ; $4997: $76
	ld   d, [hl]                                     ; $4998: $56
	ld   d, a                                        ; $4999: $57
	ld   a, b                                        ; $499a: $78
	sbc  c                                           ; $499b: $99
	adc  b                                           ; $499c: $88
	ld   [hl], a                                     ; $499d: $77
	ld   a, b                                        ; $499e: $78
	sbc  b                                           ; $499f: $98
	adc  c                                           ; $49a0: $89
	sbc  c                                           ; $49a1: $99
	adc  c                                           ; $49a2: $89
	sbc  c                                           ; $49a3: $99
	xor  c                                           ; $49a4: $a9
	sbc  b                                           ; $49a5: $98
	ld   [hl], a                                     ; $49a6: $77
	halt                                             ; $49a7: $76
	ld   h, [hl]                                     ; $49a8: $66
	ld   a, b                                        ; $49a9: $78
	adc  b                                           ; $49aa: $88
	sbc  b                                           ; $49ab: $98
	sbc  b                                           ; $49ac: $98
	ld   [hl], a                                     ; $49ad: $77
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	sbc  b                                           ; $49b0: $98
	adc  c                                           ; $49b1: $89
	sbc  c                                           ; $49b2: $99
	sbc  c                                           ; $49b3: $99
	sbc  b                                           ; $49b4: $98
	adc  b                                           ; $49b5: $88
	add  a                                           ; $49b6: $87
	ld   h, a                                        ; $49b7: $67
	ld   h, a                                        ; $49b8: $67
	ld   [hl], a                                     ; $49b9: $77
	adc  b                                           ; $49ba: $88
	sbc  b                                           ; $49bb: $98
	adc  b                                           ; $49bc: $88
	ld   a, b                                        ; $49bd: $78
	adc  b                                           ; $49be: $88
	sbc  c                                           ; $49bf: $99
	sbc  c                                           ; $49c0: $99
	sbc  b                                           ; $49c1: $98
	sbc  b                                           ; $49c2: $98
	add  a                                           ; $49c3: $87
	ld   [hl], a                                     ; $49c4: $77
	ld   [hl], a                                     ; $49c5: $77
	ld   [hl], a                                     ; $49c6: $77
	ld   a, b                                        ; $49c7: $78
	adc  c                                           ; $49c8: $89
	sbc  b                                           ; $49c9: $98
	sbc  b                                           ; $49ca: $98
	add  a                                           ; $49cb: $87
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	sbc  b                                           ; $49ce: $98
	adc  c                                           ; $49cf: $89
	sbc  c                                           ; $49d0: $99
	sbc  b                                           ; $49d1: $98
	adc  b                                           ; $49d2: $88
	adc  b                                           ; $49d3: $88
	adc  c                                           ; $49d4: $89
	adc  c                                           ; $49d5: $89
	sbc  c                                           ; $49d6: $99
	sbc  b                                           ; $49d7: $98
	halt                                             ; $49d8: $76
	ld   h, [hl]                                     ; $49d9: $66
	ld   h, [hl]                                     ; $49da: $66
	ld   a, b                                        ; $49db: $78
	sbc  b                                           ; $49dc: $98
	adc  c                                           ; $49dd: $89
	adc  b                                           ; $49de: $88
	adc  b                                           ; $49df: $88
	sbc  d                                           ; $49e0: $9a
	xor  c                                           ; $49e1: $a9
	sbc  b                                           ; $49e2: $98
	ld   [hl], a                                     ; $49e3: $77
	ld   [hl], a                                     ; $49e4: $77
	ld   [hl], a                                     ; $49e5: $77
	ld   [hl], a                                     ; $49e6: $77
	adc  b                                           ; $49e7: $88
	sbc  b                                           ; $49e8: $98
	adc  c                                           ; $49e9: $89
	adc  b                                           ; $49ea: $88
	adc  b                                           ; $49eb: $88
	sbc  c                                           ; $49ec: $99
	sbc  b                                           ; $49ed: $98
	adc  b                                           ; $49ee: $88
	adc  b                                           ; $49ef: $88
	adc  b                                           ; $49f0: $88
	adc  b                                           ; $49f1: $88
	adc  c                                           ; $49f2: $89
	sbc  c                                           ; $49f3: $99
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
	add  a                                           ; $4a05: $87
	ld   a, b                                        ; $4a06: $78
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
	ld   de, $1111                                   ; $4a14: $11 $11 $11
	ld   de, $1111                                   ; $4a17: $11 $11 $11
	ld   de, $1111                                   ; $4a1a: $11 $11 $11
	ld   de, $1111                                   ; $4a1d: $11 $11 $11
	ld   de, $1111                                   ; $4a20: $11 $11 $11
	ld   de, $1111                                   ; $4a23: $11 $11 $11
	ld   de, $1111                                   ; $4a26: $11 $11 $11
	ld   de, $4800                                   ; $4a29: $11 $00 $48
	ld   de, $1111                                   ; $4a2c: $11 $11 $11
	ld   de, $1111                                   ; $4a2f: $11 $11 $11
	ld   de, $1111                                   ; $4a32: $11 $11 $11
	ld   de, $5413                                   ; $4a35: $11 $13 $54
	ld   d, h                                        ; $4a38: $54
	ld   d, h                                        ; $4a39: $54
	ld   b, c                                        ; $4a3a: $41
	rra                                              ; $4a3b: $1f
	rst  $38                                         ; $4a3c: $ff
	pop  af                                          ; $4a3d: $f1
	ld   de, $1311                                   ; $4a3e: $11 $11 $13
	pop  bc                                          ; $4a41: $c1
	ld   de, $de1c                                   ; $4a42: $11 $1c $de
	call c, $d1de                                    ; $4a45: $dc $de $d1
	ld   de, $1111                                   ; $4a48: $11 $11 $11
	ld   de, $1111                                   ; $4a4b: $11 $11 $11
	ld   de, $1111                                   ; $4a4e: $11 $11 $11
	ld   de, $1111                                   ; $4a51: $11 $11 $11
	ld   de, $5411                                   ; $4a54: $11 $11 $54
	ld   b, h                                        ; $4a57: $44
	jp   Jump_0f5_5411                               ; $4a58: $c3 $11 $54


	ld   d, h                                        ; $4a5b: $54
	ld   h, a                                        ; $4a5c: $67
	ld   [hl], d                                     ; $4a5d: $72
	ld   de, $1111                                   ; $4a5e: $11 $11 $11
	ld   de, $1112                                   ; $4a61: $11 $12 $11
	ld   [de], a                                     ; $4a64: $12
	ld   de, $1111                                   ; $4a65: $11 $11 $11
	ld   h, [hl]                                     ; $4a68: $66
	halt                                             ; $4a69: $76
	and  e                                           ; $4a6a: $a3
	ld   de, $8888                                   ; $4a6b: $11 $88 $88
	adc  b                                           ; $4a6e: $88
	adc  c                                           ; $4a6f: $89
	xor  c                                           ; $4a70: $a9
	xor  d                                           ; $4a71: $aa
	xor  c                                           ; $4a72: $a9
	xor  c                                           ; $4a73: $a9
	adc  c                                           ; $4a74: $89
	add  a                                           ; $4a75: $87
	halt                                             ; $4a76: $76
	ld   d, h                                        ; $4a77: $54
	ld   hl, $1111                                   ; $4a78: $21 $11 $11
	jr   c, @-$2f                                    ; $4a7b: $38 $cf

	rst  $38                                         ; $4a7d: $ff
	rst  $38                                         ; $4a7e: $ff
	bit  6, [hl]                                     ; $4a7f: $cb $76
	halt                                             ; $4a81: $76
	sbc  c                                           ; $4a82: $99
	ld   a, c                                        ; $4a83: $79
	halt                                             ; $4a84: $76
	sbc  c                                           ; $4a85: $99
	cp   [hl]                                        ; $4a86: $be
	rst  $38                                         ; $4a87: $ff
	db   $fd                                         ; $4a88: $fd
	or   [hl]                                        ; $4a89: $b6
	ld   de, $1111                                   ; $4a8a: $11 $11 $11
	ld   de, $ff68                                   ; $4a8d: $11 $68 $ff
	rst  $38                                         ; $4a90: $ff
	db   $fd                                         ; $4a91: $fd
	ld   a, [$3545]                                  ; $4a92: $fa $45 $35
	ld   e, b                                        ; $4a95: $58
	ld   [hl], a                                     ; $4a96: $77
	or   [hl]                                        ; $4a97: $b6
	rst  JumpTable                                         ; $4a98: $df
	rst  $28                                         ; $4a99: $ef
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	call nz, $1111                                   ; $4a9c: $c4 $11 $11
	ld   de, $5f11                                   ; $4a9f: $11 $11 $5f
	rst  $38                                         ; $4aa2: $ff
	rst  $38                                         ; $4aa3: $ff
	rst  $38                                         ; $4aa4: $ff
	or   d                                           ; $4aa5: $b2
	ld   sp, $5331                                   ; $4aa6: $31 $31 $53
	add  hl, de                                      ; $4aa9: $19
	inc  a                                           ; $4aaa: $3c
	rst  $38                                         ; $4aab: $ff
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	rst  $38                                         ; $4aae: $ff
	ld   d, c                                        ; $4aaf: $51
	ld   de, $1111                                   ; $4ab0: $11 $11 $11
	jr   @+$01                                       ; $4ab3: $18 $ff

	rst  $38                                         ; $4ab5: $ff
	rst  $38                                         ; $4ab6: $ff
	pop  af                                          ; $4ab7: $f1
	ld   [hl], c                                     ; $4ab8: $71
	ld   [de], a                                     ; $4ab9: $12
	dec  d                                           ; $4aba: $15
	inc  d                                           ; $4abb: $14
	ld   de, $fffb                                   ; $4abc: $11 $fb $ff
	rst  $38                                         ; $4abf: $ff
	rst  $38                                         ; $4ac0: $ff
	or   c                                           ; $4ac1: $b1
	ld   de, $1111                                   ; $4ac2: $11 $11 $11
	rra                                              ; $4ac5: $1f
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	or   c                                           ; $4ac9: $b1
	ld   d, c                                        ; $4aca: $51
	ld   hl, $1121                                   ; $4acb: $21 $21 $11
	ld   d, $af                                      ; $4ace: $16 $af
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	ei                                               ; $4ad2: $fb
	ld   de, $1111                                   ; $4ad3: $11 $11 $11
	rra                                              ; $4ad6: $1f
	rst  $38                                         ; $4ad7: $ff
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	rst  $20                                         ; $4ada: $e7
	ld   b, c                                        ; $4adb: $41
	and  c                                           ; $4adc: $a1
	sub  l                                           ; $4add: $95
	inc  de                                          ; $4ade: $13
	ld   [de], a                                     ; $4adf: $12
	ld   a, c                                        ; $4ae0: $79
	rst  $38                                         ; $4ae1: $ff
	rst  $38                                         ; $4ae2: $ff
	push af                                          ; $4ae3: $f5
	ld   de, $1111                                   ; $4ae4: $11 $11 $11
	rst  $38                                         ; $4ae7: $ff
	rst  $38                                         ; $4ae8: $ff
	rst  $38                                         ; $4ae9: $ff
	db   $f4                                         ; $4aea: $f4
	dec  [hl]                                        ; $4aeb: $35
	ld   d, $9d                                      ; $4aec: $16 $9d
	ld   a, c                                        ; $4aee: $79
	ld   de, $ef61                                   ; $4aef: $11 $61 $ef
	rst  $38                                         ; $4af2: $ff
	pop  af                                          ; $4af3: $f1
	ld   de, $1111                                   ; $4af4: $11 $11 $11
	cp   $ff                                         ; $4af7: $fe $ff
	rst  $38                                         ; $4af9: $ff
	or   $11                                         ; $4afa: $f6 $11
	ld   b, c                                        ; $4afc: $41
	rst  $28                                         ; $4afd: $ef
	rst  $28                                         ; $4afe: $ef
	ld   l, $41                                      ; $4aff: $2e $41
	db   $fc                                         ; $4b01: $fc
	rst  $28                                         ; $4b02: $ef
	ld   de, $1111                                   ; $4b03: $11 $11 $11
	ldh  a, [c]                                      ; $4b06: $f2
	rst  $38                                         ; $4b07: $ff
	rst  $38                                         ; $4b08: $ff
	ld   sp, hl                                      ; $4b09: $f9
	pop  af                                          ; $4b0a: $f1
	inc  de                                          ; $4b0b: $13
	ld   d, $bf                                      ; $4b0c: $16 $bf
	xor  a                                           ; $4b0e: $af
	rst  $30                                         ; $4b0f: $f7
	db   $fd                                         ; $4b10: $fd
	dec  d                                           ; $4b11: $15
	ld   de, $1111                                   ; $4b12: $11 $11 $11
	pop  af                                          ; $4b15: $f1
	rst  $38                                         ; $4b16: $ff
	ld   l, a                                        ; $4b17: $6f
	pop  af                                          ; $4b18: $f1
	pop  af                                          ; $4b19: $f1
	ld   c, c                                        ; $4b1a: $49
	ld   a, [de]                                     ; $4b1b: $1a
	ld   a, d                                        ; $4b1c: $7a
	ld   a, a                                        ; $4b1d: $7f
	db   $fc                                         ; $4b1e: $fc
	ldh  a, [c]                                      ; $4b1f: $f2
	ld   de, $1111                                   ; $4b20: $11 $11 $11
	rra                                              ; $4b23: $1f
	adc  a                                           ; $4b24: $8f
	rst  $38                                         ; $4b25: $ff
	rst  $38                                         ; $4b26: $ff
	ld   e, $31                                      ; $4b27: $1e $31
	or   e                                           ; $4b29: $b3
	ld   e, [hl]                                     ; $4b2a: $5e
	cp   c                                           ; $4b2b: $b9
	rst  $38                                         ; $4b2c: $ff
	sbc  a                                           ; $4b2d: $9f
	ld   de, $1111                                   ; $4b2e: $11 $11 $11
	rra                                              ; $4b31: $1f
	adc  a                                           ; $4b32: $8f
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	rst  JumpTable                                         ; $4b35: $df
	ld   c, a                                        ; $4b36: $4f
	ld   d, l                                        ; $4b37: $55
	jp   $ffc7                                       ; $4b38: $c3 $c7 $ff


	ld   l, a                                        ; $4b3b: $6f
	ld   de, $1111                                   ; $4b3c: $11 $11 $11
	rra                                              ; $4b3f: $1f
	ld   l, a                                        ; $4b40: $6f
	di                                               ; $4b41: $f3
	rst  $38                                         ; $4b42: $ff
	rra                                              ; $4b43: $1f
	rra                                              ; $4b44: $1f
	add  $fb                                         ; $4b45: $c6 $fb
	rst  $38                                         ; $4b47: $ff
	cp   $16                                         ; $4b48: $fe $16
	ld   de, $1111                                   ; $4b4a: $11 $11 $11
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	rst  $38                                         ; $4b4f: $ff
	pop  af                                          ; $4b50: $f1
	pop  af                                          ; $4b51: $f1
	cpl                                              ; $4b52: $2f
	rra                                              ; $4b53: $1f
	ei                                               ; $4b54: $fb
	rst  $38                                         ; $4b55: $ff
	pop  af                                          ; $4b56: $f1
	ld   de, $1111                                   ; $4b57: $11 $11 $11
	xor  a                                           ; $4b5a: $af
	cp   a                                           ; $4b5b: $bf
	ld   a, [$1ffa]                                  ; $4b5c: $fa $fa $1f
	rra                                              ; $4b5f: $1f
	push af                                          ; $4b60: $f5
	ei                                               ; $4b61: $fb
	db   $fc                                         ; $4b62: $fc
	pop  de                                          ; $4b63: $d1
	ld   de, $1111                                   ; $4b64: $11 $11 $11
	xor  a                                           ; $4b67: $af
	adc  a                                           ; $4b68: $8f
	db   $f4                                         ; $4b69: $f4
	cp   $1f                                         ; $4b6a: $fe $1f
	add  hl, de                                      ; $4b6c: $19
	db   $fc                                         ; $4b6d: $fc
	rst  $38                                         ; $4b6e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b6f: $cf
	or   c                                           ; $4b70: $b1
	ld   de, $1111                                   ; $4b71: $11 $11 $11
	rst  $38                                         ; $4b74: $ff
	rst  $38                                         ; $4b75: $ff
	db   $fc                                         ; $4b76: $fc
	pop  af                                          ; $4b77: $f1
	ld   b, h                                        ; $4b78: $44
	rra                                              ; $4b79: $1f
	rst  $28                                         ; $4b7a: $ef
	rst  $38                                         ; $4b7b: $ff
	ld   a, [$1161]                                  ; $4b7c: $fa $61 $11
	ld   de, $fc1e                                   ; $4b7f: $11 $1e $fc
	rst  $38                                         ; $4b82: $ff
	ld   e, a                                        ; $4b83: $5f
	ld   de, $fca1                                   ; $4b84: $11 $a1 $fc
	rst  $38                                         ; $4b87: $ff
	rst  $38                                         ; $4b88: $ff
	ld   b, c                                        ; $4b89: $41
	ld   de, $1111                                   ; $4b8a: $11 $11 $11
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	db   $f4                                         ; $4b8f: $f4
	pop  af                                          ; $4b90: $f1
	dec  d                                           ; $4b91: $15
	rra                                              ; $4b92: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b93: $cf
	rst  $38                                         ; $4b94: $ff
	di                                               ; $4b95: $f3
	ld   de, $1111                                   ; $4b96: $11 $11 $11
	ccf                                              ; $4b99: $3f
	rst  $38                                         ; $4b9a: $ff
	db   $fc                                         ; $4b9b: $fc
	rst  $38                                         ; $4b9c: $ff
	add  hl, de                                      ; $4b9d: $19
	dec  e                                           ; $4b9e: $1d
	cp   $ff                                         ; $4b9f: $fe $ff
	cp   $11                                         ; $4ba1: $fe $11
	ld   de, $1f11                                   ; $4ba3: $11 $11 $1f
	rst  $38                                         ; $4ba6: $ff
	rst  $38                                         ; $4ba7: $ff
	rst  $28                                         ; $4ba8: $ef
	inc  de                                          ; $4ba9: $13
	inc  de                                          ; $4baa: $13
	ei                                               ; $4bab: $fb
	rst  $38                                         ; $4bac: $ff
	rst  $28                                         ; $4bad: $ef
	ld   de, $1111                                   ; $4bae: $11 $11 $11
	rra                                              ; $4bb1: $1f
	rst  $38                                         ; $4bb2: $ff
	rst  $38                                         ; $4bb3: $ff
	rst  $38                                         ; $4bb4: $ff
	ld   de, $ff15                                   ; $4bb5: $11 $15 $ff
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	ld   de, $1111                                   ; $4bba: $11 $11 $11
	ld   e, a                                        ; $4bbd: $5f
	rst  $38                                         ; $4bbe: $ff
	rst  $38                                         ; $4bbf: $ff
	pop  af                                          ; $4bc0: $f1
	ld   de, $ff1f                                   ; $4bc1: $11 $1f $ff
	rst  $38                                         ; $4bc4: $ff
	db   $fc                                         ; $4bc5: $fc
	ld   de, $1111                                   ; $4bc6: $11 $11 $11
	rst  $38                                         ; $4bc9: $ff
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	pop  af                                          ; $4bcc: $f1
	ld   de, $ff1f                                   ; $4bcd: $11 $1f $ff
	rst  $38                                         ; $4bd0: $ff
	pop  af                                          ; $4bd1: $f1
	ld   de, $1411                                   ; $4bd2: $11 $11 $14
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	rst  $38                                         ; $4bd7: $ff
	ld   de, rAUD1LEN                                   ; $4bd8: $11 $11 $ff
	rst  $38                                         ; $4bdb: $ff
	rst  $38                                         ; $4bdc: $ff
	or   c                                           ; $4bdd: $b1
	ld   de, $1f11                                   ; $4bde: $11 $11 $1f
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	db   $fd                                         ; $4be3: $fd
	inc  d                                           ; $4be4: $14
	ld   de, $fff7                                   ; $4be5: $11 $f7 $ff
	rst  $38                                         ; $4be8: $ff
	ld   de, $1111                                   ; $4be9: $11 $11 $11
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	pop  af                                          ; $4bef: $f1
	ld   bc, $6f1f                                   ; $4bf0: $01 $1f $6f
	rst  $38                                         ; $4bf3: $ff
	pop  af                                          ; $4bf4: $f1
	ld   de, $1f11                                   ; $4bf5: $11 $11 $1f
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	ld   de, $f511                                   ; $4bfb: $11 $11 $f5
	rst  $38                                         ; $4bfe: $ff
	rst  $38                                         ; $4bff: $ff
	ld   de, $1111                                   ; $4c00: $11 $11 $11
	rst  $38                                         ; $4c03: $ff
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	pop  af                                          ; $4c06: $f1
	ld   de, $6f1f                                   ; $4c07: $11 $1f $6f
	rst  $38                                         ; $4c0a: $ff
	pop  af                                          ; $4c0b: $f1
	ld   de, $1f11                                   ; $4c0c: $11 $11 $1f
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	ld   [de], a                                     ; $4c12: $12
	ld   de, $fff3                                   ; $4c13: $11 $f3 $ff
	rst  $38                                         ; $4c16: $ff
	ld   de, $1111                                   ; $4c17: $11 $11 $11
	rst  $38                                         ; $4c1a: $ff
	rst  $38                                         ; $4c1b: $ff
	rst  $38                                         ; $4c1c: $ff
	pop  af                                          ; $4c1d: $f1
	ld   sp, $1f1f                                   ; $4c1e: $31 $1f $1f
	rst  $38                                         ; $4c21: $ff
	pop  af                                          ; $4c22: $f1
	ld   de, $1f11                                   ; $4c23: $11 $11 $1f
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	rst  $38                                         ; $4c28: $ff
	dec  d                                           ; $4c29: $15
	ld   de, $fff1                                   ; $4c2a: $11 $f1 $ff
	rst  $38                                         ; $4c2d: $ff
	ld   de, $1111                                   ; $4c2e: $11 $11 $11
	rst  $38                                         ; $4c31: $ff
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	pop  de                                          ; $4c34: $d1
	ld   h, c                                        ; $4c35: $61
	rra                                              ; $4c36: $1f
	rra                                              ; $4c37: $1f
	rst  $38                                         ; $4c38: $ff
	pop  af                                          ; $4c39: $f1
	ld   de, $1f11                                   ; $4c3a: $11 $11 $1f
	rst  $38                                         ; $4c3d: $ff
	rst  $38                                         ; $4c3e: $ff
	or   $15                                         ; $4c3f: $f6 $15
	inc  de                                          ; $4c41: $13
	pop  af                                          ; $4c42: $f1
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	ld   de, $1111                                   ; $4c45: $11 $11 $11
	rst  $38                                         ; $4c48: $ff
	rst  $38                                         ; $4c49: $ff
	rst  $38                                         ; $4c4a: $ff
	ld   de, $9f31                                   ; $4c4b: $11 $31 $9f
	cpl                                              ; $4c4e: $2f
	rst  $38                                         ; $4c4f: $ff
	pop  af                                          ; $4c50: $f1
	ld   de, $1f11                                   ; $4c51: $11 $11 $1f
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	pop  af                                          ; $4c56: $f1
	inc  de                                          ; $4c57: $13
	dec  de                                          ; $4c58: $1b
	jp   nc, $ffff                                   ; $4c59: $d2 $ff $ff

	ld   de, $1111                                   ; $4c5c: $11 $11 $11
	rst  $38                                         ; $4c5f: $ff
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	ld   b, c                                        ; $4c62: $41
	ld   d, c                                        ; $4c63: $51
	sbc  a                                           ; $4c64: $9f
	rra                                              ; $4c65: $1f
	rst  $38                                         ; $4c66: $ff
	pop  af                                          ; $4c67: $f1
	ld   de, $1f11                                   ; $4c68: $11 $11 $1f
	rst  $38                                         ; $4c6b: $ff
	rst  $38                                         ; $4c6c: $ff
	rst  $38                                         ; $4c6d: $ff
	rla                                              ; $4c6e: $17
	ld   de, $fff1                                   ; $4c6f: $11 $f1 $ff
	rst  $38                                         ; $4c72: $ff
	ld   de, $1111                                   ; $4c73: $11 $11 $11
	rst  $38                                         ; $4c76: $ff
	rst  $38                                         ; $4c77: $ff
	rst  $38                                         ; $4c78: $ff
	pop  af                                          ; $4c79: $f1
	ld   b, c                                        ; $4c7a: $41
	rra                                              ; $4c7b: $1f
	rra                                              ; $4c7c: $1f
	rst  $38                                         ; $4c7d: $ff
	di                                               ; $4c7e: $f3
	ld   de, $1111                                   ; $4c7f: $11 $11 $11
	rst  $38                                         ; $4c82: $ff
	rst  $38                                         ; $4c83: $ff
	rst  $38                                         ; $4c84: $ff
	ld   de, $f911                                   ; $4c85: $11 $11 $f9
	cp   a                                           ; $4c88: $bf
	rst  $38                                         ; $4c89: $ff
	pop  af                                          ; $4c8a: $f1
	ld   de, $1f11                                   ; $4c8b: $11 $11 $1f
	rst  $38                                         ; $4c8e: $ff
	rst  $38                                         ; $4c8f: $ff
	rst  $38                                         ; $4c90: $ff
	inc  d                                           ; $4c91: $14
	ld   de, $fff1                                   ; $4c92: $11 $f1 $ff
	rst  $38                                         ; $4c95: $ff
	or   c                                           ; $4c96: $b1
	ld   de, $1f11                                   ; $4c97: $11 $11 $1f
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	ld   d, $11                                      ; $4c9d: $16 $11
	pop  af                                          ; $4c9f: $f1
	rst  $38                                         ; $4ca0: $ff
	rst  $38                                         ; $4ca1: $ff
	sub  c                                           ; $4ca2: $91
	ld   de, $1f11                                   ; $4ca3: $11 $11 $1f
	rst  $38                                         ; $4ca6: $ff
	rst  $38                                         ; $4ca7: $ff
	rst  $38                                         ; $4ca8: $ff
	dec  d                                           ; $4ca9: $15
	ld   de, $fff1                                   ; $4caa: $11 $f1 $ff
	rst  $38                                         ; $4cad: $ff
	and  c                                           ; $4cae: $a1
	ld   de, $1f11                                   ; $4caf: $11 $11 $1f
	rst  $38                                         ; $4cb2: $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	ld   de, $f111                                   ; $4cb5: $11 $11 $f1
	rst  $38                                         ; $4cb8: $ff
	cp   a                                           ; $4cb9: $bf
	pop  af                                          ; $4cba: $f1
	ld   de, $1211                                   ; $4cbb: $11 $11 $12
	rst  $38                                         ; $4cbe: $ff
	rst  $38                                         ; $4cbf: $ff
	ld   l, a                                        ; $4cc0: $6f
	ld   b, c                                        ; $4cc1: $41
	and  c                                           ; $4cc2: $a1
	db   $fd                                         ; $4cc3: $fd
	ld   c, a                                        ; $4cc4: $4f
	rst  $38                                         ; $4cc5: $ff
	pop  af                                          ; $4cc6: $f1
	ld   de, $1111                                   ; $4cc7: $11 $11 $11
	rst  $38                                         ; $4cca: $ff
	rst  $38                                         ; $4ccb: $ff
	ld   a, [$12f1]                                  ; $4ccc: $fa $f1 $12
	rra                                              ; $4ccf: $1f
	ld   c, a                                        ; $4cd0: $4f
	ld   hl, sp-$01                                  ; $4cd1: $f8 $ff
	ld   de, $1111                                   ; $4cd3: $11 $11 $11
	rra                                              ; $4cd6: $1f
	rst  $38                                         ; $4cd7: $ff
	rst  $38                                         ; $4cd8: $ff
	rst  JumpTable                                         ; $4cd9: $df
	ld   d, $31                                      ; $4cda: $16 $31
	ldh  a, [c]                                      ; $4cdc: $f2
	rst  $28                                         ; $4cdd: $ef
	cpl                                              ; $4cde: $2f
	pop  hl                                          ; $4cdf: $e1
	ld   bc, $1111                                   ; $4ce0: $01 $11 $11
	xor  a                                           ; $4ce3: $af
	rst  $38                                         ; $4ce4: $ff
	ld   sp, hl                                      ; $4ce5: $f9
	pop  af                                          ; $4ce6: $f1
	ld   e, $1f                                      ; $4ce7: $1e $1f
	and  c                                           ; $4ce9: $a1
	di                                               ; $4cea: $f3
	rst  $38                                         ; $4ceb: $ff
	ld   a, [hl-]                                    ; $4cec: $3a
	ld   de, $1111                                   ; $4ced: $11 $11 $11
	rst  $38                                         ; $4cf0: $ff
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	pop  af                                          ; $4cf3: $f1
	jp   nz, $1f1f                                   ; $4cf4: $c2 $1f $1f

	push af                                          ; $4cf7: $f5
	rst  $38                                         ; $4cf8: $ff
	ld   [$1111], a                                  ; $4cf9: $ea $11 $11
	ld   de, $ffff                                   ; $4cfc: $11 $ff $ff
	rst  $38                                         ; $4cff: $ff
	pop  af                                          ; $4d00: $f1
	ld   b, c                                        ; $4d01: $41
	rra                                              ; $4d02: $1f
	ld   e, a                                        ; $4d03: $5f
	db   $fc                                         ; $4d04: $fc
	rst  $38                                         ; $4d05: $ff
	add  h                                           ; $4d06: $84
	ld   de, $1111                                   ; $4d07: $11 $11 $11
	ld   c, a                                        ; $4d0a: $4f
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	push af                                          ; $4d0d: $f5
	ld   l, a                                        ; $4d0e: $6f
	rra                                              ; $4d0f: $1f
	and  e                                           ; $4d10: $a3
	di                                               ; $4d11: $f3
	rst  $38                                         ; $4d12: $ff
	adc  a                                           ; $4d13: $8f
	ld   de, $1111                                   ; $4d14: $11 $11 $11
	ld   de, $ffff                                   ; $4d17: $11 $ff $ff
	rst  $38                                         ; $4d1a: $ff
	ld   a, [$d7d1]                                  ; $4d1b: $fa $d1 $d7
	ld   e, $79                                      ; $4d1e: $1e $79
	rst  $38                                         ; $4d20: $ff
	ei                                               ; $4d21: $fb
	ld   de, $1111                                   ; $4d22: $11 $11 $11
	rra                                              ; $4d25: $1f
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	halt                                             ; $4d29: $76
	dec  d                                           ; $4d2a: $15
	and  c                                           ; $4d2b: $a1
	rst  $38                                         ; $4d2c: $ff
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	or   c                                           ; $4d2f: $b1
	ld   de, $1111                                   ; $4d30: $11 $11 $11
	rra                                              ; $4d33: $1f
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	jp   z, $e78d                                    ; $4d37: $ca $8d $e7

	xor  c                                           ; $4d3a: $a9
	adc  l                                           ; $4d3b: $8d
	rst  $38                                         ; $4d3c: $ff
	db   $db                                         ; $4d3d: $db
	ld   h, c                                        ; $4d3e: $61
	ld   de, $1111                                   ; $4d3f: $11 $11 $11
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	rst  $30                                         ; $4d45: $f7
	and  c                                           ; $4d46: $a1
	ld   c, d                                        ; $4d47: $4a
	dec  de                                          ; $4d48: $1b
	xor  b                                           ; $4d49: $a8
	rst  $38                                         ; $4d4a: $ff
	rst  $38                                         ; $4d4b: $ff
	cp   d                                           ; $4d4c: $ba
	ld   de, $1111                                   ; $4d4d: $11 $11 $11
	ld   de, $ffff                                   ; $4d50: $11 $ff $ff
	rst  $38                                         ; $4d53: $ff
	db   $fc                                         ; $4d54: $fc
	add  c                                           ; $4d55: $81
	inc  d                                           ; $4d56: $14
	inc  de                                          ; $4d57: $13
	ld   a, c                                        ; $4d58: $79
	rst  $38                                         ; $4d59: $ff
	rst  $38                                         ; $4d5a: $ff
	cp   $21                                         ; $4d5b: $fe $21
	ld   de, $1111                                   ; $4d5d: $11 $11 $11
	rra                                              ; $4d60: $1f
	rst  $38                                         ; $4d61: $ff
	rst  $38                                         ; $4d62: $ff
	rst  $38                                         ; $4d63: $ff
	sub  $44                                         ; $4d64: $d6 $44
	ld   h, c                                        ; $4d66: $61
	ld   [hl-], a                                    ; $4d67: $32
	rla                                              ; $4d68: $17
	rst  $28                                         ; $4d69: $ef
	rst  $38                                         ; $4d6a: $ff
	rst  $38                                         ; $4d6b: $ff
	and  c                                           ; $4d6c: $a1
	ld   de, $1111                                   ; $4d6d: $11 $11 $11
	ld   [de], a                                     ; $4d70: $12
	rst  $38                                         ; $4d71: $ff
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	rst  $38                                         ; $4d74: $ff
	and  a                                           ; $4d75: $a7
	sub  a                                           ; $4d76: $97
	ld   b, c                                        ; $4d77: $41
	ld   [de], a                                     ; $4d78: $12
	ld   e, [hl]                                     ; $4d79: $5e
	rst  $38                                         ; $4d7a: $ff
	rst  $38                                         ; $4d7b: $ff
	ld   hl, sp+$11                                  ; $4d7c: $f8 $11
	ld   de, $1111                                   ; $4d7e: $11 $11 $11
	ld   de, $ff8f                                   ; $4d81: $11 $8f $ff
	rst  $38                                         ; $4d84: $ff
	rst  $38                                         ; $4d85: $ff
	db   $f4                                         ; $4d86: $f4
	ld   b, c                                        ; $4d87: $41
	ld   de, $6b13                                   ; $4d88: $11 $13 $6b
	rst  $38                                         ; $4d8b: $ff
	rst  $38                                         ; $4d8c: $ff
	rst  $38                                         ; $4d8d: $ff
	add  c                                           ; $4d8e: $81
	ld   de, $1111                                   ; $4d8f: $11 $11 $11
	ld   de, $2f11                                   ; $4d92: $11 $11 $2f
	rst  $38                                         ; $4d95: $ff
	rst  $38                                         ; $4d96: $ff
	rst  $38                                         ; $4d97: $ff
	and  l                                           ; $4d98: $a5
	dec  d                                           ; $4d99: $15
	ld   b, a                                        ; $4d9a: $47
	sub  h                                           ; $4d9b: $94
	ld   h, d                                        ; $4d9c: $62
	ld   c, h                                        ; $4d9d: $4c
	rst  $28                                         ; $4d9e: $ef
	rst  $38                                         ; $4d9f: $ff
	rst  $38                                         ; $4da0: $ff
	ld   h, c                                        ; $4da1: $61
	ld   de, $1111                                   ; $4da2: $11 $11 $11
	ld   de, $1b11                                   ; $4da5: $11 $11 $1b
	rst  $38                                         ; $4da8: $ff
	rst  $38                                         ; $4da9: $ff
	rst  $38                                         ; $4daa: $ff
	or   e                                           ; $4dab: $b3
	dec  h                                           ; $4dac: $25
	ld   e, d                                        ; $4dad: $5a
	call c, Call_0f5_76a7                            ; $4dae: $dc $a7 $76
	sbc  a                                           ; $4db1: $9f
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	or   c                                           ; $4db4: $b1
	ld   de, $1311                                   ; $4db5: $11 $11 $13
	halt                                             ; $4db8: $76
	ld   hl, $1111                                   ; $4db9: $21 $11 $11
	xor  a                                           ; $4dbc: $af
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	db   $eb                                         ; $4dbf: $eb
	sbc  c                                           ; $4dc0: $99
	cp   l                                           ; $4dc1: $bd
	call c, $2194                                    ; $4dc2: $dc $94 $21
	dec  d                                           ; $4dc5: $15
	cp   a                                           ; $4dc6: $bf
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	and  d                                           ; $4dc9: $a2
	ld   de, $3512                                   ; $4dca: $11 $12 $35
	ld   sp, $1111                                   ; $4dcd: $31 $11 $11
	dec  d                                           ; $4dd0: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dd1: $cf
	rst  $38                                         ; $4dd2: $ff
	ld   [$8784], a                                  ; $4dd3: $ea $84 $87
	rst  $28                                         ; $4dd6: $ef
	rst  $38                                         ; $4dd7: $ff
	db   $fd                                         ; $4dd8: $fd
	and  [hl]                                        ; $4dd9: $a6
	ld   d, h                                        ; $4dda: $54
	adc  d                                           ; $4ddb: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddc: $cf
	rst  $38                                         ; $4ddd: $ff
	ld   [$1352], a                                  ; $4dde: $ea $52 $13
	ld   d, l                                        ; $4de1: $55
	sub  [hl]                                        ; $4de2: $96
	ld   hl, $1111                                   ; $4de3: $21 $11 $11
	ld   de, $9a36                                   ; $4de6: $11 $36 $9a
	db   $dd                                         ; $4de9: $dd
	db   $dd                                         ; $4dea: $dd
	cp   l                                           ; $4deb: $bd
	xor  a                                           ; $4dec: $af
	rst  $38                                         ; $4ded: $ff
	ei                                               ; $4dee: $fb
	rst  ToBoot                                         ; $4def: $c7
	ld   h, a                                        ; $4df0: $67
	ld   e, d                                        ; $4df1: $5a

jr_0f5_4df2:
	cp   l                                           ; $4df2: $bd
	db   $fd                                         ; $4df3: $fd
	cp   $cb                                         ; $4df4: $fe $cb
	sub  a                                           ; $4df6: $97
	ld   h, l                                        ; $4df7: $65
	dec  [hl]                                        ; $4df8: $35
	ld   b, h                                        ; $4df9: $44
	ld   d, d                                        ; $4dfa: $52
	ld   de, $1411                                   ; $4dfb: $11 $11 $14
	ld   h, d                                        ; $4dfe: $62
	ld   b, c                                        ; $4dff: $41
	ld   [de], a                                     ; $4e00: $12
	jr   jr_0f5_4df2                                 ; $4e01: $18 $ef

	rst  $38                                         ; $4e03: $ff
	rst  $38                                         ; $4e04: $ff
	xor  h                                           ; $4e05: $ac
	and  a                                           ; $4e06: $a7
	db   $eb                                         ; $4e07: $eb
	xor  a                                           ; $4e08: $af
	sbc  c                                           ; $4e09: $99
	add  h                                           ; $4e0a: $84
	add  d                                           ; $4e0b: $82
	adc  h                                           ; $4e0c: $8c
	ld   l, [hl]                                     ; $4e0d: $6e
	ret                                              ; $4e0e: $c9


	reti                                             ; $4e0f: $d9


	sbc  c                                           ; $4e10: $99
	ld   a, d                                        ; $4e11: $7a
	adc  b                                           ; $4e12: $88
	sub  [hl]                                        ; $4e13: $96
	ld   d, h                                        ; $4e14: $54
	ld   de, $7924                                   ; $4e15: $11 $24 $79
	sub  a                                           ; $4e18: $97
	ld   b, e                                        ; $4e19: $43
	ld   de, $9c56                                   ; $4e1a: $11 $56 $9c
	ret                                              ; $4e1d: $c9


	ld   d, [hl]                                     ; $4e1e: $56
	inc  hl                                          ; $4e1f: $23
	ld   l, c                                        ; $4e20: $69
	sbc  $fe                                         ; $4e21: $de $fe
	ret                                              ; $4e23: $c9


	ld   d, a                                        ; $4e24: $57
	ld   e, d                                        ; $4e25: $5a
	cp   e                                           ; $4e26: $bb
	ei                                               ; $4e27: $fb
	xor  e                                           ; $4e28: $ab
	ld   a, c                                        ; $4e29: $79
	sbc  d                                           ; $4e2a: $9a
	db   $dd                                         ; $4e2b: $dd
	call $a8aa                                       ; $4e2c: $cd $aa $a8
	add  a                                           ; $4e2f: $87
	ld   h, [hl]                                     ; $4e30: $66
	ld   b, l                                        ; $4e31: $45
	ld   h, e                                        ; $4e32: $63
	ld   [hl], l                                     ; $4e33: $75
	ld   b, [hl]                                     ; $4e34: $46
	inc  sp                                          ; $4e35: $33
	ld   [hl-], a                                    ; $4e36: $32
	inc  sp                                          ; $4e37: $33
	ld   b, a                                        ; $4e38: $47
	sbc  b                                           ; $4e39: $98
	cp   c                                           ; $4e3a: $b9
	ld   h, [hl]                                     ; $4e3b: $66
	ld   d, e                                        ; $4e3c: $53
	ld   e, c                                        ; $4e3d: $59
	sbc  h                                           ; $4e3e: $9c
	call z, $a8ca                                    ; $4e3f: $cc $ca $a8
	xor  h                                           ; $4e42: $ac
	xor  l                                           ; $4e43: $ad
	jp   z, $87a7                                    ; $4e44: $ca $a7 $87

	ld   a, c                                        ; $4e47: $79
	adc  c                                           ; $4e48: $89
	sbc  e                                           ; $4e49: $9b
	sbc  c                                           ; $4e4a: $99
	sbc  c                                           ; $4e4b: $99
	xor  c                                           ; $4e4c: $a9
	cp   e                                           ; $4e4d: $bb
	adc  c                                           ; $4e4e: $89
	ld   b, l                                        ; $4e4f: $45
	ld   d, [hl]                                     ; $4e50: $56
	adc  c                                           ; $4e51: $89
	sbc  b                                           ; $4e52: $98
	ld   h, l                                        ; $4e53: $65
	ld   h, h                                        ; $4e54: $64
	ld   h, a                                        ; $4e55: $67
	ld   l, c                                        ; $4e56: $69
	halt                                             ; $4e57: $76
	ld   d, h                                        ; $4e58: $54
	ld   b, [hl]                                     ; $4e59: $46
	ld   a, c                                        ; $4e5a: $79
	xor  d                                           ; $4e5b: $aa
	add  a                                           ; $4e5c: $87
	ld   d, l                                        ; $4e5d: $55
	ld   d, [hl]                                     ; $4e5e: $56
	adc  c                                           ; $4e5f: $89
	xor  d                                           ; $4e60: $aa
	sbc  b                                           ; $4e61: $98
	ld   a, b                                        ; $4e62: $78
	sbc  d                                           ; $4e63: $9a
	cp   h                                           ; $4e64: $bc
	ret                                              ; $4e65: $c9


	sub  a                                           ; $4e66: $97
	ld   [hl], a                                     ; $4e67: $77
	ld   a, d                                        ; $4e68: $7a
	xor  e                                           ; $4e69: $ab
	cp   d                                           ; $4e6a: $ba
	sub  a                                           ; $4e6b: $97
	ld   [hl], a                                     ; $4e6c: $77
	sbc  d                                           ; $4e6d: $9a
	cp   e                                           ; $4e6e: $bb
	sbc  d                                           ; $4e6f: $9a
	add  a                                           ; $4e70: $87
	ld   h, a                                        ; $4e71: $67
	ld   [hl], a                                     ; $4e72: $77
	halt                                             ; $4e73: $76
	ld   h, l                                        ; $4e74: $65
	halt                                             ; $4e75: $76
	ld   a, b                                        ; $4e76: $78
	ld   a, b                                        ; $4e77: $78
	ld   h, [hl]                                     ; $4e78: $66
	ld   h, l                                        ; $4e79: $65
	halt                                             ; $4e7a: $76
	ld   a, b                                        ; $4e7b: $78
	add  a                                           ; $4e7c: $87
	halt                                             ; $4e7d: $76
	ld   a, b                                        ; $4e7e: $78
	adc  d                                           ; $4e7f: $8a
	adc  b                                           ; $4e80: $88
	sbc  b                                           ; $4e81: $98
	sbc  b                                           ; $4e82: $98
	sbc  c                                           ; $4e83: $99
	ld   a, d                                        ; $4e84: $7a
	sbc  d                                           ; $4e85: $9a
	cp   d                                           ; $4e86: $ba
	cp   d                                           ; $4e87: $ba
	xor  c                                           ; $4e88: $a9
	ld   [hl], a                                     ; $4e89: $77
	ld   [hl], a                                     ; $4e8a: $77
	adc  c                                           ; $4e8b: $89
	adc  b                                           ; $4e8c: $88
	add  [hl]                                        ; $4e8d: $86
	ld   [hl], a                                     ; $4e8e: $77
	ld   a, c                                        ; $4e8f: $79
	sbc  c                                           ; $4e90: $99
	adc  b                                           ; $4e91: $88
	add  a                                           ; $4e92: $87
	ld   a, c                                        ; $4e93: $79
	adc  b                                           ; $4e94: $88
	xor  b                                           ; $4e95: $a8
	adc  b                                           ; $4e96: $88
	add  a                                           ; $4e97: $87
	adc  b                                           ; $4e98: $88
	adc  c                                           ; $4e99: $89
	adc  b                                           ; $4e9a: $88
	halt                                             ; $4e9b: $76
	halt                                             ; $4e9c: $76
	ld   h, a                                        ; $4e9d: $67
	ld   [hl], a                                     ; $4e9e: $77
	adc  b                                           ; $4e9f: $88
	ld   a, b                                        ; $4ea0: $78
	sbc  b                                           ; $4ea1: $98
	adc  b                                           ; $4ea2: $88
	ld   [hl], a                                     ; $4ea3: $77
	ld   [hl], a                                     ; $4ea4: $77
	ld   [hl], a                                     ; $4ea5: $77
	add  a                                           ; $4ea6: $87
	adc  c                                           ; $4ea7: $89
	adc  c                                           ; $4ea8: $89
	adc  c                                           ; $4ea9: $89
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	adc  c                                           ; $4ead: $89
	sbc  b                                           ; $4eae: $98
	sbc  b                                           ; $4eaf: $98
	sbc  b                                           ; $4eb0: $98
	sbc  c                                           ; $4eb1: $99
	adc  c                                           ; $4eb2: $89
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	sbc  c                                           ; $4eb6: $99
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	ld   [hl], a                                     ; $4ebc: $77
	ld   a, b                                        ; $4ebd: $78
	sbc  c                                           ; $4ebe: $99
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	ld   [hl], a                                     ; $4ec1: $77
	ld   [hl], a                                     ; $4ec2: $77
	add  a                                           ; $4ec3: $87
	ld   [hl], a                                     ; $4ec4: $77
	ld   [hl], a                                     ; $4ec5: $77
	ld   [hl], a                                     ; $4ec6: $77
	ld   [hl], a                                     ; $4ec7: $77
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  b                                           ; $4ecb: $88
	sbc  c                                           ; $4ecc: $99
	sbc  b                                           ; $4ecd: $98
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	sbc  c                                           ; $4ed1: $99
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	sbc  c                                           ; $4ed4: $99
	sbc  b                                           ; $4ed5: $98
	sbc  b                                           ; $4ed6: $98
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  c                                           ; $4eda: $89
	adc  c                                           ; $4edb: $89
	sbc  c                                           ; $4edc: $99
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	ld   [hl], a                                     ; $4ee2: $77
	ld   [hl], a                                     ; $4ee3: $77
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	adc  c                                           ; $4ee8: $89
	sbc  c                                           ; $4ee9: $99
	adc  b                                           ; $4eea: $88
	add  a                                           ; $4eeb: $87
	adc  b                                           ; $4eec: $88
	adc  c                                           ; $4eed: $89
	sbc  c                                           ; $4eee: $99
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
	sbc  b                                           ; $4efe: $98
	adc  c                                           ; $4eff: $89
	sbc  c                                           ; $4f00: $99
	adc  b                                           ; $4f01: $88
	adc  b                                           ; $4f02: $88
	adc  b                                           ; $4f03: $88
	ld   [hl], a                                     ; $4f04: $77
	ld   a, b                                        ; $4f05: $78
	adc  b                                           ; $4f06: $88
	sbc  b                                           ; $4f07: $98
	adc  b                                           ; $4f08: $88
	adc  b                                           ; $4f09: $88
	adc  b                                           ; $4f0a: $88
	adc  b                                           ; $4f0b: $88
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	adc  c                                           ; $4f0f: $89
	sbc  c                                           ; $4f10: $99
	adc  b                                           ; $4f11: $88
	adc  b                                           ; $4f12: $88
	adc  b                                           ; $4f13: $88
	adc  b                                           ; $4f14: $88
	add  a                                           ; $4f15: $87
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	adc  b                                           ; $4f18: $88
	adc  b                                           ; $4f19: $88
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
	adc  b                                           ; $4f1d: $88
	adc  b                                           ; $4f1e: $88
	adc  c                                           ; $4f1f: $89
	sbc  c                                           ; $4f20: $99
	adc  c                                           ; $4f21: $89
	adc  b                                           ; $4f22: $88
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	adc  b                                           ; $4f26: $88
	adc  b                                           ; $4f27: $88
	adc  b                                           ; $4f28: $88
	adc  b                                           ; $4f29: $88
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  b                                           ; $4f2f: $88
	adc  b                                           ; $4f30: $88
	adc  b                                           ; $4f31: $88
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	adc  b                                           ; $4f36: $88
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	adc  b                                           ; $4f3b: $88
	adc  b                                           ; $4f3c: $88
	adc  b                                           ; $4f3d: $88
	adc  b                                           ; $4f3e: $88
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

Jump_0f5_5188:
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

Call_0f5_51b9:
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

Call_0f5_5297:
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88

Call_0f5_5299:
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

Jump_0f5_5411:
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

Call_0f5_5496:
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

Call_0f5_5587:
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

Call_0f5_55a7:
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

Call_0f5_55b7:
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

Call_0f5_55d5:
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

Call_0f5_5697:
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

Call_0f5_56a6:
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

Jump_0f5_5775:
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

Jump_0f5_578a:
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

Call_0f5_57c8:
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

Call_0f5_5883:
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
	adc  c                                           ; $58c8: $89

Call_0f5_58c9:
	sbc  b                                           ; $58c9: $98
	adc  b                                           ; $58ca: $88
	sbc  c                                           ; $58cb: $99
	sbc  c                                           ; $58cc: $99
	xor  c                                           ; $58cd: $a9
	sbc  c                                           ; $58ce: $99
	sbc  b                                           ; $58cf: $98
	sbc  b                                           ; $58d0: $98
	add  a                                           ; $58d1: $87
	ld   h, [hl]                                     ; $58d2: $66
	ld   h, l                                        ; $58d3: $65
	ld   d, l                                        ; $58d4: $55
	ld   b, h                                        ; $58d5: $44
	ld   d, h                                        ; $58d6: $54
	ld   b, l                                        ; $58d7: $45
	ld   h, [hl]                                     ; $58d8: $66
	ld   a, b                                        ; $58d9: $78

jr_0f5_58da:
	sbc  c                                           ; $58da: $99
	xor  e                                           ; $58db: $ab
	call $dddd                                       ; $58dc: $cd $dd $dd
	call z, $abcc                                    ; $58df: $cc $cc $ab
	cp   c                                           ; $58e2: $b9
	add  a                                           ; $58e3: $87
	ld   h, [hl]                                     ; $58e4: $66
	ld   d, e                                        ; $58e5: $53
	ld   hl, $1111                                   ; $58e6: $21 $11 $11
	ld   de, $3521                                   ; $58e9: $11 $21 $35
	ld   l, b                                        ; $58ec: $68
	sbc  h                                           ; $58ed: $9c
	rst  JumpTable                                         ; $58ee: $df
	rst  $38                                         ; $58ef: $ff
	rst  $38                                         ; $58f0: $ff
	rst  $38                                         ; $58f1: $ff
	rst  $38                                         ; $58f2: $ff
	rst  $38                                         ; $58f3: $ff
	db   $ed                                         ; $58f4: $ed
	jp   z, Jump_0f5_65a7                            ; $58f5: $ca $a7 $65

	ld   hl, $1111                                   ; $58f8: $21 $11 $11
	ld   de, $6111                                   ; $58fb: $11 $11 $61
	dec  d                                           ; $58fe: $15
	ld   l, d                                        ; $58ff: $6a
	cp   e                                           ; $5900: $bb
	rst  $38                                         ; $5901: $ff
	rst  $38                                         ; $5902: $ff
	rst  $38                                         ; $5903: $ff
	rst  $38                                         ; $5904: $ff
	rst  $38                                         ; $5905: $ff
	rst  $38                                         ; $5906: $ff
	jp   z, $67eb                                    ; $5907: $ca $eb $67

	ld   b, l                                        ; $590a: $45
	ld   de, $1111                                   ; $590b: $11 $11 $11
	ld   de, $1111                                   ; $590e: $11 $11 $11
	dec  d                                           ; $5911: $15
	ld   a, l                                        ; $5912: $7d
	cp   $ff                                         ; $5913: $fe $ff
	rst  $38                                         ; $5915: $ff
	rst  $38                                         ; $5916: $ff
	rst  $38                                         ; $5917: $ff
	cp   $ef                                         ; $5918: $fe $ef
	or   [hl]                                        ; $591a: $b6
	adc  d                                           ; $591b: $8a
	ld   h, l                                        ; $591c: $65
	ld   [hl+], a                                    ; $591d: $22
	ld   de, $1111                                   ; $591e: $11 $11 $11
	ld   b, c                                        ; $5921: $41
	dec  e                                           ; $5922: $1d
	ld   de, $ff19                                   ; $5923: $11 $19 $ff
	adc  a                                           ; $5926: $8f
	rst  $38                                         ; $5927: $ff
	rst  $38                                         ; $5928: $ff
	rst  $38                                         ; $5929: $ff
	cp   $67                                         ; $592a: $fe $67
	db   $fd                                         ; $592c: $fd
	inc  d                                           ; $592d: $14
	cp   [hl]                                        ; $592e: $be
	ld   h, c                                        ; $592f: $61
	inc  [hl]                                        ; $5930: $34
	ld   de, $f111                                   ; $5931: $11 $11 $f1
	jr   jr_0f5_58da                                 ; $5934: $18 $a4

	ld   de, $afff                                   ; $5936: $11 $ff $af
	rst  $38                                         ; $5939: $ff
	rst  $38                                         ; $593a: $ff
	rst  $38                                         ; $593b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $593c: $cf
	and  c                                           ; $593d: $a1
	ld   c, a                                        ; $593e: $4f
	and  e                                           ; $593f: $a3
	dec  hl                                          ; $5940: $2b
	ldh  a, [c]                                      ; $5941: $f2
	ld   de, $1e11                                   ; $5942: $11 $11 $1e
	ld   sp, $b41f                                   ; $5945: $31 $1f $b4
	rra                                              ; $5948: $1f
	rst  $38                                         ; $5949: $ff
	sbc  a                                           ; $594a: $9f
	rst  $38                                         ; $594b: $ff
	db   $fd                                         ; $594c: $fd
	db   $f4                                         ; $594d: $f4
	cp   l                                           ; $594e: $bd
	ld   b, c                                        ; $594f: $41
	ld   e, e                                        ; $5950: $5b
	and  $1c                                         ; $5951: $e6 $1c
	add  c                                           ; $5953: $81
	ld   de, $e11f                                   ; $5954: $11 $1f $e1
	ld   a, [de]                                     ; $5957: $1a
	rst  $38                                         ; $5958: $ff
	ld   de, $ffff                                   ; $5959: $11 $ff $ff
	rst  $38                                         ; $595c: $ff
	rst  $38                                         ; $595d: $ff
	pop  af                                          ; $595e: $f1
	dec  e                                           ; $595f: $1d
	ret                                              ; $5960: $c9


	ld   de, $32ff                                   ; $5961: $11 $ff $32
	ld   de, $ef11                                   ; $5964: $11 $11 $ef
	ld   de, $f1df                                   ; $5967: $11 $df $f1
	rra                                              ; $596a: $1f
	rst  $38                                         ; $596b: $ff
	rst  $38                                         ; $596c: $ff
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	ld   de, $f11f                                   ; $596f: $11 $1f $f1
	jr   @-$0d                                       ; $5972: $18 $f1

	ld   de, $1f11                                   ; $5974: $11 $11 $1f
	ld   de, $ff19                                   ; $5977: $11 $19 $ff
	rra                                              ; $597a: $1f
	rst  $38                                         ; $597b: $ff
	rst  $38                                         ; $597c: $ff
	ld   a, [$f11f]                                  ; $597d: $fa $1f $f1
	ld   de, $78ff                                   ; $5980: $11 $ff $78
	ld   h, c                                        ; $5983: $61
	ld   de, $9111                                   ; $5984: $11 $11 $91
	ld   de, $fc1e                                   ; $5987: $11 $1e $fc
	rst  $38                                         ; $598a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $598b: $cf
	rst  $38                                         ; $598c: $ff
	pop  af                                          ; $598d: $f1
	ld   d, [hl]                                     ; $598e: $56
	rra                                              ; $598f: $1f
	rst  ToBoot                                         ; $5990: $c7
	xor  b                                           ; $5991: $a8
	cp   [hl]                                        ; $5992: $be
	ld   de, $8f11                                   ; $5993: $11 $11 $8f
	ld   de, rAUD1LEN                                   ; $5996: $11 $11 $ff
	rst  $38                                         ; $5999: $ff
	ld   a, d                                        ; $599a: $7a
	rst  $38                                         ; $599b: $ff
	db   $fd                                         ; $599c: $fd
	ld   de, $ff2a                                   ; $599d: $11 $2a $ff
	ld   [hl], c                                     ; $59a0: $71
	dec  e                                           ; $59a1: $1d
	ld   h, c                                        ; $59a2: $61
	ld   de, $149f                                   ; $59a3: $11 $9f $14
	ld   de, $ffff                                   ; $59a6: $11 $ff $ff
	ld   l, c                                        ; $59a9: $69
	rst  $38                                         ; $59aa: $ff
	rst  $38                                         ; $59ab: $ff
	ld   de, $ff1f                                   ; $59ac: $11 $1f $ff
	pop  af                                          ; $59af: $f1
	ld   de, $1411                                   ; $59b0: $11 $11 $14
	ld   b, c                                        ; $59b3: $41
	ld   d, $ef                                      ; $59b4: $16 $ef
	rst  $38                                         ; $59b6: $ff
	rst  $38                                         ; $59b7: $ff
	rst  $38                                         ; $59b8: $ff
	rst  $38                                         ; $59b9: $ff
	ld   hl, rAUD1LEN                                   ; $59ba: $21 $11 $ff
	rst  $38                                         ; $59bd: $ff
	ld   de, $1311                                   ; $59be: $11 $11 $13
	pop  af                                          ; $59c1: $f1
	ld   de, $ff1f                                   ; $59c2: $11 $1f $ff
	rst  $38                                         ; $59c5: $ff
	adc  a                                           ; $59c6: $8f
	rst  $38                                         ; $59c7: $ff
	pop  af                                          ; $59c8: $f1
	ld   de, $ff1f                                   ; $59c9: $11 $1f $ff
	add  c                                           ; $59cc: $81
	ld   de, $f21f                                   ; $59cd: $11 $1f $f2
	ld   de, $ff1f                                   ; $59d0: $11 $1f $ff
	ei                                               ; $59d3: $fb
	ld   de, $f81f                                   ; $59d4: $11 $1f $f8
	ld   de, $ff1f                                   ; $59d7: $11 $1f $ff
	pop  af                                          ; $59da: $f1
	ld   de, $ff1f                                   ; $59db: $11 $1f $ff
	pop  af                                          ; $59de: $f1
	rra                                              ; $59df: $1f
	rst  $38                                         ; $59e0: $ff
	rst  $38                                         ; $59e1: $ff
	ld   d, c                                        ; $59e2: $51
	rra                                              ; $59e3: $1f
	rst  $38                                         ; $59e4: $ff
	pop  bc                                          ; $59e5: $c1
	dec  d                                           ; $59e6: $15
	rst  $28                                         ; $59e7: $ef
	ld   de, $df11                                   ; $59e8: $11 $11 $df
	rst  $38                                         ; $59eb: $ff
	ld   de, $ff19                                   ; $59ec: $11 $19 $ff
	rst  $38                                         ; $59ef: $ff
	ld   de, $df11                                   ; $59f0: $11 $11 $df
	rst  $38                                         ; $59f3: $ff
	ld   hl, $1111                                   ; $59f4: $21 $11 $11
	rst  $38                                         ; $59f7: $ff
	rra                                              ; $59f8: $1f
	ld   de, $ffff                                   ; $59f9: $11 $ff $ff
	rst  $38                                         ; $59fc: $ff
	ld   de, $afa1                                   ; $59fd: $11 $a1 $af
	rst  $38                                         ; $5a00: $ff
	or   h                                           ; $5a01: $b4
	ld   de, $af11                                   ; $5a02: $11 $11 $af
	rst  $38                                         ; $5a05: $ff
	ld   b, c                                        ; $5a06: $41
	ld   b, e                                        ; $5a07: $43
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	ld   de, $8f11                                   ; $5a0a: $11 $11 $8f
	rst  $38                                         ; $5a0d: $ff
	and  c                                           ; $5a0e: $a1
	ld   de, rAUD1LEN                                   ; $5a0f: $11 $11 $ff
	rst  $38                                         ; $5a12: $ff
	ld   de, $ff1f                                   ; $5a13: $11 $1f $ff
	rst  $38                                         ; $5a16: $ff
	ld   de, rAUD1LEN                                   ; $5a17: $11 $11 $ff
	rst  $38                                         ; $5a1a: $ff
	ld   de, $1f11                                   ; $5a1b: $11 $11 $1f
	rst  $38                                         ; $5a1e: $ff
	pop  af                                          ; $5a1f: $f1
	ld   de, $ff1f                                   ; $5a20: $11 $1f $ff
	pop  af                                          ; $5a23: $f1
	ld   de, $ff1f                                   ; $5a24: $11 $1f $ff
	push af                                          ; $5a27: $f5
	ld   de, rAUD1LEN                                   ; $5a28: $11 $11 $ff
	rst  $38                                         ; $5a2b: $ff
	ld   de, rAUD1LEN                                   ; $5a2c: $11 $11 $ff
	rst  $38                                         ; $5a2f: $ff
	ld   de, $ef11                                   ; $5a30: $11 $11 $ef
	rst  $38                                         ; $5a33: $ff
	or   c                                           ; $5a34: $b1
	ld   de, $ff1f                                   ; $5a35: $11 $1f $ff
	pop  af                                          ; $5a38: $f1
	ld   de, $ff1f                                   ; $5a39: $11 $1f $ff
	pop  af                                          ; $5a3c: $f1
	ld   de, $ff1f                                   ; $5a3d: $11 $1f $ff
	push af                                          ; $5a40: $f5
	ld   de, rAUD1LEN                                   ; $5a41: $11 $11 $ff
	rst  $38                                         ; $5a44: $ff
	ld   de, rAUD1LEN                                   ; $5a45: $11 $11 $ff
	rst  $38                                         ; $5a48: $ff
	ld   de, rAUD1LEN                                   ; $5a49: $11 $11 $ff
	rst  $38                                         ; $5a4c: $ff
	ld   de, $9f11                                   ; $5a4d: $11 $11 $9f
	rst  $38                                         ; $5a50: $ff
	pop  af                                          ; $5a51: $f1
	ld   de, $ffff                                   ; $5a52: $11 $ff $ff
	pop  af                                          ; $5a55: $f1
	ld   de, $ff1f                                   ; $5a56: $11 $1f $ff
	pop  af                                          ; $5a59: $f1
	ld   de, $ff1f                                   ; $5a5a: $11 $1f $ff
	db   $fc                                         ; $5a5d: $fc
	ld   de, $ff1f                                   ; $5a5e: $11 $1f $ff
	cp   $11                                         ; $5a61: $fe $11
	dec  d                                           ; $5a63: $15
	rst  $38                                         ; $5a64: $ff
	pop  af                                          ; $5a65: $f1
	ld   de, rAUD1LEN                                   ; $5a66: $11 $11 $ff
	rst  $38                                         ; $5a69: $ff
	ld   de, rAUD1LEN                                   ; $5a6a: $11 $11 $ff
	rst  $38                                         ; $5a6d: $ff
	ld   de, rAUD1LEN                                   ; $5a6e: $11 $11 $ff
	ei                                               ; $5a71: $fb
	ld   de, rAUD1LEN                                   ; $5a72: $11 $11 $ff
	rst  $38                                         ; $5a75: $ff
	sub  c                                           ; $5a76: $91
	ld   de, $ffff                                   ; $5a77: $11 $ff $ff
	ld   h, c                                        ; $5a7a: $61
	ld   de, $fadf                                   ; $5a7b: $11 $df $fa
	ld   de, rAUD1LEN                                   ; $5a7e: $11 $11 $ff
	rst  $38                                         ; $5a81: $ff
	ld   sp, hl                                      ; $5a82: $f9
	ld   de, $ffef                                   ; $5a83: $11 $ef $ff
	or   c                                           ; $5a86: $b1
	ld   de, $1181                                   ; $5a87: $11 $81 $11
	ld   de, $ff1f                                   ; $5a8a: $11 $1f $ff
	rst  $38                                         ; $5a8d: $ff
	db   $fc                                         ; $5a8e: $fc
	ld   e, a                                        ; $5a8f: $5f
	rst  $38                                         ; $5a90: $ff
	or   e                                           ; $5a91: $b3
	ld   de, $618f                                   ; $5a92: $11 $8f $61
	ld   de, $df11                                   ; $5a95: $11 $11 $df
	rst  $38                                         ; $5a98: $ff
	db   $f4                                         ; $5a99: $f4
	jp   $ffff                                       ; $5a9a: $c3 $ff $ff


	ld   de, rAUD1LEN                                   ; $5a9d: $11 $11 $ff
	ld   de, $1111                                   ; $5aa0: $11 $11 $11
	rst  $38                                         ; $5aa3: $ff
	rst  $38                                         ; $5aa4: $ff
	xor  d                                           ; $5aa5: $aa
	ld   a, [de]                                     ; $5aa6: $1a
	rst  $38                                         ; $5aa7: $ff
	rst  $38                                         ; $5aa8: $ff
	ld   de, $f113                                   ; $5aa9: $11 $13 $f1
	ld   de, $1f11                                   ; $5aac: $11 $11 $1f
	rst  $38                                         ; $5aaf: $ff
	rst  $38                                         ; $5ab0: $ff
	rst  $30                                         ; $5ab1: $f7
	ld   a, a                                        ; $5ab2: $7f
	rst  $38                                         ; $5ab3: $ff
	push af                                          ; $5ab4: $f5
	ld   de, $112b                                   ; $5ab5: $11 $2b $11
	ld   de, rAUD1LEN                                   ; $5ab8: $11 $11 $ff
	rst  $38                                         ; $5abb: $ff
	rst  $38                                         ; $5abc: $ff
	cp   d                                           ; $5abd: $ba
	rst  $38                                         ; $5abe: $ff
	rst  $38                                         ; $5abf: $ff
	ld   sp, $e111                                   ; $5ac0: $31 $11 $e1
	ld   de, $1f11                                   ; $5ac3: $11 $11 $1f
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	ei                                               ; $5ac8: $fb
	ld   a, a                                        ; $5ac9: $7f
	rst  $38                                         ; $5aca: $ff
	or   $31                                         ; $5acb: $f6 $31
	ld   a, [de]                                     ; $5acd: $1a
	ld   de, $1111                                   ; $5ace: $11 $11 $11
	rst  JumpTable                                         ; $5ad1: $df
	rst  $38                                         ; $5ad2: $ff
	rst  $38                                         ; $5ad3: $ff
	ld   a, [$ffff]                                  ; $5ad4: $fa $ff $ff
	halt                                             ; $5ad7: $76
	inc  de                                          ; $5ad8: $13
	and  c                                           ; $5ad9: $a1
	ld   de, $1f11                                   ; $5ada: $11 $11 $1f
	rst  $38                                         ; $5add: $ff
	cp   $ff                                         ; $5ade: $fe $ff
	rst  $38                                         ; $5ae0: $ff
	rst  $38                                         ; $5ae1: $ff
	ld   hl, sp+$61                                  ; $5ae2: $f8 $61
	ld   a, c                                        ; $5ae4: $79
	ld   de, $1111                                   ; $5ae5: $11 $11 $11
	rst  $38                                         ; $5ae8: $ff
	rst  $38                                         ; $5ae9: $ff
	rst  $38                                         ; $5aea: $ff
	rst  JumpTable                                         ; $5aeb: $df
	rst  $38                                         ; $5aec: $ff
	rst  $38                                         ; $5aed: $ff
	rst  ToBoot                                         ; $5aee: $c7
	ld   a, [de]                                     ; $5aef: $1a
	ld   b, c                                        ; $5af0: $41
	ld   de, $1f11                                   ; $5af1: $11 $11 $1f
	rst  $38                                         ; $5af4: $ff
	rst  $38                                         ; $5af5: $ff
	ei                                               ; $5af6: $fb
	rst  $38                                         ; $5af7: $ff
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	sub  c                                           ; $5afa: $91
	pop  de                                          ; $5afb: $d1
	ld   de, $1111                                   ; $5afc: $11 $11 $11
	xor  e                                           ; $5aff: $ab
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	rst  JumpTable                                         ; $5b02: $df
	rst  $38                                         ; $5b03: $ff
	rst  $38                                         ; $5b04: $ff
	ei                                               ; $5b05: $fb
	dec  e                                           ; $5b06: $1d
	ld   de, $1111                                   ; $5b07: $11 $11 $11
	ld   de, $ff7f                                   ; $5b0a: $11 $7f $ff
	rst  $38                                         ; $5b0d: $ff
	rst  $38                                         ; $5b0e: $ff
	rst  $38                                         ; $5b0f: $ff
	rst  $38                                         ; $5b10: $ff
	or   $c3                                         ; $5b11: $f6 $c3
	ld   de, $1111                                   ; $5b13: $11 $11 $11
	inc  de                                          ; $5b16: $13
	xor  l                                           ; $5b17: $ad
	call $ffff                                       ; $5b18: $cd $ff $ff
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	cp   h                                           ; $5b1d: $bc
	add  e                                           ; $5b1e: $83
	ld   de, $1111                                   ; $5b1f: $11 $11 $11
	rla                                              ; $5b22: $17
	ld   l, b                                        ; $5b23: $68
	ld   d, [hl]                                     ; $5b24: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b25: $cf
	rst  $38                                         ; $5b26: $ff
	rst  $38                                         ; $5b27: $ff
	rst  $38                                         ; $5b28: $ff
	call $11b7                                       ; $5b29: $cd $b7 $11
	ld   de, $3811                                   ; $5b2c: $11 $11 $38
	ld   b, e                                        ; $5b2f: $43
	ld   de, $ff5a                                   ; $5b30: $11 $5a $ff
	rst  $38                                         ; $5b33: $ff
	rst  $38                                         ; $5b34: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b35: $cf
	reti                                             ; $5b36: $d9


	ld   d, c                                        ; $5b37: $51
	ld   de, $4913                                   ; $5b38: $11 $13 $49
	ld   sp, $1511                                   ; $5b3b: $31 $11 $15
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	rst  $38                                         ; $5b40: $ff
	adc  $ed                                         ; $5b41: $ce $ed
	sub  e                                           ; $5b43: $93
	ld   de, $9a26                                   ; $5b44: $11 $26 $9a
	ld   [hl], l                                     ; $5b47: $75
	ld   de, $6a12                                   ; $5b48: $11 $12 $6a
	rst  $28                                         ; $5b4b: $ef
	db   $fd                                         ; $5b4c: $fd
	xor  c                                           ; $5b4d: $a9
	sbc  c                                           ; $5b4e: $99
	cp   d                                           ; $5b4f: $ba
	add  [hl]                                        ; $5b50: $86
	ld   a, b                                        ; $5b51: $78
	adc  d                                           ; $5b52: $8a
	xor  e                                           ; $5b53: $ab
	add  [hl]                                        ; $5b54: $86
	ld   b, d                                        ; $5b55: $42
	inc  de                                          ; $5b56: $13
	ld   e, c                                        ; $5b57: $59
	xor  e                                           ; $5b58: $ab
	xor  b                                           ; $5b59: $a8
	ld   h, l                                        ; $5b5a: $65
	ld   h, a                                        ; $5b5b: $67
	sbc  e                                           ; $5b5c: $9b
	call z, $bccd                                    ; $5b5d: $cc $cd $bc
	xor  c                                           ; $5b60: $a9
	ld   h, h                                        ; $5b61: $64
	ld   b, h                                        ; $5b62: $44
	ld   d, [hl]                                     ; $5b63: $56
	ld   h, a                                        ; $5b64: $67
	ld   d, h                                        ; $5b65: $54
	ld   b, h                                        ; $5b66: $44
	ld   h, [hl]                                     ; $5b67: $66
	adc  d                                           ; $5b68: $8a
	xor  d                                           ; $5b69: $aa
	cp   h                                           ; $5b6a: $bc
	cp   h                                           ; $5b6b: $bc
	sbc  $cc                                         ; $5b6c: $de $cc
	sub  a                                           ; $5b6e: $97
	ld   d, e                                        ; $5b6f: $53
	inc  sp                                          ; $5b70: $33
	inc  [hl]                                        ; $5b71: $34
	ld   b, h                                        ; $5b72: $44
	ld   b, h                                        ; $5b73: $44
	ld   d, [hl]                                     ; $5b74: $56
	ld   a, d                                        ; $5b75: $7a
	xor  h                                           ; $5b76: $ac
	cp   h                                           ; $5b77: $bc
	db   $dd                                         ; $5b78: $dd
	db   $dd                                         ; $5b79: $dd
	db   $dd                                         ; $5b7a: $dd
	cp   d                                           ; $5b7b: $ba
	add  [hl]                                        ; $5b7c: $86
	ld   d, e                                        ; $5b7d: $53
	ld   hl, $3512                                   ; $5b7e: $21 $12 $35
	ld   a, b                                        ; $5b81: $78
	adc  b                                           ; $5b82: $88
	adc  b                                           ; $5b83: $88
	adc  c                                           ; $5b84: $89
	call $dcff                                       ; $5b85: $cd $ff $dc
	cp   d                                           ; $5b88: $ba
	xor  c                                           ; $5b89: $a9
	sub  a                                           ; $5b8a: $97
	ld   d, e                                        ; $5b8b: $53
	ld   de, $5723                                   ; $5b8c: $11 $23 $57
	ld   [hl], a                                     ; $5b8f: $77
	ld   h, a                                        ; $5b90: $67
	adc  b                                           ; $5b91: $88
	xor  d                                           ; $5b92: $aa
	cp   d                                           ; $5b93: $ba
	cp   e                                           ; $5b94: $bb
	xor  e                                           ; $5b95: $ab
	call z, $98bb                                    ; $5b96: $cc $bb $98
	halt                                             ; $5b99: $76
	ld   d, h                                        ; $5b9a: $54
	inc  sp                                          ; $5b9b: $33
	dec  [hl]                                        ; $5b9c: $35
	ld   h, [hl]                                     ; $5b9d: $66
	ld   h, a                                        ; $5b9e: $67
	ld   [hl], a                                     ; $5b9f: $77
	ld   h, a                                        ; $5ba0: $67
	sbc  d                                           ; $5ba1: $9a
	xor  d                                           ; $5ba2: $aa
	xor  d                                           ; $5ba3: $aa
	cp   e                                           ; $5ba4: $bb
	call z, $b9cc                                    ; $5ba5: $cc $cc $b9
	ld   [hl], a                                     ; $5ba8: $77
	ld   h, l                                        ; $5ba9: $65
	ld   b, h                                        ; $5baa: $44
	ld   b, h                                        ; $5bab: $44
	inc  [hl]                                        ; $5bac: $34
	ld   d, [hl]                                     ; $5bad: $56
	ld   [hl], a                                     ; $5bae: $77
	adc  c                                           ; $5baf: $89
	sbc  c                                           ; $5bb0: $99
	sbc  c                                           ; $5bb1: $99
	sbc  d                                           ; $5bb2: $9a
	xor  e                                           ; $5bb3: $ab
	call z, $badd                                    ; $5bb4: $cc $dd $ba
	sbc  c                                           ; $5bb7: $99
	add  [hl]                                        ; $5bb8: $86
	ld   d, l                                        ; $5bb9: $55
	ld   d, h                                        ; $5bba: $54
	ld   b, h                                        ; $5bbb: $44
	ld   d, [hl]                                     ; $5bbc: $56
	ld   h, [hl]                                     ; $5bbd: $66
	ld   h, [hl]                                     ; $5bbe: $66
	ld   h, [hl]                                     ; $5bbf: $66
	ld   a, b                                        ; $5bc0: $78
	sbc  d                                           ; $5bc1: $9a
	sbc  c                                           ; $5bc2: $99
	xor  e                                           ; $5bc3: $ab
	call z, $edde                                    ; $5bc4: $cc $de $ed
	cp   c                                           ; $5bc7: $b9
	sub  a                                           ; $5bc8: $97
	ld   d, e                                        ; $5bc9: $53
	ld   [hl+], a                                    ; $5bca: $22
	inc  sp                                          ; $5bcb: $33
	inc  [hl]                                        ; $5bcc: $34
	ld   d, [hl]                                     ; $5bcd: $56
	ld   d, [hl]                                     ; $5bce: $56
	ld   l, b                                        ; $5bcf: $68
	sbc  c                                           ; $5bd0: $99
	xor  d                                           ; $5bd1: $aa
	cp   h                                           ; $5bd2: $bc
	call z, $babb                                    ; $5bd3: $cc $bb $ba
	cp   e                                           ; $5bd6: $bb
	cp   c                                           ; $5bd7: $b9
	add  a                                           ; $5bd8: $87
	ld   h, h                                        ; $5bd9: $64
	ld   b, e                                        ; $5bda: $43
	ld   b, l                                        ; $5bdb: $45
	ld   d, h                                        ; $5bdc: $54
	ld   d, a                                        ; $5bdd: $57
	sub  a                                           ; $5bde: $97
	ld   h, [hl]                                     ; $5bdf: $66
	ld   a, c                                        ; $5be0: $79
	adc  b                                           ; $5be1: $88
	sbc  d                                           ; $5be2: $9a
	sbc  c                                           ; $5be3: $99
	sbc  c                                           ; $5be4: $99
	xor  d                                           ; $5be5: $aa
	set  1, e                                        ; $5be6: $cb $cb
	call z, Call_0f5_6497                            ; $5be8: $cc $97 $64
	ld   b, h                                        ; $5beb: $44
	ld   b, h                                        ; $5bec: $44
	ld   d, l                                        ; $5bed: $55
	ld   d, l                                        ; $5bee: $55
	ld   h, [hl]                                     ; $5bef: $66
	ld   h, a                                        ; $5bf0: $67
	ld   a, b                                        ; $5bf1: $78
	sbc  c                                           ; $5bf2: $99
	xor  d                                           ; $5bf3: $aa
	sub  a                                           ; $5bf4: $97
	ld   [hl], a                                     ; $5bf5: $77
	adc  d                                           ; $5bf6: $8a
	cp   e                                           ; $5bf7: $bb
	res  7, d                                        ; $5bf8: $cb $ba
	cp   c                                           ; $5bfa: $b9
	sbc  b                                           ; $5bfb: $98
	ld   [hl], l                                     ; $5bfc: $75
	ld   b, [hl]                                     ; $5bfd: $46
	ld   h, h                                        ; $5bfe: $64
	inc  hl                                          ; $5bff: $23
	ld   b, l                                        ; $5c00: $45
	ld   h, [hl]                                     ; $5c01: $66
	ld   a, c                                        ; $5c02: $79
	sbc  b                                           ; $5c03: $98
	adc  b                                           ; $5c04: $88
	xor  d                                           ; $5c05: $aa
	xor  e                                           ; $5c06: $ab
	cp   e                                           ; $5c07: $bb
	cp   c                                           ; $5c08: $b9
	xor  d                                           ; $5c09: $aa
	cp   d                                           ; $5c0a: $ba
	xor  e                                           ; $5c0b: $ab
	sbc  b                                           ; $5c0c: $98
	ld   [hl], a                                     ; $5c0d: $77
	ld   h, l                                        ; $5c0e: $65
	ld   d, [hl]                                     ; $5c0f: $56
	ld   d, h                                        ; $5c10: $54
	ld   b, h                                        ; $5c11: $44
	ld   d, [hl]                                     ; $5c12: $56
	ld   [hl], a                                     ; $5c13: $77
	ld   [hl], a                                     ; $5c14: $77
	ld   a, b                                        ; $5c15: $78
	sbc  c                                           ; $5c16: $99
	xor  e                                           ; $5c17: $ab
	xor  d                                           ; $5c18: $aa
	xor  h                                           ; $5c19: $ac
	db   $db                                         ; $5c1a: $db
	sbc  b                                           ; $5c1b: $98
	sbc  d                                           ; $5c1c: $9a
	cp   c                                           ; $5c1d: $b9
	sub  a                                           ; $5c1e: $97
	ld   h, [hl]                                     ; $5c1f: $66
	ld   d, l                                        ; $5c20: $55
	ld   d, a                                        ; $5c21: $57
	halt                                             ; $5c22: $76
	ld   h, [hl]                                     ; $5c23: $66
	ld   h, l                                        ; $5c24: $65
	ld   d, a                                        ; $5c25: $57
	add  a                                           ; $5c26: $87
	ld   [hl], a                                     ; $5c27: $77
	adc  c                                           ; $5c28: $89
	adc  c                                           ; $5c29: $89
	sbc  e                                           ; $5c2a: $9b
	xor  d                                           ; $5c2b: $aa
	cp   e                                           ; $5c2c: $bb
	cp   d                                           ; $5c2d: $ba
	sbc  d                                           ; $5c2e: $9a
	cp   d                                           ; $5c2f: $ba
	sbc  b                                           ; $5c30: $98
	sbc  b                                           ; $5c31: $98
	ld   [hl], a                                     ; $5c32: $77
	ld   [hl], a                                     ; $5c33: $77
	ld   h, h                                        ; $5c34: $64
	inc  sp                                          ; $5c35: $33
	ld   b, [hl]                                     ; $5c36: $46
	ld   [hl], a                                     ; $5c37: $77
	ld   [hl], a                                     ; $5c38: $77
	ld   [hl], a                                     ; $5c39: $77
	adc  b                                           ; $5c3a: $88
	sbc  d                                           ; $5c3b: $9a
	cp   d                                           ; $5c3c: $ba
	adc  c                                           ; $5c3d: $89
	sbc  b                                           ; $5c3e: $98
	sbc  d                                           ; $5c3f: $9a
	res  5, d                                        ; $5c40: $cb $aa
	cp   d                                           ; $5c42: $ba
	xor  e                                           ; $5c43: $ab
	cp   c                                           ; $5c44: $b9
	add  [hl]                                        ; $5c45: $86
	ld   d, h                                        ; $5c46: $54
	ld   b, l                                        ; $5c47: $45
	ld   d, l                                        ; $5c48: $55
	ld   d, h                                        ; $5c49: $54
	ld   d, [hl]                                     ; $5c4a: $56
	ld   h, a                                        ; $5c4b: $67
	sbc  c                                           ; $5c4c: $99
	sbc  b                                           ; $5c4d: $98
	ld   [hl], a                                     ; $5c4e: $77
	ld   a, b                                        ; $5c4f: $78
	xor  e                                           ; $5c50: $ab
	xor  d                                           ; $5c51: $aa
	sbc  d                                           ; $5c52: $9a
	res  7, h                                        ; $5c53: $cb $bc
	cp   e                                           ; $5c55: $bb
	sbc  b                                           ; $5c56: $98
	ld   [hl], a                                     ; $5c57: $77
	add  a                                           ; $5c58: $87
	ld   h, l                                        ; $5c59: $65
	ld   d, l                                        ; $5c5a: $55
	ld   d, l                                        ; $5c5b: $55
	ld   h, a                                        ; $5c5c: $67
	sub  a                                           ; $5c5d: $97
	ld   h, l                                        ; $5c5e: $65
	ld   d, a                                        ; $5c5f: $57
	adc  b                                           ; $5c60: $88
	sbc  b                                           ; $5c61: $98
	add  a                                           ; $5c62: $87
	ld   a, b                                        ; $5c63: $78
	adc  d                                           ; $5c64: $8a
	cp   e                                           ; $5c65: $bb
	xor  c                                           ; $5c66: $a9
	sbc  c                                           ; $5c67: $99
	sbc  e                                           ; $5c68: $9b
	res  5, b                                        ; $5c69: $cb $a8
	adc  c                                           ; $5c6b: $89
	add  a                                           ; $5c6c: $87
	ld   h, a                                        ; $5c6d: $67
	ld   [hl], l                                     ; $5c6e: $75
	ld   d, h                                        ; $5c6f: $54
	ld   d, h                                        ; $5c70: $54
	dec  [hl]                                        ; $5c71: $35
	ld   [hl], a                                     ; $5c72: $77
	ld   h, [hl]                                     ; $5c73: $66
	ld   a, b                                        ; $5c74: $78
	adc  c                                           ; $5c75: $89
	adc  e                                           ; $5c76: $8b
	jp   z, $a99a                                    ; $5c77: $ca $9a $a9

	adc  d                                           ; $5c7a: $8a
	xor  e                                           ; $5c7b: $ab
	cp   d                                           ; $5c7c: $ba
	xor  c                                           ; $5c7d: $a9
	adc  b                                           ; $5c7e: $88
	sbc  e                                           ; $5c7f: $9b
	xor  c                                           ; $5c80: $a9
	ld   h, [hl]                                     ; $5c81: $66
	ld   h, h                                        ; $5c82: $64
	ld   b, l                                        ; $5c83: $45
	ld   d, h                                        ; $5c84: $54
	ld   b, l                                        ; $5c85: $45
	ld   [hl], a                                     ; $5c86: $77
	ld   d, l                                        ; $5c87: $55
	ld   a, h                                        ; $5c88: $7c
	xor  b                                           ; $5c89: $a8
	ld   h, l                                        ; $5c8a: $65
	adc  e                                           ; $5c8b: $8b
	call z, Call_0f5_68a9                            ; $5c8c: $cc $a9 $68
	xor  h                                           ; $5c8f: $ac
	sbc  $c9                                         ; $5c90: $de $c9
	adc  e                                           ; $5c92: $8b
	cp   d                                           ; $5c93: $ba
	add  l                                           ; $5c94: $85
	dec  [hl]                                        ; $5c95: $35
	ld   [hl], a                                     ; $5c96: $77
	ld   [hl], h                                     ; $5c97: $74
	ld   hl, $8826                                   ; $5c98: $21 $26 $88
	halt                                             ; $5c9b: $76
	ld   d, l                                        ; $5c9c: $55
	adc  c                                           ; $5c9d: $89
	xor  d                                           ; $5c9e: $aa
	xor  d                                           ; $5c9f: $aa
	sbc  c                                           ; $5ca0: $99
	adc  c                                           ; $5ca1: $89
	call $cadd                                       ; $5ca2: $cd $dd $ca
	adc  b                                           ; $5ca5: $88
	adc  b                                           ; $5ca6: $88
	xor  h                                           ; $5ca7: $ac
	add  l                                           ; $5ca8: $85
	inc  [hl]                                        ; $5ca9: $34
	ld   b, h                                        ; $5caa: $44
	ld   b, [hl]                                     ; $5cab: $46
	ld   [hl], h                                     ; $5cac: $74
	ld   [hl+], a                                    ; $5cad: $22
	ld   d, a                                        ; $5cae: $57
	adc  b                                           ; $5caf: $88
	ld   a, b                                        ; $5cb0: $78
	halt                                             ; $5cb1: $76
	sbc  l                                           ; $5cb2: $9d
	db   $ec                                         ; $5cb3: $ec
	sub  a                                           ; $5cb4: $97
	sbc  h                                           ; $5cb5: $9c
	db   $dd                                         ; $5cb6: $dd
	db   $dd                                         ; $5cb7: $dd
	xor  d                                           ; $5cb8: $aa
	cp   h                                           ; $5cb9: $bc
	or   l                                           ; $5cba: $b5
	inc  hl                                          ; $5cbb: $23
	ld   b, l                                        ; $5cbc: $45
	halt                                             ; $5cbd: $76
	ld   b, e                                        ; $5cbe: $43
	ld   de, $ab26                                   ; $5cbf: $11 $26 $ab
	add  a                                           ; $5cc2: $87
	ld   h, a                                        ; $5cc3: $67
	sbc  e                                           ; $5cc4: $9b
	res  3, b                                        ; $5cc5: $cb $98
	sbc  h                                           ; $5cc7: $9c
	xor  $ca                                         ; $5cc8: $ee $ca
	cp   e                                           ; $5cca: $bb
	ld   a, d                                        ; $5ccb: $7a
	cp   e                                           ; $5ccc: $bb
	adc  b                                           ; $5ccd: $88
	sub  h                                           ; $5cce: $94
	ld   hl, $4423                                   ; $5ccf: $21 $23 $44
	inc  sp                                          ; $5cd2: $33
	ld   b, [hl]                                     ; $5cd3: $46
	ld   a, b                                        ; $5cd4: $78
	ld   [hl], a                                     ; $5cd5: $77
	sbc  b                                           ; $5cd6: $98
	cp   h                                           ; $5cd7: $bc
	db   $ed                                         ; $5cd8: $ed
	jp   z, $ecce                                    ; $5cd9: $ca $ce $ec

	sbc  c                                           ; $5cdc: $99
	cp   l                                           ; $5cdd: $bd
	or   a                                           ; $5cde: $b7
	ld   [hl-], a                                    ; $5cdf: $32
	ld   b, l                                        ; $5ce0: $45
	ld   d, e                                        ; $5ce1: $53
	ld   hl, $6523                                   ; $5ce2: $21 $23 $65
	ld   b, l                                        ; $5ce5: $45
	ld   a, d                                        ; $5ce6: $7a
	cp   e                                           ; $5ce7: $bb
	xor  d                                           ; $5ce8: $aa
	xor  h                                           ; $5ce9: $ac
	call c, $9fb9                                    ; $5cea: $dc $b9 $9f
	rst  $38                                         ; $5ced: $ff
	and  [hl]                                        ; $5cee: $a6
	ld   h, a                                        ; $5cef: $67
	adc  c                                           ; $5cf0: $89
	sub  a                                           ; $5cf1: $97
	ld   d, d                                        ; $5cf2: $52
	ld   de, $8715                                   ; $5cf3: $11 $15 $87
	ld   b, c                                        ; $5cf6: $41
	inc  d                                           ; $5cf7: $14
	cp   [hl]                                        ; $5cf8: $be
	db   $eb                                         ; $5cf9: $eb
	halt                                             ; $5cfa: $76
	sbc  [hl]                                        ; $5cfb: $9e
	rst  $38                                         ; $5cfc: $ff
	jp   c, $deab                                    ; $5cfd: $da $ab $de

	db   $eb                                         ; $5d00: $eb
	add  a                                           ; $5d01: $87
	add  a                                           ; $5d02: $87
	ld   d, h                                        ; $5d03: $54
	ld   b, e                                        ; $5d04: $43
	ld   [hl+], a                                    ; $5d05: $22
	ld   de, $3522                                   ; $5d06: $11 $22 $35
	ld   h, a                                        ; $5d09: $67
	xor  e                                           ; $5d0a: $ab
	xor  c                                           ; $5d0b: $a9
	adc  d                                           ; $5d0c: $8a
	rst  $28                                         ; $5d0d: $ef
	db   $ec                                         ; $5d0e: $ec
	cp   l                                           ; $5d0f: $bd
	cp   $c9                                         ; $5d10: $fe $c9
	sbc  e                                           ; $5d12: $9b
	jp   c, $3374                                    ; $5d13: $da $74 $33

	ld   b, [hl]                                     ; $5d16: $46
	ld   b, d                                        ; $5d17: $42
	ld   de, $3412                                   ; $5d18: $11 $12 $34
	ld   d, [hl]                                     ; $5d1b: $56
	ld   a, c                                        ; $5d1c: $79
	sbc  c                                           ; $5d1d: $99
	cp   a                                           ; $5d1e: $bf
	rst  $38                                         ; $5d1f: $ff
	or   a                                           ; $5d20: $b7
	ld   a, h                                        ; $5d21: $7c
	rst  $38                                         ; $5d22: $ff
	add  sp, $79                                     ; $5d23: $e8 $79
	db   $ed                                         ; $5d25: $ed
	or   a                                           ; $5d26: $b7
	ld   d, h                                        ; $5d27: $54
	dec  [hl]                                        ; $5d28: $35
	ld   h, h                                        ; $5d29: $64
	ld   de, $4512                                   ; $5d2a: $11 $12 $45
	ld   b, e                                        ; $5d2d: $43
	dec  [hl]                                        ; $5d2e: $35
	ld   a, b                                        ; $5d2f: $78
	cp   l                                           ; $5d30: $bd
	res  5, d                                        ; $5d31: $cb $aa
	cp   [hl]                                        ; $5d33: $be
	db   $fd                                         ; $5d34: $fd
	cp   d                                           ; $5d35: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d36: $cf
	rst  $38                                         ; $5d37: $ff
	ld   [hl], e                                     ; $5d38: $73
	ld   c, d                                        ; $5d39: $4a
	db   $fd                                         ; $5d3a: $fd
	ld   d, c                                        ; $5d3b: $51
	inc  de                                          ; $5d3c: $13
	ld   h, [hl]                                     ; $5d3d: $66
	ld   sp, $3511                                   ; $5d3e: $31 $11 $35
	ld   h, l                                        ; $5d41: $65
	dec  [hl]                                        ; $5d42: $35
	ld   a, e                                        ; $5d43: $7b
	cp   h                                           ; $5d44: $bc
	sbc  c                                           ; $5d45: $99
	cp   h                                           ; $5d46: $bc
	db   $dd                                         ; $5d47: $dd
	db   $ed                                         ; $5d48: $ed
	db   $dd                                         ; $5d49: $dd
	db   $dd                                         ; $5d4a: $dd
	res  1, c                                        ; $5d4b: $cb $89
	cp   h                                           ; $5d4d: $bc
	or   [hl]                                        ; $5d4e: $b6
	inc  [hl]                                        ; $5d4f: $34
	ld   h, [hl]                                     ; $5d50: $66
	ld   d, e                                        ; $5d51: $53
	ld   de, $4424                                   ; $5d52: $11 $24 $44
	inc  [hl]                                        ; $5d55: $34
	ld   d, [hl]                                     ; $5d56: $56
	ld   h, a                                        ; $5d57: $67
	sbc  b                                           ; $5d58: $98
	sbc  d                                           ; $5d59: $9a
	xor  e                                           ; $5d5a: $ab
	cp   e                                           ; $5d5b: $bb
	sbc  $c8                                         ; $5d5c: $de $c8
	adc  h                                           ; $5d5e: $8c
	db   $fd                                         ; $5d5f: $fd
	cp   c                                           ; $5d60: $b9
	sbc  c                                           ; $5d61: $99
	sbc  c                                           ; $5d62: $99
	sbc  b                                           ; $5d63: $98
	ld   h, l                                        ; $5d64: $65
	ld   h, a                                        ; $5d65: $67
	add  h                                           ; $5d66: $84
	ld   [hl+], a                                    ; $5d67: $22
	ld   d, [hl]                                     ; $5d68: $56
	ld   d, e                                        ; $5d69: $53
	inc  h                                           ; $5d6a: $24
	ld   h, l                                        ; $5d6b: $65
	ld   b, [hl]                                     ; $5d6c: $46
	adc  c                                           ; $5d6d: $89
	add  a                                           ; $5d6e: $87
	ld   a, c                                        ; $5d6f: $79
	xor  h                                           ; $5d70: $ac
	cp   e                                           ; $5d71: $bb
	add  a                                           ; $5d72: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d73: $cf
	db   $fc                                         ; $5d74: $fc
	halt                                             ; $5d75: $76
	adc  e                                           ; $5d76: $8b
	db   $ed                                         ; $5d77: $ed
	add  h                                           ; $5d78: $84
	ld   c, b                                        ; $5d79: $48
	cp   l                                           ; $5d7a: $bd
	sub  e                                           ; $5d7b: $93
	inc  de                                          ; $5d7c: $13
	adc  e                                           ; $5d7d: $8b
	sub  e                                           ; $5d7e: $93
	inc  de                                          ; $5d7f: $13
	ld   a, d                                        ; $5d80: $7a
	and  [hl]                                        ; $5d81: $a6
	ld   [hl+], a                                    ; $5d82: $22
	ld   e, b                                        ; $5d83: $58
	cp   e                                           ; $5d84: $bb
	ld   h, l                                        ; $5d85: $65
	ld   l, d                                        ; $5d86: $6a
	call z, $7a96                                    ; $5d87: $cc $96 $7a
	call c, Call_0f5_7a87                            ; $5d8a: $dc $87 $7a
	call z, Call_0f5_56a6                            ; $5d8d: $cc $a6 $56
	sbc  d                                           ; $5d90: $9a
	add  [hl]                                        ; $5d91: $86
	ld   e, c                                        ; $5d92: $59
	sub  [hl]                                        ; $5d93: $96
	inc  [hl]                                        ; $5d94: $34
	xor  l                                           ; $5d95: $ad
	and  [hl]                                        ; $5d96: $a6
	ld   b, l                                        ; $5d97: $45
	ld   a, c                                        ; $5d98: $79
	cp   c                                           ; $5d99: $b9
	halt                                             ; $5d9a: $76
	ld   a, b                                        ; $5d9b: $78
	sbc  c                                           ; $5d9c: $99
	add  a                                           ; $5d9d: $87
	ld   a, d                                        ; $5d9e: $7a
	cp   b                                           ; $5d9f: $b8
	halt                                             ; $5da0: $76
	adc  d                                           ; $5da1: $8a
	sbc  b                                           ; $5da2: $98
	halt                                             ; $5da3: $76
	ld   l, c                                        ; $5da4: $69
	sbc  c                                           ; $5da5: $99
	halt                                             ; $5da6: $76
	ld   h, a                                        ; $5da7: $67
	ld   a, c                                        ; $5da8: $79
	sbc  b                                           ; $5da9: $98
	ld   h, a                                        ; $5daa: $67
	adc  b                                           ; $5dab: $88
	ld   a, b                                        ; $5dac: $78
	sbc  c                                           ; $5dad: $99
	adc  b                                           ; $5dae: $88
	adc  c                                           ; $5daf: $89
	sub  [hl]                                        ; $5db0: $96
	ld   l, c                                        ; $5db1: $69
	cp   d                                           ; $5db2: $ba
	add  [hl]                                        ; $5db3: $86
	ld   a, c                                        ; $5db4: $79
	xor  b                                           ; $5db5: $a8
	ld   h, [hl]                                     ; $5db6: $66
	sbc  c                                           ; $5db7: $99
	xor  b                                           ; $5db8: $a8
	ld   h, [hl]                                     ; $5db9: $66
	ld   a, b                                        ; $5dba: $78
	sbc  c                                           ; $5dbb: $99
	ld   [hl], l                                     ; $5dbc: $75
	ld   a, c                                        ; $5dbd: $79
	xor  b                                           ; $5dbe: $a8
	ld   h, [hl]                                     ; $5dbf: $66
	ld   a, c                                        ; $5dc0: $79
	xor  c                                           ; $5dc1: $a9
	halt                                             ; $5dc2: $76
	ld   a, c                                        ; $5dc3: $79
	cp   c                                           ; $5dc4: $b9
	halt                                             ; $5dc5: $76
	adc  d                                           ; $5dc6: $8a
	cp   b                                           ; $5dc7: $b8
	ld   h, [hl]                                     ; $5dc8: $66
	ld   a, d                                        ; $5dc9: $7a
	sbc  b                                           ; $5dca: $98
	ld   [hl], a                                     ; $5dcb: $77
	adc  b                                           ; $5dcc: $88
	sbc  c                                           ; $5dcd: $99
	ld   [hl], a                                     ; $5dce: $77
	ld   a, b                                        ; $5dcf: $78
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	adc  b                                           ; $5dd2: $88
	adc  b                                           ; $5dd3: $88
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	sbc  c                                           ; $5dd6: $99
	adc  b                                           ; $5dd7: $88
	sbc  c                                           ; $5dd8: $99
	add  [hl]                                        ; $5dd9: $86
	ld   a, b                                        ; $5dda: $78
	sbc  d                                           ; $5ddb: $9a
	add  a                                           ; $5ddc: $87
	ld   a, c                                        ; $5ddd: $79
	sbc  b                                           ; $5dde: $98
	ld   [hl], a                                     ; $5ddf: $77
	sbc  c                                           ; $5de0: $99
	add  a                                           ; $5de1: $87
	adc  b                                           ; $5de2: $88
	adc  b                                           ; $5de3: $88
	ld   [hl], a                                     ; $5de4: $77
	adc  c                                           ; $5de5: $89
	xor  c                                           ; $5de6: $a9
	ld   [hl], a                                     ; $5de7: $77
	ld   a, d                                        ; $5de8: $7a
	sbc  b                                           ; $5de9: $98
	ld   h, a                                        ; $5dea: $67
	sbc  c                                           ; $5deb: $99
	sbc  b                                           ; $5dec: $98
	ld   [hl], a                                     ; $5ded: $77
	sbc  c                                           ; $5dee: $99
	add  [hl]                                        ; $5def: $86
	ld   a, b                                        ; $5df0: $78
	sbc  c                                           ; $5df1: $99
	ld   [hl], a                                     ; $5df2: $77
	ld   a, c                                        ; $5df3: $79
	sbc  b                                           ; $5df4: $98
	ld   a, b                                        ; $5df5: $78
	sbc  c                                           ; $5df6: $99
	sub  a                                           ; $5df7: $97
	ld   a, b                                        ; $5df8: $78
	sbc  b                                           ; $5df9: $98
	adc  b                                           ; $5dfa: $88
	adc  b                                           ; $5dfb: $88
	adc  b                                           ; $5dfc: $88
	ld   a, b                                        ; $5dfd: $78
	adc  b                                           ; $5dfe: $88
	adc  b                                           ; $5dff: $88
	adc  b                                           ; $5e00: $88
	adc  b                                           ; $5e01: $88
	adc  b                                           ; $5e02: $88
	adc  c                                           ; $5e03: $89
	add  a                                           ; $5e04: $87
	adc  c                                           ; $5e05: $89
	sbc  c                                           ; $5e06: $99
	ld   a, b                                        ; $5e07: $78
	sbc  c                                           ; $5e08: $99
	add  a                                           ; $5e09: $87
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
	sbc  b                                           ; $5e14: $98
	adc  b                                           ; $5e15: $88
	adc  c                                           ; $5e16: $89
	add  a                                           ; $5e17: $87
	adc  c                                           ; $5e18: $89
	adc  b                                           ; $5e19: $88
	adc  b                                           ; $5e1a: $88
	adc  b                                           ; $5e1b: $88
	adc  b                                           ; $5e1c: $88
	adc  b                                           ; $5e1d: $88
	adc  b                                           ; $5e1e: $88
	adc  b                                           ; $5e1f: $88
	sbc  c                                           ; $5e20: $99
	adc  b                                           ; $5e21: $88
	ld   a, c                                        ; $5e22: $79
	adc  b                                           ; $5e23: $88
	add  a                                           ; $5e24: $87
	adc  c                                           ; $5e25: $89
	add  a                                           ; $5e26: $87
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
	adc  c                                           ; $5e5d: $89
	ld   a, b                                        ; $5e5e: $78
	sbc  c                                           ; $5e5f: $99
	add  a                                           ; $5e60: $87
	adc  b                                           ; $5e61: $88
	add  a                                           ; $5e62: $87
	adc  b                                           ; $5e63: $88
	add  a                                           ; $5e64: $87
	adc  c                                           ; $5e65: $89
	adc  b                                           ; $5e66: $88
	ld   a, b                                        ; $5e67: $78
	adc  b                                           ; $5e68: $88
	adc  b                                           ; $5e69: $88
	adc  b                                           ; $5e6a: $88
	adc  b                                           ; $5e6b: $88
	adc  b                                           ; $5e6c: $88
	adc  b                                           ; $5e6d: $88
	sbc  b                                           ; $5e6e: $98
	ld   a, b                                        ; $5e6f: $78
	adc  b                                           ; $5e70: $88
	adc  b                                           ; $5e71: $88
	adc  b                                           ; $5e72: $88
	sbc  b                                           ; $5e73: $98
	ld   a, b                                        ; $5e74: $78
	adc  b                                           ; $5e75: $88
	sbc  b                                           ; $5e76: $98
	adc  b                                           ; $5e77: $88
	ld   a, b                                        ; $5e78: $78
	adc  c                                           ; $5e79: $89
	sub  a                                           ; $5e7a: $97
	adc  b                                           ; $5e7b: $88
	adc  b                                           ; $5e7c: $88
	ld   a, b                                        ; $5e7d: $78
	adc  c                                           ; $5e7e: $89
	adc  b                                           ; $5e7f: $88
	ld   a, b                                        ; $5e80: $78
	sub  a                                           ; $5e81: $97
	ld   a, c                                        ; $5e82: $79
	add  a                                           ; $5e83: $87
	sbc  c                                           ; $5e84: $99
	ld   a, b                                        ; $5e85: $78
	sub  a                                           ; $5e86: $97
	ld   a, b                                        ; $5e87: $78
	adc  b                                           ; $5e88: $88
	ld   a, b                                        ; $5e89: $78
	add  a                                           ; $5e8a: $87
	ld   l, c                                        ; $5e8b: $69
	add  a                                           ; $5e8c: $87
	sbc  c                                           ; $5e8d: $99
	halt                                             ; $5e8e: $76
	adc  b                                           ; $5e8f: $88
	ld   a, b                                        ; $5e90: $78
	sub  a                                           ; $5e91: $97
	ld   a, b                                        ; $5e92: $78
	adc  b                                           ; $5e93: $88
	adc  c                                           ; $5e94: $89
	ld   [hl], a                                     ; $5e95: $77
	ld   a, b                                        ; $5e96: $78
	sbc  c                                           ; $5e97: $99
	adc  c                                           ; $5e98: $89
	ld   [hl], a                                     ; $5e99: $77
	xor  b                                           ; $5e9a: $a8
	adc  b                                           ; $5e9b: $88
	add  [hl]                                        ; $5e9c: $86
	ld   l, d                                        ; $5e9d: $6a
	add  [hl]                                        ; $5e9e: $86
	adc  d                                           ; $5e9f: $8a
	halt                                             ; $5ea0: $76
	sbc  c                                           ; $5ea1: $99
	ld   h, a                                        ; $5ea2: $67
	or   a                                           ; $5ea3: $b7
	ld   a, b                                        ; $5ea4: $78
	ld   a, b                                        ; $5ea5: $78
	sbc  c                                           ; $5ea6: $99
	ld   [hl], a                                     ; $5ea7: $77
	and  [hl]                                        ; $5ea8: $a6
	ld   l, c                                        ; $5ea9: $69
	sbc  b                                           ; $5eaa: $98
	ld   l, b                                        ; $5eab: $68
	add  l                                           ; $5eac: $85
	ld   a, e                                        ; $5ead: $7b
	sub  [hl]                                        ; $5eae: $96
	xor  c                                           ; $5eaf: $a9
	ld   l, c                                        ; $5eb0: $69
	add  a                                           ; $5eb1: $87
	sub  a                                           ; $5eb2: $97
	ld   a, b                                        ; $5eb3: $78
	add  a                                           ; $5eb4: $87
	adc  b                                           ; $5eb5: $88
	ld   a, d                                        ; $5eb6: $7a
	ld   [hl], a                                     ; $5eb7: $77
	adc  c                                           ; $5eb8: $89
	ld   [hl], l                                     ; $5eb9: $75
	cp   b                                           ; $5eba: $b8
	ld   l, b                                        ; $5ebb: $68
	sub  a                                           ; $5ebc: $97
	adc  h                                           ; $5ebd: $8c
	ld   h, [hl]                                     ; $5ebe: $66
	and  [hl]                                        ; $5ebf: $a6
	adc  d                                           ; $5ec0: $8a
	ld   [hl], a                                     ; $5ec1: $77
	and  a                                           ; $5ec2: $a7
	ld   a, c                                        ; $5ec3: $79
	ld   l, c                                        ; $5ec4: $69
	or   [hl]                                        ; $5ec5: $b6
	ld   e, h                                        ; $5ec6: $5c
	sub  l                                           ; $5ec7: $95
	sbc  b                                           ; $5ec8: $98
	ld   a, c                                        ; $5ec9: $79
	ld   a, b                                        ; $5eca: $78
	sub  a                                           ; $5ecb: $97
	adc  c                                           ; $5ecc: $89
	and  a                                           ; $5ecd: $a7
	ld   a, c                                        ; $5ece: $79
	ld   a, c                                        ; $5ecf: $79
	adc  b                                           ; $5ed0: $88
	ld   h, a                                        ; $5ed1: $67
	sbc  c                                           ; $5ed2: $99
	add  $7b                                         ; $5ed3: $c6 $7b
	ld   a, b                                        ; $5ed5: $78
	adc  c                                           ; $5ed6: $89
	adc  b                                           ; $5ed7: $88
	ld   [hl], a                                     ; $5ed8: $77
	and  a                                           ; $5ed9: $a7
	add  a                                           ; $5eda: $87
	adc  c                                           ; $5edb: $89
	adc  d                                           ; $5edc: $8a
	ld   a, c                                        ; $5edd: $79
	add  [hl]                                        ; $5ede: $86
	sub  a                                           ; $5edf: $97
	halt                                             ; $5ee0: $76
	xor  c                                           ; $5ee1: $a9
	ld   l, d                                        ; $5ee2: $6a
	add  a                                           ; $5ee3: $87
	xor  b                                           ; $5ee4: $a8
	ld   a, d                                        ; $5ee5: $7a
	add  a                                           ; $5ee6: $87
	and  [hl]                                        ; $5ee7: $a6
	adc  b                                           ; $5ee8: $88
	ld   a, c                                        ; $5ee9: $79
	ld   a, b                                        ; $5eea: $78
	sub  a                                           ; $5eeb: $97
	adc  d                                           ; $5eec: $8a
	ld   [hl], a                                     ; $5eed: $77
	sub  a                                           ; $5eee: $97
	sbc  c                                           ; $5eef: $99
	adc  b                                           ; $5ef0: $88
	adc  c                                           ; $5ef1: $89
	ld   a, b                                        ; $5ef2: $78
	adc  b                                           ; $5ef3: $88
	or   a                                           ; $5ef4: $b7
	sbc  b                                           ; $5ef5: $98
	ld   a, b                                        ; $5ef6: $78
	adc  b                                           ; $5ef7: $88
	ld   a, b                                        ; $5ef8: $78
	ld   a, b                                        ; $5ef9: $78
	sub  a                                           ; $5efa: $97
	adc  c                                           ; $5efb: $89
	ld   l, c                                        ; $5efc: $69
	sbc  b                                           ; $5efd: $98
	and  a                                           ; $5efe: $a7
	sbc  c                                           ; $5eff: $99
	ld   a, b                                        ; $5f00: $78
	and  [hl]                                        ; $5f01: $a6
	and  a                                           ; $5f02: $a7
	ld   e, e                                        ; $5f03: $5b
	ld   l, b                                        ; $5f04: $68
	and  [hl]                                        ; $5f05: $a6
	cp   b                                           ; $5f06: $b8
	ld   a, c                                        ; $5f07: $79
	sub  a                                           ; $5f08: $97
	adc  d                                           ; $5f09: $8a
	ld   a, b                                        ; $5f0a: $78
	sub  [hl]                                        ; $5f0b: $96
	and  a                                           ; $5f0c: $a7
	adc  b                                           ; $5f0d: $88
	ld   l, c                                        ; $5f0e: $69
	sbc  b                                           ; $5f0f: $98
	ld   a, d                                        ; $5f10: $7a
	add  a                                           ; $5f11: $87
	sbc  b                                           ; $5f12: $98
	ld   a, d                                        ; $5f13: $7a
	sub  a                                           ; $5f14: $97
	sub  [hl]                                        ; $5f15: $96
	sbc  b                                           ; $5f16: $98
	ld   l, d                                        ; $5f17: $6a
	add  a                                           ; $5f18: $87
	or   [hl]                                        ; $5f19: $b6
	adc  d                                           ; $5f1a: $8a
	ld   e, e                                        ; $5f1b: $5b
	ld   [hl], a                                     ; $5f1c: $77
	sub  a                                           ; $5f1d: $97
	adc  b                                           ; $5f1e: $88
	add  [hl]                                        ; $5f1f: $86
	sbc  b                                           ; $5f20: $98
	ld   l, c                                        ; $5f21: $69
	ld   a, c                                        ; $5f22: $79
	sub  a                                           ; $5f23: $97
	sub  [hl]                                        ; $5f24: $96
	sbc  c                                           ; $5f25: $99
	ld   l, c                                        ; $5f26: $69
	ld   [hl], a                                     ; $5f27: $77
	sbc  b                                           ; $5f28: $98
	ld   a, b                                        ; $5f29: $78
	sub  [hl]                                        ; $5f2a: $96
	and  a                                           ; $5f2b: $a7
	adc  d                                           ; $5f2c: $8a
	ld   l, c                                        ; $5f2d: $69
	adc  b                                           ; $5f2e: $88
	ld   l, c                                        ; $5f2f: $69
	add  [hl]                                        ; $5f30: $86
	sub  a                                           ; $5f31: $97
	add  a                                           ; $5f32: $87
	sbc  b                                           ; $5f33: $98
	ld   a, c                                        ; $5f34: $79
	ld   l, c                                        ; $5f35: $69
	add  a                                           ; $5f36: $87
	sbc  b                                           ; $5f37: $98
	add  a                                           ; $5f38: $87
	add  a                                           ; $5f39: $87
	sbc  c                                           ; $5f3a: $99
	ld   a, c                                        ; $5f3b: $79
	adc  b                                           ; $5f3c: $88
	ld   a, b                                        ; $5f3d: $78
	add  a                                           ; $5f3e: $87
	sub  a                                           ; $5f3f: $97
	ld   a, c                                        ; $5f40: $79
	add  a                                           ; $5f41: $87
	adc  b                                           ; $5f42: $88
	ld   a, b                                        ; $5f43: $78
	ld   a, d                                        ; $5f44: $7a
	add  a                                           ; $5f45: $87
	sbc  c                                           ; $5f46: $99
	ld   [hl], a                                     ; $5f47: $77
	and  a                                           ; $5f48: $a7
	ld   a, c                                        ; $5f49: $79
	ld   [hl], a                                     ; $5f4a: $77
	and  a                                           ; $5f4b: $a7
	ld   l, e                                        ; $5f4c: $6b
	ld   [hl], a                                     ; $5f4d: $77
	adc  d                                           ; $5f4e: $8a
	ld   l, b                                        ; $5f4f: $68
	sub  [hl]                                        ; $5f50: $96
	sbc  b                                           ; $5f51: $98
	add  a                                           ; $5f52: $87
	sub  a                                           ; $5f53: $97
	ld   a, d                                        ; $5f54: $7a
	ld   l, c                                        ; $5f55: $69
	ld   a, b                                        ; $5f56: $78
	ld   a, b                                        ; $5f57: $78
	sub  a                                           ; $5f58: $97
	add  a                                           ; $5f59: $87
	sbc  c                                           ; $5f5a: $99
	add  a                                           ; $5f5b: $87
	add  a                                           ; $5f5c: $87
	sbc  c                                           ; $5f5d: $99
	ld   a, c                                        ; $5f5e: $79
	add  a                                           ; $5f5f: $87
	sbc  c                                           ; $5f60: $99
	ld   [hl], a                                     ; $5f61: $77
	adc  c                                           ; $5f62: $89
	ld   a, c                                        ; $5f63: $79
	sub  a                                           ; $5f64: $97
	adc  b                                           ; $5f65: $88
	ld   a, b                                        ; $5f66: $78
	sub  a                                           ; $5f67: $97
	adc  b                                           ; $5f68: $88
	add  a                                           ; $5f69: $87
	adc  b                                           ; $5f6a: $88
	ld   a, c                                        ; $5f6b: $79
	sub  a                                           ; $5f6c: $97
	adc  b                                           ; $5f6d: $88
	ld   a, c                                        ; $5f6e: $79
	adc  b                                           ; $5f6f: $88
	add  a                                           ; $5f70: $87
	adc  b                                           ; $5f71: $88
	adc  b                                           ; $5f72: $88
	adc  b                                           ; $5f73: $88
	ld   a, c                                        ; $5f74: $79
	ld   a, c                                        ; $5f75: $79
	ld   a, b                                        ; $5f76: $78
	add  a                                           ; $5f77: $87
	sub  a                                           ; $5f78: $97
	sub  a                                           ; $5f79: $97
	ld   a, b                                        ; $5f7a: $78
	adc  b                                           ; $5f7b: $88
	ld   a, c                                        ; $5f7c: $79
	ld   l, b                                        ; $5f7d: $68
	add  a                                           ; $5f7e: $87
	adc  b                                           ; $5f7f: $88
	adc  b                                           ; $5f80: $88
	add  a                                           ; $5f81: $87
	adc  b                                           ; $5f82: $88
	adc  b                                           ; $5f83: $88
	adc  b                                           ; $5f84: $88
	adc  b                                           ; $5f85: $88
	adc  b                                           ; $5f86: $88
	ld   a, c                                        ; $5f87: $79
	adc  b                                           ; $5f88: $88
	add  a                                           ; $5f89: $87
	adc  b                                           ; $5f8a: $88
	adc  b                                           ; $5f8b: $88
	add  a                                           ; $5f8c: $87
	adc  c                                           ; $5f8d: $89
	adc  b                                           ; $5f8e: $88
	ld   a, c                                        ; $5f8f: $79
	add  a                                           ; $5f90: $87
	adc  b                                           ; $5f91: $88
	adc  b                                           ; $5f92: $88
	adc  b                                           ; $5f93: $88
	ld   a, b                                        ; $5f94: $78
	add  a                                           ; $5f95: $87
	sbc  b                                           ; $5f96: $98
	adc  b                                           ; $5f97: $88
	adc  c                                           ; $5f98: $89
	ld   a, c                                        ; $5f99: $79
	ld   a, b                                        ; $5f9a: $78
	adc  b                                           ; $5f9b: $88
	adc  b                                           ; $5f9c: $88
	sub  a                                           ; $5f9d: $97
	adc  b                                           ; $5f9e: $88
	adc  b                                           ; $5f9f: $88
	adc  b                                           ; $5fa0: $88
	ld   a, c                                        ; $5fa1: $79
	ld   a, b                                        ; $5fa2: $78
	adc  b                                           ; $5fa3: $88
	adc  b                                           ; $5fa4: $88
	adc  b                                           ; $5fa5: $88
	adc  b                                           ; $5fa6: $88
	adc  b                                           ; $5fa7: $88
	adc  b                                           ; $5fa8: $88
	adc  b                                           ; $5fa9: $88
	adc  b                                           ; $5faa: $88
	sbc  b                                           ; $5fab: $98
	adc  b                                           ; $5fac: $88
	adc  c                                           ; $5fad: $89
	adc  b                                           ; $5fae: $88
	adc  b                                           ; $5faf: $88
	adc  b                                           ; $5fb0: $88
	adc  b                                           ; $5fb1: $88
	adc  b                                           ; $5fb2: $88
	adc  b                                           ; $5fb3: $88
	adc  b                                           ; $5fb4: $88
	adc  b                                           ; $5fb5: $88
	adc  c                                           ; $5fb6: $89
	ld   a, c                                        ; $5fb7: $79
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
	adc  c                                           ; $6024: $89
	adc  b                                           ; $6025: $88
	adc  c                                           ; $6026: $89
	adc  b                                           ; $6027: $88
	adc  b                                           ; $6028: $88
	sbc  b                                           ; $6029: $98
	ld   a, b                                        ; $602a: $78
	adc  b                                           ; $602b: $88
	add  a                                           ; $602c: $87
	sbc  b                                           ; $602d: $98
	adc  b                                           ; $602e: $88
	adc  b                                           ; $602f: $88
	adc  b                                           ; $6030: $88
	adc  b                                           ; $6031: $88
	adc  c                                           ; $6032: $89
	add  a                                           ; $6033: $87
	adc  b                                           ; $6034: $88
	adc  b                                           ; $6035: $88
	adc  b                                           ; $6036: $88
	sbc  b                                           ; $6037: $98
	sbc  b                                           ; $6038: $98
	ld   [hl], a                                     ; $6039: $77
	ld   a, c                                        ; $603a: $79
	add  a                                           ; $603b: $87
	adc  b                                           ; $603c: $88
	sub  a                                           ; $603d: $97
	ld   l, c                                        ; $603e: $69
	sbc  c                                           ; $603f: $99
	adc  b                                           ; $6040: $88
	ld   a, b                                        ; $6041: $78
	sbc  b                                           ; $6042: $98
	sbc  c                                           ; $6043: $99
	add  a                                           ; $6044: $87
	and  a                                           ; $6045: $a7
	ld   a, b                                        ; $6046: $78
	ld   a, b                                        ; $6047: $78
	ld   [hl], a                                     ; $6048: $77
	ld   [hl], a                                     ; $6049: $77
	ld   a, b                                        ; $604a: $78
	ld   a, b                                        ; $604b: $78
	sbc  c                                           ; $604c: $99
	xor  d                                           ; $604d: $aa
	sbc  b                                           ; $604e: $98
	adc  c                                           ; $604f: $89
	add  a                                           ; $6050: $87
	ld   h, [hl]                                     ; $6051: $66
	xor  h                                           ; $6052: $ac
	or   a                                           ; $6053: $b7
	adc  h                                           ; $6054: $8c
	ld   a, h                                        ; $6055: $7c
	cp   b                                           ; $6056: $b8
	ld   h, a                                        ; $6057: $67
	sub  l                                           ; $6058: $95
	ld   h, a                                        ; $6059: $67
	ld   [hl], a                                     ; $605a: $77
	ld   [hl], a                                     ; $605b: $77
	ld   h, l                                        ; $605c: $65
	ld   d, [hl]                                     ; $605d: $56
	ld   h, a                                        ; $605e: $67
	sbc  d                                           ; $605f: $9a
	sub  a                                           ; $6060: $97
	sbc  c                                           ; $6061: $99
	cp   e                                           ; $6062: $bb
	adc  b                                           ; $6063: $88
	xor  d                                           ; $6064: $aa
	sbc  d                                           ; $6065: $9a
	sub  a                                           ; $6066: $97
	adc  d                                           ; $6067: $8a
	add  h                                           ; $6068: $84
	ld   de, $1111                                   ; $6069: $11 $11 $11
	ld   b, l                                        ; $606c: $45
	ld   h, l                                        ; $606d: $65
	ld   l, b                                        ; $606e: $68
	cp   a                                           ; $606f: $bf
	rst  $38                                         ; $6070: $ff
	rst  $28                                         ; $6071: $ef
	rst  $38                                         ; $6072: $ff
	rst  $38                                         ; $6073: $ff
	cp   e                                           ; $6074: $bb
	cp   e                                           ; $6075: $bb
	ld   [hl], d                                     ; $6076: $72
	ld   de, $1111                                   ; $6077: $11 $11 $11
	inc  e                                           ; $607a: $1c
	ld   h, a                                        ; $607b: $67
	ld   a, d                                        ; $607c: $7a
	rst  $38                                         ; $607d: $ff
	rst  $38                                         ; $607e: $ff
	rst  $28                                         ; $607f: $ef
	rst  $38                                         ; $6080: $ff
	add  sp, $13                                     ; $6081: $e8 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6083: $cf
	jp   nz, $cc25                                   ; $6084: $c2 $25 $cc

	ld   sp, $1f11                                   ; $6087: $31 $11 $1f
	or   $11                                         ; $608a: $f6 $11
	xor  a                                           ; $608c: $af
	rst  $38                                         ; $608d: $ff
	ld   [hl], c                                     ; $608e: $71
	cp   a                                           ; $608f: $bf
	rst  $38                                         ; $6090: $ff
	ld   d, c                                        ; $6091: $51
	inc  e                                           ; $6092: $1c
	push de                                          ; $6093: $d5
	ld   b, e                                        ; $6094: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6095: $cf
	ei                                               ; $6096: $fb
	ld   de, $2f11                                   ; $6097: $11 $11 $2f
	ld   de, $ff18                                   ; $609a: $11 $18 $ff
	rst  $38                                         ; $609d: $ff
	dec  e                                           ; $609e: $1d
	rst  $38                                         ; $609f: $ff
	push af                                          ; $60a0: $f5
	ld   de, $a47f                                   ; $60a1: $11 $7f $a4
	ld   l, c                                        ; $60a4: $69
	rst  $38                                         ; $60a5: $ff
	cp   $11                                         ; $60a6: $fe $11
	ld   de, $1911                                   ; $60a8: $11 $11 $19
	sbc  a                                           ; $60ab: $9f
	db   $fd                                         ; $60ac: $fd
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	pop  de                                          ; $60af: $d1
	ld   de, $1161                                   ; $60b0: $11 $61 $11
	rla                                              ; $60b3: $17
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	rst  $38                                         ; $60b6: $ff
	cp   $21                                         ; $60b7: $fe $21
	ld   de, $3f11                                   ; $60b9: $11 $11 $3f
	rst  $38                                         ; $60bc: $ff
	rst  $38                                         ; $60bd: $ff
	rst  $38                                         ; $60be: $ff
	rst  $30                                         ; $60bf: $f7
	ld   de, $5111                                   ; $60c0: $11 $11 $51
	ld   de, $ffff                                   ; $60c3: $11 $ff $ff
	ldh  a, [c]                                      ; $60c6: $f2
	rst  $38                                         ; $60c7: $ff
	ld   sp, hl                                      ; $60c8: $f9
	ld   de, $1111                                   ; $60c9: $11 $11 $11
	xor  a                                           ; $60cc: $af
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	rst  $38                                         ; $60cf: $ff
	pop  af                                          ; $60d0: $f1
	ld   de, $ea11                                   ; $60d1: $11 $11 $ea
	ld   de, $ffff                                   ; $60d4: $11 $ff $ff
	pop  af                                          ; $60d7: $f1
	cpl                                              ; $60d8: $2f
	ld   sp, hl                                      ; $60d9: $f9
	ld   de, $1111                                   ; $60da: $11 $11 $11
	cpl                                              ; $60dd: $2f
	rst  $38                                         ; $60de: $ff
	ld   hl, sp-$01                                  ; $60df: $f8 $ff
	ld   a, [$1111]                                  ; $60e1: $fa $11 $11
	rst  $38                                         ; $60e4: $ff
	ld   b, [hl]                                     ; $60e5: $46
	rst  $38                                         ; $60e6: $ff
	rst  $38                                         ; $60e7: $ff
	pop  de                                          ; $60e8: $d1
	inc  l                                           ; $60e9: $2c
	rst  $28                                         ; $60ea: $ef
	db   $d3                                         ; $60eb: $d3
	ld   de, $1411                                   ; $60ec: $11 $11 $14
	rst  $38                                         ; $60ef: $ff
	db   $fd                                         ; $60f0: $fd
	rra                                              ; $60f1: $1f
	rst  $38                                         ; $60f2: $ff
	pop  hl                                          ; $60f3: $e1
	ld   de, $e27f                                   ; $60f4: $11 $7f $e2
	daa                                              ; $60f7: $27
	rst  JumpTable                                         ; $60f8: $df
	db   $fc                                         ; $60f9: $fc
	ld   [de], a                                     ; $60fa: $12
	sbc  a                                           ; $60fb: $9f
	rst  $38                                         ; $60fc: $ff
	ld   hl, $1111                                   ; $60fd: $21 $11 $11
	inc  e                                           ; $6100: $1c
	rst  $38                                         ; $6101: $ff
	rst  $30                                         ; $6102: $f7
	xor  a                                           ; $6103: $af
	rst  $38                                         ; $6104: $ff
	ld   sp, $df11                                   ; $6105: $31 $11 $df
	or   $8b                                         ; $6108: $f6 $8b
	rst  $38                                         ; $610a: $ff
	ei                                               ; $610b: $fb
	ld   de, $fd6f                                   ; $610c: $11 $6f $fd
	ld   d, c                                        ; $610f: $51
	ld   de, $1f11                                   ; $6110: $11 $11 $1f
	rst  $38                                         ; $6113: $ff
	ld   sp, hl                                      ; $6114: $f9
	ld   l, [hl]                                     ; $6115: $6e
	rst  $38                                         ; $6116: $ff
	ld   de, $af11                                   ; $6117: $11 $11 $af
	cp   $ec                                         ; $611a: $fe $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $611c: $cf
	ld   a, [$1c11]                                  ; $611d: $fa $11 $1c
	rst  $38                                         ; $6120: $ff
	ret  z                                           ; $6121: $c8

	ld   de, $1111                                   ; $6122: $11 $11 $11
	rst  $38                                         ; $6125: $ff
	rst  $38                                         ; $6126: $ff
	dec  h                                           ; $6127: $25
	xor  a                                           ; $6128: $af
	pop  de                                          ; $6129: $d1
	ld   de, $ff1f                                   ; $612a: $11 $1f $ff
	ld   a, [$ff3f]                                  ; $612d: $fa $3f $ff
	ld   bc, $ff16                                   ; $6130: $01 $16 $ff
	db   $fd                                         ; $6133: $fd
	ld   b, c                                        ; $6134: $41
	ld   de, $1f11                                   ; $6135: $11 $11 $1f
	rst  $38                                         ; $6138: $ff
	ldh  a, [c]                                      ; $6139: $f2
	cp   h                                           ; $613a: $bc
	rst  $38                                         ; $613b: $ff
	ld   de, $ef11                                   ; $613c: $11 $11 $ef
	cp   $b2                                         ; $613f: $fe $b2
	rst  $38                                         ; $6141: $ff
	or   $11                                         ; $6142: $f6 $11
	ld   a, a                                        ; $6144: $7f
	rst  $38                                         ; $6145: $ff
	db   $f4                                         ; $6146: $f4
	ld   de, $1111                                   ; $6147: $11 $11 $11
	rst  $38                                         ; $614a: $ff
	rst  $38                                         ; $614b: $ff
	dec  e                                           ; $614c: $1d
	rst  JumpTable                                         ; $614d: $df
	pop  af                                          ; $614e: $f1
	ld   de, $ff1f                                   ; $614f: $11 $1f $ff
	sbc  l                                           ; $6152: $9d
	ccf                                              ; $6153: $3f
	rst  $38                                         ; $6154: $ff
	sub  c                                           ; $6155: $91
	ld   de, $ffff                                   ; $6156: $11 $ff $ff
	add  c                                           ; $6159: $81
	ld   de, $1111                                   ; $615a: $11 $11 $11
	rst  $38                                         ; $615d: $ff
	rst  $38                                         ; $615e: $ff
	ld   e, [hl]                                     ; $615f: $5e
	ld   a, a                                        ; $6160: $7f
	db   $f4                                         ; $6161: $f4
	ld   b, c                                        ; $6162: $41
	inc  de                                          ; $6163: $13
	rst  $28                                         ; $6164: $ef
	rst  $28                                         ; $6165: $ef
	ld   c, [hl]                                     ; $6166: $4e
	rst  $38                                         ; $6167: $ff
	or   $33                                         ; $6168: $f6 $33
	rst  $38                                         ; $616a: $ff
	rst  $38                                         ; $616b: $ff
	or   d                                           ; $616c: $b2
	ld   de, $1111                                   ; $616d: $11 $11 $11
	rst  $38                                         ; $6170: $ff
	rst  $38                                         ; $6171: $ff
	ld   c, l                                        ; $6172: $4d
	xor  a                                           ; $6173: $af
	push af                                          ; $6174: $f5
	ld   d, c                                        ; $6175: $51
	dec  d                                           ; $6176: $15
	rst  JumpTable                                         ; $6177: $df
	db   $dd                                         ; $6178: $dd
	inc  l                                           ; $6179: $2c
	rst  $38                                         ; $617a: $ff
	add  sp, $52                                     ; $617b: $e8 $52
	rst  $38                                         ; $617d: $ff
	rst  $38                                         ; $617e: $ff
	jp   nz, $1111                                   ; $617f: $c2 $11 $11

	ld   de, $ffcf                                   ; $6182: $11 $cf $ff
	adc  c                                           ; $6185: $89
	ld   l, a                                        ; $6186: $6f
	ld   sp, hl                                      ; $6187: $f9
	pop  af                                          ; $6188: $f1
	ld   de, $bf4f                                   ; $6189: $11 $4f $bf
	ld   d, h                                        ; $618c: $54
	rst  $28                                         ; $618d: $ef
	rst  $38                                         ; $618e: $ff
	jp   $ff4f                                       ; $618f: $c3 $4f $ff


	ld   a, [$1111]                                  ; $6192: $fa $11 $11
	ld   de, $8c11                                   ; $6195: $11 $11 $8c
	ld   sp, hl                                      ; $6198: $f9
	ld   [hl], l                                     ; $6199: $75
	cp   a                                           ; $619a: $bf
	rst  $38                                         ; $619b: $ff
	ld   [hl], c                                     ; $619c: $71
	ld   de, $d8c7                                   ; $619d: $11 $c7 $d8
	jr   c, jr_0f5_6221                              ; $61a0: $38 $7f

	rst  JumpTable                                         ; $61a2: $df
	ret  c                                           ; $61a3: $d8

	rst  $28                                         ; $61a4: $ef
	rst  $38                                         ; $61a5: $ff
	rst  $20                                         ; $61a6: $e7
	dec  [hl]                                        ; $61a7: $35
	ld   hl, $1611                                   ; $61a8: $21 $11 $16
	ld   h, $41                                      ; $61ab: $26 $41
	ld   d, h                                        ; $61ad: $54
	cp   $ff                                         ; $61ae: $fe $ff
	ld   c, c                                        ; $61b0: $49
	ld   e, h                                        ; $61b1: $5c
	jp   z, $74c3                                    ; $61b2: $ca $c3 $74

	adc  d                                           ; $61b5: $8a
	cp   a                                           ; $61b6: $bf
	sbc  [hl]                                        ; $61b7: $9e
	rst  $28                                         ; $61b8: $ef
	rst  $38                                         ; $61b9: $ff
	ld   sp, hl                                      ; $61ba: $f9
	and  a                                           ; $61bb: $a7
	ld   d, e                                        ; $61bc: $53
	ld   de, $1113                                   ; $61bd: $11 $13 $11
	ld   de, $9513                                   ; $61c0: $11 $13 $95
	or   [hl]                                        ; $61c3: $b6
	ld   e, e                                        ; $61c4: $5b
	cp   a                                           ; $61c5: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61c6: $cf
	ret                                              ; $61c7: $c9


	cp   c                                           ; $61c8: $b9
	db   $eb                                         ; $61c9: $eb
	db   $ec                                         ; $61ca: $ec
	xor  l                                           ; $61cb: $ad
	rst  JumpTable                                         ; $61cc: $df
	rst  $38                                         ; $61cd: $ff
	reti                                             ; $61ce: $d9


	add  $62                                         ; $61cf: $c6 $62
	ld   de, $1121                                   ; $61d1: $11 $21 $11
	ld   de, $4412                                   ; $61d4: $11 $12 $44
	sub  [hl]                                        ; $61d7: $96
	xor  l                                           ; $61d8: $ad
	rst  $38                                         ; $61d9: $ff
	rst  $28                                         ; $61da: $ef
	xor  h                                           ; $61db: $ac
	call z, $eadc                                    ; $61dc: $cc $dc $ea
	cp   l                                           ; $61df: $bd
	rst  $28                                         ; $61e0: $ef
	rst  $28                                         ; $61e1: $ef
	res  5, c                                        ; $61e2: $cb $a9
	ld   d, c                                        ; $61e4: $51
	ld   de, $1111                                   ; $61e5: $11 $11 $11
	ld   de, $5814                                   ; $61e8: $11 $14 $58
	sbc  b                                           ; $61eb: $98
	cp   h                                           ; $61ec: $bc
	rst  $38                                         ; $61ed: $ff
	db   $fd                                         ; $61ee: $fd
	xor  h                                           ; $61ef: $ac
	cp   a                                           ; $61f0: $bf
	rst  JumpTable                                         ; $61f1: $df
	ld   [$febb], a                                  ; $61f2: $ea $bb $fe
	rst  $38                                         ; $61f5: $ff
	call c, Call_0f5_4188                            ; $61f6: $dc $88 $41
	ld   de, $1111                                   ; $61f9: $11 $11 $11
	ld   de, $3815                                   ; $61fc: $11 $15 $38
	ld   a, b                                        ; $61ff: $78
	xor  e                                           ; $6200: $ab
	rst  $38                                         ; $6201: $ff
	rst  $38                                         ; $6202: $ff
	adc  $bf                                         ; $6203: $ce $bf
	cp   [hl]                                        ; $6205: $be
	jp   c, $feca                                    ; $6206: $da $ca $fe

	rst  $38                                         ; $6209: $ff
	call z, Call_0f5_5299                            ; $620a: $cc $99 $52
	ld   de, $1111                                   ; $620d: $11 $11 $11
	ld   de, $3716                                   ; $6210: $11 $16 $37
	and  a                                           ; $6213: $a7
	jp   z, $ffff                                    ; $6214: $ca $ff $ff

	xor  a                                           ; $6217: $af
	cp   a                                           ; $6218: $bf
	cp   [hl]                                        ; $6219: $be
	ld   hl, sp-$36                                  ; $621a: $f8 $ca
	rst  $28                                         ; $621c: $ef
	rst  $38                                         ; $621d: $ff
	call Call_0f5_5297                               ; $621e: $cd $97 $52

jr_0f5_6221:
	ld   de, $1111                                   ; $6221: $11 $11 $11
	ld   de, $6415                                   ; $6224: $11 $15 $64
	rst  $20                                         ; $6227: $e7
	xor  h                                           ; $6228: $ac
	rst  $38                                         ; $6229: $ff
	rst  JumpTable                                         ; $622a: $df
	cp   h                                           ; $622b: $bc
	set  1, h                                        ; $622c: $cb $cc
	ld   sp, hl                                      ; $622e: $f9
	xor  e                                           ; $622f: $ab
	cp   a                                           ; $6230: $bf
	rst  $38                                         ; $6231: $ff
	db   $fc                                         ; $6232: $fc
	or   l                                           ; $6233: $b5
	ld   d, e                                        ; $6234: $53
	ld   de, $1111                                   ; $6235: $11 $11 $11
	ld   de, $8414                                   ; $6238: $11 $14 $84
	add  sp, $7c                                     ; $623b: $e8 $7c
	rst  $38                                         ; $623d: $ff
	rst  $28                                         ; $623e: $ef
	ret                                              ; $623f: $c9


	ret                                              ; $6240: $c9


	call c, $adfc                                    ; $6241: $dc $fc $ad
	xor  [hl]                                        ; $6244: $ae
	rst  $38                                         ; $6245: $ff
	db   $fd                                         ; $6246: $fd
	or   l                                           ; $6247: $b5
	inc  sp                                          ; $6248: $33
	ld   de, $1111                                   ; $6249: $11 $11 $11
	ld   de, $8414                                   ; $624c: $11 $14 $84
	jp   hl                                          ; $624f: $e9


	ld   l, e                                        ; $6250: $6b
	rst  $28                                         ; $6251: $ef
	rst  JumpTable                                         ; $6252: $df
	reti                                             ; $6253: $d9


	rst  $10                                         ; $6254: $d7
	db   $db                                         ; $6255: $db
	rst  $38                                         ; $6256: $ff
	sbc  [hl]                                        ; $6257: $9e
	cp   l                                           ; $6258: $bd
	rst  $38                                         ; $6259: $ff
	cp   $b6                                         ; $625a: $fe $b6
	ld   [hl+], a                                    ; $625c: $22
	ld   de, $1121                                   ; $625d: $11 $21 $11
	ld   de, $8515                                   ; $6260: $11 $15 $85
	jp   hl                                          ; $6263: $e9


	ld   e, e                                        ; $6264: $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6265: $cf
	rst  $38                                         ; $6266: $ff
	ret  c                                           ; $6267: $d8

	rst  $20                                         ; $6268: $e7
	sbc  l                                           ; $6269: $9d
	rst  $38                                         ; $626a: $ff
	cp   l                                           ; $626b: $bd
	set  7, a                                        ; $626c: $cb $ff
	rst  $38                                         ; $626e: $ff
	sub  [hl]                                        ; $626f: $96
	ld   de, $5111                                   ; $6270: $11 $11 $51
	ld   de, $1511                                   ; $6273: $11 $11 $15
	rst  ToBoot                                         ; $6276: $c7
	rst  $30                                         ; $6277: $f7
	ld   c, h                                        ; $6278: $4c
	adc  a                                           ; $6279: $8f
	rst  $28                                         ; $627a: $ef
	rst  $30                                         ; $627b: $f7
	call nc, $ef8e                                   ; $627c: $d4 $8e $ef
	db   $dd                                         ; $627f: $dd
	db   $dd                                         ; $6280: $dd
	rst  $38                                         ; $6281: $ff
	rst  $38                                         ; $6282: $ff
	ld   b, d                                        ; $6283: $42
	ld   de, $f411                                   ; $6284: $11 $11 $f4
	ld   sp, $1d11                                   ; $6287: $31 $11 $1d
	cp   $f1                                         ; $628a: $fe $f1
	ld   b, [hl]                                     ; $628c: $46
	ld   a, a                                        ; $628d: $7f
	rst  $38                                         ; $628e: $ff
	ld   h, [hl]                                     ; $628f: $66
	ld   [hl], c                                     ; $6290: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6291: $cf
	rst  $38                                         ; $6292: $ff
	rst  JumpTable                                         ; $6293: $df
	rst  $38                                         ; $6294: $ff
	rst  $38                                         ; $6295: $ff
	pop  af                                          ; $6296: $f1
	ld   de, $1711                                   ; $6297: $11 $11 $17
	ei                                               ; $629a: $fb
	push af                                          ; $629b: $f5
	jr   jr_0f5_62cd                                 ; $629c: $18 $2f

	cp   a                                           ; $629e: $bf

jr_0f5_629f:
	sub  c                                           ; $629f: $91
	pop  bc                                          ; $62a0: $c1
	rst  $38                                         ; $62a1: $ff
	xor  $17                                         ; $62a2: $ee $17
	jr   jr_0f5_629f                                 ; $62a4: $18 $f9

	rst  $30                                         ; $62a6: $f7
	rst  $38                                         ; $62a7: $ff
	rst  $38                                         ; $62a8: $ff
	ld   [$1111], a                                  ; $62a9: $ea $11 $11
	ld   de, $ff1f                                   ; $62ac: $11 $1f $ff
	pop  af                                          ; $62af: $f1
	ld   de, $bf3f                                   ; $62b0: $11 $3f $bf
	ld   [de], a                                     ; $62b3: $12
	ld   [hl], e                                     ; $62b4: $73
	cp   $f1                                         ; $62b5: $fe $f1
	inc  de                                          ; $62b7: $13
	rra                                              ; $62b8: $1f
	rst  JumpTable                                         ; $62b9: $df
	add  sp, -$01                                    ; $62ba: $e8 $ff
	rst  $38                                         ; $62bc: $ff
	ld   b, c                                        ; $62bd: $41
	ld   de, $1111                                   ; $62be: $11 $11 $11
	rst  $38                                         ; $62c1: $ff
	rst  $38                                         ; $62c2: $ff
	ld   de, $fc11                                   ; $62c3: $11 $11 $fc
	pop  af                                          ; $62c6: $f1
	rra                                              ; $62c7: $1f
	rra                                              ; $62c8: $1f
	ld   sp, hl                                      ; $62c9: $f9
	ld   de, hScriptOpcodeParams+1                                   ; $62ca: $11 $a1 $ff

jr_0f5_62cd:
	cp   a                                           ; $62cd: $bf
	ld   c, a                                        ; $62ce: $4f
	rst  $38                                         ; $62cf: $ff
	pop  af                                          ; $62d0: $f1
	ld   de, $1111                                   ; $62d1: $11 $11 $11
	rra                                              ; $62d4: $1f
	rst  $38                                         ; $62d5: $ff
	pop  af                                          ; $62d6: $f1
	ld   de, $ff1f                                   ; $62d7: $11 $1f $ff
	ld   de, $fff1                                   ; $62da: $11 $f1 $ff
	ld   hl, $4f1b                                   ; $62dd: $21 $1b $4f
	or   $c2                                         ; $62e0: $f6 $c2
	rst  $38                                         ; $62e2: $ff
	rst  $38                                         ; $62e3: $ff
	ld   de, $1111                                   ; $62e4: $11 $11 $11
	ld   de, $ffff                                   ; $62e7: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $62ea: $11 $11 $ff
	rst  $30                                         ; $62ed: $f7
	rra                                              ; $62ee: $1f
	rra                                              ; $62ef: $1f
	pop  af                                          ; $62f0: $f1
	ld   de, $ffb7                                   ; $62f1: $11 $b7 $ff
	inc  a                                           ; $62f4: $3c
	rra                                              ; $62f5: $1f
	rst  $38                                         ; $62f6: $ff
	pop  af                                          ; $62f7: $f1
	ld   de, $1112                                   ; $62f8: $11 $12 $11
	rra                                              ; $62fb: $1f
	rst  $38                                         ; $62fc: $ff
	pop  af                                          ; $62fd: $f1
	ld   de, $ff1f                                   ; $62fe: $11 $1f $ff
	and  c                                           ; $6301: $a1
	ldh  a, [c]                                      ; $6302: $f2
	rst  $38                                         ; $6303: $ff
	ld   de, $df1b                                   ; $6304: $11 $1b $df
	pop  af                                          ; $6307: $f1
	or   c                                           ; $6308: $b1
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	ld   de, $2111                                   ; $630b: $11 $11 $21
	ld   de, $ffff                                   ; $630e: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6311: $11 $11 $ff
	db   $fc                                         ; $6314: $fc
	rra                                              ; $6315: $1f
	cpl                                              ; $6316: $2f
	pop  af                                          ; $6317: $f1
	ld   de, $ffff                                   ; $6318: $11 $ff $ff
	add  hl, de                                      ; $631b: $19
	rra                                              ; $631c: $1f
	rst  $38                                         ; $631d: $ff
	pop  af                                          ; $631e: $f1
	ld   de, $1111                                   ; $631f: $11 $11 $11
	rra                                              ; $6322: $1f
	rst  $38                                         ; $6323: $ff
	pop  af                                          ; $6324: $f1
	ld   de, $ff1f                                   ; $6325: $11 $1f $ff
	and  c                                           ; $6328: $a1
	or   $ff                                         ; $6329: $f6 $ff
	ld   de, $ff1f                                   ; $632b: $11 $1f $ff
	pop  af                                          ; $632e: $f1
	sub  h                                           ; $632f: $94
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	ld   de, $1111                                   ; $6332: $11 $11 $11
	ld   de, $ffff                                   ; $6335: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6338: $11 $11 $ff
	ld   hl, sp+$1f                                  ; $633b: $f8 $1f
	ccf                                              ; $633d: $3f
	pop  af                                          ; $633e: $f1
	ld   de, $ffff                                   ; $633f: $11 $ff $ff
	rla                                              ; $6342: $17
	ccf                                              ; $6343: $3f
	rst  $38                                         ; $6344: $ff
	ldh  a, [c]                                      ; $6345: $f2
	ld   de, $1111                                   ; $6346: $11 $11 $11
	rra                                              ; $6349: $1f
	rst  $38                                         ; $634a: $ff
	pop  af                                          ; $634b: $f1
	ld   de, $ff1f                                   ; $634c: $11 $1f $ff
	ld   h, c                                        ; $634f: $61
	pop  af                                          ; $6350: $f1
	rst  $38                                         ; $6351: $ff
	ld   de, $ff1f                                   ; $6352: $11 $1f $ff
	pop  af                                          ; $6355: $f1
	ld   [hl], d                                     ; $6356: $72
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	ld   de, $1111                                   ; $6359: $11 $11 $11
	ld   de, $ffff                                   ; $635c: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $635f: $11 $11 $ff
	db   $f4                                         ; $6362: $f4
	dec  e                                           ; $6363: $1d
	cpl                                              ; $6364: $2f
	pop  af                                          ; $6365: $f1
	ld   de, $ffff                                   ; $6366: $11 $ff $ff
	inc  h                                           ; $6369: $24
	ccf                                              ; $636a: $3f
	rst  $38                                         ; $636b: $ff
	pop  af                                          ; $636c: $f1
	ld   de, $1111                                   ; $636d: $11 $11 $11
	rra                                              ; $6370: $1f
	rst  $38                                         ; $6371: $ff
	pop  af                                          ; $6372: $f1
	ld   de, $ff1f                                   ; $6373: $11 $1f $ff
	ld   de, $fff1                                   ; $6376: $11 $f1 $ff
	ld   de, $ff1f                                   ; $6379: $11 $1f $ff
	pop  af                                          ; $637c: $f1
	ld   h, e                                        ; $637d: $63
	rst  $38                                         ; $637e: $ff
	cp   $11                                         ; $637f: $fe $11
	ld   de, $1111                                   ; $6381: $11 $11 $11
	rst  $38                                         ; $6384: $ff
	rst  $38                                         ; $6385: $ff
	ld   de, rAUD1LEN                                   ; $6386: $11 $11 $ff
	pop  af                                          ; $6389: $f1
	ld   a, [de]                                     ; $638a: $1a
	rra                                              ; $638b: $1f
	pop  af                                          ; $638c: $f1
	ld   de, $ffff                                   ; $638d: $11 $ff $ff
	dec  d                                           ; $6390: $15
	cpl                                              ; $6391: $2f
	rst  $38                                         ; $6392: $ff
	pop  af                                          ; $6393: $f1
	ld   de, $1113                                   ; $6394: $11 $13 $11
	rra                                              ; $6397: $1f
	rst  $38                                         ; $6398: $ff
	pop  af                                          ; $6399: $f1
	ld   de, $ff1f                                   ; $639a: $11 $1f $ff
	add  c                                           ; $639d: $81
	ld   d, c                                        ; $639e: $51
	rst  $38                                         ; $639f: $ff
	ld   de, $ff1e                                   ; $63a0: $11 $1e $ff
	pop  af                                          ; $63a3: $f1
	ld   b, e                                        ; $63a4: $43
	rst  JumpTable                                         ; $63a5: $df
	rst  $38                                         ; $63a6: $ff
	ld   de, $7111                                   ; $63a7: $11 $11 $71
	ld   de, $ffff                                   ; $63aa: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $63ad: $11 $11 $ff
	rst  $38                                         ; $63b0: $ff
	ld   de, $f119                                   ; $63b1: $11 $19 $f1
	ld   de, $ff1f                                   ; $63b4: $11 $1f $ff
	ld   h, e                                        ; $63b7: $63
	ld   b, e                                        ; $63b8: $43

Call_0f5_63b9:
	rst  $38                                         ; $63b9: $ff
	rst  $30                                         ; $63ba: $f7
	ld   de, $1114                                   ; $63bb: $11 $14 $11
	ld   de, $ffff                                   ; $63be: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $63c1: $11 $11 $ff
	ldh  a, [c]                                      ; $63c4: $f2
	ld   [de], a                                     ; $63c5: $12
	rra                                              ; $63c6: $1f
	pop  af                                          ; $63c7: $f1
	ld   sp, $ffcf                                   ; $63c8: $31 $cf $ff
	rlca                                             ; $63cb: $07
	inc  e                                           ; $63cc: $1c
	rst  $38                                         ; $63cd: $ff
	ldh  a, [c]                                      ; $63ce: $f2
	ld   de, $2116                                   ; $63cf: $11 $16 $21
	ld   de, $ffff                                   ; $63d2: $11 $ff $ff
	ld   de, $ff18                                   ; $63d5: $11 $18 $ff
	pop  af                                          ; $63d8: $f1
	ld   de, $e11f                                   ; $63d9: $11 $1f $e1
	ld   de, $ffcf                                   ; $63dc: $11 $cf $ff
	ld   b, [hl]                                     ; $63df: $46
	rra                                              ; $63e0: $1f
	rst  $38                                         ; $63e1: $ff
	or   c                                           ; $63e2: $b1
	ld   de, $913b                                   ; $63e3: $11 $3b $91
	ld   de, $ffff                                   ; $63e6: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $63e9: $11 $11 $ff
	ld   sp, hl                                      ; $63ec: $f9
	ld   de, $f41f                                   ; $63ed: $11 $1f $f4
	ld   sp, $ff5f                                   ; $63f0: $31 $5f $ff
	add  [hl]                                        ; $63f3: $86
	ld   d, $ff                                      ; $63f4: $16 $ff
	rst  $30                                         ; $63f6: $f7
	ld   de, $e516                                   ; $63f7: $11 $16 $e5
	ld   de, $ff1f                                   ; $63fa: $11 $1f $ff
	pop  af                                          ; $63fd: $f1
	ld   de, $ff1f                                   ; $63fe: $11 $1f $ff
	pop  af                                          ; $6401: $f1
	ld   de, $66ff                                   ; $6402: $11 $ff $66
	ld   de, $faff                                   ; $6405: $11 $ff $fa
	ld   sp, $ff1f                                   ; $6408: $31 $1f $ff
	and  c                                           ; $640b: $a1
	ld   de, $a1bf                                   ; $640c: $11 $bf $a1
	ld   de, $ff1f                                   ; $640f: $11 $1f $ff
	pop  af                                          ; $6412: $f1
	ld   de, $ff1f                                   ; $6413: $11 $1f $ff
	pop  de                                          ; $6416: $d1
	ld   d, $ff                                      ; $6417: $16 $ff
	ld   b, d                                        ; $6419: $42
	ld   [de], a                                     ; $641a: $12
	rst  $38                                         ; $641b: $ff
	ld   a, [$9fd6]                                  ; $641c: $fa $d6 $9f
	sub  $44                                         ; $641f: $d6 $44
	ld   c, b                                        ; $6421: $48
	sub  l                                           ; $6422: $95
	ld   b, c                                        ; $6423: $41
	ld   de, $1f11                                   ; $6424: $11 $11 $1f
	rst  $38                                         ; $6427: $ff
	pop  af                                          ; $6428: $f1
	ld   de, $ff1f                                   ; $6429: $11 $1f $ff
	di                                               ; $642c: $f3
	inc  d                                           ; $642d: $14
	rst  $38                                         ; $642e: $ff
	push bc                                          ; $642f: $c5
	ld   de, $fecf                                   ; $6430: $11 $cf $fe
	push de                                          ; $6433: $d5
	ld   c, h                                        ; $6434: $4c
	call z, $11d7                                    ; $6435: $cc $d7 $11
	dec  d                                           ; $6438: $15
	xor  d                                           ; $6439: $aa
	ld   h, c                                        ; $643a: $61
	inc  de                                          ; $643b: $13
	ld   d, c                                        ; $643c: $51
	jr   @+$01                                       ; $643d: $18 $ff

	rst  $38                                         ; $643f: $ff
	ld   de, $ff16                                   ; $6440: $11 $16 $ff
	ld   a, [$ff46]                                  ; $6443: $fa $46 $ff
	db   $ec                                         ; $6446: $ec
	ld   b, e                                        ; $6447: $43
	cp   a                                           ; $6448: $bf
	sbc  b                                           ; $6449: $98
	sub  [hl]                                        ; $644a: $96
	sbc  a                                           ; $644b: $9f
	ld   hl, sp+$51                                  ; $644c: $f8 $51
	ld   de, $dc6b                                   ; $644e: $11 $6b $dc
	add  a                                           ; $6451: $87
	ld   hl, $3221                                   ; $6452: $21 $21 $32
	ld   [de], a                                     ; $6455: $12
	rst  $38                                         ; $6456: $ff
	rst  $38                                         ; $6457: $ff
	ld   de, $ff19                                   ; $6458: $11 $19 $ff
	rst  $30                                         ; $645b: $f7
	ld   b, l                                        ; $645c: $45
	rst  JumpTable                                         ; $645d: $df
	db   $fd                                         ; $645e: $fd
	ld   h, e                                        ; $645f: $63
	ld   c, d                                        ; $6460: $4a
	xor  c                                           ; $6461: $a9
	adc  c                                           ; $6462: $89
	cp   a                                           ; $6463: $bf
	ld   a, [$2364]                                  ; $6464: $fa $64 $23
	adc  e                                           ; $6467: $8b
	adc  b                                           ; $6468: $88
	and  l                                           ; $6469: $a5
	dec  d                                           ; $646a: $15
	ld   h, e                                        ; $646b: $63
	rl   c                                           ; $646c: $cb $11
	ld   de, $ff7f                                   ; $646e: $11 $7f $ff
	ld   b, c                                        ; $6471: $41
	ld   de, $f8df                                   ; $6472: $11 $df $f8
	sbc  b                                           ; $6475: $98
	ld   l, [hl]                                     ; $6476: $6e
	rst  $20                                         ; $6477: $e7
	ld   l, d                                        ; $6478: $6a
	ld   a, d                                        ; $6479: $7a
	bit  6, a                                        ; $647a: $cb $77
	cp   d                                           ; $647c: $ba
	call Call_0f5_77c9                               ; $647d: $cd $c9 $77
	ld   b, d                                        ; $6480: $42
	adc  h                                           ; $6481: $8c
	rst  $28                                         ; $6482: $ef
	sub  c                                           ; $6483: $91
	dec  d                                           ; $6484: $15
	cp   e                                           ; $6485: $bb
	rst  ToBoot                                         ; $6486: $c7
	ld   de, $1466                                   ; $6487: $11 $66 $14
	ld   a, c                                        ; $648a: $79
	cp   l                                           ; $648b: $bd
	sub  c                                           ; $648c: $91
	add  hl, sp                                      ; $648d: $39
	xor  e                                           ; $648e: $ab
	ret                                              ; $648f: $c9


	ld   e, e                                        ; $6490: $5b
	ei                                               ; $6491: $fb
	xor  c                                           ; $6492: $a9
	ld   [hl], a                                     ; $6493: $77
	sbc  $97                                         ; $6494: $de $97
	ld   d, [hl]                                     ; $6496: $56

Call_0f5_6497:
	cp   a                                           ; $6497: $bf
	db   $fc                                         ; $6498: $fc
	ld   h, l                                        ; $6499: $65
	add  [hl]                                        ; $649a: $86
	ld   a, c                                        ; $649b: $79
	ld   l, c                                        ; $649c: $69
	ret  c                                           ; $649d: $d8

	ld   hl, $7857                                   ; $649e: $21 $57 $78
	ld   [hl], l                                     ; $64a1: $75
	ld   [hl], a                                     ; $64a2: $77
	ld   sp, $4941                                   ; $64a3: $31 $41 $49
	call z, $3566                                    ; $64a6: $cc $66 $35
	adc  a                                           ; $64a9: $8f
	jp   hl                                          ; $64aa: $e9


	push bc                                          ; $64ab: $c5
	ld   l, d                                        ; $64ac: $6a
	xor  l                                           ; $64ad: $ad
	db   $db                                         ; $64ae: $db
	xor  b                                           ; $64af: $a8
	adc  c                                           ; $64b0: $89
	ld   d, [hl]                                     ; $64b1: $56
	ld   a, e                                        ; $64b2: $7b
	db   $ec                                         ; $64b3: $ec
	sub  a                                           ; $64b4: $97
	ld   e, b                                        ; $64b5: $58
	call Call_0f5_55d5                               ; $64b6: $cd $d5 $55
	ld   c, h                                        ; $64b9: $4c
	and  a                                           ; $64ba: $a7
	add  a                                           ; $64bb: $87
	ld   d, [hl]                                     ; $64bc: $56
	ld   h, d                                        ; $64bd: $62
	ld   b, a                                        ; $64be: $47
	cp   d                                           ; $64bf: $ba
	ld   d, c                                        ; $64c0: $51
	dec  d                                           ; $64c1: $15
	adc  h                                           ; $64c2: $8c
	jp   nc, Jump_0f5_7c24                           ; $64c3: $d2 $24 $7c

	cp   l                                           ; $64c6: $bd
	sub  a                                           ; $64c7: $97
	ld   h, l                                        ; $64c8: $65
	xor  d                                           ; $64c9: $aa
	db   $dd                                         ; $64ca: $dd
	jp   z, $8b56                                    ; $64cb: $ca $56 $8b

	xor  b                                           ; $64ce: $a8
	ld   d, d                                        ; $64cf: $52
	ld   l, l                                        ; $64d0: $6d
	xor  $92                                         ; $64d1: $ee $92
	ld   a, d                                        ; $64d3: $7a
	rst  JumpTable                                         ; $64d4: $df
	sub  h                                           ; $64d5: $94
	scf                                              ; $64d6: $37
	set  1, c                                        ; $64d7: $cb $c9
	ld   [hl], e                                     ; $64d9: $73
	ld   d, l                                        ; $64da: $55
	ld   a, c                                        ; $64db: $79
	ld   e, d                                        ; $64dc: $5a
	ld   [hl], l                                     ; $64dd: $75
	ld   h, [hl]                                     ; $64de: $66
	ld   h, l                                        ; $64df: $65
	sub  e                                           ; $64e0: $93
	ld   e, d                                        ; $64e1: $5a
	ld   e, b                                        ; $64e2: $58
	ld   [hl], a                                     ; $64e3: $77
	ld   d, h                                        ; $64e4: $54
	ld   [hl], h                                     ; $64e5: $74
	ld   e, e                                        ; $64e6: $5b
	db   $ec                                         ; $64e7: $ec
	sbc  b                                           ; $64e8: $98
	ld   h, [hl]                                     ; $64e9: $66
	xor  e                                           ; $64ea: $ab
	xor  c                                           ; $64eb: $a9
	cp   c                                           ; $64ec: $b9
	ld   [hl], a                                     ; $64ed: $77
	ld   h, a                                        ; $64ee: $67
	cp   h                                           ; $64ef: $bc
	ret                                              ; $64f0: $c9


	ld   b, e                                        ; $64f1: $43
	sbc  a                                           ; $64f2: $9f
	db   $fd                                         ; $64f3: $fd
	ld   h, d                                        ; $64f4: $62
	ld   l, c                                        ; $64f5: $69
	call c, Call_0f5_5697                            ; $64f6: $dc $97 $56
	ld   h, [hl]                                     ; $64f9: $66
	ld   a, b                                        ; $64fa: $78
	ld   h, a                                        ; $64fb: $67
	ld   [hl], a                                     ; $64fc: $77
	ld   d, [hl]                                     ; $64fd: $56
	sub  d                                           ; $64fe: $92
	ld   b, a                                        ; $64ff: $47
	ld   [hl], a                                     ; $6500: $77
	sbc  l                                           ; $6501: $9d
	ld   b, l                                        ; $6502: $45
	ld   h, [hl]                                     ; $6503: $66
	sbc  c                                           ; $6504: $99
	or   l                                           ; $6505: $b5
	ld   l, c                                        ; $6506: $69
	add  a                                           ; $6507: $87
	cp   b                                           ; $6508: $b8
	adc  d                                           ; $6509: $8a
	sbc  b                                           ; $650a: $98
	ld   a, h                                        ; $650b: $7c
	adc  b                                           ; $650c: $88
	or   l                                           ; $650d: $b5
	sbc  b                                           ; $650e: $98
	sbc  d                                           ; $650f: $9a
	ld   l, c                                        ; $6510: $69
	add  [hl]                                        ; $6511: $86
	xor  [hl]                                        ; $6512: $ae
	and  l                                           ; $6513: $a5
	sub  h                                           ; $6514: $94
	sbc  l                                           ; $6515: $9d
	call c, $3745                                    ; $6516: $dc $45 $37
	ret  z                                           ; $6519: $c8

	sbc  c                                           ; $651a: $99
	sub  h                                           ; $651b: $94
	adc  d                                           ; $651c: $8a
	ld   c, c                                        ; $651d: $49
	sub  l                                           ; $651e: $95
	ld   l, c                                        ; $651f: $69
	add  l                                           ; $6520: $85
	sbc  b                                           ; $6521: $98
	ld   b, [hl]                                     ; $6522: $46
	ld   [hl], l                                     ; $6523: $75
	ld   c, d                                        ; $6524: $4a
	cp   c                                           ; $6525: $b9
	ret                                              ; $6526: $c9


	inc  hl                                          ; $6527: $23
	ld   a, h                                        ; $6528: $7c
	xor  e                                           ; $6529: $ab
	and  e                                           ; $652a: $a3
	ld   a, d                                        ; $652b: $7a
	adc  c                                           ; $652c: $89
	cp   b                                           ; $652d: $b8
	ld   l, c                                        ; $652e: $69
	cp   b                                           ; $652f: $b8
	ld   a, c                                        ; $6530: $79
	adc  e                                           ; $6531: $8b
	sub  $48                                         ; $6532: $d6 $48
	sbc  c                                           ; $6534: $99
	rst  $10                                         ; $6535: $d7
	ld   h, a                                        ; $6536: $67
	ld   l, h                                        ; $6537: $6c
	sbc  d                                           ; $6538: $9a
	and  [hl]                                        ; $6539: $a6
	ld   a, c                                        ; $653a: $79
	xor  d                                           ; $653b: $aa
	add  a                                           ; $653c: $87
	ld   a, d                                        ; $653d: $7a
	sub  l                                           ; $653e: $95
	ld   d, a                                        ; $653f: $57
	add  a                                           ; $6540: $87
	sbc  b                                           ; $6541: $98
	ld   h, l                                        ; $6542: $65
	ld   [hl], $9b                                   ; $6543: $36 $9b
	sub  a                                           ; $6545: $97
	add  l                                           ; $6546: $85
	xor  d                                           ; $6547: $aa
	xor  c                                           ; $6548: $a9
	ld   d, l                                        ; $6549: $55
	ld   l, c                                        ; $654a: $69
	sbc  c                                           ; $654b: $99
	xor  c                                           ; $654c: $a9
	xor  b                                           ; $654d: $a8
	ld   d, l                                        ; $654e: $55
	sub  [hl]                                        ; $654f: $96
	cp   h                                           ; $6550: $bc
	add  [hl]                                        ; $6551: $86
	ld   l, c                                        ; $6552: $69
	ld   a, d                                        ; $6553: $7a
	add  a                                           ; $6554: $87
	adc  c                                           ; $6555: $89
	sbc  b                                           ; $6556: $98
	ret  z                                           ; $6557: $c8

	ld   l, c                                        ; $6558: $69
	cp   h                                           ; $6559: $bc
	ld   h, a                                        ; $655a: $67
	sub  a                                           ; $655b: $97
	ret                                              ; $655c: $c9


	ld   [hl], a                                     ; $655d: $77
	ld   a, b                                        ; $655e: $78
	sbc  h                                           ; $655f: $9c
	add  a                                           ; $6560: $87
	ld   [hl], l                                     ; $6561: $75
	ld   l, c                                        ; $6562: $69
	sub  [hl]                                        ; $6563: $96
	ld   d, h                                        ; $6564: $54
	ld   d, l                                        ; $6565: $55
	ld   a, b                                        ; $6566: $78
	ld   h, a                                        ; $6567: $67
	ld   a, c                                        ; $6568: $79
	adc  c                                           ; $6569: $89
	sbc  c                                           ; $656a: $99
	adc  c                                           ; $656b: $89
	sub  a                                           ; $656c: $97
	sub  a                                           ; $656d: $97
	add  a                                           ; $656e: $87
	ld   a, e                                        ; $656f: $7b
	sbc  b                                           ; $6570: $98
	sbc  c                                           ; $6571: $99
	sbc  d                                           ; $6572: $9a
	sbc  c                                           ; $6573: $99
	adc  b                                           ; $6574: $88
	sub  [hl]                                        ; $6575: $96
	sbc  b                                           ; $6576: $98
	sbc  d                                           ; $6577: $9a
	ld   h, [hl]                                     ; $6578: $66
	ld   l, b                                        ; $6579: $68
	sbc  e                                           ; $657a: $9b
	sub  l                                           ; $657b: $95
	ld   l, c                                        ; $657c: $69
	set  1, b                                        ; $657d: $cb $c8
	ld   d, [hl]                                     ; $657f: $56
	adc  c                                           ; $6580: $89
	adc  b                                           ; $6581: $88
	ld   h, [hl]                                     ; $6582: $66
	adc  c                                           ; $6583: $89
	add  a                                           ; $6584: $87
	ld   a, b                                        ; $6585: $78
	ld   a, c                                        ; $6586: $79
	sub  a                                           ; $6587: $97
	adc  b                                           ; $6588: $88
	ld   h, a                                        ; $6589: $67
	ld   [hl], a                                     ; $658a: $77
	sbc  b                                           ; $658b: $98
	ld   d, h                                        ; $658c: $54
	ld   e, b                                        ; $658d: $58
	add  a                                           ; $658e: $87
	add  [hl]                                        ; $658f: $86
	ld   a, c                                        ; $6590: $79
	sbc  d                                           ; $6591: $9a
	adc  c                                           ; $6592: $89
	adc  b                                           ; $6593: $88
	ld   l, h                                        ; $6594: $6c
	ret  z                                           ; $6595: $c8

	sub  [hl]                                        ; $6596: $96
	adc  d                                           ; $6597: $8a

Call_0f5_6598:
	res  3, c                                        ; $6598: $cb $99
	ld   h, [hl]                                     ; $659a: $66
	sbc  d                                           ; $659b: $9a
	cp   b                                           ; $659c: $b8
	ld   d, h                                        ; $659d: $54
	ld   l, c                                        ; $659e: $69
	xor  e                                           ; $659f: $ab
	ld   [hl], h                                     ; $65a0: $74
	ld   d, a                                        ; $65a1: $57
	adc  c                                           ; $65a2: $89
	sub  [hl]                                        ; $65a3: $96
	ld   a, c                                        ; $65a4: $79
	ld   [hl], a                                     ; $65a5: $77
	sbc  c                                           ; $65a6: $99

Jump_0f5_65a7:
	xor  c                                           ; $65a7: $a9

Jump_0f5_65a8:
	add  [hl]                                        ; $65a8: $86
	ld   a, c                                        ; $65a9: $79
	xor  e                                           ; $65aa: $ab
	sbc  b                                           ; $65ab: $98
	ld   h, a                                        ; $65ac: $67
	add  a                                           ; $65ad: $87
	sbc  b                                           ; $65ae: $98
	halt                                             ; $65af: $76
	ld   [hl], a                                     ; $65b0: $77
	ld   a, b                                        ; $65b1: $78
	ld   l, b                                        ; $65b2: $68
	adc  c                                           ; $65b3: $89
	xor  c                                           ; $65b4: $a9
	halt                                             ; $65b5: $76
	ld   d, [hl]                                     ; $65b6: $56
	sbc  e                                           ; $65b7: $9b
	sbc  b                                           ; $65b8: $98
	ld   h, l                                        ; $65b9: $65
	adc  d                                           ; $65ba: $8a
	xor  c                                           ; $65bb: $a9
	adc  c                                           ; $65bc: $89
	ld   [hl], a                                     ; $65bd: $77
	sbc  c                                           ; $65be: $99
	sbc  b                                           ; $65bf: $98
	sbc  c                                           ; $65c0: $99
	ld   l, b                                        ; $65c1: $68
	add  a                                           ; $65c2: $87
	ld   a, b                                        ; $65c3: $78
	adc  c                                           ; $65c4: $89
	add  a                                           ; $65c5: $87
	ld   a, b                                        ; $65c6: $78
	ld   a, c                                        ; $65c7: $79
	xor  b                                           ; $65c8: $a8
	ld   [hl], a                                     ; $65c9: $77
	sbc  c                                           ; $65ca: $99
	sbc  b                                           ; $65cb: $98
	ld   h, a                                        ; $65cc: $67
	sbc  d                                           ; $65cd: $9a
	sbc  b                                           ; $65ce: $98
	halt                                             ; $65cf: $76
	sbc  c                                           ; $65d0: $99
	sbc  b                                           ; $65d1: $98
	ld   [hl], a                                     ; $65d2: $77
	adc  d                                           ; $65d3: $8a
	sbc  b                                           ; $65d4: $98
	add  a                                           ; $65d5: $87
	ld   a, b                                        ; $65d6: $78
	ld   a, b                                        ; $65d7: $78
	add  a                                           ; $65d8: $87
	ld   a, b                                        ; $65d9: $78
	adc  b                                           ; $65da: $88
	sbc  b                                           ; $65db: $98
	ld   h, [hl]                                     ; $65dc: $66
	ld   a, b                                        ; $65dd: $78
	sbc  c                                           ; $65de: $99
	ld   [hl], l                                     ; $65df: $75
	ld   a, c                                        ; $65e0: $79
	adc  c                                           ; $65e1: $89
	add  a                                           ; $65e2: $87
	adc  b                                           ; $65e3: $88
	sbc  c                                           ; $65e4: $99
	add  a                                           ; $65e5: $87
	ld   a, c                                        ; $65e6: $79
	sub  a                                           ; $65e7: $97
	sbc  c                                           ; $65e8: $99
	adc  b                                           ; $65e9: $88
	sbc  d                                           ; $65ea: $9a
	sbc  b                                           ; $65eb: $98
	add  [hl]                                        ; $65ec: $86
	ld   a, c                                        ; $65ed: $79
	adc  c                                           ; $65ee: $89
	add  a                                           ; $65ef: $87
	ld   a, b                                        ; $65f0: $78
	sbc  b                                           ; $65f1: $98
	adc  b                                           ; $65f2: $88
	ld   a, b                                        ; $65f3: $78
	sbc  b                                           ; $65f4: $98
	add  a                                           ; $65f5: $87
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	ld   [hl], a                                     ; $65f8: $77
	ld   a, b                                        ; $65f9: $78
	sbc  b                                           ; $65fa: $98
	adc  b                                           ; $65fb: $88
	adc  b                                           ; $65fc: $88
	adc  c                                           ; $65fd: $89
	ld   a, b                                        ; $65fe: $78
	sbc  c                                           ; $65ff: $99
	adc  b                                           ; $6600: $88
	add  a                                           ; $6601: $87
	ld   [hl], a                                     ; $6602: $77
	adc  b                                           ; $6603: $88
	adc  b                                           ; $6604: $88
	ld   [hl], a                                     ; $6605: $77
	sbc  c                                           ; $6606: $99
	xor  b                                           ; $6607: $a8
	ld   [hl], a                                     ; $6608: $77
	ld   a, b                                        ; $6609: $78
	sbc  b                                           ; $660a: $98
	ld   [hl], a                                     ; $660b: $77
	ld   a, b                                        ; $660c: $78
	adc  b                                           ; $660d: $88
	adc  c                                           ; $660e: $89
	adc  b                                           ; $660f: $88
	sbc  b                                           ; $6610: $98
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	ld   [hl], a                                     ; $6613: $77
	adc  b                                           ; $6614: $88
	sub  a                                           ; $6615: $97
	ld   [hl], a                                     ; $6616: $77
	ld   a, c                                        ; $6617: $79
	adc  b                                           ; $6618: $88
	add  a                                           ; $6619: $87
	adc  c                                           ; $661a: $89
	adc  b                                           ; $661b: $88
	sbc  b                                           ; $661c: $98
	ld   [hl], a                                     ; $661d: $77
	ld   a, b                                        ; $661e: $78
	adc  b                                           ; $661f: $88
	ld   [hl], a                                     ; $6620: $77
	ld   a, b                                        ; $6621: $78
	sbc  b                                           ; $6622: $98
	sbc  b                                           ; $6623: $98
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	sbc  b                                           ; $662d: $98
	adc  b                                           ; $662e: $88
	adc  b                                           ; $662f: $88
	adc  b                                           ; $6630: $88
	adc  b                                           ; $6631: $88
	adc  b                                           ; $6632: $88
	adc  b                                           ; $6633: $88
	adc  b                                           ; $6634: $88
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  b                                           ; $6638: $88
	adc  b                                           ; $6639: $88
	adc  b                                           ; $663a: $88
	ld   de, $1111                                   ; $663b: $11 $11 $11
	ld   de, $1111                                   ; $663e: $11 $11 $11
	ld   de, $1111                                   ; $6641: $11 $11 $11
	ld   de, $1111                                   ; $6644: $11 $11 $11
	ld   de, $1111                                   ; $6647: $11 $11 $11
	ld   de, $1111                                   ; $664a: $11 $11 $11
	ld   de, $1111                                   ; $664d: $11 $11 $11
	ld   de, $1111                                   ; $6650: $11 $11 $11
	ld   de, $1111                                   ; $6653: $11 $11 $11
	nop                                              ; $6656: $00
	ld   c, b                                        ; $6657: $48
	ld   de, $1111                                   ; $6658: $11 $11 $11
	ld   de, $1111                                   ; $665b: $11 $11 $11
	ld   de, $1111                                   ; $665e: $11 $11 $11
	ld   de, $5413                                   ; $6661: $11 $13 $54
	ld   d, h                                        ; $6664: $54
	ld   d, h                                        ; $6665: $54
	ld   b, c                                        ; $6666: $41
	rra                                              ; $6667: $1f
	rst  $38                                         ; $6668: $ff
	pop  af                                          ; $6669: $f1
	ld   de, $1411                                   ; $666a: $11 $11 $14
	sub  c                                           ; $666d: $91
	ld   de, $de1c                                   ; $666e: $11 $1c $de
	call z, $c1de                                    ; $6671: $cc $de $c1
	ld   de, $1111                                   ; $6674: $11 $11 $11
	ld   de, $1111                                   ; $6677: $11 $11 $11
	ld   de, $1111                                   ; $667a: $11 $11 $11
	ld   de, $1111                                   ; $667d: $11 $11 $11
	ld   de, $5411                                   ; $6680: $11 $11 $54
	ld   b, h                                        ; $6683: $44
	sub  h                                           ; $6684: $94
	ld   de, $5454                                   ; $6685: $11 $54 $54
	ld   h, a                                        ; $6688: $67
	ld   [hl], d                                     ; $6689: $72
	ld   de, $1111                                   ; $668a: $11 $11 $11
	ld   de, $1112                                   ; $668d: $11 $12 $11
	ld   [de], a                                     ; $6690: $12
	ld   de, $1111                                   ; $6691: $11 $11 $11
	ld   h, [hl]                                     ; $6694: $66
	halt                                             ; $6695: $76
	ld   h, h                                        ; $6696: $64
	ld   de, $8888                                   ; $6697: $11 $88 $88
	ld   [hl], a                                     ; $669a: $77
	ld   [hl], a                                     ; $669b: $77
	ld   a, b                                        ; $669c: $78
	sbc  d                                           ; $669d: $9a
	sbc  c                                           ; $669e: $99
	add  a                                           ; $669f: $87
	halt                                             ; $66a0: $76
	ld   h, [hl]                                     ; $66a1: $66
	adc  c                                           ; $66a2: $89
	sbc  d                                           ; $66a3: $9a
	sbc  c                                           ; $66a4: $99
	add  a                                           ; $66a5: $87
	ld   h, l                                        ; $66a6: $65

Call_0f5_66a7:
	ld   b, [hl]                                     ; $66a7: $46
	sbc  e                                           ; $66a8: $9b
	db   $ec                                         ; $66a9: $ec
	rst  ToBoot                                         ; $66aa: $c7
	ld   h, h                                        ; $66ab: $64
	ld   b, l                                        ; $66ac: $45
	ld   e, b                                        ; $66ad: $58
	sbc  e                                           ; $66ae: $9b
	cp   h                                           ; $66af: $bc
	xor  l                                           ; $66b0: $ad
	ld   [$76d7], a                                  ; $66b1: $ea $d7 $76
	ld   b, [hl]                                     ; $66b4: $46
	ld   e, c                                        ; $66b5: $59
	ld   a, d                                        ; $66b6: $7a
	sbc  c                                           ; $66b7: $99
	xor  b                                           ; $66b8: $a8
	and  a                                           ; $66b9: $a7
	and  l                                           ; $66ba: $a5
	halt                                             ; $66bb: $76
	ld   a, h                                        ; $66bc: $7c
	cp   a                                           ; $66bd: $bf
	cp   e                                           ; $66be: $bb
	ld   [hl], l                                     ; $66bf: $75
	ld   b, d                                        ; $66c0: $42
	ld   d, h                                        ; $66c1: $54
	add  a                                           ; $66c2: $87
	sbc  c                                           ; $66c3: $99
	adc  d                                           ; $66c4: $8a
	xor  e                                           ; $66c5: $ab
	ld   h, a                                        ; $66c6: $67
	ld   a, c                                        ; $66c7: $79
	and  a                                           ; $66c8: $a7

Jump_0f5_66c9:
	add  a                                           ; $66c9: $87
	sub  a                                           ; $66ca: $97
	ld   d, h                                        ; $66cb: $54
	ld   b, [hl]                                     ; $66cc: $46
	ld   d, a                                        ; $66cd: $57
	sbc  d                                           ; $66ce: $9a
	and  a                                           ; $66cf: $a7
	ld   h, l                                        ; $66d0: $65
	ld   h, l                                        ; $66d1: $65
	ld   l, b                                        ; $66d2: $68
	sbc  b                                           ; $66d3: $98
	ld   a, b                                        ; $66d4: $78
	sbc  c                                           ; $66d5: $99
	add  [hl]                                        ; $66d6: $86
	ld   h, [hl]                                     ; $66d7: $66
	adc  b                                           ; $66d8: $88
	sub  a                                           ; $66d9: $97
	ld   a, b                                        ; $66da: $78
	adc  e                                           ; $66db: $8b
	xor  d                                           ; $66dc: $aa
	sbc  b                                           ; $66dd: $98
	adc  b                                           ; $66de: $88
	sub  a                                           ; $66df: $97
	halt                                             ; $66e0: $76
	ld   a, b                                        ; $66e1: $78
	adc  c                                           ; $66e2: $89
	ld   [hl], a                                     ; $66e3: $77
	ld   a, b                                        ; $66e4: $78
	adc  b                                           ; $66e5: $88
	adc  b                                           ; $66e6: $88
	sbc  c                                           ; $66e7: $99
	xor  b                                           ; $66e8: $a8
	add  a                                           ; $66e9: $87
	ld   [hl], a                                     ; $66ea: $77
	ld   a, b                                        ; $66eb: $78
	adc  d                                           ; $66ec: $8a
	xor  h                                           ; $66ed: $ac
	call c, Call_0f5_55b7                            ; $66ee: $dc $b7 $55
	ld   h, a                                        ; $66f1: $67
	sbc  h                                           ; $66f2: $9c
	xor  d                                           ; $66f3: $aa
	sbc  b                                           ; $66f4: $98
	ld   h, [hl]                                     ; $66f5: $66
	ld   a, b                                        ; $66f6: $78
	xor  d                                           ; $66f7: $aa
	sbc  b                                           ; $66f8: $98
	sub  a                                           ; $66f9: $97
	ld   h, [hl]                                     ; $66fa: $66
	ld   d, a                                        ; $66fb: $57
	ld   a, d                                        ; $66fc: $7a
	cp   d                                           ; $66fd: $ba
	xor  c                                           ; $66fe: $a9
	add  [hl]                                        ; $66ff: $86
	ld   [hl], a                                     ; $6700: $77
	sbc  c                                           ; $6701: $99
	adc  c                                           ; $6702: $89
	adc  c                                           ; $6703: $89
	adc  c                                           ; $6704: $89
	cp   e                                           ; $6705: $bb
	add  [hl]                                        ; $6706: $86
	sbc  c                                           ; $6707: $99
	xor  c                                           ; $6708: $a9
	xor  e                                           ; $6709: $ab
	xor  b                                           ; $670a: $a8
	ld   d, l                                        ; $670b: $55
	ld   [hl], a                                     ; $670c: $77
	sbc  d                                           ; $670d: $9a
	xor  d                                           ; $670e: $aa
	ld   [hl], l                                     ; $670f: $75
	ld   b, h                                        ; $6710: $44
	ld   d, [hl]                                     ; $6711: $56
	sbc  d                                           ; $6712: $9a
	call z, Call_0f5_46a6                            ; $6713: $cc $a6 $46
	ld   l, c                                        ; $6716: $69
	cp   h                                           ; $6717: $bc
	cp   c                                           ; $6718: $b9
	add  [hl]                                        ; $6719: $86
	adc  c                                           ; $671a: $89
	sbc  d                                           ; $671b: $9a
	cp   e                                           ; $671c: $bb
	add  [hl]                                        ; $671d: $86
	ld   a, b                                        ; $671e: $78
	adc  d                                           ; $671f: $8a
	xor  e                                           ; $6720: $ab
	ld   [hl], l                                     ; $6721: $75
	ld   d, [hl]                                     ; $6722: $56
	adc  b                                           ; $6723: $88
	xor  c                                           ; $6724: $a9
	sub  a                                           ; $6725: $97
	ld   h, [hl]                                     ; $6726: $66
	ld   l, b                                        ; $6727: $68
	sbc  d                                           ; $6728: $9a
	xor  b                                           ; $6729: $a8
	add  a                                           ; $672a: $87
	ld   a, b                                        ; $672b: $78
	ld   a, c                                        ; $672c: $79
	ld   a, b                                        ; $672d: $78
	adc  c                                           ; $672e: $89
	xor  c                                           ; $672f: $a9
	xor  b                                           ; $6730: $a8
	sbc  c                                           ; $6731: $99
	sbc  c                                           ; $6732: $99
	sbc  d                                           ; $6733: $9a
	adc  c                                           ; $6734: $89
	halt                                             ; $6735: $76
	ld   h, a                                        ; $6736: $67
	sbc  c                                           ; $6737: $99
	xor  d                                           ; $6738: $aa
	sub  a                                           ; $6739: $97
	ld   d, l                                        ; $673a: $55
	ld   d, [hl]                                     ; $673b: $56
	ld   a, b                                        ; $673c: $78
	add  a                                           ; $673d: $87
	ld   [hl], a                                     ; $673e: $77
	ld   [hl], a                                     ; $673f: $77
	adc  b                                           ; $6740: $88
	xor  c                                           ; $6741: $a9
	sbc  c                                           ; $6742: $99
	adc  b                                           ; $6743: $88
	ld   a, b                                        ; $6744: $78
	adc  c                                           ; $6745: $89
	sbc  b                                           ; $6746: $98
	sbc  c                                           ; $6747: $99
	adc  b                                           ; $6748: $88
	ld   [hl], a                                     ; $6749: $77
	ld   [hl], a                                     ; $674a: $77
	ld   a, b                                        ; $674b: $78
	ld   [hl], a                                     ; $674c: $77
	halt                                             ; $674d: $76
	ld   [hl], a                                     ; $674e: $77
	ld   a, b                                        ; $674f: $78
	adc  b                                           ; $6750: $88
	halt                                             ; $6751: $76
	ld   h, [hl]                                     ; $6752: $66
	ld   h, a                                        ; $6753: $67
	sbc  d                                           ; $6754: $9a
	xor  d                                           ; $6755: $aa
	xor  d                                           ; $6756: $aa
	sbc  c                                           ; $6757: $99
	xor  e                                           ; $6758: $ab
	xor  e                                           ; $6759: $ab
	xor  d                                           ; $675a: $aa
	sbc  c                                           ; $675b: $99
	sbc  b                                           ; $675c: $98
	adc  b                                           ; $675d: $88
	adc  b                                           ; $675e: $88
	ld   [hl], a                                     ; $675f: $77
	ld   [hl], a                                     ; $6760: $77
	ld   h, [hl]                                     ; $6761: $66
	ld   h, [hl]                                     ; $6762: $66
	ld   h, l                                        ; $6763: $65
	ld   d, h                                        ; $6764: $54
	ld   b, h                                        ; $6765: $44
	ld   b, l                                        ; $6766: $45
	ld   h, a                                        ; $6767: $67
	adc  d                                           ; $6768: $8a
	xor  e                                           ; $6769: $ab
	res  7, e                                        ; $676a: $cb $bb
	xor  d                                           ; $676c: $aa
	xor  c                                           ; $676d: $a9
	xor  d                                           ; $676e: $aa
	sbc  b                                           ; $676f: $98
	adc  c                                           ; $6770: $89
	adc  b                                           ; $6771: $88
	sbc  d                                           ; $6772: $9a
	cp   d                                           ; $6773: $ba
	xor  d                                           ; $6774: $aa
	xor  c                                           ; $6775: $a9
	xor  d                                           ; $6776: $aa
	adc  c                                           ; $6777: $89
	halt                                             ; $6778: $76
	ld   d, h                                        ; $6779: $54
	ld   b, l                                        ; $677a: $45
	ld   h, [hl]                                     ; $677b: $66
	ld   h, [hl]                                     ; $677c: $66
	ld   d, d                                        ; $677d: $52
	ld   de, $1511                                   ; $677e: $11 $11 $15
	cp   a                                           ; $6781: $bf
	rst  $38                                         ; $6782: $ff
	rst  $38                                         ; $6783: $ff
	ret  z                                           ; $6784: $c8

	ld   h, [hl]                                     ; $6785: $66
	ld   a, c                                        ; $6786: $79
	xor  e                                           ; $6787: $ab
	xor  c                                           ; $6788: $a9
	adc  b                                           ; $6789: $88
	adc  c                                           ; $678a: $89
	xor  h                                           ; $678b: $ac
	call c, Call_0f5_76b9                            ; $678c: $dc $b9 $76
	ld   d, l                                        ; $678f: $55
	ld   a, c                                        ; $6790: $79
	sbc  d                                           ; $6791: $9a
	xor  c                                           ; $6792: $a9
	adc  c                                           ; $6793: $89
	add  a                                           ; $6794: $87
	ld   [hl], a                                     ; $6795: $77
	ld   h, [hl]                                     ; $6796: $66

Call_0f5_6797:
	ld   d, l                                        ; $6797: $55

Jump_0f5_6798:
	ld   b, h                                        ; $6798: $44
	inc  sp                                          ; $6799: $33
	ld   de, $2611                                   ; $679a: $11 $11 $26
	cp   a                                           ; $679d: $bf
	rst  $38                                         ; $679e: $ff
	cp   $b6                                         ; $679f: $fe $b6
	ld   b, h                                        ; $67a1: $44
	ld   d, [hl]                                     ; $67a2: $56
	sbc  c                                           ; $67a3: $99
	xor  d                                           ; $67a4: $aa
	xor  d                                           ; $67a5: $aa
	xor  e                                           ; $67a6: $ab
	res  7, d                                        ; $67a7: $cb $ba
	sub  a                                           ; $67a9: $97
	ld   h, l                                        ; $67aa: $65
	ld   h, a                                        ; $67ab: $67
	sbc  e                                           ; $67ac: $9b
	call $87da                                       ; $67ad: $cd $da $87
	ld   h, l                                        ; $67b0: $65
	ld   d, [hl]                                     ; $67b1: $56
	ld   h, l                                        ; $67b2: $65
	ld   b, e                                        ; $67b3: $43
	ld   de, $1111                                   ; $67b4: $11 $11 $11
	ld   a, [hl]                                     ; $67b7: $7e
	rst  $38                                         ; $67b8: $ff
	rst  $38                                         ; $67b9: $ff
	jp   hl                                          ; $67ba: $e9


	ld   b, c                                        ; $67bb: $41
	ld   [de], a                                     ; $67bc: $12
	ld   c, b                                        ; $67bd: $48
	cp   l                                           ; $67be: $bd
	db   $dd                                         ; $67bf: $dd
	db   $db                                         ; $67c0: $db
	cp   h                                           ; $67c1: $bc
	call z, Call_0f5_75ba                            ; $67c2: $cc $ba $75
	ld   b, e                                        ; $67c5: $43
	dec  [hl]                                        ; $67c6: $35
	adc  h                                           ; $67c7: $8c
	rst  $28                                         ; $67c8: $ef
	cp   $b7                                         ; $67c9: $fe $b7
	ld   b, e                                        ; $67cb: $43
	ld   [hl+], a                                    ; $67cc: $22
	inc  sp                                          ; $67cd: $33
	ld   b, e                                        ; $67ce: $43
	ld   de, $1311                                   ; $67cf: $11 $11 $13
	xor  a                                           ; $67d2: $af
	rst  $38                                         ; $67d3: $ff
	rst  $38                                         ; $67d4: $ff
	or   l                                           ; $67d5: $b5
	ld   de, $7c12                                   ; $67d6: $11 $12 $7c
	rst  $38                                         ; $67d9: $ff
	rst  $38                                         ; $67da: $ff

Jump_0f5_67db:
	jp   c, $99a9                                    ; $67db: $da $a9 $99

	sbc  b                                           ; $67de: $98
	ld   h, l                                        ; $67df: $65
	ld   b, e                                        ; $67e0: $43
	ld   e, b                                        ; $67e1: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e2: $cf
	rst  $38                                         ; $67e3: $ff
	ld   [$2263], a                                  ; $67e4: $ea $63 $22
	inc  h                                           ; $67e7: $24
	ld   b, h                                        ; $67e8: $44
	ld   sp, $1111                                   ; $67e9: $31 $11 $11
	ld   c, h                                        ; $67ec: $4c
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	ld   a, [$1141]                                  ; $67ef: $fa $41 $11
	ld   c, d                                        ; $67f2: $4a
	rst  $28                                         ; $67f3: $ef
	rst  $38                                         ; $67f4: $ff
	jp   z, Jump_0f5_7978                            ; $67f5: $ca $78 $79

	cp   d                                           ; $67f8: $ba
	sub  a                                           ; $67f9: $97
	ld   d, h                                        ; $67fa: $54
	ld   [hl], $9e                                   ; $67fb: $36 $9e
	rst  $38                                         ; $67fd: $ff
	db   $fd                                         ; $67fe: $fd
	sub  l                                           ; $67ff: $95
	ld   hl, $3312                                   ; $6800: $21 $12 $33
	ld   hl, $1111                                   ; $6803: $21 $11 $11
	ld   a, [hl-]                                    ; $6806: $3a
	rst  $38                                         ; $6807: $ff
	rst  $38                                         ; $6808: $ff
	ei                                               ; $6809: $fb
	ld   h, c                                        ; $680a: $61
	ld   de, $ce29                                   ; $680b: $11 $29 $ce
	cp   $db                                         ; $680e: $fe $db
	adc  b                                           ; $6810: $88
	sbc  d                                           ; $6811: $9a
	cp   e                                           ; $6812: $bb
	xor  b                                           ; $6813: $a8
	ld   h, l                                        ; $6814: $65
	ld   [hl], $8b                                   ; $6815: $36 $8b
	rst  $38                                         ; $6817: $ff
	cp   $b8                                         ; $6818: $fe $b8
	ld   b, d                                        ; $681a: $42
	ld   [hl+], a                                    ; $681b: $22
	inc  hl                                          ; $681c: $23
	ld   hl, $1111                                   ; $681d: $21 $11 $11
	dec  d                                           ; $6820: $15
	cp   a                                           ; $6821: $bf
	rst  $38                                         ; $6822: $ff
	rst  $38                                         ; $6823: $ff
	or   l                                           ; $6824: $b5
	ld   de, $9b03                                   ; $6825: $11 $03 $9b
	db   $dd                                         ; $6828: $dd
	db   $dd                                         ; $6829: $dd
	xor  d                                           ; $682a: $aa
	cp   c                                           ; $682b: $b9
	cp   e                                           ; $682c: $bb
	sbc  c                                           ; $682d: $99
	ld   h, [hl]                                     ; $682e: $66
	ld   d, l                                        ; $682f: $55
	xor  e                                           ; $6830: $ab
	rst  $28                                         ; $6831: $ef
	rst  $38                                         ; $6832: $ff
	ret                                              ; $6833: $c9


	ld   d, d                                        ; $6834: $52
	ld   [de], a                                     ; $6835: $12
	ld   [de], a                                     ; $6836: $12
	ld   de, $1111                                   ; $6837: $11 $11 $11
	jr   z, @+$01                                    ; $683a: $28 $ff

	rst  $38                                         ; $683c: $ff
	db   $fd                                         ; $683d: $fd
	sub  c                                           ; $683e: $91
	ld   de, $ab16                                   ; $683f: $11 $16 $ab
	xor  $fc                                         ; $6842: $ee $fc
	cp   e                                           ; $6844: $bb
	sbc  d                                           ; $6845: $9a
	cp   b                                           ; $6846: $b8
	add  a                                           ; $6847: $87
	ld   h, [hl]                                     ; $6848: $66
	ld   l, c                                        ; $6849: $69
	adc  $ff                                         ; $684a: $ce $ff
	db   $fc                                         ; $684c: $fc
	add  l                                           ; $684d: $85
	ld   hl, $1121                                   ; $684e: $21 $21 $11
	ld   de, $1611                                   ; $6851: $11 $11 $16
	rst  $28                                         ; $6854: $ef
	rst  $38                                         ; $6855: $ff
	cp   $b3                                         ; $6856: $fe $b3
	ld   de, $9a14                                   ; $6858: $11 $14 $9a
	call c, $acdd                                    ; $685b: $dc $dd $ac
	xor  d                                           ; $685e: $aa
	jp   z, Jump_0f5_6798                            ; $685f: $ca $98 $67

	ld   l, b                                        ; $6862: $68
	cp   h                                           ; $6863: $bc
	rst  $38                                         ; $6864: $ff
	call c, $3285                                    ; $6865: $dc $85 $32
	ld   hl, $1111                                   ; $6868: $21 $11 $11
	ld   de, $ff6b                                   ; $686b: $11 $6b $ff
	rst  $38                                         ; $686e: $ff
	cp   $72                                         ; $686f: $fe $72
	ld   b, c                                        ; $6871: $41
	scf                                              ; $6872: $37
	ld   a, d                                        ; $6873: $7a
	cp   h                                           ; $6874: $bc
	db   $db                                         ; $6875: $db
	call z, $a9ac                                    ; $6876: $cc $ac $a9
	and  a                                           ; $6879: $a7
	adc  b                                           ; $687a: $88
	adc  e                                           ; $687b: $8b
	cp   l                                           ; $687c: $bd
	jp   c, Jump_0f5_65a8                            ; $687d: $da $a8 $65

	ld   b, d                                        ; $6880: $42
	ld   de, $1111                                   ; $6881: $11 $11 $11
	ld   [hl], $ff                                   ; $6884: $36 $ff
	rst  $38                                         ; $6886: $ff
	cp   $c5                                         ; $6887: $fe $c5
	add  l                                           ; $6889: $85
	ld   c, c                                        ; $688a: $49
	ld   h, a                                        ; $688b: $67
	sub  a                                           ; $688c: $97
	xor  c                                           ; $688d: $a9
	cp   l                                           ; $688e: $bd
	call $a9db                                       ; $688f: $cd $db $a9
	adc  d                                           ; $6892: $8a
	sbc  e                                           ; $6893: $9b
	res  6, a                                        ; $6894: $cb $b7
	ld   h, l                                        ; $6896: $65
	ld   d, l                                        ; $6897: $55
	ld   b, e                                        ; $6898: $43
	ld   de, $1111                                   ; $6899: $11 $11 $11
	add  hl, sp                                      ; $689c: $39
	cp   $ff                                         ; $689d: $fe $ff
	rst  JumpTable                                         ; $689f: $df
	adc  h                                           ; $68a0: $8c
	or   a                                           ; $68a1: $b7
	jp   z, $788a                                    ; $68a2: $ca $8a $78

	add  [hl]                                        ; $68a5: $86
	sbc  c                                           ; $68a6: $99
	xor  h                                           ; $68a7: $ac
	xor  e                                           ; $68a8: $ab

Call_0f5_68a9:
	cp   h                                           ; $68a9: $bc
	call c, $b9dd                                    ; $68aa: $dc $dd $b9
	ld   [hl], l                                     ; $68ad: $75
	ld   b, l                                        ; $68ae: $45
	ld   b, h                                        ; $68af: $44
	ld   sp, $1111                                   ; $68b0: $31 $11 $11
	inc  [hl]                                        ; $68b3: $34
	res  5, [hl]                                     ; $68b4: $cb $ae
	adc  e                                           ; $68b6: $8b
	cp   c                                           ; $68b7: $b9
	ld   a, [$dcaf]                                  ; $68b8: $fa $af $dc
	cp   c                                           ; $68bb: $b9
	cp   b                                           ; $68bc: $b8
	adc  d                                           ; $68bd: $8a
	adc  d                                           ; $68be: $8a
	xor  b                                           ; $68bf: $a8
	sbc  d                                           ; $68c0: $9a
	cp   l                                           ; $68c1: $bd
	sbc  $dc                                         ; $68c2: $de $dc
	cp   c                                           ; $68c4: $b9
	ld   h, [hl]                                     ; $68c5: $66
	ld   h, h                                        ; $68c6: $64
	ld   [hl-], a                                    ; $68c7: $32
	ld   de, $4311                                   ; $68c8: $11 $11 $43
	halt                                             ; $68cb: $76
	ld   [hl], $26                                   ; $68cc: $36 $26
	halt                                             ; $68ce: $76
	jp   z, $dcae                                    ; $68cf: $ca $ae $dc

	call $bcdc                                       ; $68d2: $cd $dc $bc
	cp   h                                           ; $68d5: $bc
	jp   z, $cc9c                                    ; $68d6: $ca $9c $cc

	call z, $9acb                                    ; $68d9: $cc $cb $9a
	adc  b                                           ; $68dc: $88
	add  h                                           ; $68dd: $84
	ld   sp, $1311                                   ; $68de: $31 $11 $13
	inc  [hl]                                        ; $68e1: $34
	ld   b, c                                        ; $68e2: $41
	ld   hl, $5b35                                   ; $68e3: $21 $35 $5b
	xor  d                                           ; $68e6: $aa
	db   $fd                                         ; $68e7: $fd
	call c, $dddd                                    ; $68e8: $dc $dd $dd
	xor  $ef                                         ; $68eb: $ee $ef
	call c, $bbdd                                    ; $68ed: $dc $dd $bb
	cp   e                                           ; $68f0: $bb
	xor  c                                           ; $68f1: $a9
	xor  b                                           ; $68f2: $a8
	sbc  b                                           ; $68f3: $98
	ld   b, d                                        ; $68f4: $42
	ld   de, $3111                                   ; $68f5: $11 $11 $31
	ld   sp, $1311                                   ; $68f8: $31 $11 $13
	ld   [hl], $b9                                   ; $68fb: $36 $b9
	cp   a                                           ; $68fd: $bf
	db   $dd                                         ; $68fe: $dd
	xor  $dd                                         ; $68ff: $ee $dd
	rst  $28                                         ; $6901: $ef
	rst  $28                                         ; $6902: $ef
	db   $fd                                         ; $6903: $fd
	rst  $28                                         ; $6904: $ef
	call z, $a9ca                                    ; $6905: $cc $ca $a9
	adc  c                                           ; $6908: $89
	ld   [hl], a                                     ; $6909: $77
	ld   d, c                                        ; $690a: $51
	ld   de, $4111                                   ; $690b: $11 $11 $41
	ld   sp, $1211                                   ; $690e: $31 $11 $12
	ld   h, $ca                                      ; $6911: $26 $ca
	rst  JumpTable                                         ; $6913: $df
	db   $ed                                         ; $6914: $ed
	rst  $28                                         ; $6915: $ef
	call $ffff                                       ; $6916: $cd $ff $ff
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	call c, $aada                                    ; $691b: $dc $da $aa
	ld   [hl], a                                     ; $691e: $77
	ld   h, h                                        ; $691f: $64
	ld   de, $1511                                   ; $6920: $11 $11 $15
	dec  h                                           ; $6923: $25
	ld   hl, $1111                                   ; $6924: $21 $11 $11
	dec  sp                                          ; $6927: $3b
	sbc  h                                           ; $6928: $9c
	rst  $38                                         ; $6929: $ff
	sbc  $fd                                         ; $692a: $de $fd
	xor  $ff                                         ; $692c: $ee $ff
	rst  $38                                         ; $692e: $ff
	rst  $38                                         ; $692f: $ff
	cp   $cd                                         ; $6930: $fe $cd
	cp   c                                           ; $6932: $b9
	and  a                                           ; $6933: $a7
	halt                                             ; $6934: $76
	ld   sp, $1211                                   ; $6935: $31 $11 $12
	ld   [de], a                                     ; $6938: $12
	ld   sp, $1301                                   ; $6939: $31 $01 $13
	add  hl, hl                                      ; $693c: $29
	xor  c                                           ; $693d: $a9
	rst  $38                                         ; $693e: $ff
	db   $ed                                         ; $693f: $ed
	rst  $38                                         ; $6940: $ff
	rst  $28                                         ; $6941: $ef
	rst  $28                                         ; $6942: $ef
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	set  3, d                                        ; $6946: $cb $da
	xor  c                                           ; $6948: $a9
	ld   h, l                                        ; $6949: $65
	ld   hl, $1411                                   ; $694a: $21 $11 $14
	inc  d                                           ; $694d: $14
	ld   hl, $1211                                   ; $694e: $21 $11 $12
	dec  sp                                          ; $6951: $3b
	adc  e                                           ; $6952: $8b
	rst  $38                                         ; $6953: $ff
	sbc  $fe                                         ; $6954: $de $fe
	rst  $28                                         ; $6956: $ef
	rst  JumpTable                                         ; $6957: $df
	rst  $38                                         ; $6958: $ff
	rst  $38                                         ; $6959: $ff
	cp   $cc                                         ; $695a: $fe $cc
	cp   b                                           ; $695c: $b8
	sub  [hl]                                        ; $695d: $96
	ld   b, c                                        ; $695e: $41
	ld   de, $3111                                   ; $695f: $11 $11 $31
	ld   h, c                                        ; $6962: $61
	ld   de, $2511                                   ; $6963: $11 $11 $25
	ret                                              ; $6966: $c9


	rst  $28                                         ; $6967: $ef
	db   $fd                                         ; $6968: $fd
	rst  $38                                         ; $6969: $ff
	sbc  $dd                                         ; $696a: $de $dd
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	call c, $8ada                                    ; $696f: $dc $da $8a
	ld   sp, $1111                                   ; $6972: $31 $11 $11
	ld   de, $14a1                                   ; $6975: $11 $a1 $14
	inc  d                                           ; $6978: $14
	ld   d, l                                        ; $6979: $55
	db   $eb                                         ; $697a: $eb
	rst  $28                                         ; $697b: $ef
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	cp   a                                           ; $697e: $bf
	jp   z, $ffff                                    ; $697f: $ca $ff $ff

	rst  $38                                         ; $6982: $ff
	ei                                               ; $6983: $fb
	ret  z                                           ; $6984: $c8

	ld   d, h                                        ; $6985: $54
	ld   de, $1111                                   ; $6986: $11 $11 $11
	rra                                              ; $6989: $1f
	ld   sp, hl                                      ; $698a: $f9
	ld   sp, hl                                      ; $698b: $f9
	ld   c, d                                        ; $698c: $4a
	add  hl, sp                                      ; $698d: $39
	and  a                                           ; $698e: $a7
	rst  JumpTable                                         ; $698f: $df
	xor  h                                           ; $6990: $ac
	add  sp, -$23                                    ; $6991: $e8 $dd
	adc  a                                           ; $6993: $8f
	rst  $38                                         ; $6994: $ff
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	cp   h                                           ; $6997: $bc
	add  c                                           ; $6998: $81
	ld   de, $1111                                   ; $6999: $11 $11 $11
	ld   [de], a                                     ; $699c: $12
	rst  $38                                         ; $699d: $ff
	rst  $38                                         ; $699e: $ff
	and  c                                           ; $699f: $a1
	add  c                                           ; $69a0: $81
	ld   c, b                                        ; $69a1: $48
	adc  [hl]                                        ; $69a2: $8e
	db   $fc                                         ; $69a3: $fc
	db   $dd                                         ; $69a4: $dd
	ld   e, e                                        ; $69a5: $5b
	ret  z                                           ; $69a6: $c8

	rst  $38                                         ; $69a7: $ff
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	ei                                               ; $69aa: $fb
	add  l                                           ; $69ab: $85
	ld   de, $1111                                   ; $69ac: $11 $11 $11
	ld   [hl], l                                     ; $69af: $75
	rst  $38                                         ; $69b0: $ff
	rst  $38                                         ; $69b1: $ff
	ld   sp, $6621                                   ; $69b2: $31 $21 $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69b5: $cf
	cp   $d8                                         ; $69b6: $fe $d8
	dec  sp                                          ; $69b8: $3b
	cp   c                                           ; $69b9: $b9
	rst  $38                                         ; $69ba: $ff
	rst  $38                                         ; $69bb: $ff
	rst  $38                                         ; $69bc: $ff
	jp   c, $1171                                    ; $69bd: $da $71 $11

	ld   de, $af17                                   ; $69c0: $11 $17 $af
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	ld   de, $ca11                                   ; $69c5: $11 $11 $ca
	rst  $38                                         ; $69c8: $ff
	cp   h                                           ; $69c9: $bc
	ld   [hl], c                                     ; $69ca: $71
	sbc  a                                           ; $69cb: $9f
	adc  a                                           ; $69cc: $8f
	cp   $ff                                         ; $69cd: $fe $ff
	rst  $38                                         ; $69cf: $ff
	cp   c                                           ; $69d0: $b9
	ld   de, $1111                                   ; $69d1: $11 $11 $11
	cp   $ff                                         ; $69d4: $fe $ff
	rst  $38                                         ; $69d6: $ff
	add  c                                           ; $69d7: $81
	ld   de, $cf7f                                   ; $69d8: $11 $7f $cf
	di                                               ; $69db: $f3
	sub  l                                           ; $69dc: $95
	rra                                              ; $69dd: $1f
	ei                                               ; $69de: $fb
	sbc  $ef                                         ; $69df: $de $ef
	rst  $38                                         ; $69e1: $ff
	rst  $30                                         ; $69e2: $f7
	ld   d, c                                        ; $69e3: $51
	ld   de, $ef11                                   ; $69e4: $11 $11 $ef
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	pop  de                                          ; $69e9: $d1
	ld   de, $ef1f                                   ; $69ea: $11 $1f $ef
	ldh  a, [c]                                      ; $69ed: $f2
	ld   l, h                                        ; $69ee: $6c
	ld   e, a                                        ; $69ef: $5f
	ld   a, [$8f85]                                  ; $69f0: $fa $85 $8f
	rst  $38                                         ; $69f3: $ff
	ld   sp, hl                                      ; $69f4: $f9
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	rst  $38                                         ; $69f8: $ff
	rst  $38                                         ; $69f9: $ff
	ld   sp, hl                                      ; $69fa: $f9
	or   c                                           ; $69fb: $b1
	ld   de, $9f6f                                   ; $69fc: $11 $6f $9f
	pop  af                                          ; $69ff: $f1
	rst  JumpTable                                         ; $6a00: $df
	rst  $38                                         ; $6a01: $ff
	db   $f4                                         ; $6a02: $f4
	ld   de, $ffcf                                   ; $6a03: $11 $cf $ff
	ldh  a, [c]                                      ; $6a06: $f2
	ld   de, $1111                                   ; $6a07: $11 $11 $11
	rst  $38                                         ; $6a0a: $ff
	rst  $38                                         ; $6a0b: $ff
	cpl                                              ; $6a0c: $2f
	ld   de, $fa71                                   ; $6a0d: $11 $71 $fa
	ld   e, a                                        ; $6a10: $5f
	ld   c, l                                        ; $6a11: $4d
	rst  $38                                         ; $6a12: $ff
	cp   $41                                         ; $6a13: $fe $41
	ld   a, [de]                                     ; $6a15: $1a
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	ld   [hl], c                                     ; $6a18: $71
	ld   de, $1f11                                   ; $6a19: $11 $11 $1f
	rst  $38                                         ; $6a1c: $ff
	db   $f4                                         ; $6a1d: $f4
	ld   l, c                                        ; $6a1e: $69
	add  hl, de                                      ; $6a1f: $19
	dec  l                                           ; $6a20: $2d
	pop  af                                          ; $6a21: $f1
	ld   a, [$ff8f]                                  ; $6a22: $fa $8f $ff
	and  c                                           ; $6a25: $a1
	ld   de, $ffef                                   ; $6a26: $11 $ef $ff
	pop  de                                          ; $6a29: $d1
	ld   de, $1811                                   ; $6a2a: $11 $11 $18
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	rra                                              ; $6a2f: $1f
	ld   de, $f191                                   ; $6a30: $11 $91 $f1
	rra                                              ; $6a33: $1f
	ld   a, a                                        ; $6a34: $7f
	rst  $38                                         ; $6a35: $ff
	pop  af                                          ; $6a36: $f1
	ld   de, $ff1f                                   ; $6a37: $11 $1f $ff
	pop  af                                          ; $6a3a: $f1
	ld   de, $1111                                   ; $6a3b: $11 $11 $11
	rst  $38                                         ; $6a3e: $ff
	rst  $38                                         ; $6a3f: $ff
	pop  af                                          ; $6a40: $f1
	and  c                                           ; $6a41: $a1
	ld   [hl], c                                     ; $6a42: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a43: $cf
	rra                                              ; $6a44: $1f
	rst  $38                                         ; $6a45: $ff
	rst  $38                                         ; $6a46: $ff
	pop  af                                          ; $6a47: $f1
	dec  d                                           ; $6a48: $15
	rra                                              ; $6a49: $1f
	rst  $38                                         ; $6a4a: $ff
	pop  af                                          ; $6a4b: $f1
	ld   de, $1111                                   ; $6a4c: $11 $11 $11
	rst  $38                                         ; $6a4f: $ff
	rst  $38                                         ; $6a50: $ff
	add  l                                           ; $6a51: $85
	ld   de, $fef1                                   ; $6a52: $11 $f1 $fe
	rra                                              ; $6a55: $1f
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	pop  af                                          ; $6a58: $f1
	inc  de                                          ; $6a59: $13
	ld   a, a                                        ; $6a5a: $7f
	rst  $38                                         ; $6a5b: $ff
	ld   [hl], c                                     ; $6a5c: $71
	ld   de, $1111                                   ; $6a5d: $11 $11 $11
	rst  $38                                         ; $6a60: $ff
	rst  $38                                         ; $6a61: $ff
	dec  de                                          ; $6a62: $1b
	ld   de, $f3c1                                   ; $6a63: $11 $c1 $f3
	rra                                              ; $6a66: $1f
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	or   c                                           ; $6a69: $b1
	ld   de, $ffff                                   ; $6a6a: $11 $ff $ff
	ld   de, $1111                                   ; $6a6d: $11 $11 $11
	rra                                              ; $6a70: $1f
	rst  $38                                         ; $6a71: $ff
	pop  af                                          ; $6a72: $f1
	ld   [hl], e                                     ; $6a73: $73

Jump_0f5_6a74:
	rra                                              ; $6a74: $1f
	rra                                              ; $6a75: $1f
	and  c                                           ; $6a76: $a1
	rst  $38                                         ; $6a77: $ff
	rst  $38                                         ; $6a78: $ff
	rst  $38                                         ; $6a79: $ff
	ld   de, $ffbf                                   ; $6a7a: $11 $bf $ff
	pop  af                                          ; $6a7d: $f1
	ld   de, $1111                                   ; $6a7e: $11 $11 $11
	rst  $38                                         ; $6a81: $ff
	rst  $38                                         ; $6a82: $ff
	ld   b, c                                        ; $6a83: $41
	ld   de, $cff1                                   ; $6a84: $11 $f1 $cf
	rra                                              ; $6a87: $1f
	rst  $38                                         ; $6a88: $ff
	rst  $38                                         ; $6a89: $ff
	pop  af                                          ; $6a8a: $f1
	add  hl, de                                      ; $6a8b: $19
	rst  $38                                         ; $6a8c: $ff
	rst  $38                                         ; $6a8d: $ff
	ld   de, $1111                                   ; $6a8e: $11 $11 $11
	rra                                              ; $6a91: $1f
	rst  $38                                         ; $6a92: $ff
	pop  af                                          ; $6a93: $f1
	ld   b, c                                        ; $6a94: $41
	dec  e                                           ; $6a95: $1d
	dec  e                                           ; $6a96: $1d
	and  c                                           ; $6a97: $a1
	rst  $38                                         ; $6a98: $ff
	rst  $38                                         ; $6a99: $ff
	cp   d                                           ; $6a9a: $ba
	ld   de, $ffff                                   ; $6a9b: $11 $ff $ff
	pop  af                                          ; $6a9e: $f1
	ld   de, $1b11                                   ; $6a9f: $11 $11 $1b
	rst  $38                                         ; $6aa2: $ff
	rst  $38                                         ; $6aa3: $ff
	jr   jr_0f5_6ab9                                 ; $6aa4: $18 $13

	sub  c                                           ; $6aa6: $91
	pop  af                                          ; $6aa7: $f1
	cpl                                              ; $6aa8: $2f
	rst  $38                                         ; $6aa9: $ff
	jp   z, $1f11                                    ; $6aaa: $ca $11 $1f

	rst  $38                                         ; $6aad: $ff
	ld   sp, hl                                      ; $6aae: $f9
	ld   de, $1111                                   ; $6aaf: $11 $11 $11
	rst  $38                                         ; $6ab2: $ff
	rst  $38                                         ; $6ab3: $ff
	add  a                                           ; $6ab4: $87
	ld   de, $38f1                                   ; $6ab5: $11 $f1 $38

jr_0f5_6ab8:
	rra                                              ; $6ab8: $1f

jr_0f5_6ab9:
	rst  $38                                         ; $6ab9: $ff
	or   $71                                         ; $6aba: $f6 $71
	ld   a, [de]                                     ; $6abc: $1a
	rst  $38                                         ; $6abd: $ff
	cp   $11                                         ; $6abe: $fe $11
	ld   de, rAUD1LEN                                   ; $6ac0: $11 $11 $ff
	rst  $38                                         ; $6ac3: $ff
	di                                               ; $6ac4: $f3
	add  c                                           ; $6ac5: $81
	jp   $1f14                                       ; $6ac6: $c3 $14 $1f


	rst  $38                                         ; $6ac9: $ff
	rst  $38                                         ; $6aca: $ff
	ld   hl, rAUD1HIGH                                   ; $6acb: $21 $14 $ff
	ld   a, [$1111]                                  ; $6ace: $fa $11 $11
	ld   de, $ffff                                   ; $6ad1: $11 $ff $ff
	ldh  a, [c]                                      ; $6ad4: $f2
	pop  bc                                          ; $6ad5: $c1
	and  c                                           ; $6ad6: $a1
	inc  d                                           ; $6ad7: $14
	rra                                              ; $6ad8: $1f
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	ld   h, c                                        ; $6adb: $61
	add  hl, de                                      ; $6adc: $19
	rst  $38                                         ; $6add: $ff
	ld   a, [$1111]                                  ; $6ade: $fa $11 $11
	ld   de, $ffff                                   ; $6ae1: $11 $ff $ff
	di                                               ; $6ae4: $f3
	pop  hl                                          ; $6ae5: $e1
	or   c                                           ; $6ae6: $b1
	ld   de, $ff1f                                   ; $6ae7: $11 $1f $ff
	rst  $38                                         ; $6aea: $ff
	ld   [hl], c                                     ; $6aeb: $71
	rra                                              ; $6aec: $1f
	rst  $38                                         ; $6aed: $ff
	di                                               ; $6aee: $f3
	ld   de, $1111                                   ; $6aef: $11 $11 $11
	rst  $38                                         ; $6af2: $ff
	rst  $38                                         ; $6af3: $ff
	ret                                              ; $6af4: $c9


	sub  c                                           ; $6af5: $91
	sub  c                                           ; $6af6: $91
	ld   d, c                                        ; $6af7: $51
	rra                                              ; $6af8: $1f
	rst  $38                                         ; $6af9: $ff
	rst  $38                                         ; $6afa: $ff
	ld   b, c                                        ; $6afb: $41
	cpl                                              ; $6afc: $2f
	rst  $38                                         ; $6afd: $ff
	pop  af                                          ; $6afe: $f1
	ld   de, $1111                                   ; $6aff: $11 $11 $11
	rst  $28                                         ; $6b02: $ef
	rst  $38                                         ; $6b03: $ff
	ld   a, [$5382]                                  ; $6b04: $fa $82 $53
	ld   b, c                                        ; $6b07: $41
	ld   a, [de]                                     ; $6b08: $1a
	rst  $38                                         ; $6b09: $ff
	rst  $38                                         ; $6b0a: $ff
	ld   [hl], c                                     ; $6b0b: $71
	sbc  a                                           ; $6b0c: $9f
	rst  $38                                         ; $6b0d: $ff
	and  c                                           ; $6b0e: $a1
	ld   de, $1111                                   ; $6b0f: $11 $11 $11
	rst  $38                                         ; $6b12: $ff
	rst  $38                                         ; $6b13: $ff
	or   a                                           ; $6b14: $b7
	jr   z, jr_0f5_6ab8                              ; $6b15: $28 $a1

	and  c                                           ; $6b17: $a1
	dec  d                                           ; $6b18: $15
	rst  $38                                         ; $6b19: $ff
	rst  $38                                         ; $6b1a: $ff
	ld   [hl], c                                     ; $6b1b: $71
	xor  a                                           ; $6b1c: $af
	rst  $38                                         ; $6b1d: $ff
	ld   d, c                                        ; $6b1e: $51
	ld   de, $1111                                   ; $6b1f: $11 $11 $11
	rst  $38                                         ; $6b22: $ff
	rst  $38                                         ; $6b23: $ff
	ret  z                                           ; $6b24: $c8

	rra                                              ; $6b25: $1f
	jp   z, $1161                                    ; $6b26: $ca $61 $11

	rst  $38                                         ; $6b29: $ff
	rst  $38                                         ; $6b2a: $ff
	ld   h, a                                        ; $6b2b: $67
	rst  $38                                         ; $6b2c: $ff
	rst  $38                                         ; $6b2d: $ff
	ld   bc, $1111                                   ; $6b2e: $01 $11 $11
	ld   de, $ffcf                                   ; $6b31: $11 $cf $ff
	db   $ed                                         ; $6b34: $ed
	ld   l, a                                        ; $6b35: $6f
	rst  $38                                         ; $6b36: $ff
	and  c                                           ; $6b37: $a1
	ld   de, $fbef                                   ; $6b38: $11 $ef $fb
	inc  d                                           ; $6b3b: $14
	rst  $38                                         ; $6b3c: $ff
	rst  $38                                         ; $6b3d: $ff
	ld   d, c                                        ; $6b3e: $51
	ld   [de], a                                     ; $6b3f: $12
	ld   de, $1911                                   ; $6b40: $11 $11 $19
	rst  $38                                         ; $6b43: $ff
	db   $fc                                         ; $6b44: $fc
	adc  a                                           ; $6b45: $8f
	rst  $38                                         ; $6b46: $ff
	di                                               ; $6b47: $f3
	ld   de, $d878                                   ; $6b48: $11 $78 $d8
	ld   de, $ffaf                                   ; $6b4b: $11 $af $ff
	and  c                                           ; $6b4e: $a1
	dec  d                                           ; $6b4f: $15
	ld   d, c                                        ; $6b50: $51
	ld   de, $bb11                                   ; $6b51: $11 $11 $bb
	add  a                                           ; $6b54: $87
	ld   a, h                                        ; $6b55: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b56: $cf
	db   $fd                                         ; $6b57: $fd
	call z, $baeb                                    ; $6b58: $cc $eb $ba
	ld   d, d                                        ; $6b5b: $52
	ld   e, c                                        ; $6b5c: $59
	sbc  d                                           ; $6b5d: $9a
	sub  [hl]                                        ; $6b5e: $96
	ld   e, b                                        ; $6b5f: $58
	or   a                                           ; $6b60: $b7
	ld   d, [hl]                                     ; $6b61: $56
	and  a                                           ; $6b62: $a7
	ld   h, l                                        ; $6b63: $65
	ld   [hl+], a                                    ; $6b64: $22
	inc  h                                           ; $6b65: $24
	ld   d, a                                        ; $6b66: $57
	sbc  c                                           ; $6b67: $99
	xor  e                                           ; $6b68: $ab
	db   $ed                                         ; $6b69: $ed
	db   $ed                                         ; $6b6a: $ed
	and  [hl]                                        ; $6b6b: $a6
	ld   l, b                                        ; $6b6c: $68
	adc  c                                           ; $6b6d: $89
	sbc  c                                           ; $6b6e: $99
	adc  d                                           ; $6b6f: $8a
	call c, $88b9                                    ; $6b70: $dc $b9 $88
	halt                                             ; $6b73: $76
	ld   d, h                                        ; $6b74: $54
	ld   hl, $4613                                   ; $6b75: $21 $13 $46
	adc  b                                           ; $6b78: $88
	adc  c                                           ; $6b79: $89
	sbc  d                                           ; $6b7a: $9a
	cp   d                                           ; $6b7b: $ba
	adc  b                                           ; $6b7c: $88
	ld   a, b                                        ; $6b7d: $78
	sbc  d                                           ; $6b7e: $9a
	cp   l                                           ; $6b7f: $bd
	call z, $bbcc                                    ; $6b80: $cc $cc $bb
	xor  d                                           ; $6b83: $aa
	add  [hl]                                        ; $6b84: $86
	ld   h, l                                        ; $6b85: $65
	ld   b, h                                        ; $6b86: $44
	ld   b, e                                        ; $6b87: $43
	ld   b, h                                        ; $6b88: $44
	ld   d, [hl]                                     ; $6b89: $56
	ld   [hl], a                                     ; $6b8a: $77
	ld   h, [hl]                                     ; $6b8b: $66
	ld   h, [hl]                                     ; $6b8c: $66
	ld   a, b                                        ; $6b8d: $78
	adc  c                                           ; $6b8e: $89
	sbc  d                                           ; $6b8f: $9a
	xor  e                                           ; $6b90: $ab
	set  1, e                                        ; $6b91: $cb $cb
	cp   h                                           ; $6b93: $bc
	cp   e                                           ; $6b94: $bb
	xor  c                                           ; $6b95: $a9
	add  a                                           ; $6b96: $87
	ld   [hl], a                                     ; $6b97: $77
	ld   [hl], a                                     ; $6b98: $77
	halt                                             ; $6b99: $76
	ld   d, h                                        ; $6b9a: $54
	ld   b, e                                        ; $6b9b: $43
	ld   b, l                                        ; $6b9c: $45
	ld   d, l                                        ; $6b9d: $55
	ld   h, [hl]                                     ; $6b9e: $66
	ld   a, b                                        ; $6b9f: $78
	sbc  d                                           ; $6ba0: $9a
	xor  d                                           ; $6ba1: $aa
	sbc  c                                           ; $6ba2: $99
	sbc  d                                           ; $6ba3: $9a
	cp   e                                           ; $6ba4: $bb
	xor  c                                           ; $6ba5: $a9
	sbc  d                                           ; $6ba6: $9a
	xor  e                                           ; $6ba7: $ab
	xor  e                                           ; $6ba8: $ab
	xor  d                                           ; $6ba9: $aa
	sbc  b                                           ; $6baa: $98
	halt                                             ; $6bab: $76
	ld   h, [hl]                                     ; $6bac: $66
	ld   d, l                                        ; $6bad: $55
	ld   d, l                                        ; $6bae: $55
	ld   d, l                                        ; $6baf: $55
	ld   h, [hl]                                     ; $6bb0: $66
	ld   h, [hl]                                     ; $6bb1: $66
	ld   [hl], a                                     ; $6bb2: $77
	adc  b                                           ; $6bb3: $88
	adc  c                                           ; $6bb4: $89
	adc  c                                           ; $6bb5: $89
	adc  c                                           ; $6bb6: $89
	sbc  c                                           ; $6bb7: $99
	xor  d                                           ; $6bb8: $aa
	xor  d                                           ; $6bb9: $aa
	cp   e                                           ; $6bba: $bb
	xor  d                                           ; $6bbb: $aa
	xor  c                                           ; $6bbc: $a9
	adc  b                                           ; $6bbd: $88
	adc  b                                           ; $6bbe: $88
	adc  b                                           ; $6bbf: $88
	ld   [hl], a                                     ; $6bc0: $77
	halt                                             ; $6bc1: $76
	ld   h, [hl]                                     ; $6bc2: $66
	ld   h, [hl]                                     ; $6bc3: $66
	ld   h, [hl]                                     ; $6bc4: $66
	ld   h, [hl]                                     ; $6bc5: $66
	ld   h, a                                        ; $6bc6: $67
	ld   [hl], a                                     ; $6bc7: $77
	ld   a, b                                        ; $6bc8: $78
	adc  b                                           ; $6bc9: $88
	sbc  b                                           ; $6bca: $98
	adc  b                                           ; $6bcb: $88
	adc  c                                           ; $6bcc: $89
	sbc  c                                           ; $6bcd: $99
	xor  d                                           ; $6bce: $aa
	sbc  c                                           ; $6bcf: $99
	xor  c                                           ; $6bd0: $a9
	xor  c                                           ; $6bd1: $a9
	adc  c                                           ; $6bd2: $89
	sbc  c                                           ; $6bd3: $99
	adc  b                                           ; $6bd4: $88
	add  a                                           ; $6bd5: $87
	ld   [hl], a                                     ; $6bd6: $77
	ld   [hl], a                                     ; $6bd7: $77
	halt                                             ; $6bd8: $76
	ld   h, [hl]                                     ; $6bd9: $66
	ld   h, [hl]                                     ; $6bda: $66
	ld   h, a                                        ; $6bdb: $67
	ld   [hl], a                                     ; $6bdc: $77
	ld   [hl], a                                     ; $6bdd: $77
	adc  b                                           ; $6bde: $88
	sbc  b                                           ; $6bdf: $98
	adc  b                                           ; $6be0: $88
	sbc  c                                           ; $6be1: $99
	adc  c                                           ; $6be2: $89
	sbc  c                                           ; $6be3: $99
	sbc  c                                           ; $6be4: $99
	sbc  c                                           ; $6be5: $99
	sbc  c                                           ; $6be6: $99
	sbc  b                                           ; $6be7: $98
	sbc  c                                           ; $6be8: $99
	sbc  c                                           ; $6be9: $99
	adc  b                                           ; $6bea: $88
	add  a                                           ; $6beb: $87
	ld   [hl], a                                     ; $6bec: $77
	ld   [hl], a                                     ; $6bed: $77
	ld   [hl], a                                     ; $6bee: $77
	ld   [hl], a                                     ; $6bef: $77
	ld   [hl], a                                     ; $6bf0: $77
	ld   [hl], a                                     ; $6bf1: $77
	ld   [hl], a                                     ; $6bf2: $77
	adc  b                                           ; $6bf3: $88
	adc  b                                           ; $6bf4: $88
	adc  c                                           ; $6bf5: $89
	sbc  c                                           ; $6bf6: $99
	adc  b                                           ; $6bf7: $88
	adc  b                                           ; $6bf8: $88
	adc  b                                           ; $6bf9: $88
	sbc  b                                           ; $6bfa: $98
	adc  c                                           ; $6bfb: $89
	sbc  c                                           ; $6bfc: $99
	sbc  c                                           ; $6bfd: $99
	sbc  b                                           ; $6bfe: $98
	adc  b                                           ; $6bff: $88
	adc  b                                           ; $6c00: $88
	adc  b                                           ; $6c01: $88
	ld   a, b                                        ; $6c02: $78
	adc  b                                           ; $6c03: $88
	add  a                                           ; $6c04: $87
	ld   [hl], a                                     ; $6c05: $77
	ld   [hl], a                                     ; $6c06: $77
	ld   [hl], a                                     ; $6c07: $77
	ld   [hl], a                                     ; $6c08: $77
	ld   a, b                                        ; $6c09: $78
	adc  b                                           ; $6c0a: $88
	adc  b                                           ; $6c0b: $88
	adc  c                                           ; $6c0c: $89
	sbc  c                                           ; $6c0d: $99
	sbc  c                                           ; $6c0e: $99
	sbc  c                                           ; $6c0f: $99
	sbc  c                                           ; $6c10: $99
	sbc  c                                           ; $6c11: $99
	adc  b                                           ; $6c12: $88
	sbc  c                                           ; $6c13: $99
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
	adc  b                                           ; $6cd1: $88
	adc  b                                           ; $6cd2: $88
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	adc  b                                           ; $6cd5: $88
	adc  b                                           ; $6cd6: $88
	adc  b                                           ; $6cd7: $88
	adc  b                                           ; $6cd8: $88
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	adc  b                                           ; $6cdb: $88
	adc  b                                           ; $6cdc: $88
	adc  b                                           ; $6cdd: $88
	adc  b                                           ; $6cde: $88
	adc  b                                           ; $6cdf: $88
	adc  b                                           ; $6ce0: $88
	adc  b                                           ; $6ce1: $88
	adc  b                                           ; $6ce2: $88
	adc  b                                           ; $6ce3: $88
	adc  b                                           ; $6ce4: $88
	adc  b                                           ; $6ce5: $88
	adc  b                                           ; $6ce6: $88
	adc  b                                           ; $6ce7: $88
	adc  b                                           ; $6ce8: $88
	adc  b                                           ; $6ce9: $88
	adc  b                                           ; $6cea: $88
	adc  b                                           ; $6ceb: $88
	adc  b                                           ; $6cec: $88
	adc  b                                           ; $6ced: $88
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	adc  b                                           ; $6cf0: $88
	adc  b                                           ; $6cf1: $88
	adc  b                                           ; $6cf2: $88
	adc  b                                           ; $6cf3: $88
	adc  b                                           ; $6cf4: $88
	adc  b                                           ; $6cf5: $88
	adc  b                                           ; $6cf6: $88
	adc  b                                           ; $6cf7: $88
	adc  b                                           ; $6cf8: $88
	adc  b                                           ; $6cf9: $88
	adc  b                                           ; $6cfa: $88
	adc  b                                           ; $6cfb: $88
	adc  b                                           ; $6cfc: $88
	adc  b                                           ; $6cfd: $88
	adc  b                                           ; $6cfe: $88
	adc  b                                           ; $6cff: $88
	adc  b                                           ; $6d00: $88
	adc  b                                           ; $6d01: $88
	adc  b                                           ; $6d02: $88
	adc  b                                           ; $6d03: $88
	adc  b                                           ; $6d04: $88
	adc  b                                           ; $6d05: $88
	adc  b                                           ; $6d06: $88
	adc  b                                           ; $6d07: $88
	adc  b                                           ; $6d08: $88
	adc  b                                           ; $6d09: $88
	adc  b                                           ; $6d0a: $88
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	adc  b                                           ; $6d0d: $88
	adc  b                                           ; $6d0e: $88
	adc  b                                           ; $6d0f: $88
	adc  b                                           ; $6d10: $88
	adc  b                                           ; $6d11: $88
	adc  b                                           ; $6d12: $88
	adc  b                                           ; $6d13: $88
	adc  b                                           ; $6d14: $88
	adc  b                                           ; $6d15: $88
	adc  b                                           ; $6d16: $88
	adc  b                                           ; $6d17: $88
	adc  b                                           ; $6d18: $88
	adc  b                                           ; $6d19: $88
	adc  b                                           ; $6d1a: $88
	adc  b                                           ; $6d1b: $88
	adc  b                                           ; $6d1c: $88
	adc  b                                           ; $6d1d: $88
	adc  b                                           ; $6d1e: $88
	adc  b                                           ; $6d1f: $88
	adc  b                                           ; $6d20: $88
	adc  b                                           ; $6d21: $88
	adc  b                                           ; $6d22: $88
	adc  b                                           ; $6d23: $88
	adc  b                                           ; $6d24: $88
	adc  b                                           ; $6d25: $88
	adc  b                                           ; $6d26: $88
	adc  b                                           ; $6d27: $88
	adc  b                                           ; $6d28: $88
	adc  b                                           ; $6d29: $88
	adc  b                                           ; $6d2a: $88
	adc  b                                           ; $6d2b: $88
	adc  b                                           ; $6d2c: $88
	adc  b                                           ; $6d2d: $88
	adc  b                                           ; $6d2e: $88
	adc  b                                           ; $6d2f: $88
	adc  b                                           ; $6d30: $88
	adc  b                                           ; $6d31: $88
	adc  b                                           ; $6d32: $88
	adc  b                                           ; $6d33: $88
	adc  b                                           ; $6d34: $88
	adc  b                                           ; $6d35: $88
	adc  b                                           ; $6d36: $88
	adc  b                                           ; $6d37: $88
	adc  b                                           ; $6d38: $88
	adc  b                                           ; $6d39: $88
	adc  b                                           ; $6d3a: $88
	adc  b                                           ; $6d3b: $88
	adc  b                                           ; $6d3c: $88
	adc  b                                           ; $6d3d: $88
	adc  b                                           ; $6d3e: $88
	adc  b                                           ; $6d3f: $88
	adc  b                                           ; $6d40: $88
	adc  b                                           ; $6d41: $88
	adc  b                                           ; $6d42: $88
	adc  b                                           ; $6d43: $88
	adc  b                                           ; $6d44: $88
	adc  b                                           ; $6d45: $88
	adc  b                                           ; $6d46: $88
	adc  b                                           ; $6d47: $88
	adc  b                                           ; $6d48: $88
	adc  b                                           ; $6d49: $88
	adc  c                                           ; $6d4a: $89
	adc  c                                           ; $6d4b: $89
	sbc  c                                           ; $6d4c: $99
	xor  d                                           ; $6d4d: $aa
	sbc  d                                           ; $6d4e: $9a
	sbc  b                                           ; $6d4f: $98
	ld   a, b                                        ; $6d50: $78
	add  a                                           ; $6d51: $87
	ld   [hl], a                                     ; $6d52: $77
	ld   a, c                                        ; $6d53: $79
	ld   [hl], h                                     ; $6d54: $74
	xor  d                                           ; $6d55: $aa
	xor  [hl]                                        ; $6d56: $ae
	add  l                                           ; $6d57: $85
	xor  e                                           ; $6d58: $ab
	xor  c                                           ; $6d59: $a9
	ld   a, b                                        ; $6d5a: $78
	ld   [hl], a                                     ; $6d5b: $77
	halt                                             ; $6d5c: $76
	ld   [hl], a                                     ; $6d5d: $77
	add  [hl]                                        ; $6d5e: $86
	ld   a, b                                        ; $6d5f: $78
	adc  c                                           ; $6d60: $89
	cp   e                                           ; $6d61: $bb
	add  a                                           ; $6d62: $87
	call Call_0f5_5496                               ; $6d63: $cd $96 $54
	ld   d, e                                        ; $6d66: $53
	inc  hl                                          ; $6d67: $23
	ld   h, [hl]                                     ; $6d68: $66
	ld   b, l                                        ; $6d69: $45
	ld   d, h                                        ; $6d6a: $54
	ld   l, e                                        ; $6d6b: $6b
	db   $dd                                         ; $6d6c: $dd
	set  1, d                                        ; $6d6d: $cb $ca
	sbc  $ec                                         ; $6d6f: $de $ec
	cp   d                                           ; $6d71: $ba
	sbc  d                                           ; $6d72: $9a
	xor  c                                           ; $6d73: $a9
	ld   [hl], l                                     ; $6d74: $75
	ld   de, $1511                                   ; $6d75: $11 $11 $15
	ld   a, c                                        ; $6d78: $79
	sub  h                                           ; $6d79: $94
	dec  [hl]                                        ; $6d7a: $35
	rst  JumpTable                                         ; $6d7b: $df
	rst  $38                                         ; $6d7c: $ff
	or   a                                           ; $6d7d: $b7
	ld   a, l                                        ; $6d7e: $7d
	rst  $38                                         ; $6d7f: $ff
	db   $fc                                         ; $6d80: $fc
	ld   h, d                                        ; $6d81: $62
	ld   l, e                                        ; $6d82: $6b
	sbc  $ea                                         ; $6d83: $de $ea
	ld   b, c                                        ; $6d85: $41
	ld   de, $1511                                   ; $6d86: $11 $11 $15
	ld   e, a                                        ; $6d89: $5f
	rst  $10                                         ; $6d8a: $d7
	adc  a                                           ; $6d8b: $8f
	rst  $38                                         ; $6d8c: $ff
	rst  $38                                         ; $6d8d: $ff
	ld   [hl], c                                     ; $6d8e: $71
	add  hl, de                                      ; $6d8f: $19
	call z, $1295                                    ; $6d90: $cc $95 $12
	rst  $28                                         ; $6d93: $ef
	rst  $38                                         ; $6d94: $ff
	ld   sp, hl                                      ; $6d95: $f9
	ld   de, $1111                                   ; $6d96: $11 $11 $11
	ld   de, $ffcf                                   ; $6d99: $11 $cf $ff
	xor  c                                           ; $6d9c: $a9
	rst  $38                                         ; $6d9d: $ff
	rst  $38                                         ; $6d9e: $ff
	and  c                                           ; $6d9f: $a1
	ld   de, $f7bf                                   ; $6da0: $11 $bf $f7
	ld   de, $ff8f                                   ; $6da3: $11 $8f $ff
	ldh  a, [c]                                      ; $6da6: $f2
	ld   de, $1153                                   ; $6da7: $11 $53 $11
	ld   de, $ff7f                                   ; $6daa: $11 $7f $ff
	or   $bf                                         ; $6dad: $f6 $bf
	rst  $38                                         ; $6daf: $ff
	pop  bc                                          ; $6db0: $c1
	ld   de, $ff2f                                   ; $6db1: $11 $2f $ff
	pop  hl                                          ; $6db4: $e1
	ld   e, a                                        ; $6db5: $5f
	rst  $38                                         ; $6db6: $ff
	ld   sp, hl                                      ; $6db7: $f9
	ld   de, $1127                                   ; $6db8: $11 $27 $11
	ld   de, $ff1f                                   ; $6dbb: $11 $1f $ff
	db   $fd                                         ; $6dbe: $fd
	ld   l, h                                        ; $6dbf: $6c
	rst  $38                                         ; $6dc0: $ff
	pop  af                                          ; $6dc1: $f1
	ld   de, $ff1e                                   ; $6dc2: $11 $1e $ff
	ei                                               ; $6dc5: $fb
	ld   a, e                                        ; $6dc6: $7b
	rst  $38                                         ; $6dc7: $ff
	ei                                               ; $6dc8: $fb
	ld   d, c                                        ; $6dc9: $51
	inc  a                                           ; $6dca: $3c
	call nc, $1111                                   ; $6dcb: $d4 $11 $11
	rra                                              ; $6dce: $1f
	rst  $38                                         ; $6dcf: $ff
	ld   a, [$ffcf]                                  ; $6dd0: $fa $cf $ff
	ld   de, $1f11                                   ; $6dd3: $11 $11 $1f
	rst  $38                                         ; $6dd6: $ff
	ld   a, [hl]                                     ; $6dd7: $7e
	rst  $38                                         ; $6dd8: $ff
	db   $fc                                         ; $6dd9: $fc
	ld   de, $fecf                                   ; $6dda: $11 $cf $fe
	ld   h, c                                        ; $6ddd: $61
	ld   de, $1111                                   ; $6dde: $11 $11 $11
	rst  $38                                         ; $6de1: $ff
	rst  $38                                         ; $6de2: $ff
	ei                                               ; $6de3: $fb
	rst  $38                                         ; $6de4: $ff
	or   c                                           ; $6de5: $b1
	ld   de, rAUD1LEN                                   ; $6de6: $11 $11 $ff
	rst  $38                                         ; $6de9: $ff
	db   $fc                                         ; $6dea: $fc
	rst  JumpTable                                         ; $6deb: $df
	ld   h, c                                        ; $6dec: $61
	ld   l, $ff                                      ; $6ded: $2e $ff
	ei                                               ; $6def: $fb
	ld   de, $1111                                   ; $6df0: $11 $11 $11
	rra                                              ; $6df3: $1f
	rst  $38                                         ; $6df4: $ff
	cp   $98                                         ; $6df5: $fe $98
	rst  $38                                         ; $6df7: $ff
	ld   de, $1f11                                   ; $6df8: $11 $11 $1f
	rst  $38                                         ; $6dfb: $ff
	rst  $38                                         ; $6dfc: $ff
	and  l                                           ; $6dfd: $a5
	or   [hl]                                        ; $6dfe: $b6
	ld   [de], a                                     ; $6dff: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e00: $cf
	rst  $38                                         ; $6e01: $ff
	db   $e3                                         ; $6e02: $e3
	ld   de, $1111                                   ; $6e03: $11 $11 $11
	rra                                              ; $6e06: $1f
	rst  $38                                         ; $6e07: $ff
	ei                                               ; $6e08: $fb
	ld   sp, $11ff                                   ; $6e09: $31 $ff $11
	ld   de, $ff2f                                   ; $6e0c: $11 $2f $ff
	jp   $ff34                                       ; $6e0f: $c3 $34 $ff


	or   d                                           ; $6e12: $b2
	ld   a, a                                        ; $6e13: $7f
	rst  $28                                         ; $6e14: $ef
	sub  c                                           ; $6e15: $91
	ld   de, $1111                                   ; $6e16: $11 $11 $11
	rst  $38                                         ; $6e19: $ff
	rst  $38                                         ; $6e1a: $ff
	db   $fc                                         ; $6e1b: $fc
	rra                                              ; $6e1c: $1f
	pop  hl                                          ; $6e1d: $e1
	ld   de, rAUD1LEN                                   ; $6e1e: $11 $11 $ff
	rst  $38                                         ; $6e21: $ff
	and  a                                           ; $6e22: $a7
	inc  e                                           ; $6e23: $1c
	db   $ed                                         ; $6e24: $ed
	sbc  h                                           ; $6e25: $9c
	ld   sp, hl                                      ; $6e26: $f9
	db   $eb                                         ; $6e27: $eb
	ld   h, c                                        ; $6e28: $61
	ld   de, $1111                                   ; $6e29: $11 $11 $11
	rst  $38                                         ; $6e2c: $ff
	rst  $38                                         ; $6e2d: $ff
	ld   sp, hl                                      ; $6e2e: $f9
	dec  e                                           ; $6e2f: $1d
	db   $f4                                         ; $6e30: $f4
	ld   de, rAUD1LEN                                   ; $6e31: $11 $11 $ff
	rst  $38                                         ; $6e34: $ff
	ld   d, l                                        ; $6e35: $55
	cpl                                              ; $6e36: $2f
	rst  $38                                         ; $6e37: $ff
	and  l                                           ; $6e38: $a5
	sub  [hl]                                        ; $6e39: $96
	db   $ec                                         ; $6e3a: $ec
	ld   h, c                                        ; $6e3b: $61
	ld   de, $1511                                   ; $6e3c: $11 $11 $15
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	ld   hl, sp+$5f                                  ; $6e41: $f8 $5f
	call nz, $1411                                   ; $6e43: $c4 $11 $14
	rst  $38                                         ; $6e46: $ff
	db   $fd                                         ; $6e47: $fd
	or   a                                           ; $6e48: $b7
	cp   a                                           ; $6e49: $bf
	rst  $38                                         ; $6e4a: $ff
	adc  b                                           ; $6e4b: $88
	ld   b, [hl]                                     ; $6e4c: $46
	jp   z, $1151                                    ; $6e4d: $ca $51 $11

	ld   de, $ff17                                   ; $6e50: $11 $17 $ff
	rst  $38                                         ; $6e53: $ff
	ei                                               ; $6e54: $fb
	sbc  a                                           ; $6e55: $9f
	sub  $11                                         ; $6e56: $d6 $11
	ld   de, $fbfd                                   ; $6e58: $11 $fd $fb
	db   $ed                                         ; $6e5b: $ed
	rst  $38                                         ; $6e5c: $ff
	cp   $58                                         ; $6e5d: $fe $58
	ld   e, c                                        ; $6e5f: $59
	sub  [hl]                                        ; $6e60: $96
	ld   sp, $1111                                   ; $6e61: $31 $11 $11
	rra                                              ; $6e64: $1f
	rst  $38                                         ; $6e65: $ff
	rst  $38                                         ; $6e66: $ff
	db   $fd                                         ; $6e67: $fd
	rst  $38                                         ; $6e68: $ff
	pop  bc                                          ; $6e69: $c1
	ld   de, $8c15                                   ; $6e6a: $11 $15 $8c
	xor  e                                           ; $6e6d: $ab
	rst  $38                                         ; $6e6e: $ff
	rst  $38                                         ; $6e6f: $ff
	ei                                               ; $6e70: $fb
	xor  d                                           ; $6e71: $aa
	sbc  d                                           ; $6e72: $9a
	ld   h, [hl]                                     ; $6e73: $66
	ld   hl, $1111                                   ; $6e74: $21 $11 $11
	inc  d                                           ; $6e77: $14
	rst  $38                                         ; $6e78: $ff
	db   $fd                                         ; $6e79: $fd
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	ei                                               ; $6e7c: $fb
	ld   de, $2611                                   ; $6e7d: $11 $11 $26
	and  [hl]                                        ; $6e80: $a6
	rst  $28                                         ; $6e81: $ef
	rst  $38                                         ; $6e82: $ff
	rst  $38                                         ; $6e83: $ff
	cp   l                                           ; $6e84: $bd
	xor  l                                           ; $6e85: $ad
	ld   a, c                                        ; $6e86: $79
	ld   d, e                                        ; $6e87: $53
	ld   de, $1111                                   ; $6e88: $11 $11 $11
	ld   l, h                                        ; $6e8b: $6c
	rst  $38                                         ; $6e8c: $ff
	rst  $28                                         ; $6e8d: $ef
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	and  c                                           ; $6e90: $a1
	ld   de, $7711                                   ; $6e91: $11 $11 $77
	ld   a, h                                        ; $6e94: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e95: $cf
	rst  $28                                         ; $6e96: $ef
	rst  $38                                         ; $6e97: $ff
	jp   c, $86c7                                    ; $6e98: $da $c7 $86

	ld   d, c                                        ; $6e9b: $51
	ld   de, $1211                                   ; $6e9c: $11 $11 $12
	adc  e                                           ; $6e9f: $8b
	jp   c, $dfda                                    ; $6ea0: $da $da $df

	rst  $38                                         ; $6ea3: $ff
	sub  [hl]                                        ; $6ea4: $96
	ld   de, $9636                                   ; $6ea5: $11 $36 $96
	ld   h, h                                        ; $6ea8: $64
	ld   a, d                                        ; $6ea9: $7a
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	ret                                              ; $6eac: $c9


	ld   l, b                                        ; $6ead: $68
	xor  d                                           ; $6eae: $aa
	add  h                                           ; $6eaf: $84
	ld   hl, $1411                                   ; $6eb0: $21 $11 $14
	sub  a                                           ; $6eb3: $97
	ld   d, d                                        ; $6eb4: $52
	ld   b, a                                        ; $6eb5: $47
	cp   a                                           ; $6eb6: $bf

jr_0f5_6eb7:
	rst  $38                                         ; $6eb7: $ff
	ret                                              ; $6eb8: $c9


	halt                                             ; $6eb9: $76
	adc  c                                           ; $6eba: $89
	sub  [hl]                                        ; $6ebb: $96
	ld   b, e                                        ; $6ebc: $43
	ld   b, a                                        ; $6ebd: $47
	cp   a                                           ; $6ebe: $bf
	rst  $38                                         ; $6ebf: $ff
	ld   [$9c87], a                                  ; $6ec0: $ea $87 $9c
	db   $db                                         ; $6ec3: $db
	sub  l                                           ; $6ec4: $95
	ld   de, $1411                                   ; $6ec5: $11 $11 $14
	inc  sp                                          ; $6ec8: $33
	inc  sp                                          ; $6ec9: $33
	ld   a, b                                        ; $6eca: $78
	rst  JumpTable                                         ; $6ecb: $df
	cp   $ba                                         ; $6ecc: $fe $ba
	ld   [hl], a                                     ; $6ece: $77
	ld   a, c                                        ; $6ecf: $79
	sbc  c                                           ; $6ed0: $99
	add  a                                           ; $6ed1: $87
	halt                                             ; $6ed2: $76
	ld   a, d                                        ; $6ed3: $7a
	db   $dd                                         ; $6ed4: $dd
	db   $ed                                         ; $6ed5: $ed
	cp   b                                           ; $6ed6: $b8
	adc  c                                           ; $6ed7: $89
	call $74ca                                       ; $6ed8: $cd $ca $74
	ld   hl, $3311                                   ; $6edb: $21 $11 $33
	ld   sp, $4a23                                   ; $6ede: $31 $23 $4a
	rst  $28                                         ; $6ee1: $ef
	rst  $38                                         ; $6ee2: $ff
	reti                                             ; $6ee3: $d9


	ld   h, [hl]                                     ; $6ee4: $66
	sbc  e                                           ; $6ee5: $9b
	call Call_0f5_55a7                               ; $6ee6: $cd $a7 $55
	ld   a, d                                        ; $6ee9: $7a
	call $87db                                       ; $6eea: $cd $db $87
	ld   a, c                                        ; $6eed: $79
	xor  e                                           ; $6eee: $ab
	cp   d                                           ; $6eef: $ba
	add  l                                           ; $6ef0: $85
	ld   hl, $3411                                   ; $6ef1: $21 $11 $34
	ld   d, e                                        ; $6ef4: $53
	inc  sp                                          ; $6ef5: $33
	jr   c, jr_0f5_6eb7                              ; $6ef6: $38 $bf

	rst  $38                                         ; $6ef8: $ff
	cp   b                                           ; $6ef9: $b8
	ld   [hl], a                                     ; $6efa: $77
	xor  l                                           ; $6efb: $ad
	db   $ed                                         ; $6efc: $ed
	cp   c                                           ; $6efd: $b9
	halt                                             ; $6efe: $76
	ld   l, c                                        ; $6eff: $69
	xor  h                                           ; $6f00: $ac
	cp   e                                           ; $6f01: $bb
	sbc  b                                           ; $6f02: $98
	ld   [hl], a                                     ; $6f03: $77
	adc  c                                           ; $6f04: $89
	cp   d                                           ; $6f05: $ba
	and  a                                           ; $6f06: $a7
	ld   d, e                                        ; $6f07: $53
	ld   de, $3423                                   ; $6f08: $11 $23 $34
	dec  [hl]                                        ; $6f0b: $35
	ld   d, [hl]                                     ; $6f0c: $56
	sbc  e                                           ; $6f0d: $9b
	res  7, d                                        ; $6f0e: $cb $ba
	xor  d                                           ; $6f10: $aa

Call_0f5_6f11:
	cp   h                                           ; $6f11: $bc
	cp   e                                           ; $6f12: $bb
	cp   d                                           ; $6f13: $ba
	xor  d                                           ; $6f14: $aa
	adc  b                                           ; $6f15: $88
	sbc  c                                           ; $6f16: $99
	sbc  c                                           ; $6f17: $99
	sbc  c                                           ; $6f18: $99
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	adc  c                                           ; $6f1b: $89
	sbc  b                                           ; $6f1c: $98
	ld   [hl], a                                     ; $6f1d: $77
	ld   d, h                                        ; $6f1e: $54
	ld   [hl+], a                                    ; $6f1f: $22
	inc  sp                                          ; $6f20: $33
	ld   b, h                                        ; $6f21: $44
	ld   d, l                                        ; $6f22: $55
	ld   d, [hl]                                     ; $6f23: $56
	ld   a, c                                        ; $6f24: $79
	xor  d                                           ; $6f25: $aa
	cp   e                                           ; $6f26: $bb
	jp   z, $bbba                                    ; $6f27: $ca $ba $bb

	xor  e                                           ; $6f2a: $ab
	cp   d                                           ; $6f2b: $ba
	sbc  c                                           ; $6f2c: $99
	adc  b                                           ; $6f2d: $88
	adc  b                                           ; $6f2e: $88
	sbc  b                                           ; $6f2f: $98
	sbc  c                                           ; $6f30: $99
	sbc  c                                           ; $6f31: $99
	sbc  c                                           ; $6f32: $99
	add  a                                           ; $6f33: $87
	ld   h, [hl]                                     ; $6f34: $66
	ld   h, [hl]                                     ; $6f35: $66
	ld   d, e                                        ; $6f36: $53
	inc  hl                                          ; $6f37: $23
	inc  [hl]                                        ; $6f38: $34
	ld   b, l                                        ; $6f39: $45
	ld   h, [hl]                                     ; $6f3a: $66
	ld   a, c                                        ; $6f3b: $79
	xor  e                                           ; $6f3c: $ab
	cp   e                                           ; $6f3d: $bb
	cp   e                                           ; $6f3e: $bb
	cp   d                                           ; $6f3f: $ba
	xor  c                                           ; $6f40: $a9
	xor  d                                           ; $6f41: $aa
	sbc  d                                           ; $6f42: $9a
	xor  d                                           ; $6f43: $aa
	xor  c                                           ; $6f44: $a9
	sbc  b                                           ; $6f45: $98
	sbc  b                                           ; $6f46: $98
	adc  b                                           ; $6f47: $88
	sbc  c                                           ; $6f48: $99
	sbc  d                                           ; $6f49: $9a
	sbc  b                                           ; $6f4a: $98
	ld   [hl], a                                     ; $6f4b: $77
	halt                                             ; $6f4c: $76
	ld   h, l                                        ; $6f4d: $65
	ld   hl, $3522                                   ; $6f4e: $21 $22 $35
	ld   l, b                                        ; $6f51: $68
	adc  c                                           ; $6f52: $89
	sbc  d                                           ; $6f53: $9a
	cp   d                                           ; $6f54: $ba
	cp   e                                           ; $6f55: $bb
	cp   e                                           ; $6f56: $bb
	xor  e                                           ; $6f57: $ab
	sbc  c                                           ; $6f58: $99
	sbc  c                                           ; $6f59: $99
	sbc  b                                           ; $6f5a: $98
	sbc  c                                           ; $6f5b: $99
	adc  c                                           ; $6f5c: $89
	sbc  d                                           ; $6f5d: $9a
	sbc  d                                           ; $6f5e: $9a
	sbc  d                                           ; $6f5f: $9a
	xor  c                                           ; $6f60: $a9
	sbc  b                                           ; $6f61: $98
	add  a                                           ; $6f62: $87
	ld   [hl], a                                     ; $6f63: $77
	ld   d, e                                        ; $6f64: $53
	ld   de, $4511                                   ; $6f65: $11 $11 $45
	ld   a, c                                        ; $6f68: $79
	sbc  d                                           ; $6f69: $9a
	cp   h                                           ; $6f6a: $bc
	call c, $99ca                                    ; $6f6b: $dc $ca $99
	adc  b                                           ; $6f6e: $88
	ld   a, c                                        ; $6f6f: $79
	sbc  d                                           ; $6f70: $9a
	sbc  c                                           ; $6f71: $99
	sbc  b                                           ; $6f72: $98
	sbc  c                                           ; $6f73: $99
	sbc  c                                           ; $6f74: $99
	xor  h                                           ; $6f75: $ac
	call z, $87c9                                    ; $6f76: $cc $c9 $87
	ld   h, [hl]                                     ; $6f79: $66
	ld   d, l                                        ; $6f7a: $55
	ld   sp, $1111                                   ; $6f7b: $31 $11 $11
	ld   d, a                                        ; $6f7e: $57
	call z, $bdce                                    ; $6f7f: $cc $ce $bd
	cp   h                                           ; $6f82: $bc
	ret  z                                           ; $6f83: $c8

	sub  [hl]                                        ; $6f84: $96
	add  a                                           ; $6f85: $87
	ld   a, c                                        ; $6f86: $79
	sbc  c                                           ; $6f87: $99
	xor  d                                           ; $6f88: $aa
	cp   b                                           ; $6f89: $b8
	xor  b                                           ; $6f8a: $a8
	xor  h                                           ; $6f8b: $ac
	sbc  $bb                                         ; $6f8c: $de $bb
	add  [hl]                                        ; $6f8e: $86
	ld   d, l                                        ; $6f8f: $55
	ld   h, l                                        ; $6f90: $65
	ld   b, c                                        ; $6f91: $41
	ld   de, $3811                                   ; $6f92: $11 $11 $38
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f95: $cf
	rst  $28                                         ; $6f96: $ef
	db   $ed                                         ; $6f97: $ed
	jp   z, $87d9                                    ; $6f98: $ca $d9 $87

	ld   h, [hl]                                     ; $6f9b: $66
	ld   d, a                                        ; $6f9c: $57
	adc  d                                           ; $6f9d: $8a
	cp   e                                           ; $6f9e: $bb
	jp   z, $be9a                                    ; $6f9f: $ca $9a $be

	rst  $38                                         ; $6fa2: $ff
	jp   c, $3273                                    ; $6fa3: $da $73 $32

	ld   [hl-], a                                    ; $6fa6: $32
	ld   de, $1411                                   ; $6fa7: $11 $11 $14
	rst  JumpTable                                         ; $6faa: $df
	rst  $38                                         ; $6fab: $ff
	rst  $38                                         ; $6fac: $ff
	cp   h                                           ; $6fad: $bc
	sbc  h                                           ; $6fae: $9c
	adc  b                                           ; $6faf: $88
	add  e                                           ; $6fb0: $83
	ld   b, d                                        ; $6fb1: $42
	ld   h, a                                        ; $6fb2: $67
	sbc  l                                           ; $6fb3: $9d
	sbc  $de                                         ; $6fb4: $de $de
	db   $ed                                         ; $6fb6: $ed
	cp   $d9                                         ; $6fb7: $fe $d9
	ld   d, h                                        ; $6fb9: $54
	ld   de, $1111                                   ; $6fba: $11 $11 $11
	ld   de, $ff18                                   ; $6fbd: $11 $18 $ff
	rst  $38                                         ; $6fc0: $ff
	rst  $38                                         ; $6fc1: $ff
	cp   c                                           ; $6fc2: $b9
	ld   l, d                                        ; $6fc3: $6a
	ld   c, b                                        ; $6fc4: $48
	ld   d, d                                        ; $6fc5: $52
	ld   sp, $cf79                                   ; $6fc6: $31 $79 $cf
	rst  $38                                         ; $6fc9: $ff
	rst  $28                                         ; $6fca: $ef
	db   $fd                                         ; $6fcb: $fd
	db   $fc                                         ; $6fcc: $fc
	and  l                                           ; $6fcd: $a5
	ld   hl, $1111                                   ; $6fce: $21 $11 $11
	ld   de, $6f11                                   ; $6fd1: $11 $11 $6f
	rst  $38                                         ; $6fd4: $ff
	rst  $38                                         ; $6fd5: $ff
	rst  $30                                         ; $6fd6: $f7
	or   h                                           ; $6fd7: $b4
	sub  l                                           ; $6fd8: $95
	ld   b, a                                        ; $6fd9: $47
	inc  de                                          ; $6fda: $13
	jr   z, @-$32                                    ; $6fdb: $28 $cc

	rst  $38                                         ; $6fdd: $ff
	rst  $38                                         ; $6fde: $ff
	rst  JumpTable                                         ; $6fdf: $df
	rst  $28                                         ; $6fe0: $ef
	jp   hl                                          ; $6fe1: $e9


	ld   d, c                                        ; $6fe2: $51
	ld   de, $1111                                   ; $6fe3: $11 $11 $11
	ld   de, $ff17                                   ; $6fe6: $11 $17 $ff
	rst  $38                                         ; $6fe9: $ff
	rst  $38                                         ; $6fea: $ff
	ld   a, c                                        ; $6feb: $79
	ld   c, b                                        ; $6fec: $48
	ld   b, l                                        ; $6fed: $45
	ld   h, c                                        ; $6fee: $61
	inc  [hl]                                        ; $6fef: $34
	sbc  h                                           ; $6ff0: $9c
	rst  $28                                         ; $6ff1: $ef
	cp   $ed                                         ; $6ff2: $fe $ed
	xor  $fe                                         ; $6ff4: $ee $fe
	add  h                                           ; $6ff6: $84
	ld   de, $1111                                   ; $6ff7: $11 $11 $11
	ld   de, $bf11                                   ; $6ffa: $11 $11 $bf
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	sub  $85                                         ; $6fff: $d6 $85
	add  h                                           ; $7001: $84
	ld   h, l                                        ; $7002: $65
	inc  d                                           ; $7003: $14
	ld   l, e                                        ; $7004: $6b
	rst  JumpTable                                         ; $7005: $df
	rst  $38                                         ; $7006: $ff
	db   $ed                                         ; $7007: $ed
	xor  $ef                                         ; $7008: $ee $ef
	add  $31                                         ; $700a: $c6 $31
	ld   de, $1111                                   ; $700c: $11 $11 $11
	ld   de, $ff1f                                   ; $700f: $11 $1f $ff
	rst  $38                                         ; $7012: $ff
	ld   sp, hl                                      ; $7013: $f9
	add  a                                           ; $7014: $87
	ld   d, [hl]                                     ; $7015: $56
	ld   [hl], $21                                   ; $7016: $36 $21
	ld   e, b                                        ; $7018: $58
	rst  $28                                         ; $7019: $ef
	rst  $38                                         ; $701a: $ff
	db   $ed                                         ; $701b: $ed
	sbc  $ef                                         ; $701c: $de $ef
	ld   a, [$1151]                                  ; $701e: $fa $51 $11
	ld   de, $1111                                   ; $7021: $11 $11 $11
	rla                                              ; $7024: $17
	rst  $38                                         ; $7025: $ff
	rst  $38                                         ; $7026: $ff
	rst  $38                                         ; $7027: $ff
	ld   l, d                                        ; $7028: $6a
	ld   e, c                                        ; $7029: $59
	ld   b, h                                        ; $702a: $44
	ld   b, c                                        ; $702b: $41
	inc  h                                           ; $702c: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $702d: $cf
	rst  $38                                         ; $702e: $ff
	db   $fd                                         ; $702f: $fd
	db   $dd                                         ; $7030: $dd
	rst  $28                                         ; $7031: $ef
	cp   $72                                         ; $7032: $fe $72
	ld   de, $1111                                   ; $7034: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7037: $11 $11 $ff
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	xor  b                                           ; $703c: $a8
	sub  [hl]                                        ; $703d: $96
	sub  d                                           ; $703e: $92
	ld   h, c                                        ; $703f: $61
	inc  de                                          ; $7040: $13
	ld   l, [hl]                                     ; $7041: $6e
	rst  $38                                         ; $7042: $ff
	cp   $cc                                         ; $7043: $fe $cc
	rst  $38                                         ; $7045: $ff
	rst  $38                                         ; $7046: $ff
	add  $11                                         ; $7047: $c6 $11
	ld   de, $1111                                   ; $7049: $11 $11 $11
	ld   de, $ff3f                                   ; $704c: $11 $3f $ff
	rst  $38                                         ; $704f: $ff
	or   $b7                                         ; $7050: $f6 $b7
	and  [hl]                                        ; $7052: $a6
	ld   b, h                                        ; $7053: $44
	ld   de, $ef1b                                   ; $7054: $11 $1b $ef
	rst  $38                                         ; $7057: $ff
	ei                                               ; $7058: $fb
	rst  $28                                         ; $7059: $ef
	rst  $38                                         ; $705a: $ff
	jp   hl                                          ; $705b: $e9


	ld   hl, $1111                                   ; $705c: $21 $11 $11
	ld   de, $1d11                                   ; $705f: $11 $11 $1d
	rst  $38                                         ; $7062: $ff
	rst  $38                                         ; $7063: $ff
	ei                                               ; $7064: $fb
	cp   e                                           ; $7065: $bb
	xor  e                                           ; $7066: $ab
	ld   b, a                                        ; $7067: $47
	ld   de, $bc14                                   ; $7068: $11 $14 $bc
	rst  $38                                         ; $706b: $ff
	rst  $38                                         ; $706c: $ff
	rst  $28                                         ; $706d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $706e: $cf
	db   $ec                                         ; $706f: $ec
	ld   h, c                                        ; $7070: $61
	ld   de, $1111                                   ; $7071: $11 $11 $11
	ld   de, $ff16                                   ; $7074: $11 $16 $ff
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	adc  $df                                         ; $7079: $ce $df
	sbc  c                                           ; $707b: $99
	ld   sp, $8712                                   ; $707c: $31 $12 $87
	db   $ec                                         ; $707f: $ec
	call z, $efbf                                    ; $7080: $cc $bf $ef
	cp   $94                                         ; $7083: $fe $94
	ld   sp, $3123                                   ; $7085: $31 $23 $31
	ld   de, $1811                                   ; $7088: $11 $11 $18
	cp   [hl]                                        ; $708b: $be
	call c, $deca                                    ; $708c: $dc $ca $de
	rst  $38                                         ; $708f: $ff
	db   $fd                                         ; $7090: $fd
	xor  b                                           ; $7091: $a8
	ld   l, b                                        ; $7092: $68
	ld   a, c                                        ; $7093: $79
	xor  c                                           ; $7094: $a9
	sbc  c                                           ; $7095: $99
	cp   d                                           ; $7096: $ba
	cp   e                                           ; $7097: $bb
	cp   b                                           ; $7098: $b8
	adc  c                                           ; $7099: $89
	ld   a, c                                        ; $709a: $79
	adc  c                                           ; $709b: $89
	halt                                             ; $709c: $76
	ld   d, e                                        ; $709d: $53
	ld   sp, $1221                                   ; $709e: $31 $21 $12
	inc  hl                                          ; $70a1: $23
	dec  [hl]                                        ; $70a2: $35
	ld   a, c                                        ; $70a3: $79
	sbc  d                                           ; $70a4: $9a
	cp   d                                           ; $70a5: $ba
	set  1, l                                        ; $70a6: $cb $cd
	sbc  $dd                                         ; $70a8: $de $dd
	db   $dd                                         ; $70aa: $dd
	call c, $a9cb                                    ; $70ab: $dc $cb $a9
	sbc  b                                           ; $70ae: $98
	adc  b                                           ; $70af: $88
	adc  b                                           ; $70b0: $88
	ld   [hl], a                                     ; $70b1: $77
	ld   h, l                                        ; $70b2: $65
	ld   b, e                                        ; $70b3: $43
	ld   [hl-], a                                    ; $70b4: $32
	ld   hl, $2312                                   ; $70b5: $21 $12 $23
	inc  [hl]                                        ; $70b8: $34
	ld   d, a                                        ; $70b9: $57
	adc  c                                           ; $70ba: $89
	xor  e                                           ; $70bb: $ab
	cp   h                                           ; $70bc: $bc
	db   $dd                                         ; $70bd: $dd
	call c, $ddde                                    ; $70be: $dc $de $dd
	call c, $aaca                                    ; $70c1: $dc $ca $aa
	sbc  c                                           ; $70c4: $99
	sbc  b                                           ; $70c5: $98
	halt                                             ; $70c6: $76
	ld   h, [hl]                                     ; $70c7: $66
	ld   h, [hl]                                     ; $70c8: $66
	ld   h, [hl]                                     ; $70c9: $66
	ld   d, l                                        ; $70ca: $55
	ld   d, h                                        ; $70cb: $54
	ld   b, h                                        ; $70cc: $44
	inc  sp                                          ; $70cd: $33
	inc  sp                                          ; $70ce: $33
	inc  [hl]                                        ; $70cf: $34
	ld   d, [hl]                                     ; $70d0: $56
	ld   a, b                                        ; $70d1: $78
	xor  e                                           ; $70d2: $ab
	cp   h                                           ; $70d3: $bc
	cp   e                                           ; $70d4: $bb
	cp   h                                           ; $70d5: $bc
	set  1, h                                        ; $70d6: $cb $cc
	cp   e                                           ; $70d8: $bb
	xor  d                                           ; $70d9: $aa
	xor  d                                           ; $70da: $aa
	xor  c                                           ; $70db: $a9
	sbc  b                                           ; $70dc: $98
	ld   [hl], a                                     ; $70dd: $77
	ld   [hl], a                                     ; $70de: $77
	ld   [hl], a                                     ; $70df: $77
	ld   [hl], a                                     ; $70e0: $77
	ld   h, [hl]                                     ; $70e1: $66
	ld   h, [hl]                                     ; $70e2: $66
	ld   h, [hl]                                     ; $70e3: $66
	ld   h, l                                        ; $70e4: $65
	ld   d, l                                        ; $70e5: $55
	ld   d, l                                        ; $70e6: $55
	ld   d, l                                        ; $70e7: $55
	ld   d, l                                        ; $70e8: $55
	ld   h, a                                        ; $70e9: $67
	ld   a, b                                        ; $70ea: $78
	sbc  d                                           ; $70eb: $9a
	cp   e                                           ; $70ec: $bb
	xor  e                                           ; $70ed: $ab
	cp   e                                           ; $70ee: $bb
	cp   e                                           ; $70ef: $bb
	xor  d                                           ; $70f0: $aa
	xor  c                                           ; $70f1: $a9
	xor  c                                           ; $70f2: $a9
	sbc  c                                           ; $70f3: $99
	sbc  c                                           ; $70f4: $99
	sbc  c                                           ; $70f5: $99
	adc  b                                           ; $70f6: $88
	add  a                                           ; $70f7: $87
	ld   a, b                                        ; $70f8: $78
	adc  b                                           ; $70f9: $88
	add  a                                           ; $70fa: $87
	ld   [hl], a                                     ; $70fb: $77
	ld   [hl], a                                     ; $70fc: $77
	ld   [hl], a                                     ; $70fd: $77
	ld   h, [hl]                                     ; $70fe: $66
	ld   h, l                                        ; $70ff: $65
	ld   h, l                                        ; $7100: $65
	ld   d, l                                        ; $7101: $55
	ld   d, [hl]                                     ; $7102: $56
	ld   h, [hl]                                     ; $7103: $66
	ld   [hl], a                                     ; $7104: $77
	adc  c                                           ; $7105: $89
	sbc  c                                           ; $7106: $99
	sbc  c                                           ; $7107: $99
	sbc  c                                           ; $7108: $99
	xor  c                                           ; $7109: $a9
	sbc  d                                           ; $710a: $9a
	sbc  c                                           ; $710b: $99
	sbc  c                                           ; $710c: $99
	sbc  c                                           ; $710d: $99
	xor  d                                           ; $710e: $aa
	xor  c                                           ; $710f: $a9
	sbc  c                                           ; $7110: $99
	adc  c                                           ; $7111: $89
	sbc  c                                           ; $7112: $99
	sbc  b                                           ; $7113: $98
	adc  b                                           ; $7114: $88
	add  a                                           ; $7115: $87
	ld   [hl], a                                     ; $7116: $77
	ld   [hl], a                                     ; $7117: $77
	halt                                             ; $7118: $76
	ld   h, [hl]                                     ; $7119: $66
	ld   d, l                                        ; $711a: $55
	ld   h, [hl]                                     ; $711b: $66
	ld   h, [hl]                                     ; $711c: $66
	ld   h, [hl]                                     ; $711d: $66
	ld   h, [hl]                                     ; $711e: $66
	ld   h, a                                        ; $711f: $67
	adc  c                                           ; $7120: $89
	adc  c                                           ; $7121: $89
	xor  d                                           ; $7122: $aa
	xor  c                                           ; $7123: $a9
	xor  d                                           ; $7124: $aa
	xor  d                                           ; $7125: $aa
	xor  d                                           ; $7126: $aa
	xor  c                                           ; $7127: $a9
	sbc  d                                           ; $7128: $9a
	xor  c                                           ; $7129: $a9
	sbc  b                                           ; $712a: $98
	sbc  b                                           ; $712b: $98
	adc  b                                           ; $712c: $88
	adc  b                                           ; $712d: $88
	adc  b                                           ; $712e: $88
	adc  b                                           ; $712f: $88
	adc  b                                           ; $7130: $88
	adc  b                                           ; $7131: $88
	add  a                                           ; $7132: $87
	ld   [hl], a                                     ; $7133: $77
	halt                                             ; $7134: $76
	ld   h, [hl]                                     ; $7135: $66
	ld   h, [hl]                                     ; $7136: $66
	ld   h, [hl]                                     ; $7137: $66
	ld   h, [hl]                                     ; $7138: $66
	ld   h, [hl]                                     ; $7139: $66
	ld   h, a                                        ; $713a: $67
	ld   a, b                                        ; $713b: $78
	adc  c                                           ; $713c: $89
	xor  d                                           ; $713d: $aa
	xor  d                                           ; $713e: $aa
	xor  d                                           ; $713f: $aa
	xor  c                                           ; $7140: $a9
	sbc  c                                           ; $7141: $99
	sbc  b                                           ; $7142: $98
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	sbc  b                                           ; $7146: $98
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	sbc  c                                           ; $714b: $99
	sbc  b                                           ; $714c: $98
	adc  b                                           ; $714d: $88
	sbc  c                                           ; $714e: $99
	adc  b                                           ; $714f: $88
	add  a                                           ; $7150: $87
	ld   [hl], a                                     ; $7151: $77
	ld   [hl], a                                     ; $7152: $77
	ld   [hl], a                                     ; $7153: $77
	ld   h, [hl]                                     ; $7154: $66
	ld   h, [hl]                                     ; $7155: $66
	ld   h, [hl]                                     ; $7156: $66
	ld   [hl], a                                     ; $7157: $77
	adc  b                                           ; $7158: $88
	sbc  c                                           ; $7159: $99
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	sbc  b                                           ; $715d: $98
	adc  c                                           ; $715e: $89
	sbc  c                                           ; $715f: $99
	sbc  c                                           ; $7160: $99
	sbc  c                                           ; $7161: $99
	sbc  b                                           ; $7162: $98
	adc  c                                           ; $7163: $89
	sbc  c                                           ; $7164: $99
	sbc  c                                           ; $7165: $99
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  c                                           ; $7168: $89
	sbc  c                                           ; $7169: $99
	sbc  c                                           ; $716a: $99
	sbc  b                                           ; $716b: $98
	adc  b                                           ; $716c: $88
	add  a                                           ; $716d: $87
	ld   [hl], a                                     ; $716e: $77
	ld   [hl], a                                     ; $716f: $77
	ld   h, [hl]                                     ; $7170: $66
	ld   h, [hl]                                     ; $7171: $66
	ld   h, [hl]                                     ; $7172: $66
	ld   h, [hl]                                     ; $7173: $66
	ld   [hl], a                                     ; $7174: $77
	adc  b                                           ; $7175: $88
	sbc  b                                           ; $7176: $98
	adc  c                                           ; $7177: $89
	sbc  c                                           ; $7178: $99
	sbc  c                                           ; $7179: $99
	sbc  d                                           ; $717a: $9a
	xor  d                                           ; $717b: $aa
	sbc  c                                           ; $717c: $99
	sbc  b                                           ; $717d: $98
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  c                                           ; $7180: $89
	sbc  c                                           ; $7181: $99
	sbc  b                                           ; $7182: $98
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	sbc  c                                           ; $7185: $99
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	ld   [hl], a                                     ; $718b: $77
	ld   [hl], a                                     ; $718c: $77
	halt                                             ; $718d: $76
	ld   h, [hl]                                     ; $718e: $66
	ld   a, b                                        ; $718f: $78
	halt                                             ; $7190: $76
	ld   h, [hl]                                     ; $7191: $66
	ld   a, b                                        ; $7192: $78
	adc  b                                           ; $7193: $88
	add  a                                           ; $7194: $87
	adc  c                                           ; $7195: $89
	xor  e                                           ; $7196: $ab
	sbc  c                                           ; $7197: $99
	sbc  c                                           ; $7198: $99
	xor  d                                           ; $7199: $aa
	cp   d                                           ; $719a: $ba
	sbc  c                                           ; $719b: $99
	adc  c                                           ; $719c: $89
	sbc  c                                           ; $719d: $99
	ld   [hl], a                                     ; $719e: $77
	ld   a, c                                        ; $719f: $79
	xor  c                                           ; $71a0: $a9
	adc  c                                           ; $71a1: $89
	xor  h                                           ; $71a2: $ac
	call z, Call_0f5_76c8                            ; $71a3: $cc $c8 $76
	ld   [hl], a                                     ; $71a6: $77
	ld   [hl], l                                     ; $71a7: $75
	ld   hl, $6713                                   ; $71a8: $21 $13 $67
	add  [hl]                                        ; $71ab: $86
	ld   d, h                                        ; $71ac: $54
	ld   d, a                                        ; $71ad: $57
	xor  e                                           ; $71ae: $ab
	call z, $9ba9                                    ; $71af: $cc $a9 $9b
	call c, $a9db                                    ; $71b2: $dc $db $a9
	sbc  d                                           ; $71b5: $9a
	sbc  e                                           ; $71b6: $9b
	xor  c                                           ; $71b7: $a9
	adc  b                                           ; $71b8: $88
	sbc  c                                           ; $71b9: $99
	xor  c                                           ; $71ba: $a9
	sub  l                                           ; $71bb: $95
	ld   hl, $1111                                   ; $71bc: $21 $11 $11
	ld   [de], a                                     ; $71bf: $12
	ld   l, d                                        ; $71c0: $6a
	xor  e                                           ; $71c1: $ab
	ld   a, e                                        ; $71c2: $7b
	rst  $28                                         ; $71c3: $ef
	rst  $38                                         ; $71c4: $ff
	ld   hl, sp+$76                                  ; $71c5: $f8 $76
	sbc  c                                           ; $71c7: $99
	call Call_0f5_6797                               ; $71c8: $cd $97 $67
	adc  e                                           ; $71cb: $8b
	rst  $38                                         ; $71cc: $ff
	cp   $d9                                         ; $71cd: $fe $d9
	ld   h, l                                        ; $71cf: $65
	ld   b, c                                        ; $71d0: $41
	ld   de, $1111                                   ; $71d1: $11 $11 $11
	dec  sp                                          ; $71d4: $3b
	rst  $38                                         ; $71d5: $ff
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	rst  $38                                         ; $71d8: $ff
	db   $fd                                         ; $71d9: $fd
	ld   h, e                                        ; $71da: $63
	inc  de                                          ; $71db: $13
	add  hl, sp                                      ; $71dc: $39
	xor  c                                           ; $71dd: $a9
	add  a                                           ; $71de: $87
	sbc  b                                           ; $71df: $98
	rst  $28                                         ; $71e0: $ef
	rst  $38                                         ; $71e1: $ff
	db   $fc                                         ; $71e2: $fc
	ld   b, c                                        ; $71e3: $41
	ld   de, $1111                                   ; $71e4: $11 $11 $11
	ld   de, $ff15                                   ; $71e7: $11 $15 $ff
	rst  $38                                         ; $71ea: $ff
	rst  $28                                         ; $71eb: $ef
	rst  $38                                         ; $71ec: $ff
	rst  $38                                         ; $71ed: $ff
	jp   nz, $1211                                   ; $71ee: $c2 $11 $12

	adc  d                                           ; $71f1: $8a
	sbc  d                                           ; $71f2: $9a
	xor  e                                           ; $71f3: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71f4: $cf
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	and  e                                           ; $71f7: $a3
	ld   de, $1111                                   ; $71f8: $11 $11 $11
	ld   de, $6f11                                   ; $71fb: $11 $11 $6f
	rst  $38                                         ; $71fe: $ff
	ld   a, [$ffff]                                  ; $71ff: $fa $ff $ff
	db   $fd                                         ; $7202: $fd
	ld   de, $4811                                   ; $7203: $11 $11 $48
	reti                                             ; $7206: $d9


	adc  b                                           ; $7207: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7208: $cf
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	and  l                                           ; $720b: $a5
	ld   hl, $1144                                   ; $720c: $21 $44 $11
	ld   de, $5e11                                   ; $720f: $11 $11 $5e
	rst  $38                                         ; $7212: $ff
	ld   a, [$ff8f]                                  ; $7213: $fa $8f $ff
	rst  $38                                         ; $7216: $ff
	ld   [hl], c                                     ; $7217: $71
	ld   de, $ff8c                                   ; $7218: $11 $8c $ff
	sub  h                                           ; $721b: $94
	jr   c, @+$01                                    ; $721c: $38 $ff

	rst  $38                                         ; $721e: $ff
	ld   sp, hl                                      ; $721f: $f9
	ld   sp, $7515                                   ; $7220: $31 $15 $75
	ld   de, $1111                                   ; $7223: $11 $11 $11
	xor  a                                           ; $7226: $af
	rst  $38                                         ; $7227: $ff
	push af                                          ; $7228: $f5
	adc  $ff                                         ; $7229: $ce $ff
	db   $fc                                         ; $722b: $fc
	ld   de, $8f11                                   ; $722c: $11 $11 $8f
	rst  $38                                         ; $722f: $ff
	push bc                                          ; $7230: $c5
	ld   b, a                                        ; $7231: $47
	rst  JumpTable                                         ; $7232: $df
	rst  $38                                         ; $7233: $ff
	ld   hl, sp+$21                                  ; $7234: $f8 $21
	dec  d                                           ; $7236: $15
	halt                                             ; $7237: $76
	ld   de, $1111                                   ; $7238: $11 $11 $11
	ld   a, a                                        ; $723b: $7f
	rst  $38                                         ; $723c: $ff
	ld   hl, sp-$21                                  ; $723d: $f8 $df
	rst  $38                                         ; $723f: $ff
	rst  $38                                         ; $7240: $ff
	ld   hl, $6b11                                   ; $7241: $21 $11 $6b
	rst  $38                                         ; $7244: $ff
	ret  c                                           ; $7245: $d8

	ld   l, b                                        ; $7246: $68
	xor  a                                           ; $7247: $af
	rst  $38                                         ; $7248: $ff
	ld   a, [$1241]                                  ; $7249: $fa $41 $12
	ld   b, a                                        ; $724c: $47
	ld   hl, $1111                                   ; $724d: $21 $11 $11
	ccf                                              ; $7250: $3f
	rst  $38                                         ; $7251: $ff
	db   $fd                                         ; $7252: $fd
	sbc  $ff                                         ; $7253: $de $ff
	rst  $38                                         ; $7255: $ff
	ld   [hl], c                                     ; $7256: $71
	ld   de, $ef37                                   ; $7257: $11 $37 $ef
	ei                                               ; $725a: $fb
	adc  b                                           ; $725b: $88
	sbc  [hl]                                        ; $725c: $9e
	rst  $38                                         ; $725d: $ff
	cp   $81                                         ; $725e: $fe $81
	ld   de, $4125                                   ; $7260: $11 $25 $41
	ld   de, $1c11                                   ; $7263: $11 $11 $1c
	rst  $38                                         ; $7266: $ff
	rst  $38                                         ; $7267: $ff
	db   $ed                                         ; $7268: $ed
	rst  $28                                         ; $7269: $ef
	rst  $38                                         ; $726a: $ff
	or   h                                           ; $726b: $b4
	ld   de, $ce24                                   ; $726c: $11 $24 $ce
	cp   $a9                                         ; $726f: $fe $a9
	ld   a, d                                        ; $7271: $7a
	rst  JumpTable                                         ; $7272: $df
	rst  $38                                         ; $7273: $ff
	push de                                          ; $7274: $d5
	ld   de, $4313                                   ; $7275: $11 $13 $43
	ld   de, $1211                                   ; $7278: $11 $11 $12
	rst  $38                                         ; $727b: $ff
	rst  $38                                         ; $727c: $ff
	rst  $38                                         ; $727d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $727e: $cf
	rst  $38                                         ; $727f: $ff
	ld   hl, sp+$51                                  ; $7280: $f8 $51
	ld   [de], a                                     ; $7282: $12
	ld   e, e                                        ; $7283: $5b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7284: $cf
	res  3, b                                        ; $7285: $cb $98
	xor  l                                           ; $7287: $ad
	rst  $38                                         ; $7288: $ff
	ei                                               ; $7289: $fb
	ld   d, c                                        ; $728a: $51
	ld   de, $4125                                   ; $728b: $11 $25 $41
	ld   de, $3f11                                   ; $728e: $11 $11 $3f
	rst  $38                                         ; $7291: $ff
	rst  $38                                         ; $7292: $ff
	db   $ec                                         ; $7293: $ec
	rst  $38                                         ; $7294: $ff
	rst  $38                                         ; $7295: $ff
	or   [hl]                                        ; $7296: $b6
	ld   de, $9d15                                   ; $7297: $11 $15 $9d
	db   $fc                                         ; $729a: $fc
	or   a                                           ; $729b: $b7
	ld   a, b                                        ; $729c: $78
	cp   a                                           ; $729d: $bf
	rst  $38                                         ; $729e: $ff
	reti                                             ; $729f: $d9


	ld   sp, $5611                                   ; $72a0: $31 $11 $56
	ld   b, c                                        ; $72a3: $41
	ld   de, $6f11                                   ; $72a4: $11 $11 $6f
	rst  $38                                         ; $72a7: $ff
	ei                                               ; $72a8: $fb
	cp   h                                           ; $72a9: $bc
	rst  $38                                         ; $72aa: $ff
	rst  $38                                         ; $72ab: $ff
	or   l                                           ; $72ac: $b5
	ld   de, $ae26                                   ; $72ad: $11 $26 $ae
	jp   c, Jump_0f5_5775                            ; $72b0: $da $75 $57

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b3: $cf
	rst  $38                                         ; $72b4: $ff
	rst  ToBoot                                         ; $72b5: $c7
	ld   de, $8814                                   ; $72b6: $11 $14 $88
	ld   h, c                                        ; $72b9: $61
	ld   de, $6f11                                   ; $72ba: $11 $11 $6f
	rst  $38                                         ; $72bd: $ff
	ret                                              ; $72be: $c9


	sbc  h                                           ; $72bf: $9c
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	and  $11                                         ; $72c2: $e6 $11
	rla                                              ; $72c4: $17
	sbc  l                                           ; $72c5: $9d
	ret                                              ; $72c6: $c9


	ld   h, h                                        ; $72c7: $64
	ld   b, [hl]                                     ; $72c8: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c9: $cf
	rst  $38                                         ; $72ca: $ff
	add  sp, $53                                     ; $72cb: $e8 $53
	ld   [hl], $89                                   ; $72cd: $36 $89
	sub  l                                           ; $72cf: $95
	ld   de, $1511                                   ; $72d0: $11 $11 $15
	call Call_0f5_58c9                               ; $72d3: $cd $c9 $58
	cp   a                                           ; $72d6: $bf
	rst  $38                                         ; $72d7: $ff
	cp   $73                                         ; $72d8: $fe $73
	inc  sp                                          ; $72da: $33
	ld   a, c                                        ; $72db: $79
	cp   d                                           ; $72dc: $ba
	ld   [hl], l                                     ; $72dd: $75
	ld   b, l                                        ; $72de: $45
	ld   a, e                                        ; $72df: $7b
	rst  JumpTable                                         ; $72e0: $df
	db   $dd                                         ; $72e1: $dd
	and  a                                           ; $72e2: $a7
	ld   h, [hl]                                     ; $72e3: $66
	adc  b                                           ; $72e4: $88
	xor  c                                           ; $72e5: $a9
	add  l                                           ; $72e6: $85
	ld   hl, $2511                                   ; $72e7: $21 $11 $25
	ld   [hl], a                                     ; $72ea: $77
	halt                                             ; $72eb: $76
	ld   e, b                                        ; $72ec: $58
	rst  JumpTable                                         ; $72ed: $df
	rst  $38                                         ; $72ee: $ff
	db   $fd                                         ; $72ef: $fd
	add  h                                           ; $72f0: $84
	ld   b, l                                        ; $72f1: $45
	adc  b                                           ; $72f2: $88
	xor  b                                           ; $72f3: $a8
	ld   [hl], l                                     ; $72f4: $75
	ld   d, [hl]                                     ; $72f5: $56
	ld   a, d                                        ; $72f6: $7a
	cp   l                                           ; $72f7: $bd
	cp   e                                           ; $72f8: $bb
	xor  c                                           ; $72f9: $a9
	adc  b                                           ; $72fa: $88
	xor  d                                           ; $72fb: $aa
	res  2, a                                        ; $72fc: $cb $97
	ld   d, d                                        ; $72fe: $52
	ld   de, $3512                                   ; $72ff: $11 $12 $35
	ld   d, h                                        ; $7302: $54
	ld   d, h                                        ; $7303: $54
	adc  e                                           ; $7304: $8b
	rst  $38                                         ; $7305: $ff
	cp   $b8                                         ; $7306: $fe $b8
	ld   d, a                                        ; $7308: $57
	ld   a, c                                        ; $7309: $79
	xor  d                                           ; $730a: $aa
	sub  [hl]                                        ; $730b: $96
	ld   d, h                                        ; $730c: $54
	ld   a, b                                        ; $730d: $78
	cp   h                                           ; $730e: $bc
	jp   z, $ac9a                                    ; $730f: $ca $9a $ac

	cp   h                                           ; $7312: $bc
	xor  e                                           ; $7313: $ab
	sub  a                                           ; $7314: $97
	halt                                             ; $7315: $76
	ld   h, l                                        ; $7316: $65
	ld   sp, $2411                                   ; $7317: $31 $11 $24
	ld   d, h                                        ; $731a: $54
	ld   d, l                                        ; $731b: $55
	ld   l, d                                        ; $731c: $6a
	rst  $28                                         ; $731d: $ef
	cp   $a8                                         ; $731e: $fe $a8
	ld   h, [hl]                                     ; $7320: $66
	adc  c                                           ; $7321: $89
	cp   c                                           ; $7322: $b9
	add  [hl]                                        ; $7323: $86
	ld   h, l                                        ; $7324: $65
	sbc  c                                           ; $7325: $99
	cp   h                                           ; $7326: $bc
	xor  e                                           ; $7327: $ab
	adc  c                                           ; $7328: $89
	sbc  l                                           ; $7329: $9d
	res  5, c                                        ; $732a: $cb $a9
	add  a                                           ; $732c: $87
	add  a                                           ; $732d: $87
	halt                                             ; $732e: $76
	ld   b, c                                        ; $732f: $41
	ld   de, $6714                                   ; $7330: $11 $14 $67
	ld   d, [hl]                                     ; $7333: $56
	ld   d, [hl]                                     ; $7334: $56
	cp   a                                           ; $7335: $bf
	cp   $c9                                         ; $7336: $fe $c9
	ld   [hl], l                                     ; $7338: $75
	ld   a, c                                        ; $7339: $79
	cp   e                                           ; $733a: $bb
	sbc  b                                           ; $733b: $98
	ld   d, [hl]                                     ; $733c: $56
	ld   a, d                                        ; $733d: $7a
	cp   e                                           ; $733e: $bb
	cp   d                                           ; $733f: $ba
	sub  a                                           ; $7340: $97
	xor  e                                           ; $7341: $ab
	db   $ec                                         ; $7342: $ec
	ret                                              ; $7343: $c9


	ld   h, [hl]                                     ; $7344: $66
	ld   l, b                                        ; $7345: $68
	adc  b                                           ; $7346: $88
	ld   h, h                                        ; $7347: $64
	ld   hl, $5711                                   ; $7348: $21 $11 $57
	add  [hl]                                        ; $734b: $86
	ld   b, l                                        ; $734c: $45
	ld   c, c                                        ; $734d: $49
	rst  $38                                         ; $734e: $ff
	cp   $86                                         ; $734f: $fe $86
	ld   h, [hl]                                     ; $7351: $66
	cp   e                                           ; $7352: $bb
	add  $44                                         ; $7353: $c6 $44
	ld   e, b                                        ; $7355: $58
	cp   l                                           ; $7356: $bd
	jp   z, $9a89                                    ; $7357: $ca $89 $9a

	sbc  $ea                                         ; $735a: $de $ea
	add  [hl]                                        ; $735c: $86
	ld   h, a                                        ; $735d: $67
	sbc  c                                           ; $735e: $99
	ld   [hl], l                                     ; $735f: $75
	ld   hl, $1511                                   ; $7360: $21 $11 $15
	adc  c                                           ; $7363: $89
	ld   [hl], l                                     ; $7364: $75
	halt                                             ; $7365: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7366: $cf
	rst  $38                                         ; $7367: $ff
	rst  ToBoot                                         ; $7368: $c7
	ld   d, l                                        ; $7369: $55
	ld   e, d                                        ; $736a: $5a
	sbc  c                                           ; $736b: $99
	ld   b, h                                        ; $736c: $44
	ld   b, [hl]                                     ; $736d: $46
	xor  l                                           ; $736e: $ad
	ei                                               ; $736f: $fb
	or   a                                           ; $7370: $b7
	adc  c                                           ; $7371: $89
	cp   [hl]                                        ; $7372: $be
	cp   $76                                         ; $7373: $fe $76
	ld   d, [hl]                                     ; $7375: $56
	ld   a, b                                        ; $7376: $78
	add  l                                           ; $7377: $85
	ld   sp, $1311                                   ; $7378: $31 $11 $13
	cp   e                                           ; $737b: $bb
	sub  e                                           ; $737c: $93
	ld   l, c                                        ; $737d: $69
	cp   a                                           ; $737e: $bf
	rst  $38                                         ; $737f: $ff
	or   e                                           ; $7380: $b3
	inc  [hl]                                        ; $7381: $34
	ld   e, c                                        ; $7382: $59
	sub  [hl]                                        ; $7383: $96
	ld   de, $ff5b                                   ; $7384: $11 $5b $ff
	db   $fd                                         ; $7387: $fd
	sub  a                                           ; $7388: $97
	sbc  l                                           ; $7389: $9d
	cp   h                                           ; $738a: $bc
	cp   e                                           ; $738b: $bb
	add  a                                           ; $738c: $87
	sbc  c                                           ; $738d: $99
	ld   [hl], h                                     ; $738e: $74
	ld   b, d                                        ; $738f: $42
	ld   de, $1711                                   ; $7390: $11 $11 $17
	rst  JumpTable                                         ; $7393: $df
	add  $bb                                         ; $7394: $c6 $bb
	rst  $38                                         ; $7396: $ff
	rst  $38                                         ; $7397: $ff
	ld   sp, $5912                                   ; $7398: $31 $12 $59
	add  [hl]                                        ; $739b: $86
	dec  d                                           ; $739c: $15
	rst  JumpTable                                         ; $739d: $df
	rst  $38                                         ; $739e: $ff
	ld   sp, hl                                      ; $739f: $f9
	ld   h, l                                        ; $73a0: $65
	xor  e                                           ; $73a1: $ab
	adc  b                                           ; $73a2: $88
	adc  e                                           ; $73a3: $8b
	cp   l                                           ; $73a4: $bd
	db   $eb                                         ; $73a5: $eb
	ld   d, c                                        ; $73a6: $51
	ld   de, $1111                                   ; $73a7: $11 $11 $11
	ld   a, a                                        ; $73aa: $7f
	rst  $38                                         ; $73ab: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ac: $cf
	sbc  a                                           ; $73ad: $9f
	rst  $38                                         ; $73ae: $ff
	pop  af                                          ; $73af: $f1
	ld   de, $de15                                   ; $73b0: $11 $15 $de
	and  d                                           ; $73b3: $a2
	ld   a, a                                        ; $73b4: $7f
	rst  $38                                         ; $73b5: $ff
	rst  $38                                         ; $73b6: $ff
	ld   hl, $a917                                   ; $73b7: $21 $17 $a9
	cp   d                                           ; $73ba: $ba
	db   $dd                                         ; $73bb: $dd
	rst  $38                                         ; $73bc: $ff
	and  e                                           ; $73bd: $a3
	ld   de, $1111                                   ; $73be: $11 $11 $11
	rra                                              ; $73c1: $1f
	rst  $38                                         ; $73c2: $ff
	rst  $38                                         ; $73c3: $ff
	rst  ToBoot                                         ; $73c4: $c7
	rst  $38                                         ; $73c5: $ff
	pop  af                                          ; $73c6: $f1
	ld   de, $ff15                                   ; $73c7: $11 $15 $ff
	ld   sp, hl                                      ; $73ca: $f9
	ld   a, a                                        ; $73cb: $7f
	rst  $38                                         ; $73cc: $ff
	ld   sp, hl                                      ; $73cd: $f9
	ld   de, $ff15                                   ; $73ce: $11 $15 $ff
	cp   $fe                                         ; $73d1: $fe $fe
	rst  $38                                         ; $73d3: $ff
	add  c                                           ; $73d4: $81
	ld   de, $1111                                   ; $73d5: $11 $11 $11
	rra                                              ; $73d8: $1f
	rst  $38                                         ; $73d9: $ff
	ld   a, [$fff1]                                  ; $73da: $fa $f1 $ff
	pop  bc                                          ; $73dd: $c1
	ld   de, $ff1d                                   ; $73de: $11 $1d $ff
	ei                                               ; $73e1: $fb
	inc  a                                           ; $73e2: $3c
	rst  $38                                         ; $73e3: $ff
	or   d                                           ; $73e4: $b2
	ld   de, $ff19                                   ; $73e5: $11 $19 $ff
	rst  $38                                         ; $73e8: $ff
	db   $db                                         ; $73e9: $db
	sbc  l                                           ; $73ea: $9d
	sub  d                                           ; $73eb: $92
	ld   de, $1111                                   ; $73ec: $11 $11 $11
	ld   de, $ffff                                   ; $73ef: $11 $ff $ff
	ld   [$f72f], sp                                 ; $73f2: $08 $2f $f7
	ld   de, $ff1b                                   ; $73f5: $11 $1b $ff
	rst  $38                                         ; $73f8: $ff
	ld   b, c                                        ; $73f9: $41
	adc  [hl]                                        ; $73fa: $8e
	push hl                                          ; $73fb: $e5
	ld   de, $ff19                                   ; $73fc: $11 $19 $ff
	db   $fd                                         ; $73ff: $fd
	ld   [hl], a                                     ; $7400: $77
	sbc  d                                           ; $7401: $9a
	db   $eb                                         ; $7402: $eb
	ld   b, c                                        ; $7403: $41
	ld   de, $1142                                   ; $7404: $11 $42 $11
	ld   de, $fdff                                   ; $7407: $11 $ff $fd
	inc  d                                           ; $740a: $14
	rra                                              ; $740b: $1f
	ld   hl, sp+$11                                  ; $740c: $f8 $11
	dec  e                                           ; $740e: $1d
	rst  $38                                         ; $740f: $ff
	rst  $38                                         ; $7410: $ff
	ld   de, $e54e                                   ; $7411: $11 $4e $e5
	ld   de, $ff1b                                   ; $7414: $11 $1b $ff
	ld   sp, hl                                      ; $7417: $f9
	ld   d, l                                        ; $7418: $55
	adc  c                                           ; $7419: $89
	call $1251                                       ; $741a: $cd $51 $12
	ld   h, l                                        ; $741d: $65
	ld   de, $af11                                   ; $741e: $11 $11 $af
	rst  $38                                         ; $7421: $ff
	sub  c                                           ; $7422: $91
	ld   sp, $31ff                                   ; $7423: $31 $ff $31
	inc  de                                          ; $7426: $13
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	and  c                                           ; $7429: $a1
	dec  d                                           ; $742a: $15
	and  l                                           ; $742b: $a5
	ld   [de], a                                     ; $742c: $12
	ld   l, c                                        ; $742d: $69
	rst  $38                                         ; $742e: $ff
	rst  $38                                         ; $742f: $ff
	ld   d, d                                        ; $7430: $52
	ld   b, l                                        ; $7431: $45
	sbc  [hl]                                        ; $7432: $9e
	or   e                                           ; $7433: $b3
	ld   de, $3147                                   ; $7434: $11 $47 $31
	ld   de, $ff1f                                   ; $7437: $11 $1f $ff
	pop  af                                          ; $743a: $f1
	ld   de, $f11f                                   ; $743b: $11 $1f $f1
	ld   de, $ffff                                   ; $743e: $11 $ff $ff
	pop  af                                          ; $7441: $f1
	ld   de, $a49d                                   ; $7442: $11 $9d $a4
	adc  d                                           ; $7445: $8a
	cp   a                                           ; $7446: $bf
	rst  $38                                         ; $7447: $ff
	add  c                                           ; $7448: $81
	inc  d                                           ; $7449: $14
	ld   e, d                                        ; $744a: $5a
	ei                                               ; $744b: $fb
	ld   hl, $9217                                   ; $744c: $21 $17 $92
	ld   de, rAUD1LEN                                   ; $744f: $11 $11 $ff
	rst  $38                                         ; $7452: $ff
	ld   de, rAUD1ENV                                   ; $7453: $11 $12 $ff
	ld   de, $ff1f                                   ; $7456: $11 $1f $ff
	ld   sp, hl                                      ; $7459: $f9
	ld   de, $fb1b                                   ; $745a: $11 $1b $fb
	adc  e                                           ; $745d: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $745e: $cf
	rst  $38                                         ; $745f: $ff
	pop  hl                                          ; $7460: $e1
	ld   de, $ff5b                                   ; $7461: $11 $5b $ff
	ld   [hl], c                                     ; $7464: $71
	dec  d                                           ; $7465: $15
	and  [hl]                                        ; $7466: $a6
	ld   de, rAUD1LEN                                   ; $7467: $11 $11 $ff
	rst  $38                                         ; $746a: $ff
	ld   de, rAUD1LEN                                   ; $746b: $11 $11 $ff
	and  c                                           ; $746e: $a1
	dec  de                                          ; $746f: $1b
	rst  $38                                         ; $7470: $ff
	rst  $38                                         ; $7471: $ff
	ld   de, $ff17                                   ; $7472: $11 $17 $ff
	rst  ToBoot                                         ; $7475: $c7
	ld   b, [hl]                                     ; $7476: $46
	rst  $38                                         ; $7477: $ff
	push af                                          ; $7478: $f5
	ld   de, $ff1c                                   ; $7479: $11 $1c $ff
	add  c                                           ; $747c: $81
	inc  de                                          ; $747d: $13
	jp   z, $1111                                    ; $747e: $ca $11 $11

	adc  a                                           ; $7481: $8f
	rst  $38                                         ; $7482: $ff
	ld   de, rAUD1LEN                                   ; $7483: $11 $11 $ff
	and  c                                           ; $7486: $a1
	rla                                              ; $7487: $17
	rst  $38                                         ; $7488: $ff
	rst  $38                                         ; $7489: $ff
	ld   de, $ff18                                   ; $748a: $11 $18 $ff
	or   a                                           ; $748d: $b7
	xor  e                                           ; $748e: $ab
	rst  $38                                         ; $748f: $ff
	ldh  a, [c]                                      ; $7490: $f2
	ld   de, $ff4f                                   ; $7491: $11 $4f $ff
	and  c                                           ; $7494: $a1
	ld   de, $31aa                                   ; $7495: $11 $aa $31
	ld   de, $ff1f                                   ; $7498: $11 $1f $ff
	pop  de                                          ; $749b: $d1
	ld   de, $f26f                                   ; $749c: $11 $6f $f2
	ld   de, $ffff                                   ; $749f: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $74a2: $11 $11 $ff
	ei                                               ; $74a5: $fb
	ld   sp, $fcbf                                   ; $74a6: $31 $bf $fc
	ld   de, $ff1a                                   ; $74a9: $11 $1a $ff
	pop  hl                                          ; $74ac: $e1
	ld   de, $918c                                   ; $74ad: $11 $8c $91
	ld   de, $ff1f                                   ; $74b0: $11 $1f $ff
	pop  af                                          ; $74b3: $f1
	ld   de, $f45f                                   ; $74b4: $11 $5f $f4
	ld   de, $ffff                                   ; $74b7: $11 $ff $ff
	ld   sp, rAUD1LEN                                   ; $74ba: $31 $11 $ff
	rst  $30                                         ; $74bd: $f7
	ld   de, $ff8f                                   ; $74be: $11 $8f $ff
	ld   de, $ff1b                                   ; $74c1: $11 $1b $ff
	pop  de                                          ; $74c4: $d1
	ld   de, $a19e                                   ; $74c5: $11 $9e $a1
	ld   de, $ff1f                                   ; $74c8: $11 $1f $ff
	pop  af                                          ; $74cb: $f1
	ld   de, $f73f                                   ; $74cc: $11 $3f $f7
	ld   de, $ff9f                                   ; $74cf: $11 $9f $ff
	and  c                                           ; $74d2: $a1
	ld   de, $fbff                                   ; $74d3: $11 $ff $fb
	ld   de, $ff6f                                   ; $74d6: $11 $6f $ff
	ld   hl, $ff17                                   ; $74d9: $21 $17 $ff
	pop  af                                          ; $74dc: $f1
	ld   de, $c35d                                   ; $74dd: $11 $5d $c3
	ld   de, rAUD1HIGH                                   ; $74e0: $11 $14 $ff
	db   $f4                                         ; $74e3: $f4
	ld   de, $ff1f                                   ; $74e4: $11 $1f $ff
	ld   de, $ff1f                                   ; $74e7: $11 $1f $ff
	pop  af                                          ; $74ea: $f1
	ld   de, $fe4f                                   ; $74eb: $11 $4f $fe
	ld   d, c                                        ; $74ee: $51
	ccf                                              ; $74ef: $3f
	rst  $38                                         ; $74f0: $ff
	and  c                                           ; $74f1: $a1
	ld   de, $f9cf                                   ; $74f2: $11 $cf $f9
	ld   de, $c61a                                   ; $74f5: $11 $1a $c6
	ld   de, rAUD1LEN                                   ; $74f8: $11 $11 $ff
	rst  $38                                         ; $74fb: $ff
	ld   de, $ff15                                   ; $74fc: $11 $15 $ff
	ld   b, c                                        ; $74ff: $41
	ld   a, [de]                                     ; $7500: $1a
	rst  $38                                         ; $7501: $ff
	ld   sp, hl                                      ; $7502: $f9
	ld   de, $ff1a                                   ; $7503: $11 $1a $ff
	or   l                                           ; $7506: $b5
	ld   l, a                                        ; $7507: $6f
	rst  $38                                         ; $7508: $ff
	pop  de                                          ; $7509: $d1
	ld   de, $fd5f                                   ; $750a: $11 $5f $fd
	ld   hl, $9514                                   ; $750d: $21 $14 $95
	ld   de, rAUD1LEN                                   ; $7510: $11 $11 $ff
	rst  $38                                         ; $7513: $ff
	ld   de, $ff16                                   ; $7514: $11 $16 $ff
	ld   sp, $ff1e                                   ; $7517: $31 $1e $ff
	rst  $30                                         ; $751a: $f7
	ld   de, $ff18                                   ; $751b: $11 $18 $ff
	push bc                                          ; $751e: $c5
	ld   l, a                                        ; $751f: $6f
	rst  $38                                         ; $7520: $ff
	pop  bc                                          ; $7521: $c1
	ld   de, $f9af                                   ; $7522: $11 $af $f9
	ld   de, $9317                                   ; $7525: $11 $17 $93
	ld   de, $ff1d                                   ; $7528: $11 $1d $ff
	db   $fd                                         ; $752b: $fd
	ld   de, $f91d                                   ; $752c: $11 $1d $f9
	ld   de, $ff3f                                   ; $752f: $11 $3f $ff
	pop  af                                          ; $7532: $f1
	ld   de, $ca19                                   ; $7533: $11 $19 $ca
	ld   [hl+], a                                    ; $7536: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7537: $cf
	rst  $38                                         ; $7538: $ff
	sub  c                                           ; $7539: $91
	ld   de, $e58f                                   ; $753a: $11 $8f $e5
	ld   de, $1156                                   ; $753d: $11 $56 $11
	ld   de, $ffff                                   ; $7540: $11 $ff $ff
	ld   b, c                                        ; $7543: $41
	rla                                              ; $7544: $17
	db   $fd                                         ; $7545: $fd
	ld   bc, $ff17                                   ; $7546: $01 $17 $ff
	rst  $38                                         ; $7549: $ff
	ld   de, $a914                                   ; $754a: $11 $14 $a9
	ld   hl, $ff3f                                   ; $754d: $21 $3f $ff
	ld   a, [$1911]                                  ; $7550: $fa $11 $19
	rst  ToBoot                                         ; $7553: $c7
	ld   de, $a317                                   ; $7554: $11 $17 $a3
	ld   de, $ff1f                                   ; $7557: $11 $1f $ff
	db   $f4                                         ; $755a: $f4
	ld   de, $c1ff                                   ; $755b: $11 $ff $c1
	ld   de, $ff5f                                   ; $755e: $11 $5f $ff
	di                                               ; $7561: $f3
	ld   de, $3188                                   ; $7562: $11 $88 $31
	ld   de, $ffff                                   ; $7565: $11 $ff $ff
	db   $d3                                         ; $7568: $d3
	ld   [de], a                                     ; $7569: $12
	ld   d, [hl]                                     ; $756a: $56
	ld   de, $6314                                   ; $756b: $11 $14 $63
	ld   de, $ff1c                                   ; $756e: $11 $1c $ff
	db   $f4                                         ; $7571: $f4
	ld   de, $f1df                                   ; $7572: $11 $df $f1
	ld   de, $ff1f                                   ; $7575: $11 $1f $ff
	push af                                          ; $7578: $f5
	inc  d                                           ; $7579: $14
	db   $ed                                         ; $757a: $ed
	ld   b, c                                        ; $757b: $41
	ld   de, $ff8f                                   ; $757c: $11 $8f $ff
	db   $fd                                         ; $757f: $fd
	sbc  b                                           ; $7580: $98
	ld   [hl], l                                     ; $7581: $75
	ld   de, $5411                                   ; $7582: $11 $11 $54
	ld   de, rAUD1LEN                                   ; $7585: $11 $11 $ff
	db   $fc                                         ; $7588: $fc
	ld   de, $f95f                                   ; $7589: $11 $5f $f9
	ld   de, $ff18                                   ; $758c: $11 $18 $ff
	ld   hl, sp+$46                                  ; $758f: $f8 $46
	rst  $38                                         ; $7591: $ff
	or   c                                           ; $7592: $b1
	ld   de, $ff1e                                   ; $7593: $11 $1e $ff
	rst  $38                                         ; $7596: $ff
	rst  $38                                         ; $7597: $ff
	ld   a, [$1131]                                  ; $7598: $fa $31 $11
	ld   [de], a                                     ; $759b: $12
	ld   de, $bf11                                   ; $759c: $11 $11 $bf
	rst  $38                                         ; $759f: $ff
	ld   h, c                                        ; $75a0: $61
	ld   e, $ff                                      ; $75a1: $1e $ff
	ld   de, rAUD1LEN                                   ; $75a3: $11 $11 $ff
	cp   $58                                         ; $75a6: $fe $58
	rst  JumpTable                                         ; $75a8: $df
	ld   hl, sp+$11                                  ; $75a9: $f8 $11
	inc  de                                          ; $75ab: $13
	rst  $28                                         ; $75ac: $ef
	db   $fd                                         ; $75ad: $fd
	rst  $28                                         ; $75ae: $ef
	rst  $38                                         ; $75af: $ff
	or   h                                           ; $75b0: $b4
	ld   de, $1111                                   ; $75b1: $11 $11 $11
	ld   de, $ff4f                                   ; $75b4: $11 $4f $ff
	or   $6f                                         ; $75b7: $f6 $6f
	rst  $38                                         ; $75b9: $ff

Call_0f5_75ba:
	ld   [hl], c                                     ; $75ba: $71
	ld   de, $fc3f                                   ; $75bb: $11 $3f $fc
	ld   [hl], a                                     ; $75be: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75bf: $cf
	rst  $38                                         ; $75c0: $ff
	ld   h, c                                        ; $75c1: $61
	ld   [de], a                                     ; $75c2: $12
	xor  [hl]                                        ; $75c3: $ae
	ld   sp, hl                                      ; $75c4: $f9
	ld   a, b                                        ; $75c5: $78
	rst  JumpTable                                         ; $75c6: $df
	ei                                               ; $75c7: $fb
	ld   b, c                                        ; $75c8: $41
	inc  de                                          ; $75c9: $13
	ld   de, $1711                                   ; $75ca: $11 $11 $17
	rst  $28                                         ; $75cd: $ef
	rst  ToBoot                                         ; $75ce: $c7
	ld   l, h                                        ; $75cf: $6c
	rst  $38                                         ; $75d0: $ff
	ei                                               ; $75d1: $fb
	ld   d, d                                        ; $75d2: $52
	ld   l, e                                        ; $75d3: $6b
	db   $db                                         ; $75d4: $db
	add  l                                           ; $75d5: $85
	dec  [hl]                                        ; $75d6: $35
	adc  d                                           ; $75d7: $8a
	halt                                             ; $75d8: $76
	ld   d, l                                        ; $75d9: $55
	adc  l                                           ; $75da: $8d
	rst  $38                                         ; $75db: $ff
	jp   z, $ab9a                                    ; $75dc: $ca $9a $ab

	add  l                                           ; $75df: $85
	dec  [hl]                                        ; $75e0: $35
	ld   h, a                                        ; $75e1: $67
	ld   d, e                                        ; $75e2: $53
	ld   [de], a                                     ; $75e3: $12
	ld   l, b                                        ; $75e4: $68
	add  [hl]                                        ; $75e5: $86
	ld   d, h                                        ; $75e6: $54
	ld   b, [hl]                                     ; $75e7: $46
	adc  b                                           ; $75e8: $88
	ld   [hl], a                                     ; $75e9: $77
	ld   a, c                                        ; $75ea: $79
	xor  h                                           ; $75eb: $ac
	call c, $a9b9                                    ; $75ec: $dc $b9 $a9
	sub  a                                           ; $75ef: $97
	ld   [hl], a                                     ; $75f0: $77
	adc  d                                           ; $75f1: $8a
	cp   e                                           ; $75f2: $bb
	cp   h                                           ; $75f3: $bc
	cp   h                                           ; $75f4: $bc
	cp   d                                           ; $75f5: $ba
	sbc  c                                           ; $75f6: $99
	add  a                                           ; $75f7: $87
	ld   [hl], a                                     ; $75f8: $77
	halt                                             ; $75f9: $76
	ld   h, [hl]                                     ; $75fa: $66
	ld   h, [hl]                                     ; $75fb: $66
	ld   h, [hl]                                     ; $75fc: $66
	ld   d, l                                        ; $75fd: $55
	ld   d, l                                        ; $75fe: $55
	ld   b, e                                        ; $75ff: $43
	inc  sp                                          ; $7600: $33
	ld   b, l                                        ; $7601: $45
	ld   [hl], a                                     ; $7602: $77
	sbc  d                                           ; $7603: $9a
	xor  e                                           ; $7604: $ab
	cp   h                                           ; $7605: $bc
	cp   d                                           ; $7606: $ba
	sbc  c                                           ; $7607: $99
	sbc  d                                           ; $7608: $9a
	cp   e                                           ; $7609: $bb
	cp   e                                           ; $760a: $bb
	call z, $b9cb                                    ; $760b: $cc $cb $b9
	sbc  b                                           ; $760e: $98
	add  a                                           ; $760f: $87
	halt                                             ; $7610: $76
	ld   h, [hl]                                     ; $7611: $66
	ld   [hl], a                                     ; $7612: $77
	adc  b                                           ; $7613: $88
	ld   h, [hl]                                     ; $7614: $66
	ld   [hl], a                                     ; $7615: $77
	ld   h, l                                        ; $7616: $65
	ld   b, e                                        ; $7617: $43
	inc  hl                                          ; $7618: $23
	ld   b, l                                        ; $7619: $45
	ld   d, [hl]                                     ; $761a: $56
	ld   [hl], a                                     ; $761b: $77
	adc  c                                           ; $761c: $89
	xor  c                                           ; $761d: $a9
	sbc  c                                           ; $761e: $99
	sbc  c                                           ; $761f: $99
	xor  d                                           ; $7620: $aa
	xor  d                                           ; $7621: $aa
	cp   e                                           ; $7622: $bb
	call z, $a9bb                                    ; $7623: $cc $bb $a9
	sbc  c                                           ; $7626: $99
	sbc  b                                           ; $7627: $98
	ld   [hl], a                                     ; $7628: $77
	ld   [hl], a                                     ; $7629: $77
	ld   [hl], a                                     ; $762a: $77
	ld   [hl], a                                     ; $762b: $77
	ld   a, b                                        ; $762c: $78
	add  a                                           ; $762d: $87
	halt                                             ; $762e: $76
	ld   h, [hl]                                     ; $762f: $66
	ld   h, [hl]                                     ; $7630: $66
	ld   h, l                                        ; $7631: $65
	ld   d, l                                        ; $7632: $55
	ld   h, [hl]                                     ; $7633: $66
	ld   h, [hl]                                     ; $7634: $66
	ld   h, [hl]                                     ; $7635: $66
	ld   [hl], a                                     ; $7636: $77
	adc  b                                           ; $7637: $88
	adc  b                                           ; $7638: $88
	adc  c                                           ; $7639: $89
	sbc  e                                           ; $763a: $9b
	cp   d                                           ; $763b: $ba
	sbc  d                                           ; $763c: $9a
	xor  d                                           ; $763d: $aa
	xor  c                                           ; $763e: $a9
	adc  b                                           ; $763f: $88
	adc  b                                           ; $7640: $88
	sbc  c                                           ; $7641: $99
	adc  b                                           ; $7642: $88
	adc  c                                           ; $7643: $89
	adc  c                                           ; $7644: $89
	adc  b                                           ; $7645: $88
	ld   [hl], a                                     ; $7646: $77
	adc  b                                           ; $7647: $88
	sbc  b                                           ; $7648: $98
	ld   [hl], a                                     ; $7649: $77
	ld   [hl], a                                     ; $764a: $77
	adc  b                                           ; $764b: $88
	ld   [hl], a                                     ; $764c: $77
	ld   [hl], a                                     ; $764d: $77
	ld   [hl], a                                     ; $764e: $77
	ld   [hl], a                                     ; $764f: $77
	ld   h, [hl]                                     ; $7650: $66
	ld   h, [hl]                                     ; $7651: $66
	ld   [hl], a                                     ; $7652: $77
	ld   [hl], a                                     ; $7653: $77
	ld   a, b                                        ; $7654: $78
	adc  b                                           ; $7655: $88
	adc  b                                           ; $7656: $88
	adc  b                                           ; $7657: $88
	sbc  c                                           ; $7658: $99
	sbc  b                                           ; $7659: $98
	sbc  b                                           ; $765a: $98
	sbc  c                                           ; $765b: $99
	sbc  b                                           ; $765c: $98
	sbc  c                                           ; $765d: $99
	adc  c                                           ; $765e: $89
	sbc  c                                           ; $765f: $99
	sbc  b                                           ; $7660: $98
	adc  b                                           ; $7661: $88
	adc  c                                           ; $7662: $89
	adc  b                                           ; $7663: $88
	adc  b                                           ; $7664: $88
	adc  b                                           ; $7665: $88
	adc  c                                           ; $7666: $89
	add  a                                           ; $7667: $87
	ld   a, b                                        ; $7668: $78
	adc  b                                           ; $7669: $88
	add  a                                           ; $766a: $87
	ld   a, b                                        ; $766b: $78
	sbc  c                                           ; $766c: $99
	add  a                                           ; $766d: $87
	ld   [hl], a                                     ; $766e: $77
	ld   [hl], a                                     ; $766f: $77
	ld   [hl], a                                     ; $7670: $77
	halt                                             ; $7671: $76
	ld   h, a                                        ; $7672: $67
	ld   [hl], a                                     ; $7673: $77
	ld   [hl], a                                     ; $7674: $77
	ld   [hl], a                                     ; $7675: $77
	adc  b                                           ; $7676: $88
	adc  c                                           ; $7677: $89
	adc  b                                           ; $7678: $88
	adc  c                                           ; $7679: $89
	adc  b                                           ; $767a: $88
	adc  b                                           ; $767b: $88
	adc  c                                           ; $767c: $89
	xor  d                                           ; $767d: $aa
	sbc  c                                           ; $767e: $99
	sbc  b                                           ; $767f: $98
	adc  b                                           ; $7680: $88
	adc  b                                           ; $7681: $88
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  b                                           ; $7684: $88
	sbc  b                                           ; $7685: $98
	adc  b                                           ; $7686: $88
	adc  b                                           ; $7687: $88
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
	sbc  c                                           ; $7694: $99
	adc  b                                           ; $7695: $88
	sbc  b                                           ; $7696: $98
	adc  b                                           ; $7697: $88
	adc  b                                           ; $7698: $88
	adc  b                                           ; $7699: $88
	ld   [hl], a                                     ; $769a: $77
	ld   [hl], a                                     ; $769b: $77
	adc  b                                           ; $769c: $88
	add  a                                           ; $769d: $87
	ld   [hl], a                                     ; $769e: $77
	ld   a, b                                        ; $769f: $78
	adc  b                                           ; $76a0: $88
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	sbc  c                                           ; $76a5: $99
	sbc  c                                           ; $76a6: $99

Call_0f5_76a7:
	adc  b                                           ; $76a7: $88
	sbc  c                                           ; $76a8: $99
	sbc  c                                           ; $76a9: $99
	adc  c                                           ; $76aa: $89
	sbc  c                                           ; $76ab: $99
	sbc  c                                           ; $76ac: $99
	sbc  b                                           ; $76ad: $98
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	ld   a, b                                        ; $76b2: $78
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	ld   [hl], a                                     ; $76b5: $77
	ld   [hl], a                                     ; $76b6: $77
	ld   a, b                                        ; $76b7: $78
	adc  b                                           ; $76b8: $88

Call_0f5_76b9:
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	sbc  c                                           ; $76bb: $99
	sbc  c                                           ; $76bc: $99
	sbc  c                                           ; $76bd: $99
	sbc  c                                           ; $76be: $99
	sbc  c                                           ; $76bf: $99
	adc  c                                           ; $76c0: $89
	adc  b                                           ; $76c1: $88
	adc  c                                           ; $76c2: $89
	sbc  c                                           ; $76c3: $99
	sbc  b                                           ; $76c4: $98
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88

Call_0f5_76c8:
	ld   [hl], a                                     ; $76c8: $77
	ld   a, b                                        ; $76c9: $78
	adc  b                                           ; $76ca: $88
	sbc  b                                           ; $76cb: $98
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	sbc  c                                           ; $76d1: $99
	sbc  c                                           ; $76d2: $99
	sbc  c                                           ; $76d3: $99
	sbc  c                                           ; $76d4: $99
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
	ld   [hl], a                                     ; $76df: $77
	ld   [hl], a                                     ; $76e0: $77
	ld   a, b                                        ; $76e1: $78
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	sbc  c                                           ; $76ea: $99
	sbc  c                                           ; $76eb: $99
	sbc  c                                           ; $76ec: $99
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
	ld   [hl], a                                     ; $76f7: $77
	ld   a, b                                        ; $76f8: $78
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

Call_0f5_77c9:
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
	adc  c                                           ; $7817: $89
	sub  a                                           ; $7818: $97
	adc  b                                           ; $7819: $88
	adc  b                                           ; $781a: $88
	add  a                                           ; $781b: $87
	adc  b                                           ; $781c: $88
	ld   a, b                                        ; $781d: $78
	sbc  c                                           ; $781e: $99
	sbc  c                                           ; $781f: $99
	sub  a                                           ; $7820: $97
	adc  b                                           ; $7821: $88
	sbc  d                                           ; $7822: $9a
	add  a                                           ; $7823: $87
	sbc  b                                           ; $7824: $98
	ld   a, b                                        ; $7825: $78
	ld   a, b                                        ; $7826: $78
	adc  c                                           ; $7827: $89
	sub  [hl]                                        ; $7828: $96
	ld   a, b                                        ; $7829: $78
	ld   a, b                                        ; $782a: $78
	sub  a                                           ; $782b: $97
	ld   [hl], a                                     ; $782c: $77
	add  a                                           ; $782d: $87
	ld   [hl], a                                     ; $782e: $77
	ld   [hl], a                                     ; $782f: $77
	adc  b                                           ; $7830: $88
	adc  b                                           ; $7831: $88
	ld   a, b                                        ; $7832: $78
	adc  c                                           ; $7833: $89
	sbc  c                                           ; $7834: $99
	sbc  c                                           ; $7835: $99
	sbc  c                                           ; $7836: $99
	sbc  d                                           ; $7837: $9a
	sbc  c                                           ; $7838: $99
	sbc  b                                           ; $7839: $98
	sbc  c                                           ; $783a: $99
	xor  c                                           ; $783b: $a9
	adc  b                                           ; $783c: $88
	ld   a, b                                        ; $783d: $78
	sbc  b                                           ; $783e: $98
	ld   [hl], a                                     ; $783f: $77
	ld   h, a                                        ; $7840: $67
	ld   h, [hl]                                     ; $7841: $66
	ld   h, h                                        ; $7842: $64
	ld   b, h                                        ; $7843: $44
	inc  sp                                          ; $7844: $33
	ld   d, a                                        ; $7845: $57
	halt                                             ; $7846: $76
	ld   d, l                                        ; $7847: $55
	ld   l, c                                        ; $7848: $69
	cp   h                                           ; $7849: $bc
	and  a                                           ; $784a: $a7
	adc  d                                           ; $784b: $8a
	cp   l                                           ; $784c: $bd
	cp   c                                           ; $784d: $b9
	ld   a, b                                        ; $784e: $78
	xor  h                                           ; $784f: $ac
	cp   d                                           ; $7850: $ba
	sub  a                                           ; $7851: $97
	sbc  e                                           ; $7852: $9b
	cp   d                                           ; $7853: $ba
	sbc  b                                           ; $7854: $98
	sbc  d                                           ; $7855: $9a
	cp   d                                           ; $7856: $ba
	adc  b                                           ; $7857: $88
	add  a                                           ; $7858: $87
	ld   d, h                                        ; $7859: $54
	ld   sp, $1111                                   ; $785a: $31 $11 $11
	ld   e, h                                        ; $785d: $5c
	ret                                              ; $785e: $c9


	ld   l, b                                        ; $785f: $68
	cp   a                                           ; $7860: $bf
	rst  $38                                         ; $7861: $ff
	sub  e                                           ; $7862: $93
	ld   b, [hl]                                     ; $7863: $46
	xor  l                                           ; $7864: $ad
	add  $37                                         ; $7865: $c6 $37
	rst  JumpTable                                         ; $7867: $df
	db   $ed                                         ; $7868: $ed
	add  [hl]                                        ; $7869: $86
	sbc  l                                           ; $786a: $9d
	res  0, [hl]                                     ; $786b: $cb $86
	ld   l, b                                        ; $786d: $68
	db   $db                                         ; $786e: $db
	add  l                                           ; $786f: $85
	ld   d, h                                        ; $7870: $54
	ld   b, h                                        ; $7871: $44
	ld   de, $1911                                   ; $7872: $11 $11 $19
	rst  $38                                         ; $7875: $ff
	db   $fc                                         ; $7876: $fc
	xor  a                                           ; $7877: $af
	rst  $38                                         ; $7878: $ff
	db   $e4                                         ; $7879: $e4
	ld   de, $a817                                   ; $787a: $11 $17 $a8
	ld   l, e                                        ; $787d: $6b
	rst  $28                                         ; $787e: $ef
	rst  $38                                         ; $787f: $ff
	add  $57                                         ; $7880: $c6 $57
	ld   [hl], a                                     ; $7882: $77
	add  a                                           ; $7883: $87
	ld   a, c                                        ; $7884: $79
	xor  $ba                                         ; $7885: $ee $ba
	add  [hl]                                        ; $7887: $86
	ld   b, l                                        ; $7888: $45
	ld   hl, $1111                                   ; $7889: $21 $11 $11
	cp   a                                           ; $788c: $bf
	rst  $38                                         ; $788d: $ff
	rst  $28                                         ; $788e: $ef
	rst  $38                                         ; $788f: $ff
	db   $fd                                         ; $7890: $fd
	ld   de, $5a11                                   ; $7891: $11 $11 $5a
	xor  c                                           ; $7894: $a9
	rst  $38                                         ; $7895: $ff
	rst  $38                                         ; $7896: $ff
	ld   [$3321], a                                  ; $7897: $ea $21 $33
	inc  de                                          ; $789a: $13
	sbc  h                                           ; $789b: $9c
	rst  $38                                         ; $789c: $ff
	cp   $97                                         ; $789d: $fe $97
	ld   d, e                                        ; $789f: $53
	ld   hl, $1111                                   ; $78a0: $21 $11 $11
	ld   de, $ffff                                   ; $78a3: $11 $ff $ff
	cp   $cf                                         ; $78a6: $fe $cf
	push af                                          ; $78a8: $f5
	ld   de, $df11                                   ; $78a9: $11 $11 $df
	rst  $38                                         ; $78ac: $ff
	rst  $38                                         ; $78ad: $ff
	db   $fd                                         ; $78ae: $fd
	ld   h, c                                        ; $78af: $61
	ld   de, $2911                                   ; $78b0: $11 $11 $29
	rst  $38                                         ; $78b3: $ff
	rst  $38                                         ; $78b4: $ff
	ld   a, [$2165]                                  ; $78b5: $fa $65 $21
	ld   de, $1111                                   ; $78b8: $11 $11 $11
	ld   de, $ff19                                   ; $78bb: $11 $19 $ff
	rst  $30                                         ; $78be: $f7
	ld   e, b                                        ; $78bf: $58
	cp   [hl]                                        ; $78c0: $be
	add  c                                           ; $78c1: $81
	ld   de, $ff9f                                   ; $78c2: $11 $9f $ff
	db   $fd                                         ; $78c5: $fd
	rst  $38                                         ; $78c6: $ff
	or   c                                           ; $78c7: $b1
	ld   de, $7a13                                   ; $78c8: $11 $13 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78cb: $cf
	rst  $38                                         ; $78cc: $ff
	db   $fc                                         ; $78cd: $fc
	ld   h, d                                        ; $78ce: $62
	inc  de                                          ; $78cf: $13
	ld   hl, $5613                                   ; $78d0: $21 $13 $56
	ld   h, h                                        ; $78d3: $64
	ld   de, rAUD1LEN                                   ; $78d4: $11 $11 $ff
	rst  $30                                         ; $78d7: $f7
	rla                                              ; $78d8: $17
	xor  a                                           ; $78d9: $af
	ld   a, [$5f11]                                  ; $78da: $fa $11 $5f
	rst  $38                                         ; $78dd: $ff
	push bc                                          ; $78de: $c5
	adc  [hl]                                        ; $78df: $8e
	ld   hl, sp+$11                                  ; $78e0: $f8 $11
	ld   d, $ac                                      ; $78e2: $16 $ac
	sbc  d                                           ; $78e4: $9a
	rst  $38                                         ; $78e5: $ff
	db   $fc                                         ; $78e6: $fc
	ld   h, d                                        ; $78e7: $62
	dec  h                                           ; $78e8: $25
	ld   [hl], l                                     ; $78e9: $75
	ld   hl, $8347                                   ; $78ea: $21 $47 $83
	ld   de, $1f11                                   ; $78ed: $11 $11 $1f
	rst  $38                                         ; $78f0: $ff
	dec  d                                           ; $78f1: $15
	rst  JumpTable                                         ; $78f2: $df
	rst  $38                                         ; $78f3: $ff
	ld   de, $ff1a                                   ; $78f4: $11 $1a $ff
	jp   hl                                          ; $78f7: $e9


	ld   e, h                                        ; $78f8: $5c
	rst  $38                                         ; $78f9: $ff
	ld   b, c                                        ; $78fa: $41
	inc  b                                           ; $78fb: $04
	ld   l, c                                        ; $78fc: $69
	add  h                                           ; $78fd: $84
	xor  a                                           ; $78fe: $af
	rst  $38                                         ; $78ff: $ff
	and  [hl]                                        ; $7900: $a6
	ld   b, l                                        ; $7901: $45
	adc  b                                           ; $7902: $88
	ld   sp, $6525                                   ; $7903: $31 $25 $65
	ld   de, $1311                                   ; $7906: $11 $11 $13
	rst  $38                                         ; $7909: $ff
	jp   nz, $cfaf                                   ; $790a: $c2 $af $cf

	pop  af                                          ; $790d: $f1
	ld   de, $dfdf                                   ; $790e: $11 $df $df
	and  h                                           ; $7911: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7912: $cf
	push af                                          ; $7913: $f5
	inc  bc                                          ; $7914: $03
	inc  sp                                          ; $7915: $33
	add  a                                           ; $7916: $87
	dec  h                                           ; $7917: $25
	rst  $38                                         ; $7918: $ff
	rst  $38                                         ; $7919: $ff
	ret                                              ; $791a: $c9


	ld   a, b                                        ; $791b: $78
	sub  e                                           ; $791c: $93
	ld   de, $4324                                   ; $791d: $11 $24 $43
	ld   de, $2f11                                   ; $7920: $11 $11 $2f
	rst  $38                                         ; $7923: $ff
	dec  h                                           ; $7924: $25
	db   $fc                                         ; $7925: $fc

jr_0f5_7926:
	rst  $28                                         ; $7926: $ef
	and  c                                           ; $7927: $a1
	jr   jr_0f5_7926                                 ; $7928: $18 $fc

	cp   l                                           ; $792a: $bd
	ld   h, h                                        ; $792b: $64
	rst  $28                                         ; $792c: $ef
	call nc, $3446                                   ; $792d: $d4 $46 $34
	xor  b                                           ; $7930: $a8
	ld   b, a                                        ; $7931: $47
	rst  $38                                         ; $7932: $ff
	db   $dd                                         ; $7933: $dd
	rst  ToBoot                                         ; $7934: $c7
	ld   e, d                                        ; $7935: $5a
	and  h                                           ; $7936: $a4
	ld   h, $63                                      ; $7937: $26 $63
	inc  [hl]                                        ; $7939: $34
	ld   de, $9f12                                   ; $793a: $11 $12 $9f
	rst  ToBoot                                         ; $793d: $c7
	ld   c, b                                        ; $793e: $48
	cp   e                                           ; $793f: $bb
	sbc  $83                                         ; $7940: $de $83
	ld   l, h                                        ; $7942: $6c
	ret                                              ; $7943: $c9


	sbc  d                                           ; $7944: $9a
	halt                                             ; $7945: $76
	xor  h                                           ; $7946: $ac
	sbc  c                                           ; $7947: $99
	sbc  c                                           ; $7948: $99
	adc  c                                           ; $7949: $89
	sbc  d                                           ; $794a: $9a
	sbc  c                                           ; $794b: $99
	ld   [hl], a                                     ; $794c: $77
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	sbc  c                                           ; $794f: $99
	adc  b                                           ; $7950: $88
	sbc  c                                           ; $7951: $99
	sbc  c                                           ; $7952: $99
	sbc  b                                           ; $7953: $98
	adc  b                                           ; $7954: $88
	add  a                                           ; $7955: $87
	ld   h, [hl]                                     ; $7956: $66
	ld   h, l                                        ; $7957: $65
	ld   d, l                                        ; $7958: $55
	ld   d, e                                        ; $7959: $53
	inc  sp                                          ; $795a: $33
	ld   b, h                                        ; $795b: $44
	ld   e, b                                        ; $795c: $58
	sbc  c                                           ; $795d: $99
	adc  d                                           ; $795e: $8a
	xor  e                                           ; $795f: $ab
	xor  e                                           ; $7960: $ab
	cp   d                                           ; $7961: $ba
	sbc  e                                           ; $7962: $9b
	cp   e                                           ; $7963: $bb
	xor  d                                           ; $7964: $aa
	xor  c                                           ; $7965: $a9
	sbc  c                                           ; $7966: $99
	sbc  c                                           ; $7967: $99
	sbc  c                                           ; $7968: $99
	adc  b                                           ; $7969: $88
	adc  c                                           ; $796a: $89
	sbc  b                                           ; $796b: $98
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	sbc  b                                           ; $796e: $98
	ld   [hl], a                                     ; $796f: $77
	halt                                             ; $7970: $76
	ld   d, l                                        ; $7971: $55
	ld   b, c                                        ; $7972: $41
	dec  b                                           ; $7973: $05
	add  l                                           ; $7974: $85
	inc  hl                                          ; $7975: $23
	ld   d, h                                        ; $7976: $54
	ld   a, [hl]                                     ; $7977: $7e

Jump_0f5_7978:
	ei                                               ; $7978: $fb
	ld   l, c                                        ; $7979: $69
	set  1, [hl]                                     ; $797a: $cb $ce
	and  h                                           ; $797c: $a4
	ld   l, h                                        ; $797d: $6c
	reti                                             ; $797e: $d9


	sbc  d                                           ; $797f: $9a
	ld   [hl], l                                     ; $7980: $75
	sbc  l                                           ; $7981: $9d
	and  a                                           ; $7982: $a7
	sbc  c                                           ; $7983: $99
	ld   [hl], a                                     ; $7984: $77
	cp   l                                           ; $7985: $bd
	add  a                                           ; $7986: $87
	sbc  c                                           ; $7987: $99
	ld   [hl], a                                     ; $7988: $77
	sub  a                                           ; $7989: $97
	inc  sp                                          ; $798a: $33
	ld   b, c                                        ; $798b: $41
	ld   de, rAUD1LEN                                   ; $798c: $11 $11 $ff
	di                                               ; $798f: $f3
	ld   l, a                                        ; $7990: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7991: $cf
	rst  $38                                         ; $7992: $ff
	ld   de, $a93e                                   ; $7993: $11 $3e $a9
	db   $e3                                         ; $7996: $e3
	dec  de                                          ; $7997: $1b
	rst  $38                                         ; $7998: $ff
	ld   h, l                                        ; $7999: $65
	ld   d, c                                        ; $799a: $51
	ccf                                              ; $799b: $3f
	call nc, $ff3d                                   ; $799c: $d4 $3d $ff
	db   $fd                                         ; $799f: $fd
	ld   h, d                                        ; $79a0: $62
	adc  d                                           ; $79a1: $8a
	ld   sp, $1112                                   ; $79a2: $31 $12 $11
	ld   de, rAUD1LEN                                   ; $79a5: $11 $11 $ff
	pop  af                                          ; $79a8: $f1
	dec  e                                           ; $79a9: $1d
	rst  $28                                         ; $79aa: $ef
	push af                                          ; $79ab: $f5
	ld   de, $fcbf                                   ; $79ac: $11 $bf $fc
	push bc                                          ; $79af: $c5
	ld   e, a                                        ; $79b0: $5f
	ld   hl, sp+$11                                  ; $79b1: $f8 $11
	dec  d                                           ; $79b3: $15
	xor  l                                           ; $79b4: $ad
	add  a                                           ; $79b5: $87
	rst  $38                                         ; $79b6: $ff
	rst  $38                                         ; $79b7: $ff
	ld   h, d                                        ; $79b8: $62
	dec  h                                           ; $79b9: $25
	add  e                                           ; $79ba: $83
	ld   de, $8338                                   ; $79bb: $11 $38 $83

jr_0f5_79be:
	ld   de, rAUD1LEN                                   ; $79be: $11 $11 $ff
	pop  bc                                          ; $79c1: $c1
	rra                                              ; $79c2: $1f
	rst  $38                                         ; $79c3: $ff
	pop  af                                          ; $79c4: $f1
	ld   de, $d4ff                                   ; $79c5: $11 $ff $d4
	ld   h, l                                        ; $79c8: $65
	xor  a                                           ; $79c9: $af
	pop  af                                          ; $79ca: $f1
	ld   de, $d97c                                   ; $79cb: $11 $7c $d9
	ld   c, b                                        ; $79ce: $48
	rst  $38                                         ; $79cf: $ff
	ei                                               ; $79d0: $fb
	ld   b, d                                        ; $79d1: $42
	ld   l, c                                        ; $79d2: $69
	sub  h                                           ; $79d3: $94
	ld   bc, $9348                                   ; $79d4: $01 $48 $93
	ld   de, rAUD1LEN                                   ; $79d7: $11 $11 $ff
	pop  af                                          ; $79da: $f1
	rra                                              ; $79db: $1f
	cp   $fa                                         ; $79dc: $fe $fa
	ld   de, $fd7f                                   ; $79de: $11 $7f $fd
	or   h                                           ; $79e1: $b4
	ccf                                              ; $79e2: $3f
	ld   sp, hl                                      ; $79e3: $f9
	ld   de, $ff19                                   ; $79e4: $11 $19 $ff
	ld   [hl], a                                     ; $79e7: $77
	rst  $38                                         ; $79e8: $ff
	db   $fc                                         ; $79e9: $fc
	ld   sp, $a529                                   ; $79ea: $31 $29 $a5
	ld   de, $b549                                   ; $79ed: $11 $49 $b5
	ld   de, $bf11                                   ; $79f0: $11 $11 $bf
	pop  af                                          ; $79f3: $f1
	dec  e                                           ; $79f4: $1d
	rst  $38                                         ; $79f5: $ff
	ei                                               ; $79f6: $fb
	ld   de, $ff1f                                   ; $79f7: $11 $1f $ff
	and  l                                           ; $79fa: $a5
	ld   c, a                                        ; $79fb: $4f
	ei                                               ; $79fc: $fb
	ld   de, $ff19                                   ; $79fd: $11 $19 $ff
	halt                                             ; $7a00: $76
	rst  JumpTable                                         ; $7a01: $df
	cp   $51                                         ; $7a02: $fe $51
	jr   z, jr_0f5_79be                              ; $7a04: $28 $b8

	ld   d, c                                        ; $7a06: $51
	ld   d, $85                                      ; $7a07: $16 $85
	ld   de, $1f11                                   ; $7a09: $11 $11 $1f
	rst  $38                                         ; $7a0c: $ff
	ld   de, $fffb                                   ; $7a0d: $11 $fb $ff
	ld   de, $ff1f                                   ; $7a10: $11 $1f $ff
	ld   sp, hl                                      ; $7a13: $f9
	ld   d, $ff                                      ; $7a14: $16 $ff
	ld   bc, rAUD1ENV                                   ; $7a16: $01 $12 $ff
	ld   a, [$ffbe]                                  ; $7a19: $fa $be $ff
	ld   h, c                                        ; $7a1c: $61
	jr   @-$31                                       ; $7a1d: $18 $cd

	ld   [hl], c                                     ; $7a1f: $71
	inc  d                                           ; $7a20: $14
	or   a                                           ; $7a21: $b7
	ld   de, $1f11                                   ; $7a22: $11 $11 $1f
	rst  $38                                         ; $7a25: $ff
	ld   de, $deeb                                   ; $7a26: $11 $eb $de
	ld   de, $ff1f                                   ; $7a29: $11 $1f $ff
	ld   sp, hl                                      ; $7a2c: $f9
	ld   h, $fd                                      ; $7a2d: $26 $fd
	ld   de, rAUD1HIGH                                   ; $7a2f: $11 $14 $ff
	ld   a, [$fdbe]                                  ; $7a32: $fa $be $fd
	ld   hl, $ee1a                                   ; $7a35: $21 $1a $ee
	add  d                                           ; $7a38: $82
	dec  d                                           ; $7a39: $15
	or   a                                           ; $7a3a: $b7
	ld   de, $1f11                                   ; $7a3b: $11 $11 $1f
	rst  $38                                         ; $7a3e: $ff
	ld   hl, $6eaa                                   ; $7a3f: $21 $aa $6e
	ld   d, c                                        ; $7a42: $51
	add  hl, de                                      ; $7a43: $19
	rst  $38                                         ; $7a44: $ff
	ld   sp, hl                                      ; $7a45: $f9
	ld   sp, $41df                                   ; $7a46: $31 $df $41
	ld   de, $fdff                                   ; $7a49: $11 $ff $fd
	sbc  d                                           ; $7a4c: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a4d: $cf
	ld   [hl], c                                     ; $7a4e: $71
	rla                                              ; $7a4f: $17
	db   $dd                                         ; $7a50: $dd
	push bc                                          ; $7a51: $c5
	ld   [de], a                                     ; $7a52: $12
	ld   a, d                                        ; $7a53: $7a
	ld   b, c                                        ; $7a54: $41
	ld   de, rAUD1LEN                                   ; $7a55: $11 $11 $ff
	pop  af                                          ; $7a58: $f1
	inc  e                                           ; $7a59: $1c
	sbc  d                                           ; $7a5a: $9a
	pop  bc                                          ; $7a5b: $c1
	ld   de, $fbff                                   ; $7a5c: $11 $ff $fb
	ld   b, c                                        ; $7a5f: $41
	ld   l, a                                        ; $7a60: $6f
	and  c                                           ; $7a61: $a1
	ld   de, $fd9f                                   ; $7a62: $11 $9f $fd
	ld   [hl], a                                     ; $7a65: $77
	call $15c1                                       ; $7a66: $cd $c1 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a69: $cf
	rst  $20                                         ; $7a6a: $e7
	ld   de, $a35b                                   ; $7a6b: $11 $5b $a3
	ld   de, $1f11                                   ; $7a6e: $11 $11 $1f
	rst  $38                                         ; $7a71: $ff
	ld   de, $abc9                                   ; $7a72: $11 $c9 $ab

jr_0f5_7a75:
	ld   de, $ff1f                                   ; $7a75: $11 $1f $ff
	ld   [hl], h                                     ; $7a78: $74
	jr   z, jr_0f5_7a75                              ; $7a79: $28 $fa

	ld   de, $ff1c                                   ; $7a7b: $11 $1c $ff
	cp   c                                           ; $7a7e: $b9
	adc  e                                           ; $7a7f: $8b
	cp   e                                           ; $7a80: $bb
	inc  hl                                          ; $7a81: $23
	ld   a, l                                        ; $7a82: $7d
	db   $db                                         ; $7a83: $db
	ld   [hl], d                                     ; $7a84: $72
	inc  hl                                          ; $7a85: $23
	sbc  c                                           ; $7a86: $99

Call_0f5_7a87:
	ld   h, c                                        ; $7a87: $61
	ld   de, $5f11                                   ; $7a88: $11 $11 $5f
	push af                                          ; $7a8b: $f5
	ld   [de], a                                     ; $7a8c: $12
	add  sp, -$3c                                    ; $7a8d: $e8 $c4
	ld   de, $ff6f                                   ; $7a8f: $11 $6f $ff
	ld   b, l                                        ; $7a92: $45
	dec  sp                                          ; $7a93: $3b
	call nz, Call_0f5_6f11                           ; $7a94: $c4 $11 $6f
	db   $fd                                         ; $7a97: $fd
	cp   b                                           ; $7a98: $b8
	xor  e                                           ; $7a99: $ab
	add  $37                                         ; $7a9a: $c6 $37
	xor  [hl]                                        ; $7a9c: $ae
	ret                                              ; $7a9d: $c9


	ld   b, d                                        ; $7a9e: $42
	scf                                              ; $7a9f: $37
	or   a                                           ; $7aa0: $b7
	ld   sp, $1111                                   ; $7aa1: $31 $11 $11
	rst  $38                                         ; $7aa4: $ff
	pop  af                                          ; $7aa5: $f1
	add  hl, de                                      ; $7aa6: $19
	ld   a, [$1171]                                  ; $7aa7: $fa $71 $11
	rst  $38                                         ; $7aaa: $ff
	ld   hl, sp+$56                                  ; $7aab: $f8 $56
	sbc  h                                           ; $7aad: $9c
	ld   d, c                                        ; $7aae: $51
	ld   de, $fc8f                                   ; $7aaf: $11 $8f $fc
	sbc  c                                           ; $7ab2: $99
	call z, Call_0f5_5883                            ; $7ab3: $cc $83 $58
	adc  $a9                                         ; $7ab6: $ce $a9
	ld   d, h                                        ; $7ab8: $54
	ld   e, b                                        ; $7ab9: $58
	halt                                             ; $7aba: $76
	ld   sp, $1111                                   ; $7abb: $31 $11 $11
	rst  $38                                         ; $7abe: $ff
	pop  af                                          ; $7abf: $f1
	ld   a, [de]                                     ; $7ac0: $1a
	ld   sp, hl                                      ; $7ac1: $f9
	ld   [hl], c                                     ; $7ac2: $71
	ld   de, $f7ff                                   ; $7ac3: $11 $ff $f7
	ld   c, c                                        ; $7ac6: $49
	db   $dd                                         ; $7ac7: $dd
	ld   sp, $af11                                   ; $7ac8: $31 $11 $af
	ld   a, [$ebbd]                                  ; $7acb: $fa $bd $eb
	ld   h, d                                        ; $7ace: $62
	ld   e, c                                        ; $7acf: $59
	call c, Call_0f5_6598                            ; $7ad0: $dc $98 $65
	ld   b, [hl]                                     ; $7ad3: $46
	ld   h, [hl]                                     ; $7ad4: $66
	ld   sp, $1111                                   ; $7ad5: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad8: $cf
	pop  af                                          ; $7ad9: $f1
	dec  de                                          ; $7ada: $1b
	ei                                               ; $7adb: $fb
	ld   b, c                                        ; $7adc: $41
	ld   de, $f7ef                                   ; $7add: $11 $ef $f7
	ld   l, a                                        ; $7ae0: $6f
	db   $fc                                         ; $7ae1: $fc
	ld   de, $af12                                   ; $7ae2: $11 $12 $af
	or   a                                           ; $7ae5: $b7
	cp   a                                           ; $7ae6: $bf
	db   $fc                                         ; $7ae7: $fc
	ld   [hl], e                                     ; $7ae8: $73
	ld   l, d                                        ; $7ae9: $6a
	jp   z, $9977                                    ; $7aea: $ca $77 $99

	ld   h, h                                        ; $7aed: $64
	ld   c, b                                        ; $7aee: $48
	sub  h                                           ; $7aef: $94
	ld   de, $1f11                                   ; $7af0: $11 $11 $1f
	rst  $38                                         ; $7af3: $ff
	ld   de, $91ff                                   ; $7af4: $11 $ff $91
	ld   de, $ff1f                                   ; $7af7: $11 $1f $ff
	inc  l                                           ; $7afa: $2c
	rst  $38                                         ; $7afb: $ff
	ld   h, c                                        ; $7afc: $61
	ld   de, $916a                                   ; $7afd: $11 $6a $91
	ld   e, a                                        ; $7b00: $5f
	rst  $38                                         ; $7b01: $ff
	sub  l                                           ; $7b02: $95
	adc  e                                           ; $7b03: $8b
	xor  c                                           ; $7b04: $a9
	ld   d, l                                        ; $7b05: $55
	sbc  h                                           ; $7b06: $9c
	sub  h                                           ; $7b07: $94
	ld   h, $a8                                      ; $7b08: $26 $a8
	ld   b, c                                        ; $7b0a: $41
	ld   de, rAUD1LEN                                   ; $7b0b: $11 $11 $ff
	pop  af                                          ; $7b0e: $f1
	rra                                              ; $7b0f: $1f
	ld   a, [$1111]                                  ; $7b10: $fa $11 $11
	rst  $28                                         ; $7b13: $ef
	ret  z                                           ; $7b14: $c8

	rst  $38                                         ; $7b15: $ff
	or   $12                                         ; $7b16: $f6 $12
	ld   d, [hl]                                     ; $7b18: $56
	ld   d, d                                        ; $7b19: $52
	inc  d                                           ; $7b1a: $14
	rst  $38                                         ; $7b1b: $ff
	ei                                               ; $7b1c: $fb
	cp   [hl]                                        ; $7b1d: $be
	ret  z                                           ; $7b1e: $c8

	ld   h, h                                        ; $7b1f: $64
	ld   d, a                                        ; $7b20: $57
	xor  b                                           ; $7b21: $a8
	ld   b, e                                        ; $7b22: $43
	ld   a, d                                        ; $7b23: $7a
	add  l                                           ; $7b24: $85
	ld   de, $1111                                   ; $7b25: $11 $11 $11
	rst  $38                                         ; $7b28: $ff
	ld   h, c                                        ; $7b29: $61
	rst  $38                                         ; $7b2a: $ff
	db   $f4                                         ; $7b2b: $f4
	ld   de, $b714                                   ; $7b2c: $11 $14 $b7
	ld   c, l                                        ; $7b2f: $4d
	rst  $38                                         ; $7b30: $ff
	db   $e3                                         ; $7b31: $e3
	ld   l, d                                        ; $7b32: $6a
	add  h                                           ; $7b33: $84
	ld   de, $ef16                                   ; $7b34: $11 $16 $ef
	cp   $ff                                         ; $7b37: $fe $ff
	ret  c                                           ; $7b39: $d8

	ld   d, h                                        ; $7b3a: $54
	ld   d, a                                        ; $7b3b: $57
	ld   [hl], h                                     ; $7b3c: $74
	dec  [hl]                                        ; $7b3d: $35
	sbc  c                                           ; $7b3e: $99
	ld   [hl], e                                     ; $7b3f: $73
	ld   de, $1f11                                   ; $7b40: $11 $11 $1f
	rst  $38                                         ; $7b43: $ff
	rla                                              ; $7b44: $17
	rst  $38                                         ; $7b45: $ff
	jp   $3a21                                       ; $7b46: $c3 $21 $3a


	ld   h, c                                        ; $7b49: $61
	cpl                                              ; $7b4a: $2f
	rst  $38                                         ; $7b4b: $ff
	ld   h, a                                        ; $7b4c: $67
	xor  $94                                         ; $7b4d: $ee $94
	ld   hl, $8757                                   ; $7b4f: $21 $57 $87
	sbc  l                                           ; $7b52: $9d
	rst  $38                                         ; $7b53: $ff
	cp   d                                           ; $7b54: $ba
	xor  e                                           ; $7b55: $ab
	sub  [hl]                                        ; $7b56: $96
	ld   b, e                                        ; $7b57: $43
	ld   d, a                                        ; $7b58: $57
	ld   d, e                                        ; $7b59: $53
	ld   b, a                                        ; $7b5a: $47
	ld   [hl], e                                     ; $7b5b: $73
	ld   de, rAUD1ENV                                   ; $7b5c: $11 $12 $ff
	ld   sp, $f8cf                                   ; $7b5f: $31 $cf $f8
	ld   [hl], $88                                   ; $7b62: $36 $88
	ld   h, c                                        ; $7b64: $61
	ld   d, $ff                                      ; $7b65: $16 $ff
	or   a                                           ; $7b67: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b68: $cf

Call_0f5_7b69:
	ld   [$7655], a                                  ; $7b69: $ea $55 $76
	ld   b, e                                        ; $7b6c: $43
	ld   c, c                                        ; $7b6d: $49
	call c, $ddbc                                    ; $7b6e: $dc $bc $dd
	cp   c                                           ; $7b71: $b9
	ld   h, l                                        ; $7b72: $65
	ld   h, [hl]                                     ; $7b73: $66
	ld   b, e                                        ; $7b74: $43
	ld   d, [hl]                                     ; $7b75: $56
	ld   d, h                                        ; $7b76: $54
	ld   [hl-], a                                    ; $7b77: $32
	ld   sp, $fe15                                   ; $7b78: $31 $15 $fe
	ld   d, l                                        ; $7b7b: $55
	rst  $28                                         ; $7b7c: $ef
	add  sp, -$78                                    ; $7b7d: $e8 $88
	adc  b                                           ; $7b7f: $88
	ld   d, e                                        ; $7b80: $53
	ld   [hl], $9a                                   ; $7b81: $36 $9a
	sbc  c                                           ; $7b83: $99
	cp   [hl]                                        ; $7b84: $be
	db   $ec                                         ; $7b85: $ec
	sbc  b                                           ; $7b86: $98
	sbc  b                                           ; $7b87: $98
	ld   h, l                                        ; $7b88: $65
	ld   d, [hl]                                     ; $7b89: $56
	ld   a, b                                        ; $7b8a: $78
	xor  d                                           ; $7b8b: $aa
	cp   e                                           ; $7b8c: $bb
	cp   d                                           ; $7b8d: $ba
	adc  b                                           ; $7b8e: $88
	sbc  b                                           ; $7b8f: $98
	halt                                             ; $7b90: $76
	ld   h, [hl]                                     ; $7b91: $66
	ld   d, l                                        ; $7b92: $55
	ld   d, [hl]                                     ; $7b93: $56
	ld   d, h                                        ; $7b94: $54
	ld   [hl-], a                                    ; $7b95: $32
	ld   e, c                                        ; $7b96: $59
	ld   [hl], e                                     ; $7b97: $73
	ld   c, d                                        ; $7b98: $4a
	db   $eb                                         ; $7b99: $eb
	ld   a, b                                        ; $7b9a: $78
	call z, Call_0f5_66a7                            ; $7b9b: $cc $a7 $66
	adc  c                                           ; $7b9e: $89
	add  a                                           ; $7b9f: $87
	adc  c                                           ; $7ba0: $89
	xor  c                                           ; $7ba1: $a9
	adc  c                                           ; $7ba2: $89
	xor  c                                           ; $7ba3: $a9
	sbc  c                                           ; $7ba4: $99
	sbc  c                                           ; $7ba5: $99
	sbc  d                                           ; $7ba6: $9a
	adc  c                                           ; $7ba7: $89
	adc  c                                           ; $7ba8: $89
	adc  c                                           ; $7ba9: $89
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	ld   a, b                                        ; $7bad: $78
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	ld   [hl], a                                     ; $7bb0: $77
	ld   h, [hl]                                     ; $7bb1: $66
	ld   h, [hl]                                     ; $7bb2: $66
	ld   h, l                                        ; $7bb3: $65
	ld   b, l                                        ; $7bb4: $45
	ld   h, l                                        ; $7bb5: $65
	ld   d, l                                        ; $7bb6: $55
	ld   h, a                                        ; $7bb7: $67
	ld   [hl], a                                     ; $7bb8: $77
	adc  c                                           ; $7bb9: $89
	xor  d                                           ; $7bba: $aa
	xor  e                                           ; $7bbb: $ab
	cp   e                                           ; $7bbc: $bb
	cp   d                                           ; $7bbd: $ba
	sbc  b                                           ; $7bbe: $98
	xor  d                                           ; $7bbf: $aa
	sbc  c                                           ; $7bc0: $99
	xor  c                                           ; $7bc1: $a9
	sbc  b                                           ; $7bc2: $98
	sbc  c                                           ; $7bc3: $99
	sbc  b                                           ; $7bc4: $98
	sbc  c                                           ; $7bc5: $99
	adc  c                                           ; $7bc6: $89
	sbc  b                                           ; $7bc7: $98
	adc  b                                           ; $7bc8: $88
	sbc  b                                           ; $7bc9: $98
	ld   [hl], a                                     ; $7bca: $77
	adc  b                                           ; $7bcb: $88
	ld   [hl], a                                     ; $7bcc: $77
	ld   [hl], a                                     ; $7bcd: $77
	add  a                                           ; $7bce: $87
	ld   [hl], a                                     ; $7bcf: $77
	adc  b                                           ; $7bd0: $88
	add  a                                           ; $7bd1: $87
	ld   [hl], a                                     ; $7bd2: $77
	adc  b                                           ; $7bd3: $88
	ld   [hl], a                                     ; $7bd4: $77
	ld   [hl], a                                     ; $7bd5: $77
	ld   [hl], a                                     ; $7bd6: $77
	ld   h, [hl]                                     ; $7bd7: $66
	ld   h, [hl]                                     ; $7bd8: $66
	ld   [hl], a                                     ; $7bd9: $77
	ld   a, b                                        ; $7bda: $78
	sbc  c                                           ; $7bdb: $99
	sbc  b                                           ; $7bdc: $98
	adc  c                                           ; $7bdd: $89
	xor  d                                           ; $7bde: $aa
	sbc  b                                           ; $7bdf: $98
	sbc  c                                           ; $7be0: $99
	sbc  c                                           ; $7be1: $99
	adc  b                                           ; $7be2: $88
	adc  c                                           ; $7be3: $89
	sbc  c                                           ; $7be4: $99
	sbc  b                                           ; $7be5: $98
	adc  b                                           ; $7be6: $88
	sbc  c                                           ; $7be7: $99
	sbc  b                                           ; $7be8: $98
	sbc  b                                           ; $7be9: $98
	adc  b                                           ; $7bea: $88
	add  a                                           ; $7beb: $87
	ld   [hl], a                                     ; $7bec: $77
	ld   [hl], a                                     ; $7bed: $77
	ld   [hl], a                                     ; $7bee: $77
	ld   [hl], a                                     ; $7bef: $77
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	adc  b                                           ; $7bf3: $88
	adc  b                                           ; $7bf4: $88
	adc  b                                           ; $7bf5: $88
	sbc  c                                           ; $7bf6: $99
	add  a                                           ; $7bf7: $87
	adc  b                                           ; $7bf8: $88
	ld   [hl], a                                     ; $7bf9: $77
	ld   [hl], a                                     ; $7bfa: $77
	ld   h, [hl]                                     ; $7bfb: $66
	ld   [hl], a                                     ; $7bfc: $77
	ld   [hl], a                                     ; $7bfd: $77
	ld   [hl], a                                     ; $7bfe: $77
	ld   a, b                                        ; $7bff: $78
	sbc  b                                           ; $7c00: $98
	sbc  c                                           ; $7c01: $99
	adc  b                                           ; $7c02: $88
	adc  b                                           ; $7c03: $88
	sbc  b                                           ; $7c04: $98
	adc  c                                           ; $7c05: $89
	adc  b                                           ; $7c06: $88
	adc  b                                           ; $7c07: $88
	adc  b                                           ; $7c08: $88
	adc  b                                           ; $7c09: $88
	adc  c                                           ; $7c0a: $89
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	sbc  c                                           ; $7c0e: $99
	sbc  c                                           ; $7c0f: $99
	sbc  c                                           ; $7c10: $99
	sbc  b                                           ; $7c11: $98
	adc  b                                           ; $7c12: $88
	adc  b                                           ; $7c13: $88
	ld   [hl], a                                     ; $7c14: $77
	ld   [hl], a                                     ; $7c15: $77
	ld   a, b                                        ; $7c16: $78
	adc  b                                           ; $7c17: $88
	adc  c                                           ; $7c18: $89
	sbc  b                                           ; $7c19: $98
	adc  b                                           ; $7c1a: $88
	adc  b                                           ; $7c1b: $88
	ld   [hl], a                                     ; $7c1c: $77
	adc  b                                           ; $7c1d: $88
	adc  b                                           ; $7c1e: $88
	adc  b                                           ; $7c1f: $88
	adc  b                                           ; $7c20: $88
	add  a                                           ; $7c21: $87
	ld   [hl], a                                     ; $7c22: $77
	ld   [hl], a                                     ; $7c23: $77

Jump_0f5_7c24:
	ld   [hl], a                                     ; $7c24: $77
	ld   [hl], a                                     ; $7c25: $77
	adc  b                                           ; $7c26: $88
	add  a                                           ; $7c27: $87
	ld   [hl], a                                     ; $7c28: $77
	adc  b                                           ; $7c29: $88
	ld   [hl], a                                     ; $7c2a: $77
	adc  b                                           ; $7c2b: $88
	adc  c                                           ; $7c2c: $89
	sbc  c                                           ; $7c2d: $99
	sbc  b                                           ; $7c2e: $98
	adc  c                                           ; $7c2f: $89
	adc  b                                           ; $7c30: $88
	adc  b                                           ; $7c31: $88
	sbc  c                                           ; $7c32: $99
	sbc  c                                           ; $7c33: $99
	sbc  c                                           ; $7c34: $99
	sbc  c                                           ; $7c35: $99
	adc  b                                           ; $7c36: $88
	adc  b                                           ; $7c37: $88
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  b                                           ; $7c3a: $88
	adc  b                                           ; $7c3b: $88
	adc  b                                           ; $7c3c: $88
	adc  b                                           ; $7c3d: $88
	ld   [hl], a                                     ; $7c3e: $77
	ld   [hl], a                                     ; $7c3f: $77
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
	sbc  b                                           ; $7dfc: $98
	adc  b                                           ; $7dfd: $88
	adc  b                                           ; $7dfe: $88
	adc  b                                           ; $7dff: $88
	adc  b                                           ; $7e00: $88
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	add  a                                           ; $7e05: $87
	adc  b                                           ; $7e06: $88
	adc  b                                           ; $7e07: $88
	ld   a, c                                        ; $7e08: $79
	add  a                                           ; $7e09: $87
	add  a                                           ; $7e0a: $87
	adc  b                                           ; $7e0b: $88
	ld   a, c                                        ; $7e0c: $79
	adc  b                                           ; $7e0d: $88
	adc  b                                           ; $7e0e: $88
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	adc  b                                           ; $7e12: $88
	adc  b                                           ; $7e13: $88
	sbc  b                                           ; $7e14: $98
	adc  b                                           ; $7e15: $88
	adc  b                                           ; $7e16: $88
	adc  b                                           ; $7e17: $88
	adc  b                                           ; $7e18: $88
	adc  b                                           ; $7e19: $88
	adc  b                                           ; $7e1a: $88
	adc  b                                           ; $7e1b: $88
	adc  b                                           ; $7e1c: $88
	adc  b                                           ; $7e1d: $88
	ld   a, b                                        ; $7e1e: $78
	adc  b                                           ; $7e1f: $88
	sub  a                                           ; $7e20: $97
	sbc  b                                           ; $7e21: $98
	ld   a, b                                        ; $7e22: $78
	adc  c                                           ; $7e23: $89
	ld   a, b                                        ; $7e24: $78
	adc  b                                           ; $7e25: $88
	sbc  b                                           ; $7e26: $98
	adc  b                                           ; $7e27: $88
	adc  c                                           ; $7e28: $89
	ld   a, b                                        ; $7e29: $78
	add  a                                           ; $7e2a: $87
	sbc  b                                           ; $7e2b: $98
	adc  b                                           ; $7e2c: $88
	adc  b                                           ; $7e2d: $88
	adc  b                                           ; $7e2e: $88
	adc  b                                           ; $7e2f: $88
	adc  b                                           ; $7e30: $88
	adc  b                                           ; $7e31: $88
	adc  b                                           ; $7e32: $88
	adc  c                                           ; $7e33: $89
	add  a                                           ; $7e34: $87
	add  a                                           ; $7e35: $87
	adc  b                                           ; $7e36: $88
	adc  b                                           ; $7e37: $88
	ld   a, b                                        ; $7e38: $78
	sbc  b                                           ; $7e39: $98
	adc  b                                           ; $7e3a: $88
	ld   a, b                                        ; $7e3b: $78
	ld   a, b                                        ; $7e3c: $78
	sub  a                                           ; $7e3d: $97
	sbc  b                                           ; $7e3e: $98
	ld   a, c                                        ; $7e3f: $79
	ld   a, c                                        ; $7e40: $79
	adc  b                                           ; $7e41: $88
	sub  a                                           ; $7e42: $97
	adc  b                                           ; $7e43: $88
	adc  b                                           ; $7e44: $88
	adc  b                                           ; $7e45: $88
	adc  b                                           ; $7e46: $88
	adc  b                                           ; $7e47: $88
	adc  b                                           ; $7e48: $88
	sub  a                                           ; $7e49: $97
	sbc  b                                           ; $7e4a: $98
	adc  c                                           ; $7e4b: $89
	adc  b                                           ; $7e4c: $88
	adc  b                                           ; $7e4d: $88
	adc  b                                           ; $7e4e: $88
	adc  b                                           ; $7e4f: $88
	adc  c                                           ; $7e50: $89
	ld   a, b                                        ; $7e51: $78
	adc  b                                           ; $7e52: $88
	sbc  b                                           ; $7e53: $98
	adc  b                                           ; $7e54: $88
	adc  b                                           ; $7e55: $88
	add  a                                           ; $7e56: $87
	adc  b                                           ; $7e57: $88
	adc  c                                           ; $7e58: $89
	ld   a, b                                        ; $7e59: $78
	adc  b                                           ; $7e5a: $88
	adc  b                                           ; $7e5b: $88
	ld   a, b                                        ; $7e5c: $78
	ld   a, b                                        ; $7e5d: $78
	adc  b                                           ; $7e5e: $88
	sub  a                                           ; $7e5f: $97
	sub  a                                           ; $7e60: $97
	adc  b                                           ; $7e61: $88
	ld   a, c                                        ; $7e62: $79
	ld   a, c                                        ; $7e63: $79
	adc  b                                           ; $7e64: $88
	add  a                                           ; $7e65: $87
	sbc  b                                           ; $7e66: $98
	ld   a, b                                        ; $7e67: $78
	ld   a, b                                        ; $7e68: $78
	sub  a                                           ; $7e69: $97
	add  a                                           ; $7e6a: $87
	ld   a, b                                        ; $7e6b: $78
	ld   a, c                                        ; $7e6c: $79
	adc  b                                           ; $7e6d: $88
	adc  b                                           ; $7e6e: $88
	ld   a, b                                        ; $7e6f: $78
	sub  a                                           ; $7e70: $97
	sub  a                                           ; $7e71: $97
	sbc  c                                           ; $7e72: $99
	ld   l, b                                        ; $7e73: $68
	ld   [hl], a                                     ; $7e74: $77
	sbc  b                                           ; $7e75: $98
	sub  a                                           ; $7e76: $97
	adc  c                                           ; $7e77: $89
	sbc  b                                           ; $7e78: $98
	ld   a, b                                        ; $7e79: $78
	ld   a, b                                        ; $7e7a: $78
	adc  b                                           ; $7e7b: $88
	ld   a, b                                        ; $7e7c: $78
	sub  a                                           ; $7e7d: $97
	sbc  c                                           ; $7e7e: $99
	ld   l, c                                        ; $7e7f: $69
	sub  a                                           ; $7e80: $97
	sub  a                                           ; $7e81: $97
	ld   a, c                                        ; $7e82: $79
	ld   a, b                                        ; $7e83: $78
	sub  a                                           ; $7e84: $97
	adc  b                                           ; $7e85: $88
	ld   a, c                                        ; $7e86: $79
	add  a                                           ; $7e87: $87
	sbc  b                                           ; $7e88: $98
	adc  b                                           ; $7e89: $88
	halt                                             ; $7e8a: $76
	and  a                                           ; $7e8b: $a7
	ld   a, c                                        ; $7e8c: $79
	ld   l, c                                        ; $7e8d: $69
	ld   a, b                                        ; $7e8e: $78
	sub  a                                           ; $7e8f: $97
	adc  c                                           ; $7e90: $89
	add  a                                           ; $7e91: $87
	add  a                                           ; $7e92: $87
	sub  a                                           ; $7e93: $97
	ld   a, d                                        ; $7e94: $7a
	ld   a, b                                        ; $7e95: $78
	adc  d                                           ; $7e96: $8a
	ld   a, b                                        ; $7e97: $78
	sbc  b                                           ; $7e98: $98
	ld   l, b                                        ; $7e99: $68
	sub  l                                           ; $7e9a: $95
	sub  a                                           ; $7e9b: $97

jr_0f5_7e9c:
	and  [hl]                                        ; $7e9c: $a6
	xor  c                                           ; $7e9d: $a9
	ld   l, e                                        ; $7e9e: $6b
	ld   e, h                                        ; $7e9f: $5c
	ld   d, a                                        ; $7ea0: $57
	and  h                                           ; $7ea1: $a4
	xor  b                                           ; $7ea2: $a8
	ld   a, b                                        ; $7ea3: $78
	ld   a, b                                        ; $7ea4: $78
	sub  [hl]                                        ; $7ea5: $96
	sub  a                                           ; $7ea6: $97
	and  [hl]                                        ; $7ea7: $a6
	ld   a, d                                        ; $7ea8: $7a
	ld   a, d                                        ; $7ea9: $7a
	ld   e, d                                        ; $7eaa: $5a
	ld   e, c                                        ; $7eab: $59
	and  h                                           ; $7eac: $a4
	push bc                                          ; $7ead: $c5
	sbc  c                                           ; $7eae: $99
	ld   e, e                                        ; $7eaf: $5b
	ld   e, c                                        ; $7eb0: $59
	sub  l                                           ; $7eb1: $95
	sub  a                                           ; $7eb2: $97
	and  [hl]                                        ; $7eb3: $a6
	adc  b                                           ; $7eb4: $88
	ld   a, b                                        ; $7eb5: $78
	ld   a, b                                        ; $7eb6: $78
	sbc  b                                           ; $7eb7: $98
	ld   l, c                                        ; $7eb8: $69
	ld   l, b                                        ; $7eb9: $68
	or   l                                           ; $7eba: $b5
	ld   a, e                                        ; $7ebb: $7b
	halt                                             ; $7ebc: $76
	or   e                                           ; $7ebd: $b3
	xor  d                                           ; $7ebe: $aa
	add  hl, hl                                      ; $7ebf: $29
	jp   $3a9c                                       ; $7ec0: $c3 $9c $3a


	add  [hl]                                        ; $7ec3: $86
	call nz, $3a99                                   ; $7ec4: $c4 $99 $3a
	and  h                                           ; $7ec7: $a4
	sbc  c                                           ; $7ec8: $99
	ld   d, a                                        ; $7ec9: $57
	and  a                                           ; $7eca: $a7
	sub  [hl]                                        ; $7ecb: $96
	sbc  l                                           ; $7ecc: $9d
	dec  hl                                          ; $7ecd: $2b
	and  e                                           ; $7ece: $a3
	add  $7a                                         ; $7ecf: $c6 $7a
	add  l                                           ; $7ed1: $85
	sbc  d                                           ; $7ed2: $9a
	jr   c, jr_0f5_7e9c                              ; $7ed3: $38 $c7

	ld   l, d                                        ; $7ed5: $6a
	ld   [hl], a                                     ; $7ed6: $77
	ld   l, d                                        ; $7ed7: $6a
	ld   e, c                                        ; $7ed8: $59
	sub  h                                           ; $7ed9: $94
	push de                                          ; $7eda: $d5
	ld   l, b                                        ; $7edb: $68
	sbc  b                                           ; $7edc: $98
	sub  [hl]                                        ; $7edd: $96
	adc  h                                           ; $7ede: $8c
	dec  hl                                          ; $7edf: $2b
	ld   [hl], a                                     ; $7ee0: $77
	and  [hl]                                        ; $7ee1: $a6
	sub  a                                           ; $7ee2: $97
	sbc  b                                           ; $7ee3: $98
	add  [hl]                                        ; $7ee4: $86
	db   $d3                                         ; $7ee5: $d3
	ld   a, l                                        ; $7ee6: $7d
	inc  e                                           ; $7ee7: $1c
	or   c                                           ; $7ee8: $b1
	xor  d                                           ; $7ee9: $aa
	ld   c, e                                        ; $7eea: $4b
	ld   h, h                                        ; $7eeb: $64
	add  $5c                                         ; $7eec: $c6 $5c
	ld   h, h                                        ; $7eee: $64
	push af                                          ; $7eef: $f5
	ld   e, e                                        ; $7ef0: $5b
	ld   l, c                                        ; $7ef1: $69
	adc  c                                           ; $7ef2: $89
	adc  c                                           ; $7ef3: $89
	ld   l, c                                        ; $7ef4: $69
	or   h                                           ; $7ef5: $b4
	rst  ToBoot                                         ; $7ef6: $c7
	ld   l, [hl]                                     ; $7ef7: $6e
	dec  de                                          ; $7ef8: $1b
	or   h                                           ; $7ef9: $b4
	xor  c                                           ; $7efa: $a9
	sub  l                                           ; $7efb: $95
	push de                                          ; $7efc: $d5
	ld   e, h                                        ; $7efd: $5c
	ld   c, c                                        ; $7efe: $49
	ld   d, [hl]                                     ; $7eff: $56
	jp   nz, Jump_0f5_578a                           ; $7f00: $c2 $8a $57

	ld   l, c                                        ; $7f03: $69
	ld   [hl], l                                     ; $7f04: $75
	add  [hl]                                        ; $7f05: $86
	add  [hl]                                        ; $7f06: $86
	or   l                                           ; $7f07: $b5
	ld   c, h                                        ; $7f08: $4c
	ld   c, d                                        ; $7f09: $4a
	add  a                                           ; $7f0a: $87
	rst  $10                                         ; $7f0b: $d7
	sbc  e                                           ; $7f0c: $9b
	sub  a                                           ; $7f0d: $97
	jp   c, $8a9e                                    ; $7f0e: $da $9e $8a

	xor  d                                           ; $7f11: $aa
	and  [hl]                                        ; $7f12: $a6
	cp   b                                           ; $7f13: $b8
	ld   l, c                                        ; $7f14: $69
	ld   a, b                                        ; $7f15: $78
	ld   h, a                                        ; $7f16: $67
	add  h                                           ; $7f17: $84
	add  [hl]                                        ; $7f18: $86
	ld   a, [hl-]                                    ; $7f19: $3a
	inc  [hl]                                        ; $7f1a: $34
	sub  e                                           ; $7f1b: $93
	ld   h, l                                        ; $7f1c: $65
	ld   b, [hl]                                     ; $7f1d: $46
	ld   d, l                                        ; $7f1e: $55
	ld   h, a                                        ; $7f1f: $67
	ld   [hl], a                                     ; $7f20: $77
	sbc  b                                           ; $7f21: $98
	xor  h                                           ; $7f22: $ac
	ld   l, [hl]                                     ; $7f23: $6e
	cp   c                                           ; $7f24: $b9
	ld   [$aabd], a                                  ; $7f25: $ea $bd $aa
	ret                                              ; $7f28: $c9


	sbc  [hl]                                        ; $7f29: $9e
	adc  c                                           ; $7f2a: $89
	sub  $ba                                         ; $7f2b: $d6 $ba
	ld   l, b                                        ; $7f2d: $68
	sub  a                                           ; $7f2e: $97
	ld   e, c                                        ; $7f2f: $59
	ld   b, [hl]                                     ; $7f30: $46
	ld   d, h                                        ; $7f31: $54
	ld   [hl], c                                     ; $7f32: $71
	ld   b, l                                        ; $7f33: $45
	dec  d                                           ; $7f34: $15
	ld   [hl-], a                                    ; $7f35: $32
	ld   h, e                                        ; $7f36: $63
	ld   d, a                                        ; $7f37: $57
	ld   l, b                                        ; $7f38: $68
	adc  b                                           ; $7f39: $88
	cp   e                                           ; $7f3a: $bb
	sbc  l                                           ; $7f3b: $9d
	jp   z, $ddd9                                    ; $7f3c: $ca $d9 $dd

	sbc  [hl]                                        ; $7f3f: $9e
	cp   d                                           ; $7f40: $ba
	reti                                             ; $7f41: $d9


	cp   d                                           ; $7f42: $ba
	adc  h                                           ; $7f43: $8c
	sbc  b                                           ; $7f44: $98
	sbc  b                                           ; $7f45: $98
	add  a                                           ; $7f46: $87
	add  [hl]                                        ; $7f47: $86
	ld   h, a                                        ; $7f48: $67
	ld   b, h                                        ; $7f49: $44
	ld   b, e                                        ; $7f4a: $43
	inc  hl                                          ; $7f4b: $23
	ld   sp, $1543                                   ; $7f4c: $31 $43 $15
	ld   d, h                                        ; $7f4f: $54
	ld   [hl], a                                     ; $7f50: $77
	ld   a, e                                        ; $7f51: $7b
	adc  e                                           ; $7f52: $8b
	db   $db                                         ; $7f53: $db
	db   $dd                                         ; $7f54: $dd
	call $ceda                                       ; $7f55: $cd $da $ce
	xor  h                                           ; $7f58: $ac
	jp   z, $8acc                                    ; $7f59: $ca $cc $8a

	cp   b                                           ; $7f5c: $b8
	adc  b                                           ; $7f5d: $88
	add  a                                           ; $7f5e: $87
	ld   d, [hl]                                     ; $7f5f: $56
	ld   b, c                                        ; $7f60: $41
	ld   b, d                                        ; $7f61: $42
	ld   [de], a                                     ; $7f62: $12
	ld   hl, $1314                                   ; $7f63: $21 $14 $13
	ld   d, l                                        ; $7f66: $55
	add  a                                           ; $7f67: $87
	xor  e                                           ; $7f68: $ab
	cp   h                                           ; $7f69: $bc
	cp   l                                           ; $7f6a: $bd
	call $eced                                       ; $7f6b: $cd $ed $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f6e: $cf
	db   $db                                         ; $7f6f: $db
	call c, $a8ab                                    ; $7f70: $dc $ab $a8
	and  [hl]                                        ; $7f73: $a6
	ld   l, b                                        ; $7f74: $68
	ld   b, h                                        ; $7f75: $44
	ld   h, c                                        ; $7f76: $61
	ld   [de], a                                     ; $7f77: $12
	ld   hl, $2112                                   ; $7f78: $21 $12 $21
	inc  hl                                          ; $7f7b: $23
	ld   h, l                                        ; $7f7c: $65
	ld   l, d                                        ; $7f7d: $6a
	xor  e                                           ; $7f7e: $ab
	db   $dd                                         ; $7f7f: $dd
	xor  $de                                         ; $7f80: $ee $de
	cp   $ef                                         ; $7f82: $fe $ef
	db   $dd                                         ; $7f84: $dd
	call c, $aacb                                    ; $7f85: $dc $cb $aa
	ld   [hl], a                                     ; $7f88: $77
	halt                                             ; $7f89: $76
	ld   h, e                                        ; $7f8a: $63
	ld   b, e                                        ; $7f8b: $43
	ld   [de], a                                     ; $7f8c: $12
	ld   [hl+], a                                    ; $7f8d: $22
	ld   de, $2331                                   ; $7f8e: $11 $31 $23
	ld   d, [hl]                                     ; $7f91: $56
	ld   e, d                                        ; $7f92: $5a
	xor  d                                           ; $7f93: $aa
	cp   l                                           ; $7f94: $bd
	db   $ec                                         ; $7f95: $ec
	rst  $38                                         ; $7f96: $ff
	rst  $38                                         ; $7f97: $ff
	rst  $28                                         ; $7f98: $ef
	db   $ec                                         ; $7f99: $ec
	db   $fc                                         ; $7f9a: $fc
	cp   d                                           ; $7f9b: $ba
	cp   c                                           ; $7f9c: $b9
	ld   e, b                                        ; $7f9d: $58
	ld   h, h                                        ; $7f9e: $64
	ld   d, c                                        ; $7f9f: $51
	ld   b, c                                        ; $7fa0: $41
	inc  d                                           ; $7fa1: $14
	ld   de, $1221                                   ; $7fa2: $11 $21 $12
	inc  [hl]                                        ; $7fa5: $34
	ld   [hl], l                                     ; $7fa6: $75
	adc  h                                           ; $7fa7: $8c
	sbc  e                                           ; $7fa8: $9b
	db   $fc                                         ; $7fa9: $fc
	rst  $38                                         ; $7faa: $ff
	rst  JumpTable                                         ; $7fab: $df
	db   $fd                                         ; $7fac: $fd
	rst  $38                                         ; $7fad: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fae: $cf
	jp   z, $98b8                                    ; $7faf: $ca $b8 $98

	ld   b, [hl]                                     ; $7fb2: $46
	ld   d, c                                        ; $7fb3: $51
	ld   b, c                                        ; $7fb4: $41
	ld   de, $1431                                   ; $7fb5: $11 $31 $14
	ld   sp, $5853                                   ; $7fb8: $31 $53 $58
	ld   e, h                                        ; $7fbb: $5c
	ld   [$ffef], a                                  ; $7fbc: $ea $ef $ff
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	rst  $28                                         ; $7fc1: $ef
	db   $eb                                         ; $7fc2: $eb
	ld   [$657a], a                                  ; $7fc3: $ea $7a $65
	ld   b, d                                        ; $7fc6: $42
	ld   b, c                                        ; $7fc7: $41
	ld   de, $2211                                   ; $7fc8: $11 $11 $22
	inc  d                                           ; $7fcb: $14
	ld   sp, $5a63                                   ; $7fcc: $31 $63 $5a
	ld   l, h                                        ; $7fcf: $6c
	reti                                             ; $7fd0: $d9


	rst  $38                                         ; $7fd1: $ff
	rst  $28                                         ; $7fd2: $ef
	rst  $38                                         ; $7fd3: $ff
	rst  $38                                         ; $7fd4: $ff
	rst  $28                                         ; $7fd5: $ef
	db   $ec                                         ; $7fd6: $ec
	db   $eb                                         ; $7fd7: $eb
	sbc  d                                           ; $7fd8: $9a
	halt                                             ; $7fd9: $76
	ld   b, e                                        ; $7fda: $43
	ld   sp, $1111                                   ; $7fdb: $31 $11 $11
	ld   d, c                                        ; $7fde: $51
	ld   a, [de]                                     ; $7fdf: $1a
	ld   de, $7891                                   ; $7fe0: $11 $91 $78
	ccf                                              ; $7fe3: $3f
	rst  $10                                         ; $7fe4: $d7
	rst  $38                                         ; $7fe5: $ff
	rst  $28                                         ; $7fe6: $ef
	rst  $38                                         ; $7fe7: $ff
	rst  $38                                         ; $7fe8: $ff
	rst  $38                                         ; $7fe9: $ff
	call z, $8af8                                    ; $7fea: $cc $f8 $8a
	ld   h, h                                        ; $7fed: $64
	inc  sp                                          ; $7fee: $33
	ld   hl, $1211                                   ; $7fef: $21 $11 $12
	ld   de, $1431                                   ; $7ff2: $11 $31 $14
	dec  h                                           ; $7ff5: $25
	ld   [hl], a                                     ; $7ff6: $77
	xor  $af                                         ; $7ff7: $ee $af
	cp   $ff                                         ; $7ff9: $fe $ff
	rst  $38                                         ; $7ffb: $ff
	rst  $38                                         ; $7ffc: $ff
	cp   $dd                                         ; $7ffd: $fe $dd
	xor  b                                           ; $7fff: $a8
