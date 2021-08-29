; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c9", ROMX[$4000], BANK[$c9]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	ld   de, $1111                                   ; $4003: $11 $11 $11
	ld   de, $1111                                   ; $4006: $11 $11 $11
	ld   e, b                                        ; $4009: $58
	cp   a                                           ; $400a: $bf
	rst  $38                                         ; $400b: $ff
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	rst  $38                                         ; $400e: $ff
	rst  $38                                         ; $400f: $ff
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	cp   $ca                                         ; $4013: $fe $ca
	sub  a                                           ; $4015: $97
	ld   d, e                                        ; $4016: $53
	ld   de, $1111                                   ; $4017: $11 $11 $11
	ld   de, $1111                                   ; $401a: $11 $11 $11
	ld   de, $1111                                   ; $401d: $11 $11 $11
	inc  d                                           ; $4020: $14
	sbc  h                                           ; $4021: $9c
	rst  $38                                         ; $4022: $ff
	rst  $38                                         ; $4023: $ff
	rst  $38                                         ; $4024: $ff
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	rst  $38                                         ; $4027: $ff
	rst  $38                                         ; $4028: $ff
	rst  $38                                         ; $4029: $ff
	rst  $38                                         ; $402a: $ff
	db   $fd                                         ; $402b: $fd
	cp   c                                           ; $402c: $b9
	add  [hl]                                        ; $402d: $86
	ld   b, e                                        ; $402e: $43
	ld   de, $1111                                   ; $402f: $11 $11 $11
	ld   de, $1111                                   ; $4032: $11 $11 $11
	ld   de, $1111                                   ; $4035: $11 $11 $11
	ld   h, $ae                                      ; $4038: $26 $ae
	rst  $38                                         ; $403a: $ff
	rst  $38                                         ; $403b: $ff
	rst  $38                                         ; $403c: $ff
	rst  $38                                         ; $403d: $ff
	rst  $38                                         ; $403e: $ff
	rst  $38                                         ; $403f: $ff

jr_0c9_4040:
	rst  $38                                         ; $4040: $ff
	rst  $38                                         ; $4041: $ff
	rst  $38                                         ; $4042: $ff
	db   $ed                                         ; $4043: $ed
	xor  c                                           ; $4044: $a9
	add  [hl]                                        ; $4045: $86
	ld   b, e                                        ; $4046: $43
	ld   de, $1111                                   ; $4047: $11 $11 $11
	ld   de, $1111                                   ; $404a: $11 $11 $11
	ld   de, $1111                                   ; $404d: $11 $11 $11
	ld   h, $9e                                      ; $4050: $26 $9e
	rst  $38                                         ; $4052: $ff
	rst  $38                                         ; $4053: $ff
	rst  $38                                         ; $4054: $ff
	rst  $38                                         ; $4055: $ff
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	rst  $38                                         ; $4059: $ff
	rst  $38                                         ; $405a: $ff
	db   $fd                                         ; $405b: $fd
	cp   c                                           ; $405c: $b9
	sub  a                                           ; $405d: $97
	ld   h, h                                        ; $405e: $64
	ld   hl, $1111                                   ; $405f: $21 $11 $11
	ld   de, $1111                                   ; $4062: $11 $11 $11
	ld   de, $1111                                   ; $4065: $11 $11 $11
	inc  d                                           ; $4068: $14
	ld   a, d                                        ; $4069: $7a
	rst  $38                                         ; $406a: $ff
	rst  $38                                         ; $406b: $ff
	rst  $38                                         ; $406c: $ff
	rst  $38                                         ; $406d: $ff
	rst  $38                                         ; $406e: $ff
	rst  $38                                         ; $406f: $ff
	rst  $38                                         ; $4070: $ff
	rst  $38                                         ; $4071: $ff
	rst  $38                                         ; $4072: $ff
	cp   $cc                                         ; $4073: $fe $cc
	sbc  c                                           ; $4075: $99
	halt                                             ; $4076: $76
	ld   [hl-], a                                    ; $4077: $32
	ld   de, $1111                                   ; $4078: $11 $11 $11
	ld   de, $1111                                   ; $407b: $11 $11 $11
	ld   de, $1111                                   ; $407e: $11 $11 $11
	jr   c, jr_0c9_4040                              ; $4081: $38 $bd

	rst  $38                                         ; $4083: $ff
	rst  $38                                         ; $4084: $ff
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	rst  $38                                         ; $408b: $ff
	db   $ec                                         ; $408c: $ec
	res  0, a                                        ; $408d: $cb $87
	ld   h, l                                        ; $408f: $65
	ld   hl, $1111                                   ; $4090: $21 $11 $11
	ld   de, $1111                                   ; $4093: $11 $11 $11
	ld   de, $1111                                   ; $4096: $11 $11 $11
	ld   de, $cf38                                   ; $4099: $11 $38 $cf
	rst  $38                                         ; $409c: $ff
	rst  $38                                         ; $409d: $ff
	rst  $38                                         ; $409e: $ff
	rst  $38                                         ; $409f: $ff
	rst  $38                                         ; $40a0: $ff
	rst  $38                                         ; $40a1: $ff
	rst  $38                                         ; $40a2: $ff
	rst  $38                                         ; $40a3: $ff
	rst  $38                                         ; $40a4: $ff
	db   $ec                                         ; $40a5: $ec
	jp   z, Jump_0c9_6487                            ; $40a6: $ca $87 $64

	ld   hl, $1111                                   ; $40a9: $21 $11 $11
	ld   de, $1111                                   ; $40ac: $11 $11 $11
	ld   de, $1111                                   ; $40af: $11 $11 $11
	ld   de, $bd47                                   ; $40b2: $11 $47 $bd
	rst  $38                                         ; $40b5: $ff
	rst  $38                                         ; $40b6: $ff
	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	rst  $38                                         ; $40b9: $ff
	rst  $38                                         ; $40ba: $ff
	rst  $38                                         ; $40bb: $ff
	rst  $38                                         ; $40bc: $ff
	rst  $38                                         ; $40bd: $ff
	db   $ec                                         ; $40be: $ec
	jp   z, Jump_0c9_6497                            ; $40bf: $ca $97 $64

	ld   sp, $1111                                   ; $40c2: $31 $11 $11
	ld   de, $1111                                   ; $40c5: $11 $11 $11
	ld   de, $1111                                   ; $40c8: $11 $11 $11
	ld   de, $6924                                   ; $40cb: $11 $24 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ce: $cf
	rst  $38                                         ; $40cf: $ff
	rst  $38                                         ; $40d0: $ff
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	rst  $38                                         ; $40d6: $ff
	cp   $db                                         ; $40d7: $fe $db
	sbc  c                                           ; $40d9: $99
	halt                                             ; $40da: $76
	ld   d, h                                        ; $40db: $54
	ld   hl, $1111                                   ; $40dc: $21 $11 $11
	ld   de, $1111                                   ; $40df: $11 $11 $11
	ld   de, $1111                                   ; $40e2: $11 $11 $11
	ld   de, $7924                                   ; $40e5: $11 $24 $79
	cp   a                                           ; $40e8: $bf
	rst  $38                                         ; $40e9: $ff
	rst  $38                                         ; $40ea: $ff
	rst  $38                                         ; $40eb: $ff
	rst  $38                                         ; $40ec: $ff
	rst  $38                                         ; $40ed: $ff
	rst  $38                                         ; $40ee: $ff
	rst  $38                                         ; $40ef: $ff
	rst  $38                                         ; $40f0: $ff
	rst  $38                                         ; $40f1: $ff
	db   $ec                                         ; $40f2: $ec
	res  5, c                                        ; $40f3: $cb $a9
	ld   [hl], l                                     ; $40f5: $75
	ld   b, d                                        ; $40f6: $42
	ld   de, $1111                                   ; $40f7: $11 $11 $11
	ld   de, $1111                                   ; $40fa: $11 $11 $11
	ld   de, $1111                                   ; $40fd: $11 $11 $11
	ld   [de], a                                     ; $4100: $12
	ld   b, [hl]                                     ; $4101: $46
	sbc  h                                           ; $4102: $9c
	rst  $38                                         ; $4103: $ff
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	rst  $38                                         ; $4108: $ff
	rst  $38                                         ; $4109: $ff
	rst  $38                                         ; $410a: $ff
	rst  $38                                         ; $410b: $ff
	cp   $db                                         ; $410c: $fe $db
	xor  b                                           ; $410e: $a8
	halt                                             ; $410f: $76
	ld   b, d                                        ; $4110: $42
	ld   de, $1111                                   ; $4111: $11 $11 $11
	ld   de, $1111                                   ; $4114: $11 $11 $11
	ld   de, $1111                                   ; $4117: $11 $11 $11
	ld   de, $7a24                                   ; $411a: $11 $24 $7a
	adc  $ff                                         ; $411d: $ce $ff
	rst  $38                                         ; $411f: $ff
	rst  $38                                         ; $4120: $ff
	rst  $38                                         ; $4121: $ff
	rst  $38                                         ; $4122: $ff
	rst  $38                                         ; $4123: $ff
	rst  $38                                         ; $4124: $ff
	rst  $38                                         ; $4125: $ff
	rst  $38                                         ; $4126: $ff
	call c, $97b9                                    ; $4127: $dc $b9 $97
	ld   d, h                                        ; $412a: $54
	ld   hl, $1111                                   ; $412b: $21 $11 $11
	ld   de, $1111                                   ; $412e: $11 $11 $11
	ld   de, $1111                                   ; $4131: $11 $11 $11
	ld   de, $5713                                   ; $4134: $11 $13 $57
	sbc  l                                           ; $4137: $9d
	rst  $28                                         ; $4138: $ef
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	rst  $38                                         ; $413b: $ff
	rst  $38                                         ; $413c: $ff
	rst  $38                                         ; $413d: $ff
	rst  $38                                         ; $413e: $ff
	rst  $38                                         ; $413f: $ff
	rst  $38                                         ; $4140: $ff
	db   $fd                                         ; $4141: $fd
	db   $db                                         ; $4142: $db
	xor  b                                           ; $4143: $a8
	halt                                             ; $4144: $76
	ld   b, e                                        ; $4145: $43
	ld   de, $1111                                   ; $4146: $11 $11 $11
	ld   de, $1111                                   ; $4149: $11 $11 $11
	ld   de, $1111                                   ; $414c: $11 $11 $11
	ld   de, $6824                                   ; $414f: $11 $24 $68
	xor  l                                           ; $4152: $ad
	rst  $38                                         ; $4153: $ff
	rst  $38                                         ; $4154: $ff
	rst  $38                                         ; $4155: $ff
	rst  $38                                         ; $4156: $ff
	rst  $38                                         ; $4157: $ff
	rst  $38                                         ; $4158: $ff
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	rst  $38                                         ; $415b: $ff
	db   $ed                                         ; $415c: $ed
	jp   z, $75a9                                    ; $415d: $ca $a9 $75

	ld   b, d                                        ; $4160: $42
	ld   de, $1111                                   ; $4161: $11 $11 $11
	ld   de, $1111                                   ; $4164: $11 $11 $11
	ld   de, $1111                                   ; $4167: $11 $11 $11
	ld   de, $6824                                   ; $416a: $11 $24 $68
	cp   l                                           ; $416d: $bd
	rst  $38                                         ; $416e: $ff
	rst  $38                                         ; $416f: $ff
	rst  $38                                         ; $4170: $ff
	rst  $38                                         ; $4171: $ff
	rst  $38                                         ; $4172: $ff
	rst  $38                                         ; $4173: $ff
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	rst  $38                                         ; $4176: $ff
	db   $fd                                         ; $4177: $fd
	cp   d                                           ; $4178: $ba
	xor  c                                           ; $4179: $a9
	ld   [hl], l                                     ; $417a: $75
	ld   b, d                                        ; $417b: $42
	ld   de, $1111                                   ; $417c: $11 $11 $11
	ld   de, $1111                                   ; $417f: $11 $11 $11
	ld   de, $1111                                   ; $4182: $11 $11 $11
	ld   de, $6824                                   ; $4185: $11 $24 $68
	cp   h                                           ; $4188: $bc
	rst  $38                                         ; $4189: $ff
	rst  $38                                         ; $418a: $ff
	rst  $38                                         ; $418b: $ff
	rst  $38                                         ; $418c: $ff
	rst  $38                                         ; $418d: $ff
	rst  $38                                         ; $418e: $ff
	rst  $38                                         ; $418f: $ff
	rst  $38                                         ; $4190: $ff
	rst  $38                                         ; $4191: $ff
	xor  $cb                                         ; $4192: $ee $cb
	sbc  b                                           ; $4194: $98
	ld   [hl], l                                     ; $4195: $75
	ld   b, e                                        ; $4196: $43
	ld   de, $1111                                   ; $4197: $11 $11 $11
	ld   de, $1111                                   ; $419a: $11 $11 $11
	ld   de, $1111                                   ; $419d: $11 $11 $11
	ld   de, $5713                                   ; $41a0: $11 $13 $57
	sbc  h                                           ; $41a3: $9c
	rst  JumpTable                                         ; $41a4: $df
	rst  $38                                         ; $41a5: $ff
	rst  $38                                         ; $41a6: $ff
	rst  $38                                         ; $41a7: $ff

Call_0c9_41a8:
	rst  $38                                         ; $41a8: $ff
	rst  $38                                         ; $41a9: $ff
	rst  $38                                         ; $41aa: $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	cp   $cc                                         ; $41ad: $fe $cc
	cp   c                                           ; $41af: $b9
	add  [hl]                                        ; $41b0: $86
	ld   d, e                                        ; $41b1: $53
	ld   hl, $1111                                   ; $41b2: $21 $11 $11
	ld   de, $1111                                   ; $41b5: $11 $11 $11
	ld   de, $1111                                   ; $41b8: $11 $11 $11
	ld   de, $4612                                   ; $41bb: $11 $12 $46
	adc  e                                           ; $41be: $8b
	adc  $ff                                         ; $41bf: $ce $ff
	rst  $38                                         ; $41c1: $ff
	rst  $38                                         ; $41c2: $ff
	rst  $38                                         ; $41c3: $ff
	rst  $38                                         ; $41c4: $ff
	rst  $38                                         ; $41c5: $ff
	rst  $38                                         ; $41c6: $ff
	rst  $38                                         ; $41c7: $ff
	cp   $dc                                         ; $41c8: $fe $dc
	cp   c                                           ; $41ca: $b9
	sub  a                                           ; $41cb: $97
	ld   d, h                                        ; $41cc: $54
	ld   hl, $1101                                   ; $41cd: $21 $01 $11
	ld   de, $1111                                   ; $41d0: $11 $11 $11
	ld   de, $1111                                   ; $41d3: $11 $11 $11
	ld   de, $3511                                   ; $41d6: $11 $11 $35
	ld   a, c                                        ; $41d9: $79
	cp   l                                           ; $41da: $bd
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	rst  $38                                         ; $41dd: $ff
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	rst  $38                                         ; $41e0: $ff
	rst  $38                                         ; $41e1: $ff
	rst  $38                                         ; $41e2: $ff
	rst  $38                                         ; $41e3: $ff
	db   $ec                                         ; $41e4: $ec
	jp   z, Jump_0c9_6497                            ; $41e5: $ca $97 $64

	ld   [hl-], a                                    ; $41e8: $32
	ld   de, $1111                                   ; $41e9: $11 $11 $11
	ld   de, $1111                                   ; $41ec: $11 $11 $11
	ld   de, $1111                                   ; $41ef: $11 $11 $11
	ld   de, $6824                                   ; $41f2: $11 $24 $68
	cp   [hl]                                        ; $41f5: $be
	rst  $38                                         ; $41f6: $ff
	rst  $38                                         ; $41f7: $ff
	rst  $38                                         ; $41f8: $ff
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	rst  $38                                         ; $41fc: $ff
	rst  $38                                         ; $41fd: $ff
	rst  $38                                         ; $41fe: $ff
	db   $ed                                         ; $41ff: $ed
	res  3, b                                        ; $4200: $cb $98
	ld   h, l                                        ; $4202: $65
	ld   [hl-], a                                    ; $4203: $32
	ld   de, $1111                                   ; $4204: $11 $11 $11
	ld   de, $1111                                   ; $4207: $11 $11 $11
	ld   de, $1111                                   ; $420a: $11 $11 $11
	ld   de, $6824                                   ; $420d: $11 $24 $68
	cp   [hl]                                        ; $4210: $be
	rst  $38                                         ; $4211: $ff
	rst  $38                                         ; $4212: $ff
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	rst  $38                                         ; $4217: $ff
	rst  $38                                         ; $4218: $ff
	rst  $38                                         ; $4219: $ff
	cp   $ca                                         ; $421a: $fe $ca
	xor  b                                           ; $421c: $a8
	ld   h, l                                        ; $421d: $65
	ld   [hl-], a                                    ; $421e: $32
	ld   de, $1111                                   ; $421f: $11 $11 $11
	ld   de, $1111                                   ; $4222: $11 $11 $11
	ld   de, $1111                                   ; $4225: $11 $11 $11
	ld   de, $7935                                   ; $4228: $11 $35 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $422b: $cf
	rst  $38                                         ; $422c: $ff
	rst  $38                                         ; $422d: $ff
	rst  $38                                         ; $422e: $ff
	rst  $38                                         ; $422f: $ff
	rst  $38                                         ; $4230: $ff
	rst  $38                                         ; $4231: $ff
	rst  $38                                         ; $4232: $ff
	rst  $38                                         ; $4233: $ff
	rst  $38                                         ; $4234: $ff
	db   $ec                                         ; $4235: $ec
	jp   z, Jump_0c9_6487                            ; $4236: $ca $87 $64

	ld   hl, $1111                                   ; $4239: $21 $11 $11
	ld   de, $1111                                   ; $423c: $11 $11 $11
	ld   de, $1111                                   ; $423f: $11 $11 $11
	ld   de, $4712                                   ; $4242: $11 $12 $47
	sbc  l                                           ; $4245: $9d
	rst  $28                                         ; $4246: $ef
	rst  $38                                         ; $4247: $ff
	rst  $38                                         ; $4248: $ff
	rst  $38                                         ; $4249: $ff
	rst  $38                                         ; $424a: $ff
	rst  $38                                         ; $424b: $ff
	rst  $38                                         ; $424c: $ff
	rst  $38                                         ; $424d: $ff
	rst  $38                                         ; $424e: $ff
	rst  $38                                         ; $424f: $ff
	call c, $75a8                                    ; $4250: $dc $a8 $75
	ld   sp, $1111                                   ; $4253: $31 $11 $11
	ld   de, $1111                                   ; $4256: $11 $11 $11
	ld   de, $1111                                   ; $4259: $11 $11 $11
	ld   de, $6914                                   ; $425c: $11 $14 $69
	cp   [hl]                                        ; $425f: $be
	rst  $38                                         ; $4260: $ff
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	rst  $38                                         ; $4263: $ff
	rst  $38                                         ; $4264: $ff
	rst  $38                                         ; $4265: $ff
	rst  $38                                         ; $4266: $ff
	rst  $38                                         ; $4267: $ff
	cp   $ed                                         ; $4268: $fe $ed
	cp   d                                           ; $426a: $ba
	sub  a                                           ; $426b: $97
	ld   d, h                                        ; $426c: $54
	ld   hl, $1111                                   ; $426d: $21 $11 $11
	ld   de, $1111                                   ; $4270: $11 $11 $11
	ld   de, $1111                                   ; $4273: $11 $11 $11
	ld   de, $9c46                                   ; $4276: $11 $46 $9c
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	rst  $38                                         ; $427b: $ff
	rst  $38                                         ; $427c: $ff
	rst  $38                                         ; $427d: $ff
	rst  $38                                         ; $427e: $ff
	rst  $38                                         ; $427f: $ff
	rst  $38                                         ; $4280: $ff
	rst  $38                                         ; $4281: $ff
	db   $ec                                         ; $4282: $ec
	cp   c                                           ; $4283: $b9
	add  [hl]                                        ; $4284: $86
	ld   d, h                                        ; $4285: $54
	ld   hl, $1111                                   ; $4286: $21 $11 $11
	ld   de, $1111                                   ; $4289: $11 $11 $11
	ld   de, $1111                                   ; $428c: $11 $11 $11
	ld   de, $8d36                                   ; $428f: $11 $36 $8d
	rst  $38                                         ; $4292: $ff
	rst  $38                                         ; $4293: $ff
	rst  $38                                         ; $4294: $ff
	rst  $38                                         ; $4295: $ff
	rst  $38                                         ; $4296: $ff
	rst  $38                                         ; $4297: $ff
	rst  $38                                         ; $4298: $ff
	rst  $38                                         ; $4299: $ff
	rst  $38                                         ; $429a: $ff
	db   $db                                         ; $429b: $db
	sub  a                                           ; $429c: $97
	ld   h, h                                        ; $429d: $64
	ld   hl, $1111                                   ; $429e: $21 $11 $11
	ld   de, $1111                                   ; $42a1: $11 $11 $11
	ld   de, $1111                                   ; $42a4: $11 $11 $11
	ld   de, $6b13                                   ; $42a7: $11 $13 $6b
	rst  $38                                         ; $42aa: $ff
	rst  $38                                         ; $42ab: $ff
	rst  $38                                         ; $42ac: $ff
	rst  $38                                         ; $42ad: $ff
	rst  $38                                         ; $42ae: $ff
	rst  $38                                         ; $42af: $ff
	rst  $38                                         ; $42b0: $ff
	rst  $38                                         ; $42b1: $ff
	rst  $38                                         ; $42b2: $ff
	db   $ec                                         ; $42b3: $ec
	cp   c                                           ; $42b4: $b9
	ld   h, l                                        ; $42b5: $65
	ld   sp, $1111                                   ; $42b6: $31 $11 $11
	ld   de, $1111                                   ; $42b9: $11 $11 $11
	ld   de, $1111                                   ; $42bc: $11 $11 $11
	ld   de, $7b25                                   ; $42bf: $11 $25 $7b
	rst  $38                                         ; $42c2: $ff
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	rst  $38                                         ; $42c7: $ff
	rst  $38                                         ; $42c8: $ff
	rst  $38                                         ; $42c9: $ff
	rst  $38                                         ; $42ca: $ff
	call c, Call_0c9_5397                            ; $42cb: $dc $97 $53
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	ld   de, $1111                                   ; $42d1: $11 $11 $11
	ld   de, $1111                                   ; $42d4: $11 $11 $11
	inc  de                                          ; $42d7: $13
	ld   b, a                                        ; $42d8: $47
	rst  $28                                         ; $42d9: $ef
	rst  $38                                         ; $42da: $ff
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	rst  $38                                         ; $42df: $ff
	rst  $38                                         ; $42e0: $ff
	rst  $38                                         ; $42e1: $ff
	db   $fd                                         ; $42e2: $fd
	cp   c                                           ; $42e3: $b9
	ld   h, e                                        ; $42e4: $63
	ld   hl, $1111                                   ; $42e5: $21 $11 $11
	ld   de, $1111                                   ; $42e8: $11 $11 $11
	ld   de, $1111                                   ; $42eb: $11 $11 $11
	ld   de, $ff17                                   ; $42ee: $11 $17 $ff
	rst  $38                                         ; $42f1: $ff
	rst  $38                                         ; $42f2: $ff
	rst  $38                                         ; $42f3: $ff
	rst  $38                                         ; $42f4: $ff
	rst  $38                                         ; $42f5: $ff
	rst  $38                                         ; $42f6: $ff
	rst  $38                                         ; $42f7: $ff
	rst  $38                                         ; $42f8: $ff
	db   $fd                                         ; $42f9: $fd
	ret                                              ; $42fa: $c9


	ld   d, e                                        ; $42fb: $53
	ld   de, $1111                                   ; $42fc: $11 $11 $11
	ld   de, $1111                                   ; $42ff: $11 $11 $11
	ld   de, $1111                                   ; $4302: $11 $11 $11
	ld   de, $ff8c                                   ; $4305: $11 $8c $ff
	rst  $38                                         ; $4308: $ff
	rst  $38                                         ; $4309: $ff
	rst  $38                                         ; $430a: $ff
	rst  $38                                         ; $430b: $ff
	rst  $38                                         ; $430c: $ff
	rst  $38                                         ; $430d: $ff
	rst  $38                                         ; $430e: $ff
	rst  $38                                         ; $430f: $ff
	db   $fc                                         ; $4310: $fc
	add  l                                           ; $4311: $85
	ld   sp, $1111                                   ; $4312: $31 $11 $11
	ld   de, $1111                                   ; $4315: $11 $11 $11
	ld   de, $1111                                   ; $4318: $11 $11 $11
	ld   de, $ff4c                                   ; $431b: $11 $4c $ff
	rst  $38                                         ; $431e: $ff
	rst  $38                                         ; $431f: $ff
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	rst  $38                                         ; $4322: $ff
	rst  $38                                         ; $4323: $ff
	rst  $38                                         ; $4324: $ff
	rst  $38                                         ; $4325: $ff
	db   $fd                                         ; $4326: $fd
	sub  l                                           ; $4327: $95
	ld   sp, $1111                                   ; $4328: $31 $11 $11
	ld   de, $1111                                   ; $432b: $11 $11 $11
	ld   de, $1111                                   ; $432e: $11 $11 $11
	ld   de, $ff9c                                   ; $4331: $11 $9c $ff
	rst  $38                                         ; $4334: $ff
	rst  $38                                         ; $4335: $ff
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	rst  $38                                         ; $4338: $ff
	rst  $38                                         ; $4339: $ff
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	jp   c, $1154                                    ; $433c: $da $54 $11

	ld   de, $1111                                   ; $433f: $11 $11 $11
	ld   de, $1111                                   ; $4342: $11 $11 $11
	ld   de, $1b11                                   ; $4345: $11 $11 $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4348: $cf
	rst  $38                                         ; $4349: $ff
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	rst  $38                                         ; $434e: $ff
	rst  $38                                         ; $434f: $ff
	rst  $38                                         ; $4350: $ff
	db   $fc                                         ; $4351: $fc
	add  e                                           ; $4352: $83
	ld   de, $1111                                   ; $4353: $11 $11 $11
	ld   de, $1111                                   ; $4356: $11 $11 $11
	ld   de, $1111                                   ; $4359: $11 $11 $11
	ld   a, [hl-]                                    ; $435c: $3a
	rst  $28                                         ; $435d: $ef
	rst  $38                                         ; $435e: $ff
	rst  $38                                         ; $435f: $ff
	rst  $38                                         ; $4360: $ff
	rst  $38                                         ; $4361: $ff
	rst  $38                                         ; $4362: $ff
	rst  $38                                         ; $4363: $ff
	rst  $38                                         ; $4364: $ff
	rst  $38                                         ; $4365: $ff
	db   $db                                         ; $4366: $db
	ld   h, d                                        ; $4367: $62
	ld   de, $1111                                   ; $4368: $11 $11 $11
	ld   de, $1111                                   ; $436b: $11 $11 $11
	ld   de, $1111                                   ; $436e: $11 $11 $11
	ld   a, h                                        ; $4371: $7c
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	rst  $38                                         ; $4374: $ff
	rst  $38                                         ; $4375: $ff
	rst  $38                                         ; $4376: $ff
	rst  $38                                         ; $4377: $ff
	rst  $38                                         ; $4378: $ff
	rst  $38                                         ; $4379: $ff
	rst  $38                                         ; $437a: $ff
	rst  $10                                         ; $437b: $d7
	ld   hl, $1111                                   ; $437c: $21 $11 $11
	ld   de, $1111                                   ; $437f: $11 $11 $11
	ld   de, $1111                                   ; $4382: $11 $11 $11
	daa                                              ; $4385: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4386: $cf
	rst  $38                                         ; $4387: $ff
	rst  $38                                         ; $4388: $ff
	rst  $38                                         ; $4389: $ff
	rst  $38                                         ; $438a: $ff
	rst  $38                                         ; $438b: $ff
	rst  $38                                         ; $438c: $ff
	rst  $38                                         ; $438d: $ff
	rst  $38                                         ; $438e: $ff
	db   $ec                                         ; $438f: $ec
	ld   d, d                                        ; $4390: $52
	ld   de, $1111                                   ; $4391: $11 $11 $11
	ld   de, $1111                                   ; $4394: $11 $11 $11
	ld   de, $1511                                   ; $4397: $11 $11 $15
	xor  a                                           ; $439a: $af
	rst  $38                                         ; $439b: $ff
	rst  $38                                         ; $439c: $ff
	rst  $38                                         ; $439d: $ff
	rst  $38                                         ; $439e: $ff
	rst  $38                                         ; $439f: $ff
	rst  $38                                         ; $43a0: $ff
	rst  $38                                         ; $43a1: $ff
	rst  $38                                         ; $43a2: $ff
	ei                                               ; $43a3: $fb
	ld   h, e                                        ; $43a4: $63
	ld   de, $1111                                   ; $43a5: $11 $11 $11
	ld   de, $1111                                   ; $43a8: $11 $11 $11
	ld   de, $4511                                   ; $43ab: $11 $11 $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ae: $cf
	rst  $38                                         ; $43af: $ff
	rst  $38                                         ; $43b0: $ff
	rst  $38                                         ; $43b1: $ff
	rst  $38                                         ; $43b2: $ff
	rst  $38                                         ; $43b3: $ff
	rst  $38                                         ; $43b4: $ff
	rst  $38                                         ; $43b5: $ff
	rst  $38                                         ; $43b6: $ff
	add  sp, $41                                     ; $43b7: $e8 $41
	ld   de, $1111                                   ; $43b9: $11 $11 $11
	ld   de, $1111                                   ; $43bc: $11 $11 $11
	ld   de, $7b13                                   ; $43bf: $11 $13 $7b
	rst  $38                                         ; $43c2: $ff
	rst  $38                                         ; $43c3: $ff
	rst  $38                                         ; $43c4: $ff
	rst  $38                                         ; $43c5: $ff
	rst  $38                                         ; $43c6: $ff
	rst  $38                                         ; $43c7: $ff
	rst  $38                                         ; $43c8: $ff
	rst  $38                                         ; $43c9: $ff
	db   $fc                                         ; $43ca: $fc
	ld   [hl], e                                     ; $43cb: $73
	ld   de, $1111                                   ; $43cc: $11 $11 $11
	ld   de, $1111                                   ; $43cf: $11 $11 $11
	ld   de, $6911                                   ; $43d2: $11 $11 $69
	rst  $38                                         ; $43d5: $ff
	rst  $38                                         ; $43d6: $ff
	rst  $38                                         ; $43d7: $ff
	rst  $38                                         ; $43d8: $ff
	rst  $38                                         ; $43d9: $ff
	rst  $38                                         ; $43da: $ff
	rst  $38                                         ; $43db: $ff
	rst  $38                                         ; $43dc: $ff
	ei                                               ; $43dd: $fb
	ld   h, e                                        ; $43de: $63
	ld   de, $1111                                   ; $43df: $11 $11 $11
	ld   de, $1111                                   ; $43e2: $11 $11 $11
	ld   de, $9b13                                   ; $43e5: $11 $13 $9b
	rst  $38                                         ; $43e8: $ff
	rst  $38                                         ; $43e9: $ff
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	rst  $38                                         ; $43ec: $ff
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	rst  $10                                         ; $43f0: $d7
	ld   b, c                                        ; $43f1: $41
	ld   de, $1111                                   ; $43f2: $11 $11 $11
	ld   de, $1111                                   ; $43f5: $11 $11 $11
	ld   de, $df3a                                   ; $43f8: $11 $3a $df
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	rst  $38                                         ; $43fd: $ff
	rst  $38                                         ; $43fe: $ff
	rst  $38                                         ; $43ff: $ff
	rst  $38                                         ; $4400: $ff
	rst  $38                                         ; $4401: $ff
	ld   a, [$1151]                                  ; $4402: $fa $51 $11
	ld   de, $1111                                   ; $4405: $11 $11 $11
	ld   de, $1111                                   ; $4408: $11 $11 $11
	ld   d, a                                        ; $440b: $57
	rst  JumpTable                                         ; $440c: $df
	rst  $38                                         ; $440d: $ff
	rst  $38                                         ; $440e: $ff
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	rst  $38                                         ; $4411: $ff
	rst  $38                                         ; $4412: $ff
	rst  $38                                         ; $4413: $ff
	db   $ec                                         ; $4414: $ec
	ld   d, c                                        ; $4415: $51
	ld   de, $1111                                   ; $4416: $11 $11 $11
	ld   de, $1111                                   ; $4419: $11 $11 $11
	ld   de, $cf48                                   ; $441c: $11 $48 $cf
	rst  $38                                         ; $441f: $ff
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	rst  $38                                         ; $4423: $ff
	rst  $38                                         ; $4424: $ff
	rst  $38                                         ; $4425: $ff
	db   $ec                                         ; $4426: $ec
	ld   d, c                                        ; $4427: $51
	ld   de, $1111                                   ; $4428: $11 $11 $11
	ld   de, $1111                                   ; $442b: $11 $11 $11
	ld   de, $df49                                   ; $442e: $11 $49 $df
	rst  $38                                         ; $4431: $ff
	rst  $38                                         ; $4432: $ff
	rst  $38                                         ; $4433: $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	rst  $38                                         ; $4436: $ff
	rst  $38                                         ; $4437: $ff
	jp   c, $1131                                    ; $4438: $da $31 $11

	ld   de, $1111                                   ; $443b: $11 $11 $11
	ld   de, $1311                                   ; $443e: $11 $11 $13
	ld   e, d                                        ; $4441: $5a
	rst  $38                                         ; $4442: $ff
	rst  $38                                         ; $4443: $ff
	rst  $38                                         ; $4444: $ff
	rst  $38                                         ; $4445: $ff
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	or   [hl]                                        ; $444a: $b6
	ld   de, $1111                                   ; $444b: $11 $11 $11
	ld   de, $1111                                   ; $444e: $11 $11 $11
	ld   de, $7f14                                   ; $4451: $11 $14 $7f
	rst  $38                                         ; $4454: $ff
	rst  $38                                         ; $4455: $ff
	rst  $38                                         ; $4456: $ff
	rst  $38                                         ; $4457: $ff
	rst  $38                                         ; $4458: $ff
	rst  $38                                         ; $4459: $ff
	rst  $38                                         ; $445a: $ff
	db   $fd                                         ; $445b: $fd
	ld   [hl], c                                     ; $445c: $71
	ld   de, $1111                                   ; $445d: $11 $11 $11
	ld   de, $1111                                   ; $4460: $11 $11 $11
	ld   de, $ff27                                   ; $4463: $11 $27 $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	rst  $38                                         ; $4468: $ff
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff
	rst  $38                                         ; $446c: $ff
	rst  $10                                         ; $446d: $d7
	ld   hl, $1111                                   ; $446e: $21 $11 $11
	ld   de, $1111                                   ; $4471: $11 $11 $11
	ld   de, $8e13                                   ; $4474: $11 $13 $8e
	rst  $38                                         ; $4477: $ff
	rst  $38                                         ; $4478: $ff
	rst  $38                                         ; $4479: $ff
	rst  $38                                         ; $447a: $ff
	rst  $38                                         ; $447b: $ff
	rst  $38                                         ; $447c: $ff
	rst  $38                                         ; $447d: $ff
	ei                                               ; $447e: $fb
	ld   d, d                                        ; $447f: $52
	ld   de, $1111                                   ; $4480: $11 $11 $11
	ld   de, $1111                                   ; $4483: $11 $11 $11
	ld   de, $ef3a                                   ; $4486: $11 $3a $ef
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	rst  $38                                         ; $448d: $ff
	rst  $38                                         ; $448e: $ff
	rst  $38                                         ; $448f: $ff
	sub  [hl]                                        ; $4490: $96
	ld   de, $1111                                   ; $4491: $11 $11 $11
	ld   de, $1111                                   ; $4494: $11 $11 $11
	ld   de, $bf15                                   ; $4497: $11 $15 $bf
	rst  $38                                         ; $449a: $ff
	rst  $38                                         ; $449b: $ff
	rst  $38                                         ; $449c: $ff
	rst  $38                                         ; $449d: $ff
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	reti                                             ; $44a1: $d9


	ld   h, c                                        ; $44a2: $61
	ld   de, $1111                                   ; $44a3: $11 $11 $11
	ld   de, $1111                                   ; $44a6: $11 $11 $11
	ld   de, $ff7c                                   ; $44a9: $11 $7c $ff
	rst  $38                                         ; $44ac: $ff
	rst  $38                                         ; $44ad: $ff
	rst  $38                                         ; $44ae: $ff
	rst  $38                                         ; $44af: $ff
	rst  $38                                         ; $44b0: $ff
	rst  $38                                         ; $44b1: $ff
	db   $fd                                         ; $44b2: $fd
	and  h                                           ; $44b3: $a4
	ld   de, $1111                                   ; $44b4: $11 $11 $11
	ld   de, $1111                                   ; $44b7: $11 $11 $11
	ld   de, $df28                                   ; $44ba: $11 $28 $df
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	rst  $38                                         ; $44c1: $ff
	rst  $38                                         ; $44c2: $ff
	rst  $38                                         ; $44c3: $ff
	ret  c                                           ; $44c4: $d8

	ld   sp, $1111                                   ; $44c5: $31 $11 $11
	ld   de, $1111                                   ; $44c8: $11 $11 $11
	ld   de, $ad14                                   ; $44cb: $11 $14 $ad
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	rst  $38                                         ; $44d0: $ff
	rst  $38                                         ; $44d1: $ff
	rst  $38                                         ; $44d2: $ff
	rst  $38                                         ; $44d3: $ff
	rst  $38                                         ; $44d4: $ff
	ld   a, [$1141]                                  ; $44d5: $fa $41 $11
	ld   de, $1111                                   ; $44d8: $11 $11 $11
	ld   de, $1311                                   ; $44db: $11 $11 $13
	sbc  h                                           ; $44de: $9c
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	rst  $38                                         ; $44e1: $ff
	rst  $38                                         ; $44e2: $ff
	rst  $38                                         ; $44e3: $ff
	rst  $38                                         ; $44e4: $ff
	rst  $38                                         ; $44e5: $ff
	ld   a, [$1151]                                  ; $44e6: $fa $51 $11
	ld   de, $1111                                   ; $44e9: $11 $11 $11
	ld   de, $1311                                   ; $44ec: $11 $11 $13
	sbc  l                                           ; $44ef: $9d
	rst  $38                                         ; $44f0: $ff
	rst  $38                                         ; $44f1: $ff
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	jp   hl                                          ; $44f7: $e9


	ld   b, c                                        ; $44f8: $41
	ld   de, $1111                                   ; $44f9: $11 $11 $11
	ld   de, $1111                                   ; $44fc: $11 $11 $11
	dec  d                                           ; $44ff: $15
	xor  l                                           ; $4500: $ad
	rst  $38                                         ; $4501: $ff
	rst  $38                                         ; $4502: $ff
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	rst  $38                                         ; $4505: $ff
	rst  $38                                         ; $4506: $ff
	rst  $38                                         ; $4507: $ff
	rst  $10                                         ; $4508: $d7
	ld   hl, $1111                                   ; $4509: $21 $11 $11
	ld   de, $1111                                   ; $450c: $11 $11 $11
	ld   de, $bf27                                   ; $450f: $11 $27 $bf
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	rst  $38                                         ; $4514: $ff
	rst  $38                                         ; $4515: $ff
	rst  $38                                         ; $4516: $ff
	rst  $38                                         ; $4517: $ff
	cp   $a5                                         ; $4518: $fe $a5
	ld   de, $1111                                   ; $451a: $11 $11 $11
	ld   de, $1111                                   ; $451d: $11 $11 $11
	ld   de, $ef49                                   ; $4520: $11 $49 $ef
	rst  $38                                         ; $4523: $ff
	rst  $38                                         ; $4524: $ff
	rst  $38                                         ; $4525: $ff
	rst  $38                                         ; $4526: $ff
	rst  $38                                         ; $4527: $ff
	rst  $38                                         ; $4528: $ff
	db   $fd                                         ; $4529: $fd
	add  e                                           ; $452a: $83
	ld   de, $1111                                   ; $452b: $11 $11 $11
	ld   de, $1111                                   ; $452e: $11 $11 $11
	ld   [de], a                                     ; $4531: $12
	ld   l, e                                        ; $4532: $6b
	rst  $28                                         ; $4533: $ef
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	rst  $38                                         ; $4536: $ff
	rst  $38                                         ; $4537: $ff
	rst  $38                                         ; $4538: $ff
	rst  $38                                         ; $4539: $ff
	ei                                               ; $453a: $fb
	ld   d, c                                        ; $453b: $51
	ld   de, $1111                                   ; $453c: $11 $11 $11
	ld   de, $1111                                   ; $453f: $11 $11 $11
	inc  b                                           ; $4542: $04
	xor  l                                           ; $4543: $ad
	rst  $38                                         ; $4544: $ff
	rst  $38                                         ; $4545: $ff
	rst  $38                                         ; $4546: $ff
	rst  $38                                         ; $4547: $ff
	rst  $38                                         ; $4548: $ff
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	or   a                                           ; $454b: $b7
	ld   de, $1111                                   ; $454c: $11 $11 $11
	ld   de, $1111                                   ; $454f: $11 $11 $11
	ld   de, $cf38                                   ; $4552: $11 $38 $cf
	rst  $38                                         ; $4555: $ff
	rst  $38                                         ; $4556: $ff
	rst  $38                                         ; $4557: $ff
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	rst  $38                                         ; $455a: $ff
	db   $fd                                         ; $455b: $fd
	add  e                                           ; $455c: $83
	ld   de, $1111                                   ; $455d: $11 $11 $11
	ld   de, $1111                                   ; $4560: $11 $11 $11
	ld   [de], a                                     ; $4563: $12
	ld   l, h                                        ; $4564: $6c
	rst  $38                                         ; $4565: $ff
	rst  $38                                         ; $4566: $ff
	rst  $38                                         ; $4567: $ff
	rst  $38                                         ; $4568: $ff
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	jp   c, $1141                                    ; $456c: $da $41 $11

	ld   de, $1111                                   ; $456f: $11 $11 $11
	ld   de, $1511                                   ; $4572: $11 $11 $15
	xor  a                                           ; $4575: $af
	rst  $38                                         ; $4576: $ff
	rst  $38                                         ; $4577: $ff
	rst  $38                                         ; $4578: $ff
	rst  $38                                         ; $4579: $ff
	rst  $38                                         ; $457a: $ff
	rst  $38                                         ; $457b: $ff
	rst  $38                                         ; $457c: $ff
	or   [hl]                                        ; $457d: $b6
	ld   de, $1111                                   ; $457e: $11 $11 $11
	ld   de, $1111                                   ; $4581: $11 $11 $11
	ld   de, $df39                                   ; $4584: $11 $39 $df
	rst  $38                                         ; $4587: $ff
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	rst  $38                                         ; $458c: $ff
	cp   $93                                         ; $458d: $fe $93
	ld   de, $1111                                   ; $458f: $11 $11 $11
	ld   de, $1111                                   ; $4592: $11 $11 $11
	ld   de, $ef5b                                   ; $4595: $11 $5b $ef
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	rst  $38                                         ; $459b: $ff
	rst  $38                                         ; $459c: $ff
	rst  $38                                         ; $459d: $ff
	db   $fc                                         ; $459e: $fc
	ld   [hl], c                                     ; $459f: $71
	ld   de, $1111                                   ; $45a0: $11 $11 $11
	ld   de, $1111                                   ; $45a3: $11 $11 $11
	inc  de                                          ; $45a6: $13
	adc  l                                           ; $45a7: $8d
	rst  $38                                         ; $45a8: $ff
	rst  $38                                         ; $45a9: $ff
	rst  $38                                         ; $45aa: $ff
	rst  $38                                         ; $45ab: $ff
	rst  $38                                         ; $45ac: $ff
	rst  $38                                         ; $45ad: $ff
	rst  $38                                         ; $45ae: $ff
	jp   hl                                          ; $45af: $e9


	ld   b, c                                        ; $45b0: $41
	ld   de, $1111                                   ; $45b1: $11 $11 $11
	ld   de, $1111                                   ; $45b4: $11 $11 $11
	inc  d                                           ; $45b7: $14
	sbc  [hl]                                        ; $45b8: $9e
	rst  $38                                         ; $45b9: $ff
	rst  $38                                         ; $45ba: $ff
	rst  $38                                         ; $45bb: $ff
	rst  $38                                         ; $45bc: $ff
	rst  $38                                         ; $45bd: $ff
	rst  $38                                         ; $45be: $ff
	rst  $38                                         ; $45bf: $ff
	reti                                             ; $45c0: $d9


	ld   sp, $1111                                   ; $45c1: $31 $11 $11
	ld   de, $1111                                   ; $45c4: $11 $11 $11
	ld   de, $bd15                                   ; $45c7: $11 $15 $bd
	rst  $38                                         ; $45ca: $ff
	rst  $38                                         ; $45cb: $ff
	rst  $38                                         ; $45cc: $ff
	rst  $38                                         ; $45cd: $ff
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	db   $fd                                         ; $45d0: $fd
	and  d                                           ; $45d1: $a2
	ld   de, $1111                                   ; $45d2: $11 $11 $11
	ld   de, $1111                                   ; $45d5: $11 $11 $11
	inc  de                                          ; $45d8: $13
	cp   h                                           ; $45d9: $bc
	rst  $38                                         ; $45da: $ff
	rst  $38                                         ; $45db: $ff
	rst  $38                                         ; $45dc: $ff
	rst  $38                                         ; $45dd: $ff
	rst  $38                                         ; $45de: $ff
	rst  $38                                         ; $45df: $ff
	rst  $38                                         ; $45e0: $ff
	db   $e4                                         ; $45e1: $e4
	ld   b, c                                        ; $45e2: $41
	ld   de, $1111                                   ; $45e3: $11 $11 $11
	ld   de, $1211                                   ; $45e6: $11 $11 $12
	inc  e                                           ; $45e9: $1c
	rst  $28                                         ; $45ea: $ef
	rst  $38                                         ; $45eb: $ff
	rst  $38                                         ; $45ec: $ff
	rst  $38                                         ; $45ed: $ff
	rst  $38                                         ; $45ee: $ff
	rst  $38                                         ; $45ef: $ff
	rst  $38                                         ; $45f0: $ff
	xor  $41                                         ; $45f1: $ee $41
	ld   de, $1111                                   ; $45f3: $11 $11 $11
	ld   de, $1111                                   ; $45f6: $11 $11 $11
	inc  de                                          ; $45f9: $13
	ld   a, a                                        ; $45fa: $7f
	rst  $38                                         ; $45fb: $ff
	rst  $38                                         ; $45fc: $ff
	rst  $38                                         ; $45fd: $ff
	rst  $38                                         ; $45fe: $ff
	rst  $38                                         ; $45ff: $ff
	rst  $38                                         ; $4600: $ff
	rst  $38                                         ; $4601: $ff
	jp   z, $1111                                    ; $4602: $ca $11 $11

	ld   de, $1111                                   ; $4605: $11 $11 $11
	ld   de, $6311                                   ; $4608: $11 $11 $63
	rst  $28                                         ; $460b: $ef
	rst  $38                                         ; $460c: $ff
	rst  $38                                         ; $460d: $ff
	rst  $38                                         ; $460e: $ff
	rst  $38                                         ; $460f: $ff
	rst  $38                                         ; $4610: $ff
	rst  $38                                         ; $4611: $ff
	rst  $38                                         ; $4612: $ff
	push bc                                          ; $4613: $c5
	ld   de, $1111                                   ; $4614: $11 $11 $11
	ld   de, $1111                                   ; $4617: $11 $11 $11
	ld   de, $ff86                                   ; $461a: $11 $86 $ff
	rst  $38                                         ; $461d: $ff
	rst  $38                                         ; $461e: $ff
	rst  $38                                         ; $461f: $ff
	rst  $38                                         ; $4620: $ff
	rst  $38                                         ; $4621: $ff
	rst  $38                                         ; $4622: $ff
	db   $fc                                         ; $4623: $fc
	sub  c                                           ; $4624: $91
	ld   de, $1111                                   ; $4625: $11 $11 $11
	ld   de, $1111                                   ; $4628: $11 $11 $11
	dec  d                                           ; $462b: $15
	adc  e                                           ; $462c: $8b
	rst  $38                                         ; $462d: $ff
	rst  $38                                         ; $462e: $ff
	rst  $38                                         ; $462f: $ff
	rst  $38                                         ; $4630: $ff
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	ld   sp, hl                                      ; $4634: $f9
	ld   [hl], c                                     ; $4635: $71
	ld   de, $1111                                   ; $4636: $11 $11 $11
	ld   de, $1111                                   ; $4639: $11 $11 $11
	ld   a, [de]                                     ; $463c: $1a
	sbc  [hl]                                        ; $463d: $9e
	rst  $38                                         ; $463e: $ff
	rst  $38                                         ; $463f: $ff
	rst  $38                                         ; $4640: $ff
	rst  $38                                         ; $4641: $ff
	rst  $38                                         ; $4642: $ff
	rst  $38                                         ; $4643: $ff
	rst  $38                                         ; $4644: $ff
	ld   a, [$1151]                                  ; $4645: $fa $51 $11
	ld   de, $1111                                   ; $4648: $11 $11 $11
	ld   de, $1911                                   ; $464b: $11 $11 $19
	adc  [hl]                                        ; $464e: $8e
	rst  $38                                         ; $464f: $ff
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	rst  $38                                         ; $4652: $ff
	rst  $38                                         ; $4653: $ff
	rst  $38                                         ; $4654: $ff
	rst  $38                                         ; $4655: $ff
	db   $ec                                         ; $4656: $ec
	ld   [hl], c                                     ; $4657: $71
	ld   de, $1111                                   ; $4658: $11 $11 $11
	ld   de, $1111                                   ; $465b: $11 $11 $11
	inc  de                                          ; $465e: $13
	ret                                              ; $465f: $c9


	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	rst  $38                                         ; $4662: $ff
	rst  $38                                         ; $4663: $ff
	rst  $38                                         ; $4664: $ff
	rst  $38                                         ; $4665: $ff
	rst  $38                                         ; $4666: $ff
	db   $fd                                         ; $4667: $fd
	sub  c                                           ; $4668: $91
	ld   de, $1111                                   ; $4669: $11 $11 $11
	ld   de, $1111                                   ; $466c: $11 $11 $11
	ld   de, $ffb9                                   ; $466f: $11 $b9 $ff
	rst  $38                                         ; $4672: $ff
	rst  $38                                         ; $4673: $ff
	rst  $38                                         ; $4674: $ff
	rst  $38                                         ; $4675: $ff
	rst  $38                                         ; $4676: $ff
	rst  $38                                         ; $4677: $ff
	cp   $a4                                         ; $4678: $fe $a4
	ld   de, $1111                                   ; $467a: $11 $11 $11
	ld   de, $1111                                   ; $467d: $11 $11 $11
	ld   de, $7f1d                                   ; $4680: $11 $1d $7f
	rst  $38                                         ; $4683: $ff
	rst  $38                                         ; $4684: $ff
	rst  $38                                         ; $4685: $ff
	rst  $38                                         ; $4686: $ff
	rst  $38                                         ; $4687: $ff
	rst  $38                                         ; $4688: $ff
	rst  $38                                         ; $4689: $ff
	db   $eb                                         ; $468a: $eb
	ld   sp, $1111                                   ; $468b: $31 $11 $11
	ld   de, $1111                                   ; $468e: $11 $11 $11
	ld   de, $c611                                   ; $4691: $11 $11 $c6
	rst  $28                                         ; $4694: $ef
	rst  $38                                         ; $4695: $ff
	rst  $38                                         ; $4696: $ff
	rst  $38                                         ; $4697: $ff
	rst  $38                                         ; $4698: $ff
	rst  $38                                         ; $4699: $ff
	rst  $38                                         ; $469a: $ff
	rst  $38                                         ; $469b: $ff
	push hl                                          ; $469c: $e5
	ld   hl, $1111                                   ; $469d: $21 $11 $11
	ld   de, $1111                                   ; $46a0: $11 $11 $11
	ld   de, $9915                                   ; $46a3: $11 $15 $99
	rst  $38                                         ; $46a6: $ff
	rst  $38                                         ; $46a7: $ff
	rst  $38                                         ; $46a8: $ff
	rst  $38                                         ; $46a9: $ff
	rst  $38                                         ; $46aa: $ff
	rst  $38                                         ; $46ab: $ff
	rst  $38                                         ; $46ac: $ff
	rst  $38                                         ; $46ad: $ff
	add  $51                                         ; $46ae: $c6 $51
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	ld   de, $1111                                   ; $46b3: $11 $11 $11
	dec  d                                           ; $46b6: $15
	ld   d, d                                        ; $46b7: $52
	rst  $28                                         ; $46b8: $ef
	rst  $38                                         ; $46b9: $ff
	rst  $38                                         ; $46ba: $ff
	rst  $38                                         ; $46bb: $ff
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	rst  $38                                         ; $46be: $ff
	rst  $38                                         ; $46bf: $ff
	ld   sp, hl                                      ; $46c0: $f9
	and  a                                           ; $46c1: $a7
	ld   de, $1111                                   ; $46c2: $11 $11 $11
	ld   de, $1111                                   ; $46c5: $11 $11 $11
	ld   de, $2615                                   ; $46c8: $11 $15 $26
	rst  $28                                         ; $46cb: $ef
	rst  $38                                         ; $46cc: $ff
	rst  $38                                         ; $46cd: $ff
	rst  $38                                         ; $46ce: $ff
	rst  $38                                         ; $46cf: $ff
	rst  $38                                         ; $46d0: $ff
	rst  $38                                         ; $46d1: $ff
	rst  $38                                         ; $46d2: $ff
	db   $dd                                         ; $46d3: $dd
	or   l                                           ; $46d4: $b5
	ld   b, c                                        ; $46d5: $41
	ld   de, $1111                                   ; $46d6: $11 $11 $11
	ld   de, $1111                                   ; $46d9: $11 $11 $11
	ld   de, $4a31                                   ; $46dc: $11 $31 $4a
	adc  d                                           ; $46df: $8a
	rst  $38                                         ; $46e0: $ff
	rst  $38                                         ; $46e1: $ff
	rst  $38                                         ; $46e2: $ff
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff
	rst  $38                                         ; $46e6: $ff
	rst  $38                                         ; $46e7: $ff
	xor  e                                           ; $46e8: $ab
	or   [hl]                                        ; $46e9: $b6
	halt                                             ; $46ea: $76
	ld   b, e                                        ; $46eb: $43
	ld   [hl-], a                                    ; $46ec: $32
	ld   sp, $1112                                   ; $46ed: $31 $12 $11
	ld   de, $1111                                   ; $46f0: $11 $11 $11
	ld   b, e                                        ; $46f3: $43
	ld   d, [hl]                                     ; $46f4: $56
	adc  d                                           ; $46f5: $8a
	xor  l                                           ; $46f6: $ad
	rst  JumpTable                                         ; $46f7: $df
	rst  $28                                         ; $46f8: $ef
	rst  $38                                         ; $46f9: $ff
	rst  $38                                         ; $46fa: $ff
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	cp   $ec                                         ; $46fd: $fe $ec
	db   $dd                                         ; $46ff: $dd
	cp   d                                           ; $4700: $ba
	sbc  c                                           ; $4701: $99
	ld   [hl], l                                     ; $4702: $75
	ld   h, d                                        ; $4703: $62
	inc  de                                          ; $4704: $13
	ld   de, $1111                                   ; $4705: $11 $11 $11
	ld   de, $1311                                   ; $4708: $11 $11 $13
	dec  [hl]                                        ; $470b: $35
	ld   h, a                                        ; $470c: $67
	adc  c                                           ; $470d: $89
	sbc  d                                           ; $470e: $9a
	cp   e                                           ; $470f: $bb
	call $ffee                                       ; $4710: $cd $ee $ff
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	xor  $ce                                         ; $4715: $ee $ce
	db   $db                                         ; $4717: $db
	db   $db                                         ; $4718: $db
	sbc  c                                           ; $4719: $99
	sub  a                                           ; $471a: $97
	ld   h, [hl]                                     ; $471b: $66
	ld   d, h                                        ; $471c: $54
	ld   b, e                                        ; $471d: $43
	ld   [hl-], a                                    ; $471e: $32
	ld   [hl+], a                                    ; $471f: $22
	ld   de, $2311                                   ; $4720: $11 $11 $23
	ld   b, h                                        ; $4723: $44
	ld   d, l                                        ; $4724: $55
	ld   h, [hl]                                     ; $4725: $66
	ld   a, c                                        ; $4726: $79
	xor  e                                           ; $4727: $ab
	xor  e                                           ; $4728: $ab
	call z, $cdcc                                    ; $4729: $cc $cc $cd
	db   $dd                                         ; $472c: $dd
	call $bacb                                       ; $472d: $cd $cb $ba
	xor  d                                           ; $4730: $aa
	adc  b                                           ; $4731: $88
	add  a                                           ; $4732: $87
	ld   [hl], a                                     ; $4733: $77
	ld   h, [hl]                                     ; $4734: $66
	ld   d, l                                        ; $4735: $55
	ld   d, [hl]                                     ; $4736: $56
	ld   h, [hl]                                     ; $4737: $66
	ld   h, [hl]                                     ; $4738: $66
	ld   [hl], a                                     ; $4739: $77
	ld   [hl], a                                     ; $473a: $77
	ld   [hl], a                                     ; $473b: $77
	ld   a, b                                        ; $473c: $78
	ld   [hl], a                                     ; $473d: $77
	ld   [hl], a                                     ; $473e: $77
	ld   [hl], a                                     ; $473f: $77
	add  a                                           ; $4740: $87
	ld   [hl], a                                     ; $4741: $77
	ld   [hl], a                                     ; $4742: $77
	ld   [hl], a                                     ; $4743: $77
	ld   [hl], a                                     ; $4744: $77
	ld   a, b                                        ; $4745: $78
	adc  b                                           ; $4746: $88
	adc  c                                           ; $4747: $89
	sbc  b                                           ; $4748: $98
	xor  c                                           ; $4749: $a9
	sbc  c                                           ; $474a: $99
	xor  d                                           ; $474b: $aa
	xor  d                                           ; $474c: $aa
	sbc  b                                           ; $474d: $98
	sbc  b                                           ; $474e: $98
	adc  b                                           ; $474f: $88
	sbc  c                                           ; $4750: $99
	add  a                                           ; $4751: $87
	ld   a, b                                        ; $4752: $78
	ld   [hl], a                                     ; $4753: $77
	ld   d, h                                        ; $4754: $54
	ld   d, [hl]                                     ; $4755: $56
	ld   h, [hl]                                     ; $4756: $66
	ld   h, [hl]                                     ; $4757: $66
	ld   h, [hl]                                     ; $4758: $66
	ld   a, b                                        ; $4759: $78
	sbc  c                                           ; $475a: $99
	add  a                                           ; $475b: $87
	ld   a, c                                        ; $475c: $79
	sbc  d                                           ; $475d: $9a
	xor  c                                           ; $475e: $a9
	xor  d                                           ; $475f: $aa
	xor  d                                           ; $4760: $aa
	cp   d                                           ; $4761: $ba
	add  a                                           ; $4762: $87
	adc  c                                           ; $4763: $89
	xor  d                                           ; $4764: $aa
	sub  a                                           ; $4765: $97
	halt                                             ; $4766: $76
	ld   [hl], a                                     ; $4767: $77
	ld   [hl], a                                     ; $4768: $77
	ld   h, l                                        ; $4769: $65
	ld   d, [hl]                                     ; $476a: $56
	ld   [hl], a                                     ; $476b: $77
	halt                                             ; $476c: $76
	ld   h, a                                        ; $476d: $67
	ld   a, b                                        ; $476e: $78
	sbc  b                                           ; $476f: $98
	add  a                                           ; $4770: $87
	adc  c                                           ; $4771: $89
	sbc  d                                           ; $4772: $9a
	sbc  b                                           ; $4773: $98
	adc  c                                           ; $4774: $89
	xor  d                                           ; $4775: $aa
	adc  b                                           ; $4776: $88
	ld   a, b                                        ; $4777: $78
	sbc  c                                           ; $4778: $99
	adc  b                                           ; $4779: $88
	adc  b                                           ; $477a: $88
	add  a                                           ; $477b: $87
	ld   [hl], a                                     ; $477c: $77
	ld   [hl], a                                     ; $477d: $77
	ld   [hl], a                                     ; $477e: $77
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	ld   [hl], a                                     ; $4781: $77
	ld   [hl], a                                     ; $4782: $77
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	sbc  c                                           ; $4785: $99
	adc  b                                           ; $4786: $88
	ld   [hl], a                                     ; $4787: $77
	ld   [hl], a                                     ; $4788: $77
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	adc  b                                           ; $478c: $88
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	sbc  b                                           ; $478f: $98
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	sbc  c                                           ; $4792: $99
	sbc  c                                           ; $4793: $99
	sbc  b                                           ; $4794: $98
	sbc  c                                           ; $4795: $99
	adc  b                                           ; $4796: $88
	adc  b                                           ; $4797: $88
	ld   [hl], a                                     ; $4798: $77
	ld   [hl], a                                     ; $4799: $77
	ld   [hl], a                                     ; $479a: $77
	ld   [hl], a                                     ; $479b: $77
	ld   [hl], a                                     ; $479c: $77
	ld   [hl], a                                     ; $479d: $77
	ld   [hl], a                                     ; $479e: $77
	ld   [hl], a                                     ; $479f: $77
	ld   a, b                                        ; $47a0: $78
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	sbc  c                                           ; $47a3: $99
	sbc  b                                           ; $47a4: $98
	sbc  c                                           ; $47a5: $99
	sbc  c                                           ; $47a6: $99
	sbc  c                                           ; $47a7: $99
	sbc  c                                           ; $47a8: $99
	adc  b                                           ; $47a9: $88
	sbc  b                                           ; $47aa: $98
	adc  b                                           ; $47ab: $88
	adc  b                                           ; $47ac: $88
	ld   [hl], a                                     ; $47ad: $77
	ld   [hl], a                                     ; $47ae: $77
	ld   [hl], a                                     ; $47af: $77
	ld   [hl], a                                     ; $47b0: $77
	ld   [hl], a                                     ; $47b1: $77
	ld   [hl], a                                     ; $47b2: $77
	ld   [hl], a                                     ; $47b3: $77
	ld   a, b                                        ; $47b4: $78
	adc  b                                           ; $47b5: $88
	adc  b                                           ; $47b6: $88
	adc  c                                           ; $47b7: $89
	sbc  c                                           ; $47b8: $99
	sbc  b                                           ; $47b9: $98
	sbc  c                                           ; $47ba: $99
	sbc  c                                           ; $47bb: $99
	sbc  c                                           ; $47bc: $99
	sbc  c                                           ; $47bd: $99
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
	adc  c                                           ; $47d8: $89
	sbc  c                                           ; $47d9: $99
	sbc  c                                           ; $47da: $99
	sbc  c                                           ; $47db: $99
	sbc  c                                           ; $47dc: $99
	sbc  c                                           ; $47dd: $99
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
	sbc  c                                           ; $47ed: $99
	sbc  c                                           ; $47ee: $99
	add  a                                           ; $47ef: $87
	xor  b                                           ; $47f0: $a8
	ld   a, d                                        ; $47f1: $7a
	ld   a, c                                        ; $47f2: $79
	add  a                                           ; $47f3: $87
	sbc  b                                           ; $47f4: $98
	ld   l, d                                        ; $47f5: $6a
	add  a                                           ; $47f6: $87
	and  [hl]                                        ; $47f7: $a6
	adc  b                                           ; $47f8: $88
	sbc  c                                           ; $47f9: $99
	ld   l, d                                        ; $47fa: $6a
	and  a                                           ; $47fb: $a7
	ld   l, e                                        ; $47fc: $6b
	ld   [hl], a                                     ; $47fd: $77
	sub  [hl]                                        ; $47fe: $96
	sbc  b                                           ; $47ff: $98
	ld   a, b                                        ; $4800: $78
	adc  b                                           ; $4801: $88
	add  a                                           ; $4802: $87
	ld   a, c                                        ; $4803: $79
	sbc  b                                           ; $4804: $98
	ld   l, c                                        ; $4805: $69
	sub  a                                           ; $4806: $97
	sub  a                                           ; $4807: $97
	ld   a, b                                        ; $4808: $78
	sub  a                                           ; $4809: $97
	adc  c                                           ; $480a: $89
	adc  b                                           ; $480b: $88
	sbc  b                                           ; $480c: $98
	adc  c                                           ; $480d: $89
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	sbc  b                                           ; $4810: $98
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	add  a                                           ; $4816: $87
	sub  a                                           ; $4817: $97
	adc  b                                           ; $4818: $88
	ld   a, c                                        ; $4819: $79
	ld   a, b                                        ; $481a: $78
	add  a                                           ; $481b: $87
	adc  b                                           ; $481c: $88
	ld   a, b                                        ; $481d: $78
	add  a                                           ; $481e: $87
	adc  b                                           ; $481f: $88
	ld   a, b                                        ; $4820: $78
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  c                                           ; $4823: $89
	sbc  b                                           ; $4824: $98
	add  a                                           ; $4825: $87
	adc  c                                           ; $4826: $89
	adc  b                                           ; $4827: $88
	adc  c                                           ; $4828: $89
	ld   a, c                                        ; $4829: $79
	add  a                                           ; $482a: $87
	sub  a                                           ; $482b: $97
	ld   a, c                                        ; $482c: $79
	ld   a, b                                        ; $482d: $78
	sub  a                                           ; $482e: $97
	sub  a                                           ; $482f: $97
	adc  c                                           ; $4830: $89
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	sbc  c                                           ; $4833: $99
	adc  c                                           ; $4834: $89
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	ld   l, b                                        ; $4839: $68
	sub  a                                           ; $483a: $97
	sbc  b                                           ; $483b: $98
	ld   a, b                                        ; $483c: $78
	adc  b                                           ; $483d: $88
	adc  c                                           ; $483e: $89
	ld   a, b                                        ; $483f: $78
	add  a                                           ; $4840: $87
	adc  b                                           ; $4841: $88
	add  a                                           ; $4842: $87
	sub  a                                           ; $4843: $97
	ld   a, d                                        ; $4844: $7a
	ld   [hl], a                                     ; $4845: $77
	sub  a                                           ; $4846: $97
	adc  c                                           ; $4847: $89
	ld   a, b                                        ; $4848: $78
	sub  a                                           ; $4849: $97
	ld   a, c                                        ; $484a: $79
	ld   l, b                                        ; $484b: $68
	and  [hl]                                        ; $484c: $a6
	adc  d                                           ; $484d: $8a
	ld   l, b                                        ; $484e: $68
	add  a                                           ; $484f: $87
	add  a                                           ; $4850: $87
	ld   a, b                                        ; $4851: $78
	ld   a, b                                        ; $4852: $78
	ld   [hl], a                                     ; $4853: $77
	sub  a                                           ; $4854: $97
	adc  b                                           ; $4855: $88
	ld   a, c                                        ; $4856: $79
	add  a                                           ; $4857: $87
	adc  b                                           ; $4858: $88
	sbc  b                                           ; $4859: $98
	ld   a, b                                        ; $485a: $78
	ld   a, c                                        ; $485b: $79
	sub  a                                           ; $485c: $97
	adc  d                                           ; $485d: $8a
	ld   l, c                                        ; $485e: $69
	sub  [hl]                                        ; $485f: $96
	sbc  b                                           ; $4860: $98
	ld   a, b                                        ; $4861: $78
	sub  [hl]                                        ; $4862: $96
	ld   a, d                                        ; $4863: $7a
	ld   e, c                                        ; $4864: $59
	add  a                                           ; $4865: $87
	add  a                                           ; $4866: $87
	sub  a                                           ; $4867: $97
	sub  a                                           ; $4868: $97
	adc  c                                           ; $4869: $89
	ld   l, c                                        ; $486a: $69
	ld   a, c                                        ; $486b: $79
	sbc  b                                           ; $486c: $98
	add  a                                           ; $486d: $87
	sub  a                                           ; $486e: $97
	adc  c                                           ; $486f: $89
	ld   a, c                                        ; $4870: $79
	ld   a, b                                        ; $4871: $78
	sub  [hl]                                        ; $4872: $96
	sub  a                                           ; $4873: $97
	adc  b                                           ; $4874: $88
	adc  c                                           ; $4875: $89
	ld   a, c                                        ; $4876: $79
	adc  b                                           ; $4877: $88
	ld   [hl], a                                     ; $4878: $77
	and  l                                           ; $4879: $a5
	sbc  c                                           ; $487a: $99
	ld   c, e                                        ; $487b: $4b
	add  [hl]                                        ; $487c: $86
	and  a                                           ; $487d: $a7
	adc  b                                           ; $487e: $88
	sbc  b                                           ; $487f: $98
	ld   a, d                                        ; $4880: $7a
	add  a                                           ; $4881: $87
	or   [hl]                                        ; $4882: $b6
	adc  d                                           ; $4883: $8a
	ld   e, c                                        ; $4884: $59
	sub  l                                           ; $4885: $95
	sbc  c                                           ; $4886: $99
	ld   e, c                                        ; $4887: $59
	add  [hl]                                        ; $4888: $86
	and  [hl]                                        ; $4889: $a6
	adc  c                                           ; $488a: $89
	ld   e, e                                        ; $488b: $5b
	halt                                             ; $488c: $76
	or   l                                           ; $488d: $b5
	ld   a, h                                        ; $488e: $7c
	ld   e, c                                        ; $488f: $59
	or   h                                           ; $4890: $b4
	xor  d                                           ; $4891: $aa
	dec  sp                                          ; $4892: $3b
	sub  e                                           ; $4893: $93
	add  $7b                                         ; $4894: $c6 $7b
	ld   e, b                                        ; $4896: $58
	and  a                                           ; $4897: $a7
	ld   a, c                                        ; $4898: $79
	ld   [hl], a                                     ; $4899: $77
	sub  a                                           ; $489a: $97
	ld   a, c                                        ; $489b: $79
	ld   l, b                                        ; $489c: $68
	or   e                                           ; $489d: $b3
	and  a                                           ; $489e: $a7
	ld   l, e                                        ; $489f: $6b
	halt                                             ; $48a0: $76
	xor  c                                           ; $48a1: $a9
	ld   e, d                                        ; $48a2: $5a
	sub  [hl]                                        ; $48a3: $96
	adc  e                                           ; $48a4: $8b
	ld   e, d                                        ; $48a5: $5a
	sub  l                                           ; $48a6: $95
	or   a                                           ; $48a7: $b7
	adc  c                                           ; $48a8: $89
	ld   l, c                                        ; $48a9: $69
	add  a                                           ; $48aa: $87
	ld   a, e                                        ; $48ab: $7b
	ld   a, b                                        ; $48ac: $78
	and  [hl]                                        ; $48ad: $a6
	adc  d                                           ; $48ae: $8a
	ld   l, b                                        ; $48af: $68
	and  [hl]                                        ; $48b0: $a6
	ld   a, e                                        ; $48b1: $7b
	ld   e, c                                        ; $48b2: $59
	and  h                                           ; $48b3: $a4
	sbc  d                                           ; $48b4: $9a
	ld   l, c                                        ; $48b5: $69
	ld   l, b                                        ; $48b6: $68
	and  [hl]                                        ; $48b7: $a6
	sbc  c                                           ; $48b8: $99
	ld   a, c                                        ; $48b9: $79
	adc  c                                           ; $48ba: $89
	ld   a, d                                        ; $48bb: $7a
	add  a                                           ; $48bc: $87
	sub  l                                           ; $48bd: $95
	sbc  b                                           ; $48be: $98
	ld   a, c                                        ; $48bf: $79
	ld   h, [hl]                                     ; $48c0: $66
	xor  b                                           ; $48c1: $a8
	ld   a, d                                        ; $48c2: $7a
	add  a                                           ; $48c3: $87
	ld   a, d                                        ; $48c4: $7a
	sub  [hl]                                        ; $48c5: $96
	sub  a                                           ; $48c6: $97
	xor  b                                           ; $48c7: $a8
	ld   a, e                                        ; $48c8: $7b
	ld   l, c                                        ; $48c9: $69
	or   [hl]                                        ; $48ca: $b6
	adc  e                                           ; $48cb: $8b
	ld   e, c                                        ; $48cc: $59
	sub  [hl]                                        ; $48cd: $96
	ld   l, c                                        ; $48ce: $69
	halt                                             ; $48cf: $76
	and  l                                           ; $48d0: $a5
	sbc  c                                           ; $48d1: $99
	ld   a, d                                        ; $48d2: $7a
	and  [hl]                                        ; $48d3: $a6
	adc  d                                           ; $48d4: $8a
	ld   c, e                                        ; $48d5: $4b
	add  l                                           ; $48d6: $85
	xor  b                                           ; $48d7: $a8
	ld   a, d                                        ; $48d8: $7a
	sub  l                                           ; $48d9: $95
	ld   a, h                                        ; $48da: $7c
	ld   c, e                                        ; $48db: $4b
	sub  h                                           ; $48dc: $94
	push bc                                          ; $48dd: $c5
	ld   l, d                                        ; $48de: $6a
	ld   [hl], l                                     ; $48df: $75
	or   a                                           ; $48e0: $b7
	ld   e, h                                        ; $48e1: $5c
	ld   h, l                                        ; $48e2: $65
	rst  ToBoot                                         ; $48e3: $c7
	ld   l, e                                        ; $48e4: $6b
	ld   h, a                                        ; $48e5: $67
	and  a                                           ; $48e6: $a7
	ld   l, l                                        ; $48e7: $6d
	ld   [hl], l                                     ; $48e8: $75
	add  a                                           ; $48e9: $87
	add  a                                           ; $48ea: $87
	ld   l, b                                        ; $48eb: $68
	and  [hl]                                        ; $48ec: $a6
	sbc  e                                           ; $48ed: $9b
	add  [hl]                                        ; $48ee: $86
	xor  c                                           ; $48ef: $a9
	ld   c, d                                        ; $48f0: $4a
	sub  l                                           ; $48f1: $95
	sub  a                                           ; $48f2: $97
	sub  [hl]                                        ; $48f3: $96
	ld   a, c                                        ; $48f4: $79
	ld   e, e                                        ; $48f5: $5b
	ld   [hl], l                                     ; $48f6: $75
	cp   c                                           ; $48f7: $b9
	add  [hl]                                        ; $48f8: $86
	adc  e                                           ; $48f9: $8b
	ld   [hl], a                                     ; $48fa: $77
	sbc  b                                           ; $48fb: $98
	sub  [hl]                                        ; $48fc: $96
	adc  b                                           ; $48fd: $88
	ld   a, b                                        ; $48fe: $78
	and  [hl]                                        ; $48ff: $a6
	ld   a, d                                        ; $4900: $7a
	ld   e, e                                        ; $4901: $5b
	ld   l, c                                        ; $4902: $69
	sub  [hl]                                        ; $4903: $96
	jp   $3bab                                       ; $4904: $c3 $ab $3b


	ld   l, d                                        ; $4907: $6a
	ld   [hl], a                                     ; $4908: $77
	pop  bc                                          ; $4909: $c1
	rst  $10                                         ; $490a: $d7
	ld   l, $57                                      ; $490b: $2e $57
	sbc  h                                           ; $490d: $9c
	ld   a, [hl+]                                    ; $490e: $2a
	pop  de                                          ; $490f: $d1
	and  $6d                                         ; $4910: $e6 $6d
	ld   l, d                                        ; $4912: $6a
	ld   c, d                                        ; $4913: $4a
	add  h                                           ; $4914: $84
	db   $d3                                         ; $4915: $d3
	adc  d                                           ; $4916: $8a
	ld   e, d                                        ; $4917: $5a
	sbc  b                                           ; $4918: $98
	ld   a, d                                        ; $4919: $7a
	ld   h, [hl]                                     ; $491a: $66
	sub  $5a                                         ; $491b: $d6 $5a
	sub  [hl]                                        ; $491d: $96
	ld   a, d                                        ; $491e: $7a
	ld   l, d                                        ; $491f: $6a
	ld   [hl], h                                     ; $4920: $74
	ret  c                                           ; $4921: $d8

	ld   l, c                                        ; $4922: $69
	sbc  c                                           ; $4923: $99
	sub  a                                           ; $4924: $97
	ld   l, e                                        ; $4925: $6b
	ld   [hl], a                                     ; $4926: $77
	and  a                                           ; $4927: $a7
	sub  a                                           ; $4928: $97
	and  l                                           ; $4929: $a5
	sbc  h                                           ; $492a: $9c
	inc  l                                           ; $492b: $2c
	sub  [hl]                                        ; $492c: $96
	adc  e                                           ; $492d: $8b
	add  l                                           ; $492e: $85
	db   $f4                                         ; $492f: $f4
	xor  d                                           ; $4930: $aa
	adc  c                                           ; $4931: $89
	ld   l, h                                        ; $4932: $6c
	add  hl, sp                                      ; $4933: $39
	or   h                                           ; $4934: $b4
	or   a                                           ; $4935: $b7
	sbc  b                                           ; $4936: $98
	adc  c                                           ; $4937: $89
	ld   e, e                                        ; $4938: $5b
	ld   h, a                                        ; $4939: $67
	sub  [hl]                                        ; $493a: $96
	and  a                                           ; $493b: $a7
	and  [hl]                                        ; $493c: $a6
	adc  e                                           ; $493d: $8b
	ld   c, d                                        ; $493e: $4a
	ld   a, c                                        ; $493f: $79
	adc  b                                           ; $4940: $88
	sub  l                                           ; $4941: $95
	or   a                                           ; $4942: $b7
	ld   a, d                                        ; $4943: $7a
	ld   l, b                                        ; $4944: $68
	ld   a, c                                        ; $4945: $79
	ld   [hl], a                                     ; $4946: $77
	and  [hl]                                        ; $4947: $a6
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	ld   a, c                                        ; $494a: $79
	ld   a, b                                        ; $494b: $78
	add  a                                           ; $494c: $87
	adc  b                                           ; $494d: $88
	add  a                                           ; $494e: $87
	add  a                                           ; $494f: $87
	adc  b                                           ; $4950: $88
	ld   a, b                                        ; $4951: $78
	ld   a, c                                        ; $4952: $79
	add  a                                           ; $4953: $87
	adc  b                                           ; $4954: $88
	add  a                                           ; $4955: $87
	adc  b                                           ; $4956: $88
	ld   a, b                                        ; $4957: $78
	ld   a, b                                        ; $4958: $78
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	add  a                                           ; $495d: $87
	adc  c                                           ; $495e: $89
	ld   a, b                                        ; $495f: $78
	adc  b                                           ; $4960: $88
	ld   a, b                                        ; $4961: $78
	add  a                                           ; $4962: $87
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	ld   a, b                                        ; $4965: $78
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	add  a                                           ; $496d: $87
	add  a                                           ; $496e: $87
	adc  b                                           ; $496f: $88
	ld   a, b                                        ; $4970: $78
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	ld   a, b                                        ; $4978: $78
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
	ld   a, b                                        ; $4984: $78
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	add  a                                           ; $4987: $87
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	ld   a, b                                        ; $498a: $78
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
	adc  c                                           ; $4a00: $89
	sbc  b                                           ; $4a01: $98
	sbc  b                                           ; $4a02: $98
	adc  b                                           ; $4a03: $88
	ld   a, b                                        ; $4a04: $78
	adc  b                                           ; $4a05: $88
	adc  b                                           ; $4a06: $88
	adc  b                                           ; $4a07: $88
	adc  b                                           ; $4a08: $88
	adc  b                                           ; $4a09: $88
	add  a                                           ; $4a0a: $87
	adc  b                                           ; $4a0b: $88
	adc  b                                           ; $4a0c: $88
	adc  b                                           ; $4a0d: $88
	sbc  b                                           ; $4a0e: $98
	sbc  b                                           ; $4a0f: $98
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
	sbc  b                                           ; $4a1b: $98
	sbc  b                                           ; $4a1c: $98
	adc  c                                           ; $4a1d: $89
	adc  b                                           ; $4a1e: $88
	adc  b                                           ; $4a1f: $88
	adc  b                                           ; $4a20: $88
	ld   [hl], a                                     ; $4a21: $77
	ld   [hl], a                                     ; $4a22: $77
	ld   a, b                                        ; $4a23: $78
	adc  c                                           ; $4a24: $89
	sbc  c                                           ; $4a25: $99
	sbc  c                                           ; $4a26: $99
	ld   a, b                                        ; $4a27: $78
	add  a                                           ; $4a28: $87
	sbc  b                                           ; $4a29: $98
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  c                                           ; $4a2c: $89
	adc  b                                           ; $4a2d: $88
	ld   a, b                                        ; $4a2e: $78
	adc  b                                           ; $4a2f: $88
	ld   a, b                                        ; $4a30: $78
	sbc  c                                           ; $4a31: $99
	add  a                                           ; $4a32: $87
	adc  c                                           ; $4a33: $89
	add  a                                           ; $4a34: $87
	sbc  b                                           ; $4a35: $98
	adc  b                                           ; $4a36: $88
	ld   [hl], a                                     ; $4a37: $77
	adc  b                                           ; $4a38: $88
	adc  b                                           ; $4a39: $88
	sbc  b                                           ; $4a3a: $98
	adc  c                                           ; $4a3b: $89
	adc  b                                           ; $4a3c: $88
	adc  b                                           ; $4a3d: $88
	xor  d                                           ; $4a3e: $aa
	sbc  e                                           ; $4a3f: $9b
	sbc  b                                           ; $4a40: $98
	ld   [hl], a                                     ; $4a41: $77
	add  a                                           ; $4a42: $87
	sbc  b                                           ; $4a43: $98
	ld   a, b                                        ; $4a44: $78
	sbc  b                                           ; $4a45: $98
	xor  d                                           ; $4a46: $aa
	ld   a, c                                        ; $4a47: $79
	add  a                                           ; $4a48: $87
	ld   a, c                                        ; $4a49: $79
	sub  a                                           ; $4a4a: $97
	ld   a, c                                        ; $4a4b: $79
	ld   [hl], a                                     ; $4a4c: $77
	ld   h, [hl]                                     ; $4a4d: $66
	ld   [hl], a                                     ; $4a4e: $77
	add  a                                           ; $4a4f: $87
	sbc  c                                           ; $4a50: $99
	sbc  b                                           ; $4a51: $98
	ld   a, b                                        ; $4a52: $78
	ld   [hl], a                                     ; $4a53: $77
	ld   [hl], a                                     ; $4a54: $77
	ld   [hl], a                                     ; $4a55: $77
	ld   a, c                                        ; $4a56: $79
	sbc  b                                           ; $4a57: $98
	xor  c                                           ; $4a58: $a9
	sbc  c                                           ; $4a59: $99
	sbc  b                                           ; $4a5a: $98
	ld   a, b                                        ; $4a5b: $78
	ld   h, [hl]                                     ; $4a5c: $66
	ld   d, [hl]                                     ; $4a5d: $56
	ld   h, a                                        ; $4a5e: $67
	ld   h, [hl]                                     ; $4a5f: $66
	sbc  c                                           ; $4a60: $99
	sbc  c                                           ; $4a61: $99
	cp   c                                           ; $4a62: $b9
	adc  b                                           ; $4a63: $88
	adc  c                                           ; $4a64: $89
	add  a                                           ; $4a65: $87
	ld   d, [hl]                                     ; $4a66: $56
	ld   h, [hl]                                     ; $4a67: $66
	ld   d, [hl]                                     ; $4a68: $56
	ld   a, b                                        ; $4a69: $78
	ld   [hl], a                                     ; $4a6a: $77
	sbc  b                                           ; $4a6b: $98
	add  a                                           ; $4a6c: $87
	adc  b                                           ; $4a6d: $88
	ld   a, b                                        ; $4a6e: $78
	add  [hl]                                        ; $4a6f: $86
	ld   [hl], a                                     ; $4a70: $77
	ld   [hl], l                                     ; $4a71: $75
	ld   d, [hl]                                     ; $4a72: $56
	ld   d, [hl]                                     ; $4a73: $56
	ld   h, [hl]                                     ; $4a74: $66
	ld   d, [hl]                                     ; $4a75: $56
	ld   h, [hl]                                     ; $4a76: $66
	ld   h, a                                        ; $4a77: $67
	ld   [hl], a                                     ; $4a78: $77
	ld   [hl], a                                     ; $4a79: $77
	adc  b                                           ; $4a7a: $88
	adc  c                                           ; $4a7b: $89
	sbc  d                                           ; $4a7c: $9a
	sbc  d                                           ; $4a7d: $9a
	xor  d                                           ; $4a7e: $aa
	cp   e                                           ; $4a7f: $bb
	call z, $cccd                                    ; $4a80: $cc $cd $cc
	db   $dd                                         ; $4a83: $dd
	call z, $bacc                                    ; $4a84: $cc $cc $ba
	xor  d                                           ; $4a87: $aa
	adc  b                                           ; $4a88: $88
	ld   [hl], a                                     ; $4a89: $77
	ld   h, l                                        ; $4a8a: $65
	inc  sp                                          ; $4a8b: $33
	ld   hl, $1111                                   ; $4a8c: $21 $11 $11
	ld   de, $1111                                   ; $4a8f: $11 $11 $11
	ld   de, $ff4b                                   ; $4a92: $11 $4b $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	rst  $38                                         ; $4a99: $ff
	rst  $38                                         ; $4a9a: $ff
	ld   [$6566], a                                  ; $4a9b: $ea $66 $65
	ld   d, [hl]                                     ; $4a9e: $56
	adc  c                                           ; $4a9f: $89
	cp   e                                           ; $4aa0: $bb
	call $99eb                                       ; $4aa1: $cd $eb $99
	add  e                                           ; $4aa4: $83
	ld   de, $1111                                   ; $4aa5: $11 $11 $11
	ld   de, $1111                                   ; $4aa8: $11 $11 $11
	dec  hl                                          ; $4aab: $2b
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	rst  $38                                         ; $4aae: $ff
	rst  $38                                         ; $4aaf: $ff
	rst  $38                                         ; $4ab0: $ff
	rst  $38                                         ; $4ab1: $ff
	jp   hl                                          ; $4ab2: $e9


	ld   sp, $1211                                   ; $4ab3: $31 $11 $12
	ld   e, d                                        ; $4ab6: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab7: $cf
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	rst  $38                                         ; $4aba: $ff
	db   $fd                                         ; $4abb: $fd
	sub  d                                           ; $4abc: $92
	ld   de, $1111                                   ; $4abd: $11 $11 $11
	ld   de, $1111                                   ; $4ac0: $11 $11 $11
	ld   d, $8e                                      ; $4ac3: $16 $8e
	rst  $38                                         ; $4ac5: $ff
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	rst  $38                                         ; $4ac9: $ff
	ei                                               ; $4aca: $fb
	ld   [hl], l                                     ; $4acb: $75
	ld   [hl+], a                                    ; $4acc: $22
	ld   [hl+], a                                    ; $4acd: $22
	ld   l, b                                        ; $4ace: $68
	cp   [hl]                                        ; $4acf: $be
	rst  $38                                         ; $4ad0: $ff
	rst  $38                                         ; $4ad1: $ff
	rst  $38                                         ; $4ad2: $ff
	rst  $38                                         ; $4ad3: $ff
	ret  z                                           ; $4ad4: $c8

	ld   b, d                                        ; $4ad5: $42
	ld   de, $1111                                   ; $4ad6: $11 $11 $11
	ld   de, $1111                                   ; $4ad9: $11 $11 $11
	ld   de, $cf15                                   ; $4adc: $11 $15 $cf
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	rst  $38                                         ; $4ae2: $ff
	rst  $38                                         ; $4ae3: $ff
	db   $fc                                         ; $4ae4: $fc
	jp   z, Jump_0c9_6765                            ; $4ae5: $ca $65 $67

	adc  d                                           ; $4ae8: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae9: $cf
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	rst  $38                                         ; $4aec: $ff
	db   $ec                                         ; $4aed: $ec
	or   a                                           ; $4aee: $b7
	ld   d, d                                        ; $4aef: $52
	ld   de, $1111                                   ; $4af0: $11 $11 $11
	ld   de, $1111                                   ; $4af3: $11 $11 $11
	ld   de, $cf16                                   ; $4af6: $11 $16 $cf
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	rst  $38                                         ; $4afd: $ff
	call c, Call_0c9_56a9                            ; $4afe: $dc $a9 $56
	add  a                                           ; $4b01: $87
	xor  h                                           ; $4b02: $ac
	rst  $28                                         ; $4b03: $ef
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	jp   z, $3174                                    ; $4b07: $ca $74 $31

	ld   de, $1111                                   ; $4b0a: $11 $11 $11
	ld   de, $1111                                   ; $4b0d: $11 $11 $11
	ld   de, rAUDENA                                   ; $4b10: $11 $26 $ff
	rst  $38                                         ; $4b13: $ff
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff

Call_0c9_4b16:
	rst  $38                                         ; $4b16: $ff
	rst  $38                                         ; $4b17: $ff
	cp   h                                           ; $4b18: $bc
	reti                                             ; $4b19: $d9


	sub  [hl]                                        ; $4b1a: $96
	adc  h                                           ; $4b1b: $8c
	set  1, a                                        ; $4b1c: $cb $cf
	rst  $38                                         ; $4b1e: $ff
	xor  $db                                         ; $4b1f: $ee $db
	add  l                                           ; $4b21: $85
	ld   b, e                                        ; $4b22: $43
	ld   de, $1111                                   ; $4b23: $11 $11 $11
	ld   de, $1111                                   ; $4b26: $11 $11 $11
	ld   de, $1611                                   ; $4b29: $11 $11 $16
	rst  $38                                         ; $4b2c: $ff
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	rst  $28                                         ; $4b32: $ef
	rst  $38                                         ; $4b33: $ff
	db   $fc                                         ; $4b34: $fc
	rst  $38                                         ; $4b35: $ff
	cp   $cf                                         ; $4b36: $fe $cf
	db   $fd                                         ; $4b38: $fd
	cp   b                                           ; $4b39: $b8
	sbc  b                                           ; $4b3a: $98
	ld   d, h                                        ; $4b3b: $54
	inc  sp                                          ; $4b3c: $33
	ld   sp, $1111                                   ; $4b3d: $31 $11 $11
	ld   de, $1111                                   ; $4b40: $11 $11 $11
	ld   de, $1611                                   ; $4b43: $11 $11 $16
	rst  $38                                         ; $4b46: $ff
	rst  $38                                         ; $4b47: $ff
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	rst  $28                                         ; $4b4c: $ef
	rst  $38                                         ; $4b4d: $ff
	db   $fd                                         ; $4b4e: $fd
	rst  $38                                         ; $4b4f: $ff
	rst  $38                                         ; $4b50: $ff
	rst  $28                                         ; $4b51: $ef
	db   $fd                                         ; $4b52: $fd
	rst  $10                                         ; $4b53: $d7
	ld   [hl], a                                     ; $4b54: $77
	ld   b, l                                        ; $4b55: $45
	ld   de, $1121                                   ; $4b56: $11 $21 $11
	ld   de, $1111                                   ; $4b59: $11 $11 $11
	ld   de, $1211                                   ; $4b5c: $11 $11 $12
	ld   de, $ffef                                   ; $4b5f: $11 $ef $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	db   $dd                                         ; $4b67: $dd
	rst  $38                                         ; $4b68: $ff
	rst  $38                                         ; $4b69: $ff
	rst  $38                                         ; $4b6a: $ff
	rst  $38                                         ; $4b6b: $ff
	ei                                               ; $4b6c: $fb
	cp   c                                           ; $4b6d: $b9
	sub  a                                           ; $4b6e: $97
	inc  sp                                          ; $4b6f: $33
	inc  sp                                          ; $4b70: $33
	ld   hl, $1111                                   ; $4b71: $21 $11 $11
	ld   de, $1111                                   ; $4b74: $11 $11 $11
	ld   de, $1111                                   ; $4b77: $11 $11 $11
	ld   l, l                                        ; $4b7a: $6d
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	cp   $ef                                         ; $4b82: $fe $ef
	rst  $38                                         ; $4b84: $ff
	db   $ec                                         ; $4b85: $ec
	xor  $ec                                         ; $4b86: $ee $ec
	halt                                             ; $4b88: $76
	ld   b, h                                        ; $4b89: $44
	ld   d, h                                        ; $4b8a: $54
	ld   hl, $1111                                   ; $4b8b: $21 $11 $11
	ld   de, $1111                                   ; $4b8e: $11 $11 $11
	ld   de, $1111                                   ; $4b91: $11 $11 $11
	dec  h                                           ; $4b94: $25
	xor  a                                           ; $4b95: $af
	rst  $38                                         ; $4b96: $ff
	rst  $38                                         ; $4b97: $ff
	rst  $38                                         ; $4b98: $ff
	rst  $38                                         ; $4b99: $ff
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	rst  $38                                         ; $4b9c: $ff
	xor  $ed                                         ; $4b9d: $ee $ed
	xor  $dd                                         ; $4b9f: $ee $dd
	res  5, c                                        ; $4ba1: $cb $a9
	sub  a                                           ; $4ba3: $97
	ld   d, [hl]                                     ; $4ba4: $56
	ld   d, l                                        ; $4ba5: $55
	ld   d, h                                        ; $4ba6: $54
	ld   [hl-], a                                    ; $4ba7: $32
	ld   [hl+], a                                    ; $4ba8: $22
	ld   de, $1111                                   ; $4ba9: $11 $11 $11
	ld   de, $1111                                   ; $4bac: $11 $11 $11
	ld   [de], a                                     ; $4baf: $12
	ld   d, a                                        ; $4bb0: $57
	sbc  d                                           ; $4bb1: $9a
	cp   [hl]                                        ; $4bb2: $be
	rst  $38                                         ; $4bb3: $ff
	rst  $38                                         ; $4bb4: $ff
	rst  $38                                         ; $4bb5: $ff
	rst  $38                                         ; $4bb6: $ff
	rst  $38                                         ; $4bb7: $ff
	db   $ed                                         ; $4bb8: $ed
	db   $dd                                         ; $4bb9: $dd
	sbc  $fe                                         ; $4bba: $de $fe
	xor  $dd                                         ; $4bbc: $ee $dd
	call z, $bacc                                    ; $4bbe: $cc $cc $ba
	xor  c                                           ; $4bc1: $a9
	sub  a                                           ; $4bc2: $97
	ld   d, h                                        ; $4bc3: $54
	ld   [hl-], a                                    ; $4bc4: $32
	ld   de, $1111                                   ; $4bc5: $11 $11 $11
	ld   de, $1111                                   ; $4bc8: $11 $11 $11
	ld   de, $2311                                   ; $4bcb: $11 $11 $23
	ld   d, a                                        ; $4bce: $57
	sbc  d                                           ; $4bcf: $9a
	rst  JumpTable                                         ; $4bd0: $df
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	rst  $38                                         ; $4bd4: $ff
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	rst  $38                                         ; $4bd7: $ff
	rst  $38                                         ; $4bd8: $ff
	rst  $38                                         ; $4bd9: $ff
	db   $ec                                         ; $4bda: $ec
	cp   e                                           ; $4bdb: $bb
	xor  c                                           ; $4bdc: $a9
	add  a                                           ; $4bdd: $87
	ld   h, h                                        ; $4bde: $64
	ld   sp, $1111                                   ; $4bdf: $31 $11 $11
	ld   de, $1111                                   ; $4be2: $11 $11 $11
	ld   de, $1111                                   ; $4be5: $11 $11 $11
	ld   de, $6834                                   ; $4be8: $11 $34 $68
	xor  h                                           ; $4beb: $ac
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	rst  $38                                         ; $4bf3: $ff
	rst  $38                                         ; $4bf4: $ff
	db   $fd                                         ; $4bf5: $fd
	call c, $88b9                                    ; $4bf6: $dc $b9 $88
	ld   h, l                                        ; $4bf9: $65
	ld   b, e                                        ; $4bfa: $43
	ld   de, $1111                                   ; $4bfb: $11 $11 $11
	ld   de, $1111                                   ; $4bfe: $11 $11 $11
	ld   de, $1111                                   ; $4c01: $11 $11 $11
	ld   de, $6835                                   ; $4c04: $11 $35 $68
	cp   l                                           ; $4c07: $bd
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	rst  $38                                         ; $4c0b: $ff
	rst  $38                                         ; $4c0c: $ff
	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	db   $ed                                         ; $4c11: $ed
	cp   e                                           ; $4c12: $bb
	xor  c                                           ; $4c13: $a9
	add  a                                           ; $4c14: $87
	ld   d, h                                        ; $4c15: $54
	ld   sp, $1111                                   ; $4c16: $31 $11 $11
	ld   de, $1111                                   ; $4c19: $11 $11 $11
	ld   de, $1111                                   ; $4c1c: $11 $11 $11
	ld   de, $4612                                   ; $4c1f: $11 $12 $46
	sbc  d                                           ; $4c22: $9a
	rst  $28                                         ; $4c23: $ef
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	rst  $38                                         ; $4c28: $ff
	rst  $38                                         ; $4c29: $ff
	rst  $38                                         ; $4c2a: $ff
	rst  $38                                         ; $4c2b: $ff
	rst  $38                                         ; $4c2c: $ff
	db   $ec                                         ; $4c2d: $ec
	cp   d                                           ; $4c2e: $ba
	sbc  b                                           ; $4c2f: $98
	ld   h, l                                        ; $4c30: $65
	ld   b, d                                        ; $4c31: $42
	ld   de, $1111                                   ; $4c32: $11 $11 $11
	ld   de, $1111                                   ; $4c35: $11 $11 $11
	ld   de, $1111                                   ; $4c38: $11 $11 $11
	ld   de, $6834                                   ; $4c3b: $11 $34 $68
	xor  [hl]                                        ; $4c3e: $ae
	rst  $38                                         ; $4c3f: $ff
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	rst  $38                                         ; $4c45: $ff
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	cp   $db                                         ; $4c48: $fe $db
	xor  c                                           ; $4c4a: $a9
	halt                                             ; $4c4b: $76
	ld   d, e                                        ; $4c4c: $53
	ld   hl, $1111                                   ; $4c4d: $21 $11 $11
	ld   de, $1111                                   ; $4c50: $11 $11 $11
	ld   de, $1111                                   ; $4c53: $11 $11 $11
	ld   de, $4613                                   ; $4c56: $11 $13 $46
	adc  d                                           ; $4c59: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c5a: $cf
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	rst  $38                                         ; $4c5f: $ff
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	db   $fd                                         ; $4c64: $fd
	res  5, b                                        ; $4c65: $cb $a8
	halt                                             ; $4c67: $76
	ld   b, e                                        ; $4c68: $43
	ld   hl, $1111                                   ; $4c69: $21 $11 $11
	ld   de, $1111                                   ; $4c6c: $11 $11 $11
	ld   de, $1111                                   ; $4c6f: $11 $11 $11
	ld   de, $5724                                   ; $4c72: $11 $24 $57
	xor  h                                           ; $4c75: $ac
	rst  JumpTable                                         ; $4c76: $df
	rst  $38                                         ; $4c77: $ff
	rst  $38                                         ; $4c78: $ff
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	rst  $38                                         ; $4c7e: $ff
	rst  $38                                         ; $4c7f: $ff
	call c, $a8bb                                    ; $4c80: $dc $bb $a8
	halt                                             ; $4c83: $76
	ld   b, e                                        ; $4c84: $43
	ld   hl, $1111                                   ; $4c85: $21 $11 $11
	ld   de, $1111                                   ; $4c88: $11 $11 $11
	ld   de, $1111                                   ; $4c8b: $11 $11 $11
	inc  de                                          ; $4c8e: $13
	ld   b, [hl]                                     ; $4c8f: $46
	ld   a, c                                        ; $4c90: $79
	cp   l                                           ; $4c91: $bd
	rst  $38                                         ; $4c92: $ff
	rst  $38                                         ; $4c93: $ff
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	rst  $38                                         ; $4c97: $ff
	rst  $38                                         ; $4c98: $ff
	rst  $38                                         ; $4c99: $ff
	rst  $38                                         ; $4c9a: $ff
	xor  $cc                                         ; $4c9b: $ee $cc
	cp   d                                           ; $4c9d: $ba
	sbc  b                                           ; $4c9e: $98
	ld   [hl], l                                     ; $4c9f: $75
	ld   b, e                                        ; $4ca0: $43
	ld   de, $1111                                   ; $4ca1: $11 $11 $11
	ld   de, $1111                                   ; $4ca4: $11 $11 $11
	ld   de, $1111                                   ; $4ca7: $11 $11 $11
	ld   [hl], $78                                   ; $4caa: $36 $78
	xor  h                                           ; $4cac: $ac
	rst  $28                                         ; $4cad: $ef
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	rst  $38                                         ; $4cb1: $ff
	rst  $38                                         ; $4cb2: $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	rst  $38                                         ; $4cb5: $ff
	cp   $ed                                         ; $4cb6: $fe $ed
	cp   d                                           ; $4cb8: $ba
	xor  c                                           ; $4cb9: $a9
	add  a                                           ; $4cba: $87
	ld   h, l                                        ; $4cbb: $65
	ld   b, d                                        ; $4cbc: $42
	ld   de, $1111                                   ; $4cbd: $11 $11 $11
	ld   de, $1111                                   ; $4cc0: $11 $11 $11
	ld   de, $1211                                   ; $4cc3: $11 $11 $12
	ld   e, b                                        ; $4cc6: $58
	xor  l                                           ; $4cc7: $ad
	rst  $28                                         ; $4cc8: $ef
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	rst  $38                                         ; $4ccb: $ff
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	rst  $38                                         ; $4ccf: $ff
	rst  $38                                         ; $4cd0: $ff
	cp   $ed                                         ; $4cd1: $fe $ed
	call z, $88a9                                    ; $4cd3: $cc $a9 $88
	ld   h, l                                        ; $4cd6: $65
	ld   b, e                                        ; $4cd7: $43
	ld   de, $1111                                   ; $4cd8: $11 $11 $11
	ld   de, $1111                                   ; $4cdb: $11 $11 $11
	ld   de, $1111                                   ; $4cde: $11 $11 $11
	dec  h                                           ; $4ce1: $25
	sbc  h                                           ; $4ce2: $9c
	rst  $28                                         ; $4ce3: $ef
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	rst  $38                                         ; $4ce6: $ff
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	rst  $38                                         ; $4cea: $ff
	rst  $38                                         ; $4ceb: $ff
	rst  $38                                         ; $4cec: $ff
	rst  $38                                         ; $4ced: $ff
	cp   $db                                         ; $4cee: $fe $db
	xor  b                                           ; $4cf0: $a8
	ld   [hl], l                                     ; $4cf1: $75
	ld   b, e                                        ; $4cf2: $43
	ld   [hl-], a                                    ; $4cf3: $32
	ld   de, $1111                                   ; $4cf4: $11 $11 $11
	ld   de, $1111                                   ; $4cf7: $11 $11 $11
	ld   de, $1211                                   ; $4cfa: $11 $11 $12
	ld   l, c                                        ; $4cfd: $69
	rst  JumpTable                                         ; $4cfe: $df
	rst  $38                                         ; $4cff: $ff
	rst  $38                                         ; $4d00: $ff
	rst  $38                                         ; $4d01: $ff
	rst  $38                                         ; $4d02: $ff
	rst  $38                                         ; $4d03: $ff
	rst  $38                                         ; $4d04: $ff
	rst  $38                                         ; $4d05: $ff
	rst  $38                                         ; $4d06: $ff
	rst  $38                                         ; $4d07: $ff
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	cp   $b9                                         ; $4d0a: $fe $b9
	ld   h, l                                        ; $4d0c: $65
	ld   d, h                                        ; $4d0d: $54
	ld   b, e                                        ; $4d0e: $43
	ld   hl, $1111                                   ; $4d0f: $21 $11 $11
	ld   de, $1111                                   ; $4d12: $11 $11 $11
	ld   de, $1111                                   ; $4d15: $11 $11 $11
	ld   b, $bf                                      ; $4d18: $06 $bf
	rst  $38                                         ; $4d1a: $ff
	rst  $38                                         ; $4d1b: $ff
	rst  $38                                         ; $4d1c: $ff
	rst  $38                                         ; $4d1d: $ff
	rst  $38                                         ; $4d1e: $ff
	rst  $38                                         ; $4d1f: $ff
	rst  $38                                         ; $4d20: $ff
	rst  $38                                         ; $4d21: $ff
	rst  $38                                         ; $4d22: $ff
	rst  $38                                         ; $4d23: $ff
	rst  $38                                         ; $4d24: $ff
	rst  $38                                         ; $4d25: $ff
	jp   z, Jump_0c9_5586                            ; $4d26: $ca $86 $55

	ld   d, l                                        ; $4d29: $55
	ld   b, e                                        ; $4d2a: $43
	ld   hl, $1111                                   ; $4d2b: $21 $11 $11
	ld   de, $1111                                   ; $4d2e: $11 $11 $11
	ld   de, $1311                                   ; $4d31: $11 $11 $13
	adc  e                                           ; $4d34: $8b
	rst  $28                                         ; $4d35: $ef
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	rst  $38                                         ; $4d39: $ff
	rst  $38                                         ; $4d3a: $ff
	rst  $38                                         ; $4d3b: $ff
	rst  $38                                         ; $4d3c: $ff
	rst  $38                                         ; $4d3d: $ff
	rst  $38                                         ; $4d3e: $ff
	rst  $38                                         ; $4d3f: $ff
	rst  $38                                         ; $4d40: $ff
	db   $ec                                         ; $4d41: $ec
	sub  a                                           ; $4d42: $97
	ld   h, l                                        ; $4d43: $65
	ld   h, [hl]                                     ; $4d44: $66
	ld   h, l                                        ; $4d45: $65
	ld   sp, $1111                                   ; $4d46: $31 $11 $11
	ld   de, $1111                                   ; $4d49: $11 $11 $11
	ld   de, $1211                                   ; $4d4c: $11 $11 $12
	inc  sp                                          ; $4d4f: $33
	sbc  h                                           ; $4d50: $9c
	rst  $38                                         ; $4d51: $ff
	rst  $38                                         ; $4d52: $ff
	rst  $38                                         ; $4d53: $ff
	call c, $ffce                                    ; $4d54: $dc $ce $ff
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	rst  $38                                         ; $4d59: $ff
	rst  $38                                         ; $4d5a: $ff
	rst  $38                                         ; $4d5b: $ff
	db   $fc                                         ; $4d5c: $fc
	cp   b                                           ; $4d5d: $b8
	adc  b                                           ; $4d5e: $88
	halt                                             ; $4d5f: $76
	ld   [hl], l                                     ; $4d60: $75
	ld   d, h                                        ; $4d61: $54
	inc  sp                                          ; $4d62: $33
	ld   de, $1111                                   ; $4d63: $11 $11 $11
	ld   de, $1111                                   ; $4d66: $11 $11 $11
	ld   de, $4912                                   ; $4d69: $11 $12 $49
	rst  JumpTable                                         ; $4d6c: $df
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	cp   $cc                                         ; $4d6f: $fe $cc
	rst  $28                                         ; $4d71: $ef
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	rst  $38                                         ; $4d74: $ff
	rst  $38                                         ; $4d75: $ff
	rst  $38                                         ; $4d76: $ff
	rst  $38                                         ; $4d77: $ff
	db   $dd                                         ; $4d78: $dd
	xor  c                                           ; $4d79: $a9
	sbc  b                                           ; $4d7a: $98
	halt                                             ; $4d7b: $76
	ld   h, [hl]                                     ; $4d7c: $66
	ld   d, l                                        ; $4d7d: $55
	ld   sp, $1111                                   ; $4d7e: $31 $11 $11
	ld   de, $1111                                   ; $4d81: $11 $11 $11
	ld   de, $4212                                   ; $4d84: $11 $12 $42
	ld   l, d                                        ; $4d87: $6a
	cp   a                                           ; $4d88: $bf
	rst  $38                                         ; $4d89: $ff
	rst  $38                                         ; $4d8a: $ff
	db   $ec                                         ; $4d8b: $ec
	cp   [hl]                                        ; $4d8c: $be
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	rst  $38                                         ; $4d90: $ff
	rst  $38                                         ; $4d91: $ff
	rst  $38                                         ; $4d92: $ff
	db   $eb                                         ; $4d93: $eb
	call z, $a7bb                                    ; $4d94: $cc $bb $a7
	ld   h, l                                        ; $4d97: $65
	ld   h, a                                        ; $4d98: $67
	ld   h, l                                        ; $4d99: $65
	ld   hl, $1111                                   ; $4d9a: $21 $11 $11
	ld   de, $1111                                   ; $4d9d: $11 $11 $11
	ld   de, $4513                                   ; $4da0: $11 $13 $45
	adc  h                                           ; $4da3: $8c
	rst  $28                                         ; $4da4: $ef
	rst  $38                                         ; $4da5: $ff
	cp   $cc                                         ; $4da6: $fe $cc
	rst  $38                                         ; $4da8: $ff
	rst  $38                                         ; $4da9: $ff
	rst  $38                                         ; $4daa: $ff
	rst  $38                                         ; $4dab: $ff
	rst  $38                                         ; $4dac: $ff
	rst  $38                                         ; $4dad: $ff
	rst  $38                                         ; $4dae: $ff
	db   $ec                                         ; $4daf: $ec
	call z, $76b8                                    ; $4db0: $cc $b8 $76
	ld   l, b                                        ; $4db3: $68
	add  a                                           ; $4db4: $87
	ld   d, d                                        ; $4db5: $52
	ld   de, $1111                                   ; $4db6: $11 $11 $11
	ld   de, $1111                                   ; $4db9: $11 $11 $11
	ld   de, $1611                                   ; $4dbc: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dbf: $cf
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	sbc  $ff                                         ; $4dc2: $de $ff
	rst  $38                                         ; $4dc4: $ff
	rst  $38                                         ; $4dc5: $ff
	rst  $38                                         ; $4dc6: $ff
	rst  $38                                         ; $4dc7: $ff
	rst  $38                                         ; $4dc8: $ff
	rst  $38                                         ; $4dc9: $ff
	cp   $ed                                         ; $4dca: $fe $ed
	res  2, a                                        ; $4dcc: $cb $97
	ld   a, b                                        ; $4dce: $78
	sbc  c                                           ; $4dcf: $99
	ld   [hl], h                                     ; $4dd0: $74
	ld   hl, $1111                                   ; $4dd1: $21 $11 $11
	ld   de, $1111                                   ; $4dd4: $11 $11 $11
	ld   de, $3211                                   ; $4dd7: $11 $11 $32
	ld   c, b                                        ; $4dda: $48
	rst  JumpTable                                         ; $4ddb: $df
	rst  $38                                         ; $4ddc: $ff
	cp   $de                                         ; $4ddd: $fe $de
	rst  $28                                         ; $4ddf: $ef
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	rst  $38                                         ; $4de2: $ff
	rst  $38                                         ; $4de3: $ff
	rst  $38                                         ; $4de4: $ff
	rst  $38                                         ; $4de5: $ff
	cp   $cc                                         ; $4de6: $fe $cc
	cp   e                                           ; $4de8: $bb
	sbc  b                                           ; $4de9: $98
	ld   a, b                                        ; $4dea: $78
	sbc  c                                           ; $4deb: $99
	ld   [hl], h                                     ; $4dec: $74
	ld   de, $1111                                   ; $4ded: $11 $11 $11
	ld   de, $1111                                   ; $4df0: $11 $11 $11
	ld   de, $1111                                   ; $4df3: $11 $11 $11
	ld   a, [hl-]                                    ; $4df6: $3a
	rst  $28                                         ; $4df7: $ef
	rst  $38                                         ; $4df8: $ff
	cp   $ff                                         ; $4df9: $fe $ff
	rst  $38                                         ; $4dfb: $ff
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	rst  $38                                         ; $4dfe: $ff
	cp   $ff                                         ; $4dff: $fe $ff
	rst  $38                                         ; $4e01: $ff
	rst  $38                                         ; $4e02: $ff
	db   $ec                                         ; $4e03: $ec
	cp   e                                           ; $4e04: $bb
	sub  a                                           ; $4e05: $97
	ld   a, b                                        ; $4e06: $78
	ld   [hl], a                                     ; $4e07: $77
	ld   h, l                                        ; $4e08: $65
	ld   sp, $1111                                   ; $4e09: $31 $11 $11
	ld   de, $1111                                   ; $4e0c: $11 $11 $11
	ld   de, $1111                                   ; $4e0f: $11 $11 $11
	ld   a, [hl+]                                    ; $4e12: $2a
	rst  $38                                         ; $4e13: $ff
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	rst  $28                                         ; $4e18: $ef
	rst  $38                                         ; $4e19: $ff
	rst  $38                                         ; $4e1a: $ff
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	cp   $fe                                         ; $4e1e: $fe $fe
	jp   z, Jump_0c9_6687                            ; $4e20: $ca $87 $66

	adc  b                                           ; $4e23: $88
	ld   [hl], h                                     ; $4e24: $74
	ld   sp, $1111                                   ; $4e25: $31 $11 $11
	ld   de, $1111                                   ; $4e28: $11 $11 $11
	ld   de, $1111                                   ; $4e2b: $11 $11 $11
	ld   e, c                                        ; $4e2e: $59
	adc  $ff                                         ; $4e2f: $ce $ff
	rst  $38                                         ; $4e31: $ff
	rst  $38                                         ; $4e32: $ff
	adc  $ff                                         ; $4e33: $ce $ff
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	rst  $38                                         ; $4e37: $ff
	rst  $38                                         ; $4e38: $ff
	cp   $ef                                         ; $4e39: $fe $ef
	db   $fd                                         ; $4e3b: $fd
	cp   c                                           ; $4e3c: $b9
	adc  b                                           ; $4e3d: $88
	sbc  b                                           ; $4e3e: $98
	halt                                             ; $4e3f: $76
	ld   b, h                                        ; $4e40: $44
	ld   b, d                                        ; $4e41: $42
	ld   de, $1111                                   ; $4e42: $11 $11 $11
	ld   de, $1111                                   ; $4e45: $11 $11 $11
	ld   de, $1711                                   ; $4e48: $11 $11 $17
	cp   [hl]                                        ; $4e4b: $be
	rst  $38                                         ; $4e4c: $ff
	db   $ed                                         ; $4e4d: $ed
	rst  $38                                         ; $4e4e: $ff
	db   $fc                                         ; $4e4f: $fc
	xor  a                                           ; $4e50: $af
	rst  $38                                         ; $4e51: $ff
	db   $ed                                         ; $4e52: $ed
	rst  $28                                         ; $4e53: $ef
	rst  $38                                         ; $4e54: $ff
	cp   $cf                                         ; $4e55: $fe $cf
	rst  $38                                         ; $4e57: $ff
	ret  z                                           ; $4e58: $c8

	ld   a, c                                        ; $4e59: $79
	xor  b                                           ; $4e5a: $a8
	ld   h, l                                        ; $4e5b: $65
	ld   h, l                                        ; $4e5c: $65
	ld   b, e                                        ; $4e5d: $43
	ld   de, $1111                                   ; $4e5e: $11 $11 $11
	ld   de, $1111                                   ; $4e61: $11 $11 $11
	ld   de, $2211                                   ; $4e64: $11 $11 $22
	ld   l, l                                        ; $4e67: $6d
	db   $ed                                         ; $4e68: $ed
	rst  JumpTable                                         ; $4e69: $df
	rst  $38                                         ; $4e6a: $ff
	db   $fd                                         ; $4e6b: $fd
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	rst  $38                                         ; $4e6e: $ff
	sbc  $ee                                         ; $4e6f: $de $ee
	call z, $fdcf                                    ; $4e71: $cc $cf $fd
	xor  d                                           ; $4e74: $aa
	cp   d                                           ; $4e75: $ba
	sbc  b                                           ; $4e76: $98
	ld   [hl], a                                     ; $4e77: $77
	adc  c                                           ; $4e78: $89
	sub  [hl]                                        ; $4e79: $96
	ld   d, l                                        ; $4e7a: $55
	ld   b, e                                        ; $4e7b: $43
	ld   sp, $1111                                   ; $4e7c: $31 $11 $11
	ld   de, $1111                                   ; $4e7f: $11 $11 $11
	ld   de, $5714                                   ; $4e82: $11 $14 $57
	ld   a, c                                        ; $4e85: $79
	xor  e                                           ; $4e86: $ab
	xor  $ee                                         ; $4e87: $ee $ee
	rst  $38                                         ; $4e89: $ff
	rst  $38                                         ; $4e8a: $ff
	db   $fd                                         ; $4e8b: $fd
	db   $dd                                         ; $4e8c: $dd
	cp   $bb                                         ; $4e8d: $fe $bb
	call $cbdd                                       ; $4e8f: $cd $dd $cb
	cp   e                                           ; $4e92: $bb
	cp   d                                           ; $4e93: $ba
	sbc  b                                           ; $4e94: $98
	sbc  d                                           ; $4e95: $9a
	xor  b                                           ; $4e96: $a8
	ld   h, [hl]                                     ; $4e97: $66
	ld   [hl], a                                     ; $4e98: $77
	ld   d, d                                        ; $4e99: $52
	ld   b, l                                        ; $4e9a: $45
	ld   b, e                                        ; $4e9b: $43
	ld   [hl+], a                                    ; $4e9c: $22
	ld   [hl+], a                                    ; $4e9d: $22
	ld   de, $1111                                   ; $4e9e: $11 $11 $11
	ld   [hl+], a                                    ; $4ea1: $22
	ld   [de], a                                     ; $4ea2: $12
	ld   d, a                                        ; $4ea3: $57
	ld   a, b                                        ; $4ea4: $78
	sbc  e                                           ; $4ea5: $9b
	sbc  $ff                                         ; $4ea6: $de $ff
	rst  $28                                         ; $4ea8: $ef
	rst  $38                                         ; $4ea9: $ff
	cp   $de                                         ; $4eaa: $fe $de
	db   $ed                                         ; $4eac: $ed
	call z, $dccb                                    ; $4ead: $cc $cb $dc
	cp   c                                           ; $4eb0: $b9
	xor  e                                           ; $4eb1: $ab
	res  3, d                                        ; $4eb2: $cb $9a
	xor  c                                           ; $4eb4: $a9
	ld   [hl], l                                     ; $4eb5: $75
	ld   d, [hl]                                     ; $4eb6: $56
	ld   b, e                                        ; $4eb7: $43
	ld   b, h                                        ; $4eb8: $44
	ld   [hl-], a                                    ; $4eb9: $32
	ld   [de], a                                     ; $4eba: $12
	ld   [hl-], a                                    ; $4ebb: $32
	ld   [de], a                                     ; $4ebc: $12
	ld   de, $1111                                   ; $4ebd: $11 $11 $11
	inc  de                                          ; $4ec0: $13
	ld   h, a                                        ; $4ec1: $67
	add  a                                           ; $4ec2: $87
	sbc  h                                           ; $4ec3: $9c
	rst  JumpTable                                         ; $4ec4: $df
	cp   $df                                         ; $4ec5: $fe $df
	rst  $38                                         ; $4ec7: $ff
	cp   $cc                                         ; $4ec8: $fe $cc
	rst  JumpTable                                         ; $4eca: $df
	reti                                             ; $4ecb: $d9


	cp   e                                           ; $4ecc: $bb
	rst  $28                                         ; $4ecd: $ef
	res  3, h                                        ; $4ece: $cb $9c
	cp   c                                           ; $4ed0: $b9
	cp   c                                           ; $4ed1: $b9
	sbc  d                                           ; $4ed2: $9a
	sub  [hl]                                        ; $4ed3: $96
	ld   d, [hl]                                     ; $4ed4: $56
	ld   b, d                                        ; $4ed5: $42
	ld   de, $2111                                   ; $4ed6: $11 $11 $21
	ld   de, $1111                                   ; $4ed9: $11 $11 $11
	ld   de, $1323                                   ; $4edc: $11 $23 $13
	ld   a, c                                        ; $4edf: $79
	xor  a                                           ; $4ee0: $af
	ei                                               ; $4ee1: $fb
	cp   a                                           ; $4ee2: $bf
	cp   $df                                         ; $4ee3: $fe $df
	rst  $38                                         ; $4ee5: $ff
	cp   $cb                                         ; $4ee6: $fe $cb
	set  5, a                                        ; $4ee8: $cb $ef
	adc  $dc                                         ; $4eea: $ce $dc
	cp   e                                           ; $4eec: $bb
	xor  c                                           ; $4eed: $a9
	sbc  d                                           ; $4eee: $9a
	sub  a                                           ; $4eef: $97
	ld   d, l                                        ; $4ef0: $55
	ld   d, d                                        ; $4ef1: $52
	ld   de, $1121                                   ; $4ef2: $11 $21 $11
	ld   de, $1121                                   ; $4ef5: $11 $21 $11
	ld   de, $1111                                   ; $4ef8: $11 $11 $11
	cp   h                                           ; $4efb: $bc
	cp   a                                           ; $4efc: $bf
	db   $dd                                         ; $4efd: $dd
	rst  $38                                         ; $4efe: $ff
	ld   a, [$deff]                                  ; $4eff: $fa $ff $de
	ei                                               ; $4f02: $fb
	xor  a                                           ; $4f03: $af
	ei                                               ; $4f04: $fb
	rst  $38                                         ; $4f05: $ff
	rst  JumpTable                                         ; $4f06: $df
	ei                                               ; $4f07: $fb
	adc  e                                           ; $4f08: $8b
	cp   e                                           ; $4f09: $bb
	or   a                                           ; $4f0a: $b7
	ld   c, b                                        ; $4f0b: $48
	ret  z                                           ; $4f0c: $c8

	ld   d, e                                        ; $4f0d: $53
	inc  sp                                          ; $4f0e: $33
	ld   de, $1111                                   ; $4f0f: $11 $11 $11
	ld   sp, $1111                                   ; $4f12: $31 $11 $11
	ld   de, $fd17                                   ; $4f15: $11 $17 $fd
	ld   e, $ff                                      ; $4f18: $1e $ff
	cp   $6a                                         ; $4f1a: $fe $6a
	rst  $38                                         ; $4f1c: $ff
	sbc  e                                           ; $4f1d: $9b
	xor  $ff                                         ; $4f1e: $ee $ff
	cp   h                                           ; $4f20: $bc
	rst  $38                                         ; $4f21: $ff
	db   $fd                                         ; $4f22: $fd
	xor  c                                           ; $4f23: $a9
	cp   e                                           ; $4f24: $bb
	and  [hl]                                        ; $4f25: $a6
	ld   l, e                                        ; $4f26: $6b
	db   $ed                                         ; $4f27: $ed
	ld   [hl], l                                     ; $4f28: $75
	ld   d, h                                        ; $4f29: $54
	ld   b, d                                        ; $4f2a: $42
	ld   de, $2113                                   ; $4f2b: $11 $13 $21
	ld   de, $1111                                   ; $4f2e: $11 $11 $11
	ld   de, $c619                                   ; $4f31: $11 $19 $c6
	sbc  l                                           ; $4f34: $9d
	rst  $38                                         ; $4f35: $ff
	rst  $38                                         ; $4f36: $ff
	ld   l, e                                        ; $4f37: $6b
	rst  $38                                         ; $4f38: $ff
	rst  $38                                         ; $4f39: $ff
	call z, $fdef                                    ; $4f3a: $cc $ef $fd
	db   $eb                                         ; $4f3d: $eb
	db   $ec                                         ; $4f3e: $ec
	call z, $b8ab                                    ; $4f3f: $cc $ab $b8
	xor  h                                           ; $4f42: $ac
	cp   b                                           ; $4f43: $b8
	ld   a, c                                        ; $4f44: $79
	ld   b, l                                        ; $4f45: $45
	ld   d, c                                        ; $4f46: $51
	ld   de, $1111                                   ; $4f47: $11 $11 $11
	ld   de, $1131                                   ; $4f4a: $11 $31 $11
	inc  hl                                          ; $4f4d: $23
	rla                                              ; $4f4e: $17
	ld   e, c                                        ; $4f4f: $59
	sbc  [hl]                                        ; $4f50: $9e
	cp   $68                                         ; $4f51: $fe $68
	rst  $38                                         ; $4f53: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f54: $cf
	reti                                             ; $4f55: $d9


	rst  $28                                         ; $4f56: $ef
	rst  $28                                         ; $4f57: $ef
	sbc  $ff                                         ; $4f58: $de $ff
	rst  $20                                         ; $4f5a: $e7
	reti                                             ; $4f5b: $d9


	xor  e                                           ; $4f5c: $ab
	adc  e                                           ; $4f5d: $8b
	xor  $a8                                         ; $4f5e: $ee $a8
	ld   h, e                                        ; $4f60: $63
	dec  [hl]                                        ; $4f61: $35
	ld   hl, $3111                                   ; $4f62: $21 $11 $31
	ld   de, $1115                                   ; $4f65: $11 $15 $11
	ld   [de], a                                     ; $4f68: $12
	ld   de, $2f77                                   ; $4f69: $11 $77 $2f
	push de                                          ; $4f6c: $d5
	rst  $38                                         ; $4f6d: $ff
	ld   a, b                                        ; $4f6e: $78
	rst  $38                                         ; $4f6f: $ff
	ld   l, e                                        ; $4f70: $6b
	db   $fc                                         ; $4f71: $fc
	rst  $38                                         ; $4f72: $ff
	sbc  l                                           ; $4f73: $9d
	rst  $38                                         ; $4f74: $ff
	db   $fd                                         ; $4f75: $fd
	rst  $10                                         ; $4f76: $d7
	db   $ed                                         ; $4f77: $ed
	adc  d                                           ; $4f78: $8a
	cp   a                                           ; $4f79: $bf
	db   $db                                         ; $4f7a: $db
	add  a                                           ; $4f7b: $87
	adc  e                                           ; $4f7c: $8b
	add  e                                           ; $4f7d: $83
	ld   de, $1143                                   ; $4f7e: $11 $43 $11
	ld   de, $1196                                   ; $4f81: $11 $96 $11
	inc  e                                           ; $4f84: $1c
	ld   [hl], c                                     ; $4f85: $71
	dec  de                                          ; $4f86: $1b
	ld   hl, sp-$24                                  ; $4f87: $f8 $dc
	dec  d                                           ; $4f89: $15
	rst  $38                                         ; $4f8a: $ff
	or   [hl]                                        ; $4f8b: $b6
	rst  $38                                         ; $4f8c: $ff
	rst  $38                                         ; $4f8d: $ff
	ld   a, c                                        ; $4f8e: $79
	rst  $38                                         ; $4f8f: $ff
	rst  $38                                         ; $4f90: $ff
	cp   h                                           ; $4f91: $bc
	rst  $38                                         ; $4f92: $ff
	push bc                                          ; $4f93: $c5
	ld   l, d                                        ; $4f94: $6a
	rst  JumpTable                                         ; $4f95: $df
	ret  z                                           ; $4f96: $c8

	ld   a, b                                        ; $4f97: $78
	sub  $31                                         ; $4f98: $d6 $31
	rla                                              ; $4f9a: $17
	ld   b, h                                        ; $4f9b: $44
	ld   de, $1131                                   ; $4f9c: $11 $31 $11
	inc  hl                                          ; $4f9f: $23
	ld   de, $8651                                   ; $4fa0: $11 $51 $86
	cp   c                                           ; $4fa3: $b9
	ld   e, $fb                                      ; $4fa4: $1e $fb
	ld   d, e                                        ; $4fa6: $53
	rst  $38                                         ; $4fa7: $ff
	rst  $38                                         ; $4fa8: $ff
	ld   d, [hl]                                     ; $4fa9: $56
	rst  $38                                         ; $4faa: $ff
	ld   hl, sp-$63                                  ; $4fab: $f8 $9d
	rst  $38                                         ; $4fad: $ff
	or   d                                           ; $4fae: $b2
	ld   a, d                                        ; $4faf: $7a
	rst  $38                                         ; $4fb0: $ff
	adc  c                                           ; $4fb1: $89
	ld   l, a                                        ; $4fb2: $6f
	or   $31                                         ; $4fb3: $f6 $31
	ld   a, d                                        ; $4fb5: $7a
	ld   d, d                                        ; $4fb6: $52
	ld   de, $1341                                   ; $4fb7: $11 $41 $13
	ld   b, c                                        ; $4fba: $41
	ld   hl, $1311                                   ; $4fbb: $21 $11 $13
	rla                                              ; $4fbe: $17
	ld   [hl], c                                     ; $4fbf: $71
	rst  $38                                         ; $4fc0: $ff
	ld   l, c                                        ; $4fc1: $69
	sbc  a                                           ; $4fc2: $9f
	ld   l, [hl]                                     ; $4fc3: $6e
	ld   hl, sp-$04                                  ; $4fc4: $f8 $fc
	rst  $38                                         ; $4fc6: $ff
	cp   a                                           ; $4fc7: $bf
	call z, $fbfc                                    ; $4fc8: $cc $fc $fb
	adc  a                                           ; $4fcb: $8f
	cp   c                                           ; $4fcc: $b9
	sbc  e                                           ; $4fcd: $9b
	jp   hl                                          ; $4fce: $e9


	add  h                                           ; $4fcf: $84
	ld   e, [hl]                                     ; $4fd0: $5e
	or   e                                           ; $4fd1: $b3
	ld   de, $1151                                   ; $4fd2: $11 $51 $11
	inc  de                                          ; $4fd5: $13
	ld   sp, $1111                                   ; $4fd6: $31 $11 $11
	inc  d                                           ; $4fd9: $14
	dec  e                                           ; $4fda: $1d
	pop  af                                          ; $4fdb: $f1
	rst  $38                                         ; $4fdc: $ff
	or   [hl]                                        ; $4fdd: $b6
	ccf                                              ; $4fde: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fdf: $cf
	pop  af                                          ; $4fe0: $f1
	rst  $38                                         ; $4fe1: $ff
	db   $ed                                         ; $4fe2: $ed
	cp   a                                           ; $4fe3: $bf
	call $6afc                                       ; $4fe4: $cd $fc $6a
	rst  $38                                         ; $4fe7: $ff
	add  a                                           ; $4fe8: $87
	adc  e                                           ; $4fe9: $8b
	ei                                               ; $4fea: $fb
	inc  hl                                          ; $4feb: $23
	sbc  l                                           ; $4fec: $9d
	sub  d                                           ; $4fed: $92
	ld   de, $1166                                   ; $4fee: $11 $66 $11
	ld   de, $1111                                   ; $4ff1: $11 $11 $11
	ld   b, c                                        ; $4ff4: $41
	ld   de, $297e                                   ; $4ff5: $11 $7e $29
	sbc  b                                           ; $4ff8: $98
	cp   a                                           ; $4ff9: $bf
	rst  $30                                         ; $4ffa: $f7
	db   $db                                         ; $4ffb: $db
	rst  $38                                         ; $4ffc: $ff
	sbc  l                                           ; $4ffd: $9d
	rst  $38                                         ; $4ffe: $ff
	jp   c, $fefd                                    ; $4fff: $da $fd $fe

	xor  e                                           ; $5002: $ab
	adc  [hl]                                        ; $5003: $8e
	db   $fd                                         ; $5004: $fd
	and  l                                           ; $5005: $a5
	xor  [hl]                                        ; $5006: $ae
	or   l                                           ; $5007: $b5
	rla                                              ; $5008: $17
	and  h                                           ; $5009: $a4
	ld   b, c                                        ; $500a: $41
	inc  de                                          ; $500b: $13
	ld   de, $1111                                   ; $500c: $11 $11 $11
	ld   de, $711b                                   ; $500f: $11 $1b $71
	ld   c, b                                        ; $5012: $48
	ld   hl, sp+$3b                                  ; $5013: $f8 $3b
	cpl                                              ; $5015: $2f
	db   $fc                                         ; $5016: $fc
	cp   [hl]                                        ; $5017: $be
	rst  $38                                         ; $5018: $ff
	call $ffcc                                       ; $5019: $cd $cc $ff
	cp   a                                           ; $501c: $bf
	ld   [$cbab], a                                  ; $501d: $ea $ab $cb
	db   $fc                                         ; $5020: $fc
	ld   c, e                                        ; $5021: $4b
	ret  z                                           ; $5022: $c8

	ld   [hl], a                                     ; $5023: $77
	ld   h, [hl]                                     ; $5024: $66
	ld   d, e                                        ; $5025: $53
	ld   de, $1111                                   ; $5026: $11 $11 $11
	ld   de, $1111                                   ; $5029: $11 $11 $11
	dec  d                                           ; $502c: $15
	ld   d, l                                        ; $502d: $55
	ld   c, c                                        ; $502e: $49
	call c, $fc9b                                    ; $502f: $dc $9b $fc
	xor  [hl]                                        ; $5032: $ae
	rst  $38                                         ; $5033: $ff
	ld   e, l                                        ; $5034: $5d
	db   $fd                                         ; $5035: $fd
	ld   sp, hl                                      ; $5036: $f9
	rst  JumpTable                                         ; $5037: $df
	rst  $38                                         ; $5038: $ff
	sbc  d                                           ; $5039: $9a
	db   $db                                         ; $503a: $db
	reti                                             ; $503b: $d9


	cp   e                                           ; $503c: $bb
	xor  e                                           ; $503d: $ab
	ld   b, a                                        ; $503e: $47
	sub  a                                           ; $503f: $97
	ld   h, l                                        ; $5040: $65
	ld   d, h                                        ; $5041: $54
	ld   d, h                                        ; $5042: $54
	ld   de, $1113                                   ; $5043: $11 $13 $11
	ld   [de], a                                     ; $5046: $12
	add  d                                           ; $5047: $82
	ld   de, $ff4d                                   ; $5048: $11 $4d $ff
	dec  d                                           ; $504b: $15
	rst  $38                                         ; $504c: $ff
	or   $7f                                         ; $504d: $f6 $7f
	cp   $79                                         ; $504f: $fe $79
	rst  $38                                         ; $5051: $ff
	db   $eb                                         ; $5052: $eb
	cp   a                                           ; $5053: $bf
	cp   $97                                         ; $5054: $fe $97
	cp   a                                           ; $5056: $bf
	and  a                                           ; $5057: $a7
	adc  h                                           ; $5058: $8c
	jp   c, $aa65                                    ; $5059: $da $65 $aa

	ld   b, c                                        ; $505c: $41
	inc  de                                          ; $505d: $13
	ld   b, d                                        ; $505e: $42
	ld   de, $1112                                   ; $505f: $11 $12 $11
	ld   de, $1651                                   ; $5062: $11 $51 $16
	sbc  c                                           ; $5065: $99
	ld   c, d                                        ; $5066: $4a
	db   $fd                                         ; $5067: $fd
	rst  $10                                         ; $5068: $d7
	rst  JumpTable                                         ; $5069: $df
	db   $ed                                         ; $506a: $ed
	xor  a                                           ; $506b: $af
	db   $fc                                         ; $506c: $fc
	jp   c, $deef                                    ; $506d: $da $ef $de

	db   $dd                                         ; $5070: $dd
	db   $fc                                         ; $5071: $fc
	sbc  d                                           ; $5072: $9a
	jp   z, $8989                                    ; $5073: $ca $89 $89

	sub  a                                           ; $5076: $97
	inc  [hl]                                        ; $5077: $34
	ld   [hl], e                                     ; $5078: $73
	inc  sp                                          ; $5079: $33
	ld   [hl+], a                                    ; $507a: $22
	ld   de, $1111                                   ; $507b: $11 $11 $11
	ld   de, $8727                                   ; $507e: $11 $27 $87
	add  hl, hl                                      ; $5081: $29
	rst  $38                                         ; $5082: $ff
	and  [hl]                                        ; $5083: $a6
	rst  $38                                         ; $5084: $ff
	db   $ec                                         ; $5085: $ec
	sbc  [hl]                                        ; $5086: $9e
	db   $fd                                         ; $5087: $fd
	ld   a, d                                        ; $5088: $7a
	rst  $38                                         ; $5089: $ff
	set  5, a                                        ; $508a: $cb $ef
	db   $dd                                         ; $508c: $dd
	sbc  e                                           ; $508d: $9b
	db   $fc                                         ; $508e: $fc
	ld   [hl], a                                     ; $508f: $77
	sbc  c                                           ; $5090: $99
	add  a                                           ; $5091: $87
	ld   d, h                                        ; $5092: $54
	ld   h, [hl]                                     ; $5093: $66
	ld   b, [hl]                                     ; $5094: $46
	ld   b, c                                        ; $5095: $41
	ld   [de], a                                     ; $5096: $12
	ld   de, $1311                                   ; $5097: $11 $11 $13
	ld   de, $5138                                   ; $509a: $11 $38 $51
	cp   $7b                                         ; $509d: $fe $7b
	rst  $38                                         ; $509f: $ff
	dec  sp                                          ; $50a0: $3b
	rst  $38                                         ; $50a1: $ff
	jp   nz, $f9cf                                   ; $50a2: $c2 $cf $f9

	ccf                                              ; $50a5: $3f
	db   $fd                                         ; $50a6: $fd
	ld   a, l                                        ; $50a7: $7d
	db   $fc                                         ; $50a8: $fc
	cp   b                                           ; $50a9: $b8
	cp   l                                           ; $50aa: $bd
	sub  [hl]                                        ; $50ab: $96
	ld   c, e                                        ; $50ac: $4b
	sub  d                                           ; $50ad: $92
	dec  [hl]                                        ; $50ae: $35
	ld   [hl], d                                     ; $50af: $72
	inc  [hl]                                        ; $50b0: $34
	ld   [de], a                                     ; $50b1: $12
	ld   de, $1111                                   ; $50b2: $11 $11 $11
	ld   de, $8613                                   ; $50b5: $11 $13 $86
	ld   l, c                                        ; $50b8: $69
	adc  $cb                                         ; $50b9: $ce $cb
	rst  $38                                         ; $50bb: $ff
	cp   c                                           ; $50bc: $b9
	rst  $38                                         ; $50bd: $ff
	xor  c                                           ; $50be: $a9
	cp   [hl]                                        ; $50bf: $be
	ret                                              ; $50c0: $c9


	cp   [hl]                                        ; $50c1: $be
	ei                                               ; $50c2: $fb
	xor  h                                           ; $50c3: $ac
	ld   [$b99c], a                                  ; $50c4: $ea $9c $b9
	sbc  c                                           ; $50c7: $99
	add  [hl]                                        ; $50c8: $86
	ld   h, h                                        ; $50c9: $64
	dec  h                                           ; $50ca: $25
	ld   d, c                                        ; $50cb: $51
	inc  bc                                          ; $50cc: $03
	ld   de, $1211                                   ; $50cd: $11 $11 $12
	ld   de, $3224                                   ; $50d0: $11 $24 $32
	sbc  e                                           ; $50d3: $9b
	ld   c, c                                        ; $50d4: $49
	cp   $ba                                         ; $50d5: $fe $ba
	db   $fd                                         ; $50d7: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50d8: $cf
	cp   a                                           ; $50d9: $bf
	jp   c, $f7da                                    ; $50da: $da $da $f7

	sbc  a                                           ; $50dd: $9f
	xor  l                                           ; $50de: $ad
	sbc  [hl]                                        ; $50df: $9e
	ret  z                                           ; $50e0: $c8

	ret  c                                           ; $50e1: $d8

	cp   e                                           ; $50e2: $bb
	ld   [hl], a                                     ; $50e3: $77
	ld   l, c                                        ; $50e4: $69
	ld   b, e                                        ; $50e5: $43
	ld   d, h                                        ; $50e6: $54
	ld   sp, $2122                                   ; $50e7: $31 $22 $21
	ld   [de], a                                     ; $50ea: $12
	ld   [de], a                                     ; $50eb: $12
	ld   [de], a                                     ; $50ec: $12
	ld   b, c                                        ; $50ed: $41
	ld   h, a                                        ; $50ee: $67
	ld   l, b                                        ; $50ef: $68
	adc  l                                           ; $50f0: $8d
	cp   e                                           ; $50f1: $bb
	xor  $fc                                         ; $50f2: $ee $fc
	sbc  $ed                                         ; $50f4: $de $ed
	cp   l                                           ; $50f6: $bd
	res  5, d                                        ; $50f7: $cb $aa
	jp   z, $aa9a                                    ; $50f9: $ca $9a $aa

	cp   d                                           ; $50fc: $ba
	sbc  d                                           ; $50fd: $9a
	xor  d                                           ; $50fe: $aa
	ld   [hl], a                                     ; $50ff: $77
	sub  l                                           ; $5100: $95
	ld   d, h                                        ; $5101: $54
	ld   b, h                                        ; $5102: $44
	ld   [hl+], a                                    ; $5103: $22
	inc  de                                          ; $5104: $13
	ld   hl, $1122                                   ; $5105: $21 $22 $11
	ld   d, l                                        ; $5108: $55
	dec  h                                           ; $5109: $25
	ld   b, [hl]                                     ; $510a: $46
	rst  ToBoot                                         ; $510b: $c7
	ld   e, e                                        ; $510c: $5b
	ld   sp, hl                                      ; $510d: $f9
	ld   a, a                                        ; $510e: $7f
	db   $eb                                         ; $510f: $eb
	adc  $cd                                         ; $5110: $ce $cd
	jp   c, $aacc                                    ; $5112: $da $cc $aa

	cp   h                                           ; $5115: $bc
	adc  d                                           ; $5116: $8a
	cp   c                                           ; $5117: $b9
	adc  c                                           ; $5118: $89
	xor  c                                           ; $5119: $a9
	adc  b                                           ; $511a: $88
	ld   [hl], a                                     ; $511b: $77
	ld   [hl], a                                     ; $511c: $77
	ld   h, [hl]                                     ; $511d: $66
	ld   h, h                                        ; $511e: $64
	ld   b, h                                        ; $511f: $44
	ld   b, e                                        ; $5120: $43
	inc  [hl]                                        ; $5121: $34
	ld   b, h                                        ; $5122: $44
	inc  h                                           ; $5123: $24
	ld   b, [hl]                                     ; $5124: $46
	ld   b, h                                        ; $5125: $44
	add  [hl]                                        ; $5126: $86
	ld   [hl], a                                     ; $5127: $77
	sbc  d                                           ; $5128: $9a
	ld   a, d                                        ; $5129: $7a
	cp   c                                           ; $512a: $b9
	xor  h                                           ; $512b: $ac
	cp   e                                           ; $512c: $bb
	db   $eb                                         ; $512d: $eb
	xor  h                                           ; $512e: $ac
	xor  e                                           ; $512f: $ab
	cp   d                                           ; $5130: $ba
	xor  e                                           ; $5131: $ab
	cp   c                                           ; $5132: $b9
	xor  c                                           ; $5133: $a9
	sbc  c                                           ; $5134: $99
	adc  c                                           ; $5135: $89
	add  a                                           ; $5136: $87
	adc  b                                           ; $5137: $88
	ld   a, b                                        ; $5138: $78
	ld   [hl], a                                     ; $5139: $77
	ld   [hl], a                                     ; $513a: $77
	halt                                             ; $513b: $76
	halt                                             ; $513c: $76
	ld   b, [hl]                                     ; $513d: $46
	ld   h, l                                        ; $513e: $65
	ld   [hl], l                                     ; $513f: $75
	ld   h, [hl]                                     ; $5140: $66
	halt                                             ; $5141: $76
	ld   e, b                                        ; $5142: $58
	ld   h, [hl]                                     ; $5143: $66
	add  a                                           ; $5144: $87
	adc  b                                           ; $5145: $88
	adc  c                                           ; $5146: $89
	sbc  c                                           ; $5147: $99
	ld   a, d                                        ; $5148: $7a
	and  a                                           ; $5149: $a7
	cp   d                                           ; $514a: $ba
	sbc  e                                           ; $514b: $9b
	xor  c                                           ; $514c: $a9
	xor  h                                           ; $514d: $ac
	adc  d                                           ; $514e: $8a
	sbc  c                                           ; $514f: $99
	sbc  c                                           ; $5150: $99
	sbc  c                                           ; $5151: $99
	sbc  c                                           ; $5152: $99
	sub  a                                           ; $5153: $97
	adc  b                                           ; $5154: $88
	adc  b                                           ; $5155: $88
	sbc  b                                           ; $5156: $98
	ld   a, b                                        ; $5157: $78
	ld   [hl], a                                     ; $5158: $77
	add  [hl]                                        ; $5159: $86
	ld   a, c                                        ; $515a: $79
	ld   [hl], a                                     ; $515b: $77
	sub  a                                           ; $515c: $97
	adc  b                                           ; $515d: $88
	ld   a, b                                        ; $515e: $78
	adc  b                                           ; $515f: $88
	sbc  b                                           ; $5160: $98
	xor  b                                           ; $5161: $a8
	adc  d                                           ; $5162: $8a
	sbc  c                                           ; $5163: $99
	sbc  c                                           ; $5164: $99
	xor  c                                           ; $5165: $a9
	xor  d                                           ; $5166: $aa
	sbc  d                                           ; $5167: $9a
	xor  c                                           ; $5168: $a9
	xor  c                                           ; $5169: $a9
	sbc  c                                           ; $516a: $99
	xor  c                                           ; $516b: $a9
	adc  c                                           ; $516c: $89
	sbc  c                                           ; $516d: $99
	adc  c                                           ; $516e: $89
	sbc  c                                           ; $516f: $99
	sbc  b                                           ; $5170: $98
	adc  c                                           ; $5171: $89
	adc  b                                           ; $5172: $88
	adc  c                                           ; $5173: $89
	adc  c                                           ; $5174: $89
	sbc  c                                           ; $5175: $99
	sbc  b                                           ; $5176: $98
	sbc  b                                           ; $5177: $98
	adc  b                                           ; $5178: $88
	adc  b                                           ; $5179: $88
	adc  b                                           ; $517a: $88
	adc  b                                           ; $517b: $88
	adc  b                                           ; $517c: $88
	adc  b                                           ; $517d: $88
	sbc  b                                           ; $517e: $98
	adc  b                                           ; $517f: $88
	sbc  b                                           ; $5180: $98
	sbc  c                                           ; $5181: $99
	sbc  b                                           ; $5182: $98
	adc  c                                           ; $5183: $89
	sbc  c                                           ; $5184: $99
	sbc  c                                           ; $5185: $99
	sbc  c                                           ; $5186: $99
	sbc  c                                           ; $5187: $99
	adc  b                                           ; $5188: $88
	adc  b                                           ; $5189: $88
	adc  b                                           ; $518a: $88
	adc  b                                           ; $518b: $88
	adc  b                                           ; $518c: $88
	ld   [hl], a                                     ; $518d: $77
	ld   [hl], a                                     ; $518e: $77
	ld   [hl], a                                     ; $518f: $77
	ld   [hl], a                                     ; $5190: $77
	ld   [hl], a                                     ; $5191: $77
	ld   [hl], a                                     ; $5192: $77
	ld   [hl], a                                     ; $5193: $77
	ld   [hl], a                                     ; $5194: $77
	ld   [hl], a                                     ; $5195: $77
	ld   [hl], a                                     ; $5196: $77
	ld   [hl], a                                     ; $5197: $77
	ld   [hl], a                                     ; $5198: $77
	ld   [hl], a                                     ; $5199: $77
	ld   [hl], a                                     ; $519a: $77
	ld   [hl], a                                     ; $519b: $77
	adc  b                                           ; $519c: $88
	adc  b                                           ; $519d: $88
	adc  b                                           ; $519e: $88
	adc  b                                           ; $519f: $88
	adc  b                                           ; $51a0: $88
	adc  b                                           ; $51a1: $88
	adc  b                                           ; $51a2: $88
	adc  b                                           ; $51a3: $88
	adc  b                                           ; $51a4: $88
	ld   [hl], a                                     ; $51a5: $77
	adc  b                                           ; $51a6: $88
	ld   [hl], a                                     ; $51a7: $77
	ld   [hl], a                                     ; $51a8: $77
	ld   [hl], a                                     ; $51a9: $77
	ld   [hl], a                                     ; $51aa: $77
	ld   [hl], a                                     ; $51ab: $77
	ld   [hl], a                                     ; $51ac: $77
	ld   [hl], a                                     ; $51ad: $77
	ld   [hl], a                                     ; $51ae: $77
	ld   [hl], a                                     ; $51af: $77
	ld   [hl], a                                     ; $51b0: $77
	ld   [hl], a                                     ; $51b1: $77
	ld   [hl], a                                     ; $51b2: $77
	ld   [hl], a                                     ; $51b3: $77
	ld   [hl], a                                     ; $51b4: $77
	ld   [hl], a                                     ; $51b5: $77
	add  a                                           ; $51b6: $87
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
	add  a                                           ; $51c2: $87
	ld   [hl], a                                     ; $51c3: $77
	ld   [hl], a                                     ; $51c4: $77
	ld   [hl], a                                     ; $51c5: $77
	ld   [hl], a                                     ; $51c6: $77
	ld   [hl], a                                     ; $51c7: $77
	ld   [hl], a                                     ; $51c8: $77
	ld   [hl], a                                     ; $51c9: $77
	ld   [hl], a                                     ; $51ca: $77
	ld   [hl], a                                     ; $51cb: $77
	ld   a, b                                        ; $51cc: $78
	ld   [hl], a                                     ; $51cd: $77
	ld   [hl], a                                     ; $51ce: $77
	add  a                                           ; $51cf: $87
	ld   a, b                                        ; $51d0: $78
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
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88
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
	adc  c                                           ; $52dd: $89
	adc  b                                           ; $52de: $88
	adc  b                                           ; $52df: $88
	adc  b                                           ; $52e0: $88
	sbc  c                                           ; $52e1: $99
	sbc  d                                           ; $52e2: $9a
	adc  b                                           ; $52e3: $88
	xor  c                                           ; $52e4: $a9
	sbc  b                                           ; $52e5: $98
	adc  c                                           ; $52e6: $89
	adc  b                                           ; $52e7: $88
	xor  e                                           ; $52e8: $ab
	ret                                              ; $52e9: $c9


	sbc  h                                           ; $52ea: $9c
	xor  c                                           ; $52eb: $a9
	cp   d                                           ; $52ec: $ba
	adc  b                                           ; $52ed: $88
	sbc  c                                           ; $52ee: $99
	ld   [hl], a                                     ; $52ef: $77
	ld   h, a                                        ; $52f0: $67
	sbc  c                                           ; $52f1: $99
	ld   h, a                                        ; $52f2: $67
	cp   e                                           ; $52f3: $bb
	xor  d                                           ; $52f4: $aa
	cp   d                                           ; $52f5: $ba
	xor  d                                           ; $52f6: $aa
	sub  a                                           ; $52f7: $97
	ld   a, d                                        ; $52f8: $7a
	ld   a, c                                        ; $52f9: $79
	add  l                                           ; $52fa: $85
	ld   a, e                                        ; $52fb: $7b
	sub  l                                           ; $52fc: $95
	ld   d, l                                        ; $52fd: $55
	ld   h, l                                        ; $52fe: $65
	ld   h, h                                        ; $52ff: $64
	ld   c, b                                        ; $5300: $48
	add  [hl]                                        ; $5301: $86
	ld   d, a                                        ; $5302: $57
	ld   h, a                                        ; $5303: $67
	ld   [hl], l                                     ; $5304: $75
	ld   b, [hl]                                     ; $5305: $46
	halt                                             ; $5306: $76
	ld   b, h                                        ; $5307: $44
	ld   h, [hl]                                     ; $5308: $66
	ld   h, l                                        ; $5309: $65
	ld   d, a                                        ; $530a: $57
	ld   a, b                                        ; $530b: $78
	ld   h, l                                        ; $530c: $65
	ld   a, b                                        ; $530d: $78
	add  a                                           ; $530e: $87
	ld   h, a                                        ; $530f: $67
	sbc  d                                           ; $5310: $9a
	adc  b                                           ; $5311: $88
	ld   a, b                                        ; $5312: $78
	xor  c                                           ; $5313: $a9
	add  a                                           ; $5314: $87
	ld   a, d                                        ; $5315: $7a
	sbc  b                                           ; $5316: $98
	ld   h, a                                        ; $5317: $67
	sub  a                                           ; $5318: $97
	add  [hl]                                        ; $5319: $86
	ld   h, a                                        ; $531a: $67
	add  a                                           ; $531b: $87
	ld   d, [hl]                                     ; $531c: $56
	ld   d, l                                        ; $531d: $55
	ld   b, h                                        ; $531e: $44
	inc  sp                                          ; $531f: $33
	ld   b, d                                        ; $5320: $42
	ld   [bc], a                                     ; $5321: $02
	ld   de, $1122                                   ; $5322: $11 $22 $11
	adc  e                                           ; $5325: $8b
	ld   a, d                                        ; $5326: $7a
	rst  $38                                         ; $5327: $ff
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	rst  $38                                         ; $532a: $ff
	rst  $38                                         ; $532b: $ff
	cp   $df                                         ; $532c: $fe $df
	cp   d                                           ; $532e: $ba
	db   $dd                                         ; $532f: $dd
	jp   c, $cdcb                                    ; $5330: $da $cb $cd

	ld   [hl], h                                     ; $5333: $74
	ld   d, a                                        ; $5334: $57
	ld   de, $1111                                   ; $5335: $11 $11 $11
	ld   de, $1111                                   ; $5338: $11 $11 $11
	inc  hl                                          ; $533b: $23
	ld   c, [hl]                                     ; $533c: $4e
	db   $fc                                         ; $533d: $fc
	rst  $38                                         ; $533e: $ff
	rst  $38                                         ; $533f: $ff
	rst  $38                                         ; $5340: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5341: $cf
	db   $fd                                         ; $5342: $fd
	rst  $38                                         ; $5343: $ff
	cp   $ff                                         ; $5344: $fe $ff
	rst  JumpTable                                         ; $5346: $df
	db   $fd                                         ; $5347: $fd
	cp   a                                           ; $5348: $bf
	db   $db                                         ; $5349: $db
	add  [hl]                                        ; $534a: $86
	ld   d, a                                        ; $534b: $57
	ld   h, c                                        ; $534c: $61
	inc  d                                           ; $534d: $14
	ld   d, c                                        ; $534e: $51
	ld   de, $1111                                   ; $534f: $11 $11 $11
	ld   de, $6a11                                   ; $5352: $11 $11 $6a
	ld   e, h                                        ; $5355: $5c
	db   $fc                                         ; $5356: $fc
	rst  $38                                         ; $5357: $ff
	db   $fc                                         ; $5358: $fc
	rst  $38                                         ; $5359: $ff
	rst  $38                                         ; $535a: $ff
	ei                                               ; $535b: $fb
	rst  $28                                         ; $535c: $ef
	rst  $38                                         ; $535d: $ff
	rst  $28                                         ; $535e: $ef
	xor  $ec                                         ; $535f: $ee $ec
	db   $ec                                         ; $5361: $ec
	sbc  c                                           ; $5362: $99
	adc  d                                           ; $5363: $8a
	ld   [hl], l                                     ; $5364: $75
	halt                                             ; $5365: $76
	ld   b, d                                        ; $5366: $42
	ld   de, $1111                                   ; $5367: $11 $11 $11
	ld   de, $1111                                   ; $536a: $11 $11 $11
	inc  d                                           ; $536d: $14
	rst  $28                                         ; $536e: $ef
	call c, $feff                                    ; $536f: $dc $ff $fe
	xor  e                                           ; $5372: $ab
	rst  $38                                         ; $5373: $ff
	xor  $df                                         ; $5374: $ee $df
	db   $fd                                         ; $5376: $fd
	ei                                               ; $5377: $fb
	rst  JumpTable                                         ; $5378: $df
	cp   a                                           ; $5379: $bf
	cp   d                                           ; $537a: $ba
	rst  $10                                         ; $537b: $d7
	xor  d                                           ; $537c: $aa
	ld   a, c                                        ; $537d: $79
	adc  c                                           ; $537e: $89
	ld   b, c                                        ; $537f: $41
	ld   d, d                                        ; $5380: $52
	ld   de, $1111                                   ; $5381: $11 $11 $11
	ld   de, $1311                                   ; $5384: $11 $11 $13
	ld   d, a                                        ; $5387: $57
	db   $dd                                         ; $5388: $dd
	ld   e, a                                        ; $5389: $5f
	db   $fc                                         ; $538a: $fc
	xor  l                                           ; $538b: $ad
	rst  JumpTable                                         ; $538c: $df
	rst  $28                                         ; $538d: $ef
	rst  $38                                         ; $538e: $ff
	db   $fd                                         ; $538f: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5390: $cf
	db   $fd                                         ; $5391: $fd
	db   $ec                                         ; $5392: $ec
	cp   h                                           ; $5393: $bc
	adc  $aa                                         ; $5394: $ce $aa
	adc  c                                           ; $5396: $89

Call_0c9_5397:
	jp   hl                                          ; $5397: $e9


	ld   e, b                                        ; $5398: $58
	add  l                                           ; $5399: $85
	ld   de, $1111                                   ; $539a: $11 $11 $11
	ld   de, $5111                                   ; $539d: $11 $11 $51
	ld   [de], a                                     ; $53a0: $12
	db   $fc                                         ; $53a1: $fc
	sub  a                                           ; $53a2: $97
	rst  JumpTable                                         ; $53a3: $df
	rst  $38                                         ; $53a4: $ff
	ret  z                                           ; $53a5: $c8

	ld   a, e                                        ; $53a6: $7b
	rst  $38                                         ; $53a7: $ff
	xor  $ff                                         ; $53a8: $ee $ff
	rst  $28                                         ; $53aa: $ef
	ld   sp, hl                                      ; $53ab: $f9
	xor  a                                           ; $53ac: $af
	jp   c, $baac                                    ; $53ad: $da $ac $ba

	sbc  d                                           ; $53b0: $9a
	add  a                                           ; $53b1: $87
	cp   d                                           ; $53b2: $ba
	ld   sp, $1113                                   ; $53b3: $31 $13 $11
	ld   de, $1111                                   ; $53b6: $11 $11 $11
	ld   de, $6a11                                   ; $53b9: $11 $11 $6a
	bit  7, a                                        ; $53bc: $cb $7f
	rst  $38                                         ; $53be: $ff
	adc  c                                           ; $53bf: $89
	ld   a, a                                        ; $53c0: $7f
	rst  $38                                         ; $53c1: $ff
	ei                                               ; $53c2: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53c3: $cf
	db   $fd                                         ; $53c4: $fd
	ret  c                                           ; $53c5: $d8

	rst  $38                                         ; $53c6: $ff
	sbc  h                                           ; $53c7: $9c
	sbc  d                                           ; $53c8: $9a
	sub  $57                                         ; $53c9: $d6 $57
	sbc  a                                           ; $53cb: $9f
	add  e                                           ; $53cc: $83
	ld   d, d                                        ; $53cd: $52
	ld   de, $1111                                   ; $53ce: $11 $11 $11
	ld   de, $1111                                   ; $53d1: $11 $11 $11
	ld   de, $ce3f                                   ; $53d4: $11 $3f $ce
	cp   c                                           ; $53d7: $b9
	rst  $38                                         ; $53d8: $ff
	adc  l                                           ; $53d9: $8d
	ld   sp, hl                                      ; $53da: $f9
	rst  $38                                         ; $53db: $ff
	rst  $38                                         ; $53dc: $ff
	db   $dd                                         ; $53dd: $dd
	db   $fd                                         ; $53de: $fd
	adc  e                                           ; $53df: $8b
	rst  $28                                         ; $53e0: $ef
	db   $db                                         ; $53e1: $db
	xor  b                                           ; $53e2: $a8
	ld   a, h                                        ; $53e3: $7c
	cp   b                                           ; $53e4: $b8
	sbc  c                                           ; $53e5: $99
	xor  b                                           ; $53e6: $a8
	dec  h                                           ; $53e7: $25
	ld   b, c                                        ; $53e8: $41
	ld   de, $1114                                   ; $53e9: $11 $14 $11
	ld   de, $1141                                   ; $53ec: $11 $41 $11
	add  hl, sp                                      ; $53ef: $39
	ld   sp, hl                                      ; $53f0: $f9
	ld   e, a                                        ; $53f1: $5f
	rst  $28                                         ; $53f2: $ef
	push af                                          ; $53f3: $f5
	xor  [hl]                                        ; $53f4: $ae
	rst  $38                                         ; $53f5: $ff
	rst  $38                                         ; $53f6: $ff
	cp   $fe                                         ; $53f7: $fe $fe
	rst  JumpTable                                         ; $53f9: $df
	db   $ed                                         ; $53fa: $ed
	db   $ec                                         ; $53fb: $ec
	call $e879                                       ; $53fc: $cd $79 $e8
	ld   l, c                                        ; $53ff: $69
	xor  b                                           ; $5400: $a8
	ld   hl, $1111                                   ; $5401: $21 $11 $11
	ld   de, $1111                                   ; $5404: $11 $11 $11
	inc  d                                           ; $5407: $14
	ld   de, rAUD1LEN                                   ; $5408: $11 $11 $ff
	cpl                                              ; $540b: $2f
	ret  c                                           ; $540c: $d8

	db   $fd                                         ; $540d: $fd
	ld   e, a                                        ; $540e: $5f
	rst  $38                                         ; $540f: $ff
	rst  $38                                         ; $5410: $ff
	rst  $38                                         ; $5411: $ff
	rst  $28                                         ; $5412: $ef
	db   $fc                                         ; $5413: $fc
	rst  $38                                         ; $5414: $ff
	cp   [hl]                                        ; $5415: $be
	rst  ToBoot                                         ; $5416: $c7
	call c, Call_0c9_7998                            ; $5417: $dc $98 $79
	sub  e                                           ; $541a: $93
	ld   [de], a                                     ; $541b: $12
	ld   hl, $1111                                   ; $541c: $21 $11 $11
	ld   de, $1311                                   ; $541f: $11 $11 $13
	ld   de, wNameReplacementCurrListNumChars                                   ; $5422: $11 $16 $cb
	rst  $38                                         ; $5425: $ff
	ld   a, [hl-]                                    ; $5426: $3a
	rst  $38                                         ; $5427: $ff
	rst  $30                                         ; $5428: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5429: $cf
	rst  $38                                         ; $542a: $ff
	cp   $ff                                         ; $542b: $fe $ff
	cp   $ed                                         ; $542d: $fe $ed
	xor  [hl]                                        ; $542f: $ae
	cp   d                                           ; $5430: $ba
	or   [hl]                                        ; $5431: $b6
	adc  [hl]                                        ; $5432: $8e
	add  l                                           ; $5433: $85
	ld   d, [hl]                                     ; $5434: $56
	ld   [hl], c                                     ; $5435: $71
	ld   de, $1111                                   ; $5436: $11 $11 $11
	ld   de, $3115                                   ; $5439: $11 $15 $31
	ld   de, $91bc                                   ; $543c: $11 $bc $91
	sbc  a                                           ; $543f: $9f
	rst  $38                                         ; $5440: $ff
	or   d                                           ; $5441: $b2
	rst  JumpTable                                         ; $5442: $df
	rst  $38                                         ; $5443: $ff
	adc  [hl]                                        ; $5444: $8e
	rst  $38                                         ; $5445: $ff
	ei                                               ; $5446: $fb
	sbc  a                                           ; $5447: $9f
	rst  $38                                         ; $5448: $ff
	cp   c                                           ; $5449: $b9
	cp   l                                           ; $544a: $bd
	reti                                             ; $544b: $d9


	ld   a, d                                        ; $544c: $7a
	xor  c                                           ; $544d: $a9
	add  h                                           ; $544e: $84
	ld   b, d                                        ; $544f: $42
	ld   de, $1111                                   ; $5450: $11 $11 $11
	ld   de, $2111                                   ; $5453: $11 $11 $21
	ld   de, $d71b                                   ; $5456: $11 $1b $d7
	ld   l, c                                        ; $5459: $69
	rst  $38                                         ; $545a: $ff
	or   $af                                         ; $545b: $f6 $af
	rst  $38                                         ; $545d: $ff
	rst  $38                                         ; $545e: $ff
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	db   $ed                                         ; $5461: $ed
	rst  $38                                         ; $5462: $ff
	ld   a, [$dabe]                                  ; $5463: $fa $be $da
	ld   [hl], a                                     ; $5466: $77
	and  a                                           ; $5467: $a7
	ld   b, e                                        ; $5468: $43
	ld   d, h                                        ; $5469: $54
	ld   de, $1111                                   ; $546a: $11 $11 $11
	ld   de, $0111                                   ; $546d: $11 $11 $01
	ld   de, $ce15                                   ; $5470: $11 $15 $ce
	call nz, $ffcf                                   ; $5473: $c4 $cf $ff
	adc  a                                           ; $5476: $8f
	rst  $38                                         ; $5477: $ff
	rst  $38                                         ; $5478: $ff
	rst  $28                                         ; $5479: $ef
	rst  $28                                         ; $547a: $ef
	ei                                               ; $547b: $fb
	rst  $38                                         ; $547c: $ff
	rst  $38                                         ; $547d: $ff
	ld   a, l                                        ; $547e: $7d
	res  4, h                                        ; $547f: $cb $a4
	add  [hl]                                        ; $5481: $86
	ld   d, [hl]                                     ; $5482: $56
	ld   hl, $1111                                   ; $5483: $21 $11 $11
	ld   de, $1111                                   ; $5486: $11 $11 $11
	ld   de, $1711                                   ; $5489: $11 $11 $17
	xor  h                                           ; $548c: $ac
	ld   a, e                                        ; $548d: $7b
	rst  $38                                         ; $548e: $ff
	ei                                               ; $548f: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5490: $cf
	rst  $38                                         ; $5491: $ff
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff
	rst  $38                                         ; $5495: $ff
	rst  $38                                         ; $5496: $ff
	cp   $db                                         ; $5497: $fe $db
	cp   d                                           ; $5499: $ba
	ld   b, l                                        ; $549a: $45
	adc  b                                           ; $549b: $88
	ld   d, c                                        ; $549c: $51
	ld   b, h                                        ; $549d: $44
	ld   de, $1111                                   ; $549e: $11 $11 $11
	ld   de, $1111                                   ; $54a1: $11 $11 $11
	ld   de, $451a                                   ; $54a4: $11 $1a $45
	cp   $dc                                         ; $54a7: $fe $dc
	rst  $28                                         ; $54a9: $ef
	rst  $28                                         ; $54aa: $ef
	rst  $38                                         ; $54ab: $ff
	rst  $38                                         ; $54ac: $ff
	rst  $38                                         ; $54ad: $ff
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	db   $ec                                         ; $54b2: $ec
	sbc  c                                           ; $54b3: $99
	cp   d                                           ; $54b4: $ba
	ld   h, e                                        ; $54b5: $63
	ld   [hl], $52                                   ; $54b6: $36 $52
	ld   de, $1111                                   ; $54b8: $11 $11 $11
	ld   de, $1111                                   ; $54bb: $11 $11 $11
	ld   de, $5715                                   ; $54be: $11 $15 $57
	rst  $28                                         ; $54c1: $ef
	adc  $ee                                         ; $54c2: $ce $ee
	rst  $38                                         ; $54c4: $ff
	rst  $38                                         ; $54c5: $ff
	rst  $38                                         ; $54c6: $ff
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	rst  $38                                         ; $54c9: $ff
	rst  $38                                         ; $54ca: $ff
	db   $fd                                         ; $54cb: $fd
	db   $db                                         ; $54cc: $db
	xor  d                                           ; $54cd: $aa
	sub  a                                           ; $54ce: $97
	halt                                             ; $54cf: $76
	ld   h, d                                        ; $54d0: $62
	ld   [de], a                                     ; $54d1: $12
	ld   de, $1111                                   ; $54d2: $11 $11 $11
	ld   de, $1111                                   ; $54d5: $11 $11 $11
	ld   de, $9734                                   ; $54d8: $11 $34 $97
	ld   l, [hl]                                     ; $54db: $6e
	rst  $38                                         ; $54dc: $ff
	db   $db                                         ; $54dd: $db
	rst  $38                                         ; $54de: $ff
	rst  $38                                         ; $54df: $ff
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	cp   $ff                                         ; $54e5: $fe $ff
	sbc  c                                           ; $54e7: $99
	add  a                                           ; $54e8: $87
	and  [hl]                                        ; $54e9: $a6
	ld   [hl-], a                                    ; $54ea: $32
	ld   b, [hl]                                     ; $54eb: $46
	ld   de, $1111                                   ; $54ec: $11 $11 $11
	ld   de, $1111                                   ; $54ef: $11 $11 $11
	ld   de, $5513                                   ; $54f2: $11 $13 $55
	adc  d                                           ; $54f5: $8a
	rst  $28                                         ; $54f6: $ef
	xor  $ff                                         ; $54f7: $ee $ff
	rst  $38                                         ; $54f9: $ff
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	rst  $38                                         ; $54fc: $ff
	rst  $38                                         ; $54fd: $ff
	rst  $38                                         ; $54fe: $ff
	rst  $38                                         ; $54ff: $ff
	db   $fd                                         ; $5500: $fd
	reti                                             ; $5501: $d9


	sbc  c                                           ; $5502: $99
	ld   [hl], a                                     ; $5503: $77
	ld   b, e                                        ; $5504: $43
	ld   b, d                                        ; $5505: $42
	ld   de, $1111                                   ; $5506: $11 $11 $11
	ld   de, $1111                                   ; $5509: $11 $11 $11
	ld   de, $3511                                   ; $550c: $11 $11 $35
	ld   c, c                                        ; $550f: $49
	rst  $28                                         ; $5510: $ef
	sbc  $ff                                         ; $5511: $de $ff
	rst  $38                                         ; $5513: $ff
	rst  $38                                         ; $5514: $ff
	rst  $38                                         ; $5515: $ff
	rst  $38                                         ; $5516: $ff
	rst  $38                                         ; $5517: $ff
	rst  $38                                         ; $5518: $ff
	rst  $38                                         ; $5519: $ff
	rst  $38                                         ; $551a: $ff
	call c, $86b8                                    ; $551b: $dc $b8 $86
	ld   h, l                                        ; $551e: $65
	ld   b, d                                        ; $551f: $42
	ld   [hl+], a                                    ; $5520: $22
	ld   de, $1111                                   ; $5521: $11 $11 $11
	ld   de, $1111                                   ; $5524: $11 $11 $11
	ld   de, $4413                                   ; $5527: $11 $13 $44
	ld   a, e                                        ; $552a: $7b
	sbc  $ff                                         ; $552b: $de $ff
	rst  $38                                         ; $552d: $ff
	rst  $38                                         ; $552e: $ff
	rst  $38                                         ; $552f: $ff
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	rst  $38                                         ; $5532: $ff
	rst  $38                                         ; $5533: $ff
	rst  $38                                         ; $5534: $ff
	db   $fd                                         ; $5535: $fd
	db   $db                                         ; $5536: $db
	ret                                              ; $5537: $c9


	ld   [hl], a                                     ; $5538: $77
	ld   [hl], h                                     ; $5539: $74
	ld   [hl+], a                                    ; $553a: $22
	ld   de, $1111                                   ; $553b: $11 $11 $11
	ld   de, $1111                                   ; $553e: $11 $11 $11
	ld   de, $1111                                   ; $5541: $11 $11 $11
	ld   h, $7c                                      ; $5544: $26 $7c
	cp   e                                           ; $5546: $bb
	rst  JumpTable                                         ; $5547: $df
	rst  $38                                         ; $5548: $ff
	rst  $38                                         ; $5549: $ff
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	rst  $38                                         ; $554f: $ff
	rst  $28                                         ; $5550: $ef
	db   $fc                                         ; $5551: $fc
	sbc  c                                           ; $5552: $99
	sbc  b                                           ; $5553: $98
	ld   h, h                                        ; $5554: $64
	ld   b, h                                        ; $5555: $44
	ld   hl, $1111                                   ; $5556: $21 $11 $11
	ld   de, $1111                                   ; $5559: $11 $11 $11
	ld   de, $1111                                   ; $555c: $11 $11 $11
	inc  hl                                          ; $555f: $23
	ld   h, a                                        ; $5560: $67
	cp   h                                           ; $5561: $bc
	adc  $ff                                         ; $5562: $ce $ff
	rst  $38                                         ; $5564: $ff
	rst  $38                                         ; $5565: $ff
	rst  $38                                         ; $5566: $ff
	rst  $38                                         ; $5567: $ff
	rst  $38                                         ; $5568: $ff
	rst  $38                                         ; $5569: $ff
	rst  $38                                         ; $556a: $ff
	cp   $ed                                         ; $556b: $fe $ed
	res  3, b                                        ; $556d: $cb $98
	add  [hl]                                        ; $556f: $86
	ld   d, h                                        ; $5570: $54
	ld   sp, $1111                                   ; $5571: $31 $11 $11
	ld   de, $1111                                   ; $5574: $11 $11 $11
	ld   de, $1111                                   ; $5577: $11 $11 $11
	ld   de, $7637                                   ; $557a: $11 $37 $76
	xor  h                                           ; $557d: $ac
	rst  $28                                         ; $557e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $557f: $cf
	rst  $38                                         ; $5580: $ff
	rst  $38                                         ; $5581: $ff
	rst  $38                                         ; $5582: $ff
	rst  $38                                         ; $5583: $ff
	rst  $38                                         ; $5584: $ff
	rst  $38                                         ; $5585: $ff

Jump_0c9_5586:
	rst  $38                                         ; $5586: $ff
	db   $fd                                         ; $5587: $fd
	xor  $b9                                         ; $5588: $ee $b9
	sbc  c                                           ; $558a: $99
	halt                                             ; $558b: $76
	ld   d, h                                        ; $558c: $54
	ld   sp, $1111                                   ; $558d: $31 $11 $11
	ld   de, $1111                                   ; $5590: $11 $11 $11
	ld   de, $1111                                   ; $5593: $11 $11 $11
	ld   de, $5a24                                   ; $5596: $11 $24 $5a
	sbc  b                                           ; $5599: $98
	rst  JumpTable                                         ; $559a: $df
	cp   $ff                                         ; $559b: $fe $ff
	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	rst  $38                                         ; $559f: $ff
	rst  $38                                         ; $55a0: $ff
	rst  $38                                         ; $55a1: $ff
	rst  $38                                         ; $55a2: $ff
	cp   $cd                                         ; $55a3: $fe $cd
	jp   hl                                          ; $55a5: $e9


	sbc  b                                           ; $55a6: $98
	sub  a                                           ; $55a7: $97
	ld   b, l                                        ; $55a8: $45
	inc  sp                                          ; $55a9: $33
	ld   hl, $1111                                   ; $55aa: $21 $11 $11
	ld   de, $1111                                   ; $55ad: $11 $11 $11
	ld   de, $1111                                   ; $55b0: $11 $11 $11
	inc  h                                           ; $55b3: $24
	ld   b, e                                        ; $55b4: $43
	xor  d                                           ; $55b5: $aa
	adc  e                                           ; $55b6: $8b
	rst  JumpTable                                         ; $55b7: $df
	rst  $38                                         ; $55b8: $ff
	rst  $38                                         ; $55b9: $ff
	rst  $38                                         ; $55ba: $ff
	rst  $38                                         ; $55bb: $ff
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	cp   $bc                                         ; $55c0: $fe $bc
	cp   e                                           ; $55c2: $bb
	add  a                                           ; $55c3: $87
	add  [hl]                                        ; $55c4: $86
	ld   h, d                                        ; $55c5: $62
	ld   [hl+], a                                    ; $55c6: $22
	ld   de, $1111                                   ; $55c7: $11 $11 $11
	ld   de, $1111                                   ; $55ca: $11 $11 $11
	ld   de, $2111                                   ; $55cd: $11 $11 $21
	inc  de                                          ; $55d0: $13
	add  [hl]                                        ; $55d1: $86
	ld   l, c                                        ; $55d2: $69
	sbc  $bf                                         ; $55d3: $de $bf
	rst  $38                                         ; $55d5: $ff
	rst  $38                                         ; $55d6: $ff
	rst  $38                                         ; $55d7: $ff
	rst  $38                                         ; $55d8: $ff
	rst  $38                                         ; $55d9: $ff
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	db   $ec                                         ; $55dd: $ec
	call c, $8799                                    ; $55de: $dc $99 $87
	ld   h, l                                        ; $55e1: $65
	ld   d, h                                        ; $55e2: $54
	ld   hl, $1111                                   ; $55e3: $21 $11 $11
	ld   de, $1111                                   ; $55e6: $11 $11 $11
	ld   de, $1111                                   ; $55e9: $11 $11 $11
	ld   [de], a                                     ; $55ec: $12
	ld   hl, $7867                                   ; $55ed: $21 $67 $78
	adc  $dd                                         ; $55f0: $ce $dd
	rst  $38                                         ; $55f2: $ff
	rst  $38                                         ; $55f3: $ff
	rst  $38                                         ; $55f4: $ff
	rst  $38                                         ; $55f5: $ff
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	rst  $38                                         ; $55f8: $ff
	rst  $38                                         ; $55f9: $ff
	db   $ed                                         ; $55fa: $ed
	call c, $98a9                                    ; $55fb: $dc $a9 $98
	ld   h, l                                        ; $55fe: $65
	ld   h, l                                        ; $55ff: $65
	ld   b, e                                        ; $5600: $43
	ld   de, $1111                                   ; $5601: $11 $11 $11
	ld   de, $1111                                   ; $5604: $11 $11 $11
	ld   de, $1111                                   ; $5607: $11 $11 $11
	inc  hl                                          ; $560a: $23
	dec  [hl]                                        ; $560b: $35
	ld   d, [hl]                                     ; $560c: $56
	sbc  d                                           ; $560d: $9a
	sbc  e                                           ; $560e: $9b
	cp   $ff                                         ; $560f: $fe $ff
	rst  $38                                         ; $5611: $ff
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	rst  $38                                         ; $5614: $ff
	rst  $38                                         ; $5615: $ff
	rst  $38                                         ; $5616: $ff
	xor  $ed                                         ; $5617: $ee $ed
	jp   z, $8ab9                                    ; $5619: $ca $b9 $8a

	add  a                                           ; $561c: $87
	add  [hl]                                        ; $561d: $86
	ld   b, l                                        ; $561e: $45
	ld   d, e                                        ; $561f: $53
	ld   b, e                                        ; $5620: $43
	inc  de                                          ; $5621: $13
	ld   sp, $1122                                   ; $5622: $31 $22 $11
	ld   de, $1111                                   ; $5625: $11 $11 $11
	ld   hl, $3423                                   ; $5628: $21 $23 $34
	ld   d, [hl]                                     ; $562b: $56
	ld   a, c                                        ; $562c: $79
	sbc  c                                           ; $562d: $99
	cp   l                                           ; $562e: $bd
	sbc  $ef                                         ; $562f: $de $ef
	rst  $38                                         ; $5631: $ff
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	rst  $38                                         ; $5634: $ff
	rst  $38                                         ; $5635: $ff
	rst  $38                                         ; $5636: $ff
	rst  $38                                         ; $5637: $ff
	db   $ed                                         ; $5638: $ed
	res  7, d                                        ; $5639: $cb $ba
	sbc  b                                           ; $563b: $98
	halt                                             ; $563c: $76
	ld   d, l                                        ; $563d: $55
	ld   b, e                                        ; $563e: $43
	inc  sp                                          ; $563f: $33
	ld   [hl+], a                                    ; $5640: $22
	ld   [hl+], a                                    ; $5641: $22
	ld   de, $1111                                   ; $5642: $11 $11 $11
	ld   de, $2222                                   ; $5645: $11 $22 $22
	ld   [hl+], a                                    ; $5648: $22
	inc  sp                                          ; $5649: $33
	ld   b, h                                        ; $564a: $44
	ld   d, [hl]                                     ; $564b: $56
	ld   a, b                                        ; $564c: $78
	sbc  d                                           ; $564d: $9a
	cp   h                                           ; $564e: $bc
	sbc  $ff                                         ; $564f: $de $ff
	rst  $38                                         ; $5651: $ff
	rst  $38                                         ; $5652: $ff
	rst  $38                                         ; $5653: $ff
	rst  $38                                         ; $5654: $ff
	rst  $38                                         ; $5655: $ff
	cp   $dd                                         ; $5656: $fe $dd
	res  7, d                                        ; $5658: $cb $ba
	sbc  b                                           ; $565a: $98
	ld   [hl], a                                     ; $565b: $77
	ld   h, l                                        ; $565c: $65
	ld   d, h                                        ; $565d: $54
	ld   b, e                                        ; $565e: $43
	inc  sp                                          ; $565f: $33
	inc  sp                                          ; $5660: $33
	inc  sp                                          ; $5661: $33
	ld   [hl+], a                                    ; $5662: $22
	ld   [hl+], a                                    ; $5663: $22
	ld   [hl+], a                                    ; $5664: $22
	ld   [hl+], a                                    ; $5665: $22
	ld   [hl-], a                                    ; $5666: $32
	inc  hl                                          ; $5667: $23
	ld   [hl+], a                                    ; $5668: $22
	inc  sp                                          ; $5669: $33
	ld   b, h                                        ; $566a: $44
	ld   d, [hl]                                     ; $566b: $56
	ld   h, a                                        ; $566c: $67
	adc  b                                           ; $566d: $88
	xor  e                                           ; $566e: $ab
	call z, $ffde                                    ; $566f: $cc $de $ff
	rst  $38                                         ; $5672: $ff
	rst  $38                                         ; $5673: $ff
	rst  $38                                         ; $5674: $ff
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	db   $dd                                         ; $5677: $dd
	res  5, d                                        ; $5678: $cb $aa
	sbc  b                                           ; $567a: $98
	add  a                                           ; $567b: $87
	halt                                             ; $567c: $76
	ld   h, l                                        ; $567d: $65
	ld   d, l                                        ; $567e: $55
	ld   b, h                                        ; $567f: $44
	ld   b, h                                        ; $5680: $44
	inc  sp                                          ; $5681: $33
	inc  sp                                          ; $5682: $33
	inc  sp                                          ; $5683: $33
	ld   [hl+], a                                    ; $5684: $22
	ld   [hl-], a                                    ; $5685: $32
	ld   [hl-], a                                    ; $5686: $32
	ld   [hl+], a                                    ; $5687: $22
	ld   [hl+], a                                    ; $5688: $22
	inc  sp                                          ; $5689: $33
	inc  sp                                          ; $568a: $33
	ld   b, l                                        ; $568b: $45
	ld   d, [hl]                                     ; $568c: $56
	ld   [hl], a                                     ; $568d: $77
	adc  c                                           ; $568e: $89
	cp   e                                           ; $568f: $bb
	call $ffee                                       ; $5690: $cd $ee $ff
	rst  $38                                         ; $5693: $ff
	rst  $38                                         ; $5694: $ff
	rst  $38                                         ; $5695: $ff
	rst  $38                                         ; $5696: $ff
	cp   $ed                                         ; $5697: $fe $ed
	res  7, d                                        ; $5699: $cb $ba
	xor  c                                           ; $569b: $a9
	add  a                                           ; $569c: $87
	halt                                             ; $569d: $76
	ld   h, l                                        ; $569e: $65
	ld   d, l                                        ; $569f: $55
	ld   b, h                                        ; $56a0: $44
	ld   b, h                                        ; $56a1: $44
	ld   b, h                                        ; $56a2: $44
	inc  sp                                          ; $56a3: $33
	inc  sp                                          ; $56a4: $33
	inc  sp                                          ; $56a5: $33
	inc  sp                                          ; $56a6: $33
	ld   [hl+], a                                    ; $56a7: $22
	ld   [hl+], a                                    ; $56a8: $22

Call_0c9_56a9:
	ld   [hl+], a                                    ; $56a9: $22
	ld   [hl+], a                                    ; $56aa: $22
	inc  sp                                          ; $56ab: $33
	inc  [hl]                                        ; $56ac: $34
	ld   d, l                                        ; $56ad: $55
	ld   h, a                                        ; $56ae: $67
	adc  c                                           ; $56af: $89
	xor  e                                           ; $56b0: $ab
	cp   h                                           ; $56b1: $bc
	rst  $28                                         ; $56b2: $ef
	rst  $28                                         ; $56b3: $ef
	rst  $38                                         ; $56b4: $ff
	rst  $38                                         ; $56b5: $ff
	rst  $38                                         ; $56b6: $ff
	rst  $38                                         ; $56b7: $ff
	xor  $dd                                         ; $56b8: $ee $dd
	res  7, d                                        ; $56ba: $cb $ba
	sbc  c                                           ; $56bc: $99
	sbc  b                                           ; $56bd: $98
	halt                                             ; $56be: $76
	ld   h, [hl]                                     ; $56bf: $66
	ld   d, l                                        ; $56c0: $55
	ld   d, h                                        ; $56c1: $54
	ld   b, h                                        ; $56c2: $44
	ld   b, h                                        ; $56c3: $44
	inc  [hl]                                        ; $56c4: $34
	inc  sp                                          ; $56c5: $33
	inc  sp                                          ; $56c6: $33
	inc  sp                                          ; $56c7: $33
	inc  sp                                          ; $56c8: $33
	ld   [hl-], a                                    ; $56c9: $32
	ld   [hl+], a                                    ; $56ca: $22
	ld   [hl+], a                                    ; $56cb: $22
	inc  sp                                          ; $56cc: $33
	inc  [hl]                                        ; $56cd: $34
	ld   b, l                                        ; $56ce: $45
	ld   h, [hl]                                     ; $56cf: $66
	ld   a, c                                        ; $56d0: $79
	sbc  d                                           ; $56d1: $9a
	cp   h                                           ; $56d2: $bc
	sbc  $ee                                         ; $56d3: $de $ee
	rst  $38                                         ; $56d5: $ff
	rst  $38                                         ; $56d6: $ff
	rst  $38                                         ; $56d7: $ff
	rst  $38                                         ; $56d8: $ff
	cp   $ee                                         ; $56d9: $fe $ee
	call c, $a9ca                                    ; $56db: $dc $ca $a9
	sbc  b                                           ; $56de: $98
	add  a                                           ; $56df: $87
	halt                                             ; $56e0: $76
	ld   h, [hl]                                     ; $56e1: $66
	ld   d, l                                        ; $56e2: $55
	ld   d, l                                        ; $56e3: $55
	ld   d, l                                        ; $56e4: $55
	ld   b, h                                        ; $56e5: $44
	ld   b, h                                        ; $56e6: $44
	ld   b, e                                        ; $56e7: $43
	inc  sp                                          ; $56e8: $33
	inc  sp                                          ; $56e9: $33
	inc  sp                                          ; $56ea: $33
	inc  sp                                          ; $56eb: $33
	inc  hl                                          ; $56ec: $23
	inc  sp                                          ; $56ed: $33
	inc  [hl]                                        ; $56ee: $34
	ld   b, h                                        ; $56ef: $44
	ld   d, l                                        ; $56f0: $55
	ld   h, a                                        ; $56f1: $67
	ld   a, b                                        ; $56f2: $78
	sbc  d                                           ; $56f3: $9a
	cp   e                                           ; $56f4: $bb
	db   $dd                                         ; $56f5: $dd
	sbc  $ef                                         ; $56f6: $de $ef
	rst  $38                                         ; $56f8: $ff
	rst  $38                                         ; $56f9: $ff
	rst  $38                                         ; $56fa: $ff
	xor  $de                                         ; $56fb: $ee $de
	call z, $bacb                                    ; $56fd: $cc $cb $ba
	xor  c                                           ; $5700: $a9
	adc  b                                           ; $5701: $88
	ld   [hl], a                                     ; $5702: $77
	halt                                             ; $5703: $76
	ld   h, [hl]                                     ; $5704: $66
	ld   h, l                                        ; $5705: $65
	ld   d, l                                        ; $5706: $55
	ld   d, h                                        ; $5707: $54
	ld   b, h                                        ; $5708: $44
	ld   b, h                                        ; $5709: $44
	inc  sp                                          ; $570a: $33
	inc  sp                                          ; $570b: $33
	inc  sp                                          ; $570c: $33
	ld   [hl-], a                                    ; $570d: $32
	inc  hl                                          ; $570e: $23
	inc  sp                                          ; $570f: $33
	inc  sp                                          ; $5710: $33
	ld   b, h                                        ; $5711: $44
	ld   b, l                                        ; $5712: $45
	ld   h, a                                        ; $5713: $67
	ld   a, b                                        ; $5714: $78
	sbc  d                                           ; $5715: $9a
	cp   e                                           ; $5716: $bb
	db   $dd                                         ; $5717: $dd
	xor  $ff                                         ; $5718: $ee $ff
	rst  $38                                         ; $571a: $ff
	cp   $ef                                         ; $571b: $fe $ef
	cp   $ce                                         ; $571d: $fe $ce
	rst  $38                                         ; $571f: $ff
	cp   c                                           ; $5720: $b9
	cp   e                                           ; $5721: $bb
	sub  a                                           ; $5722: $97
	halt                                             ; $5723: $76
	ld   [hl], a                                     ; $5724: $77
	ld   h, h                                        ; $5725: $64
	dec  [hl]                                        ; $5726: $35
	ld   d, h                                        ; $5727: $54
	ld   de, $2133                                   ; $5728: $11 $33 $21
	ld   de, $1111                                   ; $572b: $11 $11 $11
	ld   de, $2211                                   ; $572e: $11 $11 $22
	dec  [hl]                                        ; $5731: $35
	ld   h, [hl]                                     ; $5732: $66
	ld   l, c                                        ; $5733: $69
	cp   e                                           ; $5734: $bb
	cp   e                                           ; $5735: $bb
	sbc  $ee                                         ; $5736: $de $ee
	sbc  $ef                                         ; $5738: $de $ef
	cp   $ee                                         ; $573a: $fe $ee
	xor  $ee                                         ; $573c: $ee $ee
	call z, $bbcc                                    ; $573e: $cc $cc $bb
	xor  c                                           ; $5741: $a9
	sbc  c                                           ; $5742: $99
	adc  b                                           ; $5743: $88
	ld   [hl], a                                     ; $5744: $77
	adc  b                                           ; $5745: $88
	ld   h, [hl]                                     ; $5746: $66
	ld   h, l                                        ; $5747: $65
	ld   d, h                                        ; $5748: $54
	inc  sp                                          ; $5749: $33
	inc  sp                                          ; $574a: $33
	ld   [hl+], a                                    ; $574b: $22
	ld   [hl+], a                                    ; $574c: $22
	ld   de, $1111                                   ; $574d: $11 $11 $11
	ld   de, $2412                                   ; $5750: $11 $12 $24
	ld   d, a                                        ; $5753: $57
	sbc  d                                           ; $5754: $9a
	sbc  e                                           ; $5755: $9b
	adc  $fe                                         ; $5756: $ce $fe
	sbc  $ef                                         ; $5758: $de $ef
	rst  $38                                         ; $575a: $ff
	sbc  $ff                                         ; $575b: $de $ff
	rst  $38                                         ; $575d: $ff
	db   $dd                                         ; $575e: $dd
	db   $dd                                         ; $575f: $dd
	res  5, d                                        ; $5760: $cb $aa
	cp   e                                           ; $5762: $bb
	xor  c                                           ; $5763: $a9
	adc  b                                           ; $5764: $88
	sbc  b                                           ; $5765: $98
	halt                                             ; $5766: $76
	ld   d, [hl]                                     ; $5767: $56
	ld   h, l                                        ; $5768: $65
	ld   b, e                                        ; $5769: $43
	inc  hl                                          ; $576a: $23
	ld   [hl-], a                                    ; $576b: $32
	ld   de, $1111                                   ; $576c: $11 $11 $11
	ld   de, $2411                                   ; $576f: $11 $11 $24
	inc  [hl]                                        ; $5772: $34
	ld   l, b                                        ; $5773: $68
	xor  d                                           ; $5774: $aa
	sbc  d                                           ; $5775: $9a
	cp   e                                           ; $5776: $bb
	sbc  $ec                                         ; $5777: $de $ec
	adc  $ff                                         ; $5779: $ce $ff
	cp   $df                                         ; $577b: $fe $df
	rst  $38                                         ; $577d: $ff
	db   $ed                                         ; $577e: $ed
	set  1, e                                        ; $577f: $cb $cb
	xor  d                                           ; $5781: $aa
	sbc  c                                           ; $5782: $99
	sbc  d                                           ; $5783: $9a
	xor  c                                           ; $5784: $a9
	adc  c                                           ; $5785: $89
	add  a                                           ; $5786: $87
	add  a                                           ; $5787: $87
	ld   h, l                                        ; $5788: $65
	ld   b, h                                        ; $5789: $44
	inc  sp                                          ; $578a: $33
	inc  sp                                          ; $578b: $33
	ld   de, $1111                                   ; $578c: $11 $11 $11
	ld   de, $2411                                   ; $578f: $11 $11 $24
	ld   b, l                                        ; $5792: $45
	ld   h, a                                        ; $5793: $67
	sbc  c                                           ; $5794: $99
	cp   d                                           ; $5795: $ba
	xor  d                                           ; $5796: $aa
	call z, $ddce                                    ; $5797: $cc $ce $dd
	xor  $ef                                         ; $579a: $ee $ef
	rst  $38                                         ; $579c: $ff
	db   $ed                                         ; $579d: $ed
	db   $ed                                         ; $579e: $ed
	call z, $aaba                                    ; $579f: $cc $ba $aa
	sbc  c                                           ; $57a2: $99
	xor  d                                           ; $57a3: $aa
	cp   d                                           ; $57a4: $ba
	xor  b                                           ; $57a5: $a8
	adc  b                                           ; $57a6: $88
	halt                                             ; $57a7: $76
	ld   d, h                                        ; $57a8: $54
	ld   b, h                                        ; $57a9: $44
	ld   b, e                                        ; $57aa: $43
	inc  sp                                          ; $57ab: $33
	ld   hl, $1111                                   ; $57ac: $21 $11 $11
	ld   de, $3511                                   ; $57af: $11 $11 $35
	ld   h, [hl]                                     ; $57b2: $66
	ld   a, b                                        ; $57b3: $78
	sbc  e                                           ; $57b4: $9b
	cp   e                                           ; $57b5: $bb

Call_0c9_57b6:
	cp   e                                           ; $57b6: $bb
	set  1, h                                        ; $57b7: $cb $cc
	call z, $dedd                                    ; $57b9: $cc $dd $de
	db   $ed                                         ; $57bc: $ed
	db   $dd                                         ; $57bd: $dd
	call $a9ca                                       ; $57be: $cd $ca $a9
	sbc  d                                           ; $57c1: $9a
	xor  d                                           ; $57c2: $aa
	xor  d                                           ; $57c3: $aa
	sbc  d                                           ; $57c4: $9a
	sbc  c                                           ; $57c5: $99
	add  a                                           ; $57c6: $87
	halt                                             ; $57c7: $76
	ld   h, h                                        ; $57c8: $64
	inc  sp                                          ; $57c9: $33
	inc  sp                                          ; $57ca: $33
	ld   [hl-], a                                    ; $57cb: $32
	ld   de, $1111                                   ; $57cc: $11 $11 $11
	ld   de, $7846                                   ; $57cf: $11 $46 $78
	adc  c                                           ; $57d2: $89
	sbc  c                                           ; $57d3: $99
	cp   d                                           ; $57d4: $ba
	xor  d                                           ; $57d5: $aa
	cp   h                                           ; $57d6: $bc
	call $ddcd                                       ; $57d7: $cd $cd $dd
	sbc  $de                                         ; $57da: $de $de
	db   $ed                                         ; $57dc: $ed
	res  7, c                                        ; $57dd: $cb $b9
	xor  d                                           ; $57df: $aa
	xor  d                                           ; $57e0: $aa
	sbc  c                                           ; $57e1: $99
	sbc  c                                           ; $57e2: $99
	xor  d                                           ; $57e3: $aa
	sbc  c                                           ; $57e4: $99
	ld   [hl], a                                     ; $57e5: $77
	ld   h, [hl]                                     ; $57e6: $66
	ld   d, h                                        ; $57e7: $54
	ld   b, e                                        ; $57e8: $43
	inc  sp                                          ; $57e9: $33
	ld   [hl-], a                                    ; $57ea: $32
	ld   de, $1111                                   ; $57eb: $11 $11 $11
	ld   [hl], $8a                                   ; $57ee: $36 $8a
	xor  b                                           ; $57f0: $a8
	sbc  c                                           ; $57f1: $99
	xor  d                                           ; $57f2: $aa
	cp   d                                           ; $57f3: $ba
	xor  d                                           ; $57f4: $aa
	cp   e                                           ; $57f5: $bb
	cp   l                                           ; $57f6: $bd
	db   $ed                                         ; $57f7: $ed
	xor  $dd                                         ; $57f8: $ee $dd
	db   $dd                                         ; $57fa: $dd
	call c, $88b9                                    ; $57fb: $dc $b9 $88
	sbc  c                                           ; $57fe: $99
	xor  c                                           ; $57ff: $a9
	sbc  c                                           ; $5800: $99
	sbc  c                                           ; $5801: $99
	adc  c                                           ; $5802: $89
	halt                                             ; $5803: $76
	ld   h, l                                        ; $5804: $65
	ld   d, h                                        ; $5805: $54
	ld   b, h                                        ; $5806: $44
	inc  sp                                          ; $5807: $33
	ld   [hl-], a                                    ; $5808: $32
	ld   [hl+], a                                    ; $5809: $22
	ld   hl, $4602                                   ; $580a: $21 $02 $46
	sbc  c                                           ; $580d: $99
	sbc  b                                           ; $580e: $98
	adc  b                                           ; $580f: $88
	adc  c                                           ; $5810: $89
	xor  e                                           ; $5811: $ab
	xor  e                                           ; $5812: $ab
	xor  e                                           ; $5813: $ab
	cp   h                                           ; $5814: $bc
	call $dbdd                                       ; $5815: $cd $dd $db
	call z, $a9ba                                    ; $5818: $cc $ba $a9
	adc  b                                           ; $581b: $88
	sbc  c                                           ; $581c: $99
	sbc  d                                           ; $581d: $9a
	xor  c                                           ; $581e: $a9
	adc  c                                           ; $581f: $89
	add  a                                           ; $5820: $87
	ld   [hl], a                                     ; $5821: $77
	halt                                             ; $5822: $76
	ld   h, [hl]                                     ; $5823: $66
	ld   h, l                                        ; $5824: $65
	ld   d, l                                        ; $5825: $55
	ld   b, e                                        ; $5826: $43
	ld   [hl+], a                                    ; $5827: $22
	inc  hl                                          ; $5828: $23
	ld   [hl-], a                                    ; $5829: $32
	dec  [hl]                                        ; $582a: $35
	ld   a, b                                        ; $582b: $78
	sbc  d                                           ; $582c: $9a
	sbc  c                                           ; $582d: $99
	sbc  b                                           ; $582e: $98
	adc  b                                           ; $582f: $88
	adc  c                                           ; $5830: $89
	xor  d                                           ; $5831: $aa
	cp   e                                           ; $5832: $bb
	xor  e                                           ; $5833: $ab
	cp   h                                           ; $5834: $bc
	call z, $b9ba                                    ; $5835: $cc $ba $b9
	sbc  c                                           ; $5838: $99
	adc  b                                           ; $5839: $88
	adc  b                                           ; $583a: $88
	adc  b                                           ; $583b: $88
	adc  c                                           ; $583c: $89
	sbc  c                                           ; $583d: $99
	adc  c                                           ; $583e: $89
	add  a                                           ; $583f: $87
	halt                                             ; $5840: $76
	ld   h, [hl]                                     ; $5841: $66
	ld   [hl], a                                     ; $5842: $77
	ld   a, b                                        ; $5843: $78
	sbc  c                                           ; $5844: $99
	sbc  b                                           ; $5845: $98
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	ld   [hl], a                                     ; $5848: $77
	halt                                             ; $5849: $76
	ld   d, h                                        ; $584a: $54
	inc  sp                                          ; $584b: $33
	inc  sp                                          ; $584c: $33
	ld   b, h                                        ; $584d: $44
	ld   d, [hl]                                     ; $584e: $56
	ld   h, a                                        ; $584f: $67
	ld   a, b                                        ; $5850: $78
	adc  c                                           ; $5851: $89
	sbc  b                                           ; $5852: $98
	ld   [hl], a                                     ; $5853: $77
	ld   a, b                                        ; $5854: $78
	adc  c                                           ; $5855: $89
	xor  d                                           ; $5856: $aa
	xor  d                                           ; $5857: $aa
	cp   e                                           ; $5858: $bb
	cp   e                                           ; $5859: $bb
	xor  d                                           ; $585a: $aa
	sbc  c                                           ; $585b: $99
	adc  c                                           ; $585c: $89
	adc  c                                           ; $585d: $89
	adc  c                                           ; $585e: $89
	adc  b                                           ; $585f: $88
	sbc  b                                           ; $5860: $98
	adc  c                                           ; $5861: $89
	adc  b                                           ; $5862: $88
	ld   [hl], a                                     ; $5863: $77
	ld   [hl], a                                     ; $5864: $77
	ld   [hl], a                                     ; $5865: $77
	ld   [hl], a                                     ; $5866: $77
	ld   a, b                                        ; $5867: $78
	adc  c                                           ; $5868: $89
	sbc  b                                           ; $5869: $98
	sbc  b                                           ; $586a: $98
	adc  b                                           ; $586b: $88
	sbc  c                                           ; $586c: $99
	adc  b                                           ; $586d: $88
	adc  b                                           ; $586e: $88
	sbc  c                                           ; $586f: $99
	adc  b                                           ; $5870: $88
	adc  b                                           ; $5871: $88
	sbc  c                                           ; $5872: $99
	sbc  b                                           ; $5873: $98
	adc  b                                           ; $5874: $88
	add  a                                           ; $5875: $87
	ld   [hl], a                                     ; $5876: $77
	ld   [hl], a                                     ; $5877: $77
	ld   h, [hl]                                     ; $5878: $66
	ld   h, [hl]                                     ; $5879: $66
	ld   h, [hl]                                     ; $587a: $66
	ld   h, [hl]                                     ; $587b: $66
	ld   h, [hl]                                     ; $587c: $66
	ld   h, [hl]                                     ; $587d: $66
	ld   h, [hl]                                     ; $587e: $66
	ld   h, [hl]                                     ; $587f: $66
	ld   h, a                                        ; $5880: $67
	ld   [hl], a                                     ; $5881: $77
	ld   [hl], a                                     ; $5882: $77
	adc  b                                           ; $5883: $88
	adc  b                                           ; $5884: $88
	adc  b                                           ; $5885: $88
	adc  b                                           ; $5886: $88
	sbc  c                                           ; $5887: $99
	adc  c                                           ; $5888: $89
	sbc  c                                           ; $5889: $99
	xor  d                                           ; $588a: $aa
	xor  d                                           ; $588b: $aa
	xor  d                                           ; $588c: $aa
	sbc  d                                           ; $588d: $9a
	xor  d                                           ; $588e: $aa
	sbc  c                                           ; $588f: $99
	sbc  c                                           ; $5890: $99
	adc  c                                           ; $5891: $89
	sbc  b                                           ; $5892: $98
	ld   [hl], a                                     ; $5893: $77
	halt                                             ; $5894: $76
	ld   h, l                                        ; $5895: $65
	ld   b, h                                        ; $5896: $44
	inc  sp                                          ; $5897: $33
	inc  [hl]                                        ; $5898: $34
	ld   d, [hl]                                     ; $5899: $56
	adc  c                                           ; $589a: $89
	xor  d                                           ; $589b: $aa
	xor  b                                           ; $589c: $a8
	ld   [hl], a                                     ; $589d: $77
	ld   h, [hl]                                     ; $589e: $66
	ld   h, a                                        ; $589f: $67
	adc  c                                           ; $58a0: $89
	xor  c                                           ; $58a1: $a9
	xor  d                                           ; $58a2: $aa
	xor  e                                           ; $58a3: $ab
	cp   e                                           ; $58a4: $bb
	xor  d                                           ; $58a5: $aa
	sbc  b                                           ; $58a6: $98
	ld   [hl], a                                     ; $58a7: $77
	ld   [hl], a                                     ; $58a8: $77
	adc  c                                           ; $58a9: $89
	sbc  c                                           ; $58aa: $99
	sbc  c                                           ; $58ab: $99
	adc  c                                           ; $58ac: $89
	add  a                                           ; $58ad: $87
	ld   [hl], a                                     ; $58ae: $77
	halt                                             ; $58af: $76
	ld   h, [hl]                                     ; $58b0: $66
	ld   [hl], a                                     ; $58b1: $77
	adc  c                                           ; $58b2: $89
	sbc  c                                           ; $58b3: $99
	xor  c                                           ; $58b4: $a9
	sbc  b                                           ; $58b5: $98
	sbc  b                                           ; $58b6: $98
	adc  b                                           ; $58b7: $88
	adc  b                                           ; $58b8: $88
	adc  b                                           ; $58b9: $88
	adc  c                                           ; $58ba: $89
	sbc  b                                           ; $58bb: $98
	sbc  c                                           ; $58bc: $99
	sbc  b                                           ; $58bd: $98
	sbc  b                                           ; $58be: $98
	add  a                                           ; $58bf: $87
	ld   [hl], a                                     ; $58c0: $77
	ld   [hl], a                                     ; $58c1: $77
	ld   [hl], a                                     ; $58c2: $77
	ld   a, b                                        ; $58c3: $78
	adc  b                                           ; $58c4: $88
	adc  b                                           ; $58c5: $88
	add  a                                           ; $58c6: $87
	ld   [hl], a                                     ; $58c7: $77
	ld   [hl], a                                     ; $58c8: $77
	ld   [hl], a                                     ; $58c9: $77
	ld   a, b                                        ; $58ca: $78
	adc  b                                           ; $58cb: $88
	adc  c                                           ; $58cc: $89
	sbc  c                                           ; $58cd: $99
	sbc  c                                           ; $58ce: $99
	sbc  b                                           ; $58cf: $98
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
	add  c                                           ; $58f6: $81
	ld   de, $1111                                   ; $58f7: $11 $11 $11
	ld   de, $1111                                   ; $58fa: $11 $11 $11
	ld   de, $1111                                   ; $58fd: $11 $11 $11
	ld   de, $1111                                   ; $5900: $11 $11 $11
	ld   de, $1111                                   ; $5903: $11 $11 $11
	ld   de, $1111                                   ; $5906: $11 $11 $11
	ld   de, $1111                                   ; $5909: $11 $11 $11
	ld   de, $1111                                   ; $590c: $11 $11 $11
	ld   de, $1111                                   ; $590f: $11 $11 $11
	ld   de, $1111                                   ; $5912: $11 $11 $11
	ld   de, $4800                                   ; $5915: $11 $00 $48
	ld   de, $1111                                   ; $5918: $11 $11 $11
	ld   de, $1111                                   ; $591b: $11 $11 $11
	ld   de, $1111                                   ; $591e: $11 $11 $11
	ld   de, $5413                                   ; $5921: $11 $13 $54
	ld   d, h                                        ; $5924: $54
	ld   d, h                                        ; $5925: $54
	ld   b, c                                        ; $5926: $41
	rra                                              ; $5927: $1f
	rst  $38                                         ; $5928: $ff
	pop  af                                          ; $5929: $f1
	ld   de, $1e11                                   ; $592a: $11 $11 $1e
	ld   hl, $1c11                                   ; $592d: $21 $11 $1c
	sbc  $ac                                         ; $5930: $de $ac
	sbc  $a1                                         ; $5932: $de $a1
	ld   de, $1111                                   ; $5934: $11 $11 $11
	ld   de, $1111                                   ; $5937: $11 $11 $11
	ld   de, $1111                                   ; $593a: $11 $11 $11
	ld   de, $1111                                   ; $593d: $11 $11 $11
	ld   de, $5411                                   ; $5940: $11 $11 $54
	ld   b, h                                        ; $5943: $44
	ld   l, $11                                      ; $5944: $2e $11
	ld   d, h                                        ; $5946: $54
	ld   d, h                                        ; $5947: $54
	ld   h, a                                        ; $5948: $67
	ld   [hl], d                                     ; $5949: $72
	ld   de, $1111                                   ; $594a: $11 $11 $11
	ld   de, $1112                                   ; $594d: $11 $12 $11
	ld   [de], a                                     ; $5950: $12
	ld   de, $1111                                   ; $5951: $11 $11 $11
	ld   h, [hl]                                     ; $5954: $66
	halt                                             ; $5955: $76
	cp   $11                                         ; $5956: $fe $11
	adc  b                                           ; $5958: $88
	adc  b                                           ; $5959: $88
	add  a                                           ; $595a: $87
	ld   [hl], a                                     ; $595b: $77
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	sbc  c                                           ; $595e: $99
	adc  b                                           ; $595f: $88
	sbc  b                                           ; $5960: $98
	adc  c                                           ; $5961: $89
	add  a                                           ; $5962: $87
	ld   [hl], l                                     ; $5963: $75
	ld   d, a                                        ; $5964: $57
	sbc  b                                           ; $5965: $98
	sbc  d                                           ; $5966: $9a
	xor  c                                           ; $5967: $a9
	sbc  d                                           ; $5968: $9a
	xor  c                                           ; $5969: $a9
	add  a                                           ; $596a: $87
	ld   h, h                                        ; $596b: $64
	dec  [hl]                                        ; $596c: $35
	sbc  d                                           ; $596d: $9a
	sbc  d                                           ; $596e: $9a
	xor  d                                           ; $596f: $aa
	sbc  b                                           ; $5970: $98
	xor  c                                           ; $5971: $a9
	add  a                                           ; $5972: $87
	ld   h, l                                        ; $5973: $65
	inc  sp                                          ; $5974: $33
	ld   a, e                                        ; $5975: $7b
	xor  c                                           ; $5976: $a9
	cp   e                                           ; $5977: $bb
	xor  b                                           ; $5978: $a8
	sbc  c                                           ; $5979: $99
	sub  a                                           ; $597a: $97
	ld   h, l                                        ; $597b: $65
	ld   b, d                                        ; $597c: $42
	ld   c, c                                        ; $597d: $49
	jp   z, $a9ab                                    ; $597e: $ca $ab $a9

	adc  d                                           ; $5981: $8a
	sbc  c                                           ; $5982: $99
	halt                                             ; $5983: $76
	ld   d, d                                        ; $5984: $52
	daa                                              ; $5985: $27
	res  5, d                                        ; $5986: $cb $aa
	jp   z, $a988                                    ; $5988: $ca $88 $a9

	halt                                             ; $598b: $76
	ld   h, h                                        ; $598c: $64
	inc  hl                                          ; $598d: $23
	sbc  e                                           ; $598e: $9b
	xor  c                                           ; $598f: $a9
	cp   h                                           ; $5990: $bc
	sbc  b                                           ; $5991: $98
	adc  c                                           ; $5992: $89
	sub  a                                           ; $5993: $97
	ld   h, [hl]                                     ; $5994: $66
	ld   sp, wPlayerNameRamBank                                   ; $5995: $31 $4a $c9
	xor  e                                           ; $5998: $ab
	xor  d                                           ; $5999: $aa
	ld   a, c                                        ; $599a: $79
	xor  c                                           ; $599b: $a9
	halt                                             ; $599c: $76
	ld   h, e                                        ; $599d: $63
	dec  d                                           ; $599e: $15
	xor  e                                           ; $599f: $ab
	sbc  d                                           ; $59a0: $9a
	cp   e                                           ; $59a1: $bb
	add  a                                           ; $59a2: $87
	adc  c                                           ; $59a3: $89
	sub  [hl]                                        ; $59a4: $96
	ld   h, [hl]                                     ; $59a5: $66
	ld   [hl+], a                                    ; $59a6: $22
	ld   e, e                                        ; $59a7: $5b
	cp   d                                           ; $59a8: $ba
	cp   e                                           ; $59a9: $bb
	cp   c                                           ; $59aa: $b9
	ld   a, b                                        ; $59ab: $78
	xor  c                                           ; $59ac: $a9
	ld   h, [hl]                                     ; $59ad: $66
	ld   h, d                                        ; $59ae: $62
	rla                                              ; $59af: $17
	db   $db                                         ; $59b0: $db
	xor  e                                           ; $59b1: $ab
	cp   e                                           ; $59b2: $bb
	ld   [hl], a                                     ; $59b3: $77
	adc  d                                           ; $59b4: $8a
	sub  [hl]                                        ; $59b5: $96

Call_0c9_59b6:
	ld   [hl], l                                     ; $59b6: $75
	ld   hl, $aa6c                                   ; $59b7: $21 $6c $aa
	cp   h                                           ; $59ba: $bc
	or   a                                           ; $59bb: $b7
	ld   a, b                                        ; $59bc: $78
	cp   c                                           ; $59bd: $b9
	ld   d, a                                        ; $59be: $57
	ld   d, d                                        ; $59bf: $52
	ld   d, $cb                                      ; $59c0: $16 $cb
	xor  e                                           ; $59c2: $ab
	call z, $8b77                                    ; $59c3: $cc $77 $8b
	add  l                                           ; $59c6: $85
	ld   [hl], l                                     ; $59c7: $75
	ld   de, $aa7d                                   ; $59c8: $11 $7d $aa
	cp   l                                           ; $59cb: $bd
	and  [hl]                                        ; $59cc: $a6
	ld   a, c                                        ; $59cd: $79
	or   a                                           ; $59ce: $b7
	ld   d, a                                        ; $59cf: $57
	ld   sp, $cb3c                                   ; $59d0: $31 $3c $cb
	sbc  e                                           ; $59d3: $9b
	ret  z                                           ; $59d4: $c8

	ld   h, a                                        ; $59d5: $67
	xor  d                                           ; $59d6: $aa
	adc  d                                           ; $59d7: $8a
	add  h                                           ; $59d8: $84
	ld   de, $ca6d                                   ; $59d9: $11 $6d $ca
	cp   l                                           ; $59dc: $bd
	and  l                                           ; $59dd: $a5
	ld   h, a                                        ; $59de: $67
	sbc  b                                           ; $59df: $98
	sbc  h                                           ; $59e0: $9c
	sub  [hl]                                        ; $59e1: $96
	ld   de, $fc29                                   ; $59e2: $11 $29 $fc
	cp   e                                           ; $59e5: $bb
	or   [hl]                                        ; $59e6: $b6
	ld   b, a                                        ; $59e7: $47
	adc  b                                           ; $59e8: $88
	ld   a, d                                        ; $59e9: $7a
	db   $db                                         ; $59ea: $db
	sub  [hl]                                        ; $59eb: $96
	ld   sp, $fc1c                                   ; $59ec: $31 $1c $fc
	xor  c                                           ; $59ef: $a9
	or   h                                           ; $59f0: $b4
	dec  [hl]                                        ; $59f1: $35
	ld   a, h                                        ; $59f2: $7c
	ld   a, d                                        ; $59f3: $7a
	db   $db                                         ; $59f4: $db
	add  h                                           ; $59f5: $84
	ld   sp, $fd1a                                   ; $59f6: $31 $1a $fd
	rst  ToBoot                                         ; $59f9: $c7
	and  h                                           ; $59fa: $a4
	ld   d, $5e                                      ; $59fb: $16 $5e
	cp   d                                           ; $59fd: $ba
	jp   c, $2395                                    ; $59fe: $da $95 $23

	ld   hl, $d9ff                                   ; $5a01: $21 $ff $d9
	ld   e, b                                        ; $5a04: $58
	ld   [hl+], a                                    ; $5a05: $22
	add  a                                           ; $5a06: $87
	ld   [$87ad], a                                  ; $5a07: $ea $ad $87
	ld   b, d                                        ; $5a0a: $42
	ld   hl, $eb7f                                   ; $5a0b: $21 $7f $eb
	ld   [hl], l                                     ; $5a0e: $75
	ld   [hl], c                                     ; $5a0f: $71
	ld   a, b                                        ; $5a10: $78
	xor  a                                           ; $5a11: $af
	ld   a, h                                        ; $5a12: $7c
	rst  ToBoot                                         ; $5a13: $c7
	ld   h, e                                        ; $5a14: $63
	ld   d, c                                        ; $5a15: $51
	rra                                              ; $5a16: $1f
	ei                                               ; $5a17: $fb
	sub  e                                           ; $5a18: $93
	or   d                                           ; $5a19: $b2
	add  hl, de                                      ; $5a1a: $19
	ld   l, a                                        ; $5a1b: $6f
	or   a                                           ; $5a1c: $b7
	ld   [$3862], a                                  ; $5a1d: $ea $62 $38
	ld   de, $b6ff                                   ; $5a20: $11 $ff $b6
	ld   c, d                                        ; $5a23: $4a
	dec  d                                           ; $5a24: $15
	adc  c                                           ; $5a25: $89
	rst  $30                                         ; $5a26: $f7
	xor  l                                           ; $5a27: $ad
	ld   [hl], a                                     ; $5a28: $77
	inc  d                                           ; $5a29: $14
	ld   b, c                                        ; $5a2a: $41
	rst  $28                                         ; $5a2b: $ef
	cp   h                                           ; $5a2c: $bc
	add  hl, hl                                      ; $5a2d: $29
	ld   sp, $fcc4                                   ; $5a2e: $31 $c4 $fc
	adc  a                                           ; $5a31: $8f
	add  l                                           ; $5a32: $85
	ld   b, c                                        ; $5a33: $41
	ld   b, c                                        ; $5a34: $41
	cp   a                                           ; $5a35: $bf
	xor  a                                           ; $5a36: $af
	ld   c, c                                        ; $5a37: $49
	ld   b, c                                        ; $5a38: $41
	or   h                                           ; $5a39: $b4
	xor  $8f                                         ; $5a3a: $ee $8f
	and  h                                           ; $5a3c: $a4
	ld   b, c                                        ; $5a3d: $41
	ld   b, c                                        ; $5a3e: $41
	ld   l, a                                        ; $5a3f: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a40: $cf
	ld   e, b                                        ; $5a41: $58
	ld   h, c                                        ; $5a42: $61
	or   h                                           ; $5a43: $b4
	rst  JumpTable                                         ; $5a44: $df
	adc  a                                           ; $5a45: $8f
	push de                                          ; $5a46: $d5
	ld   b, c                                        ; $5a47: $41
	ld   hl, $be7f                                   ; $5a48: $21 $7f $be
	ld   [hl], a                                     ; $5a4b: $77
	ld   d, c                                        ; $5a4c: $51
	or   l                                           ; $5a4d: $b5
	adc  $af                                         ; $5a4e: $ce $af
	or   e                                           ; $5a50: $b3
	ld   b, c                                        ; $5a51: $41
	ld   de, $afaf                                   ; $5a52: $11 $af $af
	ld   l, c                                        ; $5a55: $69
	ld   hl, $ecb5                                   ; $5a56: $21 $b5 $ec
	cp   a                                           ; $5a59: $bf
	jp   $1111                                       ; $5a5a: $c3 $11 $11


	rst  $38                                         ; $5a5d: $ff
	xor  l                                           ; $5a5e: $ad
	ld   l, c                                        ; $5a5f: $69
	ld   [de], a                                     ; $5a60: $12
	add  a                                           ; $5a61: $87
	ei                                               ; $5a62: $fb
	rst  $38                                         ; $5a63: $ff
	ld   h, d                                        ; $5a64: $62
	ld   de, $ff16                                   ; $5a65: $11 $16 $ff
	jp   c, $1776                                    ; $5a68: $da $76 $17

	ld   l, h                                        ; $5a6b: $6c
	jp   c, $31fd                                    ; $5a6c: $da $fd $31

	ld   de, $fd3f                                   ; $5a6f: $11 $3f $fd
	ret                                              ; $5a72: $c9


	ld   h, c                                        ; $5a73: $61
	ld   d, l                                        ; $5a74: $55
	sbc  a                                           ; $5a75: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a76: $cf
	and  $11                                         ; $5a77: $e6 $11
	ld   de, $dcff                                   ; $5a79: $11 $ff $dc
	sbc  c                                           ; $5a7c: $99
	ld   [de], a                                     ; $5a7d: $12
	ld   h, a                                        ; $5a7e: $67
	ld   sp, hl                                      ; $5a7f: $f9
	rst  $38                                         ; $5a80: $ff
	add  c                                           ; $5a81: $81
	ld   de, $ef6f                                   ; $5a82: $11 $6f $ef
	call $8341                                       ; $5a85: $cd $41 $83
	sbc  e                                           ; $5a88: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a89: $cf
	rst  $10                                         ; $5a8a: $d7
	ld   de, $fe17                                   ; $5a8b: $11 $17 $fe
	db   $fc                                         ; $5a8e: $fc
	call nz, Call_0c9_4b16                           ; $5a8f: $c4 $16 $4b
	xor  l                                           ; $5a92: $ad
	db   $fd                                         ; $5a93: $fd
	ld   b, c                                        ; $5a94: $41
	ld   de, $ddff                                   ; $5a95: $11 $ff $dd
	db   $db                                         ; $5a98: $db
	ld   d, $67                                      ; $5a99: $16 $67
	cp   c                                           ; $5a9b: $b9
	rst  $38                                         ; $5a9c: $ff
	ld   [hl], c                                     ; $5a9d: $71
	ld   de, $cdff                                   ; $5a9e: $11 $ff $cd
	cp   a                                           ; $5aa1: $bf
	inc  de                                          ; $5aa2: $13
	sub  h                                           ; $5aa3: $94
	rst  ToBoot                                         ; $5aa4: $c7
	rst  $38                                         ; $5aa5: $ff
	add  d                                           ; $5aa6: $82
	ld   de, $bfaf                                   ; $5aa7: $11 $af $bf
	xor  a                                           ; $5aaa: $af
	ld   hl, $d993                                   ; $5aab: $21 $93 $d9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aae: $cf
	and  e                                           ; $5aaf: $a3
	ld   de, $adaf                                   ; $5ab0: $11 $af $ad
	xor  a                                           ; $5ab3: $af
	ld   b, c                                        ; $5ab4: $41
	or   h                                           ; $5ab5: $b4
	ret  z                                           ; $5ab6: $c8

	xor  a                                           ; $5ab7: $af
	or   e                                           ; $5ab8: $b3
	ld   de, $8d9f                                   ; $5ab9: $11 $9f $8d
	sbc  a                                           ; $5abc: $9f
	ld   d, c                                        ; $5abd: $51
	call nz, $afd9                                   ; $5abe: $c4 $d9 $af
	and  c                                           ; $5ac1: $a1
	ld   de, $7def                                   ; $5ac2: $11 $ef $7d
	sbc  a                                           ; $5ac5: $9f
	ld   sp, $e9d5                                   ; $5ac6: $31 $d5 $e9
	cp   a                                           ; $5ac9: $bf
	ld   [hl], c                                     ; $5aca: $71
	ld   de, $8dff                                   ; $5acb: $11 $ff $8d
	adc  a                                           ; $5ace: $8f
	ld   de, $f7c5                                   ; $5acf: $11 $c5 $f7
	rst  $28                                         ; $5ad2: $ef
	ld   b, c                                        ; $5ad3: $41
	ld   de, $9cff                                   ; $5ad4: $11 $ff $9c
	xor  a                                           ; $5ad7: $af
	dec  d                                           ; $5ad8: $15
	and  a                                           ; $5ad9: $a7
	rst  $30                                         ; $5ada: $f7
	rst  $38                                         ; $5adb: $ff
	ld   hl, $f912                                   ; $5adc: $21 $12 $f9
	cp   d                                           ; $5adf: $ba
	db   $dd                                         ; $5ae0: $dd
	add  hl, de                                      ; $5ae1: $19
	ld   a, e                                        ; $5ae2: $7b
	rst  ToBoot                                         ; $5ae3: $c7
	ei                                               ; $5ae4: $fb
	ld   de, $f61f                                   ; $5ae5: $11 $1f $f6
	and  a                                           ; $5ae8: $a7
	db   $f4                                         ; $5ae9: $f4
	inc  e                                           ; $5aea: $1c
	ld   l, a                                        ; $5aeb: $6f
	ld   a, e                                        ; $5aec: $7b
	push af                                          ; $5aed: $f5
	ld   de, $e71f                                   ; $5aee: $11 $1f $e7
	adc  d                                           ; $5af1: $8a
	pop  af                                          ; $5af2: $f1
	ld   a, d                                        ; $5af3: $7a
	xor  [hl]                                        ; $5af4: $ae
	ld   l, a                                        ; $5af5: $6f
	pop  bc                                          ; $5af6: $c1
	ld   de, $79cf                                   ; $5af7: $11 $cf $79
	ld   l, a                                        ; $5afa: $6f
	ld   [hl], c                                     ; $5afb: $71
	or   a                                           ; $5afc: $b7
	ld   sp, hl                                      ; $5afd: $f9
	xor  a                                           ; $5afe: $af
	ld   h, c                                        ; $5aff: $61
	ld   de, $78ff                                   ; $5b00: $11 $ff $78
	sbc  a                                           ; $5b03: $9f
	ld   d, $8b                                      ; $5b04: $16 $8b
	rst  $30                                         ; $5b06: $f7
	ei                                               ; $5b07: $fb
	ld   de, $f81f                                   ; $5b08: $11 $1f $f8
	add  l                                           ; $5b0b: $85
	or   $1a                                         ; $5b0c: $f6 $1a
	ld   a, a                                        ; $5b0e: $7f
	sbc  e                                           ; $5b0f: $9b
	push hl                                          ; $5b10: $e5
	ld   de, $e73f                                   ; $5b11: $11 $3f $e7
	ld   e, h                                        ; $5b14: $5c
	pop  hl                                          ; $5b15: $e1
	ld   [hl], a                                     ; $5b16: $77
	xor  $7e                                         ; $5b17: $ee $7e
	sub  c                                           ; $5b19: $91
	ld   de, $76ff                                   ; $5b1a: $11 $ff $76
	ld   l, a                                        ; $5b1d: $6f
	inc  hl                                          ; $5b1e: $23
	adc  e                                           ; $5b1f: $8b
	rst  $30                                         ; $5b20: $f7
	jp   z, $1e31                                    ; $5b21: $ca $31 $1e

	ld   a, [$f963]                                  ; $5b24: $fa $63 $f9
	jr   jr_0c9_5ba8                                 ; $5b27: $18 $7f

	xor  c                                           ; $5b29: $a9
	push bc                                          ; $5b2a: $c5
	ld   de, $e75f                                   ; $5b2b: $11 $5f $e7
	dec  hl                                          ; $5b2e: $2b
	pop  hl                                          ; $5b2f: $e1
	add  [hl]                                        ; $5b30: $86
	cp   $8c                                         ; $5b31: $fe $8c
	ld   d, c                                        ; $5b33: $51
	ld   de, $93ff                                   ; $5b34: $11 $ff $93
	ld   l, a                                        ; $5b37: $6f
	daa                                              ; $5b38: $27
	ld   l, l                                        ; $5b39: $6d
	rst  $30                                         ; $5b3a: $f7
	or   a                                           ; $5b3b: $b7
	ld   sp, $fa1f                                   ; $5b3c: $31 $1f $fa
	ld   d, d                                        ; $5b3f: $52
	or   $57                                         ; $5b40: $f6 $57
	adc  a                                           ; $5b42: $8f
	sbc  e                                           ; $5b43: $9b
	ld   [hl], e                                     ; $5b44: $73
	ld   de, $c6ff                                   ; $5b45: $11 $ff $c6
	ld   e, $85                                      ; $5b48: $1e $85
	sub  [hl]                                        ; $5b4a: $96
	ld   a, [$4199]                                  ; $5b4b: $fa $99 $41
	ld   a, [de]                                     ; $5b4e: $1a
	cp   $81                                         ; $5b4f: $fe $81
	cp   h                                           ; $5b51: $bc
	ld   c, c                                        ; $5b52: $49
	ld   e, a                                        ; $5b53: $5f
	ret  c                                           ; $5b54: $d8

	add  d                                           ; $5b55: $82
	ld   de, $f98f                                   ; $5b56: $11 $8f $f9
	add  hl, de                                      ; $5b59: $19
	push bc                                          ; $5b5a: $c5
	sub  l                                           ; $5b5b: $95
	cp   $89                                         ; $5b5c: $fe $89
	ld   [hl-], a                                    ; $5b5e: $32
	dec  d                                           ; $5b5f: $15
	rst  $38                                         ; $5b60: $ff
	and  c                                           ; $5b61: $a1
	ld   l, h                                        ; $5b62: $6c
	ld   e, d                                        ; $5b63: $5a
	ld   c, a                                        ; $5b64: $4f
	ld   sp, hl                                      ; $5b65: $f9
	sub  c                                           ; $5b66: $91
	ld   de, $fb5f                                   ; $5b67: $11 $5f $fb

jr_0c9_5b6a:
	dec  d                                           ; $5b6a: $15
	push bc                                          ; $5b6b: $c5
	and  l                                           ; $5b6c: $a5
	rst  $28                                         ; $5b6d: $ef
	adc  b                                           ; $5b6e: $88
	ld   [de], a                                     ; $5b6f: $12
	inc  de                                          ; $5b70: $13
	rst  $38                                         ; $5b71: $ff
	and  c                                           ; $5b72: $a1
	ld   c, h                                        ; $5b73: $4c
	ld   e, e                                        ; $5b74: $5b
	ld   e, [hl]                                     ; $5b75: $5e
	ld   a, [$1181]                                  ; $5b76: $fa $81 $11
	ld   c, a                                        ; $5b79: $4f
	ei                                               ; $5b7a: $fb
	dec  d                                           ; $5b7b: $15
	add  $b5                                         ; $5b7c: $c6 $b5
	rst  $28                                         ; $5b7e: $ef
	sbc  b                                           ; $5b7f: $98
	ld   de, $ff15                                   ; $5b80: $11 $15 $ff
	or   c                                           ; $5b83: $b1
	ld   e, h                                        ; $5b84: $5c
	ld   l, e                                        ; $5b85: $6b
	ld   e, [hl]                                     ; $5b86: $5e
	ld   sp, hl                                      ; $5b87: $f9
	add  c                                           ; $5b88: $81
	ld   de, $eb6f                                   ; $5b89: $11 $6f $eb
	ld   d, $c6                                      ; $5b8c: $16 $c6
	or   l                                           ; $5b8e: $b5
	rst  $38                                         ; $5b8f: $ff
	adc  b                                           ; $5b90: $88
	ld   [de], a                                     ; $5b91: $12
	ld   d, $ff                                      ; $5b92: $16 $ff
	and  c                                           ; $5b94: $a1
	ld   l, e                                        ; $5b95: $6b
	ld   a, d                                        ; $5b96: $7a
	ld   c, a                                        ; $5b97: $4f
	ld   sp, hl                                      ; $5b98: $f9
	ld   [hl], c                                     ; $5b99: $71
	ld   de, $e99f                                   ; $5b9a: $11 $9f $e9
	rla                                              ; $5b9d: $17
	or   a                                           ; $5b9e: $b7
	and  l                                           ; $5b9f: $a5
	cp   $86                                         ; $5ba0: $fe $86
	ld   [de], a                                     ; $5ba2: $12
	add  hl, de                                      ; $5ba3: $19
	cp   $91                                         ; $5ba4: $fe $91
	ld   a, e                                        ; $5ba6: $7b
	adc  e                                           ; $5ba7: $8b

jr_0c9_5ba8:
	ld   c, a                                        ; $5ba8: $4f
	jp   hl                                          ; $5ba9: $e9


	ld   h, c                                        ; $5baa: $61
	ld   hl, $daaf                                   ; $5bab: $21 $af $da
	rla                                              ; $5bae: $17
	xor  b                                           ; $5baf: $a8
	or   l                                           ; $5bb0: $b5
	cp   $96                                         ; $5bb1: $fe $96
	inc  hl                                          ; $5bb3: $23
	add  hl, de                                      ; $5bb4: $19
	cp   $a1                                         ; $5bb5: $fe $a1
	ld   a, e                                        ; $5bb7: $7b
	adc  e                                           ; $5bb8: $8b
	ld   c, a                                        ; $5bb9: $4f
	jp   c, $2161                                    ; $5bba: $da $61 $21

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bbd: $cf
	ret                                              ; $5bbe: $c9


	jr   jr_0c9_5b6a                                 ; $5bbf: $18 $a9

	and  l                                           ; $5bc1: $a5
	ei                                               ; $5bc2: $fb
	sub  [hl]                                        ; $5bc3: $96
	inc  hl                                          ; $5bc4: $23
	ld   a, [de]                                     ; $5bc5: $1a
	db   $fd                                         ; $5bc6: $fd
	and  c                                           ; $5bc7: $a1
	ld   a, e                                        ; $5bc8: $7b
	adc  e                                           ; $5bc9: $8b
	ld   c, a                                        ; $5bca: $4f
	ret                                              ; $5bcb: $c9


	ld   h, c                                        ; $5bcc: $61
	ld   sp, $daaf                                   ; $5bcd: $31 $af $da
	rla                                              ; $5bd0: $17
	cp   b                                           ; $5bd1: $b8
	and  l                                           ; $5bd2: $a5
	db   $fd                                         ; $5bd3: $fd
	add  a                                           ; $5bd4: $87
	inc  hl                                          ; $5bd5: $23
	ld   a, [de]                                     ; $5bd6: $1a
	db   $fd                                         ; $5bd7: $fd
	sub  c                                           ; $5bd8: $91
	ld   a, d                                        ; $5bd9: $7a
	sbc  e                                           ; $5bda: $9b
	ld   c, a                                        ; $5bdb: $4f
	ret  c                                           ; $5bdc: $d8

	ld   [hl], e                                     ; $5bdd: $73
	ld   b, c                                        ; $5bde: $41
	ld   a, a                                        ; $5bdf: $7f
	ld   [$c816], a                                  ; $5be0: $ea $16 $c8
	and  e                                           ; $5be3: $a3
	xor  $87                                         ; $5be4: $ee $87
	dec  h                                           ; $5be6: $25
	ld   d, $fd                                      ; $5be7: $16 $fd
	and  c                                           ; $5be9: $a1
	ld   e, h                                        ; $5bea: $5c
	sbc  h                                           ; $5beb: $9c
	ld   c, l                                        ; $5bec: $4d
	ld   hl, sp+$72                                  ; $5bed: $f8 $72
	ld   d, c                                        ; $5bef: $51
	ld   e, a                                        ; $5bf0: $5f
	db   $db                                         ; $5bf1: $db
	inc  d                                           ; $5bf2: $14
	cp   c                                           ; $5bf3: $b9
	or   h                                           ; $5bf4: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bf5: $cf
	sbc  c                                           ; $5bf6: $99
	inc  de                                          ; $5bf7: $13
	ld   d, $fd                                      ; $5bf8: $16 $fd
	or   c                                           ; $5bfa: $b1
	ld   c, h                                        ; $5bfb: $4c
	adc  h                                           ; $5bfc: $8c
	ld   c, h                                        ; $5bfd: $4c
	ret  c                                           ; $5bfe: $d8

	sub  d                                           ; $5bff: $92
	ld   b, c                                        ; $5c00: $41
	ld   l, a                                        ; $5c01: $6f
	db   $db                                         ; $5c02: $db
	inc  d                                           ; $5c03: $14
	ret  z                                           ; $5c04: $c8

	call nz, $88ce                                   ; $5c05: $c4 $ce $88
	inc  d                                           ; $5c08: $14
	dec  d                                           ; $5c09: $15
	db   $fd                                         ; $5c0a: $fd
	or   c                                           ; $5c0b: $b1
	dec  sp                                          ; $5c0c: $3b
	sbc  l                                           ; $5c0d: $9d
	ld   c, h                                        ; $5c0e: $4c
	ld   hl, sp-$6f                                  ; $5c0f: $f8 $91
	ld   b, c                                        ; $5c11: $41
	ld   e, a                                        ; $5c12: $5f
	db   $db                                         ; $5c13: $db
	inc  de                                          ; $5c14: $13
	cp   b                                           ; $5c15: $b8
	push de                                          ; $5c16: $d5
	cp   [hl]                                        ; $5c17: $be
	adc  c                                           ; $5c18: $89
	inc  h                                           ; $5c19: $24
	inc  d                                           ; $5c1a: $14
	cp   $b1                                         ; $5c1b: $fe $b1
	inc  l                                           ; $5c1d: $2c
	sbc  l                                           ; $5c1e: $9d
	ld   e, d                                        ; $5c1f: $5a
	ld   hl, sp-$7f                                  ; $5c20: $f8 $81
	ld   b, c                                        ; $5c22: $41
	ld   c, a                                        ; $5c23: $4f
	db   $db                                         ; $5c24: $db
	ld   [hl+], a                                    ; $5c25: $22
	ret  z                                           ; $5c26: $c8

	push de                                          ; $5c27: $d5
	xor  [hl]                                        ; $5c28: $ae
	sbc  b                                           ; $5c29: $98
	inc  h                                           ; $5c2a: $24
	inc  d                                           ; $5c2b: $14
	db   $fd                                         ; $5c2c: $fd
	or   d                                           ; $5c2d: $b2
	inc  l                                           ; $5c2e: $2c
	sbc  h                                           ; $5c2f: $9c
	ld   e, d                                        ; $5c30: $5a
	ld   hl, sp-$6f                                  ; $5c31: $f8 $91
	ld   b, c                                        ; $5c33: $41
	ld   c, a                                        ; $5c34: $4f
	db   $db                                         ; $5c35: $db
	ld   [hl+], a                                    ; $5c36: $22
	xor  b                                           ; $5c37: $a8
	push de                                          ; $5c38: $d5
	cp   a                                           ; $5c39: $bf
	adc  b                                           ; $5c3a: $88
	inc  de                                          ; $5c3b: $13
	ld   d, $fc                                      ; $5c3c: $16 $fc
	and  c                                           ; $5c3e: $a1
	dec  sp                                          ; $5c3f: $3b
	sbc  l                                           ; $5c40: $9d
	ld   l, e                                        ; $5c41: $6b
	add  sp, -$7f                                    ; $5c42: $e8 $81
	ld   sp, $c97f                                   ; $5c44: $31 $7f $c9
	inc  de                                          ; $5c47: $13
	cp   d                                           ; $5c48: $ba
	push bc                                          ; $5c49: $c5
	cp   [hl]                                        ; $5c4a: $be
	add  [hl]                                        ; $5c4b: $86
	inc  de                                          ; $5c4c: $13
	ld   a, [de]                                     ; $5c4d: $1a
	ei                                               ; $5c4e: $fb
	sub  c                                           ; $5c4f: $91
	ld   e, e                                        ; $5c50: $5b
	xor  h                                           ; $5c51: $ac
	ld   e, h                                        ; $5c52: $5c
	ret                                              ; $5c53: $c9


	ld   h, c                                        ; $5c54: $61
	ld   sp, $a7cf                                   ; $5c55: $31 $cf $a7
	rla                                              ; $5c58: $17
	cp   d                                           ; $5c59: $ba
	or   l                                           ; $5c5a: $b5
	db   $eb                                         ; $5c5b: $eb
	ld   [hl], h                                     ; $5c5c: $74
	inc  d                                           ; $5c5d: $14
	cpl                                              ; $5c5e: $2f
	ld   a, [$9961]                                  ; $5c5f: $fa $61 $99
	ret                                              ; $5c62: $c9


	ld   a, [hl]                                     ; $5c63: $7e
	xor  b                                           ; $5c64: $a8
	ld   [hl-], a                                    ; $5c65: $32
	inc  h                                           ; $5c66: $24
	db   $fd                                         ; $5c67: $fd
	and  e                                           ; $5c68: $a3
	dec  de                                          ; $5c69: $1b
	sbc  l                                           ; $5c6a: $9d
	ld   a, c                                        ; $5c6b: $79
	add  sp, $71                                     ; $5c6c: $e8 $71
	ld   [hl-], a                                    ; $5c6e: $32
	adc  a                                           ; $5c6f: $8f
	cp   c                                           ; $5c70: $b9
	inc  de                                          ; $5c71: $13
	cp   d                                           ; $5c72: $ba
	sub  $cd                                         ; $5c73: $d6 $cd
	ld   [hl], l                                     ; $5c75: $75
	inc  de                                          ; $5c76: $13
	ld   l, $f9                                      ; $5c77: $2e $f9
	ld   h, c                                        ; $5c79: $61
	adc  d                                           ; $5c7a: $8a
	bit  7, [hl]                                     ; $5c7b: $cb $7e
	and  a                                           ; $5c7d: $a7
	ld   hl, $fe35                                   ; $5c7e: $21 $35 $fe
	sub  e                                           ; $5c81: $93
	ld   a, [de]                                     ; $5c82: $1a
	xor  l                                           ; $5c83: $ad
	adc  c                                           ; $5c84: $89
	ld   hl, sp+$61                                  ; $5c85: $f8 $61
	inc  hl                                          ; $5c87: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c88: $cf
	and  a                                           ; $5c89: $a7
	ld   d, $aa                                      ; $5c8a: $16 $aa
	rst  ToBoot                                         ; $5c8c: $c7
	db   $eb                                         ; $5c8d: $eb
	ld   h, e                                        ; $5c8e: $63
	ld   [de], a                                     ; $5c8f: $12
	ld   l, a                                        ; $5c90: $6f
	ld   sp, hl                                      ; $5c91: $f9
	ld   hl, $d8aa                                   ; $5c92: $21 $aa $d8
	cp   [hl]                                        ; $5c95: $be
	add  l                                           ; $5c96: $85
	ld   de, $fb3e                                   ; $5c97: $11 $3e $fb
	ld   d, c                                        ; $5c9a: $51
	ld   a, e                                        ; $5c9b: $7b
	cp   d                                           ; $5c9c: $ba
	sbc  a                                           ; $5c9d: $9f
	and  [hl]                                        ; $5c9e: $a6
	ld   de, $fc29                                   ; $5c9f: $11 $29 $fc
	ld   [hl], c                                     ; $5ca2: $71
	dec  sp                                          ; $5ca3: $3b
	cp   l                                           ; $5ca4: $bd
	adc  [hl]                                        ; $5ca5: $8e
	rst  ToBoot                                         ; $5ca6: $c7
	ld   sp, $fe17                                   ; $5ca7: $31 $17 $fe
	add  d                                           ; $5caa: $82
	ld   a, [de]                                     ; $5cab: $1a
	xor  l                                           ; $5cac: $ad
	sbc  e                                           ; $5cad: $9b
	rst  $20                                         ; $5cae: $e7
	ld   b, c                                        ; $5caf: $41
	dec  d                                           ; $5cb0: $15
	rst  $38                                         ; $5cb1: $ff
	and  e                                           ; $5cb2: $a3
	jr   @-$52                                       ; $5cb3: $18 $ac

	sbc  e                                           ; $5cb5: $9b
	add  sp, $41                                     ; $5cb6: $e8 $41
	dec  d                                           ; $5cb8: $15
	rst  $38                                         ; $5cb9: $ff
	and  e                                           ; $5cba: $a3
	add  hl, de                                      ; $5cbb: $19
	xor  h                                           ; $5cbc: $ac
	xor  e                                           ; $5cbd: $ab
	ld   sp, hl                                      ; $5cbe: $f9
	ld   b, c                                        ; $5cbf: $41
	dec  d                                           ; $5cc0: $15
	rst  $38                                         ; $5cc1: $ff
	sub  h                                           ; $5cc2: $94
	add  hl, bc                                      ; $5cc3: $09
	xor  l                                           ; $5cc4: $ad
	xor  d                                           ; $5cc5: $aa
	add  sp, $41                                     ; $5cc6: $e8 $41
	rla                                              ; $5cc8: $17
	rst  $38                                         ; $5cc9: $ff
	add  d                                           ; $5cca: $82
	ld   a, [hl+]                                    ; $5ccb: $2a
	xor  l                                           ; $5ccc: $ad
	sbc  e                                           ; $5ccd: $9b
	rst  $20                                         ; $5cce: $e7
	ld   sp, $fe19                                   ; $5ccf: $31 $19 $fe
	ld   [hl], c                                     ; $5cd2: $71
	ld   a, [hl-]                                    ; $5cd3: $3a
	cp   h                                           ; $5cd4: $bc
	sbc  l                                           ; $5cd5: $9d
	push bc                                          ; $5cd6: $c5
	ld   de, $fb2e                                   ; $5cd7: $11 $2e $fb
	ld   b, c                                        ; $5cda: $41
	ld   a, e                                        ; $5cdb: $7b
	cp   h                                           ; $5cdc: $bc
	xor  [hl]                                        ; $5cdd: $ae

jr_0c9_5cde:
	and  h                                           ; $5cde: $a4
	ld   de, $f97f                                   ; $5cdf: $11 $7f $f9
	ld   [hl+], a                                    ; $5ce2: $22
	sbc  e                                           ; $5ce3: $9b
	ret                                              ; $5ce4: $c9


	cp   a                                           ; $5ce5: $bf
	ld   [hl], c                                     ; $5ce6: $71
	ld   de, $b3ef                                   ; $5ce7: $11 $ef $b3
	rla                                              ; $5cea: $17
	cp   e                                           ; $5ceb: $bb
	cp   c                                           ; $5cec: $b9
	ld   a, [$1931]                                  ; $5ced: $fa $31 $19
	rst  $38                                         ; $5cf0: $ff
	ld   h, c                                        ; $5cf1: $61
	ld   c, e                                        ; $5cf2: $4b
	cp   h                                           ; $5cf3: $bc
	sbc  l                                           ; $5cf4: $9d
	push de                                          ; $5cf5: $d5
	ld   de, $f96f                                   ; $5cf6: $11 $6f $f9
	ld   [de], a                                     ; $5cf9: $12
	xor  h                                           ; $5cfa: $ac
	ret                                              ; $5cfb: $c9


	cp   [hl]                                        ; $5cfc: $be

jr_0c9_5cfd:
	ld   h, c                                        ; $5cfd: $61
	ld   [de], a                                     ; $5cfe: $12
	rst  $38                                         ; $5cff: $ff
	and  c                                           ; $5d00: $a1
	add  hl, de                                      ; $5d01: $19
	cp   h                                           ; $5d02: $bc
	sbc  e                                           ; $5d03: $9b
	ld   hl, sp+$11                                  ; $5d04: $f8 $11
	rra                                              ; $5d06: $1f
	db   $fc                                         ; $5d07: $fc
	ld   hl, $c98b                                   ; $5d08: $21 $8b $c9
	xor  a                                           ; $5d0b: $af
	and  c                                           ; $5d0c: $a1
	ld   de, $c2ff                                   ; $5d0d: $11 $ff $c2
	jr   jr_0c9_5cde                                 ; $5d10: $18 $cc

	xor  d                                           ; $5d12: $aa
	ld   a, [$1e21]                                  ; $5d13: $fa $21 $1e
	db   $fc                                         ; $5d16: $fc
	ld   sp, $da8c                                   ; $5d17: $31 $8c $da
	xor  a                                           ; $5d1a: $af
	or   c                                           ; $5d1b: $b1
	ld   de, $d1ff                                   ; $5d1c: $11 $ff $d1
	jr   jr_0c9_5cfd                                 ; $5d1f: $18 $dc

	adc  d                                           ; $5d21: $8a
	ld   sp, hl                                      ; $5d22: $f9
	ld   de, $fa1f                                   ; $5d23: $11 $1f $fa
	ld   de, $b7cd                                   ; $5d26: $11 $cd $b7
	rst  JumpTable                                         ; $5d29: $df
	ld   h, c                                        ; $5d2a: $61
	jr   @+$01                                       ; $5d2b: $18 $ff

	ld   d, c                                        ; $5d2d: $51
	ld   l, [hl]                                     ; $5d2e: $6e
	ret  c                                           ; $5d2f: $d8

	ld   a, a                                        ; $5d30: $7f
	db   $d3                                         ; $5d31: $d3
	ld   de, $b1ff                                   ; $5d32: $11 $ff $b1
	dec  de                                          ; $5d35: $1b
	db   $fd                                         ; $5d36: $fd
	ld   l, c                                        ; $5d37: $69
	add  sp, $11                                     ; $5d38: $e8 $11
	ld   l, a                                        ; $5d3a: $6f
	push af                                          ; $5d3b: $f5
	inc  d                                           ; $5d3c: $14
	rst  $28                                         ; $5d3d: $ef
	and  [hl]                                        ; $5d3e: $a6
	db   $dd                                         ; $5d3f: $dd
	ld   sp, $fc1f                                   ; $5d40: $31 $1f $fc
	ld   de, $d6af                                   ; $5d43: $11 $af $d6
	adc  a                                           ; $5d46: $8f
	sub  c                                           ; $5d47: $91
	inc  de                                          ; $5d48: $13
	rst  $38                                         ; $5d49: $ff
	add  c                                           ; $5d4a: $81
	ld   l, $eb                                      ; $5d4b: $2e $eb
	ld   e, h                                        ; $5d4d: $5c
	and  $11                                         ; $5d4e: $e6 $11
	xor  a                                           ; $5d50: $af
	db   $f4                                         ; $5d51: $f4
	ld   d, $ee                                      ; $5d52: $16 $ee
	and  a                                           ; $5d54: $a7
	db   $fc                                         ; $5d55: $fc
	ld   hl, $fc1f                                   ; $5d56: $21 $1f $fc
	ld   de, $e8af                                   ; $5d59: $11 $af $e8
	adc  a                                           ; $5d5c: $8f
	sub  c                                           ; $5d5d: $91
	ld   [de], a                                     ; $5d5e: $12
	rst  $38                                         ; $5d5f: $ff
	sub  c                                           ; $5d60: $91
	inc  e                                           ; $5d61: $1c
	db   $fd                                         ; $5d62: $fd
	ld   a, e                                        ; $5d63: $7b
	push hl                                          ; $5d64: $e5
	ld   de, $f49f                                   ; $5d65: $11 $9f $f4
	dec  d                                           ; $5d68: $15
	rst  $28                                         ; $5d69: $ef
	or   a                                           ; $5d6a: $b7
	sla  c                                           ; $5d6b: $cb $21
	rra                                              ; $5d6d: $1f
	ei                                               ; $5d6e: $fb
	ld   de, $f8af                                   ; $5d6f: $11 $af $f8
	sbc  h                                           ; $5d72: $9c
	ld   h, c                                        ; $5d73: $61
	jr   @+$01                                       ; $5d74: $18 $ff

	ld   d, c                                        ; $5d76: $51
	ld   c, [hl]                                     ; $5d77: $4e
	ei                                               ; $5d78: $fb
	ld   a, e                                        ; $5d79: $7b
	and  d                                           ; $5d7a: $a2
	ld   de, $b1ff                                   ; $5d7b: $11 $ff $b1
	ld   a, [de]                                     ; $5d7e: $1a
	cp   $79                                         ; $5d7f: $fe $79
	or   l                                           ; $5d81: $b5
	ld   de, $e2cf                                   ; $5d82: $11 $cf $e2
	rla                                              ; $5d85: $17
	rst  $38                                         ; $5d86: $ff
	sub  a                                           ; $5d87: $97
	and  [hl]                                        ; $5d88: $a6
	ld   de, $f59f                                   ; $5d89: $11 $9f $f5
	dec  d                                           ; $5d8c: $15
	rst  $28                                         ; $5d8d: $ef
	rst  ToBoot                                         ; $5d8e: $c7
	and  a                                           ; $5d8f: $a7
	ld   de, $f76f                                   ; $5d90: $11 $6f $f7
	inc  de                                          ; $5d93: $13
	rst  JumpTable                                         ; $5d94: $df
	rst  $10                                         ; $5d95: $d7
	add  [hl]                                        ; $5d96: $86
	ld   hl, $f67f                                   ; $5d97: $21 $7f $f6
	dec  d                                           ; $5d9a: $15
	rst  JumpTable                                         ; $5d9b: $df

jr_0c9_5d9c:
	add  $75                                         ; $5d9c: $c6 $75
	ld   de, $e4af                                   ; $5d9e: $11 $af $e4
	rla                                              ; $5da1: $17
	rst  $38                                         ; $5da2: $ff
	sub  l                                           ; $5da3: $95
	ld   d, e                                        ; $5da4: $53
	inc  d                                           ; $5da5: $14
	rst  JumpTable                                         ; $5da6: $df
	and  c                                           ; $5da7: $a1
	add  hl, de                                      ; $5da8: $19
	rst  $38                                         ; $5da9: $ff
	add  l                                           ; $5daa: $85
	ld   [hl-], a                                    ; $5dab: $32
	jr   z, jr_0c9_5d9c                              ; $5dac: $28 $ee

	ld   [hl], c                                     ; $5dae: $71
	ld   c, h                                        ; $5daf: $4c
	cp   $74                                         ; $5db0: $fe $74
	ld   hl, $fb4c                                   ; $5db2: $21 $4c $fb
	ld   sp, $f99f                                   ; $5db5: $31 $9f $f9
	ld   h, e                                        ; $5db8: $63
	ld   de, $e79f                                   ; $5db9: $11 $9f $e7
	dec  d                                           ; $5dbc: $15
	rst  JumpTable                                         ; $5dbd: $df
	rst  $10                                         ; $5dbe: $d7
	ld   d, d                                        ; $5dbf: $52
	dec  d                                           ; $5dc0: $15
	rst  JumpTable                                         ; $5dc1: $df
	or   d                                           ; $5dc2: $b2
	ld   a, [hl+]                                    ; $5dc3: $2a
	rst  $38                                         ; $5dc4: $ff
	add  l                                           ; $5dc5: $85
	ld   sp, $fd3a                                   ; $5dc6: $31 $3a $fd
	ld   b, c                                        ; $5dc9: $41
	adc  a                                           ; $5dca: $8f
	ld   sp, hl                                      ; $5dcb: $f9
	ld   d, d                                        ; $5dcc: $52
	inc  de                                          ; $5dcd: $13
	xor  a                                           ; $5dce: $af
	push de                                          ; $5dcf: $d5
	rla                                              ; $5dd0: $17
	rst  $28                                         ; $5dd1: $ef
	or   l                                           ; $5dd2: $b5
	ld   sp, $fe3a                                   ; $5dd3: $31 $3a $fe
	ld   d, c                                        ; $5dd6: $51
	ld   l, a                                        ; $5dd7: $6f
	ei                                               ; $5dd8: $fb
	ld   [hl-], a                                    ; $5dd9: $32
	inc  de                                          ; $5dda: $13
	sbc  l                                           ; $5ddb: $9d
	rst  $10                                         ; $5ddc: $d7
	ld   [hl], $ef                                   ; $5ddd: $36 $ef
	and  l                                           ; $5ddf: $a5
	ld   hl, $dc4b                                   ; $5de0: $21 $4b $dc
	ld   d, h                                        ; $5de3: $54
	sbc  a                                           ; $5de4: $9f
	rst  $30                                         ; $5de5: $f7
	ld   b, d                                        ; $5de6: $42
	ld   d, $be                                      ; $5de7: $16 $be
	sub  h                                           ; $5de9: $94
	ld   e, e                                        ; $5dea: $5b
	db   $fd                                         ; $5deb: $fd
	ld   h, d                                        ; $5dec: $62
	ld   [de], a                                     ; $5ded: $12
	sbc  l                                           ; $5dee: $9d
	rst  $10                                         ; $5def: $d7
	ld   c, b                                        ; $5df0: $48
	rst  $28                                         ; $5df1: $ef
	sub  e                                           ; $5df2: $93
	ld   de, $e88f                                   ; $5df3: $11 $8f $e8
	scf                                              ; $5df6: $37
	rst  JumpTable                                         ; $5df7: $df
	or   h                                           ; $5df8: $b4
	ld   de, $fa5d                                   ; $5df9: $11 $5d $fa
	ld   b, [hl]                                     ; $5dfc: $46
	cp   a                                           ; $5dfd: $bf
	add  $21                                         ; $5dfe: $c6 $21
	ld   c, e                                        ; $5e00: $4b
	db   $fc                                         ; $5e01: $fc
	ld   d, l                                        ; $5e02: $55
	xor  a                                           ; $5e03: $af
	add  $21                                         ; $5e04: $c6 $21
	ld   c, e                                        ; $5e06: $4b
	ei                                               ; $5e07: $fb
	ld   h, [hl]                                     ; $5e08: $66
	sbc  l                                           ; $5e09: $9d
	rst  ToBoot                                         ; $5e0a: $c7
	ld   hl, $fa4c                                   ; $5e0b: $21 $4c $fa
	ld   d, [hl]                                     ; $5e0e: $56
	cp   [hl]                                        ; $5e0f: $be
	or   [hl]                                        ; $5e10: $b6
	ld   de, $ec4b                                   ; $5e11: $11 $4b $ec
	add  a                                           ; $5e14: $87
	xor  h                                           ; $5e15: $ac
	or   [hl]                                        ; $5e16: $b6
	ld   de, $fb4d                                   ; $5e17: $11 $4d $fb
	ld   [hl], a                                     ; $5e1a: $77
	xor  h                                           ; $5e1b: $ac
	or   l                                           ; $5e1c: $b5
	ld   de, $e97e                                   ; $5e1d: $11 $7e $e9
	ld   h, a                                        ; $5e20: $67
	cp   h                                           ; $5e21: $bc
	sub  h                                           ; $5e22: $94
	ld   de, $ea7e                                   ; $5e23: $11 $7e $ea
	ld   h, a                                        ; $5e26: $67
	xor  h                                           ; $5e27: $ac
	and  d                                           ; $5e28: $a2
	ld   [de], a                                     ; $5e29: $12
	cp   a                                           ; $5e2a: $bf
	add  sp, $58                                     ; $5e2b: $e8 $58
	call z, CheckIfReachedLastKanjiIdxInCurrTextBox                                    ; $5e2d: $cc $71 $14
	rst  $28                                         ; $5e30: $ef
	or   l                                           ; $5e31: $b5
	ld   c, d                                        ; $5e32: $4a
	db   $eb                                         ; $5e33: $eb
	ld   b, c                                        ; $5e34: $41
	add  hl, de                                      ; $5e35: $19
	rst  $38                                         ; $5e36: $ff
	sub  l                                           ; $5e37: $95
	ld   a, h                                        ; $5e38: $7c
	ld   [$2b11], a                                  ; $5e39: $ea $11 $2b
	db   $fd                                         ; $5e3c: $fd
	add  l                                           ; $5e3d: $85
	adc  l                                           ; $5e3e: $8d
	rst  ToBoot                                         ; $5e3f: $c7
	ld   de, $fb4d                                   ; $5e40: $11 $4d $fb
	ld   [hl], l                                     ; $5e43: $75
	sbc  l                                           ; $5e44: $9d
	or   h                                           ; $5e45: $b4
	ld   de, $f98f                                   ; $5e46: $11 $8f $f9
	ld   d, [hl]                                     ; $5e49: $56
	db   $dd                                         ; $5e4a: $dd
	and  c                                           ; $5e4b: $a1
	ld   [de], a                                     ; $5e4c: $12
	xor  a                                           ; $5e4d: $af
	ret  c                                           ; $5e4e: $d8

	ld   l, c                                        ; $5e4f: $69
	call c, $1481                                    ; $5e50: $dc $81 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e53: $cf
	rst  ToBoot                                         ; $5e54: $c7
	ld   e, d                                        ; $5e55: $5a
	db   $ec                                         ; $5e56: $ec
	ld   d, c                                        ; $5e57: $51
	ld   d, $df                                      ; $5e58: $16 $df
	or   a                                           ; $5e5a: $b7
	ld   l, e                                        ; $5e5b: $6b
	bit  0, c                                        ; $5e5c: $cb $41
	rla                                              ; $5e5e: $17
	xor  $a6                                         ; $5e5f: $ee $a6
	ld   a, h                                        ; $5e61: $7c
	reti                                             ; $5e62: $d9


	ld   hl, $ed2a                                   ; $5e63: $21 $2a $ed
	sub  [hl]                                        ; $5e66: $96
	adc  h                                           ; $5e67: $8c
	ret  c                                           ; $5e68: $d8

	ld   de, $ec2a                                   ; $5e69: $11 $2a $ec
	sub  [hl]                                        ; $5e6c: $96
	sbc  h                                           ; $5e6d: $9c
	rst  ToBoot                                         ; $5e6e: $c7
	ld   de, $fc3c                                   ; $5e6f: $11 $3c $fc
	ld   h, l                                        ; $5e72: $65
	xor  [hl]                                        ; $5e73: $ae
	sub  $11                                         ; $5e74: $d6 $11
	ld   e, e                                        ; $5e76: $5b
	db   $db                                         ; $5e77: $db
	ld   [hl], a                                     ; $5e78: $77
	xor  h                                           ; $5e79: $ac
	or   a                                           ; $5e7a: $b7
	ld   de, $dc39                                   ; $5e7b: $11 $39 $dc
	sub  a                                           ; $5e7e: $97
	xor  h                                           ; $5e7f: $ac
	rst  ToBoot                                         ; $5e80: $c7
	ld   hl, $cb39                                   ; $5e81: $21 $39 $cb
	sub  a                                           ; $5e84: $97
	xor  e                                           ; $5e85: $ab
	cp   b                                           ; $5e86: $b8
	ld   sp, $cb28                                   ; $5e87: $31 $28 $cb
	sub  a                                           ; $5e8a: $97
	sbc  h                                           ; $5e8b: $9c
	ret  z                                           ; $5e8c: $c8

	ld   b, c                                        ; $5e8d: $41
	daa                                              ; $5e8e: $27
	xor  h                                           ; $5e8f: $ac
	xor  c                                           ; $5e90: $a9
	sbc  e                                           ; $5e91: $9b
	jp   z, $1462                                    ; $5e92: $ca $62 $14

	sbc  h                                           ; $5e95: $9c
	cp   c                                           ; $5e96: $b9
	sbc  d                                           ; $5e97: $9a
	res  0, e                                        ; $5e98: $cb $83
	inc  de                                          ; $5e9a: $13
	ld   a, d                                        ; $5e9b: $7a
	cp   d                                           ; $5e9c: $ba
	sbc  c                                           ; $5e9d: $99
	xor  e                                           ; $5e9e: $ab
	and  l                                           ; $5e9f: $a5
	ld   de, $ca59                                   ; $5ea0: $11 $59 $ca
	sbc  b                                           ; $5ea3: $98
	cp   h                                           ; $5ea4: $bc
	and  a                                           ; $5ea5: $a7
	ld   sp, $bb37                                   ; $5ea6: $31 $37 $bb
	sbc  b                                           ; $5ea9: $98
	sbc  e                                           ; $5eaa: $9b
	ret                                              ; $5eab: $c9


	ld   d, c                                        ; $5eac: $51
	dec  h                                           ; $5ead: $25
	sbc  e                                           ; $5eae: $9b
	xor  b                                           ; $5eaf: $a8
	sbc  e                                           ; $5eb0: $9b
	res  0, e                                        ; $5eb1: $cb $83
	inc  hl                                          ; $5eb3: $23
	ld   a, c                                        ; $5eb4: $79
	xor  d                                           ; $5eb5: $aa
	adc  c                                           ; $5eb6: $89
	cp   h                                           ; $5eb7: $bc
	and  [hl]                                        ; $5eb8: $a6
	ld   [hl-], a                                    ; $5eb9: $32
	ld   b, a                                        ; $5eba: $47
	sbc  d                                           ; $5ebb: $9a
	sbc  d                                           ; $5ebc: $9a
	cp   e                                           ; $5ebd: $bb
	cp   c                                           ; $5ebe: $b9
	ld   h, e                                        ; $5ebf: $63
	dec  [hl]                                        ; $5ec0: $35
	ld   a, c                                        ; $5ec1: $79
	xor  d                                           ; $5ec2: $aa
	xor  d                                           ; $5ec3: $aa
	cp   e                                           ; $5ec4: $bb
	add  l                                           ; $5ec5: $85
	inc  sp                                          ; $5ec6: $33
	ld   h, a                                        ; $5ec7: $67
	sbc  d                                           ; $5ec8: $9a
	sbc  d                                           ; $5ec9: $9a
	cp   e                                           ; $5eca: $bb
	cp   c                                           ; $5ecb: $b9
	ld   d, e                                        ; $5ecc: $53
	ld   b, [hl]                                     ; $5ecd: $46
	ld   a, c                                        ; $5ece: $79
	xor  c                                           ; $5ecf: $a9
	xor  e                                           ; $5ed0: $ab
	cp   d                                           ; $5ed1: $ba
	add  l                                           ; $5ed2: $85
	inc  hl                                          ; $5ed3: $23
	ld   l, c                                        ; $5ed4: $69
	xor  c                                           ; $5ed5: $a9
	adc  c                                           ; $5ed6: $89
	call z, $43b8                                    ; $5ed7: $cc $b8 $43
	ld   b, [hl]                                     ; $5eda: $46
	ld   a, b                                        ; $5edb: $78
	sbc  c                                           ; $5edc: $99
	cp   e                                           ; $5edd: $bb
	cp   e                                           ; $5ede: $bb
	add  l                                           ; $5edf: $85
	inc  [hl]                                        ; $5ee0: $34
	ld   d, a                                        ; $5ee1: $57
	adc  b                                           ; $5ee2: $88
	xor  e                                           ; $5ee3: $ab
	res  7, c                                        ; $5ee4: $cb $b9
	ld   h, e                                        ; $5ee6: $63
	ld   b, l                                        ; $5ee7: $45
	ld   [hl], a                                     ; $5ee8: $77
	ld   a, c                                        ; $5ee9: $79
	xor  e                                           ; $5eea: $ab
	cp   e                                           ; $5eeb: $bb
	and  a                                           ; $5eec: $a7
	ld   d, h                                        ; $5eed: $54
	ld   d, [hl]                                     ; $5eee: $56
	ld   h, a                                        ; $5eef: $67
	sbc  c                                           ; $5ef0: $99
	cp   h                                           ; $5ef1: $bc
	cp   e                                           ; $5ef2: $bb
	sub  [hl]                                        ; $5ef3: $96
	ld   b, h                                        ; $5ef4: $44
	ld   d, [hl]                                     ; $5ef5: $56
	ld   [hl], a                                     ; $5ef6: $77
	adc  d                                           ; $5ef7: $8a
	call z, $96ba                                    ; $5ef8: $cc $ba $96
	ld   b, l                                        ; $5efb: $45
	ld   h, a                                        ; $5efc: $67
	ld   [hl], a                                     ; $5efd: $77
	sbc  d                                           ; $5efe: $9a
	cp   h                                           ; $5eff: $bc
	xor  d                                           ; $5f00: $aa
	add  [hl]                                        ; $5f01: $86
	ld   b, l                                        ; $5f02: $45
	ld   h, [hl]                                     ; $5f03: $66
	ld   a, b                                        ; $5f04: $78
	sbc  d                                           ; $5f05: $9a
	set  1, c                                        ; $5f06: $cb $c9
	add  l                                           ; $5f08: $85
	ld   b, l                                        ; $5f09: $45
	ld   h, a                                        ; $5f0a: $67
	ld   h, a                                        ; $5f0b: $67
	sbc  e                                           ; $5f0c: $9b
	cp   h                                           ; $5f0d: $bc
	cp   c                                           ; $5f0e: $b9
	sub  [hl]                                        ; $5f0f: $96
	ld   b, l                                        ; $5f10: $45
	ld   h, a                                        ; $5f11: $67
	ld   [hl], a                                     ; $5f12: $77
	adc  d                                           ; $5f13: $8a
	cp   e                                           ; $5f14: $bb
	cp   e                                           ; $5f15: $bb
	sub  a                                           ; $5f16: $97
	ld   b, h                                        ; $5f17: $44
	ld   h, a                                        ; $5f18: $67
	halt                                             ; $5f19: $76
	ld   a, c                                        ; $5f1a: $79
	cp   h                                           ; $5f1b: $bc
	xor  d                                           ; $5f1c: $aa
	xor  b                                           ; $5f1d: $a8
	ld   h, h                                        ; $5f1e: $64
	ld   d, [hl]                                     ; $5f1f: $56
	halt                                             ; $5f20: $76
	ld   l, b                                        ; $5f21: $68
	sbc  e                                           ; $5f22: $9b
	cp   d                                           ; $5f23: $ba
	xor  d                                           ; $5f24: $aa
	add  l                                           ; $5f25: $85
	ld   b, l                                        ; $5f26: $45
	ld   [hl], a                                     ; $5f27: $77
	ld   h, a                                        ; $5f28: $67
	adc  e                                           ; $5f29: $8b
	cp   e                                           ; $5f2a: $bb
	xor  d                                           ; $5f2b: $aa
	sub  a                                           ; $5f2c: $97
	ld   d, h                                        ; $5f2d: $54
	ld   d, a                                        ; $5f2e: $57
	halt                                             ; $5f2f: $76
	ld   a, b                                        ; $5f30: $78
	cp   e                                           ; $5f31: $bb
	cp   d                                           ; $5f32: $ba
	xor  c                                           ; $5f33: $a9
	ld   [hl], l                                     ; $5f34: $75
	ld   b, l                                        ; $5f35: $45
	ld   [hl], a                                     ; $5f36: $77
	ld   h, a                                        ; $5f37: $67
	sbc  e                                           ; $5f38: $9b
	cp   d                                           ; $5f39: $ba
	xor  d                                           ; $5f3a: $aa
	sbc  b                                           ; $5f3b: $98
	ld   d, h                                        ; $5f3c: $54
	ld   d, a                                        ; $5f3d: $57
	halt                                             ; $5f3e: $76
	ld   l, c                                        ; $5f3f: $69
	cp   e                                           ; $5f40: $bb
	xor  d                                           ; $5f41: $aa
	xor  e                                           ; $5f42: $ab
	sub  [hl]                                        ; $5f43: $96
	ld   b, l                                        ; $5f44: $45
	ld   [hl], a                                     ; $5f45: $77
	ld   h, [hl]                                     ; $5f46: $66
	ld   a, d                                        ; $5f47: $7a
	cp   e                                           ; $5f48: $bb
	xor  d                                           ; $5f49: $aa
	xor  c                                           ; $5f4a: $a9
	ld   [hl], h                                     ; $5f4b: $74
	ld   b, [hl]                                     ; $5f4c: $46
	ld   [hl], a                                     ; $5f4d: $77
	ld   h, [hl]                                     ; $5f4e: $66
	sbc  e                                           ; $5f4f: $9b
	jp   z, $b8aa                                    ; $5f50: $ca $aa $b8

	ld   d, e                                        ; $5f53: $53
	ld   b, a                                        ; $5f54: $47
	halt                                             ; $5f55: $76
	ld   l, b                                        ; $5f56: $68
	cp   e                                           ; $5f57: $bb
	xor  d                                           ; $5f58: $aa
	sbc  d                                           ; $5f59: $9a
	xor  b                                           ; $5f5a: $a8
	ld   b, e                                        ; $5f5b: $43
	ld   l, b                                        ; $5f5c: $68
	halt                                             ; $5f5d: $76
	ld   l, c                                        ; $5f5e: $69
	cp   h                                           ; $5f5f: $bc
	xor  c                                           ; $5f60: $a9
	xor  d                                           ; $5f61: $aa
	and  a                                           ; $5f62: $a7
	ld   b, h                                        ; $5f63: $44
	ld   h, a                                        ; $5f64: $67
	halt                                             ; $5f65: $76
	ld   a, d                                        ; $5f66: $7a
	xor  d                                           ; $5f67: $aa
	adc  b                                           ; $5f68: $88
	xor  e                                           ; $5f69: $ab
	sub  a                                           ; $5f6a: $97
	ld   b, h                                        ; $5f6b: $44
	ld   h, a                                        ; $5f6c: $67
	halt                                             ; $5f6d: $76
	ld   a, d                                        ; $5f6e: $7a
	xor  e                                           ; $5f6f: $ab
	sbc  c                                           ; $5f70: $99
	xor  e                                           ; $5f71: $ab
	or   a                                           ; $5f72: $b7
	ld   d, h                                        ; $5f73: $54
	ld   d, [hl]                                     ; $5f74: $56
	halt                                             ; $5f75: $76
	ld   a, c                                        ; $5f76: $79
	cp   e                                           ; $5f77: $bb
	xor  b                                           ; $5f78: $a8
	sbc  d                                           ; $5f79: $9a
	xor  c                                           ; $5f7a: $a9
	ld   h, h                                        ; $5f7b: $64
	ld   d, [hl]                                     ; $5f7c: $56
	ld   [hl], a                                     ; $5f7d: $77
	ld   a, c                                        ; $5f7e: $79
	cp   e                                           ; $5f7f: $bb
	xor  c                                           ; $5f80: $a9
	sbc  c                                           ; $5f81: $99
	xor  c                                           ; $5f82: $a9
	ld   [hl], l                                     ; $5f83: $75
	ld   b, [hl]                                     ; $5f84: $46
	ld   [hl], a                                     ; $5f85: $77
	ld   h, a                                        ; $5f86: $67
	sbc  d                                           ; $5f87: $9a
	cp   c                                           ; $5f88: $b9
	adc  d                                           ; $5f89: $8a
	cp   d                                           ; $5f8a: $ba
	sub  [hl]                                        ; $5f8b: $96
	ld   b, l                                        ; $5f8c: $45
	ld   h, a                                        ; $5f8d: $67
	ld   [hl], a                                     ; $5f8e: $77
	adc  c                                           ; $5f8f: $89
	cp   d                                           ; $5f90: $ba
	sbc  c                                           ; $5f91: $99
	xor  d                                           ; $5f92: $aa
	sbc  b                                           ; $5f93: $98
	ld   h, h                                        ; $5f94: $64
	ld   d, [hl]                                     ; $5f95: $56
	ld   [hl], a                                     ; $5f96: $77
	ld   a, c                                        ; $5f97: $79
	xor  e                                           ; $5f98: $ab
	xor  c                                           ; $5f99: $a9
	sbc  c                                           ; $5f9a: $99
	sbc  d                                           ; $5f9b: $9a
	add  [hl]                                        ; $5f9c: $86
	ld   b, l                                        ; $5f9d: $45
	ld   h, a                                        ; $5f9e: $67
	ld   [hl], a                                     ; $5f9f: $77
	adc  c                                           ; $5fa0: $89
	xor  d                                           ; $5fa1: $aa
	sbc  c                                           ; $5fa2: $99
	adc  d                                           ; $5fa3: $8a
	sbc  c                                           ; $5fa4: $99
	ld   [hl], l                                     ; $5fa5: $75
	ld   d, l                                        ; $5fa6: $55
	ld   a, b                                        ; $5fa7: $78
	adc  c                                           ; $5fa8: $89
	sbc  e                                           ; $5fa9: $9b
	xor  c                                           ; $5faa: $a9
	sbc  c                                           ; $5fab: $99
	xor  d                                           ; $5fac: $aa
	add  a                                           ; $5fad: $87
	ld   d, l                                        ; $5fae: $55
	ld   h, a                                        ; $5faf: $67
	ld   [hl], a                                     ; $5fb0: $77
	adc  d                                           ; $5fb1: $8a
	cp   d                                           ; $5fb2: $ba
	adc  b                                           ; $5fb3: $88
	adc  c                                           ; $5fb4: $89
	xor  b                                           ; $5fb5: $a8
	halt                                             ; $5fb6: $76
	ld   d, [hl]                                     ; $5fb7: $56
	ld   h, a                                        ; $5fb8: $67
	ld   a, b                                        ; $5fb9: $78
	sbc  d                                           ; $5fba: $9a
	sbc  b                                           ; $5fbb: $98
	adc  c                                           ; $5fbc: $89
	adc  c                                           ; $5fbd: $89
	sbc  b                                           ; $5fbe: $98
	add  [hl]                                        ; $5fbf: $86
	ld   d, l                                        ; $5fc0: $55
	ld   [hl], a                                     ; $5fc1: $77
	adc  b                                           ; $5fc2: $88
	sbc  d                                           ; $5fc3: $9a
	xor  b                                           ; $5fc4: $a8
	adc  b                                           ; $5fc5: $88
	adc  c                                           ; $5fc6: $89
	sbc  c                                           ; $5fc7: $99
	ld   [hl], l                                     ; $5fc8: $75
	ld   d, [hl]                                     ; $5fc9: $56
	ld   [hl], a                                     ; $5fca: $77
	ld   a, b                                        ; $5fcb: $78
	sbc  d                                           ; $5fcc: $9a
	xor  c                                           ; $5fcd: $a9
	adc  b                                           ; $5fce: $88
	sbc  d                                           ; $5fcf: $9a
	sbc  c                                           ; $5fd0: $99
	halt                                             ; $5fd1: $76
	ld   d, [hl]                                     ; $5fd2: $56
	ld   a, b                                        ; $5fd3: $78
	adc  b                                           ; $5fd4: $88
	xor  d                                           ; $5fd5: $aa
	sbc  b                                           ; $5fd6: $98
	adc  b                                           ; $5fd7: $88
	sbc  d                                           ; $5fd8: $9a
	sbc  c                                           ; $5fd9: $99
	halt                                             ; $5fda: $76
	ld   h, [hl]                                     ; $5fdb: $66
	ld   [hl], a                                     ; $5fdc: $77
	adc  c                                           ; $5fdd: $89
	sbc  c                                           ; $5fde: $99
	sbc  b                                           ; $5fdf: $98
	adc  b                                           ; $5fe0: $88
	sbc  c                                           ; $5fe1: $99
	sbc  b                                           ; $5fe2: $98
	add  [hl]                                        ; $5fe3: $86
	ld   d, [hl]                                     ; $5fe4: $56
	ld   h, a                                        ; $5fe5: $67
	ld   a, b                                        ; $5fe6: $78
	sbc  d                                           ; $5fe7: $9a
	xor  c                                           ; $5fe8: $a9
	adc  b                                           ; $5fe9: $88
	adc  d                                           ; $5fea: $8a
	xor  c                                           ; $5feb: $a9
	sub  a                                           ; $5fec: $97
	ld   h, l                                        ; $5fed: $65
	ld   h, a                                        ; $5fee: $67
	add  a                                           ; $5fef: $87
	adc  c                                           ; $5ff0: $89
	xor  c                                           ; $5ff1: $a9
	add  a                                           ; $5ff2: $87
	adc  d                                           ; $5ff3: $8a
	xor  c                                           ; $5ff4: $a9
	add  a                                           ; $5ff5: $87
	ld   h, [hl]                                     ; $5ff6: $66
	ld   h, a                                        ; $5ff7: $67
	ld   a, b                                        ; $5ff8: $78
	adc  c                                           ; $5ff9: $89
	sbc  d                                           ; $5ffa: $9a
	adc  b                                           ; $5ffb: $88
	adc  b                                           ; $5ffc: $88
	sbc  c                                           ; $5ffd: $99
	sbc  b                                           ; $5ffe: $98
	halt                                             ; $5fff: $76
	ld   d, a                                        ; $6000: $57
	ld   a, b                                        ; $6001: $78
	adc  b                                           ; $6002: $88
	sbc  d                                           ; $6003: $9a
	sbc  b                                           ; $6004: $98
	adc  b                                           ; $6005: $88
	adc  d                                           ; $6006: $8a
	sbc  b                                           ; $6007: $98
	add  a                                           ; $6008: $87
	ld   h, [hl]                                     ; $6009: $66
	ld   h, a                                        ; $600a: $67
	sbc  b                                           ; $600b: $98
	adc  c                                           ; $600c: $89
	sbc  c                                           ; $600d: $99
	add  a                                           ; $600e: $87
	adc  b                                           ; $600f: $88
	xor  c                                           ; $6010: $a9
	adc  b                                           ; $6011: $88
	halt                                             ; $6012: $76
	ld   h, [hl]                                     ; $6013: $66
	ld   a, b                                        ; $6014: $78
	adc  b                                           ; $6015: $88
	adc  c                                           ; $6016: $89
	sbc  b                                           ; $6017: $98
	ld   a, b                                        ; $6018: $78
	sbc  d                                           ; $6019: $9a
	sbc  b                                           ; $601a: $98
	adc  b                                           ; $601b: $88
	halt                                             ; $601c: $76
	ld   h, a                                        ; $601d: $67
	adc  b                                           ; $601e: $88
	adc  b                                           ; $601f: $88
	adc  c                                           ; $6020: $89
	adc  b                                           ; $6021: $88
	adc  c                                           ; $6022: $89
	sbc  c                                           ; $6023: $99
	adc  b                                           ; $6024: $88
	add  a                                           ; $6025: $87
	halt                                             ; $6026: $76
	ld   a, b                                        ; $6027: $78
	adc  b                                           ; $6028: $88
	ld   a, b                                        ; $6029: $78
	adc  c                                           ; $602a: $89
	adc  b                                           ; $602b: $88
	ld   a, c                                        ; $602c: $79
	sbc  c                                           ; $602d: $99
	sbc  b                                           ; $602e: $98
	adc  b                                           ; $602f: $88
	halt                                             ; $6030: $76
	ld   a, b                                        ; $6031: $78
	sbc  b                                           ; $6032: $98
	ld   a, b                                        ; $6033: $78
	sbc  c                                           ; $6034: $99
	sbc  b                                           ; $6035: $98
	adc  b                                           ; $6036: $88
	sbc  c                                           ; $6037: $99
	sbc  b                                           ; $6038: $98
	sbc  b                                           ; $6039: $98
	halt                                             ; $603a: $76
	ld   [hl], a                                     ; $603b: $77
	adc  b                                           ; $603c: $88
	ld   a, b                                        ; $603d: $78
	adc  c                                           ; $603e: $89
	adc  b                                           ; $603f: $88
	adc  b                                           ; $6040: $88
	sbc  b                                           ; $6041: $98
	sbc  b                                           ; $6042: $98
	adc  b                                           ; $6043: $88
	halt                                             ; $6044: $76
	ld   a, b                                        ; $6045: $78
	add  a                                           ; $6046: $87
	ld   a, b                                        ; $6047: $78
	adc  c                                           ; $6048: $89
	add  a                                           ; $6049: $87
	adc  c                                           ; $604a: $89
	sbc  b                                           ; $604b: $98
	sbc  c                                           ; $604c: $99
	adc  c                                           ; $604d: $89
	ld   [hl], a                                     ; $604e: $77
	ld   h, a                                        ; $604f: $67
	add  a                                           ; $6050: $87
	ld   [hl], a                                     ; $6051: $77
	adc  b                                           ; $6052: $88
	adc  b                                           ; $6053: $88
	adc  c                                           ; $6054: $89
	sbc  b                                           ; $6055: $98
	adc  b                                           ; $6056: $88
	adc  c                                           ; $6057: $89
	ld   [hl], a                                     ; $6058: $77
	ld   h, a                                        ; $6059: $67
	adc  b                                           ; $605a: $88
	ld   [hl], a                                     ; $605b: $77
	ld   a, c                                        ; $605c: $79
	sbc  b                                           ; $605d: $98
	adc  b                                           ; $605e: $88
	sbc  b                                           ; $605f: $98
	adc  c                                           ; $6060: $89
	adc  b                                           ; $6061: $88
	adc  b                                           ; $6062: $88
	ld   [hl], a                                     ; $6063: $77
	ld   [hl], a                                     ; $6064: $77
	add  a                                           ; $6065: $87
	ld   a, b                                        ; $6066: $78
	adc  c                                           ; $6067: $89
	adc  b                                           ; $6068: $88
	adc  b                                           ; $6069: $88
	sbc  c                                           ; $606a: $99
	adc  b                                           ; $606b: $88
	sbc  c                                           ; $606c: $99
	add  a                                           ; $606d: $87
	ld   h, a                                        ; $606e: $67
	adc  b                                           ; $606f: $88
	ld   [hl], a                                     ; $6070: $77
	adc  c                                           ; $6071: $89
	sbc  b                                           ; $6072: $98
	adc  b                                           ; $6073: $88
	sbc  c                                           ; $6074: $99
	adc  b                                           ; $6075: $88
	adc  c                                           ; $6076: $89
	sbc  b                                           ; $6077: $98
	ld   [hl], a                                     ; $6078: $77
	ld   [hl], a                                     ; $6079: $77
	add  a                                           ; $607a: $87
	ld   a, b                                        ; $607b: $78
	adc  b                                           ; $607c: $88
	adc  b                                           ; $607d: $88
	sbc  c                                           ; $607e: $99
	sbc  c                                           ; $607f: $99
	sbc  b                                           ; $6080: $98
	sbc  b                                           ; $6081: $98
	adc  b                                           ; $6082: $88
	ld   [hl], a                                     ; $6083: $77
	ld   a, b                                        ; $6084: $78
	add  a                                           ; $6085: $87
	ld   a, b                                        ; $6086: $78
	adc  b                                           ; $6087: $88
	sbc  b                                           ; $6088: $98
	adc  c                                           ; $6089: $89
	adc  b                                           ; $608a: $88
	adc  b                                           ; $608b: $88
	sbc  b                                           ; $608c: $98
	add  a                                           ; $608d: $87
	ld   [hl], a                                     ; $608e: $77
	ld   a, b                                        ; $608f: $78
	ld   [hl], a                                     ; $6090: $77
	adc  c                                           ; $6091: $89
	adc  c                                           ; $6092: $89
	adc  b                                           ; $6093: $88
	sbc  b                                           ; $6094: $98
	sbc  b                                           ; $6095: $98
	adc  b                                           ; $6096: $88
	sbc  b                                           ; $6097: $98
	add  a                                           ; $6098: $87
	ld   [hl], a                                     ; $6099: $77
	adc  b                                           ; $609a: $88
	adc  b                                           ; $609b: $88
	adc  c                                           ; $609c: $89
	adc  c                                           ; $609d: $89
	adc  c                                           ; $609e: $89
	sbc  c                                           ; $609f: $99
	adc  b                                           ; $60a0: $88
	adc  b                                           ; $60a1: $88
	sbc  b                                           ; $60a2: $98
	add  a                                           ; $60a3: $87
	ld   [hl], a                                     ; $60a4: $77
	add  a                                           ; $60a5: $87
	ld   [hl], a                                     ; $60a6: $77
	adc  b                                           ; $60a7: $88
	adc  c                                           ; $60a8: $89
	adc  b                                           ; $60a9: $88
	sbc  b                                           ; $60aa: $98
	sbc  c                                           ; $60ab: $99
	sbc  c                                           ; $60ac: $99
	sbc  c                                           ; $60ad: $99
	sbc  b                                           ; $60ae: $98
	ld   [hl], a                                     ; $60af: $77
	adc  b                                           ; $60b0: $88
	add  a                                           ; $60b1: $87
	ld   a, b                                        ; $60b2: $78
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	sbc  b                                           ; $60b5: $98
	adc  b                                           ; $60b6: $88
	adc  c                                           ; $60b7: $89
	sbc  b                                           ; $60b8: $98
	adc  b                                           ; $60b9: $88
	ld   [hl], a                                     ; $60ba: $77
	ld   [hl], a                                     ; $60bb: $77
	ld   [hl], a                                     ; $60bc: $77
	adc  b                                           ; $60bd: $88
	adc  c                                           ; $60be: $89
	adc  b                                           ; $60bf: $88
	sbc  b                                           ; $60c0: $98
	adc  b                                           ; $60c1: $88
	adc  b                                           ; $60c2: $88
	sbc  b                                           ; $60c3: $98
	adc  b                                           ; $60c4: $88
	add  a                                           ; $60c5: $87
	ld   a, b                                        ; $60c6: $78
	add  a                                           ; $60c7: $87
	ld   a, b                                        ; $60c8: $78
	adc  c                                           ; $60c9: $89
	adc  b                                           ; $60ca: $88
	adc  c                                           ; $60cb: $89
	sbc  b                                           ; $60cc: $98
	adc  b                                           ; $60cd: $88
	sbc  b                                           ; $60ce: $98
	adc  b                                           ; $60cf: $88
	add  a                                           ; $60d0: $87
	ld   [hl], a                                     ; $60d1: $77
	adc  b                                           ; $60d2: $88
	ld   [hl], a                                     ; $60d3: $77
	adc  c                                           ; $60d4: $89
	sbc  b                                           ; $60d5: $98
	adc  b                                           ; $60d6: $88
	sbc  c                                           ; $60d7: $99
	adc  b                                           ; $60d8: $88
	adc  b                                           ; $60d9: $88
	adc  b                                           ; $60da: $88
	adc  b                                           ; $60db: $88
	ld   [hl], a                                     ; $60dc: $77
	adc  b                                           ; $60dd: $88
	adc  b                                           ; $60de: $88
	adc  b                                           ; $60df: $88
	sbc  c                                           ; $60e0: $99
	adc  b                                           ; $60e1: $88
	adc  c                                           ; $60e2: $89
	adc  b                                           ; $60e3: $88
	adc  b                                           ; $60e4: $88
	adc  c                                           ; $60e5: $89
	adc  b                                           ; $60e6: $88
	add  a                                           ; $60e7: $87
	ld   a, b                                        ; $60e8: $78
	add  a                                           ; $60e9: $87
	ld   a, b                                        ; $60ea: $78
	adc  c                                           ; $60eb: $89
	adc  b                                           ; $60ec: $88
	adc  c                                           ; $60ed: $89
	adc  b                                           ; $60ee: $88
	adc  b                                           ; $60ef: $88
	adc  b                                           ; $60f0: $88
	adc  b                                           ; $60f1: $88
	adc  b                                           ; $60f2: $88
	ld   [hl], a                                     ; $60f3: $77
	adc  b                                           ; $60f4: $88
	adc  b                                           ; $60f5: $88
	adc  b                                           ; $60f6: $88
	sbc  c                                           ; $60f7: $99
	adc  b                                           ; $60f8: $88
	sbc  c                                           ; $60f9: $99
	adc  b                                           ; $60fa: $88
	adc  b                                           ; $60fb: $88
	adc  b                                           ; $60fc: $88
	adc  b                                           ; $60fd: $88
	add  a                                           ; $60fe: $87
	adc  b                                           ; $60ff: $88
	add  a                                           ; $6100: $87
	ld   a, b                                        ; $6101: $78
	adc  c                                           ; $6102: $89
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

Jump_0c9_6487:
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

Jump_0c9_6497:
	adc  b                                           ; $6497: $88

Jump_0c9_6498:
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
	adc  b                                           ; $64b8: $88
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
	adc  b                                           ; $6593: $88
	adc  b                                           ; $6594: $88
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88
	adc  b                                           ; $6597: $88

Jump_0c9_6598:
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	adc  b                                           ; $659b: $88
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
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
	adc  b                                           ; $65fe: $88
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
	adc  b                                           ; $660b: $88
	adc  b                                           ; $660c: $88
	adc  b                                           ; $660d: $88
	adc  b                                           ; $660e: $88
	adc  b                                           ; $660f: $88
	adc  b                                           ; $6610: $88
	adc  b                                           ; $6611: $88
	adc  b                                           ; $6612: $88
	adc  b                                           ; $6613: $88
	adc  b                                           ; $6614: $88
	adc  b                                           ; $6615: $88
	adc  b                                           ; $6616: $88
	adc  b                                           ; $6617: $88
	adc  b                                           ; $6618: $88
	adc  b                                           ; $6619: $88
	adc  b                                           ; $661a: $88
	adc  b                                           ; $661b: $88
	adc  b                                           ; $661c: $88
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	adc  b                                           ; $661f: $88
	adc  b                                           ; $6620: $88
	adc  b                                           ; $6621: $88
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	adc  b                                           ; $6626: $88
	adc  b                                           ; $6627: $88
	adc  b                                           ; $6628: $88
	adc  b                                           ; $6629: $88
	adc  b                                           ; $662a: $88
	adc  b                                           ; $662b: $88
	adc  b                                           ; $662c: $88
	adc  b                                           ; $662d: $88
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
	adc  b                                           ; $663b: $88
	adc  b                                           ; $663c: $88
	adc  b                                           ; $663d: $88
	adc  b                                           ; $663e: $88
	adc  b                                           ; $663f: $88
	adc  b                                           ; $6640: $88
	adc  b                                           ; $6641: $88
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  b                                           ; $6646: $88
	adc  b                                           ; $6647: $88
	adc  b                                           ; $6648: $88
	adc  b                                           ; $6649: $88
	adc  b                                           ; $664a: $88
	adc  b                                           ; $664b: $88
	adc  b                                           ; $664c: $88
	adc  b                                           ; $664d: $88
	adc  b                                           ; $664e: $88
	adc  b                                           ; $664f: $88
	adc  b                                           ; $6650: $88
	adc  b                                           ; $6651: $88
	adc  b                                           ; $6652: $88
	adc  b                                           ; $6653: $88
	adc  b                                           ; $6654: $88
	adc  b                                           ; $6655: $88
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	adc  b                                           ; $6658: $88
	adc  b                                           ; $6659: $88
	adc  b                                           ; $665a: $88
	adc  b                                           ; $665b: $88
	adc  b                                           ; $665c: $88
	adc  b                                           ; $665d: $88
	adc  b                                           ; $665e: $88
	adc  b                                           ; $665f: $88
	adc  b                                           ; $6660: $88
	adc  b                                           ; $6661: $88
	adc  b                                           ; $6662: $88
	adc  b                                           ; $6663: $88
	adc  b                                           ; $6664: $88
	adc  b                                           ; $6665: $88
	adc  b                                           ; $6666: $88
	adc  b                                           ; $6667: $88
	adc  b                                           ; $6668: $88
	adc  b                                           ; $6669: $88
	adc  b                                           ; $666a: $88
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  b                                           ; $666d: $88
	adc  b                                           ; $666e: $88
	adc  b                                           ; $666f: $88
	adc  b                                           ; $6670: $88
	adc  b                                           ; $6671: $88
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	adc  b                                           ; $6676: $88
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	adc  b                                           ; $6679: $88
	adc  b                                           ; $667a: $88
	adc  b                                           ; $667b: $88
	adc  b                                           ; $667c: $88
	adc  b                                           ; $667d: $88
	adc  b                                           ; $667e: $88
	adc  b                                           ; $667f: $88
	adc  b                                           ; $6680: $88
	adc  b                                           ; $6681: $88
	adc  b                                           ; $6682: $88
	adc  b                                           ; $6683: $88
	adc  b                                           ; $6684: $88
	adc  b                                           ; $6685: $88
	adc  b                                           ; $6686: $88

Jump_0c9_6687:
	adc  b                                           ; $6687: $88
	adc  b                                           ; $6688: $88
	adc  b                                           ; $6689: $88
	adc  b                                           ; $668a: $88
	adc  b                                           ; $668b: $88
	adc  b                                           ; $668c: $88
	adc  b                                           ; $668d: $88
	adc  b                                           ; $668e: $88
	adc  b                                           ; $668f: $88
	adc  b                                           ; $6690: $88
	adc  b                                           ; $6691: $88
	adc  b                                           ; $6692: $88
	adc  b                                           ; $6693: $88
	adc  b                                           ; $6694: $88
	adc  b                                           ; $6695: $88
	adc  b                                           ; $6696: $88
	adc  b                                           ; $6697: $88
	adc  b                                           ; $6698: $88
	adc  b                                           ; $6699: $88
	adc  b                                           ; $669a: $88
	adc  b                                           ; $669b: $88
	adc  b                                           ; $669c: $88
	adc  b                                           ; $669d: $88
	adc  b                                           ; $669e: $88
	adc  b                                           ; $669f: $88
	adc  b                                           ; $66a0: $88
	adc  b                                           ; $66a1: $88
	adc  b                                           ; $66a2: $88
	adc  b                                           ; $66a3: $88
	adc  b                                           ; $66a4: $88
	adc  b                                           ; $66a5: $88
	adc  b                                           ; $66a6: $88
	adc  b                                           ; $66a7: $88
	adc  b                                           ; $66a8: $88
	adc  b                                           ; $66a9: $88
	adc  b                                           ; $66aa: $88
	adc  b                                           ; $66ab: $88
	adc  b                                           ; $66ac: $88
	adc  b                                           ; $66ad: $88
	adc  b                                           ; $66ae: $88
	adc  b                                           ; $66af: $88
	adc  b                                           ; $66b0: $88
	adc  b                                           ; $66b1: $88
	adc  b                                           ; $66b2: $88
	adc  b                                           ; $66b3: $88
	adc  b                                           ; $66b4: $88
	adc  b                                           ; $66b5: $88
	adc  b                                           ; $66b6: $88
	adc  b                                           ; $66b7: $88
	adc  b                                           ; $66b8: $88
	adc  b                                           ; $66b9: $88
	adc  b                                           ; $66ba: $88
	adc  b                                           ; $66bb: $88
	adc  b                                           ; $66bc: $88
	adc  b                                           ; $66bd: $88
	adc  b                                           ; $66be: $88
	adc  b                                           ; $66bf: $88
	adc  b                                           ; $66c0: $88
	adc  b                                           ; $66c1: $88
	adc  b                                           ; $66c2: $88
	adc  b                                           ; $66c3: $88
	adc  b                                           ; $66c4: $88
	adc  b                                           ; $66c5: $88
	adc  b                                           ; $66c6: $88
	adc  b                                           ; $66c7: $88
	adc  b                                           ; $66c8: $88
	adc  b                                           ; $66c9: $88
	adc  b                                           ; $66ca: $88
	adc  b                                           ; $66cb: $88
	adc  b                                           ; $66cc: $88
	adc  b                                           ; $66cd: $88
	adc  b                                           ; $66ce: $88
	adc  b                                           ; $66cf: $88
	adc  b                                           ; $66d0: $88
	adc  b                                           ; $66d1: $88
	adc  b                                           ; $66d2: $88
	adc  b                                           ; $66d3: $88
	adc  b                                           ; $66d4: $88
	adc  b                                           ; $66d5: $88
	adc  b                                           ; $66d6: $88
	adc  b                                           ; $66d7: $88
	adc  b                                           ; $66d8: $88
	adc  b                                           ; $66d9: $88
	adc  b                                           ; $66da: $88
	adc  b                                           ; $66db: $88
	adc  b                                           ; $66dc: $88
	adc  b                                           ; $66dd: $88
	adc  b                                           ; $66de: $88
	adc  b                                           ; $66df: $88
	adc  b                                           ; $66e0: $88
	adc  b                                           ; $66e1: $88
	adc  b                                           ; $66e2: $88
	adc  b                                           ; $66e3: $88
	adc  b                                           ; $66e4: $88
	adc  b                                           ; $66e5: $88
	adc  b                                           ; $66e6: $88
	adc  b                                           ; $66e7: $88
	adc  b                                           ; $66e8: $88
	adc  b                                           ; $66e9: $88
	adc  b                                           ; $66ea: $88
	adc  b                                           ; $66eb: $88
	adc  b                                           ; $66ec: $88
	adc  b                                           ; $66ed: $88
	adc  b                                           ; $66ee: $88
	adc  b                                           ; $66ef: $88
	adc  b                                           ; $66f0: $88
	adc  b                                           ; $66f1: $88
	adc  b                                           ; $66f2: $88
	adc  b                                           ; $66f3: $88
	adc  b                                           ; $66f4: $88
	adc  b                                           ; $66f5: $88
	adc  b                                           ; $66f6: $88
	adc  b                                           ; $66f7: $88
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	adc  b                                           ; $66fc: $88
	adc  b                                           ; $66fd: $88
	adc  b                                           ; $66fe: $88
	adc  b                                           ; $66ff: $88
	adc  b                                           ; $6700: $88
	adc  b                                           ; $6701: $88
	adc  b                                           ; $6702: $88
	adc  b                                           ; $6703: $88
	adc  b                                           ; $6704: $88
	adc  b                                           ; $6705: $88
	adc  b                                           ; $6706: $88
	adc  b                                           ; $6707: $88
	adc  b                                           ; $6708: $88
	adc  b                                           ; $6709: $88
	adc  b                                           ; $670a: $88
	adc  b                                           ; $670b: $88
	adc  b                                           ; $670c: $88
	adc  b                                           ; $670d: $88
	adc  b                                           ; $670e: $88
	adc  b                                           ; $670f: $88
	adc  b                                           ; $6710: $88
	adc  b                                           ; $6711: $88
	adc  b                                           ; $6712: $88
	adc  b                                           ; $6713: $88
	adc  b                                           ; $6714: $88
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	adc  b                                           ; $6717: $88
	adc  b                                           ; $6718: $88
	adc  b                                           ; $6719: $88
	adc  b                                           ; $671a: $88
	adc  b                                           ; $671b: $88
	adc  b                                           ; $671c: $88
	adc  b                                           ; $671d: $88
	adc  b                                           ; $671e: $88
	adc  b                                           ; $671f: $88
	adc  b                                           ; $6720: $88
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	adc  b                                           ; $6723: $88
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	adc  b                                           ; $6727: $88
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	adc  b                                           ; $672b: $88
	adc  b                                           ; $672c: $88
	adc  b                                           ; $672d: $88
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	adc  b                                           ; $6730: $88
	adc  b                                           ; $6731: $88
	adc  b                                           ; $6732: $88
	adc  b                                           ; $6733: $88
	adc  b                                           ; $6734: $88
	adc  b                                           ; $6735: $88
	adc  b                                           ; $6736: $88
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	adc  b                                           ; $6739: $88
	adc  b                                           ; $673a: $88
	adc  b                                           ; $673b: $88
	adc  b                                           ; $673c: $88
	adc  b                                           ; $673d: $88
	adc  b                                           ; $673e: $88
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	adc  b                                           ; $6741: $88
	adc  b                                           ; $6742: $88
	adc  b                                           ; $6743: $88
	adc  b                                           ; $6744: $88
	adc  b                                           ; $6745: $88
	adc  b                                           ; $6746: $88
	adc  b                                           ; $6747: $88
	adc  b                                           ; $6748: $88
	adc  b                                           ; $6749: $88
	adc  b                                           ; $674a: $88
	adc  b                                           ; $674b: $88
	adc  b                                           ; $674c: $88
	adc  b                                           ; $674d: $88
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	adc  b                                           ; $6750: $88
	adc  b                                           ; $6751: $88
	adc  b                                           ; $6752: $88
	adc  b                                           ; $6753: $88
	adc  b                                           ; $6754: $88
	adc  b                                           ; $6755: $88
	adc  b                                           ; $6756: $88
	adc  b                                           ; $6757: $88
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
	adc  b                                           ; $6762: $88
	adc  b                                           ; $6763: $88
	adc  b                                           ; $6764: $88

Jump_0c9_6765:
	adc  b                                           ; $6765: $88
	adc  b                                           ; $6766: $88
	adc  b                                           ; $6767: $88
	adc  b                                           ; $6768: $88
	adc  b                                           ; $6769: $88
	adc  b                                           ; $676a: $88
	adc  b                                           ; $676b: $88
	adc  b                                           ; $676c: $88
	adc  b                                           ; $676d: $88
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	adc  b                                           ; $6770: $88
	adc  b                                           ; $6771: $88
	adc  b                                           ; $6772: $88
	adc  b                                           ; $6773: $88
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88
	adc  b                                           ; $6776: $88
	adc  b                                           ; $6777: $88
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	adc  b                                           ; $677a: $88
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	adc  b                                           ; $677d: $88
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
	adc  b                                           ; $6788: $88
	adc  b                                           ; $6789: $88
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
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	adc  b                                           ; $67a2: $88
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	adc  b                                           ; $67a6: $88
	adc  b                                           ; $67a7: $88
	adc  b                                           ; $67a8: $88

Call_0c9_67a9:
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

Call_0c9_67b8:
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

Call_0c9_67c9:
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

Jump_0c9_6876:
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
	adc  c                                           ; $699d: $89
	sbc  b                                           ; $699e: $98
	ld   a, b                                        ; $699f: $78
	adc  b                                           ; $69a0: $88
	adc  b                                           ; $69a1: $88
	adc  c                                           ; $69a2: $89
	add  [hl]                                        ; $69a3: $86
	ld   l, c                                        ; $69a4: $69
	cp   b                                           ; $69a5: $b8
	ld   h, l                                        ; $69a6: $65
	ld   a, d                                        ; $69a7: $7a
	xor  c                                           ; $69a8: $a9
	halt                                             ; $69a9: $76
	ld   a, b                                        ; $69aa: $78
	sbc  c                                           ; $69ab: $99
	add  a                                           ; $69ac: $87
	adc  b                                           ; $69ad: $88
	sbc  c                                           ; $69ae: $99
	sbc  b                                           ; $69af: $98
	adc  c                                           ; $69b0: $89
	sub  a                                           ; $69b1: $97
	ld   [hl], a                                     ; $69b2: $77
	adc  c                                           ; $69b3: $89
	sbc  b                                           ; $69b4: $98
	halt                                             ; $69b5: $76
	ld   a, c                                        ; $69b6: $79
	sub  a                                           ; $69b7: $97
	ld   h, [hl]                                     ; $69b8: $66
	adc  e                                           ; $69b9: $8b
	sub  a                                           ; $69ba: $97
	ld   h, a                                        ; $69bb: $67
	sbc  c                                           ; $69bc: $99
	sub  a                                           ; $69bd: $97
	ld   h, [hl]                                     ; $69be: $66
	adc  c                                           ; $69bf: $89
	sbc  c                                           ; $69c0: $99
	sbc  b                                           ; $69c1: $98
	xor  c                                           ; $69c2: $a9
	halt                                             ; $69c3: $76
	ld   a, c                                        ; $69c4: $79
	cp   c                                           ; $69c5: $b9
	ld   h, l                                        ; $69c6: $65
	ld   a, c                                        ; $69c7: $79
	add  a                                           ; $69c8: $87
	ld   h, a                                        ; $69c9: $67
	adc  c                                           ; $69ca: $89
	ld   [hl], a                                     ; $69cb: $77
	adc  c                                           ; $69cc: $89
	sub  a                                           ; $69cd: $97
	ld   [hl], a                                     ; $69ce: $77
	adc  c                                           ; $69cf: $89
	ld   [hl], a                                     ; $69d0: $77
	ld   a, c                                        ; $69d1: $79
	sbc  b                                           ; $69d2: $98
	ld   a, b                                        ; $69d3: $78
	adc  c                                           ; $69d4: $89
	adc  c                                           ; $69d5: $89
	adc  c                                           ; $69d6: $89
	adc  b                                           ; $69d7: $88
	ld   a, b                                        ; $69d8: $78
	sbc  b                                           ; $69d9: $98
	ld   [hl], a                                     ; $69da: $77
	ld   a, b                                        ; $69db: $78
	adc  b                                           ; $69dc: $88
	adc  b                                           ; $69dd: $88
	sbc  c                                           ; $69de: $99
	sbc  b                                           ; $69df: $98
	ld   [hl], a                                     ; $69e0: $77
	ld   [hl], a                                     ; $69e1: $77
	ld   h, [hl]                                     ; $69e2: $66
	ld   h, [hl]                                     ; $69e3: $66
	ld   [hl], a                                     ; $69e4: $77
	ld   h, [hl]                                     ; $69e5: $66
	adc  d                                           ; $69e6: $8a
	cp   e                                           ; $69e7: $bb
	cp   h                                           ; $69e8: $bc
	cp   e                                           ; $69e9: $bb
	sub  a                                           ; $69ea: $97
	ld   h, [hl]                                     ; $69eb: $66
	ld   d, h                                        ; $69ec: $54
	ld   hl, $9a15                                   ; $69ed: $21 $15 $9a
	xor  e                                           ; $69f0: $ab
	rst  JumpTable                                         ; $69f1: $df
	db   $fd                                         ; $69f2: $fd
	jp   z, Jump_0c9_6498                            ; $69f3: $ca $98 $64

	ld   hl, $2711                                   ; $69f6: $21 $11 $27
	sbc  e                                           ; $69f9: $9b
	cp   l                                           ; $69fa: $bd
	rst  $38                                         ; $69fb: $ff
	db   $fd                                         ; $69fc: $fd
	cp   e                                           ; $69fd: $bb
	sub  a                                           ; $69fe: $97
	ld   d, d                                        ; $69ff: $52
	ld   bc, $5a11                                   ; $6a00: $01 $11 $5a
	call z, $ffcf                                    ; $6a03: $cc $cf $ff
	ld   a, [$8699]                                  ; $6a06: $fa $99 $86
	ld   hl, $1511                                   ; $6a09: $21 $11 $15
	xor  l                                           ; $6a0c: $ad
	db   $dd                                         ; $6a0d: $dd
	rst  $38                                         ; $6a0e: $ff
	cp   $b8                                         ; $6a0f: $fe $b8
	add  a                                           ; $6a11: $87
	ld   h, c                                        ; $6a12: $61
	ld   de, $8c11                                   ; $6a13: $11 $11 $8c
	db   $ed                                         ; $6a16: $ed
	rst  $28                                         ; $6a17: $ef
	rst  $38                                         ; $6a18: $ff
	reti                                             ; $6a19: $d9


	add  a                                           ; $6a1a: $87
	ld   h, e                                        ; $6a1b: $63
	ld   de, $6c11                                   ; $6a1c: $11 $11 $6c
	cp   $ff                                         ; $6a1f: $fe $ff
	rst  $38                                         ; $6a21: $ff
	ld   a, [$6387]                                  ; $6a22: $fa $87 $63
	ld   de, $5c11                                   ; $6a25: $11 $11 $5c
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	db   $eb                                         ; $6a2b: $eb
	sbc  c                                           ; $6a2c: $99
	ld   h, e                                        ; $6a2d: $63
	ld   de, $5d11                                   ; $6a2e: $11 $11 $5d
	rst  $38                                         ; $6a31: $ff
	rst  $38                                         ; $6a32: $ff
	cp   $ca                                         ; $6a33: $fe $ca
	xor  c                                           ; $6a35: $a9
	ld   h, d                                        ; $6a36: $62
	ld   de, $7d11                                   ; $6a37: $11 $11 $7d
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	db   $fc                                         ; $6a3c: $fc
	cp   d                                           ; $6a3d: $ba
	xor  e                                           ; $6a3e: $ab
	ld   [hl], d                                     ; $6a3f: $72
	ld   de, $7e11                                   ; $6a40: $11 $11 $7e
	rst  $38                                         ; $6a43: $ff
	rst  $38                                         ; $6a44: $ff
	db   $eb                                         ; $6a45: $eb
	sbc  b                                           ; $6a46: $98
	xor  e                                           ; $6a47: $ab
	add  d                                           ; $6a48: $82
	ld   de, $9f11                                   ; $6a49: $11 $11 $9f
	rst  $38                                         ; $6a4c: $ff
	rst  $38                                         ; $6a4d: $ff
	db   $eb                                         ; $6a4e: $eb
	add  a                                           ; $6a4f: $87
	xor  h                                           ; $6a50: $ac
	sub  d                                           ; $6a51: $92
	ld   de, $bf11                                   ; $6a52: $11 $11 $bf
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	ld   a, [$9c76]                                  ; $6a57: $fa $76 $9c
	sub  d                                           ; $6a5a: $92
	ld   de, $cf12                                   ; $6a5b: $11 $12 $cf
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	jp   c, $9c66                                    ; $6a60: $da $66 $9c

	sub  c                                           ; $6a63: $91
	ld   de, rAUD1LOW                                   ; $6a64: $11 $13 $ff
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	jp   c, $ac66                                    ; $6a69: $da $66 $ac

	add  c                                           ; $6a6c: $81
	ld   de, $ff17                                   ; $6a6d: $11 $17 $ff
	rst  $38                                         ; $6a70: $ff
	rst  $38                                         ; $6a71: $ff
	reti                                             ; $6a72: $d9


	ld   d, a                                        ; $6a73: $57
	cp   l                                           ; $6a74: $bd
	ld   h, c                                        ; $6a75: $61
	ld   de, $ff1c                                   ; $6a76: $11 $1c $ff
	db   $fd                                         ; $6a79: $fd
	xor  $c7                                         ; $6a7a: $ee $c7
	ld   l, d                                        ; $6a7c: $6a
	cp   c                                           ; $6a7d: $b9
	ld   de, $7f11                                   ; $6a7e: $11 $11 $7f
	rst  $38                                         ; $6a81: $ff
	db   $dd                                         ; $6a82: $dd
	db   $fd                                         ; $6a83: $fd
	add  l                                           ; $6a84: $85
	adc  h                                           ; $6a85: $8c
	push bc                                          ; $6a86: $c5
	ld   de, rAUD1ENV                                   ; $6a87: $11 $12 $ff
	cp   $de                                         ; $6a8a: $fe $de
	ld   [$cd56], a                                  ; $6a8c: $ea $56 $cd
	and  c                                           ; $6a8f: $a1
	ld   de, $ff1d                                   ; $6a90: $11 $1d $ff
	db   $fc                                         ; $6a93: $fc
	sbc  $b6                                         ; $6a94: $de $b6
	ld   e, c                                        ; $6a96: $59
	call c, $1121                                    ; $6a97: $dc $21 $11
	adc  a                                           ; $6a9a: $8f
	rst  $38                                         ; $6a9b: $ff
	call z, $85ec                                    ; $6a9c: $cc $ec $85
	adc  l                                           ; $6a9f: $8d
	push bc                                          ; $6aa0: $c5
	ld   de, rAUD1HIGH                                   ; $6aa1: $11 $14 $ff
	db   $fc                                         ; $6aa4: $fc
	xor  l                                           ; $6aa5: $ad
	db   $db                                         ; $6aa6: $db
	ld   d, [hl]                                     ; $6aa7: $56
	cp   l                                           ; $6aa8: $bd
	add  c                                           ; $6aa9: $81
	ld   de, $ff1f                                   ; $6aaa: $11 $1f $ff
	reti                                             ; $6aad: $d9


	cp   l                                           ; $6aae: $bd
	or   [hl]                                        ; $6aaf: $b6
	ld   e, d                                        ; $6ab0: $5a
	jp   z, $1111                                    ; $6ab1: $ca $11 $11

	rst  $38                                         ; $6ab4: $ff
	rst  $38                                         ; $6ab5: $ff
	adc  c                                           ; $6ab6: $89
	call $8b85                                       ; $6ab7: $cd $85 $8b
	or   c                                           ; $6aba: $b1
	ld   de, $ff1c                                   ; $6abb: $11 $1c $ff
	ld   hl, sp+$7b                                  ; $6abe: $f8 $7b
	jp   c, $bb69                                    ; $6ac0: $da $69 $bb

	ld   sp, $af11                                   ; $6ac3: $31 $11 $af
	rst  $38                                         ; $6ac6: $ff
	add  [hl]                                        ; $6ac7: $86
	xor  l                                           ; $6ac8: $ad
	or   a                                           ; $6ac9: $b7
	adc  d                                           ; $6aca: $8a
	or   h                                           ; $6acb: $b4
	ld   de, $ff19                                   ; $6acc: $11 $19 $ff
	rst  $30                                         ; $6acf: $f7
	ld   c, b                                        ; $6ad0: $48
	res  3, b                                        ; $6ad1: $cb $98
	sbc  d                                           ; $6ad3: $9a
	ld   b, c                                        ; $6ad4: $41
	ld   de, $ff9f                                   ; $6ad5: $11 $9f $ff
	add  e                                           ; $6ad8: $83
	ld   a, l                                        ; $6ad9: $7d
	reti                                             ; $6ada: $d9


	adc  c                                           ; $6adb: $89
	and  l                                           ; $6adc: $a5
	ld   de, $ff18                                   ; $6add: $11 $18 $ff
	rst  $30                                         ; $6ae0: $f7
	dec  d                                           ; $6ae1: $15
	sbc  $98                                         ; $6ae2: $de $98
	adc  d                                           ; $6ae4: $8a
	ld   h, c                                        ; $6ae5: $61
	ld   de, $ff6f                                   ; $6ae6: $11 $6f $ff

jr_0c9_6ae9:
	sub  c                                           ; $6ae9: $91
	ld   c, e                                        ; $6aea: $4b
	jp   hl                                          ; $6aeb: $e9


	adc  b                                           ; $6aec: $88
	cp   b                                           ; $6aed: $b8
	ld   de, rAUD1ENV                                   ; $6aee: $11 $12 $ff
	ei                                               ; $6af1: $fb
	ld   [de], a                                     ; $6af2: $12
	sbc  l                                           ; $6af3: $9d
	and  a                                           ; $6af4: $a7
	ld   a, e                                        ; $6af5: $7b
	jp   nz, $1f11                                   ; $6af6: $c2 $11 $1f

	rst  $38                                         ; $6af9: $ff
	ldh  a, [c]                                      ; $6afa: $f2
	jr   jr_0c9_6ae9                                 ; $6afb: $18 $ec

	halt                                             ; $6afd: $76
	xor  a                                           ; $6afe: $af
	ld   [hl], c                                     ; $6aff: $71
	ld   de, $ff8f                                   ; $6b00: $11 $8f $ff
	ld   h, c                                        ; $6b03: $61
	ld   c, l                                        ; $6b04: $4d
	reti                                             ; $6b05: $d9


	ld   h, a                                        ; $6b06: $67
	db   $ed                                         ; $6b07: $ed
	ld   sp, rAUD1LEN                                   ; $6b08: $31 $11 $ff
	rst  $38                                         ; $6b0b: $ff
	ld   de, $b86d                                   ; $6b0c: $11 $6d $b8
	ld   l, d                                        ; $6b0f: $6a
	ei                                               ; $6b10: $fb
	ld   de, rAUD1LEN                                   ; $6b11: $11 $11 $ff
	db   $fd                                         ; $6b14: $fd
	ld   de, $a87d                                   ; $6b15: $11 $7d $a8
	ld   a, e                                        ; $6b18: $7b
	ld   a, [$1111]                                  ; $6b19: $fa $11 $11
	rst  $38                                         ; $6b1c: $ff
	db   $fd                                         ; $6b1d: $fd
	ld   de, $ba6c                                   ; $6b1e: $11 $6c $ba
	ld   a, l                                        ; $6b21: $7d
	jp   c, $1111                                    ; $6b22: $da $11 $11

	rst  $38                                         ; $6b25: $ff
	rst  $38                                         ; $6b26: $ff
	ld   hl, $ab4a                                   ; $6b27: $21 $4a $ab
	ld   a, h                                        ; $6b2a: $7c
	db   $db                                         ; $6b2b: $db
	ld   b, c                                        ; $6b2c: $41
	ld   de, $ffef                                   ; $6b2d: $11 $ef $ff
	ld   b, c                                        ; $6b30: $41
	jr   @-$42                                       ; $6b31: $18 $bc

	adc  e                                           ; $6b33: $8b
	call c, $1181                                    ; $6b34: $dc $81 $11
	ld   c, a                                        ; $6b37: $4f
	rst  $38                                         ; $6b38: $ff
	and  c                                           ; $6b39: $a1
	inc  d                                           ; $6b3a: $14
	adc  h                                           ; $6b3b: $8c
	xor  d                                           ; $6b3c: $aa
	db   $ed                                         ; $6b3d: $ed
	pop  bc                                          ; $6b3e: $c1
	ld   de, $ff1f                                   ; $6b3f: $11 $1f $ff
	push af                                          ; $6b42: $f5
	ld   de, $db5a                                   ; $6b43: $11 $5a $db
	xor  $d7                                         ; $6b46: $ee $d7
	ld   de, rAUD1LEN                                   ; $6b48: $11 $11 $ff
	rst  $38                                         ; $6b4b: $ff
	ld   sp, $bf14                                   ; $6b4c: $31 $14 $bf
	sbc  $cb                                         ; $6b4f: $de $cb
	ld   d, c                                        ; $6b51: $51
	ld   de, $ff1f                                   ; $6b52: $11 $1f $ff
	pop  af                                          ; $6b55: $f1
	ld   de, $fd6e                                   ; $6b56: $11 $6e $fd
	db   $ec                                         ; $6b59: $ec
	or   e                                           ; $6b5a: $b3
	ld   de, rAUD1LOW                                   ; $6b5b: $11 $13 $ff
	db   $fd                                         ; $6b5e: $fd
	ld   de, $ff17                                   ; $6b5f: $11 $17 $ff
	db   $ed                                         ; $6b62: $ed
	jp   z, $1121                                    ; $6b63: $ca $21 $11

	ld   c, a                                        ; $6b66: $4f
	rst  $38                                         ; $6b67: $ff
	pop  hl                                          ; $6b68: $e1
	ld   de, $fe7f                                   ; $6b69: $11 $7f $fe
	db   $db                                         ; $6b6c: $db
	and  e                                           ; $6b6d: $a3
	ld   de, rAUD1LEN                                   ; $6b6e: $11 $11 $ff
	rst  $38                                         ; $6b71: $ff
	ld   de, $ff15                                   ; $6b72: $11 $15 $ff
	cp   $ca                                         ; $6b75: $fe $ca
	ld   b, c                                        ; $6b77: $41
	ld   de, $ff1f                                   ; $6b78: $11 $1f $ff
	ldh  a, [c]                                      ; $6b7b: $f2
	ld   de, $ff3c                                   ; $6b7c: $11 $3c $ff
	db   $fc                                         ; $6b7f: $fc
	sub  l                                           ; $6b80: $95
	ld   de, $bf11                                   ; $6b81: $11 $11 $bf
	rst  $38                                         ; $6b84: $ff
	sub  c                                           ; $6b85: $91
	ld   de, $ffaf                                   ; $6b86: $11 $af $ff
	or   a                                           ; $6b89: $b7
	ld   h, c                                        ; $6b8a: $61
	ld   de, $ff17                                   ; $6b8b: $11 $17 $ff
	ei                                               ; $6b8e: $fb
	ld   de, $ff1c                                   ; $6b8f: $11 $1c $ff
	ld   hl, sp+$46                                  ; $6b92: $f8 $46
	ld   de, $6f11                                   ; $6b94: $11 $11 $6f
	rst  $38                                         ; $6b97: $ff
	ld   [hl], c                                     ; $6b98: $71
	dec  d                                           ; $6b99: $15
	rst  $38                                         ; $6b9a: $ff
	ld   sp, hl                                      ; $6b9b: $f9
	ld   h, l                                        ; $6b9c: $65
	and  e                                           ; $6b9d: $a3
	ld   sp, rAUD1LEN                                   ; $6b9e: $31 $11 $ff
	db   $fd                                         ; $6ba1: $fd
	ld   de, $ff1e                                   ; $6ba2: $11 $1e $ff
	sub  a                                           ; $6ba5: $97
	ld   c, c                                        ; $6ba6: $49
	ld   [hl], d                                     ; $6ba7: $72
	ld   b, c                                        ; $6ba8: $41
	add  hl, de                                      ; $6ba9: $19
	rst  $38                                         ; $6baa: $ff
	ldh  a, [c]                                      ; $6bab: $f2
	ld   de, $fe7f                                   ; $6bac: $11 $7f $fe
	ld   [hl], l                                     ; $6baf: $75
	ld   l, d                                        ; $6bb0: $6a
	inc  sp                                          ; $6bb1: $33
	ld   de, $ff2f                                   ; $6bb2: $11 $2f $ff
	or   c                                           ; $6bb5: $b1
	ld   [de], a                                     ; $6bb6: $12
	rst  $38                                         ; $6bb7: $ff
	ld   sp, hl                                      ; $6bb8: $f9
	ld   d, h                                        ; $6bb9: $54
	sub  a                                           ; $6bba: $97
	inc  hl                                          ; $6bbb: $23
	ld   de, $ffdf                                   ; $6bbc: $11 $df $ff
	ld   de, $ff1b                                   ; $6bbf: $11 $1b $ff
	add  $46                                         ; $6bc2: $c6 $46
	add  d                                           ; $6bc4: $82
	ld   sp, $ff19                                   ; $6bc5: $31 $19 $ff
	db   $f4                                         ; $6bc8: $f4
	ld   de, $ff7f                                   ; $6bc9: $11 $7f $ff
	ld   [hl], h                                     ; $6bcc: $74
	ld   c, c                                        ; $6bcd: $49
	ld   b, d                                        ; $6bce: $42
	ld   de, $ff3f                                   ; $6bcf: $11 $3f $ff
	add  c                                           ; $6bd2: $81
	inc  d                                           ; $6bd3: $14
	rst  $38                                         ; $6bd4: $ff
	ld   sp, hl                                      ; $6bd5: $f9
	ld   d, h                                        ; $6bd6: $54
	sub  l                                           ; $6bd7: $95
	ld   de, rAUD1LEN                                   ; $6bd8: $11 $11 $ff
	ei                                               ; $6bdb: $fb
	ld   de, $ff3e                                   ; $6bdc: $11 $3e $ff
	sub  [hl]                                        ; $6bdf: $96
	ld   b, a                                        ; $6be0: $47
	ld   h, c                                        ; $6be1: $61
	ld   hl, $ff1f                                   ; $6be2: $21 $1f $ff
	pop  bc                                          ; $6be5: $c1
	ld   [de], a                                     ; $6be6: $12
	rst  JumpTable                                         ; $6be7: $df
	ld   sp, hl                                      ; $6be8: $f9
	ld   h, h                                        ; $6be9: $64
	ld   h, [hl]                                     ; $6bea: $66
	ld   [bc], a                                     ; $6beb: $02
	ld   de, $fbff                                   ; $6bec: $11 $ff $fb
	ld   de, $ff3d                                   ; $6bef: $11 $3d $ff
	sub  a                                           ; $6bf2: $97
	ld   d, [hl]                                     ; $6bf3: $56
	ld   h, c                                        ; $6bf4: $61
	ld   de, $ff1f                                   ; $6bf5: $11 $1f $ff
	sub  c                                           ; $6bf8: $91
	ld   d, $ef                                      ; $6bf9: $16 $ef
	ld   hl, sp-$6b                                  ; $6bfb: $f8 $95

jr_0c9_6bfd:
	ld   h, h                                        ; $6bfd: $64
	ld   de, $ff19                                   ; $6bfe: $11 $19 $ff
	di                                               ; $6c01: $f3
	ld   de, $fe9f                                   ; $6c02: $11 $9f $fe
	ld   a, c                                        ; $6c05: $79
	ld   d, [hl]                                     ; $6c06: $56
	ld   de, rAUD1LEN                                   ; $6c07: $11 $11 $ff
	db   $fc                                         ; $6c0a: $fc
	ld   de, $ff5c                                   ; $6c0b: $11 $5c $ff
	sbc  d                                           ; $6c0e: $9a
	add  h                                           ; $6c0f: $84
	ld   sp, $8f11                                   ; $6c10: $31 $11 $8f
	rst  $38                                         ; $6c13: $ff
	ld   d, c                                        ; $6c14: $51
	ld   a, [de]                                     ; $6c15: $1a
	rst  JumpTable                                         ; $6c16: $df
	and  $a6                                         ; $6c17: $e6 $a6
	ld   b, c                                        ; $6c19: $41
	ld   de, $ff2f                                   ; $6c1a: $11 $2f $ff
	add  c                                           ; $6c1d: $81
	jr   jr_0c9_6bfd                                 ; $6c1e: $18 $dd

	ld   hl, sp-$57                                  ; $6c20: $f8 $a9
	ld   [hl+], a                                    ; $6c22: $22
	ld   de, $ff1f                                   ; $6c23: $11 $1f $ff
	pop  de                                          ; $6c26: $d1
	inc  d                                           ; $6c27: $14
	db   $dd                                         ; $6c28: $dd
	ld   a, [$526a]                                  ; $6c29: $fa $6a $52
	ld   de, $ff1f                                   ; $6c2c: $11 $1f $ff
	pop  de                                          ; $6c2f: $d1
	dec  d                                           ; $6c30: $15
	db   $dd                                         ; $6c31: $dd
	db   $ec                                         ; $6c32: $ec
	ld   l, d                                        ; $6c33: $6a
	ld   d, c                                        ; $6c34: $51
	ld   de, $ff1f                                   ; $6c35: $11 $1f $ff
	pop  de                                          ; $6c38: $d1
	dec  d                                           ; $6c39: $15
	sbc  $ed                                         ; $6c3a: $de $ed
	ld   l, b                                        ; $6c3c: $68
	ld   d, c                                        ; $6c3d: $51
	ld   de, $ff1f                                   ; $6c3e: $11 $1f $ff
	or   c                                           ; $6c41: $b1
	ld   d, $cc                                      ; $6c42: $16 $cc
	cp   $77                                         ; $6c44: $fe $77
	ld   sp, $2f11                                   ; $6c46: $31 $11 $2f
	cp   $a3                                         ; $6c49: $fe $a3
	scf                                              ; $6c4b: $37
	cp   h                                           ; $6c4c: $bc
	db   $ed                                         ; $6c4d: $ed
	ld   [hl], a                                     ; $6c4e: $77
	ld   hl, $8f11                                   ; $6c4f: $21 $11 $8f
	ei                                               ; $6c52: $fb
	ld   [hl], l                                     ; $6c53: $75
	ld   e, b                                        ; $6c54: $58
	cp   d                                           ; $6c55: $ba
	db   $ec                                         ; $6c56: $ec
	add  [hl]                                        ; $6c57: $86
	ld   hl, rAUD1LEN                                   ; $6c58: $21 $11 $ff
	ld   a, [$6956]                                  ; $6c5b: $fa $56 $69
	jp   z, $75d9                                    ; $6c5e: $ca $d9 $75

	ld   hl, rAUD1HIGH                                   ; $6c61: $21 $14 $ff
	ret  c                                           ; $6c64: $d8

	ld   h, a                                        ; $6c65: $67
	adc  e                                           ; $6c66: $8b
	xor  h                                           ; $6c67: $ac
	or   a                                           ; $6c68: $b7
	ld   d, e                                        ; $6c69: $53
	ld   de, $ff1e                                   ; $6c6a: $11 $1e $ff
	add  a                                           ; $6c6d: $87
	add  a                                           ; $6c6e: $87
	sbc  e                                           ; $6c6f: $9b
	xor  h                                           ; $6c70: $ac
	add  [hl]                                        ; $6c71: $86
	ld   b, c                                        ; $6c72: $41
	ld   de, $f9cf                                   ; $6c73: $11 $cf $f9
	ld   l, c                                        ; $6c76: $69
	adc  c                                           ; $6c77: $89
	xor  e                                           ; $6c78: $ab
	jp   c, $2165                                    ; $6c79: $da $65 $21

	ld   d, $ff                                      ; $6c7c: $16 $ff
	rst  ToBoot                                         ; $6c7e: $c7
	add  a                                           ; $6c7f: $87
	adc  d                                           ; $6c80: $8a
	xor  l                                           ; $6c81: $ad
	and  [hl]                                        ; $6c82: $a6
	ld   d, e                                        ; $6c83: $53
	ld   de, $fc2f                                   ; $6c84: $11 $2f $fc
	sbc  d                                           ; $6c87: $9a
	and  a                                           ; $6c88: $a7
	sbc  c                                           ; $6c89: $99
	cp   e                                           ; $6c8a: $bb
	halt                                             ; $6c8b: $76
	ld   b, c                                        ; $6c8c: $41
	ld   de, $c8ff                                   ; $6c8d: $11 $ff $c8
	xor  h                                           ; $6c90: $ac
	adc  c                                           ; $6c91: $89
	adc  e                                           ; $6c92: $8b
	or   a                                           ; $6c93: $b7
	ld   h, h                                        ; $6c94: $64
	ld   de, $fc1f                                   ; $6c95: $11 $1f $fc
	adc  e                                           ; $6c98: $8b
	xor  b                                           ; $6c99: $a8
	xor  b                                           ; $6c9a: $a8
	cp   e                                           ; $6c9b: $bb
	ld   h, [hl]                                     ; $6c9c: $66
	ld   d, c                                        ; $6c9d: $51
	ld   de, $b8ff                                   ; $6c9e: $11 $ff $b8
	res  3, d                                        ; $6ca1: $cb $9a
	sbc  e                                           ; $6ca3: $9b
	sub  [hl]                                        ; $6ca4: $96
	ld   h, l                                        ; $6ca5: $65
	ld   de, $f91f                                   ; $6ca6: $11 $1f $f9
	sbc  [hl]                                        ; $6ca9: $9e
	ret                                              ; $6caa: $c9


	cp   d                                           ; $6cab: $ba
	cp   b                                           ; $6cac: $b8
	ld   d, [hl]                                     ; $6cad: $56
	ld   h, c                                        ; $6cae: $61
	inc  d                                           ; $6caf: $14
	db   $fd                                         ; $6cb0: $fd
	adc  c                                           ; $6cb1: $89
	ld   [$9c9b], a                                  ; $6cb2: $ea $9b $9c
	add  l                                           ; $6cb5: $85
	ld   d, l                                        ; $6cb6: $55
	ld   de, $a79f                                   ; $6cb7: $11 $9f $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cba: $cf
	sbc  d                                           ; $6cbb: $9a
	cp   c                                           ; $6cbc: $b9
	or   a                                           ; $6cbd: $b7
	ld   h, [hl]                                     ; $6cbe: $66
	ld   b, c                                        ; $6cbf: $41
	dec  de                                          ; $6cc0: $1b
	jp   hl                                          ; $6cc1: $e9


	ld   a, l                                        ; $6cc2: $7d
	reti                                             ; $6cc3: $d9


	xor  d                                           ; $6cc4: $aa
	xor  b                                           ; $6cc5: $a8
	ld   [hl], a                                     ; $6cc6: $77
	ld   h, d                                        ; $6cc7: $62
	ld   de, $79dc                                   ; $6cc8: $11 $dc $79
	db   $fc                                         ; $6ccb: $fc
	sbc  e                                           ; $6ccc: $9b
	cp   d                                           ; $6ccd: $ba
	ld   [hl], a                                     ; $6cce: $77
	ld   h, l                                        ; $6ccf: $65
	ld   de, $967e                                   ; $6cd0: $11 $7e $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cd3: $cf
	xor  e                                           ; $6cd4: $ab
	res  2, a                                        ; $6cd5: $cb $97
	halt                                             ; $6cd7: $76
	ld   b, c                                        ; $6cd8: $41
	ld   a, [de]                                     ; $6cd9: $1a
	and  a                                           ; $6cda: $a7
	ld   a, l                                        ; $6cdb: $7d
	jp   c, $b7bc                                    ; $6cdc: $da $bc $b7

	ld   [hl], a                                     ; $6cdf: $77
	ld   h, e                                        ; $6ce0: $63
	dec  d                                           ; $6ce1: $15
	xor  b                                           ; $6ce2: $a8
	ld   l, c                                        ; $6ce3: $69
	jp   c, $b9aa                                    ; $6ce4: $da $aa $b9

	adc  b                                           ; $6ce7: $88
	add  a                                           ; $6ce8: $87
	inc  sp                                          ; $6ce9: $33
	ld   a, c                                        ; $6cea: $79
	halt                                             ; $6ceb: $76
	sbc  d                                           ; $6cec: $9a
	sbc  d                                           ; $6ced: $9a
	xor  d                                           ; $6cee: $aa
	sbc  b                                           ; $6cef: $98
	sbc  c                                           ; $6cf0: $99
	ld   [hl], l                                     ; $6cf1: $75
	ld   h, a                                        ; $6cf2: $67
	add  [hl]                                        ; $6cf3: $86
	ld   h, a                                        ; $6cf4: $67
	adc  b                                           ; $6cf5: $88
	sbc  c                                           ; $6cf6: $99
	adc  c                                           ; $6cf7: $89
	xor  d                                           ; $6cf8: $aa
	sbc  b                                           ; $6cf9: $98
	ld   a, b                                        ; $6cfa: $78
	add  a                                           ; $6cfb: $87
	ld   h, [hl]                                     ; $6cfc: $66
	ld   h, a                                        ; $6cfd: $67
	ld   a, b                                        ; $6cfe: $78
	adc  b                                           ; $6cff: $88
	sbc  d                                           ; $6d00: $9a
	xor  c                                           ; $6d01: $a9
	adc  b                                           ; $6d02: $88
	sbc  c                                           ; $6d03: $99
	halt                                             ; $6d04: $76
	ld   h, [hl]                                     ; $6d05: $66
	ld   h, a                                        ; $6d06: $67
	ld   [hl], a                                     ; $6d07: $77
	adc  d                                           ; $6d08: $8a
	cp   d                                           ; $6d09: $ba
	xor  c                                           ; $6d0a: $a9
	sbc  c                                           ; $6d0b: $99
	sub  a                                           ; $6d0c: $97
	ld   h, l                                        ; $6d0d: $65
	ld   d, [hl]                                     ; $6d0e: $56
	ld   h, a                                        ; $6d0f: $67
	ld   a, b                                        ; $6d10: $78
	sbc  d                                           ; $6d11: $9a
	cp   d                                           ; $6d12: $ba
	sbc  c                                           ; $6d13: $99
	adc  b                                           ; $6d14: $88
	halt                                             ; $6d15: $76
	ld   d, [hl]                                     ; $6d16: $56
	ld   h, a                                        ; $6d17: $67
	ld   [hl], a                                     ; $6d18: $77
	adc  d                                           ; $6d19: $8a
	cp   e                                           ; $6d1a: $bb
	cp   d                                           ; $6d1b: $ba
	sbc  b                                           ; $6d1c: $98
	add  [hl]                                        ; $6d1d: $86
	ld   d, l                                        ; $6d1e: $55
	ld   h, [hl]                                     ; $6d1f: $66
	ld   [hl], a                                     ; $6d20: $77
	ld   a, c                                        ; $6d21: $79
	xor  e                                           ; $6d22: $ab
	xor  e                                           ; $6d23: $ab
	xor  c                                           ; $6d24: $a9
	sbc  b                                           ; $6d25: $98
	ld   h, l                                        ; $6d26: $65
	ld   d, [hl]                                     ; $6d27: $56
	ld   h, a                                        ; $6d28: $67
	ld   a, b                                        ; $6d29: $78
	sbc  d                                           ; $6d2a: $9a
	cp   e                                           ; $6d2b: $bb
	xor  d                                           ; $6d2c: $aa
	sbc  c                                           ; $6d2d: $99
	add  [hl]                                        ; $6d2e: $86
	ld   d, l                                        ; $6d2f: $55
	ld   h, [hl]                                     ; $6d30: $66
	ld   h, a                                        ; $6d31: $67
	adc  c                                           ; $6d32: $89
	xor  d                                           ; $6d33: $aa
	cp   d                                           ; $6d34: $ba
	sbc  c                                           ; $6d35: $99
	add  a                                           ; $6d36: $87
	ld   h, l                                        ; $6d37: $65
	ld   d, [hl]                                     ; $6d38: $56
	ld   h, [hl]                                     ; $6d39: $66
	ld   a, c                                        ; $6d3a: $79
	sbc  e                                           ; $6d3b: $9b
	cp   e                                           ; $6d3c: $bb
	xor  d                                           ; $6d3d: $aa
	sbc  c                                           ; $6d3e: $99
	halt                                             ; $6d3f: $76
	ld   d, [hl]                                     ; $6d40: $56
	ld   h, [hl]                                     ; $6d41: $66
	ld   h, a                                        ; $6d42: $67
	adc  c                                           ; $6d43: $89
	xor  e                                           ; $6d44: $ab
	xor  d                                           ; $6d45: $aa
	xor  c                                           ; $6d46: $a9
	add  [hl]                                        ; $6d47: $86
	ld   d, l                                        ; $6d48: $55
	ld   h, [hl]                                     ; $6d49: $66
	ld   h, [hl]                                     ; $6d4a: $66
	ld   a, c                                        ; $6d4b: $79
	sbc  d                                           ; $6d4c: $9a
	cp   e                                           ; $6d4d: $bb
	sbc  c                                           ; $6d4e: $99
	sbc  b                                           ; $6d4f: $98
	ld   h, l                                        ; $6d50: $65
	ld   d, [hl]                                     ; $6d51: $56
	ld   h, [hl]                                     ; $6d52: $66
	ld   a, b                                        ; $6d53: $78
	sbc  d                                           ; $6d54: $9a
	cp   e                                           ; $6d55: $bb
	xor  d                                           ; $6d56: $aa
	sbc  b                                           ; $6d57: $98
	halt                                             ; $6d58: $76
	ld   d, l                                        ; $6d59: $55
	ld   h, [hl]                                     ; $6d5a: $66
	ld   h, a                                        ; $6d5b: $67
	sbc  d                                           ; $6d5c: $9a
	cp   e                                           ; $6d5d: $bb
	cp   d                                           ; $6d5e: $ba
	xor  c                                           ; $6d5f: $a9
	sub  a                                           ; $6d60: $97
	ld   h, l                                        ; $6d61: $65
	ld   d, [hl]                                     ; $6d62: $56
	ld   h, [hl]                                     ; $6d63: $66
	ld   a, b                                        ; $6d64: $78
	xor  d                                           ; $6d65: $aa
	cp   e                                           ; $6d66: $bb
	xor  d                                           ; $6d67: $aa
	sbc  b                                           ; $6d68: $98
	ld   h, l                                        ; $6d69: $65
	ld   d, l                                        ; $6d6a: $55
	ld   h, [hl]                                     ; $6d6b: $66
	ld   l, b                                        ; $6d6c: $68
	sbc  c                                           ; $6d6d: $99
	cp   e                                           ; $6d6e: $bb
	xor  d                                           ; $6d6f: $aa
	xor  c                                           ; $6d70: $a9
	halt                                             ; $6d71: $76
	ld   d, l                                        ; $6d72: $55
	ld   h, [hl]                                     ; $6d73: $66
	ld   h, a                                        ; $6d74: $67
	adc  c                                           ; $6d75: $89
	xor  e                                           ; $6d76: $ab
	cp   e                                           ; $6d77: $bb
	sbc  d                                           ; $6d78: $9a
	sub  a                                           ; $6d79: $97
	ld   h, l                                        ; $6d7a: $65
	ld   d, [hl]                                     ; $6d7b: $56
	ld   h, [hl]                                     ; $6d7c: $66
	ld   a, c                                        ; $6d7d: $79
	sbc  e                                           ; $6d7e: $9b
	cp   d                                           ; $6d7f: $ba
	xor  c                                           ; $6d80: $a9
	xor  b                                           ; $6d81: $a8
	ld   h, [hl]                                     ; $6d82: $66
	ld   d, l                                        ; $6d83: $55
	ld   h, [hl]                                     ; $6d84: $66
	ld   l, b                                        ; $6d85: $68
	adc  c                                           ; $6d86: $89
	xor  e                                           ; $6d87: $ab
	cp   d                                           ; $6d88: $ba
	sbc  c                                           ; $6d89: $99
	halt                                             ; $6d8a: $76
	ld   h, l                                        ; $6d8b: $65
	ld   d, [hl]                                     ; $6d8c: $56
	ld   h, a                                        ; $6d8d: $67
	adc  c                                           ; $6d8e: $89
	xor  d                                           ; $6d8f: $aa
	xor  d                                           ; $6d90: $aa
	sbc  d                                           ; $6d91: $9a
	add  a                                           ; $6d92: $87
	ld   h, [hl]                                     ; $6d93: $66
	ld   d, l                                        ; $6d94: $55
	ld   h, [hl]                                     ; $6d95: $66
	ld   a, c                                        ; $6d96: $79
	sbc  d                                           ; $6d97: $9a
	cp   e                                           ; $6d98: $bb
	xor  c                                           ; $6d99: $a9
	sbc  b                                           ; $6d9a: $98
	halt                                             ; $6d9b: $76
	ld   h, [hl]                                     ; $6d9c: $66
	ld   h, [hl]                                     ; $6d9d: $66
	ld   h, a                                        ; $6d9e: $67
	adc  c                                           ; $6d9f: $89
	cp   e                                           ; $6da0: $bb
	cp   d                                           ; $6da1: $ba
	sbc  c                                           ; $6da2: $99
	add  [hl]                                        ; $6da3: $86
	ld   h, [hl]                                     ; $6da4: $66
	ld   h, [hl]                                     ; $6da5: $66
	ld   h, [hl]                                     ; $6da6: $66
	adc  b                                           ; $6da7: $88
	sbc  d                                           ; $6da8: $9a
	cp   d                                           ; $6da9: $ba
	sbc  d                                           ; $6daa: $9a
	add  a                                           ; $6dab: $87
	ld   h, [hl]                                     ; $6dac: $66
	ld   h, [hl]                                     ; $6dad: $66
	ld   h, [hl]                                     ; $6dae: $66
	ld   a, b                                        ; $6daf: $78
	sbc  d                                           ; $6db0: $9a
	xor  d                                           ; $6db1: $aa
	xor  c                                           ; $6db2: $a9
	xor  c                                           ; $6db3: $a9
	halt                                             ; $6db4: $76
	ld   h, [hl]                                     ; $6db5: $66
	ld   h, [hl]                                     ; $6db6: $66
	ld   h, a                                        ; $6db7: $67
	adc  c                                           ; $6db8: $89
	xor  d                                           ; $6db9: $aa
	cp   d                                           ; $6dba: $ba
	sbc  c                                           ; $6dbb: $99
	add  a                                           ; $6dbc: $87
	ld   h, [hl]                                     ; $6dbd: $66
	ld   h, [hl]                                     ; $6dbe: $66
	ld   h, [hl]                                     ; $6dbf: $66
	ld   a, c                                        ; $6dc0: $79
	xor  e                                           ; $6dc1: $ab
	xor  e                                           ; $6dc2: $ab
	xor  c                                           ; $6dc3: $a9
	sub  a                                           ; $6dc4: $97
	halt                                             ; $6dc5: $76
	ld   h, [hl]                                     ; $6dc6: $66
	ld   h, [hl]                                     ; $6dc7: $66
	ld   a, b                                        ; $6dc8: $78
	adc  c                                           ; $6dc9: $89
	cp   d                                           ; $6dca: $ba
	xor  d                                           ; $6dcb: $aa
	xor  c                                           ; $6dcc: $a9
	halt                                             ; $6dcd: $76
	ld   h, [hl]                                     ; $6dce: $66
	ld   h, [hl]                                     ; $6dcf: $66
	ld   h, a                                        ; $6dd0: $67
	adc  c                                           ; $6dd1: $89
	xor  e                                           ; $6dd2: $ab
	cp   d                                           ; $6dd3: $ba
	sbc  c                                           ; $6dd4: $99
	add  a                                           ; $6dd5: $87
	ld   h, [hl]                                     ; $6dd6: $66
	ld   h, [hl]                                     ; $6dd7: $66
	ld   h, [hl]                                     ; $6dd8: $66
	ld   a, b                                        ; $6dd9: $78
	sbc  d                                           ; $6dda: $9a
	cp   d                                           ; $6ddb: $ba
	xor  c                                           ; $6ddc: $a9
	add  a                                           ; $6ddd: $87
	halt                                             ; $6dde: $76
	ld   h, [hl]                                     ; $6ddf: $66
	ld   h, [hl]                                     ; $6de0: $66
	ld   a, b                                        ; $6de1: $78
	adc  d                                           ; $6de2: $8a
	xor  d                                           ; $6de3: $aa
	xor  c                                           ; $6de4: $a9
	sbc  c                                           ; $6de5: $99
	ld   [hl], a                                     ; $6de6: $77
	ld   h, [hl]                                     ; $6de7: $66
	ld   h, [hl]                                     ; $6de8: $66
	ld   h, a                                        ; $6de9: $67
	adc  c                                           ; $6dea: $89
	sbc  d                                           ; $6deb: $9a
	xor  d                                           ; $6dec: $aa
	xor  c                                           ; $6ded: $a9
	add  a                                           ; $6dee: $87
	halt                                             ; $6def: $76
	ld   h, [hl]                                     ; $6df0: $66
	ld   h, a                                        ; $6df1: $67
	ld   a, c                                        ; $6df2: $79
	sbc  d                                           ; $6df3: $9a
	xor  c                                           ; $6df4: $a9
	xor  c                                           ; $6df5: $a9
	add  a                                           ; $6df6: $87
	ld   [hl], a                                     ; $6df7: $77
	ld   h, [hl]                                     ; $6df8: $66
	ld   h, a                                        ; $6df9: $67
	ld   a, b                                        ; $6dfa: $78
	adc  d                                           ; $6dfb: $8a
	sbc  c                                           ; $6dfc: $99
	xor  c                                           ; $6dfd: $a9
	adc  b                                           ; $6dfe: $88
	ld   [hl], a                                     ; $6dff: $77
	halt                                             ; $6e00: $76
	ld   h, a                                        ; $6e01: $67
	ld   a, b                                        ; $6e02: $78
	adc  c                                           ; $6e03: $89
	xor  d                                           ; $6e04: $aa
	sbc  c                                           ; $6e05: $99
	adc  b                                           ; $6e06: $88
	ld   [hl], a                                     ; $6e07: $77
	ld   [hl], a                                     ; $6e08: $77
	ld   [hl], a                                     ; $6e09: $77
	ld   a, b                                        ; $6e0a: $78
	sbc  c                                           ; $6e0b: $99
	sbc  c                                           ; $6e0c: $99
	sbc  c                                           ; $6e0d: $99
	adc  b                                           ; $6e0e: $88
	add  a                                           ; $6e0f: $87
	ld   [hl], a                                     ; $6e10: $77
	ld   [hl], a                                     ; $6e11: $77
	ld   a, b                                        ; $6e12: $78
	sbc  c                                           ; $6e13: $99
	sbc  c                                           ; $6e14: $99
	sbc  c                                           ; $6e15: $99
	adc  c                                           ; $6e16: $89
	add  a                                           ; $6e17: $87
	ld   [hl], a                                     ; $6e18: $77
	ld   [hl], a                                     ; $6e19: $77
	ld   [hl], a                                     ; $6e1a: $77
	adc  b                                           ; $6e1b: $88
	adc  c                                           ; $6e1c: $89
	sbc  c                                           ; $6e1d: $99
	adc  c                                           ; $6e1e: $89
	add  a                                           ; $6e1f: $87
	ld   [hl], a                                     ; $6e20: $77
	ld   [hl], a                                     ; $6e21: $77
	ld   [hl], a                                     ; $6e22: $77
	adc  c                                           ; $6e23: $89
	adc  c                                           ; $6e24: $89
	sbc  c                                           ; $6e25: $99
	adc  c                                           ; $6e26: $89
	adc  b                                           ; $6e27: $88
	ld   [hl], a                                     ; $6e28: $77
	ld   [hl], a                                     ; $6e29: $77
	ld   [hl], a                                     ; $6e2a: $77
	adc  c                                           ; $6e2b: $89
	adc  c                                           ; $6e2c: $89
	sbc  c                                           ; $6e2d: $99
	adc  b                                           ; $6e2e: $88
	adc  b                                           ; $6e2f: $88
	ld   [hl], a                                     ; $6e30: $77
	ld   [hl], a                                     ; $6e31: $77
	ld   [hl], a                                     ; $6e32: $77
	adc  b                                           ; $6e33: $88
	sbc  c                                           ; $6e34: $99
	sbc  c                                           ; $6e35: $99
	sbc  b                                           ; $6e36: $98
	adc  b                                           ; $6e37: $88
	ld   [hl], a                                     ; $6e38: $77
	ld   [hl], a                                     ; $6e39: $77
	ld   [hl], a                                     ; $6e3a: $77
	ld   a, b                                        ; $6e3b: $78
	sbc  b                                           ; $6e3c: $98
	sbc  c                                           ; $6e3d: $99
	sbc  b                                           ; $6e3e: $98
	sbc  b                                           ; $6e3f: $98
	ld   [hl], a                                     ; $6e40: $77
	ld   [hl], a                                     ; $6e41: $77
	ld   [hl], a                                     ; $6e42: $77
	ld   a, b                                        ; $6e43: $78
	sbc  b                                           ; $6e44: $98
	sbc  c                                           ; $6e45: $99
	sbc  b                                           ; $6e46: $98
	sbc  b                                           ; $6e47: $98
	ld   [hl], a                                     ; $6e48: $77
	ld   [hl], a                                     ; $6e49: $77
	ld   [hl], a                                     ; $6e4a: $77

jr_0c9_6e4b:
	adc  b                                           ; $6e4b: $88
	adc  c                                           ; $6e4c: $89
	adc  c                                           ; $6e4d: $89
	adc  b                                           ; $6e4e: $88
	sbc  b                                           ; $6e4f: $98
	add  a                                           ; $6e50: $87
	ld   [hl], a                                     ; $6e51: $77
	ld   [hl], a                                     ; $6e52: $77
	ld   a, b                                        ; $6e53: $78
	adc  c                                           ; $6e54: $89
	sbc  b                                           ; $6e55: $98
	adc  b                                           ; $6e56: $88
	sbc  b                                           ; $6e57: $98
	adc  b                                           ; $6e58: $88
	ld   [hl], a                                     ; $6e59: $77
	ld   [hl], a                                     ; $6e5a: $77
	ld   a, b                                        ; $6e5b: $78
	adc  b                                           ; $6e5c: $88
	adc  c                                           ; $6e5d: $89
	sbc  c                                           ; $6e5e: $99
	sbc  c                                           ; $6e5f: $99
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	ld   [hl], a                                     ; $6e62: $77
	ld   [hl], a                                     ; $6e63: $77
	adc  b                                           ; $6e64: $88
	adc  b                                           ; $6e65: $88
	adc  c                                           ; $6e66: $89
	sbc  c                                           ; $6e67: $99
	adc  b                                           ; $6e68: $88
	adc  b                                           ; $6e69: $88
	adc  b                                           ; $6e6a: $88
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	adc  b                                           ; $6e6f: $88
	adc  b                                           ; $6e70: $88
	sbc  b                                           ; $6e71: $98
	adc  b                                           ; $6e72: $88
	sbc  b                                           ; $6e73: $98
	ld   a, b                                        ; $6e74: $78
	add  a                                           ; $6e75: $87
	adc  b                                           ; $6e76: $88
	adc  b                                           ; $6e77: $88
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	adc  b                                           ; $6e7a: $88
	sbc  b                                           ; $6e7b: $98
	ld   a, b                                        ; $6e7c: $78
	sbc  c                                           ; $6e7d: $99
	sub  a                                           ; $6e7e: $97
	ld   [hl], a                                     ; $6e7f: $77
	adc  b                                           ; $6e80: $88
	sbc  b                                           ; $6e81: $98
	ld   a, c                                        ; $6e82: $79
	add  a                                           ; $6e83: $87
	sbc  c                                           ; $6e84: $99
	ld   a, b                                        ; $6e85: $78
	adc  b                                           ; $6e86: $88
	adc  c                                           ; $6e87: $89
	ld   h, [hl]                                     ; $6e88: $66
	add  a                                           ; $6e89: $87
	adc  b                                           ; $6e8a: $88
	ld   h, [hl]                                     ; $6e8b: $66
	ld   [hl], a                                     ; $6e8c: $77
	ld   a, c                                        ; $6e8d: $79
	adc  c                                           ; $6e8e: $89
	sbc  b                                           ; $6e8f: $98
	sbc  c                                           ; $6e90: $99
	add  a                                           ; $6e91: $87
	ld   h, [hl]                                     ; $6e92: $66
	ld   [hl], a                                     ; $6e93: $77
	ld   [hl], a                                     ; $6e94: $77
	sbc  c                                           ; $6e95: $99
	xor  d                                           ; $6e96: $aa
	xor  d                                           ; $6e97: $aa
	sbc  b                                           ; $6e98: $98
	ld   h, h                                        ; $6e99: $64
	dec  [hl]                                        ; $6e9a: $35
	ld   h, l                                        ; $6e9b: $65
	ld   d, a                                        ; $6e9c: $57
	xor  e                                           ; $6e9d: $ab
	adc  $ed                                         ; $6e9e: $ce $ed
	sbc  c                                           ; $6ea0: $99
	ld   h, d                                        ; $6ea1: $62
	ld   de, $3532                                   ; $6ea2: $11 $32 $35
	rst  JumpTable                                         ; $6ea5: $df
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	or   a                                           ; $6ea8: $b7
	ld   h, c                                        ; $6ea9: $61
	ld   de, $1512                                   ; $6eaa: $11 $12 $15
	rst  $28                                         ; $6ead: $ef
	rst  $38                                         ; $6eae: $ff
	rst  $38                                         ; $6eaf: $ff
	rst  $10                                         ; $6eb0: $d7
	ld   d, c                                        ; $6eb1: $51
	ld   de, $2413                                   ; $6eb2: $11 $13 $24
	rst  $38                                         ; $6eb5: $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	add  $32                                         ; $6eb8: $c6 $32
	ld   de, $6515                                   ; $6eba: $11 $15 $65
	rst  $38                                         ; $6ebd: $ff
	rst  $38                                         ; $6ebe: $ff
	rst  $38                                         ; $6ebf: $ff
	call nc, $1122                                   ; $6ec0: $d4 $22 $11
	jr   jr_0c9_6e4b                                 ; $6ec3: $18 $86

	rst  JumpTable                                         ; $6ec5: $df
	rst  $38                                         ; $6ec6: $ff
	rst  $38                                         ; $6ec7: $ff
	jp   $1112                                       ; $6ec8: $c3 $12 $11


	ld   a, [de]                                     ; $6ecb: $1a
	xor  b                                           ; $6ecc: $a8
	rst  $28                                         ; $6ecd: $ef
	rst  $38                                         ; $6ece: $ff
	rst  JumpTable                                         ; $6ecf: $df
	jp   nc, $1111                                   ; $6ed0: $d2 $11 $11

	dec  de                                          ; $6ed3: $1b
	cp   d                                           ; $6ed4: $ba
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	db   $ed                                         ; $6ed7: $ed
	or   d                                           ; $6ed8: $b2
	ld   de, $1c11                                   ; $6ed9: $11 $11 $1c
	jp   z, $ffff                                    ; $6edc: $ca $ff $ff

	db   $dd                                         ; $6edf: $dd
	and  c                                           ; $6ee0: $a1
	ld   de, $4e11                                   ; $6ee1: $11 $11 $4e
	cp   h                                           ; $6ee4: $bc
	rst  $38                                         ; $6ee5: $ff
	rst  $38                                         ; $6ee6: $ff
	call $1171                                       ; $6ee7: $cd $71 $11
	ld   de, $cf9d                                   ; $6eea: $11 $9d $cf
	rst  $38                                         ; $6eed: $ff
	rst  $38                                         ; $6eee: $ff
	cp   d                                           ; $6eef: $ba
	ld   hl, $1211                                   ; $6ef0: $21 $11 $12
	db   $ec                                         ; $6ef3: $ec
	rst  $28                                         ; $6ef4: $ef
	rst  $38                                         ; $6ef5: $ff
	db   $fc                                         ; $6ef6: $fc
	or   a                                           ; $6ef7: $b7
	ld   de, $1b11                                   ; $6ef8: $11 $11 $1b
	db   $fd                                         ; $6efb: $fd
	rst  $38                                         ; $6efc: $ff
	db   $fd                                         ; $6efd: $fd
	jp   z, $11a1                                    ; $6efe: $ca $a1 $11

	ld   de, $df8f                                   ; $6f01: $11 $8f $df
	rst  $38                                         ; $6f04: $ff
	db   $dd                                         ; $6f05: $dd
	xor  c                                           ; $6f06: $a9
	ld   sp, $1511                                   ; $6f07: $31 $11 $15
	cp   $ff                                         ; $6f0a: $fe $ff
	cp   $fc                                         ; $6f0c: $fe $fc
	add  h                                           ; $6f0e: $84
	ld   de, $6f11                                   ; $6f0f: $11 $11 $6f
	rst  $38                                         ; $6f12: $ff
	rst  $38                                         ; $6f13: $ff
	call $01a6                                       ; $6f14: $cd $a6 $01
	ld   de, $ff19                                   ; $6f17: $11 $19 $ff
	rst  $38                                         ; $6f1a: $ff
	db   $fc                                         ; $6f1b: $fc
	reti                                             ; $6f1c: $d9


	ld   h, c                                        ; $6f1d: $61
	ld   de, $bf11                                   ; $6f1e: $11 $11 $bf
	rst  $38                                         ; $6f21: $ff
	cp   $cc                                         ; $6f22: $fe $cc
	sub  l                                           ; $6f24: $95
	ld   de, $2d11                                   ; $6f25: $11 $11 $2d
	rst  $38                                         ; $6f28: $ff
	rst  $38                                         ; $6f29: $ff
	db   $ec                                         ; $6f2a: $ec
	ret                                              ; $6f2b: $c9


	ld   b, c                                        ; $6f2c: $41
	ld   de, $df12                                   ; $6f2d: $11 $12 $df
	rst  $38                                         ; $6f30: $ff
	cp   $cb                                         ; $6f31: $fe $cb
	sub  [hl]                                        ; $6f33: $96
	ld   de, $1b11                                   ; $6f34: $11 $11 $1b
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	ei                                               ; $6f39: $fb
	ret                                              ; $6f3a: $c9


	ld   [hl], c                                     ; $6f3b: $71
	ld   de, $9f11                                   ; $6f3c: $11 $11 $9f
	rst  $38                                         ; $6f3f: $ff
	rst  $38                                         ; $6f40: $ff
	call c, Call_0c9_41a8                            ; $6f41: $dc $a8 $41
	ld   de, $ef12                                   ; $6f44: $11 $12 $ef
	rst  $38                                         ; $6f47: $ff
	cp   $ce                                         ; $6f48: $fe $ce
	sbc  b                                           ; $6f4a: $98
	ld   de, $1411                                   ; $6f4b: $11 $11 $14
	rst  $38                                         ; $6f4e: $ff
	rst  $38                                         ; $6f4f: $ff
	db   $fd                                         ; $6f50: $fd
	call $1198                                       ; $6f51: $cd $98 $11
	ld   de, $ff15                                   ; $6f54: $11 $15 $ff
	rst  $38                                         ; $6f57: $ff
	db   $fc                                         ; $6f58: $fc
	db   $dd                                         ; $6f59: $dd
	sub  a                                           ; $6f5a: $97
	ld   de, $1411                                   ; $6f5b: $11 $11 $14
	rst  $38                                         ; $6f5e: $ff
	rst  $38                                         ; $6f5f: $ff
	cp   $dd                                         ; $6f60: $fe $dd
	cp   c                                           ; $6f62: $b9
	ld   de, $1111                                   ; $6f63: $11 $11 $11
	rst  JumpTable                                         ; $6f66: $df
	rst  $38                                         ; $6f67: $ff
	rst  $38                                         ; $6f68: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f69: $cf
	xor  e                                           ; $6f6a: $ab
	ld   sp, $1111                                   ; $6f6b: $31 $11 $11
	adc  a                                           ; $6f6e: $8f
	rst  $38                                         ; $6f6f: $ff
	rst  $38                                         ; $6f70: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f71: $cf
	cp   e                                           ; $6f72: $bb
	ld   [hl], c                                     ; $6f73: $71
	ld   de, $1b11                                   ; $6f74: $11 $11 $1b
	rst  $38                                         ; $6f77: $ff
	rst  $38                                         ; $6f78: $ff
	db   $fd                                         ; $6f79: $fd
	reti                                             ; $6f7a: $d9


	or   e                                           ; $6f7b: $b3
	ld   de, $1211                                   ; $6f7c: $11 $11 $12
	rst  JumpTable                                         ; $6f7f: $df
	rst  $38                                         ; $6f80: $ff
	rst  $38                                         ; $6f81: $ff
	db   $ec                                         ; $6f82: $ec
	xor  d                                           ; $6f83: $aa
	ld   sp, $1111                                   ; $6f84: $31 $11 $11
	dec  l                                           ; $6f87: $2d
	rst  $38                                         ; $6f88: $ff
	rst  $38                                         ; $6f89: $ff
	db   $fd                                         ; $6f8a: $fd
	db   $db                                         ; $6f8b: $db
	or   h                                           ; $6f8c: $b4
	ld   de, $1111                                   ; $6f8d: $11 $11 $11
	sbc  a                                           ; $6f90: $9f
	rst  $38                                         ; $6f91: $ff
	rst  $38                                         ; $6f92: $ff
	db   $fc                                         ; $6f93: $fc
	cp   d                                           ; $6f94: $ba
	ld   [hl], d                                     ; $6f95: $72
	ld   de, $1211                                   ; $6f96: $11 $11 $12
	adc  $ef                                         ; $6f99: $ce $ef
	rst  $38                                         ; $6f9b: $ff
	db   $dd                                         ; $6f9c: $dd
	cp   e                                           ; $6f9d: $bb
	ld   h, c                                        ; $6f9e: $61
	ld   de, $1101                                   ; $6f9f: $11 $01 $11
	xor  [hl]                                        ; $6fa2: $ae
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	db   $dd                                         ; $6fa5: $dd
	cp   e                                           ; $6fa6: $bb
	add  d                                           ; $6fa7: $82
	ld   hl, $1121                                   ; $6fa8: $21 $21 $11
	ld   e, h                                        ; $6fab: $5c
	rst  JumpTable                                         ; $6fac: $df
	rst  $38                                         ; $6fad: $ff
	cp   $da                                         ; $6fae: $fe $da
	and  l                                           ; $6fb0: $a5
	ld   [hl+], a                                    ; $6fb1: $22
	ld   hl, $1911                                   ; $6fb2: $21 $11 $19
	db   $dd                                         ; $6fb5: $dd
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	db   $ec                                         ; $6fb8: $ec
	xor  b                                           ; $6fb9: $a8
	ld   [hl-], a                                    ; $6fba: $32
	inc  hl                                          ; $6fbb: $23
	ld   de, $9c11                                   ; $6fbc: $11 $11 $9c
	db   $dd                                         ; $6fbf: $dd
	rst  $38                                         ; $6fc0: $ff
	xor  $c9                                         ; $6fc1: $ee $c9
	and  [hl]                                        ; $6fc3: $a6
	ld   [hl-], a                                    ; $6fc4: $32
	ld   [hl-], a                                    ; $6fc5: $32
	ld   bc, $bc16                                   ; $6fc6: $01 $16 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc9: $cf
	rst  $38                                         ; $6fca: $ff
	db   $fd                                         ; $6fcb: $fd
	xor  c                                           ; $6fcc: $a9
	ld   h, h                                        ; $6fcd: $64
	inc  sp                                          ; $6fce: $33
	ld   hl, $3801                                   ; $6fcf: $21 $01 $38
	cp   e                                           ; $6fd2: $bb
	rst  $28                                         ; $6fd3: $ef
	rst  $38                                         ; $6fd4: $ff
	db   $ec                                         ; $6fd5: $ec
	cp   c                                           ; $6fd6: $b9
	ld   d, e                                        ; $6fd7: $53
	inc  sp                                          ; $6fd8: $33
	ld   hl, $4b11                                   ; $6fd9: $21 $11 $4b
	call z, $fedf                                    ; $6fdc: $cc $df $fe
	jp   z, Jump_0c9_6598                            ; $6fdf: $ca $98 $65

	ld   d, l                                        ; $6fe2: $55
	ld   [hl-], a                                    ; $6fe3: $32
	ld   de, $ab39                                   ; $6fe4: $11 $39 $ab
	sbc  $ff                                         ; $6fe7: $de $ff
	db   $fc                                         ; $6fe9: $fc
	xor  d                                           ; $6fea: $aa
	ld   h, l                                        ; $6feb: $65
	ld   b, h                                        ; $6fec: $44
	ld   [hl-], a                                    ; $6fed: $32
	ld   de, $aa16                                   ; $6fee: $11 $16 $aa
	adc  $ff                                         ; $6ff1: $ce $ff
	db   $fc                                         ; $6ff3: $fc
	xor  d                                           ; $6ff4: $aa
	ld   [hl], l                                     ; $6ff5: $75
	ld   b, h                                        ; $6ff6: $44
	ld   [hl-], a                                    ; $6ff7: $32
	ld   hl, $9b13                                   ; $6ff8: $21 $13 $9b
	xor  e                                           ; $6ffb: $ab
	rst  $38                                         ; $6ffc: $ff
	cp   $b9                                         ; $6ffd: $fe $b9
	sbc  b                                           ; $6fff: $98
	ld   h, l                                        ; $7000: $65
	ld   d, h                                        ; $7001: $54
	ld   sp, $3811                                   ; $7002: $31 $11 $38
	sbc  d                                           ; $7005: $9a
	rst  JumpTable                                         ; $7006: $df
	rst  $38                                         ; $7007: $ff
	xor  $ba                                         ; $7008: $ee $ba
	halt                                             ; $700a: $76
	ld   d, h                                        ; $700b: $54
	ld   [hl-], a                                    ; $700c: $32
	ld   de, $9b14                                   ; $700d: $11 $14 $9b
	cp   h                                           ; $7010: $bc
	rst  $38                                         ; $7011: $ff
	cp   $da                                         ; $7012: $fe $da
	sbc  b                                           ; $7014: $98
	ld   h, l                                        ; $7015: $65
	ld   d, e                                        ; $7016: $53
	ld   [hl-], a                                    ; $7017: $32
	ld   de, $aa27                                   ; $7018: $11 $27 $aa
	cp   l                                           ; $701b: $bd
	rst  $38                                         ; $701c: $ff
	db   $ec                                         ; $701d: $ec
	cp   d                                           ; $701e: $ba
	ld   [hl], a                                     ; $701f: $77
	ld   h, [hl]                                     ; $7020: $66
	ld   d, h                                        ; $7021: $54
	ld   [hl-], a                                    ; $7022: $32
	ld   de, $aa58                                   ; $7023: $11 $58 $aa
	cp   [hl]                                        ; $7026: $be
	db   $fd                                         ; $7027: $fd
	db   $db                                         ; $7028: $db
	xor  c                                           ; $7029: $a9
	add  a                                           ; $702a: $87
	halt                                             ; $702b: $76
	ld   d, h                                        ; $702c: $54
	ld   b, e                                        ; $702d: $43
	ld   [de], a                                     ; $702e: $12
	ld   l, c                                        ; $702f: $69
	sbc  c                                           ; $7030: $99
	xor  l                                           ; $7031: $ad
	db   $ed                                         ; $7032: $ed
	res  5, b                                        ; $7033: $cb $a8
	add  a                                           ; $7035: $87
	ld   [hl], a                                     ; $7036: $77
	ld   d, l                                        ; $7037: $55
	ld   b, e                                        ; $7038: $43
	ld   [hl+], a                                    ; $7039: $22
	ld   e, b                                        ; $703a: $58
	xor  c                                           ; $703b: $a9
	xor  h                                           ; $703c: $ac
	db   $ed                                         ; $703d: $ed
	res  7, c                                        ; $703e: $cb $b9
	add  a                                           ; $7040: $87
	add  a                                           ; $7041: $87
	ld   h, l                                        ; $7042: $65
	ld   d, h                                        ; $7043: $54
	ld   [hl+], a                                    ; $7044: $22
	scf                                              ; $7045: $37
	sbc  c                                           ; $7046: $99
	sbc  d                                           ; $7047: $9a
	call z, $bacb                                    ; $7048: $cc $cb $ba
	adc  c                                           ; $704b: $89
	adc  c                                           ; $704c: $89
	ld   [hl], a                                     ; $704d: $77
	ld   h, l                                        ; $704e: $65
	ld   b, e                                        ; $704f: $43
	inc  h                                           ; $7050: $24
	ld   a, b                                        ; $7051: $78
	sbc  b                                           ; $7052: $98
	xor  h                                           ; $7053: $ac
	call z, $a9bb                                    ; $7054: $cc $bb $a9
	sbc  b                                           ; $7057: $98
	add  a                                           ; $7058: $87
	halt                                             ; $7059: $76
	ld   h, l                                        ; $705a: $65
	ld   [hl-], a                                    ; $705b: $32
	scf                                              ; $705c: $37
	sbc  b                                           ; $705d: $98
	adc  d                                           ; $705e: $8a
	cp   h                                           ; $705f: $bc
	res  7, c                                        ; $7060: $cb $b9
	sbc  b                                           ; $7062: $98
	sbc  b                                           ; $7063: $98
	adc  b                                           ; $7064: $88
	halt                                             ; $7065: $76
	ld   d, h                                        ; $7066: $54
	inc  sp                                          ; $7067: $33
	ld   l, b                                        ; $7068: $68
	sbc  b                                           ; $7069: $98
	adc  d                                           ; $706a: $8a
	call z, $a9bb                                    ; $706b: $cc $bb $a9
	add  a                                           ; $706e: $87
	add  a                                           ; $706f: $87
	sbc  b                                           ; $7070: $98
	ld   [hl], a                                     ; $7071: $77
	ld   h, l                                        ; $7072: $65
	ld   b, l                                        ; $7073: $45
	ld   a, c                                        ; $7074: $79
	add  a                                           ; $7075: $87
	ld   a, c                                        ; $7076: $79
	xor  d                                           ; $7077: $aa
	xor  d                                           ; $7078: $aa
	sbc  c                                           ; $7079: $99
	sbc  c                                           ; $707a: $99
	adc  c                                           ; $707b: $89
	xor  b                                           ; $707c: $a8
	add  a                                           ; $707d: $87
	ld   h, l                                        ; $707e: $65
	ld   b, h                                        ; $707f: $44
	ld   l, b                                        ; $7080: $68
	add  a                                           ; $7081: $87
	ld   a, b                                        ; $7082: $78
	xor  e                                           ; $7083: $ab
	xor  d                                           ; $7084: $aa
	xor  c                                           ; $7085: $a9
	sbc  c                                           ; $7086: $99
	sbc  c                                           ; $7087: $99
	sbc  c                                           ; $7088: $99
	sub  a                                           ; $7089: $97
	halt                                             ; $708a: $76
	ld   d, l                                        ; $708b: $55
	ld   h, a                                        ; $708c: $67
	add  a                                           ; $708d: $87
	ld   l, b                                        ; $708e: $68
	sbc  d                                           ; $708f: $9a
	xor  c                                           ; $7090: $a9
	sbc  c                                           ; $7091: $99
	sbc  b                                           ; $7092: $98
	adc  c                                           ; $7093: $89
	sbc  c                                           ; $7094: $99
	sbc  b                                           ; $7095: $98
	ld   [hl], a                                     ; $7096: $77
	ld   h, l                                        ; $7097: $65
	ld   d, [hl]                                     ; $7098: $56
	ld   a, b                                        ; $7099: $78
	halt                                             ; $709a: $76
	ld   a, c                                        ; $709b: $79
	xor  d                                           ; $709c: $aa
	sbc  b                                           ; $709d: $98
	sbc  d                                           ; $709e: $9a
	adc  b                                           ; $709f: $88
	adc  c                                           ; $70a0: $89
	xor  d                                           ; $70a1: $aa
	sbc  b                                           ; $70a2: $98
	ld   [hl], a                                     ; $70a3: $77
	ld   h, l                                        ; $70a4: $65
	ld   h, a                                        ; $70a5: $67
	sub  a                                           ; $70a6: $97
	ld   h, a                                        ; $70a7: $67
	adc  c                                           ; $70a8: $89
	xor  c                                           ; $70a9: $a9
	adc  b                                           ; $70aa: $88
	sbc  c                                           ; $70ab: $99
	adc  c                                           ; $70ac: $89
	sbc  c                                           ; $70ad: $99
	sbc  b                                           ; $70ae: $98
	add  a                                           ; $70af: $87
	halt                                             ; $70b0: $76
	ld   h, [hl]                                     ; $70b1: $66
	ld   a, b                                        ; $70b2: $78
	halt                                             ; $70b3: $76
	ld   l, b                                        ; $70b4: $68
	sbc  c                                           ; $70b5: $99
	adc  b                                           ; $70b6: $88
	adc  d                                           ; $70b7: $8a
	sbc  c                                           ; $70b8: $99
	sbc  c                                           ; $70b9: $99
	sbc  d                                           ; $70ba: $9a
	sbc  c                                           ; $70bb: $99
	add  a                                           ; $70bc: $87
	halt                                             ; $70bd: $76
	ld   h, [hl]                                     ; $70be: $66
	adc  b                                           ; $70bf: $88
	halt                                             ; $70c0: $76
	ld   a, c                                        ; $70c1: $79
	xor  c                                           ; $70c2: $a9
	adc  b                                           ; $70c3: $88
	adc  c                                           ; $70c4: $89
	adc  b                                           ; $70c5: $88
	adc  b                                           ; $70c6: $88
	sbc  c                                           ; $70c7: $99
	sbc  c                                           ; $70c8: $99
	adc  b                                           ; $70c9: $88
	halt                                             ; $70ca: $76
	ld   h, a                                        ; $70cb: $67
	adc  b                                           ; $70cc: $88
	halt                                             ; $70cd: $76
	ld   a, b                                        ; $70ce: $78
	sbc  b                                           ; $70cf: $98
	adc  b                                           ; $70d0: $88
	sbc  c                                           ; $70d1: $99
	adc  b                                           ; $70d2: $88
	sbc  c                                           ; $70d3: $99
	sbc  c                                           ; $70d4: $99
	sbc  b                                           ; $70d5: $98
	sbc  b                                           ; $70d6: $98
	ld   [hl], a                                     ; $70d7: $77
	ld   h, a                                        ; $70d8: $67
	adc  b                                           ; $70d9: $88
	ld   h, [hl]                                     ; $70da: $66
	ld   a, b                                        ; $70db: $78
	sbc  c                                           ; $70dc: $99
	ld   a, b                                        ; $70dd: $78
	adc  c                                           ; $70de: $89
	sbc  b                                           ; $70df: $98
	adc  c                                           ; $70e0: $89
	xor  c                                           ; $70e1: $a9
	sbc  c                                           ; $70e2: $99
	sbc  b                                           ; $70e3: $98
	add  a                                           ; $70e4: $87
	ld   h, a                                        ; $70e5: $67
	adc  b                                           ; $70e6: $88
	halt                                             ; $70e7: $76
	ld   l, b                                        ; $70e8: $68
	adc  b                                           ; $70e9: $88
	ld   [hl], a                                     ; $70ea: $77
	adc  b                                           ; $70eb: $88
	sbc  b                                           ; $70ec: $98
	sbc  c                                           ; $70ed: $99
	sbc  d                                           ; $70ee: $9a
	sbc  c                                           ; $70ef: $99
	adc  c                                           ; $70f0: $89
	halt                                             ; $70f1: $76
	ld   h, [hl]                                     ; $70f2: $66
	ld   a, b                                        ; $70f3: $78
	halt                                             ; $70f4: $76
	ld   l, b                                        ; $70f5: $68
	sbc  c                                           ; $70f6: $99
	add  a                                           ; $70f7: $87
	adc  c                                           ; $70f8: $89
	sbc  b                                           ; $70f9: $98
	adc  b                                           ; $70fa: $88
	sbc  d                                           ; $70fb: $9a
	sbc  c                                           ; $70fc: $99
	adc  b                                           ; $70fd: $88
	halt                                             ; $70fe: $76
	ld   d, l                                        ; $70ff: $55
	ld   a, b                                        ; $7100: $78
	halt                                             ; $7101: $76
	ld   h, a                                        ; $7102: $67
	xor  c                                           ; $7103: $a9
	adc  b                                           ; $7104: $88
	adc  c                                           ; $7105: $89
	sbc  b                                           ; $7106: $98
	sbc  c                                           ; $7107: $99
	xor  d                                           ; $7108: $aa
	sbc  c                                           ; $7109: $99
	sbc  b                                           ; $710a: $98
	halt                                             ; $710b: $76
	ld   d, l                                        ; $710c: $55
	ld   h, a                                        ; $710d: $67
	halt                                             ; $710e: $76
	ld   l, b                                        ; $710f: $68
	xor  d                                           ; $7110: $aa
	sbc  b                                           ; $7111: $98
	sbc  c                                           ; $7112: $99
	xor  b                                           ; $7113: $a8
	adc  b                                           ; $7114: $88
	sbc  d                                           ; $7115: $9a
	xor  c                                           ; $7116: $a9
	adc  b                                           ; $7117: $88
	halt                                             ; $7118: $76
	ld   d, h                                        ; $7119: $54
	ld   d, a                                        ; $711a: $57
	ld   [hl], a                                     ; $711b: $77
	ld   l, b                                        ; $711c: $68
	xor  e                                           ; $711d: $ab
	xor  b                                           ; $711e: $a8
	sbc  b                                           ; $711f: $98
	sbc  c                                           ; $7120: $99
	adc  b                                           ; $7121: $88
	adc  c                                           ; $7122: $89
	xor  d                                           ; $7123: $aa
	adc  b                                           ; $7124: $88
	halt                                             ; $7125: $76
	ld   b, h                                        ; $7126: $44
	ld   d, [hl]                                     ; $7127: $56
	ld   [hl], a                                     ; $7128: $77
	ld   a, c                                        ; $7129: $79
	xor  e                                           ; $712a: $ab
	cp   c                                           ; $712b: $b9
	sbc  c                                           ; $712c: $99
	adc  b                                           ; $712d: $88
	sbc  b                                           ; $712e: $98
	sbc  d                                           ; $712f: $9a
	xor  c                                           ; $7130: $a9
	adc  b                                           ; $7131: $88
	ld   [hl], l                                     ; $7132: $75
	ld   b, e                                        ; $7133: $43
	ld   d, a                                        ; $7134: $57
	add  a                                           ; $7135: $87
	ld   a, b                                        ; $7136: $78
	cp   e                                           ; $7137: $bb
	cp   c                                           ; $7138: $b9
	adc  c                                           ; $7139: $89
	adc  c                                           ; $713a: $89
	adc  b                                           ; $713b: $88
	adc  d                                           ; $713c: $8a
	xor  d                                           ; $713d: $aa
	add  a                                           ; $713e: $87
	ld   d, h                                        ; $713f: $54
	inc  sp                                          ; $7140: $33
	ld   d, a                                        ; $7141: $57
	add  a                                           ; $7142: $87
	adc  d                                           ; $7143: $8a
	cp   h                                           ; $7144: $bc
	cp   c                                           ; $7145: $b9
	adc  b                                           ; $7146: $88
	sbc  b                                           ; $7147: $98
	adc  b                                           ; $7148: $88
	sbc  d                                           ; $7149: $9a
	xor  c                                           ; $714a: $a9
	add  a                                           ; $714b: $87
	ld   d, h                                        ; $714c: $54
	inc  sp                                          ; $714d: $33
	ld   h, a                                        ; $714e: $67
	sbc  b                                           ; $714f: $98
	adc  d                                           ; $7150: $8a
	xor  h                                           ; $7151: $ac
	xor  b                                           ; $7152: $a8
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	xor  e                                           ; $7156: $ab
	cp   d                                           ; $7157: $ba
	sub  a                                           ; $7158: $97
	ld   d, e                                        ; $7159: $53
	inc  hl                                          ; $715a: $23
	ld   e, b                                        ; $715b: $58
	sbc  b                                           ; $715c: $98
	sbc  d                                           ; $715d: $9a
	cp   e                                           ; $715e: $bb
	xor  b                                           ; $715f: $a8
	ld   a, b                                        ; $7160: $78
	adc  c                                           ; $7161: $89
	adc  c                                           ; $7162: $89
	sbc  d                                           ; $7163: $9a
	cp   c                                           ; $7164: $b9
	sub  a                                           ; $7165: $97
	ld   d, e                                        ; $7166: $53
	inc  de                                          ; $7167: $13
	ld   l, c                                        ; $7168: $69
	sbc  b                                           ; $7169: $98
	sbc  d                                           ; $716a: $9a
	cp   e                                           ; $716b: $bb
	sbc  b                                           ; $716c: $98
	ld   a, b                                        ; $716d: $78
	adc  c                                           ; $716e: $89
	sbc  c                                           ; $716f: $99
	sbc  e                                           ; $7170: $9b
	xor  d                                           ; $7171: $aa
	add  a                                           ; $7172: $87
	ld   d, e                                        ; $7173: $53
	ld   de, $9948                                   ; $7174: $11 $48 $99
	sbc  c                                           ; $7177: $99
	cp   h                                           ; $7178: $bc
	xor  b                                           ; $7179: $a8
	ld   [hl], a                                     ; $717a: $77
	adc  c                                           ; $717b: $89
	sbc  c                                           ; $717c: $99
	sbc  d                                           ; $717d: $9a
	cp   e                                           ; $717e: $bb
	xor  c                                           ; $717f: $a9
	ld   [hl], h                                     ; $7180: $74
	ld   hl, $9a26                                   ; $7181: $21 $26 $9a
	sbc  b                                           ; $7184: $98
	xor  d                                           ; $7185: $aa
	cp   d                                           ; $7186: $ba
	halt                                             ; $7187: $76
	ld   a, c                                        ; $7188: $79
	xor  d                                           ; $7189: $aa
	adc  c                                           ; $718a: $89
	xor  e                                           ; $718b: $ab
	cp   c                                           ; $718c: $b9
	ld   [hl], h                                     ; $718d: $74
	ld   hl, $9a15                                   ; $718e: $21 $15 $9a
	sbc  c                                           ; $7191: $99
	sbc  e                                           ; $7192: $9b
	jp   z, Jump_0c9_7886                            ; $7193: $ca $86 $78

	sbc  c                                           ; $7196: $99
	sbc  c                                           ; $7197: $99
	xor  e                                           ; $7198: $ab
	cp   e                                           ; $7199: $bb
	add  l                                           ; $719a: $85
	ld   sp, $6a13                                   ; $719b: $31 $13 $6a
	xor  d                                           ; $719e: $aa
	sbc  d                                           ; $719f: $9a
	res  2, a                                        ; $71a0: $cb $97
	ld   h, a                                        ; $71a2: $67
	sbc  d                                           ; $71a3: $9a
	xor  b                                           ; $71a4: $a8
	sbc  d                                           ; $71a5: $9a
	cp   e                                           ; $71a6: $bb
	sbc  b                                           ; $71a7: $98
	ld   d, e                                        ; $71a8: $53
	ld   bc, $aa48                                   ; $71a9: $01 $48 $aa
	sbc  c                                           ; $71ac: $99
	xor  h                                           ; $71ad: $ac
	xor  b                                           ; $71ae: $a8
	halt                                             ; $71af: $76
	adc  c                                           ; $71b0: $89
	xor  c                                           ; $71b1: $a9
	sbc  c                                           ; $71b2: $99
	xor  h                                           ; $71b3: $ac
	xor  c                                           ; $71b4: $a9
	ld   [hl], h                                     ; $71b5: $74
	ld   hl, $9a15                                   ; $71b6: $21 $15 $9a
	xor  c                                           ; $71b9: $a9
	adc  d                                           ; $71ba: $8a
	res  2, [hl]                                     ; $71bb: $cb $96
	ld   l, b                                        ; $71bd: $68
	xor  d                                           ; $71be: $aa
	sbc  b                                           ; $71bf: $98
	xor  e                                           ; $71c0: $ab
	res  2, a                                        ; $71c1: $cb $97
	ld   b, c                                        ; $71c3: $41
	ld   de, $aa58                                   ; $71c4: $11 $58 $aa
	xor  c                                           ; $71c7: $a9
	cp   h                                           ; $71c8: $bc
	xor  b                                           ; $71c9: $a8
	ld   h, [hl]                                     ; $71ca: $66
	adc  d                                           ; $71cb: $8a
	sbc  b                                           ; $71cc: $98
	sbc  d                                           ; $71cd: $9a
	cp   e                                           ; $71ce: $bb
	xor  b                                           ; $71cf: $a8
	ld   h, e                                        ; $71d0: $63
	ld   de, $9a26                                   ; $71d1: $11 $26 $9a
	xor  c                                           ; $71d4: $a9
	sbc  e                                           ; $71d5: $9b
	jp   z, Jump_0c9_6876                            ; $71d6: $ca $76 $68

	xor  d                                           ; $71d9: $aa
	sbc  b                                           ; $71da: $98
	sbc  e                                           ; $71db: $9b
	jp   z, $3196                                    ; $71dc: $ca $96 $31

	ld   [de], a                                     ; $71df: $12
	ld   l, c                                        ; $71e0: $69
	xor  d                                           ; $71e1: $aa
	xor  d                                           ; $71e2: $aa
	cp   h                                           ; $71e3: $bc
	xor  b                                           ; $71e4: $a8
	ld   h, a                                        ; $71e5: $67
	sbc  d                                           ; $71e6: $9a
	xor  c                                           ; $71e7: $a9
	adc  c                                           ; $71e8: $89
	cp   e                                           ; $71e9: $bb
	xor  b                                           ; $71ea: $a8
	ld   h, e                                        ; $71eb: $63
	ld   de, $aa37                                   ; $71ec: $11 $37 $aa
	sbc  c                                           ; $71ef: $99
	sbc  h                                           ; $71f0: $9c
	cp   d                                           ; $71f1: $ba
	halt                                             ; $71f2: $76
	ld   a, c                                        ; $71f3: $79
	xor  d                                           ; $71f4: $aa
	adc  b                                           ; $71f5: $88
	xor  d                                           ; $71f6: $aa
	cp   d                                           ; $71f7: $ba
	ld   [hl], l                                     ; $71f8: $75
	ld   hl, $8b14                                   ; $71f9: $21 $14 $8b
	xor  d                                           ; $71fc: $aa
	sbc  d                                           ; $71fd: $9a
	cp   d                                           ; $71fe: $ba
	sub  [hl]                                        ; $71ff: $96
	ld   l, b                                        ; $7200: $68
	xor  d                                           ; $7201: $aa
	sbc  c                                           ; $7202: $99
	sbc  d                                           ; $7203: $9a
	cp   e                                           ; $7204: $bb
	sub  a                                           ; $7205: $97
	ld   b, d                                        ; $7206: $42
	ld   [de], a                                     ; $7207: $12
	ld   e, b                                        ; $7208: $58
	xor  d                                           ; $7209: $aa
	sbc  d                                           ; $720a: $9a
	cp   h                                           ; $720b: $bc
	xor  b                                           ; $720c: $a8
	ld   [hl], a                                     ; $720d: $77
	sbc  d                                           ; $720e: $9a
	sbc  b                                           ; $720f: $98
	adc  b                                           ; $7210: $88
	cp   h                                           ; $7211: $bc
	xor  c                                           ; $7212: $a9
	ld   h, e                                        ; $7213: $63
	ld   de, $9935                                   ; $7214: $11 $35 $99
	sbc  d                                           ; $7217: $9a
	xor  h                                           ; $7218: $ac
	jp   z, $7986                                    ; $7219: $ca $86 $79

	xor  d                                           ; $721c: $aa
	sbc  c                                           ; $721d: $99
	sbc  d                                           ; $721e: $9a
	cp   c                                           ; $721f: $b9
	add  l                                           ; $7220: $85
	ld   sp, $7924                                   ; $7221: $31 $24 $79
	xor  d                                           ; $7224: $aa
	sbc  e                                           ; $7225: $9b
	cp   e                                           ; $7226: $bb
	sub  a                                           ; $7227: $97
	ld   a, b                                        ; $7228: $78
	sbc  c                                           ; $7229: $99
	sbc  c                                           ; $722a: $99
	sbc  c                                           ; $722b: $99
	cp   d                                           ; $722c: $ba
	add  a                                           ; $722d: $87
	ld   b, d                                        ; $722e: $42
	inc  de                                          ; $722f: $13
	ld   l, b                                        ; $7230: $68
	xor  c                                           ; $7231: $a9
	sbc  c                                           ; $7232: $99
	call z, Call_0c9_7799                            ; $7233: $cc $99 $77
	sbc  c                                           ; $7236: $99
	xor  c                                           ; $7237: $a9
	sbc  c                                           ; $7238: $99
	cp   e                                           ; $7239: $bb
	and  a                                           ; $723a: $a7
	ld   d, e                                        ; $723b: $53
	ld   [hl+], a                                    ; $723c: $22
	ld   b, a                                        ; $723d: $47
	adc  c                                           ; $723e: $89
	sbc  c                                           ; $723f: $99
	xor  h                                           ; $7240: $ac
	cp   c                                           ; $7241: $b9
	ld   [hl], a                                     ; $7242: $77
	adc  d                                           ; $7243: $8a
	xor  d                                           ; $7244: $aa
	sbc  b                                           ; $7245: $98
	xor  e                                           ; $7246: $ab
	sbc  c                                           ; $7247: $99
	ld   h, h                                        ; $7248: $64
	ld   [hl-], a                                    ; $7249: $32
	ld   b, [hl]                                     ; $724a: $46
	ld   a, b                                        ; $724b: $78
	adc  d                                           ; $724c: $8a
	sbc  e                                           ; $724d: $9b
	jp   z, $7897                                    ; $724e: $ca $97 $78

	xor  c                                           ; $7251: $a9
	sbc  c                                           ; $7252: $99
	sbc  c                                           ; $7253: $99
	xor  b                                           ; $7254: $a8
	ld   [hl], l                                     ; $7255: $75
	ld   [hl-], a                                    ; $7256: $32
	dec  h                                           ; $7257: $25
	ld   a, b                                        ; $7258: $78
	sbc  c                                           ; $7259: $99
	sbc  d                                           ; $725a: $9a
	jp   z, Jump_0c9_78a7                            ; $725b: $ca $a7 $78

	sbc  d                                           ; $725e: $9a
	xor  c                                           ; $725f: $a9
	sbc  c                                           ; $7260: $99
	xor  d                                           ; $7261: $aa
	add  [hl]                                        ; $7262: $86
	ld   b, e                                        ; $7263: $43
	inc  [hl]                                        ; $7264: $34
	ld   h, a                                        ; $7265: $67
	ld   a, c                                        ; $7266: $79
	sbc  d                                           ; $7267: $9a
	res  5, c                                        ; $7268: $cb $a9
	adc  c                                           ; $726a: $89
	sbc  c                                           ; $726b: $99
	sbc  c                                           ; $726c: $99
	adc  c                                           ; $726d: $89
	sbc  c                                           ; $726e: $99
	add  [hl]                                        ; $726f: $86
	ld   d, e                                        ; $7270: $53
	inc  [hl]                                        ; $7271: $34
	ld   d, a                                        ; $7272: $57
	ld   a, c                                        ; $7273: $79
	sbc  d                                           ; $7274: $9a
	res  7, c                                        ; $7275: $cb $b9
	sbc  c                                           ; $7277: $99
	sbc  c                                           ; $7278: $99
	xor  d                                           ; $7279: $aa
	adc  c                                           ; $727a: $89
	sbc  b                                           ; $727b: $98
	add  [hl]                                        ; $727c: $86
	ld   d, e                                        ; $727d: $53
	inc  [hl]                                        ; $727e: $34
	ld   d, a                                        ; $727f: $57
	ld   a, b                                        ; $7280: $78
	adc  d                                           ; $7281: $8a
	cp   e                                           ; $7282: $bb
	xor  c                                           ; $7283: $a9
	adc  c                                           ; $7284: $89
	sbc  c                                           ; $7285: $99
	sbc  d                                           ; $7286: $9a
	sbc  c                                           ; $7287: $99
	sbc  c                                           ; $7288: $99
	halt                                             ; $7289: $76
	ld   d, h                                        ; $728a: $54
	inc  [hl]                                        ; $728b: $34
	ld   d, [hl]                                     ; $728c: $56
	ld   h, a                                        ; $728d: $67
	adc  d                                           ; $728e: $8a
	cp   h                                           ; $728f: $bc
	cp   d                                           ; $7290: $ba
	sbc  c                                           ; $7291: $99
	xor  c                                           ; $7292: $a9
	sbc  d                                           ; $7293: $9a
	sbc  c                                           ; $7294: $99
	adc  c                                           ; $7295: $89
	halt                                             ; $7296: $76
	ld   d, h                                        ; $7297: $54
	ld   b, l                                        ; $7298: $45
	ld   d, [hl]                                     ; $7299: $56
	ld   h, a                                        ; $729a: $67
	adc  c                                           ; $729b: $89
	cp   e                                           ; $729c: $bb
	cp   d                                           ; $729d: $ba
	xor  d                                           ; $729e: $aa
	xor  d                                           ; $729f: $aa
	xor  d                                           ; $72a0: $aa
	sbc  c                                           ; $72a1: $99
	adc  c                                           ; $72a2: $89
	add  a                                           ; $72a3: $87
	ld   h, l                                        ; $72a4: $65
	ld   b, l                                        ; $72a5: $45
	ld   d, l                                        ; $72a6: $55
	ld   d, l                                        ; $72a7: $55
	ld   l, b                                        ; $72a8: $68
	sbc  e                                           ; $72a9: $9b
	cp   d                                           ; $72aa: $ba
	cp   d                                           ; $72ab: $ba
	xor  d                                           ; $72ac: $aa
	sbc  d                                           ; $72ad: $9a
	sbc  c                                           ; $72ae: $99
	sbc  c                                           ; $72af: $99
	add  a                                           ; $72b0: $87
	ld   h, [hl]                                     ; $72b1: $66
	ld   h, l                                        ; $72b2: $65
	ld   d, l                                        ; $72b3: $55
	ld   d, l                                        ; $72b4: $55
	ld   h, a                                        ; $72b5: $67
	adc  c                                           ; $72b6: $89
	sbc  d                                           ; $72b7: $9a
	cp   e                                           ; $72b8: $bb
	xor  c                                           ; $72b9: $a9
	xor  c                                           ; $72ba: $a9
	sbc  b                                           ; $72bb: $98
	sbc  c                                           ; $72bc: $99
	add  a                                           ; $72bd: $87
	ld   [hl], a                                     ; $72be: $77
	ld   [hl], a                                     ; $72bf: $77
	ld   [hl], a                                     ; $72c0: $77
	halt                                             ; $72c1: $76
	ld   h, a                                        ; $72c2: $67
	ld   [hl], a                                     ; $72c3: $77
	ld   [hl], a                                     ; $72c4: $77
	ld   a, c                                        ; $72c5: $79
	adc  c                                           ; $72c6: $89
	adc  c                                           ; $72c7: $89
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  c                                           ; $72ca: $89
	adc  b                                           ; $72cb: $88
	adc  c                                           ; $72cc: $89
	sbc  b                                           ; $72cd: $98
	sbc  b                                           ; $72ce: $98
	adc  b                                           ; $72cf: $88
	adc  b                                           ; $72d0: $88
	ld   [hl], a                                     ; $72d1: $77
	ld   [hl], a                                     ; $72d2: $77
	adc  c                                           ; $72d3: $89
	add  a                                           ; $72d4: $87
	ld   a, b                                        ; $72d5: $78
	adc  c                                           ; $72d6: $89
	sbc  b                                           ; $72d7: $98
	ld   [hl], a                                     ; $72d8: $77
	adc  c                                           ; $72d9: $89
	sbc  c                                           ; $72da: $99
	ld   [hl], a                                     ; $72db: $77
	ld   a, b                                        ; $72dc: $78
	sbc  c                                           ; $72dd: $99
	add  a                                           ; $72de: $87
	ld   a, b                                        ; $72df: $78
	sbc  c                                           ; $72e0: $99
	sbc  b                                           ; $72e1: $98
	adc  b                                           ; $72e2: $88
	adc  c                                           ; $72e3: $89
	sbc  c                                           ; $72e4: $99
	adc  b                                           ; $72e5: $88
	adc  b                                           ; $72e6: $88
	adc  b                                           ; $72e7: $88
	sbc  c                                           ; $72e8: $99
	add  a                                           ; $72e9: $87
	ld   [hl], a                                     ; $72ea: $77
	ld   a, b                                        ; $72eb: $78
	sbc  c                                           ; $72ec: $99
	ld   [hl], a                                     ; $72ed: $77
	ld   a, b                                        ; $72ee: $78
	sbc  b                                           ; $72ef: $98
	sbc  b                                           ; $72f0: $98
	ld   a, b                                        ; $72f1: $78
	sbc  b                                           ; $72f2: $98
	sbc  b                                           ; $72f3: $98
	adc  b                                           ; $72f4: $88
	adc  c                                           ; $72f5: $89
	sbc  b                                           ; $72f6: $98
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  b                                           ; $72f9: $88
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	sbc  c                                           ; $72fc: $99
	sbc  b                                           ; $72fd: $98
	adc  c                                           ; $72fe: $89
	sbc  c                                           ; $72ff: $99
	adc  b                                           ; $7300: $88
	adc  b                                           ; $7301: $88
	adc  b                                           ; $7302: $88
	adc  b                                           ; $7303: $88
	adc  b                                           ; $7304: $88
	adc  b                                           ; $7305: $88
	adc  b                                           ; $7306: $88
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	adc  b                                           ; $7309: $88
	adc  b                                           ; $730a: $88
	adc  b                                           ; $730b: $88
	adc  b                                           ; $730c: $88
	adc  b                                           ; $730d: $88
	adc  b                                           ; $730e: $88
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	adc  b                                           ; $7312: $88
	adc  b                                           ; $7313: $88
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	adc  b                                           ; $7316: $88
	adc  b                                           ; $7317: $88
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	adc  b                                           ; $731a: $88
	adc  b                                           ; $731b: $88
	adc  b                                           ; $731c: $88
	adc  b                                           ; $731d: $88
	adc  b                                           ; $731e: $88
	adc  b                                           ; $731f: $88
	adc  b                                           ; $7320: $88
	adc  b                                           ; $7321: $88
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	adc  b                                           ; $7325: $88
	adc  b                                           ; $7326: $88
	adc  b                                           ; $7327: $88
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	adc  b                                           ; $732b: $88
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	adc  b                                           ; $732e: $88
	adc  b                                           ; $732f: $88
	adc  b                                           ; $7330: $88
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	adc  b                                           ; $733e: $88
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  b                                           ; $7347: $88
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	adc  b                                           ; $734d: $88
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  b                                           ; $7351: $88
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	adc  b                                           ; $735b: $88
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	adc  b                                           ; $7365: $88
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
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
	adc  b                                           ; $7376: $88
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
	sbc  b                                           ; $7420: $98
	sbc  b                                           ; $7421: $98
	ld   a, b                                        ; $7422: $78
	sbc  e                                           ; $7423: $9b
	xor  c                                           ; $7424: $a9
	add  [hl]                                        ; $7425: $86
	ld   [hl], $ab                                   ; $7426: $36 $ab
	and  [hl]                                        ; $7428: $a6
	ld   h, [hl]                                     ; $7429: $66
	sbc  c                                           ; $742a: $99
	halt                                             ; $742b: $76
	ld   l, c                                        ; $742c: $69
	cp   e                                           ; $742d: $bb
	add  [hl]                                        ; $742e: $86
	ld   a, c                                        ; $742f: $79
	sbc  d                                           ; $7430: $9a
	halt                                             ; $7431: $76
	ld   a, c                                        ; $7432: $79
	sub  [hl]                                        ; $7433: $96
	ld   b, h                                        ; $7434: $44
	adc  c                                           ; $7435: $89
	sbc  b                                           ; $7436: $98
	sbc  d                                           ; $7437: $9a
	xor  e                                           ; $7438: $ab
	xor  b                                           ; $7439: $a8
	ld   [hl], a                                     ; $743a: $77
	ld   [hl], a                                     ; $743b: $77
	halt                                             ; $743c: $76
	ld   [hl], a                                     ; $743d: $77
	ld   h, [hl]                                     ; $743e: $66
	ld   h, a                                        ; $743f: $67
	xor  d                                           ; $7440: $aa
	xor  c                                           ; $7441: $a9
	add  a                                           ; $7442: $87
	ld   [hl], a                                     ; $7443: $77
	ld   a, b                                        ; $7444: $78
	halt                                             ; $7445: $76
	ld   [hl], a                                     ; $7446: $77
	adc  b                                           ; $7447: $88
	ld   [hl], a                                     ; $7448: $77
	ld   a, b                                        ; $7449: $78
	adc  b                                           ; $744a: $88
	add  a                                           ; $744b: $87
	ld   [hl], a                                     ; $744c: $77
	adc  b                                           ; $744d: $88
	ld   [hl], a                                     ; $744e: $77
	ld   a, b                                        ; $744f: $78
	add  a                                           ; $7450: $87
	ld   [hl], a                                     ; $7451: $77
	adc  b                                           ; $7452: $88
	sbc  b                                           ; $7453: $98
	sbc  c                                           ; $7454: $99
	xor  d                                           ; $7455: $aa
	sbc  c                                           ; $7456: $99
	sbc  c                                           ; $7457: $99
	sbc  c                                           ; $7458: $99
	halt                                             ; $7459: $76
	ld   h, [hl]                                     ; $745a: $66
	ld   h, l                                        ; $745b: $65
	ld   b, h                                        ; $745c: $44
	ld   d, [hl]                                     ; $745d: $56
	ld   [hl], a                                     ; $745e: $77
	adc  c                                           ; $745f: $89
	xor  e                                           ; $7460: $ab
	call z, $baba                                    ; $7461: $cc $ba $ba
	xor  c                                           ; $7464: $a9
	sbc  b                                           ; $7465: $98
	adc  b                                           ; $7466: $88
	halt                                             ; $7467: $76
	ld   d, e                                        ; $7468: $53
	ld   [hl+], a                                    ; $7469: $22
	inc  [hl]                                        ; $746a: $34
	ld   h, a                                        ; $746b: $67
	ld   a, c                                        ; $746c: $79
	sbc  h                                           ; $746d: $9c
	db   $dd                                         ; $746e: $dd
	res  5, d                                        ; $746f: $cb $aa
	xor  d                                           ; $7471: $aa
	sbc  b                                           ; $7472: $98
	adc  b                                           ; $7473: $88
	sbc  b                                           ; $7474: $98
	ld   h, l                                        ; $7475: $65
	ld   b, h                                        ; $7476: $44
	ld   sp, $5722                                   ; $7477: $31 $22 $57
	adc  d                                           ; $747a: $8a
	cp   h                                           ; $747b: $bc
	sbc  $dc                                         ; $747c: $de $dc
	cp   d                                           ; $747e: $ba
	cp   e                                           ; $747f: $bb
	xor  d                                           ; $7480: $aa
	adc  b                                           ; $7481: $88
	ld   [hl], a                                     ; $7482: $77
	ld   d, h                                        ; $7483: $54
	ld   hl, $2411                                   ; $7484: $21 $11 $24
	ld   a, c                                        ; $7487: $79
	cp   h                                           ; $7488: $bc
	rst  $38                                         ; $7489: $ff
	db   $ed                                         ; $748a: $ed
	cp   d                                           ; $748b: $ba
	sbc  e                                           ; $748c: $9b
	xor  d                                           ; $748d: $aa
	xor  c                                           ; $748e: $a9
	halt                                             ; $748f: $76
	ld   d, e                                        ; $7490: $53
	ld   sp, $2411                                   ; $7491: $31 $11 $24
	ld   l, c                                        ; $7494: $69
	xor  h                                           ; $7495: $ac
	rst  $28                                         ; $7496: $ef
	cp   $ca                                         ; $7497: $fe $ca
	xor  c                                           ; $7499: $a9
	sbc  c                                           ; $749a: $99
	sbc  b                                           ; $749b: $98
	halt                                             ; $749c: $76
	ld   [hl-], a                                    ; $749d: $32
	ld   de, $3502                                   ; $749e: $11 $02 $35
	sbc  d                                           ; $74a1: $9a
	sbc  $ff                                         ; $74a2: $de $ff
	db   $fd                                         ; $74a4: $fd
	cp   c                                           ; $74a5: $b9
	sbc  c                                           ; $74a6: $99
	sbc  c                                           ; $74a7: $99
	add  [hl]                                        ; $74a8: $86
	ld   d, e                                        ; $74a9: $53
	ld   de, $3511                                   ; $74aa: $11 $11 $35
	ld   a, c                                        ; $74ad: $79
	xor  l                                           ; $74ae: $ad
	rst  $38                                         ; $74af: $ff
	cp   $b9                                         ; $74b0: $fe $b9
	xor  d                                           ; $74b2: $aa
	xor  d                                           ; $74b3: $aa
	sub  a                                           ; $74b4: $97
	ld   h, l                                        ; $74b5: $65
	ld   hl, $2411                                   ; $74b6: $21 $11 $24
	ld   a, b                                        ; $74b9: $78
	sbc  h                                           ; $74ba: $9c
	rst  $38                                         ; $74bb: $ff
	cp   $ca                                         ; $74bc: $fe $ca
	sbc  d                                           ; $74be: $9a
	xor  c                                           ; $74bf: $a9
	adc  b                                           ; $74c0: $88
	ld   h, [hl]                                     ; $74c1: $66
	ld   b, c                                        ; $74c2: $41
	ld   de, $6913                                   ; $74c3: $11 $13 $69
	xor  e                                           ; $74c6: $ab
	rst  $28                                         ; $74c7: $ef
	rst  $38                                         ; $74c8: $ff
	jp   c, $aa99                                    ; $74c9: $da $99 $aa

	sbc  c                                           ; $74cc: $99
	halt                                             ; $74cd: $76
	ld   b, d                                        ; $74ce: $42
	ld   de, $5812                                   ; $74cf: $11 $12 $58
	xor  h                                           ; $74d2: $ac
	rst  JumpTable                                         ; $74d3: $df
	rst  $38                                         ; $74d4: $ff
	db   $eb                                         ; $74d5: $eb
	sbc  b                                           ; $74d6: $98
	sbc  d                                           ; $74d7: $9a
	xor  c                                           ; $74d8: $a9
	halt                                             ; $74d9: $76
	ld   b, e                                        ; $74da: $43
	ld   de, $4711                                   ; $74db: $11 $11 $47
	sbc  h                                           ; $74de: $9c
	rst  $28                                         ; $74df: $ef
	rst  $38                                         ; $74e0: $ff
	ld   [$9b88], a                                  ; $74e1: $ea $88 $9b
	xor  d                                           ; $74e4: $aa
	halt                                             ; $74e5: $76
	ld   b, e                                        ; $74e6: $43
	ld   de, $3611                                   ; $74e7: $11 $11 $36
	cp   h                                           ; $74ea: $bc
	rst  JumpTable                                         ; $74eb: $df
	rst  $38                                         ; $74ec: $ff
	db   $ec                                         ; $74ed: $ec
	sbc  b                                           ; $74ee: $98
	adc  d                                           ; $74ef: $8a
	xor  d                                           ; $74f0: $aa
	add  [hl]                                        ; $74f1: $86
	ld   b, d                                        ; $74f2: $42
	ld   de, $2611                                   ; $74f3: $11 $11 $26
	cp   h                                           ; $74f6: $bc
	rst  $28                                         ; $74f7: $ef
	rst  $38                                         ; $74f8: $ff
	db   $ec                                         ; $74f9: $ec
	sub  a                                           ; $74fa: $97
	adc  c                                           ; $74fb: $89
	xor  d                                           ; $74fc: $aa
	sub  l                                           ; $74fd: $95
	ld   sp, $1111                                   ; $74fe: $31 $11 $11
	ld   h, $bd                                      ; $7501: $26 $bd
	rst  $38                                         ; $7503: $ff
	xor  $dc                                         ; $7504: $ee $dc
	sbc  c                                           ; $7506: $99
	adc  c                                           ; $7507: $89
	sbc  d                                           ; $7508: $9a
	sub  [hl]                                        ; $7509: $96
	ld   d, d                                        ; $750a: $52
	ld   de, $3611                                   ; $750b: $11 $11 $36
	cp   l                                           ; $750e: $bd
	rst  $38                                         ; $750f: $ff
	rst  $38                                         ; $7510: $ff
	db   $db                                         ; $7511: $db
	sbc  b                                           ; $7512: $98
	adc  c                                           ; $7513: $89
	xor  d                                           ; $7514: $aa
	sub  [hl]                                        ; $7515: $96
	ld   sp, $1111                                   ; $7516: $31 $11 $11
	scf                                              ; $7519: $37
	xor  l                                           ; $751a: $ad
	rst  $38                                         ; $751b: $ff
	db   $fd                                         ; $751c: $fd
	res  3, d                                        ; $751d: $cb $9a
	sbc  d                                           ; $751f: $9a
	sbc  c                                           ; $7520: $99
	add  [hl]                                        ; $7521: $86
	ld   b, c                                        ; $7522: $41
	ld   de, $4711                                   ; $7523: $11 $11 $47
	cp   [hl]                                        ; $7526: $be
	rst  $38                                         ; $7527: $ff
	db   $fd                                         ; $7528: $fd
	cp   d                                           ; $7529: $ba
	sbc  c                                           ; $752a: $99
	adc  d                                           ; $752b: $8a
	xor  d                                           ; $752c: $aa
	add  [hl]                                        ; $752d: $86
	ld   b, c                                        ; $752e: $41
	ld   de, $4811                                   ; $752f: $11 $11 $48
	cp   l                                           ; $7532: $bd
	rst  $38                                         ; $7533: $ff
	db   $fd                                         ; $7534: $fd
	res  1, c                                        ; $7535: $cb $89
	xor  d                                           ; $7537: $aa
	xor  d                                           ; $7538: $aa
	ld   [hl], l                                     ; $7539: $75
	ld   sp, $1111                                   ; $753a: $31 $11 $11
	ld   c, c                                        ; $753d: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $753e: $cf
	rst  $38                                         ; $753f: $ff
	db   $fc                                         ; $7540: $fc
	cp   d                                           ; $7541: $ba
	sbc  c                                           ; $7542: $99
	sbc  d                                           ; $7543: $9a
	cp   d                                           ; $7544: $ba
	ld   [hl], l                                     ; $7545: $75
	ld   hl, $1211                                   ; $7546: $21 $11 $12
	ld   e, d                                        ; $7549: $5a
	rst  $28                                         ; $754a: $ef
	rst  $38                                         ; $754b: $ff
	db   $eb                                         ; $754c: $eb
	cp   c                                           ; $754d: $b9
	adc  c                                           ; $754e: $89
	xor  d                                           ; $754f: $aa
	xor  c                                           ; $7550: $a9
	ld   [hl], h                                     ; $7551: $74
	ld   hl, $1311                                   ; $7552: $21 $11 $13
	ld   a, h                                        ; $7555: $7c
	rst  $38                                         ; $7556: $ff
	cp   $cb                                         ; $7557: $fe $cb
	xor  d                                           ; $7559: $aa
	adc  b                                           ; $755a: $88
	xor  d                                           ; $755b: $aa
	cp   c                                           ; $755c: $b9
	ld   h, h                                        ; $755d: $64
	ld   de, $1311                                   ; $755e: $11 $11 $13
	adc  l                                           ; $7561: $8d
	rst  $38                                         ; $7562: $ff
	cp   $bb                                         ; $7563: $fe $bb
	sbc  c                                           ; $7565: $99
	sbc  c                                           ; $7566: $99
	sbc  d                                           ; $7567: $9a
	xor  b                                           ; $7568: $a8
	ld   h, h                                        ; $7569: $64
	ld   sp, $1311                                   ; $756a: $31 $11 $13
	adc  [hl]                                        ; $756d: $8e
	rst  $38                                         ; $756e: $ff
	db   $ed                                         ; $756f: $ed
	jp   z, $99b8                                    ; $7570: $ca $b8 $99

	sbc  e                                           ; $7573: $9b
	xor  b                                           ; $7574: $a8
	ld   d, e                                        ; $7575: $53
	ld   de, $1211                                   ; $7576: $11 $11 $12
	adc  l                                           ; $7579: $8d
	rst  $38                                         ; $757a: $ff
	db   $fc                                         ; $757b: $fc
	cp   d                                           ; $757c: $ba
	cp   d                                           ; $757d: $ba
	sbc  c                                           ; $757e: $99
	sbc  d                                           ; $757f: $9a
	xor  c                                           ; $7580: $a9
	ld   h, e                                        ; $7581: $63
	ld   de, $1311                                   ; $7582: $11 $11 $13
	adc  l                                           ; $7585: $8d
	rst  $38                                         ; $7586: $ff
	db   $fc                                         ; $7587: $fc
	cp   d                                           ; $7588: $ba
	xor  c                                           ; $7589: $a9
	sbc  c                                           ; $758a: $99
	sbc  e                                           ; $758b: $9b
	xor  c                                           ; $758c: $a9
	ld   h, e                                        ; $758d: $63
	ld   de, $1311                                   ; $758e: $11 $11 $13
	sbc  l                                           ; $7591: $9d
	rst  $38                                         ; $7592: $ff
	db   $fc                                         ; $7593: $fc
	cp   d                                           ; $7594: $ba
	xor  c                                           ; $7595: $a9
	sbc  d                                           ; $7596: $9a
	xor  d                                           ; $7597: $aa
	xor  b                                           ; $7598: $a8
	ld   h, h                                        ; $7599: $64
	ld   hl, $1311                                   ; $759a: $21 $11 $13
	adc  [hl]                                        ; $759d: $8e
	rst  $38                                         ; $759e: $ff
	db   $ec                                         ; $759f: $ec
	xor  d                                           ; $75a0: $aa
	xor  c                                           ; $75a1: $a9
	xor  c                                           ; $75a2: $a9
	cp   e                                           ; $75a3: $bb
	and  a                                           ; $75a4: $a7
	ld   d, h                                        ; $75a5: $54
	ld   b, e                                        ; $75a6: $43
	ld   de, $7e11                                   ; $75a7: $11 $11 $7e
	rst  $38                                         ; $75aa: $ff
	db   $eb                                         ; $75ab: $eb
	xor  d                                           ; $75ac: $aa
	cp   e                                           ; $75ad: $bb
	sbc  b                                           ; $75ae: $98
	sbc  d                                           ; $75af: $9a
	cp   d                                           ; $75b0: $ba
	ld   [hl], h                                     ; $75b1: $74
	ld   [hl-], a                                    ; $75b2: $32
	ld   hl, $3a11                                   ; $75b3: $21 $11 $3a
	rst  $38                                         ; $75b6: $ff
	db   $fd                                         ; $75b7: $fd
	xor  c                                           ; $75b8: $a9
	xor  e                                           ; $75b9: $ab
	xor  c                                           ; $75ba: $a9
	sbc  d                                           ; $75bb: $9a
	xor  e                                           ; $75bc: $ab
	add  h                                           ; $75bd: $84
	ld   [hl-], a                                    ; $75be: $32
	ld   [hl-], a                                    ; $75bf: $32
	ld   de, $ff17                                   ; $75c0: $11 $17 $ff
	cp   $a9                                         ; $75c3: $fe $a9
	sbc  d                                           ; $75c5: $9a
	xor  d                                           ; $75c6: $aa
	sbc  c                                           ; $75c7: $99
	cp   d                                           ; $75c8: $ba
	sub  l                                           ; $75c9: $95
	ld   [hl-], a                                    ; $75ca: $32
	inc  sp                                          ; $75cb: $33
	ld   de, $cf14                                   ; $75cc: $11 $14 $cf
	rst  $38                                         ; $75cf: $ff
	cp   b                                           ; $75d0: $b8
	sbc  d                                           ; $75d1: $9a
	cp   d                                           ; $75d2: $ba
	adc  b                                           ; $75d3: $88
	sbc  e                                           ; $75d4: $9b
	or   a                                           ; $75d5: $b7
	ld   b, e                                        ; $75d6: $43
	inc  [hl]                                        ; $75d7: $34
	ld   hl, $7f11                                   ; $75d8: $21 $11 $7f
	rst  $38                                         ; $75db: $ff
	jp   c, $ba8a                                    ; $75dc: $da $8a $ba

	add  a                                           ; $75df: $87
	sbc  e                                           ; $75e0: $9b
	jp   z, $2353                                    ; $75e1: $ca $53 $23

	ld   b, c                                        ; $75e4: $41
	ld   de, $ff3c                                   ; $75e5: $11 $3c $ff
	ei                                               ; $75e8: $fb
	adc  b                                           ; $75e9: $88
	xor  d                                           ; $75ea: $aa
	sbc  b                                           ; $75eb: $98
	adc  d                                           ; $75ec: $8a
	bit  6, e                                        ; $75ed: $cb $73
	inc  [hl]                                        ; $75ef: $34
	ld   h, h                                        ; $75f0: $64
	ld   de, $ff15                                   ; $75f1: $11 $15 $ff
	db   $fd                                         ; $75f4: $fd
	add  a                                           ; $75f5: $87
	sbc  h                                           ; $75f6: $9c
	ret                                              ; $75f7: $c9


	ld   [hl], a                                     ; $75f8: $77
	xor  l                                           ; $75f9: $ad
	and  [hl]                                        ; $75fa: $a6
	ld   [hl+], a                                    ; $75fb: $22
	ld   b, [hl]                                     ; $75fc: $46
	ld   b, c                                        ; $75fd: $41
	ld   de, $ff7f                                   ; $75fe: $11 $7f $ff
	rst  ToBoot                                         ; $7601: $c7
	ld   a, d                                        ; $7602: $7a
	res  0, [hl]                                     ; $7603: $cb $86
	ld   a, e                                        ; $7605: $7b
	jp   z, $2552                                    ; $7606: $ca $52 $25

	ld   [hl], l                                     ; $7609: $75
	ld   de, $ff18                                   ; $760a: $11 $18 $ff
	ld   a, [$ce66]                                  ; $760d: $fa $66 $ce
	ret  z                                           ; $7610: $c8

	ld   d, [hl]                                     ; $7611: $56
	xor  l                                           ; $7612: $ad
	and  l                                           ; $7613: $a5
	ld   [hl+], a                                    ; $7614: $22
	ld   d, a                                        ; $7615: $57
	ld   b, c                                        ; $7616: $41
	ld   de, $ffbf                                   ; $7617: $11 $bf $ff
	sub  [hl]                                        ; $761a: $96
	ld   a, e                                        ; $761b: $7b
	db   $db                                         ; $761c: $db
	ld   [hl], l                                     ; $761d: $75
	ld   a, e                                        ; $761e: $7b
	reti                                             ; $761f: $d9


	ld   d, d                                        ; $7620: $52
	ld   [hl], $73                                   ; $7621: $36 $73
	ld   de, $ff1c                                   ; $7623: $11 $1c $ff
	ld   sp, hl                                      ; $7626: $f9
	ld   h, a                                        ; $7627: $67
	call Call_0c9_59b6                               ; $7628: $cd $b6 $59
	cp   h                                           ; $762b: $bc
	sub  h                                           ; $762c: $94
	inc  h                                           ; $762d: $24
	ld   [hl], a                                     ; $762e: $77
	ld   hl, $df11                                   ; $762f: $21 $11 $df
	rst  $38                                         ; $7632: $ff
	add  l                                           ; $7633: $85
	adc  l                                           ; $7634: $8d
	jp   c, $8c65                                    ; $7635: $da $65 $8c

	ret  c                                           ; $7638: $d8

	ld   sp, $8337                                   ; $7639: $31 $37 $83
	ld   de, $ff2d                                   ; $763c: $11 $2d $ff
	rst  $20                                         ; $763f: $e7
	ld   e, c                                        ; $7640: $59
	sbc  $95                                         ; $7641: $de $95
	ld   c, c                                        ; $7643: $49
	sbc  $a4                                         ; $7644: $de $a4
	inc  de                                          ; $7646: $13
	ld   [hl], a                                     ; $7647: $77
	ld   hl, $ef12                                   ; $7648: $21 $12 $ef
	cp   $75                                         ; $764b: $fe $75
	sbc  l                                           ; $764d: $9d
	reti                                             ; $764e: $d9


	ld   h, l                                        ; $764f: $65
	sbc  l                                           ; $7650: $9d
	rst  ToBoot                                         ; $7651: $c7
	ld   [hl-], a                                    ; $7652: $32
	ld   e, b                                        ; $7653: $58
	ld   [hl], c                                     ; $7654: $71
	ld   de, $ff4f                                   ; $7655: $11 $4f $ff
	add  $69                                         ; $7658: $c6 $69
	db   $ec                                         ; $765a: $ec
	sub  l                                           ; $765b: $95
	ld   l, e                                        ; $765c: $6b
	call c, $1562                                    ; $765d: $dc $62 $15
	add  a                                           ; $7660: $87
	ld   de, $ff15                                   ; $7661: $11 $15 $ff
	db   $fc                                         ; $7664: $fc
	ld   d, l                                        ; $7665: $55
	cp   a                                           ; $7666: $bf
	reti                                             ; $7667: $d9


	ld   b, l                                        ; $7668: $45
	xor  l                                           ; $7669: $ad
	add  $21                                         ; $766a: $c6 $21
	ld   e, b                                        ; $766c: $58
	ld   [hl], c                                     ; $766d: $71
	ld   de, $ff7f                                   ; $766e: $11 $7f $ff
	and  l                                           ; $7671: $a5
	ld   l, h                                        ; $7672: $6c
	db   $ec                                         ; $7673: $ec
	ld   [hl], h                                     ; $7674: $74
	ld   a, h                                        ; $7675: $7c
	db   $eb                                         ; $7676: $eb
	ld   b, c                                        ; $7677: $41
	daa                                              ; $7678: $27
	and  [hl]                                        ; $7679: $a6
	ld   de, $ff19                                   ; $767a: $11 $19 $ff
	ld   hl, sp+$47                                  ; $767d: $f8 $47
	sbc  $b6                                         ; $767f: $de $b6
	scf                                              ; $7681: $37
	adc  $a3                                         ; $7682: $ce $a3
	inc  de                                          ; $7684: $13
	adc  c                                           ; $7685: $89
	ld   b, c                                        ; $7686: $41
	ld   de, $fecf                                   ; $7687: $11 $cf $fe
	ld   [hl], l                                     ; $768a: $75
	adc  [hl]                                        ; $768b: $8e
	reti                                             ; $768c: $d9


	ld   d, l                                        ; $768d: $55
	sbc  l                                           ; $768e: $9d
	rst  ToBoot                                         ; $768f: $c7
	ld   hl, $8249                                   ; $7690: $21 $49 $82
	ld   de, $ff4f                                   ; $7693: $11 $4f $ff
	or   [hl]                                        ; $7696: $b6
	ld   l, d                                        ; $7697: $6a
	db   $ec                                         ; $7698: $ec
	ld   [hl], h                                     ; $7699: $74

Jump_0c9_769a:
	ld   l, e                                        ; $769a: $6b
	db   $ec                                         ; $769b: $ec
	ld   d, c                                        ; $769c: $51
	ld   h, $85                                      ; $769d: $26 $85
	ld   de, $ff1a                                   ; $769f: $11 $1a $ff
	ld   hl, sp+$69                                  ; $76a2: $f8 $69
	sbc  $95                                         ; $76a4: $de $95
	ld   c, c                                        ; $76a6: $49
	db   $ed                                         ; $76a7: $ed
	add  d                                           ; $76a8: $82
	inc  d                                           ; $76a9: $14
	add  a                                           ; $76aa: $87
	ld   hl, $ff15                                   ; $76ab: $21 $15 $ff
	ei                                               ; $76ae: $fb
	ld   a, c                                        ; $76af: $79
	adc  $a5                                         ; $76b0: $ce $a5
	ld   c, b                                        ; $76b2: $48
	sbc  $93                                         ; $76b3: $de $93
	inc  de                                          ; $76b5: $13
	ld   a, b                                        ; $76b6: $78
	ld   sp, $df12                                   ; $76b7: $31 $12 $df
	db   $fd                                         ; $76ba: $fd
	adc  c                                           ; $76bb: $89
	call Call_0c9_57b6                               ; $76bc: $cd $b6 $57
	db   $dd                                         ; $76bf: $dd
	and  h                                           ; $76c0: $a4
	inc  d                                           ; $76c1: $14
	ld   a, b                                        ; $76c2: $78
	ld   sp, $cf11                                   ; $76c3: $31 $11 $cf
	cp   $9a                                         ; $76c6: $fe $9a
	adc  $a6                                         ; $76c8: $ce $a6
	ld   d, a                                        ; $76ca: $57
	call $14a4                                       ; $76cb: $cd $a4 $14
	adc  b                                           ; $76ce: $88
	ld   b, c                                        ; $76cf: $41
	ld   de, $fe9f                                   ; $76d0: $11 $9f $fe
	cp   d                                           ; $76d3: $ba
	db   $dd                                         ; $76d4: $dd
	or   [hl]                                        ; $76d5: $b6
	ld   d, a                                        ; $76d6: $57
	cp   l                                           ; $76d7: $bd
	and  [hl]                                        ; $76d8: $a6
	inc  sp                                          ; $76d9: $33
	ld   h, [hl]                                     ; $76da: $66
	ld   b, c                                        ; $76db: $41
	ld   de, $ff8f                                   ; $76dc: $11 $8f $ff
	cp   d                                           ; $76df: $ba
	cp   l                                           ; $76e0: $bd
	or   a                                           ; $76e1: $b7
	ld   h, a                                        ; $76e2: $67
	cp   l                                           ; $76e3: $bd
	sub  [hl]                                        ; $76e4: $96
	inc  [hl]                                        ; $76e5: $34
	ld   d, l                                        ; $76e6: $55
	ld   sp, $9f12                                   ; $76e7: $31 $12 $9f
	rst  $38                                         ; $76ea: $ff
	cp   h                                           ; $76eb: $bc
	res  2, [hl]                                     ; $76ec: $cb $96
	ld   a, d                                        ; $76ee: $7a
	cp   h                                           ; $76ef: $bc
	add  [hl]                                        ; $76f0: $86
	ld   b, h                                        ; $76f1: $44
	ld   b, e                                        ; $76f2: $43
	ld   hl, $bf14                                   ; $76f3: $21 $14 $bf
	db   $fd                                         ; $76f6: $fd
	call z, $86cb                                    ; $76f7: $cc $cb $86
	adc  d                                           ; $76fa: $8a
	bit  6, l                                        ; $76fb: $cb $75
	ld   b, h                                        ; $76fd: $44
	ld   b, e                                        ; $76fe: $43
	ld   de, $ef17                                   ; $76ff: $11 $17 $ef
	db   $ed                                         ; $7702: $ed
	call Call_0c9_67c9                               ; $7703: $cd $c9 $67
	sbc  e                                           ; $7706: $9b
	ret                                              ; $7707: $c9


	ld   [hl], l                                     ; $7708: $75
	ld   d, h                                        ; $7709: $54
	ld   hl, $4a11                                   ; $770a: $21 $11 $4a
	rst  $38                                         ; $770d: $ff
	db   $ed                                         ; $770e: $ed
	db   $dd                                         ; $770f: $dd
	xor  b                                           ; $7710: $a8
	ld   l, b                                        ; $7711: $68
	xor  h                                           ; $7712: $ac
	cp   b                                           ; $7713: $b8
	ld   h, l                                        ; $7714: $65
	ld   b, e                                        ; $7715: $43
	ld   de, $8d11                                   ; $7716: $11 $11 $8d
	rst  $38                                         ; $7719: $ff
	db   $dd                                         ; $771a: $dd
	db   $db                                         ; $771b: $db
	sub  a                                           ; $771c: $97
	ld   l, c                                        ; $771d: $69
	xor  h                                           ; $771e: $ac
	and  a                                           ; $771f: $a7
	ld   d, h                                        ; $7720: $54
	ld   [hl-], a                                    ; $7721: $32
	ld   de, $bf16                                   ; $7722: $11 $16 $bf
	cp   $de                                         ; $7725: $fe $de
	ret                                              ; $7727: $c9


	ld   [hl], a                                     ; $7728: $77
	sbc  c                                           ; $7729: $99
	xor  d                                           ; $772a: $aa
	sub  a                                           ; $772b: $97
	ld   b, d                                        ; $772c: $42
	ld   de, $5911                                   ; $772d: $11 $11 $59
	rst  $28                                         ; $7730: $ef
	xor  $fc                                         ; $7731: $ee $fc
	sub  a                                           ; $7733: $97
	ld   a, c                                        ; $7734: $79
	xor  d                                           ; $7735: $aa
	sbc  b                                           ; $7736: $98
	ld   [hl], l                                     ; $7737: $75
	ld   [hl+], a                                    ; $7738: $22
	ld   de, $ad15                                   ; $7739: $11 $15 $ad
	db   $ed                                         ; $773c: $ed
	rst  $38                                         ; $773d: $ff
	ret  z                                           ; $773e: $c8

	add  a                                           ; $773f: $87
	sbc  c                                           ; $7740: $99
	adc  c                                           ; $7741: $89
	sub  [hl]                                        ; $7742: $96
	ld   b, d                                        ; $7743: $42
	ld   hl, $6a11                                   ; $7744: $21 $11 $6a
	call $eaef                                       ; $7747: $cd $ef $ea
	sbc  c                                           ; $774a: $99
	sbc  c                                           ; $774b: $99
	adc  c                                           ; $774c: $89
	xor  b                                           ; $774d: $a8
	ld   d, h                                        ; $774e: $54
	ld   hl, $3811                                   ; $774f: $21 $11 $38
	call z, $fddf                                    ; $7752: $cc $df $fd
	xor  c                                           ; $7755: $a9
	sbc  b                                           ; $7756: $98
	adc  c                                           ; $7757: $89
	cp   d                                           ; $7758: $ba
	ld   [hl], l                                     ; $7759: $75
	ld   b, d                                        ; $775a: $42
	ld   de, $9b16                                   ; $775b: $11 $16 $9b
	adc  $fe                                         ; $775e: $ce $fe
	ret                                              ; $7760: $c9


	sbc  b                                           ; $7761: $98
	ld   [hl], a                                     ; $7762: $77
	xor  e                                           ; $7763: $ab
	sub  l                                           ; $7764: $95
	ld   b, d                                        ; $7765: $42
	ld   de, $8915                                   ; $7766: $11 $15 $89
	cp   l                                           ; $7769: $bd
	rst  $38                                         ; $776a: $ff
	jp   z, $77b9                                    ; $776b: $ca $b9 $77

	adc  d                                           ; $776e: $8a
	sub  [hl]                                        ; $776f: $96
	ld   [hl], l                                     ; $7770: $75
	ld   hl, $6712                                   ; $7771: $21 $12 $67
	xor  l                                           ; $7774: $ad
	rst  $38                                         ; $7775: $ff
	db   $fd                                         ; $7776: $fd

Jump_0c9_7777:
	cp   c                                           ; $7777: $b9
	ld   [hl], a                                     ; $7778: $77
	sbc  c                                           ; $7779: $99
	xor  b                                           ; $777a: $a8
	halt                                             ; $777b: $76
	ld   sp, $3711                                   ; $777c: $31 $11 $37
	sbc  h                                           ; $777f: $9c
	rst  JumpTable                                         ; $7780: $df
	cp   $ca                                         ; $7781: $fe $ca
	sub  [hl]                                        ; $7783: $96
	ld   a, c                                        ; $7784: $79
	sbc  c                                           ; $7785: $99
	halt                                             ; $7786: $76

Jump_0c9_7787:
	ld   d, d                                        ; $7787: $52
	ld   de, $7a25                                   ; $7788: $11 $25 $7a
	db   $dd                                         ; $778b: $dd
	rst  $28                                         ; $778c: $ef
	call c, Call_0c9_7797                            ; $778d: $dc $97 $77
	adc  c                                           ; $7790: $89
	add  a                                           ; $7791: $87
	ld   h, e                                        ; $7792: $63
	ld   de, $6814                                   ; $7793: $11 $14 $68
	cp   l                                           ; $7796: $bd

Call_0c9_7797:
	rst  $38                                         ; $7797: $ff

Call_0c9_7798:
	db   $ec                                         ; $7798: $ec

Call_0c9_7799:
	cp   c                                           ; $7799: $b9
	ld   a, b                                        ; $779a: $78
	adc  b                                           ; $779b: $88
	add  a                                           ; $779c: $87
	ld   [hl], l                                     ; $779d: $75
	ld   hl, $5712                                   ; $779e: $21 $12 $57
	xor  h                                           ; $77a1: $ac
	rst  JumpTable                                         ; $77a2: $df
	cp   $c9                                         ; $77a3: $fe $c9
	ld   [hl], a                                     ; $77a5: $77
	ld   a, b                                        ; $77a6: $78
	add  a                                           ; $77a7: $87
	halt                                             ; $77a8: $76

Call_0c9_77a9:
	ld   sp, $4511                                   ; $77a9: $31 $11 $45
	adc  h                                           ; $77ac: $8c
	rst  JumpTable                                         ; $77ad: $df
	cp   $db                                         ; $77ae: $fe $db
	sbc  b                                           ; $77b0: $98
	ld   [hl], a                                     ; $77b1: $77
	add  a                                           ; $77b2: $87
	halt                                             ; $77b3: $76
	ld   b, d                                        ; $77b4: $42
	ld   de, $7a35                                   ; $77b5: $11 $35 $7a
	call $ecfe                                       ; $77b8: $cd $fe $ec
	xor  b                                           ; $77bb: $a8
	ld   [hl], a                                     ; $77bc: $77
	add  a                                           ; $77bd: $87
	ld   h, a                                        ; $77be: $67
	ld   d, d                                        ; $77bf: $52
	ld   bc, $6b34                                   ; $77c0: $01 $34 $6b
	cp   e                                           ; $77c3: $bb
	rst  $38                                         ; $77c4: $ff
	db   $ed                                         ; $77c5: $ed
	cp   c                                           ; $77c6: $b9
	add  [hl]                                        ; $77c7: $86
	ld   a, b                                        ; $77c8: $78
	ld   h, [hl]                                     ; $77c9: $66
	ld   h, e                                        ; $77ca: $63
	ld   bc, $5a24                                   ; $77cb: $01 $24 $5a
	set  7, a                                        ; $77ce: $cb $ff
	db   $dd                                         ; $77d0: $dd
	jp   z, Jump_0c9_7887                            ; $77d1: $ca $87 $78

	halt                                             ; $77d4: $76
	ld   [hl], l                                     ; $77d5: $75
	ld   hl, $5613                                   ; $77d6: $21 $13 $56
	cp   h                                           ; $77d9: $bc
	rst  JumpTable                                         ; $77da: $df
	db   $fd                                         ; $77db: $fd
	db   $db                                         ; $77dc: $db
	ld   a, b                                        ; $77dd: $78
	add  a                                           ; $77de: $87
	add  a                                           ; $77df: $87
	ld   [hl], l                                     ; $77e0: $75
	ld   hl, $4711                                   ; $77e1: $21 $11 $47
	xor  h                                           ; $77e4: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e5: $cf
	cp   $dc                                         ; $77e6: $fe $dc
	sbc  b                                           ; $77e8: $98
	add  a                                           ; $77e9: $87
	ld   [hl], a                                     ; $77ea: $77
	halt                                             ; $77eb: $76
	ld   [hl-], a                                    ; $77ec: $32
	ld   de, $8c35                                   ; $77ed: $11 $35 $8c
	cp   [hl]                                        ; $77f0: $be
	db   $fd                                         ; $77f1: $fd
	sbc  $b7                                         ; $77f2: $de $b7
	sbc  b                                           ; $77f4: $98
	ld   [hl], a                                     ; $77f5: $77
	halt                                             ; $77f6: $76
	ld   d, e                                        ; $77f7: $53
	ld   de, $6a24                                   ; $77f8: $11 $24 $6a
	cp   e                                           ; $77fb: $bb
	rst  $38                                         ; $77fc: $ff
	db   $dd                                         ; $77fd: $dd
	ret  z                                           ; $77fe: $c8

	ld   [hl], a                                     ; $77ff: $77
	ld   [hl], a                                     ; $7800: $77
	ld   [hl], a                                     ; $7801: $77
	ld   h, l                                        ; $7802: $65
	ld   hl, $4713                                   ; $7803: $21 $13 $47
	cp   d                                           ; $7806: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7807: $cf
	db   $fc                                         ; $7808: $fc
	db   $ec                                         ; $7809: $ec
	add  a                                           ; $780a: $87
	adc  b                                           ; $780b: $88
	ld   h, a                                        ; $780c: $67
	ld   [hl], l                                     ; $780d: $75
	ld   [hl-], a                                    ; $780e: $32
	ld   de, $9b46                                   ; $780f: $11 $46 $9b
	cp   [hl]                                        ; $7812: $be
	db   $fd                                         ; $7813: $fd
	db   $dd                                         ; $7814: $dd
	sbc  b                                           ; $7815: $98
	ld   [hl], a                                     ; $7816: $77
	ld   [hl], a                                     ; $7817: $77
	ld   [hl], a                                     ; $7818: $77
	ld   d, d                                        ; $7819: $52
	ld   de, $7b24                                   ; $781a: $11 $24 $7b
	call $edff                                       ; $781d: $cd $ff $ed
	cp   b                                           ; $7820: $b8
	ld   [hl], a                                     ; $7821: $77
	ld   [hl], a                                     ; $7822: $77
	ld   [hl], a                                     ; $7823: $77
	ld   h, h                                        ; $7824: $64
	ld   hl, $5713                                   ; $7825: $21 $13 $57
	cp   l                                           ; $7828: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7829: $cf
	db   $fd                                         ; $782a: $fd
	jp   z, Jump_0c9_7787                            ; $782b: $ca $87 $77

	ld   a, b                                        ; $782e: $78
	ld   [hl], l                                     ; $782f: $75
	ld   [hl-], a                                    ; $7830: $32
	ld   de, $8b55                                   ; $7831: $11 $55 $8b
	sbc  $fe                                         ; $7834: $de $fe
	call c, Call_0c9_7798                            ; $7836: $dc $98 $77
	ld   [hl], a                                     ; $7839: $77
	halt                                             ; $783a: $76
	ld   b, e                                        ; $783b: $43
	ld   de, $7b35                                   ; $783c: $11 $35 $7b
	db   $dd                                         ; $783f: $dd
	rst  $38                                         ; $7840: $ff
	db   $dd                                         ; $7841: $dd
	cp   b                                           ; $7842: $b8
	ld   l, b                                        ; $7843: $68
	ld   [hl], a                                     ; $7844: $77
	ld   [hl], a                                     ; $7845: $77
	ld   h, h                                        ; $7846: $64
	ld   hl, $6914                                   ; $7847: $21 $14 $69
	cp   h                                           ; $784a: $bc
	rst  JumpTable                                         ; $784b: $df
	xor  $ca                                         ; $784c: $ee $ca
	ld   [hl], a                                     ; $784e: $77
	ld   [hl], a                                     ; $784f: $77
	ld   [hl], a                                     ; $7850: $77
	ld   h, l                                        ; $7851: $65
	ld   sp, $5613                                   ; $7852: $31 $13 $56
	cp   l                                           ; $7855: $bd
	adc  $fd                                         ; $7856: $ce $fd
	bit  6, a                                        ; $7858: $cb $77
	ld   [hl], a                                     ; $785a: $77
	ld   h, a                                        ; $785b: $67
	ld   [hl], l                                     ; $785c: $75
	ld   d, d                                        ; $785d: $52
	ld   de, $8c45                                   ; $785e: $11 $45 $8c
	cp   l                                           ; $7861: $bd
	rst  $38                                         ; $7862: $ff
	call z, Call_0c9_78a7                            ; $7863: $cc $a7 $78
	ld   [hl], a                                     ; $7866: $77
	ld   [hl], a                                     ; $7867: $77
	ld   d, h                                        ; $7868: $54
	ld   de, $6a35                                   ; $7869: $11 $35 $6a
	set  5, a                                        ; $786c: $cb $ef
	call c, Call_0c9_67b8                            ; $786e: $dc $b8 $67
	add  [hl]                                        ; $7871: $86
	ld   a, b                                        ; $7872: $78
	ld   h, h                                        ; $7873: $64
	ld   hl, $5914                                   ; $7874: $21 $14 $59
	set  3, [hl]                                     ; $7877: $cb $de
	db   $ec                                         ; $7879: $ec
	jp   z, Jump_0c9_7777                            ; $787a: $ca $77 $77

	ld   a, b                                        ; $787d: $78
	ld   h, l                                        ; $787e: $65
	ld   sp, $5612                                   ; $787f: $31 $12 $56
	cp   e                                           ; $7882: $bb
	call $ccfe                                       ; $7883: $cd $fe $cc

Jump_0c9_7886:
	add  a                                           ; $7886: $87

Jump_0c9_7887:
	ld   a, b                                        ; $7887: $78
	ld   h, a                                        ; $7888: $67
	add  [hl]                                        ; $7889: $86
	ld   d, e                                        ; $788a: $53
	ld   de, $7c56                                   ; $788b: $11 $56 $7c
	call $ccff                                       ; $788e: $cd $ff $cc
	and  a                                           ; $7891: $a7
	ld   [hl], a                                     ; $7892: $77
	halt                                             ; $7893: $76
	sub  a                                           ; $7894: $97
	ld   d, h                                        ; $7895: $54
	ld   hl, $6a26                                   ; $7896: $21 $26 $6a
	cp   h                                           ; $7899: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789a: $cf
	db   $ec                                         ; $789b: $ec
	ret  z                                           ; $789c: $c8

	ld   [hl], a                                     ; $789d: $77
	add  a                                           ; $789e: $87
	ld   a, b                                        ; $789f: $78
	ld   d, l                                        ; $78a0: $55
	ld   sp, $6714                                   ; $78a1: $31 $14 $67
	cp   h                                           ; $78a4: $bc
	sbc  $fc                                         ; $78a5: $de $fc

Call_0c9_78a7:
Jump_0c9_78a7:
	jp   c, Jump_0c9_7777                            ; $78a7: $da $77 $77

	ld   l, b                                        ; $78aa: $68
	ld   [hl], l                                     ; $78ab: $75
	ld   b, d                                        ; $78ac: $42
	ld   [de], a                                     ; $78ad: $12
	ld   h, [hl]                                     ; $78ae: $66
	sbc  e                                           ; $78af: $9b
	sbc  $ef                                         ; $78b0: $de $ef
	res  2, a                                        ; $78b2: $cb $97
	ld   [hl], a                                     ; $78b4: $77
	add  [hl]                                        ; $78b5: $86
	add  [hl]                                        ; $78b6: $86
	ld   b, e                                        ; $78b7: $43
	ld   de, $9b36                                   ; $78b8: $11 $36 $9b
	call $dbef                                       ; $78bb: $cd $ef $db
	or   a                                           ; $78be: $b7
	ld   h, a                                        ; $78bf: $67
	add  a                                           ; $78c0: $87
	adc  b                                           ; $78c1: $88
	ld   b, e                                        ; $78c2: $43
	ld   hl, $7816                                   ; $78c3: $21 $16 $78
	call $ebcf                                       ; $78c6: $cd $cf $eb
	cp   d                                           ; $78c9: $ba
	ld   h, a                                        ; $78ca: $67
	add  a                                           ; $78cb: $87
	ld   l, c                                        ; $78cc: $69
	ld   h, e                                        ; $78cd: $63
	ld   sp, $7803                                   ; $78ce: $31 $03 $78
	cp   l                                           ; $78d1: $bd
	sbc  $ed                                         ; $78d2: $de $ed
	cp   d                                           ; $78d4: $ba
	halt                                             ; $78d5: $76
	ld   a, b                                        ; $78d6: $78
	ld   [hl], a                                     ; $78d7: $77
	ld   [hl], l                                     ; $78d8: $75
	ld   [hl-], a                                    ; $78d9: $32
	ld   [de], a                                     ; $78da: $12
	ld   d, a                                        ; $78db: $57
	xor  e                                           ; $78dc: $ab
	db   $dd                                         ; $78dd: $dd
	cp   $cc                                         ; $78de: $fe $cc
	sub  [hl]                                        ; $78e0: $96
	ld   a, b                                        ; $78e1: $78
	halt                                             ; $78e2: $76
	add  l                                           ; $78e3: $85
	ld   b, h                                        ; $78e4: $44
	ld   de, $8b56                                   ; $78e5: $11 $56 $8b
	call $cbef                                       ; $78e8: $cd $ef $cb
	and  a                                           ; $78eb: $a7
	ld   [hl], a                                     ; $78ec: $77
	halt                                             ; $78ed: $76
	add  a                                           ; $78ee: $87
	ld   d, e                                        ; $78ef: $53
	ld   de, $7a36                                   ; $78f0: $11 $36 $7a
	call $ecdf                                       ; $78f3: $cd $df $ec
	cp   b                                           ; $78f6: $b8
	halt                                             ; $78f7: $76
	sub  a                                           ; $78f8: $97
	ld   a, b                                        ; $78f9: $78
	ld   d, h                                        ; $78fa: $54
	ld   hl, $7925                                   ; $78fb: $21 $25 $79
	cp   h                                           ; $78fe: $bc
	sbc  $eb                                         ; $78ff: $de $eb
	cp   b                                           ; $7901: $b8
	ld   [hl], a                                     ; $7902: $77
	ld   [hl], a                                     ; $7903: $77
	ld   l, b                                        ; $7904: $68
	ld   d, h                                        ; $7905: $54
	ld   sp, $7a15                                   ; $7906: $31 $15 $7a
	call z, $fcef                                    ; $7909: $cc $ef $fc
	jp   z, $8867                                    ; $790c: $ca $67 $88

	ld   l, c                                        ; $790f: $69
	ld   h, e                                        ; $7910: $63
	ld   b, c                                        ; $7911: $41
	inc  d                                           ; $7912: $14
	ld   l, b                                        ; $7913: $68
	cp   l                                           ; $7914: $bd
	db   $dd                                         ; $7915: $dd
	cp   $ba                                         ; $7916: $fe $ba
	add  a                                           ; $7918: $87
	ld   a, c                                        ; $7919: $79
	ld   h, a                                        ; $791a: $67
	ld   [hl], h                                     ; $791b: $74
	ld   sp, $6913                                   ; $791c: $31 $13 $69
	xor  e                                           ; $791f: $ab
	xor  $de                                         ; $7920: $ee $de
	cp   d                                           ; $7922: $ba
	add  a                                           ; $7923: $87
	ld   a, c                                        ; $7924: $79
	add  a                                           ; $7925: $87
	add  l                                           ; $7926: $85
	ld   b, d                                        ; $7927: $42
	ld   [de], a                                     ; $7928: $12
	ld   e, c                                        ; $7929: $59
	xor  e                                           ; $792a: $ab
	call c, $badd                                    ; $792b: $dc $dd $ba
	ld   [hl], a                                     ; $792e: $77
	ld   a, b                                        ; $792f: $78
	sbc  b                                           ; $7930: $98
	sub  [hl]                                        ; $7931: $96
	ld   d, h                                        ; $7932: $54
	ld   hl, $8b58                                   ; $7933: $21 $58 $8b
	call $b8be                                       ; $7936: $cd $be $b8
	add  a                                           ; $7939: $87
	ld   l, b                                        ; $793a: $68
	and  a                                           ; $793b: $a7
	sbc  b                                           ; $793c: $98
	ld   d, h                                        ; $793d: $54
	ld   sp, $9a27                                   ; $793e: $31 $27 $9a
	adc  $cc                                         ; $7941: $ce $cc
	jp   z, Jump_0c9_7777                            ; $7943: $ca $77 $77

	adc  b                                           ; $7946: $88
	add  a                                           ; $7947: $87
	ld   h, l                                        ; $7948: $65
	ld   sp, $8a36                                   ; $7949: $31 $36 $8a
	cp   l                                           ; $794c: $bd
	call z, $a6c9                                    ; $794d: $cc $c9 $a6
	ld   [hl], a                                     ; $7950: $77
	adc  c                                           ; $7951: $89
	ld   a, b                                        ; $7952: $78
	ld   h, l                                        ; $7953: $65
	ld   b, d                                        ; $7954: $42
	dec  h                                           ; $7955: $25
	sbc  c                                           ; $7956: $99
	xor  l                                           ; $7957: $ad
	db   $db                                         ; $7958: $db
	ld   [$6797], a                                  ; $7959: $ea $97 $67
	ld   a, c                                        ; $795c: $79
	ld   a, c                                        ; $795d: $79
	ld   h, l                                        ; $795e: $65
	ld   b, e                                        ; $795f: $43
	inc  h                                           ; $7960: $24
	adc  c                                           ; $7961: $89
	xor  l                                           ; $7962: $ad
	db   $eb                                         ; $7963: $eb
	db   $db                                         ; $7964: $db
	sub  a                                           ; $7965: $97
	ld   [hl], a                                     ; $7966: $77
	ld   a, c                                        ; $7967: $79
	ld   a, b                                        ; $7968: $78
	ld   h, l                                        ; $7969: $65
	ld   b, h                                        ; $796a: $44
	inc  hl                                          ; $796b: $23
	sbc  c                                           ; $796c: $99
	sbc  h                                           ; $796d: $9c
	db   $ec                                         ; $796e: $ec
	cp   h                                           ; $796f: $bc
	sub  a                                           ; $7970: $97
	ld   [hl], a                                     ; $7971: $77
	ld   a, c                                        ; $7972: $79
	sub  a                                           ; $7973: $97
	ld   h, l                                        ; $7974: $65
	ld   d, e                                        ; $7975: $53
	inc  hl                                          ; $7976: $23
	ld   a, c                                        ; $7977: $79
	sbc  h                                           ; $7978: $9c
	call c, $97cb                                    ; $7979: $dc $cb $97
	ld   [hl], a                                     ; $797c: $77
	ld   a, b                                        ; $797d: $78
	adc  b                                           ; $797e: $88
	halt                                             ; $797f: $76
	ld   d, h                                        ; $7980: $54
	inc  hl                                          ; $7981: $23
	ld   a, b                                        ; $7982: $78
	xor  e                                           ; $7983: $ab
	db   $dd                                         ; $7984: $dd
	res  3, b                                        ; $7985: $cb $98
	ld   [hl], a                                     ; $7987: $77
	ld   a, b                                        ; $7988: $78
	add  a                                           ; $7989: $87
	halt                                             ; $798a: $76
	ld   d, h                                        ; $798b: $54
	inc  hl                                          ; $798c: $23
	ld   l, b                                        ; $798d: $68
	cp   d                                           ; $798e: $ba
	db   $dd                                         ; $798f: $dd
	call z, Call_0c9_67a9                            ; $7990: $cc $a9 $67
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	add  l                                           ; $7995: $85
	ld   d, h                                        ; $7996: $54
	inc  sp                                          ; $7997: $33

Call_0c9_7998:
	ld   l, c                                        ; $7998: $69
	xor  e                                           ; $7999: $ab
	db   $dd                                         ; $799a: $dd
	cp   h                                           ; $799b: $bc
	xor  b                                           ; $799c: $a8
	ld   [hl], a                                     ; $799d: $77
	ld   [hl], a                                     ; $799e: $77
	sub  a                                           ; $799f: $97
	add  [hl]                                        ; $79a0: $86
	ld   d, h                                        ; $79a1: $54
	inc  sp                                          ; $79a2: $33
	ld   e, b                                        ; $79a3: $58
	xor  e                                           ; $79a4: $ab
	call c, $a9cb                                    ; $79a5: $dc $cb $a9
	ld   [hl], a                                     ; $79a8: $77
	ld   a, b                                        ; $79a9: $78
	add  a                                           ; $79aa: $87
	add  [hl]                                        ; $79ab: $86
	ld   d, l                                        ; $79ac: $55
	ld   b, e                                        ; $79ad: $43
	ld   e, c                                        ; $79ae: $59
	adc  d                                           ; $79af: $8a
	call $b8bb                                       ; $79b0: $cd $bb $b8
	ld   [hl], a                                     ; $79b3: $77
	ld   [hl], a                                     ; $79b4: $77
	adc  c                                           ; $79b5: $89
	halt                                             ; $79b6: $76
	ld   d, h                                        ; $79b7: $54
	inc  sp                                          ; $79b8: $33
	ld   l, b                                        ; $79b9: $68
	sbc  e                                           ; $79ba: $9b
	cp   h                                           ; $79bb: $bc
	call z, Call_0c9_77a9                            ; $79bc: $cc $a9 $77
	adc  c                                           ; $79bf: $89
	adc  b                                           ; $79c0: $88
	add  l                                           ; $79c1: $85
	ld   d, h                                        ; $79c2: $54
	ld   b, e                                        ; $79c3: $43
	ld   e, b                                        ; $79c4: $58
	xor  d                                           ; $79c5: $aa
	call $b9cb                                       ; $79c6: $cd $cb $b9
	ld   [hl], a                                     ; $79c9: $77
	add  a                                           ; $79ca: $87
	ld   a, b                                        ; $79cb: $78
	add  l                                           ; $79cc: $85
	ld   d, l                                        ; $79cd: $55
	inc  sp                                          ; $79ce: $33
	ld   l, c                                        ; $79cf: $69
	adc  d                                           ; $79d0: $8a
	call z, $a9bb                                    ; $79d1: $cc $bb $a9
	add  a                                           ; $79d4: $87
	ld   [hl], a                                     ; $79d5: $77
	adc  b                                           ; $79d6: $88
	ld   [hl], l                                     ; $79d7: $75
	ld   d, l                                        ; $79d8: $55
	inc  [hl]                                        ; $79d9: $34
	ld   a, b                                        ; $79da: $78
	sbc  d                                           ; $79db: $9a
	cp   h                                           ; $79dc: $bc
	cp   h                                           ; $79dd: $bc
	xor  d                                           ; $79de: $aa
	ld   [hl], a                                     ; $79df: $77
	adc  b                                           ; $79e0: $88
	add  a                                           ; $79e1: $87
	ld   [hl], l                                     ; $79e2: $75
	ld   d, l                                        ; $79e3: $55
	inc  [hl]                                        ; $79e4: $34
	ld   l, c                                        ; $79e5: $69
	sbc  d                                           ; $79e6: $9a
	cp   e                                           ; $79e7: $bb
	cp   h                                           ; $79e8: $bc
	cp   c                                           ; $79e9: $b9
	ld   a, b                                        ; $79ea: $78
	add  a                                           ; $79eb: $87
	ld   [hl], a                                     ; $79ec: $77
	ld   [hl], l                                     ; $79ed: $75
	ld   d, h                                        ; $79ee: $54
	ld   b, h                                        ; $79ef: $44
	ld   l, c                                        ; $79f0: $69
	sbc  d                                           ; $79f1: $9a
	call z, $b8ab                                    ; $79f2: $cc $ab $b8
	ld   a, b                                        ; $79f5: $78
	add  a                                           ; $79f6: $87
	adc  b                                           ; $79f7: $88
	halt                                             ; $79f8: $76
	ld   h, h                                        ; $79f9: $64
	dec  [hl]                                        ; $79fa: $35
	ld   a, b                                        ; $79fb: $78
	sbc  d                                           ; $79fc: $9a
	cp   e                                           ; $79fd: $bb
	res  5, d                                        ; $79fe: $cb $aa
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	ld   [hl], a                                     ; $7a02: $77
	ld   [hl], l                                     ; $7a03: $75
	ld   d, h                                        ; $7a04: $54
	ld   b, l                                        ; $7a05: $45
	ld   a, c                                        ; $7a06: $79
	sbc  d                                           ; $7a07: $9a
	cp   h                                           ; $7a08: $bc
	cp   d                                           ; $7a09: $ba
	xor  c                                           ; $7a0a: $a9
	ld   a, b                                        ; $7a0b: $78
	add  a                                           ; $7a0c: $87
	ld   [hl], a                                     ; $7a0d: $77
	ld   [hl], l                                     ; $7a0e: $75
	ld   d, h                                        ; $7a0f: $54
	ld   b, l                                        ; $7a10: $45
	ld   a, b                                        ; $7a11: $78
	sbc  d                                           ; $7a12: $9a
	cp   e                                           ; $7a13: $bb
	cp   e                                           ; $7a14: $bb
	xor  b                                           ; $7a15: $a8
	adc  c                                           ; $7a16: $89
	add  a                                           ; $7a17: $87
	ld   a, b                                        ; $7a18: $78
	ld   h, l                                        ; $7a19: $65
	ld   d, h                                        ; $7a1a: $54
	ld   b, [hl]                                     ; $7a1b: $46
	adc  b                                           ; $7a1c: $88
	sbc  d                                           ; $7a1d: $9a
	cp   e                                           ; $7a1e: $bb
	xor  e                                           ; $7a1f: $ab
	xor  b                                           ; $7a20: $a8
	adc  b                                           ; $7a21: $88
	add  a                                           ; $7a22: $87
	ld   [hl], a                                     ; $7a23: $77
	ld   h, l                                        ; $7a24: $65
	ld   d, l                                        ; $7a25: $55
	ld   d, a                                        ; $7a26: $57
	adc  c                                           ; $7a27: $89
	adc  d                                           ; $7a28: $8a
	xor  d                                           ; $7a29: $aa
	cp   d                                           ; $7a2a: $ba
	xor  b                                           ; $7a2b: $a8
	adc  b                                           ; $7a2c: $88
	add  a                                           ; $7a2d: $87
	ld   [hl], a                                     ; $7a2e: $77
	ld   h, [hl]                                     ; $7a2f: $66
	ld   d, l                                        ; $7a30: $55
	ld   h, a                                        ; $7a31: $67
	adc  b                                           ; $7a32: $88
	sbc  c                                           ; $7a33: $99
	sbc  d                                           ; $7a34: $9a
	sbc  c                                           ; $7a35: $99
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	add  a                                           ; $7a38: $87
	ld   [hl], a                                     ; $7a39: $77
	ld   [hl], a                                     ; $7a3a: $77
	ld   [hl], a                                     ; $7a3b: $77
	ld   a, b                                        ; $7a3c: $78
	adc  b                                           ; $7a3d: $88
	adc  c                                           ; $7a3e: $89
	sbc  b                                           ; $7a3f: $98
	sbc  b                                           ; $7a40: $98
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  c                                           ; $7a43: $89
	sbc  c                                           ; $7a44: $99
	sbc  c                                           ; $7a45: $99
	adc  b                                           ; $7a46: $88
	ld   [hl], a                                     ; $7a47: $77
	ld   [hl], a                                     ; $7a48: $77
	ld   [hl], a                                     ; $7a49: $77
	ld   [hl], a                                     ; $7a4a: $77
	ld   [hl], a                                     ; $7a4b: $77
	adc  b                                           ; $7a4c: $88
	sbc  c                                           ; $7a4d: $99
	xor  d                                           ; $7a4e: $aa
	xor  c                                           ; $7a4f: $a9
	sbc  c                                           ; $7a50: $99
	sbc  b                                           ; $7a51: $98
	ld   [hl], a                                     ; $7a52: $77
	ld   h, [hl]                                     ; $7a53: $66
	ld   h, [hl]                                     ; $7a54: $66
	ld   h, [hl]                                     ; $7a55: $66
	ld   [hl], a                                     ; $7a56: $77
	adc  c                                           ; $7a57: $89
	sbc  c                                           ; $7a58: $99
	xor  d                                           ; $7a59: $aa
	xor  d                                           ; $7a5a: $aa
	xor  c                                           ; $7a5b: $a9
	sbc  b                                           ; $7a5c: $98
	ld   [hl], a                                     ; $7a5d: $77
	ld   h, [hl]                                     ; $7a5e: $66
	ld   d, l                                        ; $7a5f: $55
	ld   h, [hl]                                     ; $7a60: $66
	ld   h, a                                        ; $7a61: $67
	adc  c                                           ; $7a62: $89
	sbc  c                                           ; $7a63: $99
	xor  d                                           ; $7a64: $aa
	xor  d                                           ; $7a65: $aa
	xor  d                                           ; $7a66: $aa
	sbc  c                                           ; $7a67: $99
	ld   [hl], a                                     ; $7a68: $77
	ld   h, [hl]                                     ; $7a69: $66
	ld   d, l                                        ; $7a6a: $55
	ld   h, [hl]                                     ; $7a6b: $66
	ld   h, a                                        ; $7a6c: $67
	ld   a, c                                        ; $7a6d: $79
	sbc  c                                           ; $7a6e: $99
	xor  d                                           ; $7a6f: $aa
	cp   d                                           ; $7a70: $ba
	cp   d                                           ; $7a71: $ba
	sbc  c                                           ; $7a72: $99
	ld   [hl], a                                     ; $7a73: $77
	ld   h, [hl]                                     ; $7a74: $66
	ld   d, l                                        ; $7a75: $55
	ld   h, [hl]                                     ; $7a76: $66
	ld   h, a                                        ; $7a77: $67
	ld   a, c                                        ; $7a78: $79
	sbc  c                                           ; $7a79: $99
	xor  e                                           ; $7a7a: $ab
	cp   e                                           ; $7a7b: $bb
	cp   d                                           ; $7a7c: $ba
	sbc  c                                           ; $7a7d: $99
	ld   [hl], a                                     ; $7a7e: $77
	ld   h, l                                        ; $7a7f: $65
	ld   d, l                                        ; $7a80: $55
	ld   h, [hl]                                     ; $7a81: $66
	ld   h, a                                        ; $7a82: $67
	ld   a, c                                        ; $7a83: $79
	sbc  c                                           ; $7a84: $99
	xor  e                                           ; $7a85: $ab
	cp   e                                           ; $7a86: $bb
	cp   d                                           ; $7a87: $ba
	xor  b                                           ; $7a88: $a8
	ld   [hl], a                                     ; $7a89: $77
	ld   h, [hl]                                     ; $7a8a: $66
	ld   d, l                                        ; $7a8b: $55
	ld   h, [hl]                                     ; $7a8c: $66
	ld   h, a                                        ; $7a8d: $67
	ld   a, c                                        ; $7a8e: $79
	sbc  c                                           ; $7a8f: $99
	xor  e                                           ; $7a90: $ab
	cp   e                                           ; $7a91: $bb
	cp   d                                           ; $7a92: $ba
	xor  b                                           ; $7a93: $a8
	add  a                                           ; $7a94: $87
	ld   h, [hl]                                     ; $7a95: $66
	ld   d, l                                        ; $7a96: $55
	ld   h, [hl]                                     ; $7a97: $66
	ld   h, a                                        ; $7a98: $67
	ld   a, b                                        ; $7a99: $78
	sbc  c                                           ; $7a9a: $99
	xor  e                                           ; $7a9b: $ab
	cp   e                                           ; $7a9c: $bb
	cp   d                                           ; $7a9d: $ba
	xor  b                                           ; $7a9e: $a8
	add  a                                           ; $7a9f: $87
	ld   h, [hl]                                     ; $7aa0: $66
	ld   d, l                                        ; $7aa1: $55
	ld   h, [hl]                                     ; $7aa2: $66
	ld   h, [hl]                                     ; $7aa3: $66
	ld   a, b                                        ; $7aa4: $78
	sbc  c                                           ; $7aa5: $99
	xor  e                                           ; $7aa6: $ab
	cp   e                                           ; $7aa7: $bb
	cp   d                                           ; $7aa8: $ba
	sbc  c                                           ; $7aa9: $99
	add  a                                           ; $7aaa: $87
	ld   h, l                                        ; $7aab: $65
	ld   d, l                                        ; $7aac: $55
	ld   d, [hl]                                     ; $7aad: $56
	ld   h, [hl]                                     ; $7aae: $66
	ld   a, b                                        ; $7aaf: $78
	sbc  c                                           ; $7ab0: $99
	xor  e                                           ; $7ab1: $ab
	cp   e                                           ; $7ab2: $bb
	cp   e                                           ; $7ab3: $bb
	sbc  c                                           ; $7ab4: $99
	add  a                                           ; $7ab5: $87
	ld   h, l                                        ; $7ab6: $65
	ld   d, l                                        ; $7ab7: $55
	ld   d, [hl]                                     ; $7ab8: $56
	ld   h, [hl]                                     ; $7ab9: $66
	ld   a, b                                        ; $7aba: $78
	sbc  c                                           ; $7abb: $99
	xor  e                                           ; $7abc: $ab
	xor  d                                           ; $7abd: $aa
	xor  e                                           ; $7abe: $ab
	sbc  c                                           ; $7abf: $99
	add  a                                           ; $7ac0: $87
	ld   h, l                                        ; $7ac1: $65
	ld   d, l                                        ; $7ac2: $55
	ld   d, [hl]                                     ; $7ac3: $56
	ld   h, [hl]                                     ; $7ac4: $66
	ld   a, b                                        ; $7ac5: $78
	sbc  c                                           ; $7ac6: $99
	xor  e                                           ; $7ac7: $ab
	xor  d                                           ; $7ac8: $aa
	xor  e                                           ; $7ac9: $ab
	sbc  c                                           ; $7aca: $99
	add  a                                           ; $7acb: $87
	ld   h, [hl]                                     ; $7acc: $66
	ld   d, l                                        ; $7acd: $55
	ld   d, [hl]                                     ; $7ace: $56
	ld   h, [hl]                                     ; $7acf: $66
	ld   a, b                                        ; $7ad0: $78
	sbc  c                                           ; $7ad1: $99
	xor  e                                           ; $7ad2: $ab
	xor  d                                           ; $7ad3: $aa
	xor  e                                           ; $7ad4: $ab
	sbc  c                                           ; $7ad5: $99
	add  a                                           ; $7ad6: $87
	ld   h, [hl]                                     ; $7ad7: $66
	ld   d, l                                        ; $7ad8: $55
	ld   d, [hl]                                     ; $7ad9: $56
	ld   h, [hl]                                     ; $7ada: $66
	ld   a, b                                        ; $7adb: $78
	sbc  d                                           ; $7adc: $9a
	xor  e                                           ; $7add: $ab
	xor  d                                           ; $7ade: $aa
	xor  e                                           ; $7adf: $ab
	xor  c                                           ; $7ae0: $a9
	add  a                                           ; $7ae1: $87
	ld   h, [hl]                                     ; $7ae2: $66
	ld   d, l                                        ; $7ae3: $55
	ld   d, [hl]                                     ; $7ae4: $56
	ld   h, [hl]                                     ; $7ae5: $66
	ld   a, b                                        ; $7ae6: $78
	adc  d                                           ; $7ae7: $8a
	xor  e                                           ; $7ae8: $ab
	xor  d                                           ; $7ae9: $aa
	xor  e                                           ; $7aea: $ab
	xor  c                                           ; $7aeb: $a9
	add  a                                           ; $7aec: $87
	ld   h, [hl]                                     ; $7aed: $66
	ld   d, l                                        ; $7aee: $55
	ld   d, [hl]                                     ; $7aef: $56
	ld   h, [hl]                                     ; $7af0: $66
	ld   [hl], a                                     ; $7af1: $77
	adc  d                                           ; $7af2: $8a
	xor  e                                           ; $7af3: $ab
	xor  d                                           ; $7af4: $aa
	xor  d                                           ; $7af5: $aa
	xor  c                                           ; $7af6: $a9
	sub  a                                           ; $7af7: $97
	ld   h, [hl]                                     ; $7af8: $66
	ld   d, l                                        ; $7af9: $55
	ld   d, l                                        ; $7afa: $55
	ld   h, [hl]                                     ; $7afb: $66
	ld   [hl], a                                     ; $7afc: $77
	adc  d                                           ; $7afd: $8a
	xor  e                                           ; $7afe: $ab
	xor  d                                           ; $7aff: $aa
	xor  d                                           ; $7b00: $aa
	xor  d                                           ; $7b01: $aa
	sub  a                                           ; $7b02: $97
	ld   h, [hl]                                     ; $7b03: $66
	ld   d, l                                        ; $7b04: $55
	ld   d, l                                        ; $7b05: $55
	ld   h, [hl]                                     ; $7b06: $66
	ld   [hl], a                                     ; $7b07: $77
	adc  d                                           ; $7b08: $8a
	xor  e                                           ; $7b09: $ab
	xor  d                                           ; $7b0a: $aa
	xor  d                                           ; $7b0b: $aa
	xor  c                                           ; $7b0c: $a9
	add  a                                           ; $7b0d: $87
	ld   h, [hl]                                     ; $7b0e: $66
	ld   d, l                                        ; $7b0f: $55
	ld   d, l                                        ; $7b10: $55
	ld   d, [hl]                                     ; $7b11: $56
	ld   [hl], a                                     ; $7b12: $77
	adc  d                                           ; $7b13: $8a
	xor  e                                           ; $7b14: $ab
	xor  d                                           ; $7b15: $aa
	xor  d                                           ; $7b16: $aa
	xor  d                                           ; $7b17: $aa
	sub  a                                           ; $7b18: $97
	ld   h, [hl]                                     ; $7b19: $66
	ld   d, l                                        ; $7b1a: $55
	ld   d, l                                        ; $7b1b: $55
	ld   d, [hl]                                     ; $7b1c: $56
	ld   [hl], a                                     ; $7b1d: $77
	adc  d                                           ; $7b1e: $8a
	xor  e                                           ; $7b1f: $ab
	xor  d                                           ; $7b20: $aa
	xor  d                                           ; $7b21: $aa
	xor  d                                           ; $7b22: $aa
	sub  a                                           ; $7b23: $97
	ld   h, [hl]                                     ; $7b24: $66
	ld   d, l                                        ; $7b25: $55
	ld   d, l                                        ; $7b26: $55
	ld   d, [hl]                                     ; $7b27: $56
	ld   [hl], a                                     ; $7b28: $77
	sbc  c                                           ; $7b29: $99
	xor  d                                           ; $7b2a: $aa
	cp   e                                           ; $7b2b: $bb
	xor  d                                           ; $7b2c: $aa
	xor  d                                           ; $7b2d: $aa
	sub  a                                           ; $7b2e: $97
	ld   h, [hl]                                     ; $7b2f: $66
	ld   d, l                                        ; $7b30: $55
	ld   d, l                                        ; $7b31: $55
	ld   d, [hl]                                     ; $7b32: $56
	ld   [hl], a                                     ; $7b33: $77
	sbc  d                                           ; $7b34: $9a
	xor  d                                           ; $7b35: $aa
	cp   e                                           ; $7b36: $bb
	cp   e                                           ; $7b37: $bb
	xor  d                                           ; $7b38: $aa
	sub  a                                           ; $7b39: $97
	ld   h, [hl]                                     ; $7b3a: $66
	ld   d, l                                        ; $7b3b: $55
	ld   d, l                                        ; $7b3c: $55
	ld   d, [hl]                                     ; $7b3d: $56
	ld   [hl], a                                     ; $7b3e: $77
	adc  c                                           ; $7b3f: $89
	xor  d                                           ; $7b40: $aa
	cp   e                                           ; $7b41: $bb
	cp   d                                           ; $7b42: $ba
	xor  d                                           ; $7b43: $aa
	sub  a                                           ; $7b44: $97
	ld   h, [hl]                                     ; $7b45: $66
	ld   d, l                                        ; $7b46: $55
	ld   d, l                                        ; $7b47: $55
	ld   h, [hl]                                     ; $7b48: $66
	ld   [hl], a                                     ; $7b49: $77
	adc  c                                           ; $7b4a: $89
	xor  d                                           ; $7b4b: $aa
	cp   e                                           ; $7b4c: $bb
	cp   d                                           ; $7b4d: $ba
	xor  d                                           ; $7b4e: $aa
	sub  a                                           ; $7b4f: $97
	ld   h, [hl]                                     ; $7b50: $66
	ld   d, l                                        ; $7b51: $55
	ld   d, l                                        ; $7b52: $55
	ld   h, [hl]                                     ; $7b53: $66
	ld   [hl], a                                     ; $7b54: $77
	adc  d                                           ; $7b55: $8a
	xor  e                                           ; $7b56: $ab
	xor  e                                           ; $7b57: $ab
	cp   d                                           ; $7b58: $ba
	xor  d                                           ; $7b59: $aa
	sub  a                                           ; $7b5a: $97
	ld   h, [hl]                                     ; $7b5b: $66
	ld   d, l                                        ; $7b5c: $55
	ld   d, l                                        ; $7b5d: $55
	ld   d, [hl]                                     ; $7b5e: $56
	ld   h, a                                        ; $7b5f: $67
	sbc  d                                           ; $7b60: $9a
	xor  e                                           ; $7b61: $ab
	xor  e                                           ; $7b62: $ab
	xor  d                                           ; $7b63: $aa
	cp   c                                           ; $7b64: $b9
	add  a                                           ; $7b65: $87
	ld   h, [hl]                                     ; $7b66: $66
	ld   d, l                                        ; $7b67: $55
	ld   d, l                                        ; $7b68: $55
	ld   h, [hl]                                     ; $7b69: $66
	ld   h, a                                        ; $7b6a: $67
	adc  c                                           ; $7b6b: $89
	xor  e                                           ; $7b6c: $ab
	xor  e                                           ; $7b6d: $ab
	cp   d                                           ; $7b6e: $ba
	cp   c                                           ; $7b6f: $b9
	sub  a                                           ; $7b70: $97
	halt                                             ; $7b71: $76
	ld   h, l                                        ; $7b72: $65
	ld   d, l                                        ; $7b73: $55
	ld   d, [hl]                                     ; $7b74: $56
	ld   h, a                                        ; $7b75: $67
	adc  c                                           ; $7b76: $89
	sbc  d                                           ; $7b77: $9a
	cp   d                                           ; $7b78: $ba
	cp   d                                           ; $7b79: $ba
	cp   d                                           ; $7b7a: $ba
	sbc  b                                           ; $7b7b: $98
	halt                                             ; $7b7c: $76
	ld   h, l                                        ; $7b7d: $65
	ld   d, l                                        ; $7b7e: $55
	ld   d, [hl]                                     ; $7b7f: $56
	ld   h, a                                        ; $7b80: $67
	adc  c                                           ; $7b81: $89
	sbc  d                                           ; $7b82: $9a
	xor  d                                           ; $7b83: $aa
	cp   d                                           ; $7b84: $ba
	xor  d                                           ; $7b85: $aa
	sbc  b                                           ; $7b86: $98
	halt                                             ; $7b87: $76
	ld   h, [hl]                                     ; $7b88: $66
	ld   d, l                                        ; $7b89: $55
	ld   d, [hl]                                     ; $7b8a: $56
	ld   h, a                                        ; $7b8b: $67
	ld   a, b                                        ; $7b8c: $78
	sbc  d                                           ; $7b8d: $9a
	cp   d                                           ; $7b8e: $ba
	xor  d                                           ; $7b8f: $aa
	cp   d                                           ; $7b90: $ba
	sbc  b                                           ; $7b91: $98
	halt                                             ; $7b92: $76
	ld   h, [hl]                                     ; $7b93: $66
	ld   d, l                                        ; $7b94: $55
	ld   d, [hl]                                     ; $7b95: $56
	ld   h, a                                        ; $7b96: $67
	ld   a, c                                        ; $7b97: $79
	sbc  d                                           ; $7b98: $9a
	cp   e                                           ; $7b99: $bb
	xor  d                                           ; $7b9a: $aa
	xor  d                                           ; $7b9b: $aa
	sbc  b                                           ; $7b9c: $98
	ld   h, [hl]                                     ; $7b9d: $66
	ld   h, [hl]                                     ; $7b9e: $66
	ld   d, l                                        ; $7b9f: $55
	ld   h, [hl]                                     ; $7ba0: $66
	ld   a, b                                        ; $7ba1: $78
	adc  c                                           ; $7ba2: $89
	sbc  d                                           ; $7ba3: $9a
	xor  d                                           ; $7ba4: $aa
	xor  c                                           ; $7ba5: $a9
	sbc  d                                           ; $7ba6: $9a
	sub  a                                           ; $7ba7: $97
	ld   h, [hl]                                     ; $7ba8: $66
	ld   [hl], a                                     ; $7ba9: $77
	ld   h, [hl]                                     ; $7baa: $66
	ld   a, b                                        ; $7bab: $78
	sbc  b                                           ; $7bac: $98
	sbc  c                                           ; $7bad: $99
	adc  c                                           ; $7bae: $89
	sbc  c                                           ; $7baf: $99
	xor  c                                           ; $7bb0: $a9
	sbc  b                                           ; $7bb1: $98
	ld   [hl], l                                     ; $7bb2: $75
	ld   b, h                                        ; $7bb3: $44
	ld   h, a                                        ; $7bb4: $67
	ld   a, b                                        ; $7bb5: $78
	xor  h                                           ; $7bb6: $ac
	cp   e                                           ; $7bb7: $bb
	xor  d                                           ; $7bb8: $aa
	sbc  b                                           ; $7bb9: $98
	sbc  c                                           ; $7bba: $99
	add  a                                           ; $7bbb: $87
	ld   h, [hl]                                     ; $7bbc: $66
	ld   d, e                                        ; $7bbd: $53
	inc  h                                           ; $7bbe: $24
	ld   a, b                                        ; $7bbf: $78
	adc  c                                           ; $7bc0: $89
	call z, $a9ba                                    ; $7bc1: $cc $ba $a9
	add  a                                           ; $7bc4: $87
	adc  c                                           ; $7bc5: $89
	add  a                                           ; $7bc6: $87
	ld   h, [hl]                                     ; $7bc7: $66
	ld   b, d                                        ; $7bc8: $42
	dec  [hl]                                        ; $7bc9: $35
	sbc  d                                           ; $7bca: $9a
	sbc  d                                           ; $7bcb: $9a
	call $a8ca                                       ; $7bcc: $cd $ca $a8
	ld   [hl], a                                     ; $7bcf: $77
	sbc  c                                           ; $7bd0: $99
	add  a                                           ; $7bd1: $87
	ld   h, l                                        ; $7bd2: $65
	ld   b, d                                        ; $7bd3: $42
	dec  [hl]                                        ; $7bd4: $35
	sbc  e                                           ; $7bd5: $9b
	xor  e                                           ; $7bd6: $ab
	call z, $97a9                                    ; $7bd7: $cc $a9 $97
	ld   [hl], a                                     ; $7bda: $77
	sbc  d                                           ; $7bdb: $9a
	sub  a                                           ; $7bdc: $97
	ld   h, h                                        ; $7bdd: $64
	ld   [hl-], a                                    ; $7bde: $32
	ld   [hl], $bc                                   ; $7bdf: $36 $bc
	cp   e                                           ; $7be1: $bb
	db   $db                                         ; $7be2: $db
	xor  b                                           ; $7be3: $a8
	ld   [hl], a                                     ; $7be4: $77
	ld   a, b                                        ; $7be5: $78
	xor  d                                           ; $7be6: $aa
	add  [hl]                                        ; $7be7: $86
	ld   d, e                                        ; $7be8: $53
	ld   [hl+], a                                    ; $7be9: $22
	add  hl, sp                                      ; $7bea: $39
	call z, $cacb                                    ; $7beb: $cc $cb $ca
	add  a                                           ; $7bee: $87
	ld   [hl], a                                     ; $7bef: $77
	ld   a, c                                        ; $7bf0: $79
	cp   d                                           ; $7bf1: $ba
	ld   [hl], l                                     ; $7bf2: $75
	ld   b, e                                        ; $7bf3: $43
	ld   [hl+], a                                    ; $7bf4: $22
	ld   e, d                                        ; $7bf5: $5a
	call c, $c9cb                                    ; $7bf6: $dc $cb $c9
	halt                                             ; $7bf9: $76

Call_0c9_7bfa:
	ld   [hl], a                                     ; $7bfa: $77
	adc  d                                           ; $7bfb: $8a
	xor  c                                           ; $7bfc: $a9
	ld   h, h                                        ; $7bfd: $64
	ld   [hl-], a                                    ; $7bfe: $32
	inc  hl                                          ; $7bff: $23
	ld   a, l                                        ; $7c00: $7d
	db   $ec                                         ; $7c01: $ec
	cp   e                                           ; $7c02: $bb
	xor  b                                           ; $7c03: $a8
	ld   h, [hl]                                     ; $7c04: $66
	ld   a, b                                        ; $7c05: $78
	sbc  d                                           ; $7c06: $9a
	xor  b                                           ; $7c07: $a8
	ld   d, e                                        ; $7c08: $53
	ld   [hl-], a                                    ; $7c09: $32
	inc  h                                           ; $7c0a: $24
	xor  [hl]                                        ; $7c0b: $ae
	db   $ec                                         ; $7c0c: $ec
	cp   e                                           ; $7c0d: $bb
	and  a                                           ; $7c0e: $a7
	ld   h, [hl]                                     ; $7c0f: $66
	adc  d                                           ; $7c10: $8a
	cp   d                                           ; $7c11: $ba
	sub  [hl]                                        ; $7c12: $96
	ld   [hl-], a                                    ; $7c13: $32
	ld   [hl+], a                                    ; $7c14: $22
	ld   [hl], $df                                   ; $7c15: $36 $df
	db   $eb                                         ; $7c17: $eb
	xor  d                                           ; $7c18: $aa
	sub  [hl]                                        ; $7c19: $96
	ld   h, a                                        ; $7c1a: $67
	xor  d                                           ; $7c1b: $aa
	xor  c                                           ; $7c1c: $a9
	ld   [hl], l                                     ; $7c1d: $75
	ld   [hl+], a                                    ; $7c1e: $22
	inc  hl                                          ; $7c1f: $23
	ld   e, c                                        ; $7c20: $59
	rst  $38                                         ; $7c21: $ff
	jp   z, Jump_0c9_769a                            ; $7c22: $ca $9a $76

	ld   l, b                                        ; $7c25: $68
	xor  e                                           ; $7c26: $ab
	cp   b                                           ; $7c27: $b8
	ld   h, e                                        ; $7c28: $63
	ld   [hl+], a                                    ; $7c29: $22
	inc  hl                                          ; $7c2a: $23
	ld   l, l                                        ; $7c2b: $6d
	cp   $b9                                         ; $7c2c: $fe $b9
	sbc  c                                           ; $7c2e: $99
	halt                                             ; $7c2f: $76
	ld   a, e                                        ; $7c30: $7b
	cp   e                                           ; $7c31: $bb
	and  [hl]                                        ; $7c32: $a6
	ld   b, d                                        ; $7c33: $42
	ld   [hl+], a                                    ; $7c34: $22
	inc  h                                           ; $7c35: $24
	xor  a                                           ; $7c36: $af
	db   $fd                                         ; $7c37: $fd
	xor  c                                           ; $7c38: $a9
	sub  a                                           ; $7c39: $97
	ld   [hl], a                                     ; $7c3a: $77
	sbc  e                                           ; $7c3b: $9b
	cp   d                                           ; $7c3c: $ba
	ld   [hl], h                                     ; $7c3d: $74
	ld   [hl+], a                                    ; $7c3e: $22
	inc  hl                                          ; $7c3f: $23
	scf                                              ; $7c40: $37
	rst  $28                                         ; $7c41: $ef
	ld   a, [$9789]                                  ; $7c42: $fa $89 $97
	ld   a, b                                        ; $7c45: $78
	xor  e                                           ; $7c46: $ab
	cp   c                                           ; $7c47: $b9
	ld   h, e                                        ; $7c48: $63
	ld   [hl+], a                                    ; $7c49: $22
	inc  hl                                          ; $7c4a: $23
	ld   c, d                                        ; $7c4b: $4a
	rst  $38                                         ; $7c4c: $ff
	reti                                             ; $7c4d: $d9


	ld   a, c                                        ; $7c4e: $79
	add  a                                           ; $7c4f: $87
	ld   a, c                                        ; $7c50: $79
	cp   e                                           ; $7c51: $bb
	and  [hl]                                        ; $7c52: $a6
	ld   b, d                                        ; $7c53: $42
	inc  hl                                          ; $7c54: $23
	inc  h                                           ; $7c55: $24
	ld   a, a                                        ; $7c56: $7f
	cp   $a7                                         ; $7c57: $fe $a7
	sbc  b                                           ; $7c59: $98
	add  a                                           ; $7c5a: $87
	adc  e                                           ; $7c5b: $8b
	cp   e                                           ; $7c5c: $bb
	ld   [hl], h                                     ; $7c5d: $74
	ld   [hl-], a                                    ; $7c5e: $32
	ld   [hl-], a                                    ; $7c5f: $32
	dec  [hl]                                        ; $7c60: $35
	cp   a                                           ; $7c61: $bf
	db   $fc                                         ; $7c62: $fc
	ld   [hl], a                                     ; $7c63: $77
	sbc  b                                           ; $7c64: $98
	ld   [hl], a                                     ; $7c65: $77
	xor  h                                           ; $7c66: $ac
	jp   z, $2263                                    ; $7c67: $ca $63 $22

	ld   [hl-], a                                    ; $7c6a: $32
	scf                                              ; $7c6b: $37
	rst  $38                                         ; $7c6c: $ff
	ld   [$8878], a                                  ; $7c6d: $ea $78 $88
	ld   a, b                                        ; $7c70: $78
	call z, $43a7                                    ; $7c71: $cc $a7 $43
	inc  hl                                          ; $7c74: $23
	inc  hl                                          ; $7c75: $23
	ld   e, h                                        ; $7c76: $5c
	rst  $38                                         ; $7c77: $ff
	or   a                                           ; $7c78: $b7
	ld   a, c                                        ; $7c79: $79
	sub  a                                           ; $7c7a: $97
	ld   a, c                                        ; $7c7b: $79
	cp   h                                           ; $7c7c: $bc
	sub  l                                           ; $7c7d: $95
	ld   [hl-], a                                    ; $7c7e: $32
	inc  hl                                          ; $7c7f: $23
	inc  hl                                          ; $7c80: $23
	adc  a                                           ; $7c81: $8f
	cp   $97                                         ; $7c82: $fe $97
	adc  c                                           ; $7c84: $89
	add  a                                           ; $7c85: $87
	sbc  e                                           ; $7c86: $9b
	bit  6, e                                        ; $7c87: $cb $73
	ld   [hl+], a                                    ; $7c89: $22
	ld   [hl+], a                                    ; $7c8a: $22
	dec  h                                           ; $7c8b: $25
	rst  $28                                         ; $7c8c: $ef
	ld   a, [$9879]                                  ; $7c8d: $fa $79 $98
	ld   [hl], a                                     ; $7c90: $77
	cp   h                                           ; $7c91: $bc
	ret  z                                           ; $7c92: $c8

	ld   b, d                                        ; $7c93: $42
	inc  de                                          ; $7c94: $13
	ld   [hl+], a                                    ; $7c95: $22
	ld   e, h                                        ; $7c96: $5c
	rst  $38                                         ; $7c97: $ff
	ret  c                                           ; $7c98: $d8

	ld   a, b                                        ; $7c99: $78
	add  a                                           ; $7c9a: $87
	ld   l, c                                        ; $7c9b: $69
	cp   l                                           ; $7c9c: $bd
	and  l                                           ; $7c9d: $a5
	ld   [hl-], a                                    ; $7c9e: $32
	ld   [hl+], a                                    ; $7c9f: $22
	inc  hl                                          ; $7ca0: $23
	adc  a                                           ; $7ca1: $8f
	cp   $97                                         ; $7ca2: $fe $97
	sbc  b                                           ; $7ca4: $98
	add  [hl]                                        ; $7ca5: $86
	adc  e                                           ; $7ca6: $8b
	bit  4, e                                        ; $7ca7: $cb $63
	ld   de, $3722                                   ; $7ca9: $11 $22 $37
	rst  $28                                         ; $7cac: $ef
	ei                                               ; $7cad: $fb
	ld   a, c                                        ; $7cae: $79
	sbc  b                                           ; $7caf: $98
	ld   [hl], a                                     ; $7cb0: $77
	xor  e                                           ; $7cb1: $ab
	or   a                                           ; $7cb2: $b7
	ld   b, e                                        ; $7cb3: $43
	ld   [de], a                                     ; $7cb4: $12
	inc  hl                                          ; $7cb5: $23
	ld   l, l                                        ; $7cb6: $6d
	rst  $38                                         ; $7cb7: $ff
	ret  z                                           ; $7cb8: $c8

	sbc  c                                           ; $7cb9: $99
	add  a                                           ; $7cba: $87
	ld   l, c                                        ; $7cbb: $69
	call z, $2194                                    ; $7cbc: $cc $94 $21
	ld   de, $bf25                                   ; $7cbf: $11 $25 $bf
	cp   $98                                         ; $7cc2: $fe $98
	sbc  b                                           ; $7cc4: $98
	ld   [hl], l                                     ; $7cc5: $75
	sbc  h                                           ; $7cc6: $9c
	ret                                              ; $7cc7: $c9


	ld   d, e                                        ; $7cc8: $53
	ld   hl, $5a12                                   ; $7cc9: $21 $12 $5a
	rst  $38                                         ; $7ccc: $ff
	db   $db                                         ; $7ccd: $db
	sbc  d                                           ; $7cce: $9a
	add  a                                           ; $7ccf: $87
	ld   d, a                                        ; $7cd0: $57
	xor  h                                           ; $7cd1: $ac
	and  [hl]                                        ; $7cd2: $a6
	ld   b, d                                        ; $7cd3: $42
	ld   de, $9f13                                   ; $7cd4: $11 $13 $9f
	cp   $ca                                         ; $7cd7: $fe $ca
	xor  b                                           ; $7cd9: $a8
	ld   [hl], l                                     ; $7cda: $75
	ld   a, d                                        ; $7cdb: $7a
	bit  4, e                                        ; $7cdc: $cb $63
	ld   hl, $4912                                   ; $7cde: $21 $12 $49
	rst  $38                                         ; $7ce1: $ff
	ei                                               ; $7ce2: $fb
	xor  e                                           ; $7ce3: $ab
	sub  a                                           ; $7ce4: $97
	ld   d, [hl]                                     ; $7ce5: $56
	sbc  d                                           ; $7ce6: $9a
	and  a                                           ; $7ce7: $a7
	ld   b, d                                        ; $7ce8: $42
	ld   de, $9f14                                   ; $7ce9: $11 $14 $9f
	cp   $cb                                         ; $7cec: $fe $cb
	ret                                              ; $7cee: $c9


	ld   [hl], l                                     ; $7cef: $75
	ld   l, c                                        ; $7cf0: $69
	cp   d                                           ; $7cf1: $ba
	ld   [hl], h                                     ; $7cf2: $74
	ld   sp, $3811                                   ; $7cf3: $31 $11 $38
	rst  $28                                         ; $7cf6: $ef
	db   $ec                                         ; $7cf7: $ec
	cp   e                                           ; $7cf8: $bb
	and  a                                           ; $7cf9: $a7
	ld   h, l                                        ; $7cfa: $65
	sbc  c                                           ; $7cfb: $99
	cp   b                                           ; $7cfc: $b8
	ld   d, e                                        ; $7cfd: $53
	ld   de, $8d13                                   ; $7cfe: $11 $13 $8d
	db   $fd                                         ; $7d01: $fd
	call $86da                                       ; $7d02: $cd $da $86
	ld   l, b                                        ; $7d05: $68
	sbc  d                                           ; $7d06: $9a
	add  l                                           ; $7d07: $85
	ld   [hl-], a                                    ; $7d08: $32
	ld   de, $ce37                                   ; $7d09: $11 $37 $ce
	call c, $b8dd                                    ; $7d0c: $dc $dd $b8
	ld   h, [hl]                                     ; $7d0f: $66
	ld   a, b                                        ; $7d10: $78
	sbc  b                                           ; $7d11: $98
	ld   h, e                                        ; $7d12: $63
	ld   hl, $6b13                                   ; $7d13: $21 $13 $6b
	db   $dd                                         ; $7d16: $dd
	call $a7dc                                       ; $7d17: $cd $dc $a7
	ld   h, a                                        ; $7d1a: $67
	sbc  c                                           ; $7d1b: $99
	add  [hl]                                        ; $7d1c: $86
	ld   b, d                                        ; $7d1d: $42
	ld   de, $bc36                                   ; $7d1e: $11 $36 $bc
	call c, $cbdd                                    ; $7d21: $dc $dd $cb
	add  a                                           ; $7d24: $87
	ld   [hl], a                                     ; $7d25: $77
	sbc  b                                           ; $7d26: $98
	ld   [hl], l                                     ; $7d27: $75
	ld   sp, $5a12                                   ; $7d28: $31 $12 $5a
	call z, $edcd                                    ; $7d2b: $cc $cd $ed
	cp   c                                           ; $7d2e: $b9
	adc  b                                           ; $7d2f: $88
	ld   a, c                                        ; $7d30: $79
	add  a                                           ; $7d31: $87
	ld   d, h                                        ; $7d32: $54
	ld   hl, $9c24                                   ; $7d33: $21 $24 $9c
	cp   e                                           ; $7d36: $bb
	call $a8db                                       ; $7d37: $cd $db $a8
	sbc  b                                           ; $7d3a: $98
	adc  b                                           ; $7d3b: $88
	halt                                             ; $7d3c: $76
	ld   d, h                                        ; $7d3d: $54
	ld   [hl+], a                                    ; $7d3e: $22
	ld   b, a                                        ; $7d3f: $47
	xor  d                                           ; $7d40: $aa
	xor  e                                           ; $7d41: $ab
	call z, $a8cb                                    ; $7d42: $cc $cb $a8
	adc  b                                           ; $7d45: $88
	sbc  b                                           ; $7d46: $98
	halt                                             ; $7d47: $76
	ld   d, h                                        ; $7d48: $54
	ld   b, h                                        ; $7d49: $44
	ld   l, c                                        ; $7d4a: $69
	xor  c                                           ; $7d4b: $a9
	sbc  c                                           ; $7d4c: $99
	cp   e                                           ; $7d4d: $bb
	cp   d                                           ; $7d4e: $ba
	sbc  b                                           ; $7d4f: $98
	sbc  c                                           ; $7d50: $99
	adc  c                                           ; $7d51: $89
	halt                                             ; $7d52: $76
	ld   h, [hl]                                     ; $7d53: $66
	ld   h, [hl]                                     ; $7d54: $66
	ld   a, b                                        ; $7d55: $78
	sbc  b                                           ; $7d56: $98
	ld   [hl], a                                     ; $7d57: $77
	sbc  b                                           ; $7d58: $98
	adc  b                                           ; $7d59: $88
	adc  b                                           ; $7d5a: $88
	adc  b                                           ; $7d5b: $88
	sbc  c                                           ; $7d5c: $99
	sbc  c                                           ; $7d5d: $99
	adc  c                                           ; $7d5e: $89
	sbc  b                                           ; $7d5f: $98
	sbc  c                                           ; $7d60: $99
	sbc  c                                           ; $7d61: $99
	halt                                             ; $7d62: $76
	ld   [hl], a                                     ; $7d63: $77
	halt                                             ; $7d64: $76
	ld   h, a                                        ; $7d65: $67
	ld   [hl], a                                     ; $7d66: $77
	adc  b                                           ; $7d67: $88
	sbc  c                                           ; $7d68: $99
	sbc  d                                           ; $7d69: $9a
	xor  d                                           ; $7d6a: $aa
	sbc  d                                           ; $7d6b: $9a
	sbc  c                                           ; $7d6c: $99
	adc  b                                           ; $7d6d: $88
	ld   [hl], a                                     ; $7d6e: $77
	ld   h, [hl]                                     ; $7d6f: $66
	ld   h, [hl]                                     ; $7d70: $66
	ld   h, [hl]                                     ; $7d71: $66
	ld   [hl], a                                     ; $7d72: $77
	adc  c                                           ; $7d73: $89
	sbc  c                                           ; $7d74: $99
	xor  d                                           ; $7d75: $aa
	xor  d                                           ; $7d76: $aa
	xor  c                                           ; $7d77: $a9
	xor  c                                           ; $7d78: $a9
	adc  b                                           ; $7d79: $88
	ld   [hl], a                                     ; $7d7a: $77
	ld   h, [hl]                                     ; $7d7b: $66
	ld   h, [hl]                                     ; $7d7c: $66
	ld   h, [hl]                                     ; $7d7d: $66
	ld   [hl], a                                     ; $7d7e: $77
	adc  b                                           ; $7d7f: $88
	adc  c                                           ; $7d80: $89
	xor  c                                           ; $7d81: $a9
	xor  d                                           ; $7d82: $aa
	xor  c                                           ; $7d83: $a9
	xor  c                                           ; $7d84: $a9
	adc  b                                           ; $7d85: $88
	ld   [hl], a                                     ; $7d86: $77
	halt                                             ; $7d87: $76
	ld   h, [hl]                                     ; $7d88: $66
	ld   h, [hl]                                     ; $7d89: $66
	ld   [hl], a                                     ; $7d8a: $77
	ld   a, b                                        ; $7d8b: $78
	adc  b                                           ; $7d8c: $88
	sbc  d                                           ; $7d8d: $9a
	sbc  c                                           ; $7d8e: $99
	sbc  c                                           ; $7d8f: $99
	xor  c                                           ; $7d90: $a9
	adc  c                                           ; $7d91: $89
	adc  b                                           ; $7d92: $88
	ld   [hl], a                                     ; $7d93: $77
	ld   h, [hl]                                     ; $7d94: $66
	ld   h, [hl]                                     ; $7d95: $66
	ld   h, a                                        ; $7d96: $67
	ld   [hl], a                                     ; $7d97: $77
	adc  c                                           ; $7d98: $89
	sbc  c                                           ; $7d99: $99
	xor  d                                           ; $7d9a: $aa
	xor  d                                           ; $7d9b: $aa
	sbc  c                                           ; $7d9c: $99
	sbc  b                                           ; $7d9d: $98
	sbc  b                                           ; $7d9e: $98
	ld   [hl], a                                     ; $7d9f: $77
	halt                                             ; $7da0: $76
	ld   h, [hl]                                     ; $7da1: $66
	ld   [hl], a                                     ; $7da2: $77
	ld   [hl], a                                     ; $7da3: $77
	adc  b                                           ; $7da4: $88
	sbc  b                                           ; $7da5: $98
	adc  c                                           ; $7da6: $89
	sbc  d                                           ; $7da7: $9a
	xor  c                                           ; $7da8: $a9
	sbc  c                                           ; $7da9: $99
	sbc  b                                           ; $7daa: $98
	add  a                                           ; $7dab: $87
	ld   [hl], a                                     ; $7dac: $77
	ld   [hl], a                                     ; $7dad: $77
	ld   [hl], a                                     ; $7dae: $77
	ld   [hl], a                                     ; $7daf: $77
	ld   a, b                                        ; $7db0: $78
	adc  c                                           ; $7db1: $89
	adc  c                                           ; $7db2: $89
	sbc  c                                           ; $7db3: $99
	sbc  c                                           ; $7db4: $99
	sbc  b                                           ; $7db5: $98
	sbc  b                                           ; $7db6: $98
	add  a                                           ; $7db7: $87
	ld   [hl], a                                     ; $7db8: $77
	ld   [hl], a                                     ; $7db9: $77
	ld   [hl], a                                     ; $7dba: $77
	ld   [hl], a                                     ; $7dbb: $77
	ld   a, b                                        ; $7dbc: $78
	adc  c                                           ; $7dbd: $89
	sbc  b                                           ; $7dbe: $98
	sbc  c                                           ; $7dbf: $99
	sbc  c                                           ; $7dc0: $99
	adc  b                                           ; $7dc1: $88
	sbc  c                                           ; $7dc2: $99
	adc  b                                           ; $7dc3: $88
	add  a                                           ; $7dc4: $87
	ld   [hl], a                                     ; $7dc5: $77
	ld   [hl], a                                     ; $7dc6: $77
	ld   [hl], a                                     ; $7dc7: $77
	ld   a, b                                        ; $7dc8: $78
	adc  b                                           ; $7dc9: $88
	sbc  c                                           ; $7dca: $99
	sbc  b                                           ; $7dcb: $98
	adc  b                                           ; $7dcc: $88
	adc  b                                           ; $7dcd: $88
	sbc  c                                           ; $7dce: $99
	sbc  b                                           ; $7dcf: $98
	adc  b                                           ; $7dd0: $88
	ld   [hl], a                                     ; $7dd1: $77
	ld   [hl], a                                     ; $7dd2: $77
	ld   [hl], a                                     ; $7dd3: $77
	ld   [hl], a                                     ; $7dd4: $77
	adc  b                                           ; $7dd5: $88
	adc  b                                           ; $7dd6: $88
	adc  c                                           ; $7dd7: $89
	sbc  c                                           ; $7dd8: $99
	sbc  c                                           ; $7dd9: $99
	sbc  c                                           ; $7dda: $99
	sbc  b                                           ; $7ddb: $98
	adc  b                                           ; $7ddc: $88
	adc  b                                           ; $7ddd: $88
	adc  b                                           ; $7dde: $88
	ld   [hl], a                                     ; $7ddf: $77
	ld   [hl], a                                     ; $7de0: $77
	ld   a, b                                        ; $7de1: $78
	adc  b                                           ; $7de2: $88
	adc  b                                           ; $7de3: $88
	sbc  c                                           ; $7de4: $99
	sbc  c                                           ; $7de5: $99
	sbc  c                                           ; $7de6: $99
	sbc  b                                           ; $7de7: $98
	adc  b                                           ; $7de8: $88
	adc  b                                           ; $7de9: $88
	adc  b                                           ; $7dea: $88
	adc  b                                           ; $7deb: $88
	ld   [hl], a                                     ; $7dec: $77
	ld   [hl], a                                     ; $7ded: $77
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	adc  b                                           ; $7df0: $88
	adc  b                                           ; $7df1: $88
	sbc  c                                           ; $7df2: $99
	sbc  c                                           ; $7df3: $99
	sbc  c                                           ; $7df4: $99
	sbc  c                                           ; $7df5: $99
	adc  b                                           ; $7df6: $88
	adc  b                                           ; $7df7: $88
	adc  b                                           ; $7df8: $88
	add  a                                           ; $7df9: $87
	ld   [hl], a                                     ; $7dfa: $77
	adc  b                                           ; $7dfb: $88
	adc  b                                           ; $7dfc: $88
	adc  b                                           ; $7dfd: $88
	adc  b                                           ; $7dfe: $88
	adc  c                                           ; $7dff: $89
	sbc  c                                           ; $7e00: $99
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	adc  b                                           ; $7e05: $88
	ld   [hl], a                                     ; $7e06: $77
	ld   [hl], a                                     ; $7e07: $77
	ld   a, b                                        ; $7e08: $78
	adc  b                                           ; $7e09: $88
	adc  c                                           ; $7e0a: $89
	adc  c                                           ; $7e0b: $89
	sbc  c                                           ; $7e0c: $99
	adc  c                                           ; $7e0d: $89
	sbc  b                                           ; $7e0e: $98
	adc  c                                           ; $7e0f: $89
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	ld   [hl], a                                     ; $7e12: $77
	ld   [hl], a                                     ; $7e13: $77
	ld   [hl], a                                     ; $7e14: $77
	ld   [hl], a                                     ; $7e15: $77
	ld   a, b                                        ; $7e16: $78
	adc  c                                           ; $7e17: $89
	adc  c                                           ; $7e18: $89
	adc  c                                           ; $7e19: $89
	sbc  c                                           ; $7e1a: $99
	sbc  b                                           ; $7e1b: $98
	adc  b                                           ; $7e1c: $88
	add  a                                           ; $7e1d: $87
	ld   [hl], a                                     ; $7e1e: $77
	ld   [hl], a                                     ; $7e1f: $77
	ld   h, [hl]                                     ; $7e20: $66
	ld   [hl], a                                     ; $7e21: $77
	ld   a, b                                        ; $7e22: $78
	adc  c                                           ; $7e23: $89
	sbc  d                                           ; $7e24: $9a
	sbc  c                                           ; $7e25: $99
	xor  b                                           ; $7e26: $a8
	sbc  b                                           ; $7e27: $98
	ld   [hl], a                                     ; $7e28: $77
	sub  a                                           ; $7e29: $97
	ld   h, [hl]                                     ; $7e2a: $66
	ld   h, [hl]                                     ; $7e2b: $66
	ld   h, [hl]                                     ; $7e2c: $66
	ld   a, b                                        ; $7e2d: $78
	adc  b                                           ; $7e2e: $88
	xor  d                                           ; $7e2f: $aa
	xor  e                                           ; $7e30: $ab
	cp   e                                           ; $7e31: $bb
	cp   c                                           ; $7e32: $b9
	add  a                                           ; $7e33: $87
	ld   d, e                                        ; $7e34: $53
	ld   [hl], $54                                   ; $7e35: $36 $54
	ld   b, [hl]                                     ; $7e37: $46
	ld   [hl], a                                     ; $7e38: $77
	adc  e                                           ; $7e39: $8b
	cp   e                                           ; $7e3a: $bb
	xor  h                                           ; $7e3b: $ac
	db   $db                                         ; $7e3c: $db
	sbc  e                                           ; $7e3d: $9b
	xor  c                                           ; $7e3e: $a9
	ld   [hl], a                                     ; $7e3f: $77
	ld   d, c                                        ; $7e40: $51
	ld   de, $2665                                   ; $7e41: $11 $65 $26
	cp   h                                           ; $7e44: $bc
	adc  h                                           ; $7e45: $8c
	rst  $38                                         ; $7e46: $ff
	cp   h                                           ; $7e47: $bc
	db   $db                                         ; $7e48: $db
	ld   h, l                                        ; $7e49: $65
	sbc  b                                           ; $7e4a: $98
	ld   h, [hl]                                     ; $7e4b: $66
	ld   [hl], l                                     ; $7e4c: $75
	ld   de, $5416                                   ; $7e4d: $11 $16 $54
	sbc  l                                           ; $7e50: $9d
	jp   z, $fbff                                    ; $7e51: $ca $ff $fb

	res  0, l                                        ; $7e54: $cb $85
	ld   e, b                                        ; $7e56: $58
	ld   h, [hl]                                     ; $7e57: $66
	ld   [hl], a                                     ; $7e58: $77
	ld   hl, $8413                                   ; $7e59: $21 $13 $84
	ld   a, e                                        ; $7e5c: $7b
	db   $eb                                         ; $7e5d: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e5e: $cf
	db   $fc                                         ; $7e5f: $fc
	xor  h                                           ; $7e60: $ac
	add  [hl]                                        ; $7e61: $86
	ld   e, c                                        ; $7e62: $59
	add  [hl]                                        ; $7e63: $86
	add  a                                           ; $7e64: $87
	ld   b, c                                        ; $7e65: $41
	ld   de, $6b65                                   ; $7e66: $11 $65 $6b
	xor  $cf                                         ; $7e69: $ee $cf
	cp   $9a                                         ; $7e6b: $fe $9a
	and  [hl]                                        ; $7e6d: $a6
	ld   d, [hl]                                     ; $7e6e: $56
	sub  [hl]                                        ; $7e6f: $96
	adc  b                                           ; $7e70: $88
	ld   d, c                                        ; $7e71: $51
	ld   de, $5a36                                   ; $7e72: $11 $36 $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e75: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e76: $cf
	rst  $38                                         ; $7e77: $ff
	xor  b                                           ; $7e78: $a8
	and  [hl]                                        ; $7e79: $a6
	ld   d, [hl]                                     ; $7e7a: $56
	xor  b                                           ; $7e7b: $a8
	ld   a, b                                        ; $7e7c: $78
	ld   h, d                                        ; $7e7d: $62
	ld   de, $6816                                   ; $7e7e: $11 $16 $68
	rst  JumpTable                                         ; $7e81: $df
	xor  $ff                                         ; $7e82: $ee $ff
	and  a                                           ; $7e84: $a7
	sub  a                                           ; $7e85: $97
	ld   d, a                                        ; $7e86: $57
	sbc  d                                           ; $7e87: $9a
	ld   a, b                                        ; $7e88: $78
	ld   [hl], h                                     ; $7e89: $74
	ld   de, $6714                                   ; $7e8a: $11 $14 $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e8d: $cf
	cp   $ff                                         ; $7e8e: $fe $ff
	and  [hl]                                        ; $7e90: $a6
	add  a                                           ; $7e91: $87
	ld   d, [hl]                                     ; $7e92: $56
	xor  d                                           ; $7e93: $aa
	ld   [hl], a                                     ; $7e94: $77
	add  l                                           ; $7e95: $85
	ld   de, $6811                                   ; $7e96: $11 $11 $68
	cp   a                                           ; $7e99: $bf
	rst  $38                                         ; $7e9a: $ff
	rst  $38                                         ; $7e9b: $ff
	rst  ToBoot                                         ; $7e9c: $c7
	ld   l, b                                        ; $7e9d: $68
	ld   h, [hl]                                     ; $7e9e: $66
	xor  d                                           ; $7e9f: $aa
	and  [hl]                                        ; $7ea0: $a6
	halt                                             ; $7ea1: $76
	ld   sp, $3911                                   ; $7ea2: $31 $11 $39
	xor  [hl]                                        ; $7ea5: $ae
	rst  $38                                         ; $7ea6: $ff
	rst  $28                                         ; $7ea7: $ef
	ret  c                                           ; $7ea8: $d8

	ld   d, [hl]                                     ; $7ea9: $56
	add  [hl]                                        ; $7eaa: $86
	adc  h                                           ; $7eab: $8c
	ret  z                                           ; $7eac: $c8

	halt                                             ; $7ead: $76
	ld   b, c                                        ; $7eae: $41
	ld   de, $bd14                                   ; $7eaf: $11 $14 $bd
	rst  $38                                         ; $7eb2: $ff
	cp   $cb                                         ; $7eb3: $fe $cb
	add  l                                           ; $7eb5: $85
	ld   a, b                                        ; $7eb6: $78
	adc  c                                           ; $7eb7: $89
	bit  6, l                                        ; $7eb8: $cb $75
	ld   d, e                                        ; $7eba: $53
	ld   de, $5d11                                   ; $7ebb: $11 $11 $5d
	rst  $38                                         ; $7ebe: $ff
	rst  $38                                         ; $7ebf: $ff
	res  4, a                                        ; $7ec0: $cb $a7
	ld   e, b                                        ; $7ec2: $58
	sbc  c                                           ; $7ec3: $99
	xor  e                                           ; $7ec4: $ab
	and  [hl]                                        ; $7ec5: $a6
	ld   b, l                                        ; $7ec6: $45
	ld   b, c                                        ; $7ec7: $41
	ld   de, $cf16                                   ; $7ec8: $11 $16 $cf
	rst  $38                                         ; $7ecb: $ff
	db   $fc                                         ; $7ecc: $fc
	cp   d                                           ; $7ecd: $ba
	halt                                             ; $7ece: $76
	adc  c                                           ; $7ecf: $89
	xor  d                                           ; $7ed0: $aa
	cp   c                                           ; $7ed1: $b9
	ld   h, h                                        ; $7ed2: $64
	ld   b, h                                        ; $7ed3: $44
	ld   hl, $5c11                                   ; $7ed4: $21 $11 $5c
	db   $ed                                         ; $7ed7: $ed
	rst  $38                                         ; $7ed8: $ff
	ld   [$58a9], a                                  ; $7ed9: $ea $a9 $58
	sbc  d                                           ; $7edc: $9a
	sbc  d                                           ; $7edd: $9a
	and  [hl]                                        ; $7ede: $a6
	ld   d, h                                        ; $7edf: $54
	ld   sp, $1511                                   ; $7ee0: $31 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee3: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ee4: $cf
	db   $fc                                         ; $7ee5: $fc
	xor  d                                           ; $7ee6: $aa
	and  a                                           ; $7ee7: $a7
	adc  b                                           ; $7ee8: $88
	xor  c                                           ; $7ee9: $a9
	sub  a                                           ; $7eea: $97
	ld   h, l                                        ; $7eeb: $65
	ld   d, l                                        ; $7eec: $55
	ld   sp, $8b11                                   ; $7eed: $31 $11 $8b
	cp   l                                           ; $7ef0: $bd
	rst  $38                                         ; $7ef1: $ff
	cp   h                                           ; $7ef2: $bc
	ret  c                                           ; $7ef3: $d8

	ld   a, b                                        ; $7ef4: $78
	sbc  b                                           ; $7ef5: $98
	adc  c                                           ; $7ef6: $89
	ld   [hl], l                                     ; $7ef7: $75
	ld   b, h                                        ; $7ef8: $44
	ld   [hl+], a                                    ; $7ef9: $22
	ld   de, $ce4a                                   ; $7efa: $11 $4a $ce
	rst  $38                                         ; $7efd: $ff
	db   $db                                         ; $7efe: $db
	ret                                              ; $7eff: $c9


	sub  a                                           ; $7f00: $97
	sbc  b                                           ; $7f01: $98
	adc  c                                           ; $7f02: $89
	ld   [hl], a                                     ; $7f03: $77
	inc  hl                                          ; $7f04: $23
	ld   de, $7b11                                   ; $7f05: $11 $11 $7b
	call $cbff                                       ; $7f08: $cd $ff $cb
	ret                                              ; $7f0b: $c9


	ld   a, b                                        ; $7f0c: $78
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	ld   h, [hl]                                     ; $7f0f: $66
	ld   h, l                                        ; $7f10: $65
	ld   hl, $6911                                   ; $7f11: $21 $11 $69
	sbc  d                                           ; $7f14: $9a
	rst  $38                                         ; $7f15: $ff
	call z, Call_0c9_7bfa                            ; $7f16: $cc $fa $7b
	and  a                                           ; $7f19: $a7
	ld   a, c                                        ; $7f1a: $79
	ld   [hl], l                                     ; $7f1b: $75
	ld   h, [hl]                                     ; $7f1c: $66
	ld   hl, $3911                                   ; $7f1d: $21 $11 $39
	set  3, a                                        ; $7f20: $cb $df
	ei                                               ; $7f22: $fb
	res  0, a                                        ; $7f23: $cb $87
	adc  c                                           ; $7f25: $89
	add  a                                           ; $7f26: $87
	add  a                                           ; $7f27: $87
	ld   h, l                                        ; $7f28: $65
	ld   sp, $2b11                                   ; $7f29: $31 $11 $2b
	set  1, a                                        ; $7f2c: $cb $cf
	jp   hl                                          ; $7f2e: $e9


	call $a9a9                                       ; $7f2f: $cd $a9 $a9
	ld   [hl], a                                     ; $7f32: $77
	halt                                             ; $7f33: $76
	ld   d, h                                        ; $7f34: $54
	ld   b, d                                        ; $7f35: $42
	ld   hl, $b917                                   ; $7f36: $21 $17 $b9
	xor  a                                           ; $7f39: $af
	db   $fc                                         ; $7f3a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f3b: $cf
	add  a                                           ; $7f3c: $87
	sbc  c                                           ; $7f3d: $99
	ld   h, a                                        ; $7f3e: $67
	sub  a                                           ; $7f3f: $97
	add  a                                           ; $7f40: $87
	ld   h, d                                        ; $7f41: $62
	ld   de, $8915                                   ; $7f42: $11 $15 $89
	xor  l                                           ; $7f45: $ad
	db   $fd                                         ; $7f46: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f47: $cf
	xor  c                                           ; $7f48: $a9
	cp   d                                           ; $7f49: $ba
	add  a                                           ; $7f4a: $87
	sub  l                                           ; $7f4b: $95
	ld   d, [hl]                                     ; $7f4c: $56
	ld   h, e                                        ; $7f4d: $63
	ld   [de], a                                     ; $7f4e: $12
	ld   de, $7caa                                   ; $7f4f: $11 $aa $7c
	rst  $28                                         ; $7f52: $ef
	cp   [hl]                                        ; $7f53: $be
	ret  z                                           ; $7f54: $c8

	and  a                                           ; $7f55: $a7
	sub  a                                           ; $7f56: $97
	sbc  b                                           ; $7f57: $98
	ld   a, c                                        ; $7f58: $79
	ld   h, l                                        ; $7f59: $65
	ld   [hl+], a                                    ; $7f5a: $22
	ld   hl, $9628                                   ; $7f5b: $21 $28 $96
	cp   a                                           ; $7f5e: $bf
	ld   a, [$97ed]                                  ; $7f5f: $fa $ed $97
	bit  7, b                                        ; $7f62: $cb $78
	sub  l                                           ; $7f64: $95
	ld   b, [hl]                                     ; $7f65: $46
	ld   d, e                                        ; $7f66: $53
	inc  [hl]                                        ; $7f67: $34
	inc  h                                           ; $7f68: $24
	sbc  b                                           ; $7f69: $98
	adc  e                                           ; $7f6a: $8b
	db   $fd                                         ; $7f6b: $fd
	call c, $8ac9                                    ; $7f6c: $dc $c9 $8a
	sbc  d                                           ; $7f6f: $9a
	adc  c                                           ; $7f70: $89
	ld   h, l                                        ; $7f71: $65
	ld   d, h                                        ; $7f72: $54
	dec  [hl]                                        ; $7f73: $35
	ld   d, d                                        ; $7f74: $52
	inc  [hl]                                        ; $7f75: $34
	ld   l, d                                        ; $7f76: $6a
	cp   [hl]                                        ; $7f77: $be
	db   $ec                                         ; $7f78: $ec
	cp   e                                           ; $7f79: $bb
	jp   c, $989a                                    ; $7f7a: $da $9a $98

	ld   [hl], a                                     ; $7f7d: $77
	ld   b, [hl]                                     ; $7f7e: $46
	ld   h, d                                        ; $7f7f: $62
	dec  h                                           ; $7f80: $25
	ld   b, c                                        ; $7f81: $41
	ld   l, h                                        ; $7f82: $6c
	sbc  c                                           ; $7f83: $99
	rst  $38                                         ; $7f84: $ff
	xor  e                                           ; $7f85: $ab
	reti                                             ; $7f86: $d9


	sbc  e                                           ; $7f87: $9b
	sbc  b                                           ; $7f88: $98
	sbc  b                                           ; $7f89: $98
	ld   h, l                                        ; $7f8a: $65
	ld   h, l                                        ; $7f8b: $65
	inc  [hl]                                        ; $7f8c: $34
	ld   d, h                                        ; $7f8d: $54
	inc  h                                           ; $7f8e: $24
	adc  c                                           ; $7f8f: $89
	sbc  h                                           ; $7f90: $9c
	sbc  $cc                                         ; $7f91: $de $cc
	jp   z, $8988                                    ; $7f93: $ca $88 $89

	sbc  b                                           ; $7f96: $98
	add  a                                           ; $7f97: $87
	ld   d, e                                        ; $7f98: $53
	inc  [hl]                                        ; $7f99: $34
	inc  sp                                          ; $7f9a: $33
	ld   d, l                                        ; $7f9b: $55
	ld   a, h                                        ; $7f9c: $7c
	set  3, h                                        ; $7f9d: $cb $dc
	sbc  d                                           ; $7f9f: $9a
	ret                                              ; $7fa0: $c9


	sbc  d                                           ; $7fa1: $9a
	sub  a                                           ; $7fa2: $97
	sbc  b                                           ; $7fa3: $98
	ld   h, [hl]                                     ; $7fa4: $66
	ld   h, h                                        ; $7fa5: $64
	dec  [hl]                                        ; $7fa6: $35
	ld   b, d                                        ; $7fa7: $42
	ld   b, l                                        ; $7fa8: $45
	adc  e                                           ; $7fa9: $8b
	adc  $eb                                         ; $7faa: $ce $eb
	xor  h                                           ; $7fac: $ac
	and  a                                           ; $7fad: $a7
	xor  d                                           ; $7fae: $aa
	ld   a, b                                        ; $7faf: $78
	sub  a                                           ; $7fb0: $97
	ld   d, a                                        ; $7fb1: $57
	ld   b, h                                        ; $7fb2: $44
	ld   d, l                                        ; $7fb3: $55
	ld   b, e                                        ; $7fb4: $43
	ld   b, [hl]                                     ; $7fb5: $46
	sbc  c                                           ; $7fb6: $99
	cp   a                                           ; $7fb7: $bf
	reti                                             ; $7fb8: $d9


	res  1, b                                        ; $7fb9: $cb $88
	xor  c                                           ; $7fbb: $a9
	ld   a, d                                        ; $7fbc: $7a
	add  l                                           ; $7fbd: $85
	ld   [hl], a                                     ; $7fbe: $77
	ld   b, e                                        ; $7fbf: $43
	ld   d, l                                        ; $7fc0: $55
	inc  hl                                          ; $7fc1: $23
	ld   d, [hl]                                     ; $7fc2: $56
	sbc  d                                           ; $7fc3: $9a
	adc  $ca                                         ; $7fc4: $ce $ca
	jp   z, $a78a                                    ; $7fc6: $ca $8a $a7

	ld   a, d                                        ; $7fc9: $7a
	add  a                                           ; $7fca: $87
	add  a                                           ; $7fcb: $87
	ld   d, h                                        ; $7fcc: $54
	ld   b, h                                        ; $7fcd: $44
	inc  [hl]                                        ; $7fce: $34
	ld   [hl], $99                                   ; $7fcf: $36 $99
	adc  $cb                                         ; $7fd1: $ce $cb
	db   $db                                         ; $7fd3: $db
	sbc  c                                           ; $7fd4: $99
	and  a                                           ; $7fd5: $a7
	ld   a, d                                        ; $7fd6: $7a
	adc  b                                           ; $7fd7: $88
	ld   [hl], a                                     ; $7fd8: $77
	ld   d, h                                        ; $7fd9: $54
	ld   h, l                                        ; $7fda: $65
	inc  [hl]                                        ; $7fdb: $34
	ld   d, h                                        ; $7fdc: $54
	ld   a, c                                        ; $7fdd: $79
	xor  h                                           ; $7fde: $ac
	db   $ec                                         ; $7fdf: $ec
	cp   l                                           ; $7fe0: $bd
	sbc  b                                           ; $7fe1: $98
	xor  c                                           ; $7fe2: $a9
	sbc  d                                           ; $7fe3: $9a
	xor  b                                           ; $7fe4: $a8
	ld   a, b                                        ; $7fe5: $78
	ld   d, h                                        ; $7fe6: $54
	ld   b, l                                        ; $7fe7: $45
	ld   d, e                                        ; $7fe8: $53
	ld   d, l                                        ; $7fe9: $55
	ld   e, b                                        ; $7fea: $58
	cp   e                                           ; $7feb: $bb
	call z, $b8ab                                    ; $7fec: $cc $ab $b8
	sbc  c                                           ; $7fef: $99
	sbc  c                                           ; $7ff0: $99
	xor  e                                           ; $7ff1: $ab
	ld   a, b                                        ; $7ff2: $78
	add  h                                           ; $7ff3: $84
	ld   b, h                                        ; $7ff4: $44
	ld   d, e                                        ; $7ff5: $53
	dec  [hl]                                        ; $7ff6: $35
	ld   b, a                                        ; $7ff7: $47
	adc  b                                           ; $7ff8: $88
	call $cabd                                       ; $7ff9: $cd $bd $ca
	sbc  e                                           ; $7ffc: $9b
	add  a                                           ; $7ffd: $87
	sbc  c                                           ; $7ffe: $99
	adc  c                                           ; $7fff: $89
